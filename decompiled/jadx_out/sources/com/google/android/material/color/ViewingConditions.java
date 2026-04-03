package com.google.android.material.color;

/* JADX INFO: loaded from: classes37.dex */
final class ViewingConditions {
    public static final ViewingConditions DEFAULT;
    private final float aw;
    private final float c;
    private final float fl;
    private final float flRoot;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final float f2n;
    private final float nbb;
    private final float nc;
    private final float ncb;
    private final float[] rgbD;
    private final float z;

    static {
        float[] fArrWhitePointD65 = ColorUtils.whitePointD65();
        double dYFromLstar = ColorUtils.yFromLstar(50.0f);
        Double.isNaN(dYFromLstar);
        DEFAULT = make(fArrWhitePointD65, (float) ((dYFromLstar * 63.66197723675813d) / 100.0d), 50.0f, 2.0f, false);
    }

    private ViewingConditions(float f, float f2, float f3, float f4, float f5, float f6, float[] fArr, float f7, float f8, float f9) {
        this.f2n = f;
        this.aw = f2;
        this.nbb = f3;
        this.ncb = f4;
        this.c = f5;
        this.nc = f6;
        this.rgbD = fArr;
        this.fl = f7;
        this.flRoot = f8;
        this.z = f9;
    }

    static ViewingConditions make(float[] fArr, float f, float f2, float f3, boolean z) {
        float[][] fArr2 = Cam16.XYZ_TO_CAM16RGB;
        float f4 = (fArr[2] * fArr2[0][2]) + (fArr[0] * fArr2[0][0]) + (fArr[1] * fArr2[0][1]);
        float f5 = (fArr[0] * fArr2[1][0]) + (fArr[1] * fArr2[1][1]) + (fArr[2] * fArr2[1][2]);
        float f6 = (fArr[0] * fArr2[2][0]) + (fArr[1] * fArr2[2][1]) + (fArr2[2][2] * fArr[2]);
        float f7 = (f3 / 10.0f) + 0.8f;
        float fLerp = ((double) f7) >= 0.9d ? MathUtils.lerp(0.59f, 0.69f, (f7 - 0.9f) * 10.0f) : MathUtils.lerp(0.525f, 0.59f, (f7 - 0.8f) * 10.0f);
        float fExp = z ? 1.0f : (1.0f - (((float) Math.exp(((-f) - 42.0f) / 92.0f)) * 0.2777778f)) * f7;
        if (fExp > 1.0d) {
            fExp = 1.0f;
        } else if (fExp < 0.0d) {
            fExp = 0.0f;
        }
        float[] fArr3 = {(((100.0f / f4) * fExp) + 1.0f) - fExp, (((100.0f / f5) * fExp) + 1.0f) - fExp, (((100.0f / f6) * fExp) + 1.0f) - fExp};
        float f8 = 1.0f / ((5.0f * f) + 1.0f);
        float f9 = f8 * f8 * f8 * f8;
        float f10 = 1.0f - f9;
        double d = f;
        Double.isNaN(d);
        float fCbrt = (f9 * f) + (f10 * 0.1f * f10 * ((float) Math.cbrt(d * 5.0d)));
        float fYFromLstar = ColorUtils.yFromLstar(f2) / fArr[1];
        float fSqrt = (float) Math.sqrt(fYFromLstar);
        float fPow = 0.725f / ((float) Math.pow(fYFromLstar, 0.2d));
        double d2 = f4 * fArr3[0] * fCbrt;
        Double.isNaN(d2);
        double d3 = fArr3[1] * fCbrt * f5;
        Double.isNaN(d3);
        double d4 = fArr3[2] * fCbrt * f6;
        Double.isNaN(d4);
        float[] fArr4 = {(float) Math.pow(d2 / 100.0d, 0.42d), (float) Math.pow(d3 / 100.0d, 0.42d), (float) Math.pow(d4 / 100.0d, 0.42d)};
        float[] fArr5 = {(fArr4[0] * 400.0f) / (fArr4[0] + 27.13f), (fArr4[1] * 400.0f) / (fArr4[1] + 27.13f), (fArr4[2] * 400.0f) / (fArr4[2] + 27.13f)};
        return new ViewingConditions(fYFromLstar, ((fArr5[2] * 0.05f) + (fArr5[0] * 2.0f) + fArr5[1]) * fPow, fPow, fPow, fLerp, f7, fArr3, fCbrt, (float) Math.pow(fCbrt, 0.25d), fSqrt + 1.48f);
    }

    public float getAw() {
        return this.aw;
    }

    float getC() {
        return this.c;
    }

    float getFl() {
        return this.fl;
    }

    public float getFlRoot() {
        return this.flRoot;
    }

    public float getN() {
        return this.f2n;
    }

    public float getNbb() {
        return this.nbb;
    }

    float getNc() {
        return this.nc;
    }

    float getNcb() {
        return this.ncb;
    }

    public float[] getRgbD() {
        return this.rgbD;
    }

    float getZ() {
        return this.z;
    }
}
