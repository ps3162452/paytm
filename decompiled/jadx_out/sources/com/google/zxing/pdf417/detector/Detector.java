package com.google.zxing.pdf417.detector;

import com.google.zxing.BinaryBitmap;
import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes65.dex */
public final class Detector {
    private static final int BARCODE_MIN_HEIGHT = 10;
    private static final float MAX_AVG_VARIANCE = 0.42f;
    private static final float MAX_INDIVIDUAL_VARIANCE = 0.8f;
    private static final int MAX_PATTERN_DRIFT = 5;
    private static final int MAX_PIXEL_DRIFT = 3;
    private static final int ROW_STEP = 5;
    private static final int SKIPPED_ROW_COUNT_MAX = 25;
    private static final int[] INDEXES_START_PATTERN = {0, 4, 1, 5};
    private static final int[] INDEXES_STOP_PATTERN = {6, 2, 7, 3};
    private static final int[] START_PATTERN = {8, 1, 1, 1, 1, 1, 1, 3};
    private static final int[] STOP_PATTERN = {7, 1, 1, 3, 1, 1, 1, 2, 1};

    private Detector() {
    }

    private static void copyToResult(ResultPoint[] resultPointArr, ResultPoint[] resultPointArr2, int[] iArr) {
        for (int i = 0; i < iArr.length; i++) {
            resultPointArr[iArr[i]] = resultPointArr2[i];
        }
    }

    public static PDF417DetectorResult detect(BinaryBitmap binaryBitmap, Map<DecodeHintType, ?> map, boolean z) throws NotFoundException {
        BitMatrix blackMatrix = binaryBitmap.getBlackMatrix();
        List<ResultPoint[]> listDetect = detect(z, blackMatrix);
        if (listDetect.isEmpty()) {
            blackMatrix = blackMatrix.m97clone();
            blackMatrix.rotate180();
            listDetect = detect(z, blackMatrix);
        }
        return new PDF417DetectorResult(blackMatrix, listDetect);
    }

    private static List<ResultPoint[]> detect(boolean z, BitMatrix bitMatrix) {
        int x;
        float y;
        ArrayList<ResultPoint[]> arrayList = new ArrayList();
        boolean z2 = false;
        int i = 0;
        int iMax = 0;
        while (iMax < bitMatrix.getHeight()) {
            ResultPoint[] resultPointArrFindVertices = findVertices(bitMatrix, iMax, i);
            if (resultPointArrFindVertices[0] == null && resultPointArrFindVertices[3] == null) {
                if (!z2) {
                    break;
                }
                for (ResultPoint[] resultPointArr : arrayList) {
                    if (resultPointArr[1] != null) {
                        iMax = (int) Math.max(iMax, resultPointArr[1].getY());
                    }
                    if (resultPointArr[3] != null) {
                        iMax = Math.max(iMax, (int) resultPointArr[3].getY());
                    }
                }
                i = 0;
                iMax += 5;
                z2 = false;
            } else {
                arrayList.add(resultPointArrFindVertices);
                if (!z) {
                    break;
                }
                if (resultPointArrFindVertices[2] != null) {
                    x = (int) resultPointArrFindVertices[2].getX();
                    y = resultPointArrFindVertices[2].getY();
                } else {
                    x = (int) resultPointArrFindVertices[4].getX();
                    y = resultPointArrFindVertices[4].getY();
                }
                iMax = (int) y;
                i = x;
                z2 = true;
            }
        }
        return arrayList;
    }

    private static int[] findGuardPattern(BitMatrix bitMatrix, int i, int i2, int i3, boolean z, int[] iArr, int[] iArr2) {
        Arrays.fill(iArr2, 0, iArr2.length, 0);
        int length = iArr.length;
        int i4 = 0;
        while (bitMatrix.get(i, i2) && i > 0) {
            int i5 = i4 + 1;
            if (i4 >= 3) {
                break;
            }
            i--;
            i4 = i5;
        }
        int i6 = 0;
        boolean z2 = z;
        int i7 = i;
        while (i < i3) {
            if (bitMatrix.get(i, i2) ^ z2) {
                iArr2[i6] = iArr2[i6] + 1;
            } else {
                if (i6 != length - 1) {
                    i6++;
                } else {
                    if (patternMatchVariance(iArr2, iArr, MAX_INDIVIDUAL_VARIANCE) < MAX_AVG_VARIANCE) {
                        return new int[]{i7, i};
                    }
                    i7 += iArr2[0] + iArr2[1];
                    System.arraycopy(iArr2, 2, iArr2, 0, length - 2);
                    iArr2[length - 2] = 0;
                    iArr2[length - 1] = 0;
                    i6--;
                }
                iArr2[i6] = 1;
                z2 = !z2;
            }
            i++;
        }
        if (i6 != length - 1 || patternMatchVariance(iArr2, iArr, MAX_INDIVIDUAL_VARIANCE) >= MAX_AVG_VARIANCE) {
            return null;
        }
        return new int[]{i7, i - 1};
    }

