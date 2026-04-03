package com.google.zxing.pdf417.decoder;

import com.google.zxing.pdf417.PDF417Common;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes65.dex */
final class PDF417CodewordDecoder {
    private static final float[][] RATIOS_TABLE = (float[][]) Array.newInstance((Class<?>) Float.TYPE, PDF417Common.SYMBOL_TABLE.length, 8);

    static {
        for (int i = 0; i < PDF417Common.SYMBOL_TABLE.length; i++) {
            int i2 = PDF417Common.SYMBOL_TABLE[i];
            int i3 = i2 & 1;
            for (int i4 = 0; i4 < 8; i4++) {
                float f = 0.0f;
                while ((i2 & 1) == i3) {
                    f += 1.0f;
                    i2 >>= 1;
                }
                i3 = i2 & 1;
                RATIOS_TABLE[i][(8 - i4) - 1] = f / 17.0f;
            }
        }
    }

    private PDF417CodewordDecoder() {
    }

    private static int getBitValue(int[] iArr) {
        long j = 0;
        for (int i = 0; i < iArr.length; i++) {
            int i2 = 0;
            while (i2 < iArr[i]) {
                i2++;
                j = ((long) (i % 2 == 0 ? 1 : 0)) | (j << 1);
            }
        }
        return (int) j;
    }

    private static int getClosestDecodedValue(int[] iArr) {
        int i;
        int bitCountSum = PDF417Common.getBitCountSum(iArr);
        float[] fArr = new float[8];
        for (int i2 = 0; i2 < fArr.length; i2++) {
            fArr[i2] = iArr[i2] / bitCountSum;
        }
        float f = Float.MAX_VALUE;
        int i3 = -1;
        int i4 = 0;
        while (i4 < RATIOS_TABLE.length) {
            float f2 = 0.0f;
            float[] fArr2 = RATIOS_TABLE[i4];
            for (int i5 = 0; i5 < 8; i5++) {
                float f3 = fArr2[i5] - fArr[i5];
                f2 += f3 * f3;
                if (f2 >= f) {
                    break;
                }
            }
            if (f2 < f) {
                i = PDF417Common.SYMBOL_TABLE[i4];
            } else {
                f2 = f;
                i = i3;
            }
            i4++;
            i3 = i;
            f = f2;
        }
        return i3;
    }

    private static int getDecodedCodewordValue(int[] iArr) {
        int bitValue = getBitValue(iArr);
        if (PDF417Common.getCodeword(bitValue) == -1) {
            return -1;
        }
        return bitValue;
    }

    static int getDecodedValue(int[] iArr) {
        int decodedCodewordValue = getDecodedCodewordValue(sampleBitCounts(iArr));
        return decodedCodewordValue != -1 ? decodedCodewordValue : getClosestDecodedValue(iArr);
    }

    private static int[] sampleBitCounts(int[] iArr) {
        int i = 0;
        float bitCountSum = PDF417Common.getBitCountSum(iArr);
        int[] iArr2 = new int[8];
        int i2 = 0;
        for (int i3 = 0; i3 < 17; i3++) {
            if (iArr[i2] + i <= (bitCountSum / 34.0f) + ((i3 * bitCountSum) / 17.0f)) {
                i += iArr[i2];
                i2++;
            }
            iArr2[i2] = iArr2[i2] + 1;
        }
        return iArr2;
    }
}
