package androidx.constraintlayout.core.motion.utils;

import n.NPStringFog;

/* JADX INFO: loaded from: classes40.dex */
public class LinearCurveFit extends CurveFit {
    private static final String TAG = NPStringFog.decode(new byte[]{127, 91, 93, 0, 3, 71, 112, 71, 65, 19, 7, 115, 90, 70}, "323eb5", true, false);
    private boolean mExtrapolate = true;
    double[] mSlopeTemp;
    private double[] mT;
    private double mTotalLength;
    private double[][] mY;

    public LinearCurveFit(double[] dArr, double[][] dArr2) {
        this.mTotalLength = Double.NaN;
        int length = dArr.length;
        int length2 = dArr2[0].length;
        this.mSlopeTemp = new double[length2];
        this.mT = dArr;
        this.mY = dArr2;
        if (length2 > 2) {
            double d = 0.0d;
            double dHypot = 0.0d;
            int i = 0;
            double d2 = 0.0d;
            while (i < dArr.length) {
                double d3 = dArr2[i][0];
                double d4 = dArr2[i][0];
                dHypot = i > 0 ? Math.hypot(d3 - d2, d4 - d) + dHypot : dHypot;
                i++;
                d = d4;
                d2 = d3;
            }
            this.mTotalLength = 0.0d;
        }
    }

