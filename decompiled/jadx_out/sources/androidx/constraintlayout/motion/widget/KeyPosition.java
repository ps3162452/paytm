package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.core.motion.utils.Easing;
import androidx.constraintlayout.motion.utils.ViewSpline;
import androidx.constraintlayout.widget.R;
import java.util.HashMap;
import n.NPStringFog;

/* JADX INFO: loaded from: classes39.dex */
public class KeyPosition extends KeyPositionBase {
    static final int KEY_TYPE = 2;
    public static final int TYPE_CARTESIAN = 0;
    public static final int TYPE_PATH = 1;
    public static final int TYPE_SCREEN = 2;
    public static final String DRAWPATH = NPStringFog.decode(new byte[]{7, 75, 80, 78, 96, 88, 23, 81}, "c91909", false);
    static final String NAME = NPStringFog.decode(new byte[]{46, 92, 79, 52, 10, 22, 12, 77, 95, 11, 11}, "e96dee", false);
    public static final String PERCENT_HEIGHT = NPStringFog.decode(new byte[]{65, 6, 75, 80, 86, 12, 69, 43, 92, 90, 84, 10, 69}, "1c933b", 8.3268365E8f);
    public static final String PERCENT_WIDTH = NPStringFog.decode(new byte[]{70, 6, 65, 87, 84, 90, 66, 52, 90, 80, 69, 92}, "6c3414", true);
    public static final String PERCENT_X = NPStringFog.decode(new byte[]{20, 0, 16, 86, 84, 90, 16, 61}, "deb514", -2.090211171E9d);
    public static final String PERCENT_Y = NPStringFog.decode(new byte[]{20, 4, 17, 86, 86, 89, 16, 56}, "dac537", 1.649038221E9d);
    public static final String SIZE_PERCENT = NPStringFog.decode(new byte[]{70, 91, 77, 92, 105, 84, 71, 81, 82, 87, 77}, "527991", 4.447365E8f);
    private static final String TAG = NPStringFog.decode(new byte[]{40, 92, 26, 104, 10, 68, 10, 77, 10, 87, 11}, "c9c8e7", false, false);
    public static final String TRANSITION_EASING = NPStringFog.decode(new byte[]{64, 19, 88, 86, 21, 8, 64, 8, 86, 86, 35, 0, 71, 8, 87, 95}, "4a98fa", -1.6975624E9f);
    String mTransitionEasing = null;
    int mPathMotionArc = UNSET;
    int mDrawPath = 0;
    float mPercentWidth = Float.NaN;
    float mPercentHeight = Float.NaN;
    float mPercentX = Float.NaN;
    float mPercentY = Float.NaN;
    float mAltPercentX = Float.NaN;
    float mAltPercentY = Float.NaN;
    int mPositionType = 0;
    private float mCalculatedPositionX = Float.NaN;
    private float mCalculatedPositionY = Float.NaN;

    private static class Loader {
        private static final int CURVE_FIT = 4;
        private static final int DRAW_PATH = 5;
        private static final int FRAME_POSITION = 2;
        private static final int PATH_MOTION_ARC = 10;
        private static final int PERCENT_HEIGHT = 12;
        private static final int PERCENT_WIDTH = 11;
        private static final int PERCENT_X = 6;
        private static final int PERCENT_Y = 7;
        private static final int SIZE_PERCENT = 8;
        private static final int TARGET_ID = 1;
        private static final int TRANSITION_EASING = 3;
        private static final int TYPE = 9;
        private static SparseIntArray mAttrMap;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            mAttrMap = sparseIntArray;
            sparseIntArray.append(R.styleable.KeyPosition_motionTarget, 1);
            mAttrMap.append(R.styleable.KeyPosition_framePosition, 2);
            mAttrMap.append(R.styleable.KeyPosition_transitionEasing, 3);
            mAttrMap.append(R.styleable.KeyPosition_curveFit, 4);
            mAttrMap.append(R.styleable.KeyPosition_drawPath, 5);
            mAttrMap.append(R.styleable.KeyPosition_percentX, 6);
            mAttrMap.append(R.styleable.KeyPosition_percentY, 7);
            mAttrMap.append(R.styleable.KeyPosition_keyPositionType, 9);
            mAttrMap.append(R.styleable.KeyPosition_sizePercent, 8);
            mAttrMap.append(R.styleable.KeyPosition_percentWidth, 11);
            mAttrMap.append(R.styleable.KeyPosition_percentHeight, 12);
            mAttrMap.append(R.styleable.KeyPosition_pathMotionArc, 10);
        }

