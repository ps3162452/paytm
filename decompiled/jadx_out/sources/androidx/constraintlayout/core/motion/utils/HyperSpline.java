package androidx.constraintlayout.core.motion.utils;

import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes40.dex */
public class HyperSpline {
    double[][] mCtl;
    Cubic[][] mCurve;
    double[] mCurveLength;
    int mDimensionality;
    int mPoints;
    double mTotalLength;

    public static class Cubic {
        double mA;
        double mB;
        double mC;
        double mD;

        public Cubic(double d, double d2, double d3, double d4) {
            this.mA = d;
            this.mB = d2;
            this.mC = d3;
            this.mD = d4;
        }

        public double eval(double d) {
            return (((((this.mD * d) + this.mC) * d) + this.mB) * d) + this.mA;
        }

        public double vel(double d) {
            return (((this.mD * 3.0d * d) + (this.mC * 2.0d)) * d) + this.mB;
        }
    }

    public HyperSpline() {
    }

    public HyperSpline(double[][] dArr) {
        setup(dArr);
    }

    static Cubic[] calcNaturalCubic(int i, double[] dArr) {
        double[] dArr2 = new double[i];
        double[] dArr3 = new double[i];
        double[] dArr4 = new double[i];
        int i2 = i - 1;
        dArr2[0] = 0.5d;
        for (int i3 = 1; i3 < i2; i3++) {
            dArr2[i3] = 1.0d / (4.0d - dArr2[i3 - 1]);
        }
        dArr2[i2] = 1.0d / (2.0d - dArr2[i2 - 1]);
        dArr3[0] = (dArr[1] - dArr[0]) * 3.0d * dArr2[0];
        for (int i4 = 1; i4 < i2; i4++) {
            dArr3[i4] = (((dArr[i4 + 1] - dArr[i4 - 1]) * 3.0d) - dArr3[i4 - 1]) * dArr2[i4];
        }
        dArr3[i2] = (((dArr[i2] - dArr[i2 - 1]) * 3.0d) - dArr3[i2 - 1]) * dArr2[i2];
        dArr4[i2] = dArr3[i2];
        for (int i5 = i2 - 1; i5 >= 0; i5--) {
            dArr4[i5] = dArr3[i5] - (dArr2[i5] * dArr4[i5 + 1]);
        }
        Cubic[] cubicArr = new Cubic[i2];
        for (int i6 = 0; i6 < i2; i6++) {
            cubicArr[i6] = new Cubic((float) dArr[i6], dArr4[i6], (((dArr[i6 + 1] - dArr[i6]) * 3.0d) - (dArr4[i6] * 2.0d)) - dArr4[i6 + 1], ((dArr[i6] - dArr[i6 + 1]) * 2.0d) + dArr4[i6] + dArr4[i6 + 1]);
        }
        return cubicArr;
    }

    public double approxLength(Cubic[] cubicArr) {
        double d = 0.0d;
        int length = cubicArr.length;
        double[] dArr = new double[cubicArr.length];
        double d2 = 0.0d;
        while (d2 < 1.0d) {
            double d3 = 0.0d;
            for (int i = 0; i < cubicArr.length; i++) {
                double d4 = dArr[i];
                double dEval = cubicArr[i].eval(d2);
                dArr[i] = dEval;
                double d5 = d4 - dEval;
                d3 += d5 * d5;
            }
            double dSqrt = d2 > 0.0d ? Math.sqrt(d3) + d : d;
            d2 = 0.1d + d2;
            d = dSqrt;
        }
        double d6 = 0.0d;
        for (int i2 = 0; i2 < cubicArr.length; i2++) {
            double d7 = dArr[i2];
            double dEval2 = cubicArr[i2].eval(1.0d);
            dArr[i2] = dEval2;
            double d8 = d7 - dEval2;
            d6 += d8 * d8;
        }
        return Math.sqrt(d6) + d;
    }

    public double getPos(double d, int i) {
        double[] dArr;
        double d2 = this.mTotalLength * d;
        int i2 = 0;
        while (true) {
            dArr = this.mCurveLength;
            if (i2 >= dArr.length - 1 || dArr[i2] >= d2) {
                break;
            }
            d2 -= dArr[i2];
            i2++;
        }
        return this.mCurve[i][i2].eval(d2 / dArr[i2]);
    }

    public void getPos(double d, double[] dArr) {
        double d2 = this.mTotalLength * d;
        int i = 0;
        while (true) {
            double[] dArr2 = this.mCurveLength;
            if (i >= dArr2.length - 1 || dArr2[i] >= d2) {
                break;
            }
            d2 -= dArr2[i];
            i++;
        }
        for (int i2 = 0; i2 < dArr.length; i2++) {
            dArr[i2] = this.mCurve[i2][i].eval(d2 / this.mCurveLength[i]);
        }
    }

    public void getPos(double d, float[] fArr) {
        double d2 = this.mTotalLength * d;
        int i = 0;
        while (true) {
            double[] dArr = this.mCurveLength;
            if (i >= dArr.length - 1 || dArr[i] >= d2) {
                break;
            }
            d2 -= dArr[i];
            i++;
        }
        for (int i2 = 0; i2 < fArr.length; i2++) {
            fArr[i2] = (float) this.mCurve[i2][i].eval(d2 / this.mCurveLength[i]);
        }
    }

    public void getVelocity(double d, double[] dArr) {
        double d2 = this.mTotalLength * d;
        int i = 0;
        while (true) {
            double[] dArr2 = this.mCurveLength;
            if (i >= dArr2.length - 1 || dArr2[i] >= d2) {
                break;
            }
            d2 -= dArr2[i];
            i++;
        }
        for (int i2 = 0; i2 < dArr.length; i2++) {
            dArr[i2] = this.mCurve[i2][i].vel(d2 / this.mCurveLength[i]);
        }
    }

    public void setup(double[][] dArr) {
        int i;
        int length = dArr[0].length;
        this.mDimensionality = length;
        int length2 = dArr.length;
        this.mPoints = length2;
        this.mCtl = (double[][]) Array.newInstance((Class<?>) Double.TYPE, length, length2);
        this.mCurve = new Cubic[this.mDimensionality][];
        for (int i2 = 0; i2 < this.mDimensionality; i2++) {
            for (int i3 = 0; i3 < this.mPoints; i3++) {
                this.mCtl[i2][i3] = dArr[i3][i2];
            }
        }
        int i4 = 0;
        while (true) {
            i = this.mDimensionality;
            if (i4 >= i) {
                break;
            }
            Cubic[][] cubicArr = this.mCurve;
            double[][] dArr2 = this.mCtl;
            cubicArr[i4] = calcNaturalCubic(dArr2[i4].length, dArr2[i4]);
            i4++;
        }
        this.mCurveLength = new double[this.mPoints - 1];
        this.mTotalLength = 0.0d;
        Cubic[] cubicArr2 = new Cubic[i];
        for (int i5 = 0; i5 < this.mCurveLength.length; i5++) {
            for (int i6 = 0; i6 < this.mDimensionality; i6++) {
                cubicArr2[i6] = this.mCurve[i6][i5];
            }
            double d = this.mTotalLength;
            double[] dArr3 = this.mCurveLength;
            double dApproxLength = approxLength(cubicArr2);
            dArr3[i5] = dApproxLength;
            this.mTotalLength = d + dApproxLength;
        }
    }
}
