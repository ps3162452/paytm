package androidx.constraintlayout.core.motion;

import androidx.constraintlayout.core.motion.key.MotionKeyPosition;
import androidx.constraintlayout.core.motion.utils.Easing;
import java.util.HashMap;
import n.NPStringFog;

/* JADX INFO: loaded from: classes40.dex */
public class MotionPaths implements Comparable<MotionPaths> {
    public static final int CARTESIAN = 0;
    public static final boolean DEBUG = false;
    static final int OFF_HEIGHT = 4;
    static final int OFF_PATH_ROTATE = 5;
    static final int OFF_POSITION = 0;
    static final int OFF_WIDTH = 3;
    static final int OFF_X = 1;
    static final int OFF_Y = 2;
    public static final boolean OLD_WAY = false;
    public static final int PERPENDICULAR = 1;
    public static final int SCREEN = 2;
    public static final String TAG = NPStringFog.decode(new byte[]{124, 87, 68, 13, 89, 13, 97, 89, 68, 12, 69}, "180d6c", 8.668042E8f);
    static String[] names = {NPStringFog.decode(new byte[]{69, 12, 18, 15, 64, 15, 90, 13}, "5caf4f", 24140), NPStringFog.decode(new byte[]{25}, "acfe38", -1.969280348E9d), NPStringFog.decode(new byte[]{64}, "96f399", -796536470L), NPStringFog.decode(new byte[]{19, 13, 82, 22, 89}, "dd6b1b", 8.6775565E8f), NPStringFog.decode(new byte[]{91, 4, 10, 80, 88, 16}, "3ac70d", 8.563719E8f), NPStringFog.decode(new byte[]{19, 83, 76, 9, 99, 87, 23, 83, 76, 4}, "c28a18", 1311172461L)};
    HashMap<String, CustomVariable> customAttributes;
    float height;
    int mAnimateCircleAngleTo;
    int mAnimateRelativeTo;
    int mDrawPath;
    Easing mKeyFrameEasing;
    int mMode;
    int mPathMotionArc;
    float mPathRotate;
    float mProgress;
    float mRelativeAngle;
    Motion mRelativeToController;
    double[] mTempDelta;
    double[] mTempValue;
    float position;
    float time;
    float width;
    float x;
    float y;

    public MotionPaths() {
        this.mDrawPath = 0;
        this.mPathRotate = Float.NaN;
        this.mProgress = Float.NaN;
        this.mPathMotionArc = -1;
        this.mAnimateRelativeTo = -1;
        this.mRelativeAngle = Float.NaN;
        this.mRelativeToController = null;
        this.customAttributes = new HashMap<>();
        this.mMode = 0;
        this.mTempValue = new double[18];
        this.mTempDelta = new double[18];
    }

    public MotionPaths(int i, int i2, MotionKeyPosition motionKeyPosition, MotionPaths motionPaths, MotionPaths motionPaths2) {
        this.mDrawPath = 0;
        this.mPathRotate = Float.NaN;
        this.mProgress = Float.NaN;
        this.mPathMotionArc = -1;
        this.mAnimateRelativeTo = -1;
        this.mRelativeAngle = Float.NaN;
        this.mRelativeToController = null;
        this.customAttributes = new HashMap<>();
        this.mMode = 0;
        this.mTempValue = new double[18];
        this.mTempDelta = new double[18];
        if (motionPaths.mAnimateRelativeTo != -1) {
            initPolar(i, i2, motionKeyPosition, motionPaths, motionPaths2);
        }
        switch (motionKeyPosition.mPositionType) {
            case 1:
                initPath(motionKeyPosition, motionPaths, motionPaths2);
                break;
            case 2:
                initScreen(i, i2, motionKeyPosition, motionPaths, motionPaths2);
                break;
            default:
                initCartesian(motionKeyPosition, motionPaths, motionPaths2);
                break;
        }
    }

