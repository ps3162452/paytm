package androidx.constraintlayout.core.motion.key;

import androidx.constraintlayout.core.motion.MotionWidget;
import androidx.constraintlayout.core.motion.utils.FloatRect;
import androidx.constraintlayout.core.motion.utils.SplineSet;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.HashMap;
import java.util.HashSet;
import n.NPStringFog;

/* JADX INFO: loaded from: classes40.dex */
public class MotionKeyPosition extends MotionKey {
    static final int KEY_TYPE = 2;
    static final String NAME = NPStringFog.decode(new byte[]{41, 86, 65, 53, 10, 66, 11, 71, 81, 10, 11}, "b38ee1", false, false);
    protected static final float SELECTION_SLOPE = 20.0f;
    public static final int TYPE_CARTESIAN = 0;
    public static final int TYPE_PATH = 1;
    public static final int TYPE_SCREEN = 2;
    public int mCurveFit = UNSET;
    public String mTransitionEasing = null;
    public int mPathMotionArc = UNSET;
    public int mDrawPath = 0;
    public float mPercentWidth = Float.NaN;
    public float mPercentHeight = Float.NaN;
    public float mPercentX = Float.NaN;
    public float mPercentY = Float.NaN;
    public float mAltPercentX = Float.NaN;
    public float mAltPercentY = Float.NaN;
    public int mPositionType = 0;
    private float mCalculatedPositionX = Float.NaN;
    private float mCalculatedPositionY = Float.NaN;

    public MotionKeyPosition() {
        this.mType = 2;
    }

    private void calcCartesianPosition(float f, float f2, float f3, float f4) {
        float f5 = f3 - f;
        float f6 = f4 - f2;
        float f7 = Float.isNaN(this.mPercentX) ? 0.0f : this.mPercentX;
        float f8 = Float.isNaN(this.mAltPercentY) ? 0.0f : this.mAltPercentY;
        float f9 = Float.isNaN(this.mPercentY) ? 0.0f : this.mPercentY;
        this.mCalculatedPositionX = (int) ((f7 * f5) + f + ((Float.isNaN(this.mAltPercentX) ? 0.0f : this.mAltPercentX) * f6));
        this.mCalculatedPositionY = (int) ((f5 * f8) + f2 + (f6 * f9));
    }

    private void calcPathPosition(float f, float f2, float f3, float f4) {
        float f5 = f3 - f;
        float f6 = f4 - f2;
        float f7 = this.mPercentX;
        float f8 = this.mPercentY;
        this.mCalculatedPositionX = ((-f6) * f8) + (f5 * f7) + f;
        this.mCalculatedPositionY = (f5 * f8) + (f6 * f7) + f2;
    }

