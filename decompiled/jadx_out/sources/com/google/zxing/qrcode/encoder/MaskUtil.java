package com.google.zxing.qrcode.encoder;

import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
final class MaskUtil {
    private static final int N1 = 3;
    private static final int N2 = 3;
    private static final int N3 = 40;
    private static final int N4 = 10;

    private MaskUtil() {
    }

    static int applyMaskPenaltyRule1(ByteMatrix byteMatrix) {
        return applyMaskPenaltyRule1Internal(byteMatrix, true) + applyMaskPenaltyRule1Internal(byteMatrix, false);
    }

    private static int applyMaskPenaltyRule1Internal(ByteMatrix byteMatrix, boolean z) {
        int i;
        int height = z ? byteMatrix.getHeight() : byteMatrix.getWidth();
        int width = z ? byteMatrix.getWidth() : byteMatrix.getHeight();
        byte[][] array = byteMatrix.getArray();
        int i2 = 0;
        for (int i3 = 0; i3 < height; i3++) {
            byte b = -1;
            int i4 = 0;
            int i5 = 0;
            while (i4 < width) {
                byte b2 = z ? array[i3][i4] : array[i4][i3];
                if (b2 == b) {
                    i5++;
                    i = i2;
                } else {
                    int i6 = i5 >= 5 ? i2 + (i5 - 5) + 3 : i2;
                    i5 = 1;
                    byte b3 = b2;
                    i = i6;
                    b = b3;
                }
                i4++;
                i2 = i;
            }
            if (i5 >= 5) {
                i2 += (i5 - 5) + 3;
            }
        }
        return i2;
    }

    static int applyMaskPenaltyRule2(ByteMatrix byteMatrix) {
        byte[][] array = byteMatrix.getArray();
        int width = byteMatrix.getWidth();
        int height = byteMatrix.getHeight();
        int i = 0;
        for (int i2 = 0; i2 < height - 1; i2++) {
            for (int i3 = 0; i3 < width - 1; i3++) {
                byte b = array[i2][i3];
                if (b == array[i2][i3 + 1] && b == array[i2 + 1][i3] && b == array[i2 + 1][i3 + 1]) {
                    i++;
                }
            }
        }
        return i * 3;
    }

    static int applyMaskPenaltyRule3(ByteMatrix byteMatrix) {
        byte[][] array = byteMatrix.getArray();
        int width = byteMatrix.getWidth();
        int height = byteMatrix.getHeight();
        int i = 0;
        int i2 = 0;
        while (i < height) {
            int i3 = 0;
            int i4 = i2;
            while (i3 < width) {
                byte[] bArr = array[i];
                int i5 = (i3 + 6 < width && bArr[i3] == 1 && bArr[i3 + 1] == 0 && bArr[i3 + 2] == 1 && bArr[i3 + 3] == 1 && bArr[i3 + 4] == 1 && bArr[i3 + 5] == 0 && bArr[i3 + 6] == 1 && (isWhiteHorizontal(bArr, i3 + (-4), i3) || isWhiteHorizontal(bArr, i3 + 7, i3 + 11))) ? i4 + 1 : i4;
                if (i + 6 < height && array[i][i3] == 1 && array[i + 1][i3] == 0 && array[i + 2][i3] == 1 && array[i + 3][i3] == 1 && array[i + 4][i3] == 1 && array[i + 5][i3] == 0 && array[i + 6][i3] == 1 && (isWhiteVertical(array, i3, i - 4, i) || isWhiteVertical(array, i3, i + 7, i + 11))) {
                    i5++;
                }
                i3++;
                i4 = i5;
            }
            i++;
            i2 = i4;
        }
        return i2 * 40;
    }

    static int applyMaskPenaltyRule4(ByteMatrix byteMatrix) {
        byte[][] array = byteMatrix.getArray();
        int width = byteMatrix.getWidth();
        int height = byteMatrix.getHeight();
        int i = 0;
        for (int i2 = 0; i2 < height; i2++) {
            byte[] bArr = array[i2];
            for (int i3 = 0; i3 < width; i3++) {
                if (bArr[i3] == 1) {
                    i++;
                }
            }
        }
        int height2 = byteMatrix.getHeight() * byteMatrix.getWidth();
        return ((Math.abs((i * 2) - height2) * 10) / height2) * 10;
    }

    static boolean getDataMaskBit(int i, int i2, int i3) {
        int i4;
        switch (i) {
            case 0:
                i4 = (i3 + i2) & 1;
                break;
            case 1:
                i4 = i3 & 1;
                break;
            case 2:
                i4 = i2 % 3;
                break;
            case 3:
                i4 = (i3 + i2) % 3;
                break;
            case 4:
                i4 = ((i3 / 2) + (i2 / 3)) & 1;
                break;
            case 5:
                int i5 = i3 * i2;
                i4 = (i5 % 3) + (i5 & 1);
                break;
            case 6:
                int i6 = i3 * i2;
                i4 = ((i6 % 3) + (i6 & 1)) & 1;
                break;
            case 7:
                i4 = (((i3 * i2) % 3) + ((i3 + i2) & 1)) & 1;
                break;
            default:
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{44, 93, 70, 5, 95, 90, 1, 19, 93, 5, 64, 88, 69, 67, 81, 16, 71, 86, 23, 93, 10, 68}, "e30d33", true) + i);
        }
        return i4 == 0;
    }

    private static boolean isWhiteHorizontal(byte[] bArr, int i, int i2) {
        while (i < i2) {
            if (i >= 0 && i < bArr.length && bArr[i] == 1) {
                return false;
            }
            i++;
        }
        return true;
    }

    private static boolean isWhiteVertical(byte[][] bArr, int i, int i2, int i3) {
        while (i2 < i3) {
            if (i2 >= 0 && i2 < bArr.length && bArr[i2][i] == 1) {
                return false;
            }
            i2++;
        }
        return true;
    }
}