    private boolean diff(float f, float f2) {
        return (Float.isNaN(f) || Float.isNaN(f2)) ? Float.isNaN(f) != Float.isNaN(f2) : Math.abs(f - f2) > 1.0E-6f;
    }

    private static final float xRotate(float f, float f2, float f3, float f4, float f5, float f6) {
        return (((f5 - f3) * f2) - ((f6 - f4) * f)) + f3;
    }

    private static final float yRotate(float f, float f2, float f3, float f4, float f5, float f6) {
        return ((f5 - f3) * f) + ((f6 - f4) * f2) + f4;
    }

    public void applyParameters(MotionWidget motionWidget) {
        this.mKeyFrameEasing = Easing.getInterpolator(motionWidget.motion.mTransitionEasing);
        this.mPathMotionArc = motionWidget.motion.mPathMotionArc;
        this.mAnimateRelativeTo = motionWidget.motion.mAnimateRelativeTo;
        this.mPathRotate = motionWidget.motion.mPathRotate;
        this.mDrawPath = motionWidget.motion.mDrawPath;
        this.mAnimateCircleAngleTo = motionWidget.motion.mAnimateCircleAngleTo;
        this.mProgress = motionWidget.propertySet.mProgress;
        this.mRelativeAngle = 0.0f;
        for (String str : motionWidget.getCustomAttributeNames()) {
            CustomVariable customAttribute = motionWidget.getCustomAttribute(str);
            if (customAttribute != null && customAttribute.isContinuous()) {
                this.customAttributes.put(str, customAttribute);
            }
        }
    }

    @Override // java.lang.Comparable
    public int compareTo(MotionPaths motionPaths) {
        return Float.compare(this.position, motionPaths.position);
    }

    public void configureRelativeTo(Motion motion) {
        motion.getPos(this.mProgress);
    }

    void different(MotionPaths motionPaths, boolean[] zArr, String[] strArr, boolean z) {
        boolean zDiff = diff(this.x, motionPaths.x);
        boolean zDiff2 = diff(this.y, motionPaths.y);
        zArr[0] = zArr[0] | diff(this.position, motionPaths.position);
        zArr[1] = zArr[1] | zDiff | zDiff2 | z;
        zArr[2] = zDiff | zDiff2 | z | zArr[2];
        zArr[3] = zArr[3] | diff(this.width, motionPaths.width);
        zArr[4] = zArr[4] | diff(this.height, motionPaths.height);
    }

    void fillStandard(double[] dArr, int[] iArr) {
        float[] fArr = {this.position, this.x, this.y, this.width, this.height, this.mPathRotate};
        int i = 0;
        for (int i2 = 0; i2 < iArr.length; i2++) {
            if (iArr[i2] < fArr.length) {
                dArr[i] = fArr[iArr[i2]];
                i++;
            }
        }
    }

    void getBounds(int[] iArr, double[] dArr, float[] fArr, int i) {
        float f = this.x;
        float f2 = this.y;
        float f3 = this.width;
        float f4 = this.height;
        for (int i2 = 0; i2 < iArr.length; i2++) {
            float f5 = (float) dArr[i2];
            switch (iArr[i2]) {
                case 3:
                    f3 = f5;
                    break;
                case 4:
                    f4 = f5;
                    break;
            }
        }
        fArr[i] = f3;
        fArr[i + 1] = f4;
    }

