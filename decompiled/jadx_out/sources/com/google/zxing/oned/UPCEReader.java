package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.common.BitArray;
import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
public final class UPCEReader extends UPCEANReader {
    private static final int[] MIDDLE_END_PATTERN = {1, 1, 1, 1, 1, 1};
    private static final int[][] NUMSYS_AND_CHECK_DIGIT_PATTERNS = {new int[]{56, 52, 50, 49, 44, 38, 35, 42, 41, 37}, new int[]{7, 11, 13, 14, 19, 25, 28, 21, 22, 26}};
    private final int[] decodeMiddleCounters = new int[4];

    public static String convertUPCEtoUPCA(String str) {
        char[] cArr = new char[6];
        str.getChars(1, 7, cArr, 0);
        StringBuilder sb = new StringBuilder(12);
        sb.append(str.charAt(0));
        char c = cArr[5];
        switch (c) {
            case '0':
            case '1':
            case '2':
                sb.append(cArr, 0, 2);
                sb.append(c);
                sb.append(NPStringFog.decode(new byte[]{9, 7, 9, 7}, "979770", 5.67288788E8d));
                sb.append(cArr, 2, 3);
                break;
            case '3':
                sb.append(cArr, 0, 3);
                sb.append(NPStringFog.decode(new byte[]{81, 4, 83, 82, 85}, "a4cbe3", 2.133832546E9d));
                sb.append(cArr, 3, 2);
                break;
            case '4':
                sb.append(cArr, 0, 4);
                sb.append(NPStringFog.decode(new byte[]{0, 4, 3, 82, 6}, "043b6a", false, false));
                sb.append(cArr[4]);
                break;
            default:
                sb.append(cArr, 0, 5);
                sb.append(NPStringFog.decode(new byte[]{8, 4, 7, 5}, "847543", 8.84760221E8d));
                sb.append(c);
                break;
        }
        sb.append(str.charAt(7));
        return sb.toString();
    }

    private static void determineNumSysAndCheckDigit(StringBuilder sb, int i) throws NotFoundException {
        for (int i2 = 0; i2 <= 1; i2++) {
            for (int i3 = 0; i3 < 10; i3++) {
                if (i == NUMSYS_AND_CHECK_DIGIT_PATTERNS[i2][i3]) {
                    sb.insert(0, (char) (i2 + 48));
                    sb.append((char) (i3 + 48));
                    return;
                }
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    @Override // com.google.zxing.oned.UPCEANReader
    protected boolean checkChecksum(String str) throws FormatException {
        return super.checkChecksum(convertUPCEtoUPCA(str));
    }

    @Override // com.google.zxing.oned.UPCEANReader
    protected int[] decodeEnd(BitArray bitArray, int i) throws NotFoundException {
        return findGuardPattern(bitArray, i, true, MIDDLE_END_PATTERN);
    }

    @Override // com.google.zxing.oned.UPCEANReader
    protected int decodeMiddle(BitArray bitArray, int[] iArr, StringBuilder sb) throws NotFoundException {
        int[] iArr2 = this.decodeMiddleCounters;
        iArr2[0] = 0;
        iArr2[1] = 0;
        iArr2[2] = 0;
        iArr2[3] = 0;
        int size = bitArray.getSize();
        int i = iArr[1];
        int i2 = 0;
        int i3 = 0;
        while (i2 < 6 && i < size) {
            int iDecodeDigit = decodeDigit(bitArray, iArr2, i, L_AND_G_PATTERNS);
            sb.append((char) ((iDecodeDigit % 10) + 48));
            int i4 = i;
            for (int i5 : iArr2) {
                i4 += i5;
            }
            if (iDecodeDigit >= 10) {
                i3 |= 1 << (5 - i2);
            }
            i2++;
            i = i4;
        }
        determineNumSysAndCheckDigit(sb, i3);
        return i;
    }

    @Override // com.google.zxing.oned.UPCEANReader
    BarcodeFormat getBarcodeFormat() {
        return BarcodeFormat.UPC_E;
    }
}
