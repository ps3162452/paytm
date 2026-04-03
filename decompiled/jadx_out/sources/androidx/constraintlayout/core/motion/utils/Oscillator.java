package androidx.constraintlayout.core.motion.utils;

import java.util.Arrays;
import n.NPStringFog;

/* JADX INFO: loaded from: classes40.dex */
public class Oscillator {
    public static final int BOUNCE = 6;
    public static final int COS_WAVE = 5;
    public static final int CUSTOM = 7;
    public static final int REVERSE_SAW_WAVE = 4;
    public static final int SAW_WAVE = 3;
    public static final int SIN_WAVE = 0;
    public static final int SQUARE_WAVE = 1;
    public static String TAG = NPStringFog.decode(new byte[]{121, 66, 85, 12, 9, 85, 87, 69, 89, 23}, "616ee9", true);
    public static final int TRIANGLE_WAVE = 2;
    double[] mArea;
    MonotonicCurveFit mCustomCurve;
    String mCustomType;
    int mType;
    float[] mPeriod = new float[0];
    double[] mPosition = new double[0];
    double PI2 = 6.283185307179586d;
    private boolean mNormalized = false;

    public void addPoint(double d, float f) {
        int length = this.mPeriod.length + 1;
        int iBinarySearch = Arrays.binarySearch(this.mPosition, d);
        if (iBinarySearch < 0) {
            iBinarySearch = (-iBinarySearch) - 1;
        }
        this.mPosition = Arrays.copyOf(this.mPosition, length);
        this.mPeriod = Arrays.copyOf(this.mPeriod, length);
        this.mArea = new double[length];
        double[] dArr = this.mPosition;
        System.arraycopy(dArr, iBinarySearch, dArr, iBinarySearch + 1, (length - iBinarySearch) - 1);
        this.mPosition[iBinarySearch] = d;
        this.mPeriod[iBinarySearch] = f;
        this.mNormalized = false;
    }

    double getDP(double d) {
        if (d <= 0.0d) {
            d = 1.0E-5d;
        } else if (d >= 1.0d) {
            d = 0.999999d;
        }
        int iBinarySearch = Arrays.binarySearch(this.mPosition, d);
        if (iBinarySearch > 0 || iBinarySearch == 0) {
            return 0.0d;
        }
        int i = (-iBinarySearch) - 1;
        float[] fArr = this.mPeriod;
        double d2 = fArr[i] - fArr[i - 1];
        double[] dArr = this.mPosition;
        double d3 = dArr[i];
        double d4 = dArr[i - 1];
        Double.isNaN(d2);
        double d5 = d2 / (d3 - d4);
        double d6 = fArr[i - 1];
        double d7 = dArr[i - 1];
        Double.isNaN(d6);
        return (d6 - (d7 * d5)) + (d5 * d);
    }

    double getP(double d) {
        if (d < 0.0d) {
            d = 0.0d;
        } else if (d > 1.0d) {
            d = 1.0d;
        }
        int iBinarySearch = Arrays.binarySearch(this.mPosition, d);
        if (iBinarySearch > 0) {
            return 1.0d;
        }
        if (iBinarySearch == 0) {
            return 0.0d;
        }
        int i = (-iBinarySearch) - 1;
        float[] fArr = this.mPeriod;
        double d2 = fArr[i] - fArr[i - 1];
        double[] dArr = this.mPosition;
        double d3 = dArr[i];
        double d4 = dArr[i - 1];
        Double.isNaN(d2);
        double d5 = d2 / (d3 - d4);
        double d6 = this.mArea[i - 1];
        double d7 = fArr[i - 1];
        double d8 = dArr[i - 1];
        Double.isNaN(d7);
        return d6 + ((d7 - (d8 * d5)) * (d - dArr[i - 1])) + ((((d * d) - (dArr[i - 1] * dArr[i - 1])) * d5) / 2.0d);
    }