    void getCenter(double d, int[] iArr, double[] dArr, float[] fArr, int i) {
        float f = this.x;
        float f2 = this.y;
        float f3 = this.width;
        float f4 = this.height;
        for (int i2 = 0; i2 < iArr.length; i2++) {
            float f5 = (float) dArr[i2];
            switch (iArr[i2]) {
                case 1:
                    f = f5;
                    break;
                case 2:
                    f2 = f5;
                    break;
                case 3:
                    f3 = f5;
                    break;
                case 4:
                    f4 = f5;
                    break;
            }
        }
        Motion motion = this.mRelativeToController;
        if (motion != null) {
            float[] fArr2 = new float[2];
            motion.getCenter(d, fArr2, new float[2]);
            float f6 = fArr2[0];
            float f7 = fArr2[1];
            double d2 = f6;
            double d3 = f;
            double dSin = Math.sin(f2);
            Double.isNaN(d3);
            Double.isNaN(d2);
            double d4 = f3 / 2.0f;
            Double.isNaN(d4);
            float f8 = (float) ((d2 + (d3 * dSin)) - d4);
            double d5 = f7;
            double d6 = f;
            double dCos = Math.cos(f2);
            Double.isNaN(d6);
            Double.isNaN(d5);
            double d7 = f4 / 2.0f;
            Double.isNaN(d7);
            f2 = (float) ((d5 - (d6 * dCos)) - d7);
            f = f8;
        }
        fArr[i] = (f3 / 2.0f) + f + 0.0f;
        fArr[i + 1] = (f4 / 2.0f) + f2 + 0.0f;
    }

    void getCenter(double d, int[] iArr, double[] dArr, float[] fArr, double[] dArr2, float[] fArr2) {
        float f;
        float f2 = this.x;
        float f3 = this.y;
        float f4 = this.width;
        float f5 = this.height;
        float f6 = 0.0f;
        float f7 = 0.0f;
        float f8 = 0.0f;
        float f9 = 0.0f;
        for (int i = 0; i < iArr.length; i++) {
            float f10 = (float) dArr[i];
            float f11 = (float) dArr2[i];
            switch (iArr[i]) {
                case 1:
                    f6 = f11;
                    f2 = f10;
                    break;
                case 2:
                    f7 = f11;
                    f3 = f10;
                    break;
                case 3:
                    f8 = f11;
                    f4 = f10;
                    break;
                case 4:
                    f9 = f11;
                    f5 = f10;
                    break;
            }
        }
        float f12 = (f8 / 2.0f) + f6;
        float f13 = (f9 / 2.0f) + f7;
        Motion motion = this.mRelativeToController;
        if (motion != null) {
            float[] fArr3 = new float[2];
            float[] fArr4 = new float[2];
            motion.getCenter(d, fArr3, fArr4);
            float f14 = fArr3[0];
            float f15 = fArr3[1];
            float f16 = fArr4[0];
            float f17 = fArr4[1];
            double d2 = f14;
            double d3 = f2;
            double dSin = Math.sin(f3);
            Double.isNaN(d3);
            Double.isNaN(d2);
            double d4 = f4 / 2.0f;
            Double.isNaN(d4);
            float f18 = (float) ((d2 + (d3 * dSin)) - d4);
            double d5 = f15;
            double d6 = f2;
            double dCos = Math.cos(f3);
            Double.isNaN(d6);
            Double.isNaN(d5);
            double d7 = f5 / 2.0f;
            Double.isNaN(d7);
            float f19 = (float) ((d5 - (d6 * dCos)) - d7);
            double d8 = f16;
            double d9 = f6;
            double dSin2 = Math.sin(f3);
            Double.isNaN(d9);
            Double.isNaN(d8);
            double dCos2 = Math.cos(f3);
            double d10 = f7;
            Double.isNaN(d10);
            f = (float) (d8 + (d9 * dSin2) + (dCos2 * d10));
            double d11 = f17;
            double d12 = f6;
            double dCos3 = Math.cos(f3);
            Double.isNaN(d12);
            Double.isNaN(d11);
            double dSin3 = Math.sin(f3);
            double d13 = f7;
            Double.isNaN(d13);
            f13 = (float) ((d11 - (d12 * dCos3)) + (dSin3 * d13));
            f3 = f19;
            f2 = f18;
        } else {
            f = f12;
        }
        fArr[0] = (f4 / 2.0f) + f2 + 0.0f;
        fArr[1] = (f5 / 2.0f) + f3 + 0.0f;
        fArr2[0] = f;
        fArr2[1] = f13;
    }

