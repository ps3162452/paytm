package com.google.android.material.color;

/* JADX INFO: loaded from: classes37.dex */
final class Cam16 {
    private final float astar;
    private final float bstar;
    private final float chroma;
    private final float hue;
    private final float j;
    private final float jstar;
    private final float m;
    private final float q;
    private final float s;
    static final float[][] XYZ_TO_CAM16RGB = {new float[]{0.401288f, 0.650173f, -0.051461f}, new float[]{-0.250268f, 1.204414f, 0.045854f}, new float[]{-0.002079f, 0.048952f, 0.953127f}};
    static final float[][] CAM16RGB_TO_XYZ = {new float[]{1.8620678f, -1.0112547f, 0.14918678f}, new float[]{0.38752654f, 0.62144744f, -0.00897398f}, new float[]{-0.0158415f, -0.03412294f, 1.0499644f}};

    private Cam16(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9) {
        this.hue = f;
        this.chroma = f2;
        this.j = f3;
        this.q = f4;
        this.m = f5;
        this.s = f6;
        this.jstar = f7;
        this.astar = f8;
        this.bstar = f9;
    }

    public static Cam16 fromInt(int i) {
        return fromIntInViewingConditions(i, ViewingConditions.DEFAULT);
    }

    static Cam16 fromIntInViewingConditions(int i, ViewingConditions viewingConditions) {
        float fLinearized = ColorUtils.linearized(((16711680 & i) >> 16) / 255.0f) * 100.0f;
        float fLinearized2 = ColorUtils.linearized(((65280 & i) >> 8) / 255.0f) * 100.0f;
        float fLinearized3 = ColorUtils.linearized((i & 255) / 255.0f) * 100.0f;
        float f = (0.41233894f * fLinearized) + (0.35762063f * fLinearized2) + (0.18051042f * fLinearized3);
        float f2 = (0.2126f * fLinearized) + (0.7152f * fLinearized2) + (0.0722f * fLinearized3);
        float f3 = (fLinearized * 0.01932141f) + (fLinearized2 * 0.11916382f) + (0.9503448f * fLinearized3);
        float[][] fArr = XYZ_TO_CAM16RGB;
        float f4 = fArr[0][0];
        float f5 = fArr[0][1];
        float f6 = fArr[0][2];
        float f7 = fArr[1][0];
        float f8 = fArr[1][1];
        float f9 = fArr[1][2];
        float f10 = fArr[2][0];
        float f11 = fArr[2][1];
        float f12 = fArr[2][2];
        float f13 = ((f4 * f) + (f5 * f2) + (f6 * f3)) * viewingConditions.getRgbD()[0];
        float f14 = viewingConditions.getRgbD()[1] * ((f7 * f) + (f8 * f2) + (f9 * f3));
        float f15 = ((f3 * f12) + (f * f10) + (f2 * f11)) * viewingConditions.getRgbD()[2];
        double fl = viewingConditions.getFl() * Math.abs(f13);
        Double.isNaN(fl);
        float fPow = (float) Math.pow(fl / 100.0d, 0.42d);
        double fl2 = viewingConditions.getFl() * Math.abs(f14);
        Double.isNaN(fl2);
        float fPow2 = (float) Math.pow(fl2 / 100.0d, 0.42d);
        double fl3 = viewingConditions.getFl() * Math.abs(f15);
        Double.isNaN(fl3);
        float fPow3 = (float) Math.pow(fl3 / 100.0d, 0.42d);
        float fSignum = ((Math.signum(f13) * 400.0f) * fPow) / (fPow + 27.13f);
        float fSignum2 = ((Math.signum(f14) * 400.0f) * fPow2) / (fPow2 + 27.13f);
        float fSignum3 = ((Math.signum(f15) * 400.0f) * fPow3) / (27.13f + fPow3);
        double d = fSignum;
        Double.isNaN(d);
        double d2 = fSignum2;
        Double.isNaN(d2);
        double d3 = fSignum3;
        Double.isNaN(d3);
        float f16 = ((float) (((d * 11.0d) + (d2 * (-12.0d))) + d3)) / 11.0f;
        double d4 = fSignum + fSignum2;
        double d5 = fSignum3;
        Double.isNaN(d5);
        Double.isNaN(d4);
        float f17 = ((float) (d4 - (d5 * 2.0d))) / 9.0f;
        float f18 = (((20.0f * fSignum) + (20.0f * fSignum2)) + (21.0f * fSignum3)) / 20.0f;
        float f19 = (fSignum3 + ((fSignum * 40.0f) + (fSignum2 * 20.0f))) / 20.0f;
        float fAtan2 = (((float) Math.atan2(f17, f16)) * 180.0f) / 3.1415927f;
        if (fAtan2 < 0.0f) {
            fAtan2 += 360.0f;
        } else if (fAtan2 >= 360.0f) {
            fAtan2 -= 360.0f;
        }
        float f20 = (3.1415927f * fAtan2) / 180.0f;
        float fPow4 = ((float) Math.pow((f19 * viewingConditions.getNbb()) / viewingConditions.getAw(), viewingConditions.getC() * viewingConditions.getZ())) * 100.0f;
        float c = 4.0f / viewingConditions.getC();
        float fSqrt = (float) Math.sqrt(fPow4 / 100.0f);
        float aw = viewingConditions.getAw();
        float flRoot = viewingConditions.getFlRoot();
        float fCos = (float) (Math.cos(Math.toRadians(((double) fAtan2) < 20.14d ? 360.0f + fAtan2 : fAtan2) + 2.0d) + 3.8d);
        float fPow5 = ((float) Math.pow((((((fCos * 0.25f) * 3846.1538f) * viewingConditions.getNc()) * viewingConditions.getNcb()) * ((float) Math.hypot(f16, f17))) / (0.305f + f18), 0.9d)) * ((float) Math.pow(1.64d - Math.pow(0.29d, viewingConditions.getN()), 0.73d));
        double d6 = fPow4;
        Double.isNaN(d6);
        float fSqrt2 = ((float) Math.sqrt(d6 / 100.0d)) * fPow5;
        float flRoot2 = viewingConditions.getFlRoot() * fSqrt2;
        float fSqrt3 = (float) Math.sqrt((fPow5 * viewingConditions.getC()) / (viewingConditions.getAw() + 4.0f));
        float f21 = (1.7f * fPow4) / ((0.007f * fPow4) + 1.0f);
        float fLog1p = ((float) Math.log1p(0.0228f * flRoot2)) * 43.85965f;
        return new Cam16(fAtan2, fSqrt2, fPow4, c * fSqrt * (4.0f + aw) * flRoot, flRoot2, fSqrt3 * 50.0f, f21, ((float) Math.cos(f20)) * fLog1p, ((float) Math.sin(f20)) * fLog1p);
    }

