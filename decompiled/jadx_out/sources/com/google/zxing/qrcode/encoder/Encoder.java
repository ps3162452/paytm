package com.google.zxing.qrcode.encoder;

import com.google.zxing.EncodeHintType;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitArray;
import com.google.zxing.common.CharacterSetECI;
import com.google.zxing.common.reedsolomon.GenericGF;
import com.google.zxing.common.reedsolomon.ReedSolomonEncoder;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import com.google.zxing.qrcode.decoder.Mode;
import com.google.zxing.qrcode.decoder.Version;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
public final class Encoder {
    static final String DEFAULT_BYTE_MODE_ENCODING = NPStringFog.decode(new byte[]{47, 97, 126, 27, 9, 14, 83, 11, 28, 7}, "f21616", -1.0889164E9f);
    private static final int[] ALPHANUMERIC_TABLE = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 36, -1, -1, -1, 37, 38, -1, -1, -1, -1, 39, 40, -1, 41, 42, 43, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 44, -1, -1, -1, -1, -1, -1, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, -1, -1, -1, -1, -1};

    /* JADX INFO: renamed from: com.google.zxing.qrcode.encoder.Encoder$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final int[] $SwitchMap$com$google$zxing$qrcode$decoder$Mode = new int[Mode.values().length];

        static {
            try {
                $SwitchMap$com$google$zxing$qrcode$decoder$Mode[Mode.NUMERIC.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$google$zxing$qrcode$decoder$Mode[Mode.ALPHANUMERIC.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$google$zxing$qrcode$decoder$Mode[Mode.BYTE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$google$zxing$qrcode$decoder$Mode[Mode.KANJI.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    private Encoder() {
    }

    static void append8BitBytes(String str, BitArray bitArray, String str2) throws WriterException {
        try {
            for (byte b : str.getBytes(str2)) {
                bitArray.appendBits(b, 8);
            }
        } catch (UnsupportedEncodingException e) {
            throw new WriterException(e);
        }
    }

    static void appendAlphanumericBytes(CharSequence charSequence, BitArray bitArray) throws WriterException {
        int length = charSequence.length();
        int i = 0;
        while (i < length) {
            int alphanumericCode = getAlphanumericCode(charSequence.charAt(i));
            if (alphanumericCode == -1) {
                throw new WriterException();
            }
            if (i + 1 < length) {
                int alphanumericCode2 = getAlphanumericCode(charSequence.charAt(i + 1));
                if (alphanumericCode2 == -1) {
                    throw new WriterException();
                }
                bitArray.appendBits((alphanumericCode * 45) + alphanumericCode2, 11);
                i += 2;
            } else {
                bitArray.appendBits(alphanumericCode, 6);
                i++;
            }
        }
    }

    static void appendBytes(String str, Mode mode, BitArray bitArray, String str2) throws WriterException {
        switch (AnonymousClass1.$SwitchMap$com$google$zxing$qrcode$decoder$Mode[mode.ordinal()]) {
            case 1:
                appendNumericBytes(str, bitArray);
                return;
            case 2:
                appendAlphanumericBytes(str, bitArray);
                return;
            case 3:
                append8BitBytes(str, bitArray, str2);
                return;
            case 4:
                appendKanjiBytes(str, bitArray);
                return;
            default:
                throw new WriterException(NPStringFog.decode(new byte[]{124, 88, 69, 89, 88, 92, 81, 22, 94, 87, 80, 80, 15, 22}, "563845", 1.1981142E7f) + mode);
        }
    }

    private static void appendECI(CharacterSetECI characterSetECI, BitArray bitArray) {
        bitArray.appendBits(Mode.ECI.getBits(), 4);
        bitArray.appendBits(characterSetECI.getValue(), 8);
    }

    static void appendKanjiBytes(String str, BitArray bitArray) throws WriterException {
        try {
            byte[] bytes = str.getBytes(NPStringFog.decode(new byte[]{101, 88, 93, 7, 16, 62, 124, 121, 103}, "604ada", true, false));
            int length = bytes.length;
            for (int i = 0; i < length; i += 2) {
                int i2 = ((bytes[i] & 255) << 8) | (bytes[i + 1] & 255);
                int i3 = (i2 < 33088 || i2 > 40956) ? (i2 < 57408 || i2 > 60351) ? -1 : i2 - 49472 : i2 - 33088;
                if (i3 == -1) {
                    throw new WriterException(NPStringFog.decode(new byte[]{120, 15, 19, 7, 94, 88, 85, 65, 7, 31, 70, 84, 17, 18, 0, 23, 71, 84, 95, 2, 0}, "1aef21", 1056856135L));
                }
                bitArray.appendBits((i3 & 255) + ((i3 >> 8) * 192), 13);
            }
        } catch (UnsupportedEncodingException e) {
            throw new WriterException(e);
        }
    }

    static void appendLengthInfo(int i, Version version, Mode mode, BitArray bitArray) throws WriterException {
        int characterCountBits = mode.getCharacterCountBits(version);
        if (i >= (1 << characterCountBits)) {
            throw new WriterException(i + NPStringFog.decode(new byte[]{65, 95, 23, 22, 80, 13, 6, 81, 1, 68, 18, 16, 9, 87, 10, 22}, "a6d62d", -759394577L) + ((1 << characterCountBits) - 1));
        }
        bitArray.appendBits(i, characterCountBits);
    }

    static void appendModeInfo(Mode mode, BitArray bitArray) {
        bitArray.appendBits(mode.getBits(), 4);
    }

    static void appendNumericBytes(CharSequence charSequence, BitArray bitArray) {
        int length = charSequence.length();
        int i = 0;
        while (i < length) {
            int iCharAt = charSequence.charAt(i) - '0';
            if (i + 2 < length) {
                bitArray.appendBits((iCharAt * 100) + ((charSequence.charAt(i + 1) - '0') * 10) + (charSequence.charAt(i + 2) - '0'), 10);
                i += 3;
            } else if (i + 1 < length) {
                bitArray.appendBits((iCharAt * 10) + (charSequence.charAt(i + 1) - '0'), 7);
                i += 2;
            } else {
                bitArray.appendBits(iCharAt, 4);
                i++;
            }
        }
    }

    private static int calculateMaskPenalty(ByteMatrix byteMatrix) {
        return MaskUtil.applyMaskPenaltyRule1(byteMatrix) + MaskUtil.applyMaskPenaltyRule2(byteMatrix) + MaskUtil.applyMaskPenaltyRule3(byteMatrix) + MaskUtil.applyMaskPenaltyRule4(byteMatrix);
    }

    private static int chooseMaskPattern(BitArray bitArray, ErrorCorrectionLevel errorCorrectionLevel, Version version, ByteMatrix byteMatrix) throws WriterException {
        int i;
        int i2 = Integer.MAX_VALUE;
        int i3 = -1;
        int i4 = 0;
        while (i4 < 8) {
            MatrixUtil.buildMatrix(bitArray, errorCorrectionLevel, version, i4, byteMatrix);
            int iCalculateMaskPenalty = calculateMaskPenalty(byteMatrix);
            if (iCalculateMaskPenalty < i2) {
                i = i4;
            } else {
                iCalculateMaskPenalty = i2;
                i = i3;
            }
            i4++;
            i3 = i;
            i2 = iCalculateMaskPenalty;
        }
        return i3;
    }

    public static Mode chooseMode(String str) {
        return chooseMode(str, null);
    }

    private static Mode chooseMode(String str, String str2) {
        if (NPStringFog.decode(new byte[]{48, 93, 91, 87, 70, 61, 41, 124, 97}, "c5212b", true).equals(str2)) {
            return isOnlyDoubleByteKanji(str) ? Mode.KANJI : Mode.BYTE;
        }
        boolean z = false;
        boolean z2 = false;
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt >= '0' && cCharAt <= '9') {
                z2 = true;
            } else {
                if (getAlphanumericCode(cCharAt) == -1) {
                    return Mode.BYTE;
                }
                z = true;
            }
        }
        return z ? Mode.ALPHANUMERIC : z2 ? Mode.NUMERIC : Mode.BYTE;
    }

    private static Version chooseVersion(int i, ErrorCorrectionLevel errorCorrectionLevel) throws WriterException {
        for (int i2 = 1; i2 <= 40; i2++) {
            Version versionForNumber = Version.getVersionForNumber(i2);
            if (versionForNumber.getTotalCodewords() - versionForNumber.getECBlocksForLevel(errorCorrectionLevel).getTotalECCodewords() >= (i + 7) / 8) {
                return versionForNumber;
            }
        }
        throw new WriterException(NPStringFog.decode(new byte[]{113, 4, 64, 82, 68, 70, 90, 10, 20, 81, 13, 85}, "5e43d2", 8.950195E8f));
    }

    public static QRCode encode(String str, ErrorCorrectionLevel errorCorrectionLevel) throws WriterException {
        return encode(str, errorCorrectionLevel, null);
    }

    public static QRCode encode(String str, ErrorCorrectionLevel errorCorrectionLevel, Map<EncodeHintType, ?> map) throws WriterException {
        CharacterSetECI characterSetECIByName;
        String str2 = map == null ? null : (String) map.get(EncodeHintType.CHARACTER_SET);
        if (str2 == null) {
            str2 = DEFAULT_BYTE_MODE_ENCODING;
        }
        Mode modeChooseMode = chooseMode(str, str2);
        BitArray bitArray = new BitArray();
        if (modeChooseMode == Mode.BYTE && !DEFAULT_BYTE_MODE_ENCODING.equals(str2) && (characterSetECIByName = CharacterSetECI.getCharacterSetECIByName(str2)) != null) {
            appendECI(characterSetECIByName, bitArray);
        }
        appendModeInfo(modeChooseMode, bitArray);
        BitArray bitArray2 = new BitArray();
        appendBytes(str, modeChooseMode, bitArray2, str2);
        Version versionChooseVersion = chooseVersion(modeChooseMode.getCharacterCountBits(chooseVersion(bitArray.getSize() + modeChooseMode.getCharacterCountBits(Version.getVersionForNumber(1)) + bitArray2.getSize(), errorCorrectionLevel)) + bitArray.getSize() + bitArray2.getSize(), errorCorrectionLevel);
        BitArray bitArray3 = new BitArray();
        bitArray3.appendBitArray(bitArray);
        appendLengthInfo(modeChooseMode == Mode.BYTE ? bitArray2.getSizeInBytes() : str.length(), versionChooseVersion, modeChooseMode, bitArray3);
        bitArray3.appendBitArray(bitArray2);
        Version.ECBlocks eCBlocksForLevel = versionChooseVersion.getECBlocksForLevel(errorCorrectionLevel);
        int totalCodewords = versionChooseVersion.getTotalCodewords() - eCBlocksForLevel.getTotalECCodewords();
        terminateBits(totalCodewords, bitArray3);
        BitArray bitArrayInterleaveWithECBytes = interleaveWithECBytes(bitArray3, versionChooseVersion.getTotalCodewords(), totalCodewords, eCBlocksForLevel.getNumBlocks());
        QRCode qRCode = new QRCode();
        qRCode.setECLevel(errorCorrectionLevel);
        qRCode.setMode(modeChooseMode);
        qRCode.setVersion(versionChooseVersion);
        int dimensionForVersion = versionChooseVersion.getDimensionForVersion();
        ByteMatrix byteMatrix = new ByteMatrix(dimensionForVersion, dimensionForVersion);
        int iChooseMaskPattern = chooseMaskPattern(bitArrayInterleaveWithECBytes, errorCorrectionLevel, versionChooseVersion, byteMatrix);
        qRCode.setMaskPattern(iChooseMaskPattern);
        MatrixUtil.buildMatrix(bitArrayInterleaveWithECBytes, errorCorrectionLevel, versionChooseVersion, iChooseMaskPattern, byteMatrix);
        qRCode.setMatrix(byteMatrix);
        return qRCode;
    }

    static byte[] generateECBytes(byte[] bArr, int i) {
        int length = bArr.length;
        int[] iArr = new int[length + i];
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2] = bArr[i2] & 255;
        }
        new ReedSolomonEncoder(GenericGF.QR_CODE_FIELD_256).encode(iArr, i);
        byte[] bArr2 = new byte[i];
        for (int i3 = 0; i3 < i; i3++) {
            bArr2[i3] = (byte) iArr[length + i3];
        }
        return bArr2;
    }

    static int getAlphanumericCode(int i) {
        if (i < ALPHANUMERIC_TABLE.length) {
            return ALPHANUMERIC_TABLE[i];
        }
        return -1;
    }

    static void getNumDataBytesAndNumECBytesForBlockID(int i, int i2, int i3, int i4, int[] iArr, int[] iArr2) throws WriterException {
        if (i4 >= i3) {
            throw new WriterException(NPStringFog.decode(new byte[]{35, 88, 87, 86, 92, 65, 40, 112, 24, 65, 88, 14, 65, 88, 89, 71, 80, 4}, "a4857a", -1.583573257E9d));
        }
        int i5 = i % i3;
        int i6 = i3 - i5;
        int i7 = i / i3;
        int i8 = i2 / i3;
        int i9 = i8 + 1;
        int i10 = i7 - i8;
        int i11 = (i7 + 1) - i9;
        if (i10 != i11) {
            throw new WriterException(NPStringFog.decode(new byte[]{116, 32, 67, 6, 77, 17, 84, 16, 67, 9, 93, 22, 92, 2, 23, 7, 92}, "1ccd4e", 3.57206471E8d));
        }
        if (i3 != i6 + i5) {
            throw new WriterException(NPStringFog.decode(new byte[]{49, 103, 24, 6, 9, 13, 0, 95, 75, 68, 8, 11, 16, 89, 89, 16, 6, 10}, "c48deb", 2.244368E7d));
        }
        if (i != (i5 * (i9 + i11)) + ((i8 + i10) * i6)) {
            throw new WriterException(NPStringFog.decode(new byte[]{101, 94, 64, 87, 9, 20, 83, 72, 64, 83, 22, 20, 92, 88, 71, 91, 4, 64, 82, 89}, "1146e4", true, false));
        }
        if (i4 < i6) {
            iArr[0] = i8;
            iArr2[0] = i10;
        } else {
            iArr[0] = i9;
            iArr2[0] = i11;
        }
    }

    static BitArray interleaveWithECBytes(BitArray bitArray, int i, int i2, int i3) throws WriterException {
        if (bitArray.getSizeInBytes() != i2) {
            throw new WriterException(NPStringFog.decode(new byte[]{44, 77, 88, 84, 7, 64, 66, 87, 83, 22, 0, 91, 22, 75, 21, 87, 12, 86, 66, 92, 84, 66, 3, 18, 0, 65, 65, 83, 17, 18, 6, 87, 80, 69, 66, 92, 13, 76, 21, 91, 3, 70, 1, 80}, "b856b2", true, true));
        }
        ArrayList arrayList = new ArrayList(i3);
        int i4 = 0;
        int iMax = 0;
        int i5 = 0;
        int i6 = 0;
        while (i4 < i3) {
            int[] iArr = new int[1];
            int[] iArr2 = new int[1];
            getNumDataBytesAndNumECBytesForBlockID(i, i2, i3, i4, iArr, iArr2);
            int i7 = iArr[0];
            byte[] bArr = new byte[i7];
            bitArray.toBytes(i6 * 8, bArr, 0, i7);
            byte[] bArrGenerateECBytes = generateECBytes(bArr, iArr2[0]);
            arrayList.add(new BlockPair(bArr, bArrGenerateECBytes));
            int iMax2 = Math.max(i5, i7);
            i4++;
            iMax = Math.max(iMax, bArrGenerateECBytes.length);
            i5 = iMax2;
            i6 = iArr[0] + i6;
        }
        if (i2 != i6) {
            throw new WriterException(NPStringFog.decode(new byte[]{34, 84, 22, 2, 65, 84, 31, 65, 7, 16, 65, 82, 9, 80, 17, 67, 15, 89, 18, 21, 15, 2, 21, 85, 14, 21, 13, 5, 7, 69, 3, 65}, "f5bca6", -26364));
        }
        BitArray bitArray2 = new BitArray();
        for (int i8 = 0; i8 < i5; i8++) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                byte[] dataBytes = ((BlockPair) it.next()).getDataBytes();
                if (i8 < dataBytes.length) {
                    bitArray2.appendBits(dataBytes[i8], 8);
                }
            }
        }
        for (int i9 = 0; i9 < iMax; i9++) {
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                byte[] errorCorrectionBytes = ((BlockPair) it2.next()).getErrorCorrectionBytes();
                if (i9 < errorCorrectionBytes.length) {
                    bitArray2.appendBits(errorCorrectionBytes[i9], 8);
                }
            }
        }
        if (i != bitArray2.getSizeInBytes()) {
            throw new WriterException(NPStringFog.decode(new byte[]{44, 90, 69, 6, 67, 15, 0, 85, 71, 10, 95, 4, 69, 81, 67, 17, 94, 17, 95, 20}, "e41c1c", true) + i + NPStringFog.decode(new byte[]{20, 7, 94, 0, 24}, "4f0d8f", 698590812L) + bitArray2.getSizeInBytes() + NPStringFog.decode(new byte[]{67, 5, 92, 94, 3, 93, 17, 79}, "ca58e8", false, true));
        }
        return bitArray2;
    }

    private static boolean isOnlyDoubleByteKanji(String str) {
        try {
            byte[] bytes = str.getBytes(NPStringFog.decode(new byte[]{100, 94, 11, 2, 67, 59, 125, 127, 49}, "76bd7d", 785733207L));
            int length = bytes.length;
            if (length % 2 != 0) {
                return false;
            }
            for (int i = 0; i < length; i += 2) {
                int i2 = bytes[i] & 255;
                if ((i2 < 129 || i2 > 159) && (i2 < 224 || i2 > 235)) {
                    return false;
                }
            }
            return true;
        } catch (UnsupportedEncodingException e) {
            return false;
        }
    }

    static void terminateBits(int i, BitArray bitArray) throws WriterException {
        int i2 = 0;
        int i3 = i * 8;
        if (bitArray.getSize() > i3) {
            throw new WriterException(NPStringFog.decode(new byte[]{7, 4, 70, 80, 23, 82, 10, 17, 65, 17, 84, 81, 13, 11, 93, 69, 23, 86, 10, 17, 18, 88, 89, 16, 23, 13, 87, 17, 102, 98, 67, 38, 93, 85, 82}, "ce2170", 125980026L) + bitArray.getSize() + NPStringFog.decode(new byte[]{21, 13, 20}, "53400b", 5023) + i3);
        }
        for (int i4 = 0; i4 < 4 && bitArray.getSize() < i3; i4++) {
            bitArray.appendBit(false);
        }
        int size = bitArray.getSize() & 7;
        if (size > 0) {
            while (size < 8) {
                bitArray.appendBit(false);
                size++;
            }
        }
        int sizeInBytes = bitArray.getSizeInBytes();
        while (true) {
            int i5 = i2;
            if (i5 >= i - sizeInBytes) {
                break;
            }
            bitArray.appendBits((i5 & 1) == 0 ? 236 : 17, 8);
            i2 = i5 + 1;
        }
        if (bitArray.getSize() != i3) {
            throw new WriterException(NPStringFog.decode(new byte[]{38, 94, 21, 68, 20, 68, 13, 77, 4, 23, 80, 88, 1, 68, 65, 89, 91, 67, 68, 82, 16, 66, 85, 91, 68, 84, 0, 71, 85, 84, 13, 67, 24}, "d7a747", 1522685394L));
        }
    }
}