        private Loader() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void read(KeyPosition keyPosition, TypedArray typedArray) {
            int indexCount = typedArray.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArray.getIndex(i);
                switch (mAttrMap.get(index)) {
                    case 1:
                        if (MotionLayout.IS_IN_EDIT_MODE) {
                            keyPosition.mTargetId = typedArray.getResourceId(index, keyPosition.mTargetId);
                            if (keyPosition.mTargetId == -1) {
                                keyPosition.mTargetString = typedArray.getString(index);
                            }
                        } else if (typedArray.peekValue(index).type == 3) {
                            keyPosition.mTargetString = typedArray.getString(index);
                        } else {
                            keyPosition.mTargetId = typedArray.getResourceId(index, keyPosition.mTargetId);
                        }
                        break;
                    case 2:
                        keyPosition.mFramePosition = typedArray.getInt(index, keyPosition.mFramePosition);
                        break;
                    case 3:
                        if (typedArray.peekValue(index).type == 3) {
                            keyPosition.mTransitionEasing = typedArray.getString(index);
                        } else {
                            keyPosition.mTransitionEasing = Easing.NAMED_EASING[typedArray.getInteger(index, 0)];
                        }
                        break;
                    case 4:
                        keyPosition.mCurveFit = typedArray.getInteger(index, keyPosition.mCurveFit);
                        break;
                    case 5:
                        keyPosition.mDrawPath = typedArray.getInt(index, keyPosition.mDrawPath);
                        break;
                    case 6:
                        keyPosition.mPercentX = typedArray.getFloat(index, keyPosition.mPercentX);
                        break;
                    case 7:
                        keyPosition.mPercentY = typedArray.getFloat(index, keyPosition.mPercentY);
                        break;
                    case 8:
                        float f = typedArray.getFloat(index, keyPosition.mPercentHeight);
                        keyPosition.mPercentWidth = f;
                        keyPosition.mPercentHeight = f;
                        break;
                    case 9:
                        keyPosition.mPositionType = typedArray.getInt(index, keyPosition.mPositionType);
                        break;
                    case 10:
                        keyPosition.mPathMotionArc = typedArray.getInt(index, keyPosition.mPathMotionArc);
                        break;
                    case 11:
                        keyPosition.mPercentWidth = typedArray.getFloat(index, keyPosition.mPercentWidth);
                        break;
                    case 12:
                        keyPosition.mPercentHeight = typedArray.getFloat(index, keyPosition.mPercentHeight);
                        break;
                    default:
                        String hexString = Integer.toHexString(index);
                        int i2 = mAttrMap.get(index);
                        StringBuilder sb = new StringBuilder(String.valueOf(hexString).length() + 33);
                        sb.append(NPStringFog.decode(new byte[]{67, 91, 71, 21, 82, 5, 22, 84, 70, 18, 69, 8, 84, 64, 70, 3, 23, 81, 78}, "652f7a", false));
                        sb.append(hexString);
                        sb.append("   ");
                        sb.append(i2);
                        Log.e(NPStringFog.decode(new byte[]{127, 86, 27, 98, 95, 65, 93, 71, 11, 93, 94}, "43b202", 4.25608998E8d), sb.toString());
                        break;
                }
            }
            if (keyPosition.mFramePosition == -1) {
                Log.e(NPStringFog.decode(new byte[]{121, 1, 64, 54, 13, 68, 91, 16, 80, 9, 12}, "2d9fb7", 22453), NPStringFog.decode(new byte[]{87, 95, 66, 3, 23, 88, 84, 85, 66, 21, 10, 74, 80, 68, 11, 10, 11}, "90bee9", 5.89091053E8d));
            }
        }
    }

    public KeyPosition() {
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

    @Override // androidx.constraintlayout.motion.widget.Key
    public void addValues(HashMap<String, ViewSpline> map) {
    }

    @Override // androidx.constraintlayout.motion.widget.KeyPositionBase
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

    @Override // androidx.constraintlayout.motion.widget.Key
    /* JADX INFO: renamed from: clone */
    public Key mo3clone() {
        return new KeyPosition().copy(this);
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public Key copy(Key key) {
        super.copy(key);
        KeyPosition keyPosition = (KeyPosition) key;
        this.mTransitionEasing = keyPosition.mTransitionEasing;
        this.mPathMotionArc = keyPosition.mPathMotionArc;
        this.mDrawPath = keyPosition.mDrawPath;
        this.mPercentWidth = keyPosition.mPercentWidth;
        this.mPercentHeight = Float.NaN;
        this.mPercentX = keyPosition.mPercentX;
        this.mPercentY = keyPosition.mPercentY;
        this.mAltPercentX = keyPosition.mAltPercentX;
        this.mAltPercentY = keyPosition.mAltPercentY;
        this.mCalculatedPositionX = keyPosition.mCalculatedPositionX;
        this.mCalculatedPositionY = keyPosition.mCalculatedPositionY;
        return this;
    }

    @Override // androidx.constraintlayout.motion.widget.KeyPositionBase
    float getPositionX() {
        return this.mCalculatedPositionX;
    }

    @Override // androidx.constraintlayout.motion.widget.KeyPositionBase
    float getPositionY() {
        return this.mCalculatedPositionY;
    }

    @Override // androidx.constraintlayout.motion.widget.KeyPositionBase
    public boolean intersects(int i, int i2, RectF rectF, RectF rectF2, float f, float f2) {
        calcPosition(i, i2, rectF.centerX(), rectF.centerY(), rectF2.centerX(), rectF2.centerY());
        return Math.abs(f - this.mCalculatedPositionX) < 20.0f && Math.abs(f2 - this.mCalculatedPositionY) < 20.0f;
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void load(Context context, AttributeSet attributeSet) {
        Loader.read(this, context.obtainStyledAttributes(attributeSet, R.styleable.KeyPosition));
    }

    @Override // androidx.constraintlayout.motion.widget.KeyPositionBase
    public void positionAttributes(View view, RectF rectF, RectF rectF2, float f, float f2, String[] strArr, float[] fArr) {
        switch (this.mPositionType) {
            case 1:
                positionPathAttributes(rectF, rectF2, f, f2, strArr, fArr);
                break;
            case 2:
                positionScreenAttributes(view, rectF, rectF2, f, f2, strArr, fArr);
                break;
            default:
                positionCartAttributes(rectF, rectF2, f, f2, strArr, fArr);
                break;
        }
    }

    void positionCartAttributes(RectF rectF, RectF rectF2, float f, float f2, String[] strArr, float[] fArr) {
        float fCenterX = rectF.centerX();
        float fCenterY = rectF.centerY();
        float fCenterX2 = rectF2.centerX() - fCenterX;
        float fCenterY2 = rectF2.centerY() - fCenterY;
        if (strArr[0] == null) {
            strArr[0] = PERCENT_X;
            fArr[0] = (f - fCenterX) / fCenterX2;
            strArr[1] = PERCENT_Y;
            fArr[1] = (f2 - fCenterY) / fCenterY2;
            return;
        }
        if (PERCENT_X.equals(strArr[0])) {
            fArr[0] = (f - fCenterX) / fCenterX2;
            fArr[1] = (f2 - fCenterY) / fCenterY2;
        } else {
            fArr[1] = (f - fCenterX) / fCenterX2;
            fArr[0] = (f2 - fCenterY) / fCenterY2;
        }
    }

    void positionPathAttributes(RectF rectF, RectF rectF2, float f, float f2, String[] strArr, float[] fArr) {
        float fCenterX = rectF.centerX();
        float fCenterY = rectF.centerY();
        float fCenterX2 = rectF2.centerX() - fCenterX;
        float fCenterY2 = rectF2.centerY() - fCenterY;
        float fHypot = (float) Math.hypot(fCenterX2, fCenterY2);
        if (fHypot < 1.0E-4d) {
            System.out.println(NPStringFog.decode(new byte[]{92, 10, 68, 21, 89, 13, 91, 6, 23, 31, 24, 83}, "8c7a8c", true));
            fArr[0] = 0.0f;
            fArr[1] = 0.0f;
            return;
        }
        float f3 = fCenterX2 / fHypot;
        float f4 = fCenterY2 / fHypot;
        float f5 = (((f2 - fCenterY) * f3) - ((f - fCenterX) * f4)) / fHypot;
        float f6 = (((f - fCenterX) * f3) + ((f2 - fCenterY) * f4)) / fHypot;
        if (strArr[0] != null) {
            if (PERCENT_X.equals(strArr[0])) {
                fArr[0] = f6;
                fArr[1] = f5;
                return;
            }
            return;
        }
        strArr[0] = PERCENT_X;
        strArr[1] = PERCENT_Y;
        fArr[0] = f6;
        fArr[1] = f5;
    }

    void positionScreenAttributes(View view, RectF rectF, RectF rectF2, float f, float f2, String[] strArr, float[] fArr) {
        rectF.centerX();
        rectF.centerY();
        rectF2.centerX();
        rectF2.centerY();
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        int width = viewGroup.getWidth();
        int height = viewGroup.getHeight();
        if (strArr[0] == null) {
            strArr[0] = PERCENT_X;
            fArr[0] = f / width;
            strArr[1] = PERCENT_Y;
            fArr[1] = f2 / height;
            return;
        }
        if (PERCENT_X.equals(strArr[0])) {
            fArr[0] = f / width;
            fArr[1] = f2 / height;
        } else {
            fArr[1] = f / width;
            fArr[0] = f2 / height;
        }
    }

    public void setType(int i) {
        this.mPositionType = i;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:4:0x0007  */
    @Override // androidx.constraintlayout.motion.widget.Key
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setValue(java.lang.String r2, java.lang.Object r3) {
        /*
            r1 = this;
            int r0 = r2.hashCode()
            switch(r0) {
                case -1812823328: goto L48;
                case -1127236479: goto L3e;
                case -1017587252: goto L34;
                case -827014263: goto L2a;
                case -200259324: goto L20;
                case 428090547: goto L16;
                case 428090548: goto Lc;
                default: goto L7;
            }
        L7:
            r0 = -1
        L8:
            switch(r0) {
                case 0: goto L7e;
                case 1: goto L77;
                case 2: goto L70;
                case 3: goto L69;
                case 4: goto L60;
                case 5: goto L59;
                case 6: goto L52;
                default: goto Lb;
            }
        Lb:
            return
        Lc:
            java.lang.String r0 = androidx.constraintlayout.motion.widget.KeyPosition.PERCENT_Y
            boolean r0 = r2.equals(r0)
            if (r0 == 0) goto L7
            r0 = 6
            goto L8
        L16:
            java.lang.String r0 = androidx.constraintlayout.motion.widget.KeyPosition.PERCENT_X
            boolean r0 = r2.equals(r0)
            if (r0 == 0) goto L7
            r0 = 5
            goto L8
        L20:
            java.lang.String r0 = androidx.constraintlayout.motion.widget.KeyPosition.SIZE_PERCENT
            boolean r0 = r2.equals(r0)
            if (r0 == 0) goto L7
            r0 = 4
            goto L8
        L2a:
            java.lang.String r0 = androidx.constraintlayout.motion.widget.KeyPosition.DRAWPATH
            boolean r0 = r2.equals(r0)
            if (r0 == 0) goto L7
            r0 = 1
            goto L8
        L34:
            java.lang.String r0 = androidx.constraintlayout.motion.widget.KeyPosition.PERCENT_HEIGHT
            boolean r0 = r2.equals(r0)
            if (r0 == 0) goto L7
            r0 = 3
            goto L8
        L3e:
            java.lang.String r0 = androidx.constraintlayout.motion.widget.KeyPosition.PERCENT_WIDTH
            boolean r0 = r2.equals(r0)
            if (r0 == 0) goto L7
            r0 = 2
            goto L8
        L48:
            java.lang.String r0 = androidx.constraintlayout.motion.widget.KeyPosition.TRANSITION_EASING
            boolean r0 = r2.equals(r0)
            if (r0 == 0) goto L7
            r0 = 0
            goto L8
        L52:
            float r0 = r1.toFloat(r3)
            r1.mPercentY = r0
            goto Lb
        L59:
            float r0 = r1.toFloat(r3)
            r1.mPercentX = r0
            goto Lb
        L60:
            float r0 = r1.toFloat(r3)
            r1.mPercentWidth = r0
            r1.mPercentHeight = r0
            goto Lb
        L69:
            float r0 = r1.toFloat(r3)
            r1.mPercentHeight = r0
            goto Lb
        L70:
            float r0 = r1.toFloat(r3)
            r1.mPercentWidth = r0
            goto Lb
        L77:
            int r0 = r1.toInt(r3)
            r1.mDrawPath = r0
            goto Lb
        L7e:
            java.lang.String r0 = r3.toString()
            r1.mTransitionEasing = r0
            goto Lb
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.KeyPosition.setValue(java.lang.String, java.lang.Object):void");
    }
}