    static Cam16 fromJch(float f, float f2, float f3) {
        return fromJchInViewingConditions(f, f2, f3, ViewingConditions.DEFAULT);
    }

    private static Cam16 fromJchInViewingConditions(float f, float f2, float f3, ViewingConditions viewingConditions) {
        float c = 4.0f / viewingConditions.getC();
        double d = f;
        Double.isNaN(d);
        float fSqrt = (float) Math.sqrt(d / 100.0d);
        float aw = viewingConditions.getAw();
        float flRoot = viewingConditions.getFlRoot();
        float flRoot2 = f2 * viewingConditions.getFlRoot();
        Double.isNaN(f);
        float fSqrt2 = (float) Math.sqrt(((f2 / ((float) Math.sqrt(r6 / 100.0d))) * viewingConditions.getC()) / (viewingConditions.getAw() + 4.0f));
        float f4 = (3.1415927f * f3) / 180.0f;
        float f5 = (1.7f * f) / ((0.007f * f) + 1.0f);
        double d2 = flRoot2;
        Double.isNaN(d2);
        float fLog1p = ((float) Math.log1p(d2 * 0.0228d)) * 43.85965f;
        return new Cam16(f3, f2, f, flRoot * c * fSqrt * (4.0f + aw), flRoot2, fSqrt2 * 50.0f, f5, fLog1p * ((float) Math.cos(f4)), fLog1p * ((float) Math.sin(f4)));
    }

    public static Cam16 fromUcs(float f, float f2, float f3) {
        return fromUcsInViewingConditions(f, f2, f3, ViewingConditions.DEFAULT);
    }

    public static Cam16 fromUcsInViewingConditions(float f, float f2, float f3, ViewingConditions viewingConditions) {
        double dExpm1 = Math.expm1(Math.hypot(f2, f3) * 0.02280000038444996d) / 0.02280000038444996d;
        double flRoot = viewingConditions.getFlRoot();
        Double.isNaN(flRoot);
        double d = dExpm1 / flRoot;
        double dAtan2 = Math.atan2(f3, f2) * 57.29577951308232d;
        if (dAtan2 < 0.0d) {
            dAtan2 += 360.0d;
        }
        return fromJchInViewingConditions(f / (1.0f - ((f - 100.0f) * 0.007f)), (float) d, (float) dAtan2, viewingConditions);
    }

    float distance(Cam16 cam16) {
        float jStar = getJStar() - cam16.getJStar();
        float aStar = getAStar() - cam16.getAStar();
        float bStar = getBStar() - cam16.getBStar();
        return (float) (Math.pow(Math.sqrt((jStar * jStar) + (aStar * aStar) + (bStar * bStar)), 0.63d) * 1.41d);
    }

    public float getAStar() {
        return this.astar;
    }

    public float getBStar() {
        return this.bstar;
    }

