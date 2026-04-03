package com.google.zxing.aztec.encoder;

import com.google.zxing.common.BitArray;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.reedsolomon.GenericGF;
import com.google.zxing.common.reedsolomon.ReedSolomonEncoder;
import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
public final class Encoder {
    public static final int DEFAULT_AZTEC_LAYERS = 0;
    public static final int DEFAULT_EC_PERCENT = 33;
    private static final int MAX_NB_BITS = 32;
    private static final int MAX_NB_BITS_COMPACT = 4;
    private static final int[] WORD_SIZE = {4, 6, 6, 8, 8, 8, 8, 8, 8, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12};

    private Encoder() {
    }

    private static int[] bitsToWords(BitArray bitArray, int i, int i2) {
        int[] iArr = new int[i2];
        int size = bitArray.getSize() / i;
        for (int i3 = 0; i3 < size; i3++) {
            int i4 = 0;
            for (int i5 = 0; i5 < i; i5++) {
                i4 |= bitArray.get((i3 * i) + i5) ? 1 << ((i - i5) - 1) : 0;
            }
            iArr[i3] = i4;
        }
        return iArr;
    }

    private static void drawBullsEye(BitMatrix bitMatrix, int i, int i2) {
        for (int i3 = 0; i3 < i2; i3 += 2) {
            for (int i4 = i - i3; i4 <= i + i3; i4++) {
                bitMatrix.set(i4, i - i3);
                bitMatrix.set(i4, i + i3);
                bitMatrix.set(i - i3, i4);
                bitMatrix.set(i + i3, i4);
            }
        }
        bitMatrix.set(i - i2, i - i2);
        bitMatrix.set((i - i2) + 1, i - i2);
        bitMatrix.set(i - i2, (i - i2) + 1);
        bitMatrix.set(i + i2, i - i2);
        bitMatrix.set(i + i2, (i - i2) + 1);
        bitMatrix.set(i + i2, (i + i2) - 1);
    }

    private static void drawModeMessage(BitMatrix bitMatrix, boolean z, int i, BitArray bitArray) {
        int i2 = 0;
        int i3 = i / 2;
        if (z) {
            while (i2 < 7) {
                int i4 = (i3 - 3) + i2;
                if (bitArray.get(i2)) {
                    bitMatrix.set(i4, i3 - 5);
                }
                if (bitArray.get(i2 + 7)) {
                    bitMatrix.set(i3 + 5, i4);
                }
                if (bitArray.get(20 - i2)) {
                    bitMatrix.set(i4, i3 + 5);
                }
                if (bitArray.get(27 - i2)) {
                    bitMatrix.set(i3 - 5, i4);
                }
                i2++;
            }
            return;
        }
        while (i2 < 10) {
            int i5 = (i3 - 5) + i2 + (i2 / 5);
            if (bitArray.get(i2)) {
                bitMatrix.set(i5, i3 - 7);
            }
            if (bitArray.get(i2 + 10)) {
                bitMatrix.set(i3 + 7, i5);
            }
            if (bitArray.get(29 - i2)) {
                bitMatrix.set(i5, i3 + 7);
            }
            if (bitArray.get(39 - i2)) {
                bitMatrix.set(i3 - 7, i5);
            }
            i2++;
        }
    }

    public static AztecCode encode(byte[] bArr) {
        return encode(bArr, 33, 0);
    }

