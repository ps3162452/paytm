package androidx.constraintlayout.core.motion.utils;

import java.lang.reflect.Array;
import java.util.Arrays;
import n.NPStringFog;

/* JADX INFO: loaded from: classes40.dex */
public class StepCurve extends Easing {
    private static final boolean DEBUG = false;
    MonotonicCurveFit mCurveFit;

    StepCurve(String str) {
        this.str = str;
        double[] dArr = new double[this.str.length() / 2];
        int iIndexOf = str.indexOf(40) + 1;
        int iIndexOf2 = str.indexOf(44, iIndexOf);
        int i = 0;
        while (iIndexOf2 != -1) {
            dArr[i] = Double.parseDouble(str.substring(iIndexOf, iIndexOf2).trim());
            iIndexOf = iIndexOf2 + 1;
            iIndexOf2 = str.indexOf(44, iIndexOf);
            i++;
        }
        dArr[i] = Double.parseDouble(str.substring(iIndexOf, str.indexOf(41, iIndexOf)).trim());
        this.mCurveFit = genSpline(Arrays.copyOf(dArr, i + 1));
    }

    private static MonotonicCurveFit genSpline(String str) {
        String[] strArrSplit = str.split(NPStringFog.decode(new byte[]{61, 22, 29}, "ae6780", 1.767387526E9d));
        double[] dArr = new double[strArrSplit.length];
        for (int i = 0; i < dArr.length; i++) {
            dArr[i] = Double.parseDouble(strArrSplit[i]);
        }
        return genSpline(dArr);
    }

    private static MonotonicCurveFit genSpline(double[] dArr) {
        int length = (dArr.length * 3) - 2;
        int length2 = dArr.length - 1;
        double d = length2;
        Double.isNaN(d);
        double d2 = 1.0d / d;
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, length, 1);
        double[] dArr3 = new double[length];
        for (int i = 0; i < dArr.length; i++) {
            double d3 = dArr[i];
            dArr2[i + length2][0] = d3;
            double d4 = i;
            Double.isNaN(d4);
            dArr3[i + length2] = d4 * d2;
            if (i > 0) {
                dArr2[(length2 * 2) + i][0] = 1.0d + d3;
                double d5 = i;
                Double.isNaN(d5);
                dArr3[(length2 * 2) + i] = (d5 * d2) + 1.0d;
                dArr2[i - 1][0] = (d3 - 1.0d) - d2;
                double d6 = i;
                Double.isNaN(d6);
                dArr3[i - 1] = ((d6 * d2) - 1.0d) - d2;
            }
        }
        MonotonicCurveFit monotonicCurveFit = new MonotonicCurveFit(dArr3, dArr2);
        System.out.println(NPStringFog.decode(new byte[]{19, 4, 20}, "3442e6", 1.58392E9f) + monotonicCurveFit.getPos(0.0d, 0));
        System.out.println(NPStringFog.decode(new byte[]{65, 87, 70}, "affaa4", false, true) + monotonicCurveFit.getPos(1.0d, 0));
        return monotonicCurveFit;
    }

    @Override // androidx.constraintlayout.core.motion.utils.Easing
    public double get(double d) {
        return this.mCurveFit.getPos(d, 0);
    }

    @Override // androidx.constraintlayout.core.motion.utils.Easing
    public double getDiff(double d) {
        return this.mCurveFit.getSlope(d, 0);
    }
}