    public float getChroma() {
        return this.chroma;
    }

    public float getHue() {
        return this.hue;
    }

    public int getInt() {
        return viewed(ViewingConditions.DEFAULT);
    }

    public float getJ() {
        return this.j;
    }

    public float getJStar() {
        return this.jstar;
    }

    public float getM() {
        return this.m;
    }

    public float getQ() {
        return this.q;
    }

    public float getS() {
        return this.s;
    }

    int viewed(ViewingConditions viewingConditions) {
        float fSqrt;
        if (getChroma() == 0.0d || getJ() == 0.0d) {
            fSqrt = 0.0f;
        } else {
            float chroma = getChroma();
            double j = getJ();
            Double.isNaN(j);
            fSqrt = chroma / ((float) Math.sqrt(j / 100.0d));
        }
        double d = fSqrt;
        double dPow = Math.pow(1.64d - Math.pow(0.29d, viewingConditions.getN()), 0.73d);
        Double.isNaN(d);
        float fPow = (float) Math.pow(d / dPow, 1.1111111111111112d);
        float hue = (getHue() * 3.1415927f) / 180.0f;
        double d2 = hue;
        Double.isNaN(d2);
        float fCos = (float) (Math.cos(d2 + 2.0d) + 3.8d);
        float aw = viewingConditions.getAw();
        double j2 = getJ();
        Double.isNaN(j2);
        double c = viewingConditions.getC();
        Double.isNaN(c);
        double z = viewingConditions.getZ();
        Double.isNaN(z);
        float fPow2 = (float) Math.pow(j2 / 100.0d, (1.0d / c) / z);
        float nc = viewingConditions.getNc();
        float ncb = viewingConditions.getNcb();
        float nbb = (aw * fPow2) / viewingConditions.getNbb();
        float fSin = (float) Math.sin(hue);
        float fCos2 = (float) Math.cos(hue);
        float f = (((0.305f + nbb) * 23.0f) * fPow) / (((fPow * 108.0f) * fSin) + ((((((fCos * 0.25f) * 3846.1538f) * nc) * ncb) * 23.0f) + ((11.0f * fPow) * fCos2)));
        float f2 = fCos2 * f;
        float f3 = f * fSin;
        float f4 = (((460.0f * nbb) + (451.0f * f2)) + (288.0f * f3)) / 1403.0f;
        float f5 = (((460.0f * nbb) - (891.0f * f2)) - (261.0f * f3)) / 1403.0f;
        float f6 = (((nbb * 460.0f) - (f2 * 220.0f)) - (f3 * 6300.0f)) / 1403.0f;
        double dAbs = Math.abs(f4);
        Double.isNaN(dAbs);
        double dAbs2 = Math.abs(f4);
        Double.isNaN(dAbs2);
        float fMax = (float) Math.max(0.0d, (dAbs * 27.13d) / (400.0d - dAbs2));
        float fSignum = Math.signum(f4);
        float fl = 100.0f / viewingConditions.getFl();
        float fPow3 = (float) Math.pow(fMax, 2.380952380952381d);
        double dAbs3 = Math.abs(f5);
        Double.isNaN(dAbs3);
        double dAbs4 = Math.abs(f5);
        Double.isNaN(dAbs4);
        float fMax2 = (float) Math.max(0.0d, (dAbs3 * 27.13d) / (400.0d - dAbs4));
        float fSignum2 = Math.signum(f5);
        float fl2 = 100.0f / viewingConditions.getFl();
        float fPow4 = (float) Math.pow(fMax2, 2.380952380952381d);
        double dAbs5 = Math.abs(f6);
        Double.isNaN(dAbs5);
        double dAbs6 = Math.abs(f6);
        Double.isNaN(dAbs6);
        float fMax3 = (float) Math.max(0.0d, (dAbs5 * 27.13d) / (400.0d - dAbs6));
        float fSignum3 = Math.signum(f6);
        float fl3 = 100.0f / viewingConditions.getFl();
        float fPow5 = (float) Math.pow(fMax3, 2.380952380952381d);
        float f7 = (fPow3 * (fSignum * fl)) / viewingConditions.getRgbD()[0];
        float f8 = ((fSignum2 * fl2) * fPow4) / viewingConditions.getRgbD()[1];
        float f9 = ((fSignum3 * fl3) * fPow5) / viewingConditions.getRgbD()[2];
        float[][] fArr = CAM16RGB_TO_XYZ;
        return ColorUtils.intFromXyzComponents((fArr[0][0] * f7) + (fArr[0][1] * f8) + (fArr[0][2] * f9), (fArr[1][0] * f7) + (fArr[1][1] * f8) + (fArr[1][2] * f9), (f9 * fArr[2][2]) + (f7 * fArr[2][0]) + (f8 * fArr[2][1]));
    }
}