    void getCenterVelocity(double d, int[] iArr, double[] dArr, float[] fArr, int i) {
        float f = this.x;
        float f2 = this.y;
        float f3 = this.width;
        float f4 = this.height;
        for (int i2 = 0; i2 < iArr.length; i2++) {
            float f5 = (float) dArr[i2];
            switch (iArr[i2]) {
                case 1:
                    f = f5;
                    break;
                case 2:
                    f2 = f5;
                    break;
                case 3:
                    f3 = f5;
                    break;
                case 4:
                    f4 = f5;
                    break;
            }
        }
        Motion motion = this.mRelativeToController;
        if (motion != null) {
            float[] fArr2 = new float[2];
            motion.getCenter(d, fArr2, new float[2]);
            float f6 = fArr2[0];
            float f7 = fArr2[1];
            double d2 = f6;
            double d3 = f;
            double dSin = Math.sin(f2);
            Double.isNaN(d3);
            Double.isNaN(d2);
            double d4 = f3 / 2.0f;
            Double.isNaN(d4);
            float f8 = (float) ((d2 + (d3 * dSin)) - d4);
            double d5 = f7;
            double d6 = f;
            double dCos = Math.cos(f2);
            Double.isNaN(d6);
            Double.isNaN(d5);
            double d7 = f4 / 2.0f;
            Double.isNaN(d7);
            f2 = (float) ((d5 - (d6 * dCos)) - d7);
            f = f8;
        }
        fArr[i] = (f3 / 2.0f) + f + 0.0f;
        fArr[i + 1] = (f4 / 2.0f) + f2 + 0.0f;
    }

    int getCustomData(String str, double[] dArr, int i) {
        int i2 = 0;
        CustomVariable customVariable = this.customAttributes.get(str);
        if (customVariable == null) {
            return 0;
        }
        if (customVariable.numberOfInterpolatedValues() == 1) {
            dArr[i] = customVariable.getValueToInterpolate();
            return 1;
        }
        int iNumberOfInterpolatedValues = customVariable.numberOfInterpolatedValues();
        customVariable.getValuesToInterpolate(new float[iNumberOfInterpolatedValues]);
        while (i2 < iNumberOfInterpolatedValues) {
            dArr[i] = r3[i2];
            i2++;
            i++;
        }
        return iNumberOfInterpolatedValues;
    }

    int getCustomDataCount(String str) {
        CustomVariable customVariable = this.customAttributes.get(str);
        if (customVariable == null) {
            return 0;
        }
        return customVariable.numberOfInterpolatedValues();
    }

