package com.google.zxing.common;

import com.google.zxing.Binarizer;
import com.google.zxing.LuminanceSource;
import com.google.zxing.NotFoundException;

/* JADX INFO: loaded from: classes65.dex */
public class GlobalHistogramBinarizer extends Binarizer {
    private static final byte[] EMPTY = new byte[0];
    private static final int LUMINANCE_BITS = 5;
    private static final int LUMINANCE_BUCKETS = 32;
    private static final int LUMINANCE_SHIFT = 3;
    private final int[] buckets;
    private byte[] luminances;

    public GlobalHistogramBinarizer(LuminanceSource luminanceSource) {
        super(luminanceSource);
        this.luminances = EMPTY;
        this.buckets = new int[32];
    }

    private static int estimateBlackPoint(int[] iArr) throws NotFoundException {
        int i;
        int i2 = 0;
        int length = iArr.length;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 0; i6 < length; i6++) {
            if (iArr[i6] > i3) {
                i3 = iArr[i6];
                i4 = i6;
            }
            if (iArr[i6] > i5) {
                i5 = iArr[i6];
            }
        }
        int i7 = 0;
        int i8 = 0;
        while (i2 < length) {
            int i9 = i2 - i4;
            int i10 = i9 * iArr[i2] * i9;
            if (i10 > i8) {
                i = i2;
            } else {
                i10 = i8;
                i = i7;
            }
            i2++;
            i7 = i;
            i8 = i10;
        }
        if (i4 <= i7) {
            int i11 = i7;
            i7 = i4;
            i4 = i11;
        }
        if (i4 - i7 <= length / 16) {
            throw NotFoundException.getNotFoundInstance();
        }
        int i12 = i4 - 1;
        int i13 = -1;
        int i14 = i4 - 1;
        while (i14 > i7) {
            int i15 = i14 - i7;
            int i16 = i15 * i15 * (i4 - i14) * (i5 - iArr[i14]);
            if (i16 > i13) {
                i12 = i14;
            } else {
                i16 = i13;
            }
            i14--;
            i13 = i16;
        }
        return i12 << 3;
    }

    private void initArrays(int i) {
        if (this.luminances.length < i) {
            this.luminances = new byte[i];
        }
        for (int i2 = 0; i2 < 32; i2++) {
            this.buckets[i2] = 0;
        }
    }

    @Override // com.google.zxing.Binarizer
    public Binarizer createBinarizer(LuminanceSource luminanceSource) {
        return new GlobalHistogramBinarizer(luminanceSource);
    }

    @Override // com.google.zxing.Binarizer
    public BitMatrix getBlackMatrix() throws NotFoundException {
        LuminanceSource luminanceSource = getLuminanceSource();
        int width = luminanceSource.getWidth();
        int height = luminanceSource.getHeight();
        BitMatrix bitMatrix = new BitMatrix(width, height);
        initArrays(width);
        int[] iArr = this.buckets;
        int i = 1;
        while (true) {
            int i2 = i;
            if (i2 >= 5) {
                break;
            }
            byte[] row = luminanceSource.getRow((height * i2) / 5, this.luminances);
            int i3 = (width * 4) / 5;
            for (int i4 = width / 5; i4 < i3; i4++) {
                int i5 = (row[i4] & 255) >> 3;
                iArr[i5] = iArr[i5] + 1;
            }
            i = i2 + 1;
        }
        int iEstimateBlackPoint = estimateBlackPoint(iArr);
        byte[] matrix = luminanceSource.getMatrix();
        for (int i6 = 0; i6 < height; i6++) {
            for (int i7 = 0; i7 < width; i7++) {
                if ((matrix[(i6 * width) + i7] & 255) < iEstimateBlackPoint) {
                    bitMatrix.set(i7, i6);
                }
            }
        }
        return bitMatrix;
    }

    @Override // com.google.zxing.Binarizer
    public BitArray getBlackRow(int i, BitArray bitArray) throws NotFoundException {
        LuminanceSource luminanceSource = getLuminanceSource();
        int width = luminanceSource.getWidth();
        if (bitArray == null || bitArray.getSize() < width) {
            bitArray = new BitArray(width);
        } else {
            bitArray.clear();
        }
        initArrays(width);
        byte[] row = luminanceSource.getRow(i, this.luminances);
        int[] iArr = this.buckets;
        for (int i2 = 0; i2 < width; i2++) {
            int i3 = (row[i2] & 255) >> 3;
            iArr[i3] = iArr[i3] + 1;
        }
        int iEstimateBlackPoint = estimateBlackPoint(iArr);
        int i4 = row[0] & 255;
        int i5 = row[1] & 255;
        int i6 = 1;
        while (i6 < width - 1) {
            int i7 = row[i6 + 1] & 255;
            if ((((i5 * 4) - i4) - i7) / 2 < iEstimateBlackPoint) {
                bitArray.set(i6);
            }
            i6++;
            i4 = i5;
            i5 = i7;
        }
        return bitArray;
    }
}