    public static AztecCode encode(byte[] bArr, int i, int i2) {
        int i3;
        BitArray bitArrayStuffBits;
        boolean z;
        int iAbs;
        int i4;
        int i5;
        BitArray bitArrayEncode = new HighLevelEncoder(bArr).encode();
        int size = ((bitArrayEncode.getSize() * i) / 100) + 11;
        int size2 = bitArrayEncode.getSize();
        if (i2 == 0) {
            i3 = 0;
            bitArrayStuffBits = null;
            int i6 = 0;
            while (i6 <= 32) {
                z = i6 <= 3;
                iAbs = z ? i6 + 1 : i6;
                i4 = totalBitsInLayer(iAbs, z);
                if (size2 + size <= i4) {
                    if (i3 != WORD_SIZE[iAbs]) {
                        i3 = WORD_SIZE[iAbs];
                        bitArrayStuffBits = stuffBits(bitArrayEncode, i3);
                    }
                    if ((!z || bitArrayStuffBits.getSize() <= i3 * 64) && bitArrayStuffBits.getSize() + size <= i4 - (i4 % i3)) {
                    }
                }
                i6++;
            }
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{113, 5, 64, 86, 22, 69, 90, 11, 20, 91, 87, 67, 82, 1, 20, 81, 89, 67, 21, 5, 90, 23, 119, 75, 65, 1, 87, 23, 85, 94, 81, 1}, "5d4761", false));
        }
        boolean z2 = i2 < 0;
        iAbs = Math.abs(i2);
        if (iAbs > (z2 ? 4 : 32)) {
            throw new IllegalArgumentException(String.format(NPStringFog.decode(new byte[]{125, 85, 15, 6, 5, 7, 88, 25, 21, 2, 14, 19, 81, 25, 70, 16, 66, 0, 91, 75, 67, 15, 3, 31, 81, 75, 16}, "49ccbf", true), Integer.valueOf(i2)));
        }
        int i7 = totalBitsInLayer(iAbs, z2);
        i3 = WORD_SIZE[iAbs];
        bitArrayStuffBits = stuffBits(bitArrayEncode, i3);
        if (bitArrayStuffBits.getSize() + size > i7 - (i7 % i3)) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{34, 2, 65, 4, 22, 68, 9, 67, 89, 4, 68, 87, 3, 67, 83, 10, 68, 16, 19, 16, 80, 23, 22, 67, 22, 6, 86, 12, 80, 89, 3, 7, 21, 9, 87, 73, 3, 17}, "fc5e60", -7.089675E8f));
        }
        if (z2 && bitArrayStuffBits.getSize() > i3 * 64) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{37, 86, 66, 82, 18, 23, 14, 23, 90, 82, 64, 4, 4, 23, 80, 92, 64, 67, 20, 68, 83, 65, 18, 16, 17, 82, 85, 90, 84, 10, 4, 83, 22, 95, 83, 26, 4, 69}, "a7632c", 8.676602E8f));
        }
        z = z2;
        i4 = i7;
        BitArray bitArrayGenerateCheckWords = generateCheckWords(bitArrayStuffBits, i4, i3);
        int size3 = bitArrayStuffBits.getSize() / i3;
        BitArray bitArrayGenerateModeMessage = generateModeMessage(z, iAbs, size3);
        int i8 = z ? (iAbs * 4) + 11 : (iAbs * 4) + 14;
        int[] iArr = new int[i8];
        if (z) {
            for (int i9 = 0; i9 < iArr.length; i9++) {
                iArr[i9] = i9;
            }
            i5 = i8;
        } else {
            i5 = i8 + 1 + ((((i8 / 2) - 1) / 15) * 2);
            int i10 = i8 / 2;
            int i11 = i5 / 2;
            for (int i12 = 0; i12 < i10; i12++) {
                iArr[(i10 - i12) - 1] = (i11 - r9) - 1;
                iArr[i10 + i12] = (i12 / 15) + i12 + i11 + 1;
            }
        }
        BitMatrix bitMatrix = new BitMatrix(i5);
        int i13 = 0;
        int i14 = 0;
        while (i13 < iAbs) {
            int i15 = z ? ((iAbs - i13) * 4) + 9 : ((iAbs - i13) * 4) + 12;
            for (int i16 = 0; i16 < i15; i16++) {
                int i17 = i16 * 2;
                for (int i18 = 0; i18 < 2; i18++) {
                    if (bitArrayGenerateCheckWords.get(i14 + i17 + i18)) {
                        bitMatrix.set(iArr[(i13 * 2) + i18], iArr[(i13 * 2) + i16]);
                    }
                    if (bitArrayGenerateCheckWords.get((i15 * 2) + i14 + i17 + i18)) {
                        bitMatrix.set(iArr[(i13 * 2) + i16], iArr[((i8 - 1) - (i13 * 2)) - i18]);
                    }
                    if (bitArrayGenerateCheckWords.get((i15 * 4) + i14 + i17 + i18)) {
                        bitMatrix.set(iArr[((i8 - 1) - (i13 * 2)) - i18], iArr[((i8 - 1) - (i13 * 2)) - i16]);
                    }
                    if (bitArrayGenerateCheckWords.get((i15 * 6) + i14 + i17 + i18)) {
                        bitMatrix.set(iArr[((i8 - 1) - (i13 * 2)) - i16], iArr[(i13 * 2) + i18]);
                    }
                }
            }
            i13++;
            i14 += i15 * 8;
        }
        drawModeMessage(bitMatrix, z, i5, bitArrayGenerateModeMessage);
        if (z) {
            drawBullsEye(bitMatrix, i5 / 2, 5);
        } else {
            drawBullsEye(bitMatrix, i5 / 2, 7);
            int i19 = 0;
            int i20 = 0;
            while (i19 < (i8 / 2) - 1) {
                for (int i21 = (i5 / 2) & 1; i21 < i5; i21 += 2) {
                    bitMatrix.set((i5 / 2) - i20, i21);
                    bitMatrix.set((i5 / 2) + i20, i21);
                    bitMatrix.set(i21, (i5 / 2) - i20);
                    bitMatrix.set(i21, (i5 / 2) + i20);
                }
                i19 += 15;
                i20 += 16;
            }
        }
        AztecCode aztecCode = new AztecCode();
        aztecCode.setCompact(z);
        aztecCode.setSize(i5);
        aztecCode.setLayers(iAbs);
        aztecCode.setCodeWords(size3);
        aztecCode.setMatrix(bitMatrix);
        return aztecCode;
    }

    private static BitArray generateCheckWords(BitArray bitArray, int i, int i2) {
        int size = bitArray.getSize() / i2;
        ReedSolomonEncoder reedSolomonEncoder = new ReedSolomonEncoder(getGF(i2));
        int i3 = i / i2;
        int[] iArrBitsToWords = bitsToWords(bitArray, i2, i3);
        reedSolomonEncoder.encode(iArrBitsToWords, i3 - size);
        BitArray bitArray2 = new BitArray();
        bitArray2.appendBits(0, i % i2);
        for (int i4 : iArrBitsToWords) {
            bitArray2.appendBits(i4, i2);
        }
        return bitArray2;
    }

    static BitArray generateModeMessage(boolean z, int i, int i2) {
        BitArray bitArray = new BitArray();
        if (z) {
            bitArray.appendBits(i - 1, 2);
            bitArray.appendBits(i2 - 1, 6);
            return generateCheckWords(bitArray, 28, 4);
        }
        bitArray.appendBits(i - 1, 5);
        bitArray.appendBits(i2 - 1, 11);
        return generateCheckWords(bitArray, 40, 4);
    }

    private static GenericGF getGF(int i) {
        switch (i) {
            case 4:
                return GenericGF.AZTEC_PARAM;
            case 5:
            case 7:
            case 9:
            case 11:
            default:
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{100, 88, 65, 71, 68, 19, 94, 68, 70, 87, 80, 67, 70, 89, 64, 86, 20, 16, 88, 76, 87, 18}, "16224c", 4.234915E7f) + i);
            case 6:
                return GenericGF.AZTEC_DATA_6;
            case 8:
                return GenericGF.AZTEC_DATA_8;
            case 10:
                return GenericGF.AZTEC_DATA_10;
            case 12:
                return GenericGF.AZTEC_DATA_12;
        }
    }

    static BitArray stuffBits(BitArray bitArray, int i) {
        int i2;
        BitArray bitArray2 = new BitArray();
        int size = bitArray.getSize();
        int i3 = (1 << i) - 2;
        int i4 = 0;
        while (i4 < size) {
            int i5 = 0;
            for (int i6 = 0; i6 < i; i6++) {
                if (i4 + i6 >= size || bitArray.get(i4 + i6)) {
                    i5 |= 1 << ((i - 1) - i6);
                }
            }
            if ((i5 & i3) == i3) {
                bitArray2.appendBits(i5 & i3, i);
                i2 = i4 - 1;
            } else if ((i5 & i3) == 0) {
                bitArray2.appendBits(i5 | 1, i);
                i2 = i4 - 1;
            } else {
                bitArray2.appendBits(i5, i);
                i2 = i4;
            }
            i4 = i2 + i;
        }
        return bitArray2;
    }

    private static int totalBitsInLayer(int i, boolean z) {
        return ((z ? 88 : 112) + (i * 16)) * i;
    }
}