    void getRect(int[] iArr, double[] dArr, float[] fArr, int i) {
        float f;
        float f2;
        float f3;
        float f4;
        float f5;
        float f6;
        float f7;
        float f8;
        float f9;
        float f10;
        float f11;
        float f12;
        float f13 = this.x;
        float f14 = this.y;
        float f15 = this.width;
        float f16 = this.height;
        for (int i2 = 0; i2 < iArr.length; i2++) {
            float f17 = (float) dArr[i2];
            switch (iArr[i2]) {
                case 1:
                    f13 = f17;
                    break;
                case 2:
                    f14 = f17;
                    break;
                case 3:
                    f15 = f17;
                    break;
                case 4:
                    f16 = f17;
                    break;
            }
        }
        Motion motion = this.mRelativeToController;
        if (motion != null) {
            float centerX = motion.getCenterX();
            float centerY = this.mRelativeToController.getCenterY();
            double d = centerX;
            double d2 = f13;
            double dSin = Math.sin(f14);
            Double.isNaN(d2);
            Double.isNaN(d);
            double d3 = f15 / 2.0f;
            Double.isNaN(d3);
            float f18 = (float) ((d + (d2 * dSin)) - d3);
            double d4 = centerY;
            double d5 = f13;
            double dCos = Math.cos(f14);
            Double.isNaN(d5);
            Double.isNaN(d4);
            double d6 = f16 / 2.0f;
            Double.isNaN(d6);
            float f19 = (float) ((d4 - (d5 * dCos)) - d6);
            f13 = f18;
            f = f19;
        } else {
            f = f14;
        }
        float f20 = f13 + f15;
        float f21 = f + f16;
        float f22 = (f15 / 2.0f) + f13;
        float f23 = f + (f16 / 2.0f);
        if (!Float.isNaN(Float.NaN)) {
            f22 = f13 + ((f20 - f13) * Float.NaN);
        }
        if (!Float.isNaN(Float.NaN)) {
            f23 = f + ((f21 - f) * Float.NaN);
        }
        if (1.0f != 1.0f) {
            float f24 = (f13 + f20) / 2.0f;
            f3 = ((f20 - f24) * 1.0f) + f24;
            f20 = ((f20 - f24) * 1.0f) + f24;
            f2 = ((f13 - f24) * 1.0f) + f24;
            f13 = ((f13 - f24) * 1.0f) + f24;
        } else {
            f2 = f13;
            f3 = f20;
        }
        if (1.0f != 1.0f) {
            float f25 = (f + f21) / 2.0f;
            f4 = ((f - f25) * 1.0f) + f25;
            f5 = ((f - f25) * 1.0f) + f25;
            f6 = ((f21 - f25) * 1.0f) + f25;
            f21 = ((f21 - f25) * 1.0f) + f25;
        } else {
            f4 = f;
            f5 = f;
            f6 = f21;
        }
        if (0.0f != 0.0f) {
            float fSin = (float) Math.sin(Math.toRadians(0.0f));
            float fCos = (float) Math.cos(Math.toRadians(0.0f));
            float fXRotate = xRotate(fSin, fCos, f22, f23, f13, f4);
            float fYRotate = yRotate(fSin, fCos, f22, f23, f13, f4);
            float fXRotate2 = xRotate(fSin, fCos, f22, f23, f3, f5);
            float fYRotate2 = yRotate(fSin, fCos, f22, f23, f3, f5);
            float fXRotate3 = xRotate(fSin, fCos, f22, f23, f20, f6);
            float fYRotate3 = yRotate(fSin, fCos, f22, f23, f20, f6);
            float fXRotate4 = xRotate(fSin, fCos, f22, f23, f2, f21);
            float fYRotate4 = yRotate(fSin, fCos, f22, f23, f2, f21);
            f4 = fYRotate;
            f8 = fYRotate2;
            f9 = fYRotate4;
            f10 = fXRotate4;
            f13 = fXRotate;
            f7 = fXRotate3;
            f12 = fXRotate2;
            f11 = fYRotate3;
        } else {
            f7 = f20;
            f8 = f5;
            f9 = f21;
            f10 = f2;
            f11 = f6;
            f12 = f3;
        }
        int i3 = i + 1;
        fArr[i] = f13 + 0.0f;
        int i4 = i3 + 1;
        fArr[i3] = f4 + 0.0f;
        int i5 = i4 + 1;
        fArr[i4] = f12 + 0.0f;
        int i6 = i5 + 1;
        fArr[i5] = f8 + 0.0f;
        int i7 = i6 + 1;
        fArr[i6] = f7 + 0.0f;
        int i8 = i7 + 1;
        fArr[i7] = 0.0f + f11;
        fArr[i8] = f10 + 0.0f;
        fArr[i8 + 1] = 0.0f + f9;
    }

    boolean hasCustomData(String str) {
        return this.customAttributes.containsKey(str);
    }

