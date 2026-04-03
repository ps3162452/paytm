package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitArray;
import java.util.EnumMap;
import java.util.Map;
import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
final class UPCEANExtension5Support {
    private static final int[] CHECK_DIGIT_ENCODINGS = {24, 20, 18, 17, 12, 6, 3, 10, 9, 5};
    private final int[] decodeMiddleCounters = new int[4];
    private final StringBuilder decodeRowStringBuffer = new StringBuilder();

    UPCEANExtension5Support() {
    }

    private static int determineCheckDigit(int i) throws NotFoundException {
        for (int i2 = 0; i2 < 10; i2++) {
            if (i == CHECK_DIGIT_ENCODINGS[i2]) {
                return i2;
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static int extensionChecksum(CharSequence charSequence) {
        int length = charSequence.length();
        int iCharAt = 0;
        for (int i = length - 2; i >= 0; i -= 2) {
            iCharAt += charSequence.charAt(i) - '0';
        }
        int iCharAt2 = iCharAt * 3;
        for (int i2 = length - 1; i2 >= 0; i2 -= 2) {
            iCharAt2 += charSequence.charAt(i2) - '0';
        }
        return (iCharAt2 * 3) % 10;
    }

    private static String parseExtension5String(String str) {
        String strDecode;
        switch (str.charAt(0)) {
            case '0':
                strDecode = NPStringFog.decode(new byte[]{-89, -105}, "e489e9", 1.8332079E9f);
                break;
            case '5':
                strDecode = NPStringFog.decode(new byte[]{23}, "330105", 1128966009L);
                break;
            case '9':
                if (NPStringFog.decode(new byte[]{91, 85, 86, 3, 4}, "bef34b", -1.6267606E9f).equals(str)) {
                    return null;
                }
                if (NPStringFog.decode(new byte[]{13, 88, 8, 93, 3}, "4a1d26", false, false).equals(str)) {
                    return NPStringFog.decode(new byte[]{2, 25, 84, 82}, "27db73", 1.94584778E9d);
                }
                if (NPStringFog.decode(new byte[]{14, 11, 0, 95, 7}, "729f71", false).equals(str)) {
                    return NPStringFog.decode(new byte[]{101, 68, 4, 5}, "07aaa6", 10179054L);
                }
                strDecode = "";
                break;
            default:
                strDecode = "";
                break;
        }
        int i = Integer.parseInt(str.substring(1));
        int i2 = i / 100;
        int i3 = i % 100;
        return strDecode + String.valueOf(i2) + '.' + (i3 < 10 ? NPStringFog.decode(new byte[]{9}, "94eccc", -1099113921L) + i3 : String.valueOf(i3));
    }

    private static Map<ResultMetadataType, Object> parseExtensionString(String str) {
        String extension5String;
        if (str.length() != 5 || (extension5String = parseExtension5String(str)) == null) {
            return null;
        }
        EnumMap enumMap = new EnumMap(ResultMetadataType.class);
        enumMap.put(ResultMetadataType.SUGGESTED_PRICE, extension5String);
        return enumMap;
    }

    int decodeMiddle(BitArray bitArray, int[] iArr, StringBuilder sb) throws NotFoundException {
        int[] iArr2 = this.decodeMiddleCounters;
        iArr2[0] = 0;
        iArr2[1] = 0;
        iArr2[2] = 0;
        iArr2[3] = 0;
        int size = bitArray.getSize();
        int nextUnset = iArr[1];
        int i = 0;
        for (int i2 = 0; i2 < 5 && nextUnset < size; i2++) {
            int iDecodeDigit = UPCEANReader.decodeDigit(bitArray, iArr2, nextUnset, UPCEANReader.L_AND_G_PATTERNS);
            sb.append((char) ((iDecodeDigit % 10) + 48));
            int length = iArr2.length;
            int i3 = 0;
            while (i3 < length) {
                int i4 = iArr2[i3] + nextUnset;
                i3++;
                nextUnset = i4;
            }
            if (iDecodeDigit >= 10) {
                i |= 1 << (4 - i2);
            }
            if (i2 != 4) {
                nextUnset = bitArray.getNextUnset(bitArray.getNextSet(nextUnset));
            }
        }
        if (sb.length() != 5) {
            throw NotFoundException.getNotFoundInstance();
        }
        if (extensionChecksum(sb.toString()) != determineCheckDigit(i)) {
            throw NotFoundException.getNotFoundInstance();
        }
        return nextUnset;
    }

    Result decodeRow(int i, BitArray bitArray, int[] iArr) throws NotFoundException {
        StringBuilder sb = this.decodeRowStringBuffer;
        sb.setLength(0);
        int iDecodeMiddle = decodeMiddle(bitArray, iArr, sb);
        String string = sb.toString();
        Map<ResultMetadataType, Object> extensionString = parseExtensionString(string);
        Result result = new Result(string, null, new ResultPoint[]{new ResultPoint((iArr[0] + iArr[1]) / 2.0f, i), new ResultPoint(iDecodeMiddle, i)}, BarcodeFormat.UPC_EAN_EXTENSION);
        if (extensionString != null) {
            result.putAllMetadata(extensionString);
        }
        return result;
    }
}
