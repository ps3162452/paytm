package androidx.constraintlayout.core.motion.utils;

import java.lang.reflect.Array;
import java.util.Arrays;
import n.NPStringFog;

/* JADX INFO: loaded from: classes40.dex */
public class MonotonicCurveFit extends CurveFit {
    private static final String TAG = NPStringFog.decode(new byte[]{41, 10, 8, 12, 18, 12, 10, 12, 5, 32, 19, 17, 18, 0, 32, 10, 18}, "defcfc", -20138);
    private boolean mExtrapolate = true;
    double[] mSlopeTemp;
    private double[] mT;
    private double[][] mTangent;
    private double[][] mY;

    public MonotonicCurveFit(double[] dArr, double[][] dArr2) {
        int length = dArr.length;
        int length2 = dArr2[0].length;
        this.mSlopeTemp = new double[length2];
        double[][] dArr3 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, length - 1, length2);
        double[][] dArr4 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, length, length2);
        for (int i = 0; i < length2; i++) {
            for (int i2 = 0; i2 < length - 1; i2++) {
                dArr3[i2][i] = (dArr2[i2 + 1][i] - dArr2[i2][i]) / (dArr[i2 + 1] - dArr[i2]);
                if (i2 == 0) {
                    dArr4[i2][i] = dArr3[i2][i];
                } else {
                    dArr4[i2][i] = (dArr3[i2 - 1][i] + dArr3[i2][i]) * 0.5d;
                }
            }
            dArr4[length - 1][i] = dArr3[length - 2][i];
        }
        int i3 = 0;
        while (true) {
            int i4 = i3;
            if (i4 >= length - 1) {
                this.mT = dArr;
                this.mY = dArr2;
                this.mTangent = dArr4;
                return;
            }
            for (int i5 = 0; i5 < length2; i5++) {
                if (dArr3[i4][i5] == 0.0d) {
                    dArr4[i4][i5] = 0.0d;
                    dArr4[i4 + 1][i5] = 0.0d;
                } else {
                    double d = dArr4[i4][i5] / dArr3[i4][i5];
                    double d2 = dArr4[i4 + 1][i5] / dArr3[i4][i5];
                    double dHypot = Math.hypot(d, d2);
                    if (dHypot > 9.0d) {
                        double d3 = 3.0d / dHypot;
                        dArr4[i4][i5] = d * d3 * dArr3[i4][i5];
                        dArr4[i4 + 1][i5] = d2 * d3 * dArr3[i4][i5];
                    }
                }
            }
            i3 = i4 + 1;
        }
    }

    public static MonotonicCurveFit buildWave(String str) {
        double[] dArr = new double[str.length() / 2];
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
        return buildWave(Arrays.copyOf(dArr, i + 1));
    }

    private static MonotonicCurveFit buildWave(double[] dArr) {
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
                dArr2[(length2 * 2) + i][0] = d3 + 1.0d;
                double d5 = i;
                Double.isNaN(d5);
                dArr3[(length2 * 2) + i] = (d5 * d2) + 1.0d;
                dArr2[i - 1][0] = (d3 - 1.0d) - d2;
                double d6 = i;
                Double.isNaN(d6);
                dArr3[i - 1] = ((d6 * d2) - 1.0d) - d2;
            }
        }
        return new MonotonicCurveFit(dArr3, dArr2);
    }

    private static double diff(double d, double d2, double d3, double d4, double d5, double d6) {
        double d7 = d2 * d2;
        return ((((d7 * ((3.0d * d) * d5)) + (((((((-6.0d) * d7) * d4) + ((6.0d * d2) * d4)) + ((6.0d * d7) * d3)) - ((6.0d * d2) * d3)) + (((3.0d * d) * d6) * d7))) - (((2.0d * d) * d6) * d2)) - (((4.0d * d) * d5) * d2)) + (d * d5);
    }

    private static double interpolate(double d, double d2, double d3, double d4, double d5, double d6) {
        double d7 = d2 * d2;
        double d8 = d7 * d2;
        return ((((d8 * (d * d5)) + ((((((((-2.0d) * d8) * d4) + ((3.0d * d7) * d4)) + ((2.0d * d8) * d3)) - ((3.0d * d7) * d3)) + d3) + ((d * d6) * d8))) - ((d * d6) * d7)) - (d7 * ((2.0d * d) * d5))) + (d * d5 * d2);
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public double getPos(double d, int i) {
        int i2 = 0;
        double[] dArr = this.mT;
        int length = dArr.length;
        if (this.mExtrapolate) {
            if (d <= dArr[0]) {
                return (getSlope(dArr[0], i) * (d - dArr[0])) + this.mY[0][i];
            }
            if (d >= dArr[length - 1]) {
                return (getSlope(dArr[length - 1], i) * (d - dArr[length - 1])) + this.mY[length - 1][i];
            }
        } else {
            if (d <= dArr[0]) {
                return this.mY[0][i];
            }
            if (d >= dArr[length - 1]) {
                return this.mY[length - 1][i];
            }
        }
        while (true) {
            int i3 = i2;
            if (i3 >= length - 1) {
                return 0.0d;
            }
            double[] dArr2 = this.mT;
            if (d == dArr2[i3]) {
                return this.mY[i3][i];
            }
            if (d < dArr2[i3 + 1]) {
                double d2 = dArr2[i3 + 1] - dArr2[i3];
                double d3 = (d - dArr2[i3]) / d2;
                double[][] dArr3 = this.mY;
                double d4 = dArr3[i3][i];
                double d5 = dArr3[i3 + 1][i];
                double[][] dArr4 = this.mTangent;
                return interpolate(d2, d3, d4, d5, dArr4[i3][i], dArr4[i3 + 1][i]);
            }
            i2 = i3 + 1;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public void getPos(double d, double[] dArr) {
        double[] dArr2 = this.mT;
        int length = dArr2.length;
        int length2 = this.mY[0].length;
        if (this.mExtrapolate) {
            if (d <= dArr2[0]) {
                getSlope(dArr2[0], this.mSlopeTemp);
                for (int i = 0; i < length2; i++) {
                    dArr[i] = this.mY[0][i] + ((d - this.mT[0]) * this.mSlopeTemp[i]);
                }
                return;
            }
            if (d >= dArr2[length - 1]) {
                getSlope(dArr2[length - 1], this.mSlopeTemp);
                for (int i2 = 0; i2 < length2; i2++) {
                    dArr[i2] = this.mY[length - 1][i2] + ((d - this.mT[length - 1]) * this.mSlopeTemp[i2]);
                }
                return;
            }
        } else {
            if (d <= dArr2[0]) {
                for (int i3 = 0; i3 < length2; i3++) {
                    dArr[i3] = this.mY[0][i3];
                }
                return;
            }
            if (d >= dArr2[length - 1]) {
                for (int i4 = 0; i4 < length2; i4++) {
                    dArr[i4] = this.mY[length - 1][i4];
                }
                return;
            }
        }
        int i5 = 0;
        while (true) {
            int i6 = i5;
            if (i6 >= length - 1) {
                return;
            }
            if (d == this.mT[i6]) {
                for (int i7 = 0; i7 < length2; i7++) {
                    dArr[i7] = this.mY[i6][i7];
                }
            }
            double[] dArr3 = this.mT;
            if (d < dArr3[i6 + 1]) {
                double d2 = dArr3[i6 + 1] - dArr3[i6];
                double d3 = (d - dArr3[i6]) / d2;
                for (int i8 = 0; i8 < length2; i8++) {
                    double[][] dArr4 = this.mY;
                    double d4 = dArr4[i6][i8];
                    double d5 = dArr4[i6 + 1][i8];
                    double[][] dArr5 = this.mTangent;
                    dArr[i8] = interpolate(d2, d3, d4, d5, dArr5[i6][i8], dArr5[i6 + 1][i8]);
                }
                return;
            }
            i5 = i6 + 1;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public void getPos(double d, float[] fArr) {
        double[] dArr = this.mT;
        int length = dArr.length;
        int length2 = this.mY[0].length;
        if (this.mExtrapolate) {
            if (d <= dArr[0]) {
                getSlope(dArr[0], this.mSlopeTemp);
                for (int i = 0; i < length2; i++) {
                    fArr[i] = (float) (this.mY[0][i] + ((d - this.mT[0]) * this.mSlopeTemp[i]));
                }
                return;
            }
            if (d >= dArr[length - 1]) {
                getSlope(dArr[length - 1], this.mSlopeTemp);
                for (int i2 = 0; i2 < length2; i2++) {
                    fArr[i2] = (float) (this.mY[length - 1][i2] + ((d - this.mT[length - 1]) * this.mSlopeTemp[i2]));
                }
                return;
            }
        } else {
            if (d <= dArr[0]) {
                for (int i3 = 0; i3 < length2; i3++) {
                    fArr[i3] = (float) this.mY[0][i3];
                }
                return;
            }
            if (d >= dArr[length - 1]) {
                for (int i4 = 0; i4 < length2; i4++) {
                    fArr[i4] = (float) this.mY[length - 1][i4];
                }
                return;
            }
        }
        int i5 = 0;
        while (true) {
            int i6 = i5;
            if (i6 >= length - 1) {
                return;
            }
            if (d == this.mT[i6]) {
                for (int i7 = 0; i7 < length2; i7++) {
                    fArr[i7] = (float) this.mY[i6][i7];
                }
            }
            double[] dArr2 = this.mT;
            if (d < dArr2[i6 + 1]) {
                double d2 = dArr2[i6 + 1] - dArr2[i6];
                double d3 = (d - dArr2[i6]) / d2;
                for (int i8 = 0; i8 < length2; i8++) {
                    double[][] dArr3 = this.mY;
                    double d4 = dArr3[i6][i8];
                    double d5 = dArr3[i6 + 1][i8];
                    double[][] dArr4 = this.mTangent;
                    fArr[i8] = (float) interpolate(d2, d3, d4, d5, dArr4[i6][i8], dArr4[i6 + 1][i8]);
                }
                return;
            }
            i5 = i6 + 1;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public double getSlope(double d, int i) {
        int i2 = 0;
        double[] dArr = this.mT;
        int length = dArr.length;
        if (d < dArr[0]) {
            d = dArr[0];
        } else if (d >= dArr[length - 1]) {
            d = dArr[length - 1];
        }
        while (true) {
            int i3 = i2;
            if (i3 >= length - 1) {
                return 0.0d;
            }
            double[] dArr2 = this.mT;
            if (d <= dArr2[i3 + 1]) {
                double d2 = dArr2[i3 + 1] - dArr2[i3];
                double d3 = (d - dArr2[i3]) / d2;
                double[][] dArr3 = this.mY;
                double d4 = dArr3[i3][i];
                double d5 = dArr3[i3 + 1][i];
                double[][] dArr4 = this.mTangent;
                return diff(d2, d3, d4, d5, dArr4[i3][i], dArr4[i3 + 1][i]) / d2;
            }
            i2 = i3 + 1;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public void getSlope(double d, double[] dArr) {
        double[] dArr2 = this.mT;
        int length = dArr2.length;
        int length2 = this.mY[0].length;
        if (d <= dArr2[0]) {
            d = dArr2[0];
        } else if (d >= dArr2[length - 1]) {
            d = dArr2[length - 1];
        }
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= length - 1) {
                return;
            }
            double[] dArr3 = this.mT;
            if (d <= dArr3[i2 + 1]) {
                double d2 = dArr3[i2 + 1] - dArr3[i2];
                double d3 = (d - dArr3[i2]) / d2;
                for (int i3 = 0; i3 < length2; i3++) {
                    double[][] dArr4 = this.mY;
                    double d4 = dArr4[i2][i3];
                    double d5 = dArr4[i2 + 1][i3];
                    double[][] dArr5 = this.mTangent;
                    dArr[i3] = diff(d2, d3, d4, d5, dArr5[i2][i3], dArr5[i2 + 1][i3]) / d2;
                }
                return;
            }
            i = i2 + 1;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public double[] getTimePoints() {
        return this.mT;
    }
}
