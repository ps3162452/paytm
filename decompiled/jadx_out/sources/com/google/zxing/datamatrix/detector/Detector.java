package com.google.zxing.datamatrix.detector;

import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DetectorResult;
import com.google.zxing.common.GridSampler;
import com.google.zxing.common.detector.MathUtils;
import com.google.zxing.common.detector.WhiteRectangleDetector;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;
import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
public final class Detector {
    private final BitMatrix image;
    private final WhiteRectangleDetector rectangleDetector;

    private static final class ResultPointsAndTransitions {
        private final ResultPoint from;
        private final ResultPoint to;
        private final int transitions;

        private ResultPointsAndTransitions(ResultPoint resultPoint, ResultPoint resultPoint2, int i) {
            this.from = resultPoint;
            this.to = resultPoint2;
            this.transitions = i;
        }

        ResultPoint getFrom() {
            return this.from;
        }

        ResultPoint getTo() {
            return this.to;
        }

        public int getTransitions() {
            return this.transitions;
        }

        public String toString() {
            return this.from + NPStringFog.decode(new byte[]{22}, "944629", 1.3972768E9f) + this.to + '/' + this.transitions;
        }
    }

    private static final class ResultPointsAndTransitionsComparator implements Comparator<ResultPointsAndTransitions>, Serializable {
        private ResultPointsAndTransitionsComparator() {
        }

        @Override // java.util.Comparator
        public int compare(ResultPointsAndTransitions resultPointsAndTransitions, ResultPointsAndTransitions resultPointsAndTransitions2) {
            return resultPointsAndTransitions.getTransitions() - resultPointsAndTransitions2.getTransitions();
        }
    }

    public Detector(BitMatrix bitMatrix) throws NotFoundException {
        this.image = bitMatrix;
        this.rectangleDetector = new WhiteRectangleDetector(bitMatrix);
    }

    private ResultPoint correctTopRight(ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3, ResultPoint resultPoint4, int i) {
        float fDistance = distance(resultPoint, resultPoint2) / i;
        int iDistance = distance(resultPoint3, resultPoint4);
        ResultPoint resultPoint5 = new ResultPoint((((resultPoint4.getX() - resultPoint3.getX()) / iDistance) * fDistance) + resultPoint4.getX(), (fDistance * ((resultPoint4.getY() - resultPoint3.getY()) / iDistance)) + resultPoint4.getY());
        float fDistance2 = distance(resultPoint, resultPoint3) / i;
        int iDistance2 = distance(resultPoint2, resultPoint4);
        ResultPoint resultPoint6 = new ResultPoint((((resultPoint4.getX() - resultPoint2.getX()) / iDistance2) * fDistance2) + resultPoint4.getX(), (fDistance2 * ((resultPoint4.getY() - resultPoint2.getY()) / iDistance2)) + resultPoint4.getY());
        if (isValid(resultPoint5)) {
            return (isValid(resultPoint6) && Math.abs(transitionsBetween(resultPoint3, resultPoint5).getTransitions() - transitionsBetween(resultPoint2, resultPoint5).getTransitions()) > Math.abs(transitionsBetween(resultPoint3, resultPoint6).getTransitions() - transitionsBetween(resultPoint2, resultPoint6).getTransitions())) ? resultPoint6 : resultPoint5;
        }
        if (isValid(resultPoint6)) {
            return resultPoint6;
        }
        return null;
    }

    private ResultPoint correctTopRightRectangular(ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3, ResultPoint resultPoint4, int i, int i2) {
        float fDistance = distance(resultPoint, resultPoint2) / i;
        int iDistance = distance(resultPoint3, resultPoint4);
        ResultPoint resultPoint5 = new ResultPoint((((resultPoint4.getX() - resultPoint3.getX()) / iDistance) * fDistance) + resultPoint4.getX(), (fDistance * ((resultPoint4.getY() - resultPoint3.getY()) / iDistance)) + resultPoint4.getY());
        float fDistance2 = distance(resultPoint, resultPoint3) / i2;
        int iDistance2 = distance(resultPoint2, resultPoint4);
        ResultPoint resultPoint6 = new ResultPoint((((resultPoint4.getX() - resultPoint2.getX()) / iDistance2) * fDistance2) + resultPoint4.getX(), (fDistance2 * ((resultPoint4.getY() - resultPoint2.getY()) / iDistance2)) + resultPoint4.getY());
        if (isValid(resultPoint5)) {
            return (isValid(resultPoint6) && Math.abs(i - transitionsBetween(resultPoint3, resultPoint5).getTransitions()) + Math.abs(i2 - transitionsBetween(resultPoint2, resultPoint5).getTransitions()) > Math.abs(i - transitionsBetween(resultPoint3, resultPoint6).getTransitions()) + Math.abs(i2 - transitionsBetween(resultPoint2, resultPoint6).getTransitions())) ? resultPoint6 : resultPoint5;
        }
        if (isValid(resultPoint6)) {
            return resultPoint6;
        }
        return null;
    }

