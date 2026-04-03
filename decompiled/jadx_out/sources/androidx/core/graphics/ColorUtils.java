package androidx.core.graphics;

import android.graphics.Color;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
public final class ColorUtils {
    private static final int MIN_ALPHA_SEARCH_MAX_ITERATIONS = 10;
    private static final int MIN_ALPHA_SEARCH_PRECISION = 1;
    private static final ThreadLocal<double[]> TEMP_ARRAY = new ThreadLocal<>();
    private static final double XYZ_EPSILON = 0.008856d;
    private static final double XYZ_KAPPA = 903.3d;
    private static final double XYZ_WHITE_REFERENCE_X = 95.047d;
    private static final double XYZ_WHITE_REFERENCE_Y = 100.0d;
    private static final double XYZ_WHITE_REFERENCE_Z = 108.883d;

    private ColorUtils() {
    }

    public static int HSLToColor(float[] fArr) {
        int iRound;
        int iRound2;
        int iRound3;
        float f = fArr[0];
        float f2 = fArr[1];
        float f3 = fArr[2];
        float fAbs = (1.0f - Math.abs((f3 * 2.0f) - 1.0f)) * f2;
        float f4 = f3 - (0.5f * fAbs);
        float fAbs2 = (1.0f - Math.abs(((f / 60.0f) % 2.0f) - 1.0f)) * fAbs;
        switch (((int) f) / 60) {
            case 0:
                iRound = Math.round((fAbs + f4) * 255.0f);
                iRound2 = Math.round((fAbs2 + f4) * 255.0f);
                iRound3 = Math.round(255.0f * f4);
                break;
            case 1:
                iRound = Math.round((fAbs2 + f4) * 255.0f);
                iRound2 = Math.round((fAbs + f4) * 255.0f);
                iRound3 = Math.round(255.0f * f4);
                break;
            case 2:
                iRound = Math.round(f4 * 255.0f);
                iRound2 = Math.round((fAbs + f4) * 255.0f);
                iRound3 = Math.round((fAbs2 + f4) * 255.0f);
                break;
            case 3:
                iRound = Math.round(f4 * 255.0f);
                iRound2 = Math.round((fAbs2 + f4) * 255.0f);
                iRound3 = Math.round((fAbs + f4) * 255.0f);
                break;
            case 4:
                iRound = Math.round((fAbs2 + f4) * 255.0f);
                iRound2 = Math.round(f4 * 255.0f);
                iRound3 = Math.round((fAbs + f4) * 255.0f);
                break;
            case 5:
            case 6:
                iRound = Math.round((fAbs + f4) * 255.0f);
                iRound2 = Math.round(f4 * 255.0f);
                iRound3 = Math.round((fAbs2 + f4) * 255.0f);
                break;
            default:
                iRound3 = 0;
                iRound2 = 0;
                iRound = 0;
                break;
        }
        return Color.rgb(constrain(iRound, 0, 255), constrain(iRound2, 0, 255), constrain(iRound3, 0, 255));
    }

    public static int LABToColor(double d, double d2, double d3) {
        double[] tempDouble3Array = getTempDouble3Array();
        LABToXYZ(d, d2, d3, tempDouble3Array);
        return XYZToColor(tempDouble3Array[0], tempDouble3Array[1], tempDouble3Array[2]);
    }

    public static void LABToXYZ(double d, double d2, double d3, double[] dArr) {
        double d4 = (16.0d + d) / 116.0d;
        double d5 = (d2 / 500.0d) + d4;
        double d6 = d4 - (d3 / 200.0d);
        double dPow = Math.pow(d5, 3.0d);
        double d7 = dPow > XYZ_EPSILON ? dPow : ((116.0d * d5) - 16.0d) / XYZ_KAPPA;
        double dPow2 = d > 7.9996247999999985d ? Math.pow(d4, 3.0d) : d / XYZ_KAPPA;
        double dPow3 = Math.pow(d6, 3.0d);
        if (dPow3 <= XYZ_EPSILON) {
            dPow3 = ((116.0d * d6) - 16.0d) / XYZ_KAPPA;
        }
        dArr[0] = d7 * XYZ_WHITE_REFERENCE_X;
        dArr[1] = dPow2 * XYZ_WHITE_REFERENCE_Y;
        dArr[2] = dPow3 * XYZ_WHITE_REFERENCE_Z;
    }