    void initCartesian(MotionKeyPosition motionKeyPosition, MotionPaths motionPaths, MotionPaths motionPaths2) {
        float f = motionKeyPosition.mFramePosition / 100.0f;
        this.time = f;
        this.mDrawPath = motionKeyPosition.mDrawPath;
        float f2 = Float.isNaN(motionKeyPosition.mPercentWidth) ? f : motionKeyPosition.mPercentWidth;
        float f3 = Float.isNaN(motionKeyPosition.mPercentHeight) ? f : motionKeyPosition.mPercentHeight;
        float f4 = motionPaths2.width;
        float f5 = motionPaths.width;
        float f6 = f4 - f5;
        float f7 = motionPaths2.height;
        float f8 = motionPaths.height;
        float f9 = f7 - f8;
        this.position = this.time;
        float f10 = motionPaths.x;
        float f11 = motionPaths.y;
        float f12 = ((f4 / 2.0f) + motionPaths2.x) - ((f5 / 2.0f) + f10);
        float f13 = (motionPaths2.y + (f7 / 2.0f)) - (f11 + (f8 / 2.0f));
        this.x = (int) (((f12 * f) + f10) - ((f6 * f2) / 2.0f));
        this.y = (int) (((f13 * f) + f11) - ((f9 * f3) / 2.0f));
        this.width = (int) ((f6 * f2) + f5);
        this.height = (int) ((f9 * f3) + f8);
        float f14 = Float.isNaN(motionKeyPosition.mPercentX) ? f : motionKeyPosition.mPercentX;
        float f15 = Float.isNaN(motionKeyPosition.mAltPercentY) ? 0.0f : motionKeyPosition.mAltPercentY;
        if (!Float.isNaN(motionKeyPosition.mPercentY)) {
            f = motionKeyPosition.mPercentY;
        }
        float f16 = Float.isNaN(motionKeyPosition.mAltPercentX) ? 0.0f : motionKeyPosition.mAltPercentX;
        this.mMode = 0;
        this.x = (int) ((((f14 * f12) + motionPaths.x) + (f16 * f13)) - ((f2 * f6) / 2.0f));
        this.y = (int) (((motionPaths.y + (f12 * f15)) + (f * f13)) - ((f9 * f3) / 2.0f));
        this.mKeyFrameEasing = Easing.getInterpolator(motionKeyPosition.mTransitionEasing);
        this.mPathMotionArc = motionKeyPosition.mPathMotionArc;
    }

    void initPath(MotionKeyPosition motionKeyPosition, MotionPaths motionPaths, MotionPaths motionPaths2) {
        float f = motionKeyPosition.mFramePosition / 100.0f;
        this.time = f;
        this.mDrawPath = motionKeyPosition.mDrawPath;
        float f2 = Float.isNaN(motionKeyPosition.mPercentWidth) ? f : motionKeyPosition.mPercentWidth;
        float f3 = Float.isNaN(motionKeyPosition.mPercentHeight) ? f : motionKeyPosition.mPercentHeight;
        float f4 = motionPaths2.width - motionPaths.width;
        float f5 = motionPaths2.height - motionPaths.height;
        this.position = this.time;
        if (!Float.isNaN(motionKeyPosition.mPercentX)) {
            f = motionKeyPosition.mPercentX;
        }
        float f6 = motionPaths.x;
        float f7 = motionPaths.width;
        float f8 = motionPaths.y;
        float f9 = motionPaths.height;
        float f10 = (motionPaths2.x + (motionPaths2.width / 2.0f)) - ((f7 / 2.0f) + f6);
        float f11 = (motionPaths2.y + (motionPaths2.height / 2.0f)) - ((f9 / 2.0f) + f8);
        this.x = (int) ((f6 + (f10 * f)) - ((f4 * f2) / 2.0f));
        this.y = (int) (((f11 * f) + f8) - ((f5 * f3) / 2.0f));
        this.width = (int) ((f4 * f2) + f7);
        this.height = (int) ((f5 * f3) + f9);
        float f12 = Float.isNaN(motionKeyPosition.mPercentY) ? 0.0f : motionKeyPosition.mPercentY;
        this.mMode = 1;
        float f13 = (int) ((motionPaths.x + (f10 * f)) - ((f2 * f4) / 2.0f));
        this.x = f13;
        float f14 = (int) (((f * f11) + motionPaths.y) - ((f3 * f5) / 2.0f));
        this.y = f14;
        this.x = f13 + ((-f11) * f12);
        this.y = (f10 * f12) + f14;
        this.mAnimateRelativeTo = this.mAnimateRelativeTo;
        this.mKeyFrameEasing = Easing.getInterpolator(motionKeyPosition.mTransitionEasing);
        this.mPathMotionArc = motionKeyPosition.mPathMotionArc;
    }