    private void calcScreenPosition(int i, int i2) {
        float f = this.mPercentX;
        this.mCalculatedPositionX = ((i + 0) * f) + 0;
        this.mCalculatedPositionY = ((i2 + 0) * f) + 0;
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey
    public void addValues(HashMap<String, SplineSet> map) {
    }

    void calcPosition(int i, int i2, float f, float f2, float f3, float f4) {
        switch (this.mPositionType) {
            case 1:
                calcPathPosition(f, f2, f3, f4);
                break;
            case 2:
                calcScreenPosition(i, i2);
                break;
            default:
                calcCartesianPosition(f, f2, f3, f4);
                break;
        }
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey
    /* JADX INFO: renamed from: clone */
    public MotionKey mo2clone() {
        return new MotionKeyPosition().copy(this);
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey
    public MotionKey copy(MotionKey motionKey) {
        super.copy(motionKey);
        MotionKeyPosition motionKeyPosition = (MotionKeyPosition) motionKey;
        this.mTransitionEasing = motionKeyPosition.mTransitionEasing;
        this.mPathMotionArc = motionKeyPosition.mPathMotionArc;
        this.mDrawPath = motionKeyPosition.mDrawPath;
        this.mPercentWidth = motionKeyPosition.mPercentWidth;
        this.mPercentHeight = Float.NaN;
        this.mPercentX = motionKeyPosition.mPercentX;
        this.mPercentY = motionKeyPosition.mPercentY;
        this.mAltPercentX = motionKeyPosition.mAltPercentX;
        this.mAltPercentY = motionKeyPosition.mAltPercentY;
        this.mCalculatedPositionX = motionKeyPosition.mCalculatedPositionX;
        this.mCalculatedPositionY = motionKeyPosition.mCalculatedPositionY;
        return this;
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey
    public void getAttributeNames(HashSet<String> hashSet) {
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public int getId(String str) {
        return TypedValues.Position.CC.getId(str);
    }

    float getPositionX() {
        return this.mCalculatedPositionX;
    }

    float getPositionY() {
        return this.mCalculatedPositionY;
    }

    public boolean intersects(int i, int i2, FloatRect floatRect, FloatRect floatRect2, float f, float f2) {
        calcPosition(i, i2, floatRect.centerX(), floatRect.centerY(), floatRect2.centerX(), floatRect2.centerY());
        return Math.abs(f - this.mCalculatedPositionX) < SELECTION_SLOPE && Math.abs(f2 - this.mCalculatedPositionY) < SELECTION_SLOPE;
    }

    public void positionAttributes(MotionWidget motionWidget, FloatRect floatRect, FloatRect floatRect2, float f, float f2, String[] strArr, float[] fArr) {
        switch (this.mPositionType) {
            case 1:
                positionPathAttributes(floatRect, floatRect2, f, f2, strArr, fArr);
                break;
            case 2:
                positionScreenAttributes(motionWidget, floatRect, floatRect2, f, f2, strArr, fArr);
                break;
            default:
                positionCartAttributes(floatRect, floatRect2, f, f2, strArr, fArr);
                break;
        }
    }

    void positionCartAttributes(FloatRect floatRect, FloatRect floatRect2, float f, float f2, String[] strArr, float[] fArr) {
        float fCenterX = floatRect.centerX();
        float fCenterY = floatRect.centerY();
        float fCenterX2 = floatRect2.centerX() - fCenterX;
        float fCenterY2 = floatRect2.centerY() - fCenterY;
        if (strArr[0] == null) {
            strArr[0] = NPStringFog.decode(new byte[]{21, 81, 17, 7, 3, 90, 17, 108}, "e4cdf4", 3.8474006E8f);
            fArr[0] = (f - fCenterX) / fCenterX2;
            strArr[1] = NPStringFog.decode(new byte[]{65, 82, 71, 0, 83, 92, 69, 110}, "175c62", false, false);
            fArr[1] = (f2 - fCenterY) / fCenterY2;
            return;
        }
        if (NPStringFog.decode(new byte[]{64, 86, 17, 82, 1, 11, 68, 107}, "03c1de", -7.6388224E8f).equals(strArr[0])) {
            fArr[0] = (f - fCenterX) / fCenterX2;
            fArr[1] = (f2 - fCenterY) / fCenterY2;
        } else {
            fArr[1] = (f - fCenterX) / fCenterX2;
            fArr[0] = (f2 - fCenterY) / fCenterY2;
        }
    }

    void positionPathAttributes(FloatRect floatRect, FloatRect floatRect2, float f, float f2, String[] strArr, float[] fArr) {
        float fCenterX = floatRect.centerX();
        float fCenterY = floatRect.centerY();
        float fCenterX2 = floatRect2.centerX() - fCenterX;
        float fCenterY2 = floatRect2.centerY() - fCenterY;
        float fHypot = (float) Math.hypot(fCenterX2, fCenterY2);
        if (fHypot < 1.0E-4d) {
            System.out.println(NPStringFog.decode(new byte[]{7, 95, 16, 18, 4, 11, 0, 83, 67, 24, 69, 85}, "c6cfee", 8.9940399E7d));
            fArr[0] = 0.0f;
            fArr[1] = 0.0f;
            return;
        }
        float f3 = fCenterX2 / fHypot;
        float f4 = fCenterY2 / fHypot;
        float f5 = (((f2 - fCenterY) * f3) - ((f - fCenterX) * f4)) / fHypot;
        float f6 = (((f - fCenterX) * f3) + ((f2 - fCenterY) * f4)) / fHypot;
        if (strArr[0] != null) {
            if (NPStringFog.decode(new byte[]{64, 87, 64, 82, 84, 11, 68, 106}, "02211e", 1181583076L).equals(strArr[0])) {
                fArr[0] = f6;
                fArr[1] = f5;
                return;
            }
            return;
        }
        strArr[0] = NPStringFog.decode(new byte[]{65, 6, 69, 6, 6, 87, 69, 59}, "1c7ec9", true);
        strArr[1] = NPStringFog.decode(new byte[]{18, 80, 70, 0, 4, 93, 22, 108}, "b54ca3", false);
        fArr[0] = f6;
        fArr[1] = f5;
    }

    void positionScreenAttributes(MotionWidget motionWidget, FloatRect floatRect, FloatRect floatRect2, float f, float f2, String[] strArr, float[] fArr) {
        floatRect.centerX();
        floatRect.centerY();
        floatRect2.centerX();
        floatRect2.centerY();
        MotionWidget parent = motionWidget.getParent();
        int width = parent.getWidth();
        int height = parent.getHeight();
        if (strArr[0] == null) {
            strArr[0] = NPStringFog.decode(new byte[]{67, 86, 22, 1, 3, 15, 71, 107}, "33dbfa", -165298989L);
            fArr[0] = f / width;
            strArr[1] = NPStringFog.decode(new byte[]{20, 92, 20, 85, 85, 90, 16, 96}, "d9f604", false, true);
            fArr[1] = f2 / height;
            return;
        }
        if (NPStringFog.decode(new byte[]{21, 4, 16, 83, 81, 10, 17, 57}, "eab04d", 24337).equals(strArr[0])) {
            fArr[0] = f / width;
            fArr[1] = f2 / height;
        } else {
            fArr[1] = f / width;
            fArr[0] = f2 / height;
        }
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey, androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i, float f) {
        switch (i) {
            case 503:
                this.mPercentWidth = f;
                return true;
            case 504:
                this.mPercentHeight = f;
                return true;
            case 505:
                this.mPercentWidth = f;
                this.mPercentHeight = f;
                return true;
            case TypedValues.Position.TYPE_PERCENT_X /* 506 */:
                this.mPercentX = f;
                return true;
            case 507:
                this.mPercentY = f;
                return true;
            default:
                return super.setValue(i, f);
        }
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey, androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i, int i2) {
        switch (i) {
            case 100:
                this.mFramePosition = i2;
                return true;
            case TypedValues.Position.TYPE_CURVE_FIT /* 508 */:
                this.mCurveFit = i2;
                return true;
            case TypedValues.Position.TYPE_POSITION_TYPE /* 510 */:
                this.mPositionType = i2;
                return true;
            default:
                return super.setValue(i, i2);
        }
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey, androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i, String str) {
        switch (i) {
            case 501:
                this.mTransitionEasing = str.toString();
                return true;
            default:
                return super.setValue(i, str);
        }
    }
}