    public static void RGBToHSL(int i, int i2, int i3, float[] fArr) {
        float f;
        float fAbs;
        float f2 = i / 255.0f;
        float f3 = i2 / 255.0f;
        float f4 = i3 / 255.0f;
        float fMax = Math.max(f2, Math.max(f3, f4));
        float fMin = Math.min(f2, Math.min(f3, f4));
        float f5 = fMax - fMin;
        float f6 = (fMax + fMin) / 2.0f;
        if (fMax == fMin) {
            f = 0.0f;
            fAbs = 0.0f;
        } else {
            f = fMax == f2 ? ((f3 - f4) / f5) % 6.0f : fMax == f3 ? ((f4 - f2) / f5) + 2.0f : ((f2 - f3) / f5) + 4.0f;
            fAbs = f5 / (1.0f - Math.abs((2.0f * f6) - 1.0f));
        }
        float f7 = (f * 60.0f) % 360.0f;
        if (f7 < 0.0f) {
            f7 += 360.0f;
        }
        fArr[0] = constrain(f7, 0.0f, 360.0f);
        fArr[1] = constrain(fAbs, 0.0f, 1.0f);
        fArr[2] = constrain(f6, 0.0f, 1.0f);
    }

    public static void RGBToLAB(int i, int i2, int i3, double[] dArr) {
        RGBToXYZ(i, i2, i3, dArr);
        XYZToLAB(dArr[0], dArr[1], dArr[2], dArr);
    }