    private static ResultPoint[] findRowsWithPattern(BitMatrix bitMatrix, int i, int i2, int i3, int i4, int[] iArr) {
        boolean z;
        int i5;
        int i6;
        ResultPoint[] resultPointArr = new ResultPoint[4];
        int[] iArr2 = new int[iArr.length];
        int i7 = i3;
        while (true) {
            if (i7 >= i) {
                z = false;
                i5 = i7;
                break;
            }
            int[] iArrFindGuardPattern = findGuardPattern(bitMatrix, i4, i7, i2, false, iArr, iArr2);
            if (iArrFindGuardPattern != null) {
                int[] iArr3 = iArrFindGuardPattern;
                int i8 = i7;
                while (true) {
                    if (i8 <= 0) {
                        break;
                    }
                    int i9 = i8 - 1;
                    int[] iArrFindGuardPattern2 = findGuardPattern(bitMatrix, i4, i9, i2, false, iArr, iArr2);
                    if (iArrFindGuardPattern2 == null) {
                        i8 = i9 + 1;
                        break;
                    }
                    iArr3 = iArrFindGuardPattern2;
                    i8 = i9;
                }
                resultPointArr[0] = new ResultPoint(iArr3[0], i8);
                resultPointArr[1] = new ResultPoint(iArr3[1], i8);
                z = true;
                i5 = i8;
            } else {
                i7 += 5;
            }
        }
        int i10 = i5 + 1;
        if (z) {
            int[] iArr4 = {(int) resultPointArr[0].getX(), (int) resultPointArr[1].getX()};
            int i11 = i10;
            int i12 = 0;
            while (i11 < i) {
                int[] iArrFindGuardPattern3 = findGuardPattern(bitMatrix, iArr4[0], i11, i2, false, iArr, iArr2);
                if (iArrFindGuardPattern3 != null && Math.abs(iArr4[0] - iArrFindGuardPattern3[0]) < 5 && Math.abs(iArr4[1] - iArrFindGuardPattern3[1]) < 5) {
                    i6 = 0;
                } else {
                    if (i12 > 25) {
                        break;
                    }
                    i6 = i12 + 1;
                    iArrFindGuardPattern3 = iArr4;
                }
                i11++;
                iArr4 = iArrFindGuardPattern3;
                i12 = i6;
            }
            i10 = i11 - (i12 + 1);
            resultPointArr[2] = new ResultPoint(iArr4[0], i10);
            resultPointArr[3] = new ResultPoint(iArr4[1], i10);
        }
        if (i10 - i5 < 10) {
            for (int i13 = 0; i13 < resultPointArr.length; i13++) {
                resultPointArr[i13] = null;
            }
        }
        return resultPointArr;
    }

    private static ResultPoint[] findVertices(BitMatrix bitMatrix, int i, int i2) {
        int y;
        int x;
        int height = bitMatrix.getHeight();
        int width = bitMatrix.getWidth();
        ResultPoint[] resultPointArr = new ResultPoint[8];
        copyToResult(resultPointArr, findRowsWithPattern(bitMatrix, height, width, i, i2, START_PATTERN), INDEXES_START_PATTERN);
        if (resultPointArr[4] != null) {
            x = (int) resultPointArr[4].getX();
            y = (int) resultPointArr[4].getY();
        } else {
            y = i;
            x = i2;
        }
        copyToResult(resultPointArr, findRowsWithPattern(bitMatrix, height, width, y, x, STOP_PATTERN), INDEXES_STOP_PATTERN);
        return resultPointArr;
    }

    private static float patternMatchVariance(int[] iArr, int[] iArr2, float f) {
        int length = iArr.length;
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            i2 += iArr[i3];
            i += iArr2[i3];
        }
        if (i2 < i) {
            return Float.POSITIVE_INFINITY;
        }
        float f2 = i2 / i;
        int i4 = 0;
        float f3 = 0.0f;
        while (i4 < length) {
            int i5 = iArr[i4];
            float f4 = iArr2[i4] * f2;
            float f5 = ((float) i5) > f4 ? i5 - f4 : f4 - i5;
            if (f5 > f * f2) {
                return Float.POSITIVE_INFINITY;
            }
            i4++;
            f3 = f5 + f3;
        }
        return f3 / i2;
    }
}