    private static int distance(ResultPoint resultPoint, ResultPoint resultPoint2) {
        return MathUtils.round(ResultPoint.distance(resultPoint, resultPoint2));
    }

    private static void increment(Map<ResultPoint, Integer> map, ResultPoint resultPoint) {
        Integer num = map.get(resultPoint);
        map.put(resultPoint, Integer.valueOf(num == null ? 1 : num.intValue() + 1));
    }

    private boolean isValid(ResultPoint resultPoint) {
        return resultPoint.getX() >= 0.0f && resultPoint.getX() < ((float) this.image.getWidth()) && resultPoint.getY() > 0.0f && resultPoint.getY() < ((float) this.image.getHeight());
    }

    private static BitMatrix sampleGrid(BitMatrix bitMatrix, ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3, ResultPoint resultPoint4, int i, int i2) throws NotFoundException {
        return GridSampler.getInstance().sampleGrid(bitMatrix, i, i2, 0.5f, 0.5f, i - 0.5f, 0.5f, i - 0.5f, i2 - 0.5f, 0.5f, i2 - 0.5f, resultPoint.getX(), resultPoint.getY(), resultPoint4.getX(), resultPoint4.getY(), resultPoint3.getX(), resultPoint3.getY(), resultPoint2.getX(), resultPoint2.getY());
    }

    private ResultPointsAndTransitions transitionsBetween(ResultPoint resultPoint, ResultPoint resultPoint2) {
        int i;
        int i2;
        int x = (int) resultPoint.getX();
        int y = (int) resultPoint.getY();
        int x2 = (int) resultPoint2.getX();
        int y2 = (int) resultPoint2.getY();
        boolean z = Math.abs(y2 - y) > Math.abs(x2 - x);
        if (!z) {
            y2 = x2;
            x2 = y2;
            y = x;
            x = y;
        }
        int iAbs = Math.abs(y2 - y);
        int iAbs2 = Math.abs(x2 - x);
        int i3 = (-iAbs) / 2;
        int i4 = x < x2 ? 1 : -1;
        int i5 = y < y2 ? 1 : -1;
        boolean z2 = this.image.get(z ? x : y, z ? y : x);
        int i6 = i3;
        int i7 = x;
        int i8 = 0;
        while (true) {
            if (y == y2) {
                i = i8;
                break;
            }
            boolean z3 = this.image.get(z ? i7 : y, z ? y : i7);
            if (z3 != z2) {
                z2 = z3;
                i2 = i8 + 1;
            } else {
                i2 = i8;
            }
            int i9 = i6 + iAbs2;
            if (i9 > 0) {
                if (i7 == x2) {
                    i = i2;
                    break;
                }
                i7 += i4;
                i9 -= iAbs;
            }
            y += i5;
            i6 = i9;
            i8 = i2;
        }
        return new ResultPointsAndTransitions(resultPoint, resultPoint2, i);
    }

