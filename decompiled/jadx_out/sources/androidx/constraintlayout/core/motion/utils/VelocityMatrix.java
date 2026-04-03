package androidx.constraintlayout.core.motion.utils;

import n.NPStringFog;

/* JADX INFO: loaded from: classes40.dex */
public class VelocityMatrix {
    private static String TAG = NPStringFog.decode(new byte[]{100, 6, 89, 89, 81, 90, 70, 26, 120, 87, 70, 65, 91, 27}, "2c5623", -8.53461384E8d);
    float mDRotate;
    float mDScaleX;
    float mDScaleY;
    float mDTranslateX;
    float mDTranslateY;
    float mRotate;

    public void applyTransform(float f, float f2, int i, int i2, float[] fArr) {
        float f3 = fArr[0];
        float f4 = fArr[1];
        float f5 = (f - 0.5f) * 2.0f;
        float f6 = (f2 - 0.5f) * 2.0f;
        float f7 = this.mDTranslateX;
        float f8 = this.mDTranslateY;
        float f9 = this.mDScaleX;
        float f10 = this.mDScaleY;
        float radians = (float) Math.toRadians(this.mRotate);
        float radians2 = (float) Math.toRadians(this.mDRotate);
        double d = (-i) * f5;
        double dSin = Math.sin(radians);
        Double.isNaN(d);
        double d2 = i2 * f6;
        double dCos = Math.cos(radians);
        Double.isNaN(d2);
        float f11 = (float) ((d * dSin) - (d2 * dCos));
        double d3 = i * f5;
        double dCos2 = Math.cos(radians);
        Double.isNaN(d3);
        double d4 = i2 * f6;
        double dSin2 = Math.sin(radians);
        Double.isNaN(d4);
        fArr[0] = f3 + f7 + (f5 * f9) + (f11 * radians2);
        fArr[1] = f4 + f8 + (f10 * f6) + (((float) ((d3 * dCos2) - (d4 * dSin2))) * radians2);
    }

    public void clear() {
        this.mDRotate = 0.0f;
        this.mDTranslateY = 0.0f;
        this.mDTranslateX = 0.0f;
        this.mDScaleY = 0.0f;
        this.mDScaleX = 0.0f;
    }

    public void setRotationVelocity(KeyCycleOscillator keyCycleOscillator, float f) {
        if (keyCycleOscillator != null) {
            this.mDRotate = keyCycleOscillator.getSlope(f);
        }
    }

    public void setRotationVelocity(SplineSet splineSet, float f) {
        if (splineSet != null) {
            this.mDRotate = splineSet.getSlope(f);
            this.mRotate = splineSet.get(f);
        }
    }

    public void setScaleVelocity(KeyCycleOscillator keyCycleOscillator, KeyCycleOscillator keyCycleOscillator2, float f) {
        if (keyCycleOscillator != null) {
            this.mDScaleX = keyCycleOscillator.getSlope(f);
        }
        if (keyCycleOscillator2 != null) {
            this.mDScaleY = keyCycleOscillator2.getSlope(f);
        }
    }

    public void setScaleVelocity(SplineSet splineSet, SplineSet splineSet2, float f) {
        if (splineSet != null) {
            this.mDScaleX = splineSet.getSlope(f);
        }
        if (splineSet2 != null) {
            this.mDScaleY = splineSet2.getSlope(f);
        }
    }

    public void setTranslationVelocity(KeyCycleOscillator keyCycleOscillator, KeyCycleOscillator keyCycleOscillator2, float f) {
        if (keyCycleOscillator != null) {
            this.mDTranslateX = keyCycleOscillator.getSlope(f);
        }
        if (keyCycleOscillator2 != null) {
            this.mDTranslateY = keyCycleOscillator2.getSlope(f);
        }
    }

    public void setTranslationVelocity(SplineSet splineSet, SplineSet splineSet2, float f) {
        if (splineSet != null) {
            this.mDTranslateX = splineSet.getSlope(f);
        }
        if (splineSet2 != null) {
            this.mDTranslateY = splineSet2.getSlope(f);
        }
    }
}