    private double getLength2D(double d) {
        if (Double.isNaN(this.mTotalLength)) {
            return 0.0d;
        }
        double[] dArr = this.mT;
        int length = dArr.length;
        if (d <= dArr[0]) {
            return 0.0d;
        }
        if (d >= dArr[length - 1]) {
            return this.mTotalLength;
        }
        double d2 = 0.0d;
        double d3 = 0.0d;
        int i = 0;
        double dHypot = 0.0d;
        while (i < length - 1) {
            double[][] dArr2 = this.mY;
            double d4 = dArr2[i][0];
            double d5 = dArr2[i][1];
            if (i > 0) {
                dHypot += Math.hypot(d4 - d2, d5 - d3);
            }
            double[] dArr3 = this.mT;
            if (d == dArr3[i]) {
                return dHypot;
            }
            if (d < dArr3[i + 1]) {
                double d6 = (d - dArr3[i]) / (dArr3[i + 1] - dArr3[i]);
                double[][] dArr4 = this.mY;
                double d7 = dArr4[i][0];
                return dHypot + Math.hypot(d5 - ((dArr4[i + 1][1] * d6) + ((1.0d - d6) * dArr4[i][1])), d4 - ((d6 * dArr4[i + 1][0]) + ((1.0d - d6) * d7)));
            }
            i++;
            d3 = d5;
            d2 = d4;
        }
        return 0.0d;
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public double getPos(double d, int i) {
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
        for (int i2 = 0; i2 < length - 1; i2++) {
            double[] dArr2 = this.mT;
            if (d == dArr2[i2]) {
                return this.mY[i2][i];
            }
            if (d < dArr2[i2 + 1]) {
                double d2 = (d - dArr2[i2]) / (dArr2[i2 + 1] - dArr2[i2]);
                double[][] dArr3 = this.mY;
                return (dArr3[i2 + 1][i] * d2) + ((1.0d - d2) * dArr3[i2][i]);
            }
        }
        return 0.0d;
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public void getPos(double d, double[] dArr) {
        int i = 0;
        double[] dArr2 = this.mT;
        int length = dArr2.length;
        int length2 = this.mY[0].length;
        if (this.mExtrapolate) {
            if (d <= dArr2[0]) {
                getSlope(dArr2[0], this.mSlopeTemp);
                for (int i2 = 0; i2 < length2; i2++) {
                    dArr[i2] = this.mY[0][i2] + ((d - this.mT[0]) * this.mSlopeTemp[i2]);
                }
                return;
            }
            if (d >= dArr2[length - 1]) {
                getSlope(dArr2[length - 1], this.mSlopeTemp);
                while (i < length2) {
                    dArr[i] = this.mY[length - 1][i] + ((d - this.mT[length - 1]) * this.mSlopeTemp[i]);
                    i++;
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
                while (i < length2) {
                    dArr[i] = this.mY[length - 1][i];
                    i++;
                }
                return;
            }
        }
        for (int i4 = 0; i4 < length - 1; i4++) {
            if (d == this.mT[i4]) {
                for (int i5 = 0; i5 < length2; i5++) {
                    dArr[i5] = this.mY[i4][i5];
                }
            }
            double[] dArr3 = this.mT;
            if (d < dArr3[i4 + 1]) {
                double d2 = (d - dArr3[i4]) / (dArr3[i4 + 1] - dArr3[i4]);
                while (i < length2) {
                    double[][] dArr4 = this.mY;
                    dArr[i] = ((1.0d - d2) * dArr4[i4][i]) + (dArr4[i4 + 1][i] * d2);
                    i++;
                }
                return;
            }
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public void getPos(double d, float[] fArr) {
        int i = 0;
        double[] dArr = this.mT;
        int length = dArr.length;
        int length2 = this.mY[0].length;
        if (this.mExtrapolate) {
            if (d <= dArr[0]) {
                getSlope(dArr[0], this.mSlopeTemp);
                for (int i2 = 0; i2 < length2; i2++) {
                    fArr[i2] = (float) (this.mY[0][i2] + ((d - this.mT[0]) * this.mSlopeTemp[i2]));
                }
                return;
            }
            if (d >= dArr[length - 1]) {
                getSlope(dArr[length - 1], this.mSlopeTemp);
                while (i < length2) {
                    fArr[i] = (float) (this.mY[length - 1][i] + ((d - this.mT[length - 1]) * this.mSlopeTemp[i]));
                    i++;
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
                while (i < length2) {
                    fArr[i] = (float) this.mY[length - 1][i];
                    i++;
                }
                return;
            }
        }
        for (int i4 = 0; i4 < length - 1; i4++) {
            if (d == this.mT[i4]) {
                for (int i5 = 0; i5 < length2; i5++) {
                    fArr[i5] = (float) this.mY[i4][i5];
                }
            }
            double[] dArr2 = this.mT;
            if (d < dArr2[i4 + 1]) {
                double d2 = (d - dArr2[i4]) / (dArr2[i4 + 1] - dArr2[i4]);
                while (i < length2) {
                    double[][] dArr3 = this.mY;
                    fArr[i] = (float) (((1.0d - d2) * dArr3[i4][i]) + (dArr3[i4 + 1][i] * d2));
                    i++;
                }
                return;
            }
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public double getSlope(double d, int i) {
        double[] dArr = this.mT;
        int length = dArr.length;
        if (d < dArr[0]) {
            d = dArr[0];
        } else if (d >= dArr[length - 1]) {
            d = dArr[length - 1];
        }
        for (int i2 = 0; i2 < length - 1; i2++) {
            double[] dArr2 = this.mT;
            if (d <= dArr2[i2 + 1]) {
                double d2 = dArr2[i2 + 1] - dArr2[i2];
                double d3 = (d - dArr2[i2]) / d2;
                double[][] dArr3 = this.mY;
                return (dArr3[i2 + 1][i] - dArr3[i2][i]) / d2;
            }
        }
        return 0.0d;
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
        for (int i = 0; i < length - 1; i++) {
            double[] dArr3 = this.mT;
            if (d <= dArr3[i + 1]) {
                double d2 = dArr3[i + 1] - dArr3[i];
                double d3 = (d - dArr3[i]) / d2;
                for (int i2 = 0; i2 < length2; i2++) {
                    double[][] dArr4 = this.mY;
                    dArr[i2] = (dArr4[i + 1][i2] - dArr4[i][i2]) / d2;
                }
                return;
            }
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public double[] getTimePoints() {
        return this.mT;
    }
}