    public DetectorResult detect() throws NotFoundException {
        ResultPoint resultPointCorrectTopRightRectangular;
        BitMatrix bitMatrixSampleGrid;
        ResultPoint resultPoint;
        ResultPoint resultPoint2;
        ResultPoint[] resultPointArrDetect = this.rectangleDetector.detect();
        ResultPoint resultPoint3 = resultPointArrDetect[0];
        ResultPoint resultPoint4 = resultPointArrDetect[1];
        ResultPoint resultPoint5 = resultPointArrDetect[2];
        ResultPoint resultPoint6 = resultPointArrDetect[3];
        ArrayList arrayList = new ArrayList(4);
        arrayList.add(transitionsBetween(resultPoint3, resultPoint4));
        arrayList.add(transitionsBetween(resultPoint3, resultPoint5));
        arrayList.add(transitionsBetween(resultPoint4, resultPoint6));
        arrayList.add(transitionsBetween(resultPoint5, resultPoint6));
        Collections.sort(arrayList, new ResultPointsAndTransitionsComparator());
        ResultPointsAndTransitions resultPointsAndTransitions = (ResultPointsAndTransitions) arrayList.get(0);
        ResultPointsAndTransitions resultPointsAndTransitions2 = (ResultPointsAndTransitions) arrayList.get(1);
        HashMap map = new HashMap();
        increment(map, resultPointsAndTransitions.getFrom());
        increment(map, resultPointsAndTransitions.getTo());
        increment(map, resultPointsAndTransitions2.getFrom());
        increment(map, resultPointsAndTransitions2.getTo());
        ResultPoint resultPoint7 = null;
        ResultPoint resultPoint8 = null;
        ResultPoint resultPoint9 = null;
        for (Map.Entry entry : map.entrySet()) {
            ResultPoint resultPoint10 = (ResultPoint) entry.getKey();
            if (((Integer) entry.getValue()).intValue() == 2) {
                resultPoint = resultPoint7;
                resultPoint2 = resultPoint9;
            } else if (resultPoint7 == null) {
                resultPoint = resultPoint10;
                resultPoint10 = resultPoint8;
                resultPoint2 = resultPoint9;
            } else {
                resultPoint = resultPoint7;
                ResultPoint resultPoint11 = resultPoint8;
                resultPoint2 = resultPoint10;
                resultPoint10 = resultPoint11;
            }
            resultPoint7 = resultPoint;
            resultPoint9 = resultPoint2;
            resultPoint8 = resultPoint10;
        }
        if (resultPoint7 == null || resultPoint8 == null || resultPoint9 == null) {
            throw NotFoundException.getNotFoundInstance();
        }
        ResultPoint[] resultPointArr = {resultPoint7, resultPoint8, resultPoint9};
        ResultPoint.orderBestPatterns(resultPointArr);
        ResultPoint resultPoint12 = resultPointArr[0];
        ResultPoint resultPoint13 = resultPointArr[1];
        ResultPoint resultPoint14 = resultPointArr[2];
        ResultPoint resultPoint15 = !map.containsKey(resultPoint3) ? resultPoint3 : !map.containsKey(resultPoint4) ? resultPoint4 : !map.containsKey(resultPoint5) ? resultPoint5 : resultPoint6;
        int transitions = transitionsBetween(resultPoint14, resultPoint15).getTransitions();
        int transitions2 = transitionsBetween(resultPoint12, resultPoint15).getTransitions();
        if ((transitions & 1) == 1) {
            transitions++;
        }
        int i = transitions + 2;
        if ((transitions2 & 1) == 1) {
            transitions2++;
        }
        int i2 = transitions2 + 2;
        if (i * 4 >= i2 * 7 || i2 * 4 >= i * 7) {
            resultPointCorrectTopRightRectangular = correctTopRightRectangular(resultPoint13, resultPoint12, resultPoint14, resultPoint15, i, i2);
            if (resultPointCorrectTopRightRectangular == null) {
                resultPointCorrectTopRightRectangular = resultPoint15;
            }
            int transitions3 = transitionsBetween(resultPoint14, resultPointCorrectTopRightRectangular).getTransitions();
            int transitions4 = transitionsBetween(resultPoint12, resultPointCorrectTopRightRectangular).getTransitions();
            if ((transitions3 & 1) == 1) {
                transitions3++;
            }
            if ((transitions4 & 1) == 1) {
                transitions4++;
            }
            bitMatrixSampleGrid = sampleGrid(this.image, resultPoint14, resultPoint13, resultPoint12, resultPointCorrectTopRightRectangular, transitions3, transitions4);
        } else {
            resultPointCorrectTopRightRectangular = correctTopRight(resultPoint13, resultPoint12, resultPoint14, resultPoint15, Math.min(i2, i));
            if (resultPointCorrectTopRightRectangular == null) {
                resultPointCorrectTopRightRectangular = resultPoint15;
            }
            int iMax = Math.max(transitionsBetween(resultPoint14, resultPointCorrectTopRightRectangular).getTransitions(), transitionsBetween(resultPoint12, resultPointCorrectTopRightRectangular).getTransitions()) + 1;
            if ((iMax & 1) == 1) {
                iMax++;
            }
            bitMatrixSampleGrid = sampleGrid(this.image, resultPoint14, resultPoint13, resultPoint12, resultPointCorrectTopRightRectangular, iMax, iMax);
        }
        return new DetectorResult(bitMatrixSampleGrid, new ResultPoint[]{resultPoint14, resultPoint13, resultPoint12, resultPointCorrectTopRightRectangular});
    }
}
