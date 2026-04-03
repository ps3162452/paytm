package androidx.core.content.res;

import androidx.core.graphics.ColorUtils;

/* JADX INFO: loaded from: classes6.dex */
class CamColor {
    private static final float CHROMA_SEARCH_ENDPOINT = 0.4f;
    private static final float DE_MAX = 1.0f;
    private static final float DL_MAX = 0.2f;
    private static final float LIGHTNESS_SEARCH_ENDPOINT = 0.01f;
    private final float mAstar;
    private final float mBstar;
    private final float mChroma;
    private final float mHue;
    private final float mJ;
    private final float mJstar;
    private final float mM;
    private final float mQ;
    private final float mS;

    CamColor(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9) {
        this.mHue = f;
        this.mChroma = f2;
        this.mJ = f3;
        this.mQ = f4;
        this.mM = f5;
        this.mS = f6;
        this.mJstar = f7;
        this.mAstar = f8;
        this.mBstar = f9;
    }

    private static CamColor findCamByJ(float f, float f2, float f3) {
        float f4 = 1000.0f;
        CamColor camColor = null;
        float f5 = 100.0f;
        float f6 = 0.0f;
        float f7 = 1000.0f;
        while (Math.abs(f6 - f5) > LIGHTNESS_SEARCH_ENDPOINT) {
            float f8 = ((f5 - f6) / 2.0f) + f6;
            int iViewedInSrgb = fromJch(f8, f2, f).viewedInSrgb();
            float fLStarFromInt = CamUtils.lStarFromInt(iViewedInSrgb);
            float fAbs = Math.abs(f3 - fLStarFromInt);
            if (fAbs < 0.2f) {
                CamColor camColorFromColor = fromColor(iViewedInSrgb);
                float fDistance = camColorFromColor.distance(fromJch(camColorFromColor.getJ(), camColorFromColor.getChroma(), f));
                if (fDistance <= 1.0f) {
                    f4 = fDistance;
                    f7 = fAbs;
                    camColor = camColorFromColor;
                }
            }
            if (f7 == 0.0f && f4 == 0.0f) {
                break;
            }
            if (fLStarFromInt < f3) {
                f6 = f8;
            } else {
                f5 = f8;
            }
        }
        return camColor;
    }

    static CamColor fromColor(int i) {
        return fromColorInViewingConditions(i, ViewingConditions.DEFAULT);
    }

    static CamColor fromColorInViewingConditions(int i, ViewingConditions viewingConditions) {
        float[] fArrXyzFromInt = CamUtils.xyzFromInt(i);
        float[][] fArr = CamUtils.XYZ_TO_CAM16RGB;
        float f = fArrXyzFromInt[0];
        float f2 = fArr[0][0];
        float f3 = fArrXyzFromInt[1];
        float f4 = fArr[0][1];
        float f5 = fArrXyzFromInt[2];
        float f6 = fArr[0][2];
        float f7 = fArrXyzFromInt[0];
        float f8 = fArr[1][0];
        float f9 = fArrXyzFromInt[1];
        float f10 = fArr[1][1];
        float f11 = fArrXyzFromInt[2];
        float f12 = fArr[1][2];
        float f13 = fArrXyzFromInt[0];
        float f14 = fArr[2][0];
        float f15 = fArrXyzFromInt[1];
        float f16 = fArr[2][1];
        float f17 = fArrXyzFromInt[2];
        float f18 = fArr[2][2];
        float f19 = ((f * f2) + (f3 * f4) + (f5 * f6)) * viewingConditions.getRgbD()[0];
        float f20 = viewingConditions.getRgbD()[1] * ((f7 * f8) + (f9 * f10) + (f11 * f12));
        float f21 = ((f17 * f18) + (f13 * f14) + (f15 * f16)) * viewingConditions.getRgbD()[2];
        double fl = viewingConditions.getFl() * Math.abs(f19);
        Double.isNaN(fl);
        float fPow = (float) Math.pow(fl / 100.0d, 0.42d);
        double fl2 = viewingConditions.getFl() * Math.abs(f20);
        Double.isNaN(fl2);
        float fPow2 = (float) Math.pow(fl2 / 100.0d, 0.42d);
        double fl3 = viewingConditions.getFl() * Math.abs(f21);
        Double.isNaN(fl3);
        float fPow3 = (float) Math.pow(fl3 / 100.0d, 0.42d);
        float fSignum = ((Math.signum(f19) * 400.0f) * fPow) / (fPow + 27.13f);
        float fSignum2 = ((Math.signum(f20) * 400.0f) * fPow2) / (27.13f + fPow2);
        float fSignum3 = ((Math.signum(f21) * 400.0f) * fPow3) / (27.13f + fPow3);
        double d = fSignum;
        Double.isNaN(d);
        double d2 = fSignum2;
        Double.isNaN(d2);
        double d3 = fSignum3;
        Double.isNaN(d3);
        float f22 = ((float) (((d * 11.0d) + (d2 * (-12.0d))) + d3)) / 11.0f;
        double d4 = fSignum + fSignum2;
        double d5 = fSignum3;
        Double.isNaN(d5);
        Double.isNaN(d4);
        float f23 = ((float) (d4 - (d5 * 2.0d))) / 9.0f;
        float f24 = (((20.0f * fSignum) + (20.0f * fSignum2)) + (21.0f * fSignum3)) / 20.0f;
        float f25 = (fSignum3 + ((fSignum * 40.0f) + (fSignum2 * 20.0f))) / 20.0f;
        float fAtan2 = (((float) Math.atan2(f23, f22)) * 180.0f) / 3.1415927f;
        if (fAtan2 < 0.0f) {
            fAtan2 += 360.0f;
        } else if (fAtan2 >= 360.0f) {
            fAtan2 -= 360.0f;
        }
        float f26 = (3.1415927f * fAtan2) / 180.0f;
        float fPow4 = ((float) Math.pow((f25 * viewingConditions.getNbb()) / viewingConditions.getAw(), viewingConditions.getC() * viewingConditions.getZ())) * 100.0f;
        float c = 4.0f / viewingConditions.getC();
        float fSqrt = (float) Math.sqrt(fPow4 / 100.0f);
        float aw = viewingConditions.getAw();
        float flRoot = viewingConditions.getFlRoot();
        double d6 = ((double) fAtan2) < 20.14d ? 360.0f + fAtan2 : fAtan2;
        Double.isNaN(d6);
        float fCos = (float) (Math.cos(((d6 * 3.141592653589793d) / 180.0d) + 2.0d) + 3.8d);
        float fPow5 = ((float) Math.pow((((((fCos * 0.25f) * 3846.1538f) * viewingConditions.getNc()) * viewingConditions.getNcb()) * ((float) Math.sqrt((f22 * f22) + (f23 * f23)))) / (0.305f + f24), 0.9d)) * ((float) Math.pow(1.64d - Math.pow(0.29d, viewingConditions.getN()), 0.73d));
        double d7 = fPow4;
        Double.isNaN(d7);
        float fSqrt2 = ((float) Math.sqrt(d7 / 100.0d)) * fPow5;
        float flRoot2 = viewingConditions.getFlRoot() * fSqrt2;
        float fSqrt3 = (float) Math.sqrt((fPow5 * viewingConditions.getC()) / (viewingConditions.getAw() + 4.0f));
        float f27 = (1.7f * fPow4) / ((0.007f * fPow4) + 1.0f);
        float fLog = ((float) Math.log((0.0228f * flRoot2) + 1.0f)) * 43.85965f;
        return new CamColor(fAtan2, fSqrt2, fPow4, c * fSqrt * (4.0f + aw) * flRoot, flRoot2, fSqrt3 * 50.0f, f27, ((float) Math.cos(f26)) * fLog, ((float) Math.sin(f26)) * fLog);
    }