    void initPolar(int i, int i2, MotionKeyPosition motionKeyPosition, MotionPaths motionPaths, MotionPaths motionPaths2) {
        float fMin;
        float f;
        float f2 = motionKeyPosition.mFramePosition / 100.0f;
        this.time = f2;
        this.mDrawPath = motionKeyPosition.mDrawPath;
        this.mMode = motionKeyPosition.mPositionType;
        float f3 = Float.isNaN(motionKeyPosition.mPercentWidth) ? f2 : motionKeyPosition.mPercentWidth;
        float f4 = Float.isNaN(motionKeyPosition.mPercentHeight) ? f2 : motionKeyPosition.mPercentHeight;
        float f5 = motionPaths2.width;
        float f6 = motionPaths.width;
        float f7 = motionPaths2.height;
        float f8 = motionPaths.height;
        this.position = this.time;
        this.width = (int) (((f5 - f6) * f3) + f6);
        this.height = (int) (((f7 - f8) * f4) + f8);
        switch (motionKeyPosition.mPositionType) {
            case 1:
                float f9 = Float.isNaN(motionKeyPosition.mPercentX) ? f2 : motionKeyPosition.mPercentX;
                float f10 = motionPaths2.x;
                float f11 = motionPaths.x;
                this.x = (f9 * (f10 - f11)) + f11;
                if (!Float.isNaN(motionKeyPosition.mPercentY)) {
                    f2 = motionKeyPosition.mPercentY;
                }
                float f12 = motionPaths2.y;
                float f13 = motionPaths.y;
                this.y = ((f12 - f13) * f2) + f13;
                break;
            case 2:
                if (Float.isNaN(motionKeyPosition.mPercentX)) {
                    float f14 = motionPaths2.x;
                    float f15 = motionPaths.x;
                    fMin = ((f14 - f15) * f2) + f15;
                } else {
                    fMin = Math.min(f4, f3) * motionKeyPosition.mPercentX;
                }
                this.x = fMin;
                if (Float.isNaN(motionKeyPosition.mPercentY)) {
                    float f16 = motionPaths2.y;
                    float f17 = motionPaths.y;
                    f = ((f16 - f17) * f2) + f17;
                } else {
                    f = motionKeyPosition.mPercentY;
                }
                this.y = f;
                break;
            default:
                float f18 = Float.isNaN(motionKeyPosition.mPercentX) ? f2 : motionKeyPosition.mPercentX;
                float f19 = motionPaths2.x;
                float f20 = motionPaths.x;
                this.x = (f18 * (f19 - f20)) + f20;
                if (!Float.isNaN(motionKeyPosition.mPercentY)) {
                    f2 = motionKeyPosition.mPercentY;
                }
                float f21 = motionPaths2.y;
                float f22 = motionPaths.y;
                this.y = ((f21 - f22) * f2) + f22;
                break;
        }
        this.mAnimateRelativeTo = motionPaths.mAnimateRelativeTo;
        this.mKeyFrameEasing = Easing.getInterpolator(motionKeyPosition.mTransitionEasing);
        this.mPathMotionArc = motionKeyPosition.mPathMotionArc;
    }

