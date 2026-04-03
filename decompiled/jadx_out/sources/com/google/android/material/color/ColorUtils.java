package com.google.android.material.color;

import androidx.core.view.ViewCompat;
import java.util.Arrays;
import n.NPStringFog;

/* JADX INFO: loaded from: classes37.dex */
final class ColorUtils {
    private static final float[] WHITE_POINT_D65 = {95.047f, 100.0f, 108.883f};

    private ColorUtils() {
    }

    public static int blueFromInt(int i) {
        return i & 255;
    }

    public static float delinearized(float f) {
        return f <= 0.0031308f ? 12.92f * f : (((float) Math.pow(f, 0.4166666567325592d)) * 1.055f) - 0.055f;
    }

    public static int greenFromInt(int i) {
        return (65280 & i) >> 8;
    }

    public static String hexFromInt(int i) {
        return String.format(NPStringFog.decode(new byte[]{27, 18, 8, 80, 25, 22, 8, 5, 64, 71, 81, 1, 64}, "878ba3", 26308), Integer.valueOf(redFromInt(i)), Integer.valueOf(greenFromInt(i)), Integer.valueOf(blueFromInt(i)));
    }

    public static int intFromLab(double d, double d2, double d3) {
        double d4 = (16.0d + d) / 116.0d;
        double d5 = (d2 / 500.0d) + d4;
        double d6 = d4 - (d3 / 200.0d);
        double d7 = d5 * d5 * d5;
        double d8 = d7 > 0.008856451679035631d ? d7 : ((116.0d * d5) - 16.0d) / 903.2962962962963d;
        double d9 = d > 8.0d ? d4 * d4 * d4 : d / 903.2962962962963d;
        double d10 = d6 * d6 * d6;
        if (d10 <= 0.008856451679035631d) {
            d10 = ((116.0d * d6) - 16.0d) / 903.2962962962963d;
        }
        float[] fArr = WHITE_POINT_D65;
        double d11 = fArr[0];
        Double.isNaN(d11);
        double d12 = fArr[1];
        Double.isNaN(d12);
        double d13 = fArr[2];
        Double.isNaN(d13);
        return intFromXyzComponents((float) (d8 * d11), (float) (d9 * d12), (float) (d10 * d13));
    }

    public static int intFromLstar(float f) {
        float f2 = (f + 16.0f) / 116.0f;
        boolean z = (f2 * f2) * f2 > 0.008856452f;
        float f3 = (f > 8.0f ? 1 : (f == 8.0f ? 0 : -1)) > 0 ? f2 * f2 * f2 : f / 903.2963f;
        float f4 = z ? f2 * f2 * f2 : ((f2 * 116.0f) - 16.0f) / 903.2963f;
        float f5 = z ? f2 * f2 * f2 : ((116.0f * f2) - 16.0f) / 903.2963f;
        float[] fArr = WHITE_POINT_D65;
        return intFromXyz(new float[]{f4 * fArr[0], fArr[1] * f3, f5 * fArr[2]});
    }

    public static int intFromRgb(int i, int i2, int i3) {
        return (((((i & 255) << 16) | ViewCompat.MEASURED_STATE_MASK) | ((i2 & 255) << 8)) | (i3 & 255)) >>> 0;
    }

    public static int intFromXyz(float[] fArr) {
        return intFromXyzComponents(fArr[0], fArr[1], fArr[2]);
    }

    public static int intFromXyzComponents(float f, float f2, float f3) {
        float f4 = f / 100.0f;
        float f5 = f2 / 100.0f;
        float f6 = f3 / 100.0f;
        return intFromRgb(Math.max(Math.min(255, Math.round(delinearized((3.2406f * f4) + ((-1.5372f) * f5) + ((-0.4986f) * f6)) * 255.0f)), 0), Math.max(Math.min(255, Math.round(delinearized(((-0.9689f) * f4) + (1.8758f * f5) + (0.0415f * f6)) * 255.0f)), 0), Math.max(Math.min(255, Math.round(delinearized((f4 * 0.0557f) + (f5 * (-0.204f)) + (1.057f * f6)) * 255.0f)), 0));
    }

    public static double[] labFromInt(int i) {
        double dCbrt;
        double dCbrt2;
        double dCbrt3;
        float[] fArrXyzFromInt = xyzFromInt(i);
        float f = fArrXyzFromInt[1];
        float[] fArr = WHITE_POINT_D65;
        double d = f / fArr[1];
        if (d > 0.008856451679035631d) {
            dCbrt = Math.cbrt(d);
        } else {
            Double.isNaN(d);
            dCbrt = ((d * 903.2962962962963d) + 16.0d) / 116.0d;
        }
        double d2 = fArrXyzFromInt[0] / fArr[0];
        if (d2 > 0.008856451679035631d) {
            dCbrt2 = Math.cbrt(d2);
        } else {
            Double.isNaN(d2);
            dCbrt2 = ((d2 * 903.2962962962963d) + 16.0d) / 116.0d;
        }
        double d3 = fArrXyzFromInt[2] / fArr[2];
        if (d3 > 0.008856451679035631d) {
            dCbrt3 = Math.cbrt(d3);
        } else {
            Double.isNaN(d3);
            dCbrt3 = ((d3 * 903.2962962962963d) + 16.0d) / 116.0d;
        }
        return new double[]{(116.0d * dCbrt) - 16.0d, (dCbrt2 - dCbrt) * 500.0d, (dCbrt - dCbrt3) * 200.0d};
    }

    public static float linearized(float f) {
        return f <= 0.04045f ? f / 12.92f : (float) Math.pow((0.055f + f) / 1.055f, 2.4000000953674316d);
    }

    public static float lstarFromInt(int i) {
        return (float) labFromInt(i)[0];
    }

    public static int redFromInt(int i) {
        return (16711680 & i) >> 16;
    }

    public static final float[] whitePointD65() {
        return Arrays.copyOf(WHITE_POINT_D65, 3);
    }

    public static float[] xyzFromInt(int i) {
        float fLinearized = linearized(redFromInt(i) / 255.0f) * 100.0f;
        float fLinearized2 = linearized(greenFromInt(i) / 255.0f) * 100.0f;
        float fLinearized3 = linearized(blueFromInt(i) / 255.0f) * 100.0f;
        return new float[]{(0.41233894f * fLinearized) + (0.35762063f * fLinearized2) + (0.18051042f * fLinearized3), (0.2126f * fLinearized) + (0.7152f * fLinearized2) + (0.0722f * fLinearized3), (fLinearized * 0.01932141f) + (fLinearized2 * 0.11916382f) + (0.9503448f * fLinearized3)};
    }

    public static float yFromLstar(float f) {
        if (f <= 8.0f) {
            return (f / 903.2963f) * 100.0f;
        }
        double d = f;
        Double.isNaN(d);
        return ((float) Math.pow((d + 16.0d) / 116.0d, 3.0d)) * 100.0f;
    }
}