    public static void RGBToXYZ(int i, int i2, int i3, double[] dArr) {
        if (dArr.length != 3) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{92, 70, 16, 96, 74, 30, 19, 94, 17, 75, 71, 68, 91, 82, 18, 93, 19, 5, 19, 95, 1, 86, 84, 16, 91, 19, 11, 94, 19, 87, 29}, "33d83d", 3.70650015E8d));
        }
        double d = i;
        Double.isNaN(d);
        double d2 = d / 255.0d;
        double dPow = d2 < 0.04045d ? d2 / 12.92d : Math.pow((d2 + 0.055d) / 1.055d, 2.4d);
        double d3 = i2;
        Double.isNaN(d3);
        double d4 = d3 / 255.0d;
        double dPow2 = d4 < 0.04045d ? d4 / 12.92d : Math.pow((d4 + 0.055d) / 1.055d, 2.4d);
        double d5 = i3;
        Double.isNaN(d5);
        double d6 = d5 / 255.0d;
        double dPow3 = d6 < 0.04045d ? d6 / 12.92d : Math.pow((d6 + 0.055d) / 1.055d, 2.4d);
        dArr[0] = ((0.4124d * dPow) + (0.3576d * dPow2) + (0.1805d * dPow3)) * XYZ_WHITE_REFERENCE_Y;
        dArr[1] = ((0.2126d * dPow) + (0.7152d * dPow2) + (0.0722d * dPow3)) * XYZ_WHITE_REFERENCE_Y;
        dArr[2] = ((dPow * 0.0193d) + (dPow2 * 0.1192d) + (0.9505d * dPow3)) * XYZ_WHITE_REFERENCE_Y;
    }

    public static int XYZToColor(double d, double d2, double d3) {
        double d4 = (((3.2406d * d) + ((-1.5372d) * d2)) + ((-0.4986d) * d3)) / XYZ_WHITE_REFERENCE_Y;
        double d5 = ((((-0.9689d) * d) + (1.8758d * d2)) + (0.0415d * d3)) / XYZ_WHITE_REFERENCE_Y;
        double d6 = (((0.0557d * d) + ((-0.204d) * d2)) + (1.057d * d3)) / XYZ_WHITE_REFERENCE_Y;
        return Color.rgb(constrain((int) Math.round((d4 > 0.0031308d ? (Math.pow(d4, 0.4166666666666667d) * 1.055d) - 0.055d : d4 * 12.92d) * 255.0d), 0, 255), constrain((int) Math.round((d5 > 0.0031308d ? (Math.pow(d5, 0.4166666666666667d) * 1.055d) - 0.055d : 12.92d * d5) * 255.0d), 0, 255), constrain((int) Math.round((d6 > 0.0031308d ? (Math.pow(d6, 0.4166666666666667d) * 1.055d) - 0.055d : 12.92d * d6) * 255.0d), 0, 255));
    }

    public static void XYZToLAB(double d, double d2, double d3, double[] dArr) {
        if (dArr.length != 3) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{88, 69, 69, 126, 81, 6, 23, 93, 68, 65, 68, 68, 95, 81, 71, 87, 16, 5, 23, 92, 84, 92, 87, 16, 95, 16, 94, 84, 16, 87, 25}, "70120d", -1.6292635E9f));
        }
        double dPivotXyzComponent = pivotXyzComponent(d / XYZ_WHITE_REFERENCE_X);
        double dPivotXyzComponent2 = pivotXyzComponent(d2 / XYZ_WHITE_REFERENCE_Y);
        double dPivotXyzComponent3 = pivotXyzComponent(d3 / XYZ_WHITE_REFERENCE_Z);
        dArr[0] = Math.max(0.0d, (116.0d * dPivotXyzComponent2) - 16.0d);
        dArr[1] = (dPivotXyzComponent - dPivotXyzComponent2) * 500.0d;
        dArr[2] = (dPivotXyzComponent2 - dPivotXyzComponent3) * 200.0d;
    }

    public static int blendARGB(int i, int i2, float f) {
        float f2 = 1.0f - f;
        return Color.argb((int) ((Color.alpha(i) * f2) + (Color.alpha(i2) * f)), (int) ((Color.red(i) * f2) + (Color.red(i2) * f)), (int) ((Color.green(i) * f2) + (Color.green(i2) * f)), (int) ((f2 * Color.blue(i)) + (Color.blue(i2) * f)));
    }

    public static void blendHSL(float[] fArr, float[] fArr2, float f, float[] fArr3) {
        if (fArr3.length != 3) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{16, 0, 69, 23, 8, 69, 66, 8, 67, 17, 16, 17, 10, 4, 64, 7, 68, 80, 66, 9, 83, 12, 3, 69, 10, 69, 89, 4, 68, 2, 76}, "be6bd1", -1.524337321E9d));
        }
        float f2 = 1.0f - f;
        fArr3[0] = circularInterpolate(fArr[0], fArr2[0], f);
        fArr3[1] = (fArr[1] * f2) + (fArr2[1] * f);
        fArr3[2] = (f2 * fArr[2]) + (fArr2[2] * f);
    }

    public static void blendLAB(double[] dArr, double[] dArr2, double d, double[] dArr3) {
        if (dArr3.length != 3) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{95, 19, 23, 103, 7, 65, 69, 10, 23, 21, 15, 71, 67, 18, 67, 93, 3, 68, 85, 70, 2, 21, 14, 87, 94, 1, 23, 93, 66, 93, 86, 70, 80, 27}, "0fc5b2", true, false));
        }
        double d2 = 1.0d - d;
        dArr3[0] = (dArr[0] * d2) + (dArr2[0] * d);
        dArr3[1] = (dArr[1] * d2) + (dArr2[1] * d);
        dArr3[2] = (d2 * dArr[2]) + (dArr2[2] * d);
    }

    public static double calculateContrast(int i, int i2) {
        if (Color.alpha(i2) != 255) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{4, 7, 87, 8, 95, 70, 9, 19, 90, 7, 24, 87, 7, 8, 20, 13, 87, 64, 70, 4, 81, 67, 76, 70, 7, 8, 71, 15, 77, 87, 3, 8, 64, 89, 24, 23}, "ff4c84", 9.2098324E7d) + Integer.toHexString(i2));
        }
        if (Color.alpha(i) < 255) {
            i = compositeColors(i, i2);
        }
        double dCalculateLuminance = calculateLuminance(i) + 0.05d;
        double dCalculateLuminance2 = calculateLuminance(i2) + 0.05d;
        return Math.max(dCalculateLuminance, dCalculateLuminance2) / Math.min(dCalculateLuminance, dCalculateLuminance2);
    }

    public static double calculateLuminance(int i) {
        double[] tempDouble3Array = getTempDouble3Array();
        colorToXYZ(i, tempDouble3Array);
        return tempDouble3Array[1] / XYZ_WHITE_REFERENCE_Y;
    }

    public static int calculateMinimumAlpha(int i, int i2, float f) {
        int i3 = 0;
        int i4 = 255;
        if (Color.alpha(i2) != 255) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{3, 2, 82, 14, 81, 22, 14, 22, 95, 1, 22, 7, 0, 13, 17, 11, 89, 16, 65, 1, 84, 69, 66, 22, 0, 13, 66, 9, 67, 7, 4, 13, 69, 95, 22, 71}, "ac1e6d", -609265259L) + Integer.toHexString(i2));
        }
        if (calculateContrast(setAlphaComponent(i, 255), i2) < f) {
            return -1;
        }
        int i5 = 0;
        while (i5 <= 10 && i4 - i3 > 1) {
            int i6 = (i3 + i4) / 2;
            if (calculateContrast(setAlphaComponent(i, i6), i2) >= f) {
                i4 = i6;
                i6 = i3;
            }
            i5++;
            i3 = i6;
        }
        return i4;
    }

    static float circularInterpolate(float f, float f2, float f3) {
        if (Math.abs(f2 - f) > 180.0f) {
            if (f2 > f) {
                f += 360.0f;
            } else {
                f2 += 360.0f;
            }
        }
        return (((f2 - f) * f3) + f) % 360.0f;
    }

    public static void colorToHSL(int i, float[] fArr) {
        RGBToHSL(Color.red(i), Color.green(i), Color.blue(i), fArr);
    }

    public static void colorToLAB(int i, double[] dArr) {
        RGBToLAB(Color.red(i), Color.green(i), Color.blue(i), dArr);
    }

    public static void colorToXYZ(int i, double[] dArr) {
        RGBToXYZ(Color.red(i), Color.green(i), Color.blue(i), dArr);
    }

    private static int compositeAlpha(int i, int i2) {
        return 255 - (((255 - i2) * (255 - i)) / 255);
    }

    public static int compositeColors(int i, int i2) {
        int iAlpha = Color.alpha(i2);
        int iAlpha2 = Color.alpha(i);
        int iCompositeAlpha = compositeAlpha(iAlpha2, iAlpha);
        return Color.argb(iCompositeAlpha, compositeComponent(Color.red(i), iAlpha2, Color.red(i2), iAlpha, iCompositeAlpha), compositeComponent(Color.green(i), iAlpha2, Color.green(i2), iAlpha, iCompositeAlpha), compositeComponent(Color.blue(i), iAlpha2, Color.blue(i2), iAlpha, iCompositeAlpha));
    }

    public static Color compositeColors(Color color, Color color2) {
        if (!ColorUtils$$ExternalSyntheticBackport0.m(color.getModel(), color2.getModel())) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{34, 86, 85, 86, 74, 23, 12, 86, 93, 92, 84, 68, 65, 84, 76, 74, 76, 23, 12, 88, 77, 90, 80, 23, 73}, "a99987", true, true) + color.getModel() + NPStringFog.decode(new byte[]{21, 21, 17, 26, 18}, "5cb422", -1.4341477E9f) + color2.getModel() + NPStringFog.decode(new byte[]{75}, "b94d02", 1.968800405E9d));
        }
        if (!ColorUtils$$ExternalSyntheticBackport0.m(color2.getColorSpace(), color.getColorSpace())) {
            color = color.convert(color2.getColorSpace());
        }
        float[] components = color.getComponents();
        float[] components2 = color2.getComponents();
        float fAlpha = color.alpha();
        float fAlpha2 = color2.alpha() * (1.0f - fAlpha);
        int componentCount = color2.getComponentCount() - 1;
        components2[componentCount] = fAlpha + fAlpha2;
        if (components2[componentCount] > 0.0f) {
            fAlpha /= components2[componentCount];
            fAlpha2 /= components2[componentCount];
        }
        for (int i = 0; i < componentCount; i++) {
            components2[i] = (components[i] * fAlpha) + (components2[i] * fAlpha2);
        }
        return Color.valueOf(components2, color2.getColorSpace());
    }

    private static int compositeComponent(int i, int i2, int i3, int i4, int i5) {
        if (i5 == 0) {
            return 0;
        }
        return (((i * 255) * i2) + ((i3 * i4) * (255 - i2))) / (i5 * 255);
    }

    private static float constrain(float f, float f2, float f3) {
        return f < f2 ? f2 : f > f3 ? f3 : f;
    }

    private static int constrain(int i, int i2, int i3) {
        return i < i2 ? i2 : i > i3 ? i3 : i;
    }

    public static double distanceEuclidean(double[] dArr, double[] dArr2) {
        return Math.sqrt(Math.pow(dArr[0] - dArr2[0], 2.0d) + Math.pow(dArr[1] - dArr2[1], 2.0d) + Math.pow(dArr[2] - dArr2[2], 2.0d));
    }

    private static double[] getTempDouble3Array() {
        ThreadLocal<double[]> threadLocal = TEMP_ARRAY;
        double[] dArr = threadLocal.get();
        if (dArr != null) {
            return dArr;
        }
        double[] dArr2 = new double[3];
        threadLocal.set(dArr2);
        return dArr2;
    }

    private static double pivotXyzComponent(double d) {
        return d > XYZ_EPSILON ? Math.pow(d, 0.3333333333333333d) : ((XYZ_KAPPA * d) + 16.0d) / 116.0d;
    }

    public static int setAlphaComponent(int i, int i2) {
        if (i2 < 0 || i2 > 255) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{83, 92, 71, 90, 87, 16, 95, 69, 68, 70, 22, 82, 87, 16, 85, 87, 66, 71, 87, 85, 89, 18, 6, 16, 83, 94, 83, 18, 4, 5, 7, 30}, "207260", -1.4117225E9f));
        }
        return (16777215 & i) | (i2 << 24);
    }
}