    void initScreen(int i, int i2, MotionKeyPosition motionKeyPosition, MotionPaths motionPaths, MotionPaths motionPaths2) {
        float f = motionKeyPosition.mFramePosition / 100.0f;
        this.time = f;
        this.mDrawPath = motionKeyPosition.mDrawPath;
        float f2 = Float.isNaN(motionKeyPosition.mPercentWidth) ? f : motionKeyPosition.mPercentWidth;
        float f3 = Float.isNaN(motionKeyPosition.mPercentHeight) ? f : motionKeyPosition.mPercentHeight;
        float f4 = motionPaths2.width - motionPaths.width;
        float f5 = motionPaths2.height - motionPaths.height;
        this.position = this.time;
        float f6 = motionPaths.x;
        float f7 = motionPaths.y;
        this.x = (int) ((((((r4 / 2.0f) + motionPaths2.x) - ((r5 / 2.0f) + f6)) * f) + f6) - ((f4 * f2) / 2.0f));
        this.y = (int) (((f * ((motionPaths2.y + (r7 / 2.0f)) - (f7 + (r8 / 2.0f)))) + f7) - ((f5 * f3) / 2.0f));
        this.width = (int) ((f2 * f4) + r5);
        this.height = (int) ((f5 * f3) + r8);
        this.mMode = 2;
        if (!Float.isNaN(motionKeyPosition.mPercentX)) {
            this.x = (int) (((int) (i - this.width)) * motionKeyPosition.mPercentX);
        }
        if (!Float.isNaN(motionKeyPosition.mPercentY)) {
            this.y = (int) (((int) (i2 - this.height)) * motionKeyPosition.mPercentY);
        }
        this.mAnimateRelativeTo = this.mAnimateRelativeTo;
        this.mKeyFrameEasing = Easing.getInterpolator(motionKeyPosition.mTransitionEasing);
        this.mPathMotionArc = motionKeyPosition.mPathMotionArc;
    }

    void setBounds(float f, float f2, float f3, float f4) {
        this.x = f;
        this.y = f2;
        this.width = f3;
        this.height = f4;
    }

    void setDpDt(float f, float f2, float[] fArr, int[] iArr, double[] dArr, double[] dArr2) {
        float f3 = 0.0f;
        float f4 = 0.0f;
        float f5 = 0.0f;
        float f6 = 0.0f;
        for (int i = 0; i < iArr.length; i++) {
            float f7 = (float) dArr[i];
            switch (iArr[i]) {
                case 1:
                    f3 = f7;
                    break;
                case 2:
                    f4 = f7;
                    break;
                case 3:
                    f5 = f7;
                    break;
                case 4:
                    f6 = f7;
                    break;
            }
        }
        float f8 = f3 - ((0.0f * f5) / 2.0f);
        float f9 = f4 - ((0.0f * f6) / 2.0f);
        fArr[0] = ((f8 + (f5 * (0.0f + 1.0f))) * f) + ((1.0f - f) * f8) + 0.0f;
        fArr[1] = (((f6 * (0.0f + 1.0f)) + f9) * f2) + ((1.0f - f2) * f9) + 0.0f;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0081  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void setView(float r28, androidx.constraintlayout.core.motion.MotionWidget r29, int[] r30, double[] r31, double[] r32, double[] r33) {
        /*
            Method dump skipped, instruction units count: 570
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.motion.MotionPaths.setView(float, androidx.constraintlayout.core.motion.MotionWidget, int[], double[], double[], double[]):void");
    }

    public void setupRelative(Motion motion, MotionPaths motionPaths) {
        double d = ((this.x + (this.width / 2.0f)) - motionPaths.x) - (motionPaths.width / 2.0f);
        double d2 = ((this.y + (this.height / 2.0f)) - motionPaths.y) - (motionPaths.height / 2.0f);
        this.mRelativeToController = motion;
        this.x = (float) Math.hypot(d2, d);
        if (Float.isNaN(this.mRelativeAngle)) {
            this.y = (float) (Math.atan2(d2, d) + 1.5707963267948966d);
        } else {
            this.y = (float) Math.toRadians(this.mRelativeAngle);
        }
    }
}