    public double getSlope(double d, double d2, double d3) {
        double p = getP(d) + d2;
        double dp = getDP(d) + d3;
        switch (this.mType) {
            case 1:
                return 0.0d;
            case 2:
                return Math.signum((((p * 4.0d) + 3.0d) % 4.0d) - 2.0d) * dp * 4.0d;
            case 3:
                return 2.0d * dp;
            case 4:
                return (-dp) * 2.0d;
            case 5:
                double d4 = this.PI2;
                return Math.sin(p * d4) * dp * (-d4);
            case 6:
                return ((((p * 4.0d) + 2.0d) % 4.0d) - 2.0d) * dp * 4.0d;
            case 7:
                return this.mCustomCurve.getSlope(p % 1.0d, 0);
            default:
                double d5 = this.PI2;
                return Math.cos(p * d5) * dp * d5;
        }
    }

    public double getValue(double d, double d2) {
        double p = getP(d) + d2;
        switch (this.mType) {
            case 1:
                return Math.signum(0.5d - (p % 1.0d));
            case 2:
                return 1.0d - Math.abs((((p * 4.0d) + 1.0d) % 4.0d) - 2.0d);
            case 3:
                return (((p * 2.0d) + 1.0d) % 2.0d) - 1.0d;
            case 4:
                return 1.0d - (((p * 2.0d) + 1.0d) % 2.0d);
            case 5:
                return Math.cos((p + d2) * this.PI2);
            case 6:
                double dAbs = 1.0d - Math.abs(((p * 4.0d) % 4.0d) - 2.0d);
                return 1.0d - (dAbs * dAbs);
            case 7:
                return this.mCustomCurve.getPos(p % 1.0d, 0);
            default:
                return Math.sin(p * this.PI2);
        }
    }

    public void normalize() {
        double d = 0.0d;
        double d2 = 0.0d;
        int i = 0;
        while (true) {
            float[] fArr = this.mPeriod;
            if (i >= fArr.length) {
                break;
            }
            double d3 = fArr[i];
            Double.isNaN(d3);
            d2 += d3;
            i++;
        }
        int i2 = 1;
        while (true) {
            float[] fArr2 = this.mPeriod;
            if (i2 >= fArr2.length) {
                break;
            }
            float f = (fArr2[i2] + fArr2[i2 - 1]) / 2.0f;
            double[] dArr = this.mPosition;
            double d4 = dArr[i2];
            double d5 = dArr[i2 - 1];
            double d6 = f;
            Double.isNaN(d6);
            d += (d4 - d5) * d6;
            i2++;
        }
        int i3 = 0;
        while (true) {
            float[] fArr3 = this.mPeriod;
            if (i3 >= fArr3.length) {
                break;
            }
            double d7 = fArr3[i3];
            Double.isNaN(d7);
            fArr3[i3] = (float) (d7 * (d2 / d));
            i3++;
        }
        this.mArea[0] = 0.0d;
        int i4 = 1;
        while (true) {
            float[] fArr4 = this.mPeriod;
            if (i4 >= fArr4.length) {
                this.mNormalized = true;
                return;
            }
            float f2 = (fArr4[i4] + fArr4[i4 - 1]) / 2.0f;
            double[] dArr2 = this.mPosition;
            double d8 = dArr2[i4];
            double d9 = dArr2[i4 - 1];
            double[] dArr3 = this.mArea;
            double d10 = dArr3[i4 - 1];
            double d11 = f2;
            Double.isNaN(d11);
            dArr3[i4] = ((d8 - d9) * d11) + d10;
            i4++;
        }
    }

    public void setType(int i, String str) {
        this.mType = i;
        this.mCustomType = str;
        if (str != null) {
            this.mCustomCurve = MonotonicCurveFit.buildWave(str);
        }
    }

    public String toString() {
        return NPStringFog.decode(new byte[]{64, 90, 65, 22, 10}, "052676", false) + Arrays.toString(this.mPosition) + NPStringFog.decode(new byte[]{66, 18, 86, 68, 94, 88, 6, 95}, "bb3677", false, false) + Arrays.toString(this.mPeriod);
    }
}