    private static CamColor fromJch(float f, float f2, float f3) {
        return fromJchInFrame(f, f2, f3, ViewingConditions.DEFAULT);
    }

    private static CamColor fromJchInFrame(float f, float f2, float f3, ViewingConditions viewingConditions) {
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
        float fLog = ((float) Math.log((d2 * 0.0228d) + 1.0d)) * 43.85965f;
        return new CamColor(f3, f2, f, flRoot * c * fSqrt * (4.0f + aw), flRoot2, fSqrt2 * 50.0f, f5, fLog * ((float) Math.cos(f4)), fLog * ((float) Math.sin(f4)));
    }

    static int toColor(float f, float f2, float f3) {
        return toColor(f, f2, f3, ViewingConditions.DEFAULT);
    }

    static int toColor(float f, float f2, float f3, ViewingConditions viewingConditions) {
        float f4;
        if (f2 < 1.0d || Math.round(f3) <= 0.0d || Math.round(f3) >= 100.0d) {
            return CamUtils.intFromLStar(f3);
        }
        float fMin = f < 0.0f ? 0.0f : Math.min(360.0f, f);
        boolean z = true;
        float f5 = f2;
        float f6 = 0.0f;
        CamColor camColor = null;
        float f7 = f2;
        while (Math.abs(f6 - f5) >= CHROMA_SEARCH_ENDPOINT) {
            CamColor camColorFindCamByJ = findCamByJ(fMin, f7, f3);
            if (!z) {
                if (camColorFindCamByJ == null) {
                    f4 = f7;
                    f7 = f6;
                } else {
                    camColor = camColorFindCamByJ;
                    f4 = f5;
                }
                f5 = f4;
                f6 = f7;
                f7 += (f4 - f7) / 2.0f;
            } else {
                if (camColorFindCamByJ != null) {
                    return camColorFindCamByJ.viewed(viewingConditions);
                }
                f7 = ((f5 - f6) / 2.0f) + f6;
                z = false;
            }
        }
        return camColor == null ? CamUtils.intFromLStar(f3) : camColor.viewed(viewingConditions);
    }

    float distance(CamColor camColor) {
        float jStar = getJStar() - camColor.getJStar();
        float aStar = getAStar() - camColor.getAStar();
        float bStar = getBStar() - camColor.getBStar();
        return (float) (Math.pow(Math.sqrt((jStar * jStar) + (aStar * aStar) + (bStar * bStar)), 0.63d) * 1.41d);
    }

    float getAStar() {
        return this.mAstar;
    }

    float getBStar() {
        return this.mBstar;
    }

    float getChroma() {
        return this.mChroma;
    }

    float getHue() {
        return this.mHue;
    }

    float getJ() {
        return this.mJ;
    }

    float getJStar() {
        return this.mJstar;
    }

    float getM() {
        return this.mM;
    }

    float getQ() {
        return this.mQ;
    }

    float getS() {
        return this.mS;
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
        float[][] fArr = CamUtils.CAM16RGB_TO_XYZ;
        float f10 = fArr[0][0];
        float f11 = fArr[0][1];
        float f12 = fArr[0][2];
        float f13 = fArr[1][0];
        float f14 = fArr[1][1];
        float f15 = fArr[1][2];
        float f16 = fArr[2][0];
        float f17 = fArr[2][1];
        float f18 = fArr[2][2];
        return ColorUtils.XYZToColor((f10 * f7) + (f11 * f8) + (f12 * f9), (f13 * f7) + (f14 * f8) + (f15 * f9), (f8 * f17) + (f16 * f7) + (f9 * f18));
    }

    int viewedInSrgb() {
        return viewed(ViewingConditions.DEFAULT);
    }
}
