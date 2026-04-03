package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.BounceInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.OvershootInterpolator;
import androidx.constraintlayout.core.motion.utils.CurveFit;
import androidx.constraintlayout.core.motion.utils.Easing;
import androidx.constraintlayout.core.motion.utils.KeyCache;
import androidx.constraintlayout.core.motion.utils.VelocityMatrix;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.constraintlayout.motion.utils.ViewOscillator;
import androidx.constraintlayout.motion.utils.ViewSpline;
import androidx.constraintlayout.motion.utils.ViewState;
import androidx.constraintlayout.motion.utils.ViewTimeCycle;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import n.NPStringFog;

/* JADX INFO: loaded from: classes39.dex */
public class MotionController {
    static final int BOUNCE = 4;
    private static final boolean DEBUG = false;
    public static final int DRAW_PATH_AS_CONFIGURED = 4;
    public static final int DRAW_PATH_BASIC = 1;
    public static final int DRAW_PATH_CARTESIAN = 3;
    public static final int DRAW_PATH_NONE = 0;
    public static final int DRAW_PATH_RECTANGLE = 5;
    public static final int DRAW_PATH_RELATIVE = 2;
    public static final int DRAW_PATH_SCREEN = 6;
    static final int EASE_IN = 1;
    static final int EASE_IN_OUT = 0;
    static final int EASE_OUT = 2;
    private static final boolean FAVOR_FIXED_SIZE_VIEWS = false;
    public static final int HORIZONTAL_PATH_X = 2;
    public static final int HORIZONTAL_PATH_Y = 3;
    private static final int INTERPOLATOR_REFERENCE_ID = -2;
    private static final int INTERPOLATOR_UNDEFINED = -3;
    static final int LINEAR = 3;
    static final int OVERSHOOT = 5;
    public static final int PATH_PERCENT = 0;
    public static final int PATH_PERPENDICULAR = 1;
    public static final int ROTATION_LEFT = 2;
    public static final int ROTATION_RIGHT = 1;
    private static final int SPLINE_STRING = -1;
    private static final String TAG = NPStringFog.decode(new byte[]{44, 88, 16, 89, 90, 89, 34, 88, 10, 68, 71, 88, 13, 91, 1, 66}, "a7d057", 1.1738912E9f);
    public static final int VERTICAL_PATH_X = 4;
    public static final int VERTICAL_PATH_Y = 5;
    String[] attributeTable;
    private CurveFit mArcSpline;
    private int[] mAttributeInterpolatorCount;
    private String[] mAttributeNames;
    private HashMap<String, ViewSpline> mAttributesMap;
    String mConstraintTag;
    float mCurrentCenterX;
    float mCurrentCenterY;
    private HashMap<String, ViewOscillator> mCycleMap;
    int mId;
    private double[] mInterpolateData;
    private int[] mInterpolateVariables;
    private double[] mInterpolateVelocity;
    private KeyTrigger[] mKeyTriggers;
    private CurveFit[] mSpline;
    private HashMap<String, ViewTimeCycle> mTimeCycleAttributesMap;
    View mView;
    Rect mTempRect = new Rect();
    boolean mForceMeasure = false;
    private int mCurveFitType = -1;
    private MotionPaths mStartMotionPath = new MotionPaths();
    private MotionPaths mEndMotionPath = new MotionPaths();
    private MotionConstrainedPoint mStartPoint = new MotionConstrainedPoint();
    private MotionConstrainedPoint mEndPoint = new MotionConstrainedPoint();
    float mMotionStagger = Float.NaN;
    float mStaggerOffset = 0.0f;
    float mStaggerScale = 1.0f;
    private int MAX_DIMENSION = 4;
    private float[] mValuesBuff = new float[4];
    private ArrayList<MotionPaths> mMotionPaths = new ArrayList<>();
    private float[] mVelocity = new float[1];
    private ArrayList<Key> mKeyList = new ArrayList<>();
    private int mPathMotionArc = Key.UNSET;
    private int mTransformPivotTarget = Key.UNSET;
    private View mTransformPivotView = null;
    private int mQuantizeMotionSteps = Key.UNSET;
    private float mQuantizeMotionPhase = Float.NaN;
    private Interpolator mQuantizeMotionInterpolator = null;
    private boolean mNoMovement = false;

    MotionController(View view) {
        setView(view);
    }

    private float getAdjustedPosition(float f, float[] fArr) {
        float f2;
        float f3;
        Easing easing;
        float f4 = 0.0f;
        if (fArr != null) {
            fArr[0] = 1.0f;
        } else {
            float f5 = this.mStaggerScale;
            if (f5 != 1.0d) {
                float f6 = this.mStaggerOffset;
                if (f < f6) {
                    f = 0.0f;
                }
                if (f > f6 && f < 1.0d) {
                    f = Math.min(f5 * (f - f6), 1.0f);
                }
            }
        }
        Easing easing2 = this.mStartMotionPath.mKeyFrameEasing;
        float f7 = Float.NaN;
        Iterator<MotionPaths> it = this.mMotionPaths.iterator();
        while (true) {
            f2 = f7;
            f3 = f4;
            easing = easing2;
            if (!it.hasNext()) {
                break;
            }
            MotionPaths next = it.next();
            if (next.mKeyFrameEasing != null) {
                if (next.time < f) {
                    easing = next.mKeyFrameEasing;
                    f3 = next.time;
                } else if (Float.isNaN(f2)) {
                    f2 = next.time;
                }
            }
            easing2 = easing;
            f4 = f3;
            f7 = f2;
        }
        if (easing != null) {
            if (Float.isNaN(f2)) {
                f2 = 1.0f;
            }
            float f8 = (f - f3) / (f2 - f3);
            f = ((f2 - f3) * ((float) easing.get(f8))) + f3;
            if (fArr != null) {
                fArr[0] = (float) easing.getDiff(f8);
            }
        }
        return f;
    }

    private static Interpolator getInterpolator(Context context, int i, String str, int i2) {
        switch (i) {
            case -2:
                return AnimationUtils.loadInterpolator(context, i2);
            case -1:
                return new Interpolator(Easing.getInterpolator(str)) { // from class: androidx.constraintlayout.motion.widget.MotionController.1
                    final Easing val$easing;

                    {
                        this.val$easing = easing;
                    }

                    @Override // android.animation.TimeInterpolator
                    public float getInterpolation(float f) {
                        return (float) this.val$easing.get(f);
                    }
                };
            case 0:
                return new AccelerateDecelerateInterpolator();
            case 1:
                return new AccelerateInterpolator();
            case 2:
                return new DecelerateInterpolator();
            case 3:
            default:
                return null;
            case 4:
                return new BounceInterpolator();
            case 5:
                return new OvershootInterpolator();
        }
    }

    private float getPreCycleDistance() {
        Easing easing;
        float f;
        float f2;
        double d;
        float f3;
        float[] fArr = new float[2];
        float f4 = 1.0f / 99;
        float f5 = 0.0f;
        int i = 0;
        double d2 = 0.0d;
        double d3 = 0.0d;
        while (i < 100) {
            float f6 = i * f4;
            double d4 = f6;
            Easing easing2 = this.mStartMotionPath.mKeyFrameEasing;
            Iterator<MotionPaths> it = this.mMotionPaths.iterator();
            float f7 = 0.0f;
            float f8 = Float.NaN;
            while (true) {
                easing = easing2;
                f = f7;
                f2 = f8;
                if (!it.hasNext()) {
                    break;
                }
                MotionPaths next = it.next();
                if (next.mKeyFrameEasing != null) {
                    if (next.time < f6) {
                        easing = next.mKeyFrameEasing;
                        f = next.time;
                    } else if (Float.isNaN(f2)) {
                        f2 = next.time;
                    }
                }
                f8 = f2;
                f7 = f;
                easing2 = easing;
            }
            if (easing != null) {
                if (Float.isNaN(f2)) {
                    f2 = 1.0f;
                }
                d = ((f2 - f) * ((float) easing.get((f6 - f) / (f2 - f)))) + f;
            } else {
                d = d4;
            }
            this.mSpline[0].getPos(d, this.mInterpolateData);
            this.mStartMotionPath.getCenter(d, this.mInterpolateVariables, this.mInterpolateData, fArr, 0);
            if (i > 0) {
                double d5 = f5;
                double d6 = fArr[1];
                Double.isNaN(d6);
                double d7 = fArr[0];
                Double.isNaN(d7);
                double dHypot = Math.hypot(d2 - d6, d3 - d7);
                Double.isNaN(d5);
                f3 = (float) (d5 + dHypot);
            } else {
                f3 = f5;
            }
            double d8 = fArr[0];
            i++;
            d2 = fArr[1];
            d3 = d8;
            f5 = f3;
        }
        return f5;
    }

    private void insertKey(MotionPaths motionPaths) {
        if (Collections.binarySearch(this.mMotionPaths, motionPaths) == 0) {
            float f = motionPaths.position;
            StringBuilder sb = new StringBuilder(52);
            sb.append(NPStringFog.decode(new byte[]{20, 41, 86, 77, 54, 7, 64, 10, 19, 68, 9, 21, 93, 22, 90, 91, 8, 70, 22}, "4b34ff", 1.7638838E8f));
            sb.append(f);
            sb.append(NPStringFog.decode(new byte[]{67, 20, 89, 16, 23, 74, 8, 80, 83, 69, 12, 95, 65, 70, 87, 11, 4, 92}, "a46ec9", true, false));
            Log.e(TAG, sb.toString());
        }
        this.mMotionPaths.add((-r0) - 1, motionPaths);
    }

    private void readView(MotionPaths motionPaths) {
        motionPaths.setBounds((int) this.mView.getX(), (int) this.mView.getY(), this.mView.getWidth(), this.mView.getHeight());
    }

    public void addKey(Key key) {
        this.mKeyList.add(key);
    }

    void addKeys(ArrayList<Key> arrayList) {
        this.mKeyList.addAll(arrayList);
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x0124 A[PHI: r0
      0x0124: PHI (r0v16 float) = (r0v15 float), (r0v33 float), (r0v33 float) binds: [B:13:0x0023, B:18:0x002e, B:20:0x0035] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void buildBounds(float[] r13, int r14) {
        /*
            Method dump skipped, instruction units count: 336
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.MotionController.buildBounds(float[], int):void");
    }

    int buildKeyBounds(float[] fArr, int[] iArr) {
        if (fArr == null) {
            return 0;
        }
        double[] timePoints = this.mSpline[0].getTimePoints();
        if (iArr != null) {
            Iterator<MotionPaths> it = this.mMotionPaths.iterator();
            int i = 0;
            while (it.hasNext()) {
                iArr[i] = it.next().mMode;
                i++;
            }
        }
        int i2 = 0;
        for (double d : timePoints) {
            this.mSpline[0].getPos(d, this.mInterpolateData);
            this.mStartMotionPath.getBounds(this.mInterpolateVariables, this.mInterpolateData, fArr, i2);
            i2 += 2;
        }
        return i2 / 2;
    }

    int buildKeyFrames(float[] fArr, int[] iArr) {
        if (fArr == null) {
            return 0;
        }
        double[] timePoints = this.mSpline[0].getTimePoints();
        if (iArr != null) {
            Iterator<MotionPaths> it = this.mMotionPaths.iterator();
            int i = 0;
            while (it.hasNext()) {
                iArr[i] = it.next().mMode;
                i++;
            }
        }
        int i2 = 0;
        for (int i3 = 0; i3 < timePoints.length; i3++) {
            this.mSpline[0].getPos(timePoints[i3], this.mInterpolateData);
            this.mStartMotionPath.getCenter(timePoints[i3], this.mInterpolateVariables, this.mInterpolateData, fArr, i2);
            i2 += 2;
        }
        return i2 / 2;
    }

    /* JADX WARN: Removed duplicated region for block: B:67:0x018c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void buildPath(float[] r19, int r20) {
        /*
            Method dump skipped, instruction units count: 442
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.MotionController.buildPath(float[], int):void");
    }

    void buildRect(float f, float[] fArr, int i) {
        this.mSpline[0].getPos(getAdjustedPosition(f, null), this.mInterpolateData);
        this.mStartMotionPath.getRect(this.mInterpolateVariables, this.mInterpolateData, fArr, i);
    }

    void buildRectangles(float[] fArr, int i) {
        float f = 1.0f / (i - 1);
        for (int i2 = 0; i2 < i; i2++) {
            this.mSpline[0].getPos(getAdjustedPosition(i2 * f, null), this.mInterpolateData);
            this.mStartMotionPath.getRect(this.mInterpolateVariables, this.mInterpolateData, fArr, i2 * 8);
        }
    }

    void endTrigger(boolean z) {
        if (!NPStringFog.decode(new byte[]{87, 70, 64, 66, 91, 88}, "534646", -338363802L).equals(Debug.getName(this.mView)) || this.mKeyTriggers == null) {
            return;
        }
        int i = 0;
        while (true) {
            KeyTrigger[] keyTriggerArr = this.mKeyTriggers;
            if (i >= keyTriggerArr.length) {
                return;
            }
            keyTriggerArr[i].conditionallyFire(z ? -100.0f : 100.0f, this.mView);
            i++;
        }
    }

    public int getAnimateRelativeTo() {
        return this.mStartMotionPath.mAnimateRelativeTo;
    }

    int getAttributeValues(String str, float[] fArr, int i) {
        float f = 1.0f / (i - 1);
        ViewSpline viewSpline = this.mAttributesMap.get(str);
        if (viewSpline == null) {
            return -1;
        }
        for (int i2 = 0; i2 < fArr.length; i2++) {
            fArr[i2] = viewSpline.get(i2 / (fArr.length - 1));
        }
        return fArr.length;
    }

    public void getCenter(double d, float[] fArr, float[] fArr2) {
        double[] dArr = new double[4];
        double[] dArr2 = new double[4];
        int[] iArr = new int[4];
        this.mSpline[0].getPos(d, dArr);
        this.mSpline[0].getSlope(d, dArr2);
        Arrays.fill(fArr2, 0.0f);
        this.mStartMotionPath.getCenter(d, this.mInterpolateVariables, dArr, fArr, dArr2, fArr2);
    }

    public float getCenterX() {
        return this.mCurrentCenterX;
    }

    public float getCenterY() {
        return this.mCurrentCenterY;
    }

    void getDpDt(float f, float f2, float f3, float[] fArr) {
        double[] dArr;
        int i = 0;
        float adjustedPosition = getAdjustedPosition(f, this.mVelocity);
        CurveFit[] curveFitArr = this.mSpline;
        if (curveFitArr == null) {
            float f4 = this.mEndMotionPath.x - this.mStartMotionPath.x;
            float f5 = this.mEndMotionPath.y - this.mStartMotionPath.y;
            float f6 = this.mEndMotionPath.width;
            float f7 = this.mStartMotionPath.width;
            float f8 = this.mEndMotionPath.height;
            float f9 = this.mStartMotionPath.height;
            fArr[0] = ((f4 + (f6 - f7)) * f2) + ((1.0f - f2) * f4);
            fArr[1] = ((1.0f - f3) * f5) + ((f5 + (f8 - f9)) * f3);
            return;
        }
        curveFitArr[0].getSlope(adjustedPosition, this.mInterpolateVelocity);
        this.mSpline[0].getPos(adjustedPosition, this.mInterpolateData);
        float f10 = this.mVelocity[0];
        while (true) {
            dArr = this.mInterpolateVelocity;
            if (i >= dArr.length) {
                break;
            }
            double d = dArr[i];
            double d2 = f10;
            Double.isNaN(d2);
            dArr[i] = d * d2;
            i++;
        }
        CurveFit curveFit = this.mArcSpline;
        if (curveFit == null) {
            this.mStartMotionPath.setDpDt(f2, f3, fArr, this.mInterpolateVariables, dArr, this.mInterpolateData);
            return;
        }
        double[] dArr2 = this.mInterpolateData;
        if (dArr2.length > 0) {
            curveFit.getPos(adjustedPosition, dArr2);
            this.mArcSpline.getSlope(adjustedPosition, this.mInterpolateVelocity);
            this.mStartMotionPath.setDpDt(f2, f3, fArr, this.mInterpolateVariables, this.mInterpolateVelocity, this.mInterpolateData);
        }
    }

    public int getDrawPath() {
        int iMax = this.mStartMotionPath.mDrawPath;
        Iterator<MotionPaths> it = this.mMotionPaths.iterator();
        while (true) {
            int i = iMax;
            if (!it.hasNext()) {
                return Math.max(i, this.mEndMotionPath.mDrawPath);
            }
            iMax = Math.max(i, it.next().mDrawPath);
        }
    }

    public float getFinalHeight() {
        return this.mEndMotionPath.height;
    }

    public float getFinalWidth() {
        return this.mEndMotionPath.width;
    }

    public float getFinalX() {
        return this.mEndMotionPath.x;
    }

    public float getFinalY() {
        return this.mEndMotionPath.y;
    }

    MotionPaths getKeyFrame(int i) {
        return this.mMotionPaths.get(i);
    }

    public int getKeyFrameInfo(int i, int[] iArr) {
        float[] fArr = new float[2];
        int i2 = 0;
        int i3 = 0;
        for (Key key : this.mKeyList) {
            if (key.mType == i || i != -1) {
                iArr[i2] = 0;
                int i4 = i2 + 1;
                iArr[i4] = key.mType;
                int i5 = i4 + 1;
                iArr[i5] = key.mFramePosition;
                float f = key.mFramePosition / 100.0f;
                this.mSpline[0].getPos(f, this.mInterpolateData);
                this.mStartMotionPath.getCenter(f, this.mInterpolateVariables, this.mInterpolateData, fArr, 0);
                int i6 = i5 + 1;
                iArr[i6] = Float.floatToIntBits(fArr[0]);
                int i7 = i6 + 1;
                iArr[i7] = Float.floatToIntBits(fArr[1]);
                if (key instanceof KeyPosition) {
                    KeyPosition keyPosition = (KeyPosition) key;
                    int i8 = i7 + 1;
                    iArr[i8] = keyPosition.mPositionType;
                    int i9 = i8 + 1;
                    iArr[i9] = Float.floatToIntBits(keyPosition.mPercentX);
                    i7 = i9 + 1;
                    iArr[i7] = Float.floatToIntBits(keyPosition.mPercentY);
                }
                int i10 = i7 + 1;
                iArr[i2] = i10 - i2;
                i2 = i10;
                i3++;
            }
        }
        return i3;
    }

    float getKeyFrameParameter(int i, float f, float f2) {
        float f3 = this.mEndMotionPath.x - this.mStartMotionPath.x;
        float f4 = this.mEndMotionPath.y - this.mStartMotionPath.y;
        float f5 = this.mStartMotionPath.x;
        float f6 = this.mStartMotionPath.width / 2.0f;
        float f7 = this.mStartMotionPath.y;
        float f8 = this.mStartMotionPath.height / 2.0f;
        float fHypot = (float) Math.hypot(f3, f4);
        if (fHypot < 1.0E-7d) {
            return Float.NaN;
        }
        float f9 = f - (f5 + f6);
        float f10 = f2 - (f7 + f8);
        if (((float) Math.hypot(f9, f10)) == 0.0f) {
            return 0.0f;
        }
        float f11 = (f9 * f3) + (f10 * f4);
        switch (i) {
            case 0:
                return f11 / fHypot;
            case 1:
                return (float) Math.sqrt((fHypot * fHypot) - (f11 * f11));
            case 2:
                return f9 / f3;
            case 3:
                return f10 / f3;
            case 4:
                return f9 / f4;
            case 5:
                return f10 / f4;
            default:
                return 0.0f;
        }
    }

    public int getKeyFramePositions(int[] iArr, float[] fArr) {
        int i = 0;
        int i2 = 0;
        for (Key key : this.mKeyList) {
            iArr[i2] = key.mFramePosition + (key.mType * 1000);
            float f = key.mFramePosition / 100.0f;
            this.mSpline[0].getPos(f, this.mInterpolateData);
            this.mStartMotionPath.getCenter(f, this.mInterpolateVariables, this.mInterpolateData, fArr, i);
            i += 2;
            i2++;
        }
        return i2;
    }

    double[] getPos(double d) {
        this.mSpline[0].getPos(d, this.mInterpolateData);
        CurveFit curveFit = this.mArcSpline;
        if (curveFit != null) {
            double[] dArr = this.mInterpolateData;
            if (dArr.length > 0) {
                curveFit.getPos(d, dArr);
            }
        }
        return this.mInterpolateData;
    }

    KeyPositionBase getPositionKeyframe(int i, int i2, float f, float f2) {
        RectF rectF = new RectF();
        rectF.left = this.mStartMotionPath.x;
        rectF.top = this.mStartMotionPath.y;
        rectF.right = rectF.left + this.mStartMotionPath.width;
        rectF.bottom = rectF.top + this.mStartMotionPath.height;
        RectF rectF2 = new RectF();
        rectF2.left = this.mEndMotionPath.x;
        rectF2.top = this.mEndMotionPath.y;
        rectF2.right = rectF2.left + this.mEndMotionPath.width;
        rectF2.bottom = rectF2.top + this.mEndMotionPath.height;
        for (Key key : this.mKeyList) {
            if ((key instanceof KeyPositionBase) && ((KeyPositionBase) key).intersects(i, i2, rectF, rectF2, f, f2)) {
                return (KeyPositionBase) key;
            }
        }
        return null;
    }

    void getPostLayoutDvDp(float f, int i, int i2, float f2, float f3, float[] fArr) {
        float adjustedPosition = getAdjustedPosition(f, this.mVelocity);
        HashMap<String, ViewSpline> map = this.mAttributesMap;
        ViewSpline viewSpline = map == null ? null : map.get(NPStringFog.decode(new byte[]{70, 64, 4, 86, 69, 88, 83, 70, 12, 87, 88, 108}, "22e864", 9.66868298E8d));
        HashMap<String, ViewSpline> map2 = this.mAttributesMap;
        ViewSpline viewSpline2 = map2 == null ? null : map2.get(NPStringFog.decode(new byte[]{67, 64, 0, 92, 22, 15, 86, 70, 8, 93, 11, 58}, "72a2ec", 2.147067225E9d));
        HashMap<String, ViewSpline> map3 = this.mAttributesMap;
        ViewSpline viewSpline3 = map3 == null ? null : map3.get(NPStringFog.decode(new byte[]{23, 91, 70, 4, 76, 12, 10, 90}, "e42e8e", -1.0418435E9f));
        HashMap<String, ViewSpline> map4 = this.mAttributesMap;
        ViewSpline viewSpline4 = map4 == null ? null : map4.get(NPStringFog.decode(new byte[]{75, 87, 0, 92, 85, 97}, "84a009", false));
        HashMap<String, ViewSpline> map5 = this.mAttributesMap;
        ViewSpline viewSpline5 = map5 == null ? null : map5.get(NPStringFog.decode(new byte[]{64, 86, 86, 8, 7, 58}, "357dbc", false, false));
        HashMap<String, ViewOscillator> map6 = this.mCycleMap;
        ViewOscillator viewOscillator = map6 == null ? null : map6.get(NPStringFog.decode(new byte[]{64, 17, 82, 90, 67, 8, 85, 23, 90, 91, 94, 60}, "4c340d", 32000));
        HashMap<String, ViewOscillator> map7 = this.mCycleMap;
        ViewOscillator viewOscillator2 = map7 == null ? null : map7.get(NPStringFog.decode(new byte[]{64, 75, 83, 95, 17, 94, 85, 77, 91, 94, 12, 107}, "4921b2", 1.318008434E9d));
        HashMap<String, ViewOscillator> map8 = this.mCycleMap;
        ViewOscillator viewOscillator3 = map8 == null ? null : map8.get(NPStringFog.decode(new byte[]{74, 95, 22, 85, 16, 95, 87, 94}, "80b4d6", 20007));
        HashMap<String, ViewOscillator> map9 = this.mCycleMap;
        ViewOscillator viewOscillator4 = map9 == null ? null : map9.get(NPStringFog.decode(new byte[]{21, 90, 3, 14, 87, 108}, "f9bb24", false, false));
        HashMap<String, ViewOscillator> map10 = this.mCycleMap;
        ViewOscillator viewOscillator5 = map10 == null ? null : map10.get(NPStringFog.decode(new byte[]{16, 80, 5, 8, 85, 59}, "c3dd0b", true, false));
        VelocityMatrix velocityMatrix = new VelocityMatrix();
        velocityMatrix.clear();
        velocityMatrix.setRotationVelocity(viewSpline3, adjustedPosition);
        velocityMatrix.setTranslationVelocity(viewSpline, viewSpline2, adjustedPosition);
        velocityMatrix.setScaleVelocity(viewSpline4, viewSpline5, adjustedPosition);
        velocityMatrix.setRotationVelocity(viewOscillator3, adjustedPosition);
        velocityMatrix.setTranslationVelocity(viewOscillator, viewOscillator2, adjustedPosition);
        velocityMatrix.setScaleVelocity(viewOscillator4, viewOscillator5, adjustedPosition);
        CurveFit curveFit = this.mArcSpline;
        if (curveFit != null) {
            double[] dArr = this.mInterpolateData;
            if (dArr.length > 0) {
                curveFit.getPos(adjustedPosition, dArr);
                this.mArcSpline.getSlope(adjustedPosition, this.mInterpolateVelocity);
                this.mStartMotionPath.setDpDt(f2, f3, fArr, this.mInterpolateVariables, this.mInterpolateVelocity, this.mInterpolateData);
            }
            velocityMatrix.applyTransform(f2, f3, i, i2, fArr);
            return;
        }
        if (this.mSpline == null) {
            float f4 = this.mEndMotionPath.x - this.mStartMotionPath.x;
            float f5 = this.mEndMotionPath.y - this.mStartMotionPath.y;
            float f6 = this.mEndMotionPath.width;
            float f7 = this.mStartMotionPath.width;
            float f8 = this.mEndMotionPath.height;
            float f9 = this.mStartMotionPath.height;
            fArr[0] = ((f4 + (f6 - f7)) * f2) + ((1.0f - f2) * f4);
            fArr[1] = ((f5 + (f8 - f9)) * f3) + ((1.0f - f3) * f5);
            velocityMatrix.clear();
            velocityMatrix.setRotationVelocity(viewSpline3, adjustedPosition);
            velocityMatrix.setTranslationVelocity(viewSpline, viewSpline2, adjustedPosition);
            velocityMatrix.setScaleVelocity(viewSpline4, viewSpline5, adjustedPosition);
            velocityMatrix.setRotationVelocity(viewOscillator3, adjustedPosition);
            velocityMatrix.setTranslationVelocity(viewOscillator, viewOscillator2, adjustedPosition);
            velocityMatrix.setScaleVelocity(viewOscillator4, viewOscillator5, adjustedPosition);
            velocityMatrix.applyTransform(f2, f3, i, i2, fArr);
            return;
        }
        float adjustedPosition2 = getAdjustedPosition(adjustedPosition, this.mVelocity);
        this.mSpline[0].getSlope(adjustedPosition2, this.mInterpolateVelocity);
        this.mSpline[0].getPos(adjustedPosition2, this.mInterpolateData);
        float f10 = this.mVelocity[0];
        int i3 = 0;
        while (true) {
            double[] dArr2 = this.mInterpolateVelocity;
            if (i3 >= dArr2.length) {
                this.mStartMotionPath.setDpDt(f2, f3, fArr, this.mInterpolateVariables, dArr2, this.mInterpolateData);
                velocityMatrix.applyTransform(f2, f3, i, i2, fArr);
                return;
            } else {
                double d = dArr2[i3];
                double d2 = f10;
                Double.isNaN(d2);
                dArr2[i3] = d * d2;
                i3++;
            }
        }
    }

    public float getStartHeight() {
        return this.mStartMotionPath.height;
    }

    public float getStartWidth() {
        return this.mStartMotionPath.width;
    }

    public float getStartX() {
        return this.mStartMotionPath.x;
    }

    public float getStartY() {
        return this.mStartMotionPath.y;
    }

    public int getTransformPivotTarget() {
        return this.mTransformPivotTarget;
    }

    public View getView() {
        return this.mView;
    }

    boolean interpolate(View view, float f, long j, KeyCache keyCache) {
        boolean pathRotate;
        ViewTimeCycle.PathRotate pathRotate2;
        float adjustedPosition = getAdjustedPosition(f, null);
        if (this.mQuantizeMotionSteps != Key.UNSET) {
            float f2 = 1.0f / this.mQuantizeMotionSteps;
            float fFloor = (float) Math.floor(adjustedPosition / f2);
            float f3 = (adjustedPosition % f2) / f2;
            if (!Float.isNaN(this.mQuantizeMotionPhase)) {
                f3 = (f3 + this.mQuantizeMotionPhase) % 1.0f;
            }
            Interpolator interpolator = this.mQuantizeMotionInterpolator;
            adjustedPosition = ((interpolator != null ? interpolator.getInterpolation(f3) : ((double) f3) > 0.5d ? 1.0f : 0.0f) * f2) + (f2 * fFloor);
        }
        HashMap<String, ViewSpline> map = this.mAttributesMap;
        if (map != null) {
            Iterator<ViewSpline> it = map.values().iterator();
            while (it.hasNext()) {
                it.next().setProperty(view, adjustedPosition);
            }
        }
        HashMap<String, ViewTimeCycle> map2 = this.mTimeCycleAttributesMap;
        if (map2 != null) {
            boolean property = false;
            ViewTimeCycle.PathRotate pathRotate3 = null;
            for (ViewTimeCycle viewTimeCycle : map2.values()) {
                if (viewTimeCycle instanceof ViewTimeCycle.PathRotate) {
                    pathRotate3 = (ViewTimeCycle.PathRotate) viewTimeCycle;
                } else {
                    property |= viewTimeCycle.setProperty(view, adjustedPosition, j, keyCache);
                }
            }
            pathRotate = property;
            pathRotate2 = pathRotate3;
        } else {
            pathRotate = false;
            pathRotate2 = null;
        }
        CurveFit[] curveFitArr = this.mSpline;
        if (curveFitArr != null) {
            curveFitArr[0].getPos(adjustedPosition, this.mInterpolateData);
            this.mSpline[0].getSlope(adjustedPosition, this.mInterpolateVelocity);
            CurveFit curveFit = this.mArcSpline;
            if (curveFit != null) {
                double[] dArr = this.mInterpolateData;
                if (dArr.length > 0) {
                    curveFit.getPos(adjustedPosition, dArr);
                    this.mArcSpline.getSlope(adjustedPosition, this.mInterpolateVelocity);
                }
            }
            if (!this.mNoMovement) {
                this.mStartMotionPath.setView(adjustedPosition, view, this.mInterpolateVariables, this.mInterpolateData, this.mInterpolateVelocity, null, this.mForceMeasure);
                this.mForceMeasure = false;
            }
            if (this.mTransformPivotTarget != Key.UNSET) {
                if (this.mTransformPivotView == null) {
                    this.mTransformPivotView = ((View) view.getParent()).findViewById(this.mTransformPivotTarget);
                }
                if (this.mTransformPivotView != null) {
                    float top = (r1.getTop() + this.mTransformPivotView.getBottom()) / 2.0f;
                    float left = (this.mTransformPivotView.getLeft() + this.mTransformPivotView.getRight()) / 2.0f;
                    if (view.getRight() - view.getLeft() > 0 && view.getBottom() - view.getTop() > 0) {
                        float left2 = view.getLeft();
                        float top2 = view.getTop();
                        view.setPivotX(left - left2);
                        view.setPivotY(top - top2);
                    }
                }
            }
            HashMap<String, ViewSpline> map3 = this.mAttributesMap;
            if (map3 != null) {
                for (ViewSpline viewSpline : map3.values()) {
                    if (viewSpline instanceof ViewSpline.PathRotate) {
                        double[] dArr2 = this.mInterpolateVelocity;
                        if (dArr2.length > 1) {
                            ((ViewSpline.PathRotate) viewSpline).setPathRotate(view, adjustedPosition, dArr2[0], dArr2[1]);
                        }
                    }
                }
            }
            if (pathRotate2 != null) {
                double[] dArr3 = this.mInterpolateVelocity;
                pathRotate |= pathRotate2.setPathRotate(view, keyCache, adjustedPosition, j, dArr3[0], dArr3[1]);
            }
            int i = 1;
            while (true) {
                int i2 = i;
                CurveFit[] curveFitArr2 = this.mSpline;
                if (i2 >= curveFitArr2.length) {
                    break;
                }
                curveFitArr2[i2].getPos(adjustedPosition, this.mValuesBuff);
                this.mStartMotionPath.attributes.get(this.mAttributeNames[i2 - 1]).setInterpolatedValue(view, this.mValuesBuff);
                i = i2 + 1;
            }
            if (this.mStartPoint.mVisibilityMode == 0) {
                if (adjustedPosition <= 0.0f) {
                    view.setVisibility(this.mStartPoint.visibility);
                } else if (adjustedPosition >= 1.0f) {
                    view.setVisibility(this.mEndPoint.visibility);
                } else if (this.mEndPoint.visibility != this.mStartPoint.visibility) {
                    view.setVisibility(0);
                }
            }
            if (this.mKeyTriggers != null) {
                int i3 = 0;
                while (true) {
                    KeyTrigger[] keyTriggerArr = this.mKeyTriggers;
                    if (i3 >= keyTriggerArr.length) {
                        break;
                    }
                    keyTriggerArr[i3].conditionallyFire(adjustedPosition, view);
                    i3++;
                }
            }
        } else {
            float f4 = this.mStartMotionPath.x + ((this.mEndMotionPath.x - this.mStartMotionPath.x) * adjustedPosition);
            float f5 = this.mStartMotionPath.y + ((this.mEndMotionPath.y - this.mStartMotionPath.y) * adjustedPosition);
            int i4 = (int) (0.5f + f4);
            int i5 = (int) (0.5f + f5);
            int i6 = (int) (f4 + 0.5f + this.mStartMotionPath.width + ((this.mEndMotionPath.width - this.mStartMotionPath.width) * adjustedPosition));
            int i7 = (int) (f5 + 0.5f + ((this.mEndMotionPath.height - this.mStartMotionPath.height) * adjustedPosition) + this.mStartMotionPath.height);
            if (this.mEndMotionPath.width != this.mStartMotionPath.width || this.mEndMotionPath.height != this.mStartMotionPath.height || this.mForceMeasure) {
                view.measure(View.MeasureSpec.makeMeasureSpec(i6 - i4, BasicMeasure.EXACTLY), View.MeasureSpec.makeMeasureSpec(i7 - i5, BasicMeasure.EXACTLY));
                this.mForceMeasure = false;
            }
            view.layout(i4, i5, i6, i7);
        }
        HashMap<String, ViewOscillator> map4 = this.mCycleMap;
        if (map4 != null) {
            for (ViewOscillator viewOscillator : map4.values()) {
                if (viewOscillator instanceof ViewOscillator.PathRotateSet) {
                    double[] dArr4 = this.mInterpolateVelocity;
                    ((ViewOscillator.PathRotateSet) viewOscillator).setPathRotate(view, adjustedPosition, dArr4[0], dArr4[1]);
                } else {
                    viewOscillator.setProperty(view, adjustedPosition);
                }
            }
        }
        return pathRotate;
    }

    String name() {
        return this.mView.getContext().getResources().getResourceEntryName(this.mView.getId());
    }

    void positionKeyframe(View view, KeyPositionBase keyPositionBase, float f, float f2, String[] strArr, float[] fArr) {
        RectF rectF = new RectF();
        rectF.left = this.mStartMotionPath.x;
        rectF.top = this.mStartMotionPath.y;
        rectF.right = rectF.left + this.mStartMotionPath.width;
        rectF.bottom = rectF.top + this.mStartMotionPath.height;
        RectF rectF2 = new RectF();
        rectF2.left = this.mEndMotionPath.x;
        rectF2.top = this.mEndMotionPath.y;
        rectF2.right = rectF2.left + this.mEndMotionPath.width;
        rectF2.bottom = rectF2.top + this.mEndMotionPath.height;
        keyPositionBase.positionAttributes(view, rectF, rectF2, f, f2, strArr, fArr);
    }

    public void remeasure() {
        this.mForceMeasure = true;
    }

    void rotate(Rect rect, Rect rect2, int i, int i2, int i3) {
        switch (i) {
            case 1:
                int i4 = rect.left;
                int i5 = rect.right;
                rect2.left = ((rect.top + rect.bottom) - rect.width()) / 2;
                rect2.top = i3 - (((i4 + i5) + rect.height()) / 2);
                rect2.right = rect2.left + rect.width();
                rect2.bottom = rect2.top + rect.height();
                break;
            case 2:
                int i6 = rect.left;
                int i7 = rect.right;
                rect2.left = i2 - (((rect.top + rect.bottom) + rect.width()) / 2);
                rect2.top = ((i6 + i7) - rect.height()) / 2;
                rect2.right = rect2.left + rect.width();
                rect2.bottom = rect2.top + rect.height();
                break;
            case 3:
                int i8 = rect.left + rect.right;
                int i9 = rect.top;
                int i10 = rect.bottom;
                rect2.left = ((rect.height() / 2) + rect.top) - (i8 / 2);
                rect2.top = i3 - ((i8 + rect.height()) / 2);
                rect2.right = rect2.left + rect.width();
                rect2.bottom = rect2.top + rect.height();
                break;
            case 4:
                int i11 = rect.left;
                int i12 = rect.right;
                rect2.left = i2 - (((rect.bottom + rect.top) + rect.width()) / 2);
                rect2.top = ((i11 + i12) - rect.height()) / 2;
                rect2.right = rect2.left + rect.width();
                rect2.bottom = rect2.top + rect.height();
                break;
        }
    }

    void setBothStates(View view) {
        this.mStartMotionPath.time = 0.0f;
        this.mStartMotionPath.position = 0.0f;
        this.mNoMovement = true;
        this.mStartMotionPath.setBounds(view.getX(), view.getY(), view.getWidth(), view.getHeight());
        this.mEndMotionPath.setBounds(view.getX(), view.getY(), view.getWidth(), view.getHeight());
        this.mStartPoint.setState(view);
        this.mEndPoint.setState(view);
    }

    public void setDrawPath(int i) {
        this.mStartMotionPath.mDrawPath = i;
    }

    void setEndState(Rect rect, ConstraintSet constraintSet, int i, int i2) {
        int i3 = constraintSet.mRotate;
        if (i3 != 0) {
            rotate(rect, this.mTempRect, i3, i, i2);
            rect = this.mTempRect;
        }
        this.mEndMotionPath.time = 1.0f;
        this.mEndMotionPath.position = 1.0f;
        readView(this.mEndMotionPath);
        this.mEndMotionPath.setBounds(rect.left, rect.top, rect.width(), rect.height());
        this.mEndMotionPath.applyParameters(constraintSet.getParameters(this.mId));
        this.mEndPoint.setState(rect, constraintSet, i3, this.mId);
    }

    public void setPathMotionArc(int i) {
        this.mPathMotionArc = i;
    }

    void setStartCurrentState(View view) {
        this.mStartMotionPath.time = 0.0f;
        this.mStartMotionPath.position = 0.0f;
        this.mStartMotionPath.setBounds(view.getX(), view.getY(), view.getWidth(), view.getHeight());
        this.mStartPoint.setState(view);
    }

    void setStartState(Rect rect, ConstraintSet constraintSet, int i, int i2) {
        int i3 = constraintSet.mRotate;
        if (i3 != 0) {
            rotate(rect, this.mTempRect, i3, i, i2);
        }
        this.mStartMotionPath.time = 0.0f;
        this.mStartMotionPath.position = 0.0f;
        readView(this.mStartMotionPath);
        this.mStartMotionPath.setBounds(rect.left, rect.top, rect.width(), rect.height());
        ConstraintSet.Constraint parameters = constraintSet.getParameters(this.mId);
        this.mStartMotionPath.applyParameters(parameters);
        this.mMotionStagger = parameters.motion.mMotionStagger;
        this.mStartPoint.setState(rect, constraintSet, i3, this.mId);
        this.mTransformPivotTarget = parameters.transform.transformPivotTarget;
        this.mQuantizeMotionSteps = parameters.motion.mQuantizeMotionSteps;
        this.mQuantizeMotionPhase = parameters.motion.mQuantizeMotionPhase;
        this.mQuantizeMotionInterpolator = getInterpolator(this.mView.getContext(), parameters.motion.mQuantizeInterpolatorType, parameters.motion.mQuantizeInterpolatorString, parameters.motion.mQuantizeInterpolatorID);
    }

    public void setStartState(ViewState viewState, View view, int i, int i2, int i3) {
        this.mStartMotionPath.time = 0.0f;
        this.mStartMotionPath.position = 0.0f;
        Rect rect = new Rect();
        switch (i) {
            case 1:
                int i4 = viewState.left;
                int i5 = viewState.right;
                rect.left = ((viewState.top + viewState.bottom) - viewState.width()) / 2;
                rect.top = i2 - (((i4 + i5) + viewState.height()) / 2);
                rect.right = rect.left + viewState.width();
                rect.bottom = rect.top + viewState.height();
                break;
            case 2:
                int i6 = viewState.left;
                int i7 = viewState.right;
                rect.left = i3 - (((viewState.top + viewState.bottom) + viewState.width()) / 2);
                rect.top = ((i6 + i7) - viewState.height()) / 2;
                rect.right = rect.left + viewState.width();
                rect.bottom = rect.top + viewState.height();
                break;
        }
        this.mStartMotionPath.setBounds(rect.left, rect.top, rect.width(), rect.height());
        this.mStartPoint.setState(rect, view, i, viewState.rotation);
    }

    public void setTransformPivotTarget(int i) {
        this.mTransformPivotTarget = i;
        this.mTransformPivotView = null;
    }

    public void setView(View view) {
        this.mView = view;
        this.mId = view.getId();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ConstraintLayout.LayoutParams) {
            this.mConstraintTag = ((ConstraintLayout.LayoutParams) layoutParams).getConstraintTag();
        }
    }

    public void setup(int i, int i2, float f, long j) {
        ConstraintAttribute constraintAttribute;
        ViewTimeCycle viewTimeCycleMakeSpline;
        ConstraintAttribute constraintAttribute2;
        Integer num;
        ViewSpline viewSplineMakeSpline;
        ConstraintAttribute constraintAttribute3;
        ArrayList arrayList;
        new HashSet();
        HashSet<String> hashSet = new HashSet<>();
        HashSet<String> hashSet2 = new HashSet<>();
        HashSet<String> hashSet3 = new HashSet<>();
        HashMap<String, Integer> map = new HashMap<>();
        ArrayList arrayList2 = null;
        if (this.mPathMotionArc != Key.UNSET) {
            this.mStartMotionPath.mPathMotionArc = this.mPathMotionArc;
        }
        this.mStartPoint.different(this.mEndPoint, hashSet2);
        ArrayList<Key> arrayList3 = this.mKeyList;
        if (arrayList3 != null) {
            for (Key key : arrayList3) {
                if (key instanceof KeyPosition) {
                    KeyPosition keyPosition = (KeyPosition) key;
                    insertKey(new MotionPaths(i, i2, keyPosition, this.mStartMotionPath, this.mEndMotionPath));
                    if (keyPosition.mCurveFit != Key.UNSET) {
                        this.mCurveFitType = keyPosition.mCurveFit;
                    }
                    arrayList = arrayList2;
                } else if (key instanceof KeyCycle) {
                    key.getAttributeNames(hashSet3);
                    arrayList = arrayList2;
                } else if (key instanceof KeyTimeCycle) {
                    key.getAttributeNames(hashSet);
                    arrayList = arrayList2;
                } else if (key instanceof KeyTrigger) {
                    ArrayList arrayList4 = arrayList2 == null ? new ArrayList() : arrayList2;
                    arrayList4.add((KeyTrigger) key);
                    arrayList = arrayList4;
                } else {
                    key.setInterpolation(map);
                    key.getAttributeNames(hashSet2);
                    arrayList = arrayList2;
                }
                arrayList2 = arrayList;
            }
        } else {
            arrayList2 = null;
        }
        if (arrayList2 != null) {
            this.mKeyTriggers = (KeyTrigger[]) arrayList2.toArray(new KeyTrigger[0]);
        }
        if (!hashSet2.isEmpty()) {
            this.mAttributesMap = new HashMap<>();
            for (String str : hashSet2) {
                if (str.startsWith(NPStringFog.decode(new byte[]{112, 99, 100, 100, 127, 124, 31}, "367001", -9688))) {
                    SparseArray sparseArray = new SparseArray();
                    String str2 = str.split(NPStringFog.decode(new byte[]{29}, "16110a", 18698))[1];
                    for (Key key2 : this.mKeyList) {
                        if (key2.mCustomConstraints != null && (constraintAttribute3 = key2.mCustomConstraints.get(str2)) != null) {
                            sparseArray.append(key2.mFramePosition, constraintAttribute3);
                        }
                    }
                    viewSplineMakeSpline = ViewSpline.makeCustomSpline(str, (SparseArray<ConstraintAttribute>) sparseArray);
                } else {
                    viewSplineMakeSpline = ViewSpline.makeSpline(str);
                }
                if (viewSplineMakeSpline != null) {
                    viewSplineMakeSpline.setType(str);
                    this.mAttributesMap.put(str, viewSplineMakeSpline);
                }
            }
            ArrayList<Key> arrayList5 = this.mKeyList;
            if (arrayList5 != null) {
                for (Key key3 : arrayList5) {
                    if (key3 instanceof KeyAttributes) {
                        key3.addValues(this.mAttributesMap);
                    }
                }
            }
            this.mStartPoint.addValues(this.mAttributesMap, 0);
            this.mEndPoint.addValues(this.mAttributesMap, 100);
            for (String str3 : this.mAttributesMap.keySet()) {
                int iIntValue = (!map.containsKey(str3) || (num = map.get(str3)) == null) ? 0 : num.intValue();
                ViewSpline viewSpline = this.mAttributesMap.get(str3);
                if (viewSpline != null) {
                    viewSpline.setup(iIntValue);
                }
            }
        }
        if (!hashSet.isEmpty()) {
            if (this.mTimeCycleAttributesMap == null) {
                this.mTimeCycleAttributesMap = new HashMap<>();
            }
            for (String str4 : hashSet) {
                if (!this.mTimeCycleAttributesMap.containsKey(str4)) {
                    if (str4.startsWith(NPStringFog.decode(new byte[]{38, 99, 103, 101, 42, 121, 73}, "e641e4", false, false))) {
                        SparseArray sparseArray2 = new SparseArray();
                        String str5 = str4.split(NPStringFog.decode(new byte[]{24}, "4e553d", -2.41480866E8d))[1];
                        for (Key key4 : this.mKeyList) {
                            if (key4.mCustomConstraints != null && (constraintAttribute2 = key4.mCustomConstraints.get(str5)) != null) {
                                sparseArray2.append(key4.mFramePosition, constraintAttribute2);
                            }
                        }
                        viewTimeCycleMakeSpline = ViewTimeCycle.makeCustomSpline(str4, sparseArray2);
                    } else {
                        viewTimeCycleMakeSpline = ViewTimeCycle.makeSpline(str4, j);
                    }
                    if (viewTimeCycleMakeSpline != null) {
                        viewTimeCycleMakeSpline.setType(str4);
                        this.mTimeCycleAttributesMap.put(str4, viewTimeCycleMakeSpline);
                    }
                }
            }
            ArrayList<Key> arrayList6 = this.mKeyList;
            if (arrayList6 != null) {
                for (Key key5 : arrayList6) {
                    if (key5 instanceof KeyTimeCycle) {
                        ((KeyTimeCycle) key5).addTimeValues(this.mTimeCycleAttributesMap);
                    }
                }
            }
            for (String str6 : this.mTimeCycleAttributesMap.keySet()) {
                int iIntValue2 = 0;
                if (map.containsKey(str6)) {
                    iIntValue2 = map.get(str6).intValue();
                }
                this.mTimeCycleAttributesMap.get(str6).setup(iIntValue2);
            }
        }
        MotionPaths[] motionPathsArr = new MotionPaths[this.mMotionPaths.size() + 2];
        int i3 = 1;
        motionPathsArr[0] = this.mStartMotionPath;
        motionPathsArr[motionPathsArr.length - 1] = this.mEndMotionPath;
        if (this.mMotionPaths.size() > 0 && this.mCurveFitType == -1) {
            this.mCurveFitType = 0;
        }
        Iterator<MotionPaths> it = this.mMotionPaths.iterator();
        while (true) {
            int i4 = i3;
            if (!it.hasNext()) {
                break;
            }
            motionPathsArr[i4] = it.next();
            i3 = i4 + 1;
        }
        HashSet hashSet4 = new HashSet();
        for (String str7 : this.mEndMotionPath.attributes.keySet()) {
            if (this.mStartMotionPath.attributes.containsKey(str7)) {
                String strValueOf = String.valueOf(str7);
                if (!hashSet2.contains(strValueOf.length() != 0 ? NPStringFog.decode(new byte[]{119, 49, 102, 100, 122, 127, 24}, "4d5052", -1462493830L).concat(strValueOf) : new String(NPStringFog.decode(new byte[]{112, 98, 103, 99, 118, 120, 31}, "374795", -1.902876745E9d)))) {
                    hashSet4.add(str7);
                }
            }
        }
        String[] strArr = (String[]) hashSet4.toArray(new String[0]);
        this.mAttributeNames = strArr;
        this.mAttributeInterpolatorCount = new int[strArr.length];
        int i5 = 0;
        while (true) {
            int i6 = i5;
            String[] strArr2 = this.mAttributeNames;
            if (i6 >= strArr2.length) {
                break;
            }
            String str8 = strArr2[i6];
            this.mAttributeInterpolatorCount[i6] = 0;
            int i7 = 0;
            while (true) {
                int i8 = i7;
                if (i8 >= motionPathsArr.length) {
                    break;
                }
                if (motionPathsArr[i8].attributes.containsKey(str8) && (constraintAttribute = motionPathsArr[i8].attributes.get(str8)) != null) {
                    int[] iArr = this.mAttributeInterpolatorCount;
                    iArr[i6] = constraintAttribute.numberOfInterpolatedValues() + iArr[i6];
                    break;
                }
                i7 = i8 + 1;
            }
            i5 = i6 + 1;
        }
        boolean z = motionPathsArr[0].mPathMotionArc != Key.UNSET;
        boolean[] zArr = new boolean[this.mAttributeNames.length + 18];
        for (int i9 = 1; i9 < motionPathsArr.length; i9++) {
            motionPathsArr[i9].different(motionPathsArr[i9 - 1], zArr, this.mAttributeNames, z);
        }
        int i10 = 0;
        for (int i11 = 1; i11 < zArr.length; i11++) {
            if (zArr[i11]) {
                i10++;
            }
        }
        this.mInterpolateVariables = new int[i10];
        int iMax = Math.max(2, i10);
        this.mInterpolateData = new double[iMax];
        this.mInterpolateVelocity = new double[iMax];
        int i12 = 0;
        for (int i13 = 1; i13 < zArr.length; i13++) {
            if (zArr[i13]) {
                this.mInterpolateVariables[i12] = i13;
                i12++;
            }
        }
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, motionPathsArr.length, this.mInterpolateVariables.length);
        double[] dArr2 = new double[motionPathsArr.length];
        for (int i14 = 0; i14 < motionPathsArr.length; i14++) {
            motionPathsArr[i14].fillStandard(dArr[i14], this.mInterpolateVariables);
            dArr2[i14] = motionPathsArr[i14].time;
        }
        int i15 = 0;
        while (true) {
            int i16 = i15;
            int[] iArr2 = this.mInterpolateVariables;
            if (i16 >= iArr2.length) {
                break;
            }
            if (iArr2[i16] < MotionPaths.names.length) {
                String strConcat = String.valueOf(MotionPaths.names[this.mInterpolateVariables[i16]]).concat(NPStringFog.decode(new byte[]{25, 109}, "96c669", 1.466678203E9d));
                for (int i17 = 0; i17 < motionPathsArr.length; i17++) {
                    String strValueOf2 = String.valueOf(strConcat);
                    double d = dArr[i17][i16];
                    StringBuilder sb = new StringBuilder(String.valueOf(strValueOf2).length() + 24);
                    sb.append(strValueOf2);
                    sb.append(d);
                    strConcat = sb.toString();
                }
            }
            i15 = i16 + 1;
        }
        this.mSpline = new CurveFit[this.mAttributeNames.length + 1];
        int i18 = 0;
        while (true) {
            int i19 = i18;
            String[] strArr3 = this.mAttributeNames;
            if (i19 >= strArr3.length) {
                break;
            }
            int i20 = 0;
            double[][] dArr3 = null;
            double[] dArr4 = null;
            String str9 = strArr3[i19];
            int i21 = 0;
            while (i21 < motionPathsArr.length) {
                if (motionPathsArr[i21].hasCustomData(str9)) {
                    if (dArr3 == null) {
                        dArr4 = new double[motionPathsArr.length];
                        dArr3 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, motionPathsArr.length, motionPathsArr[i21].getCustomDataCount(str9));
                    }
                    dArr4[i20] = motionPathsArr[i21].time;
                    motionPathsArr[i21].getCustomData(str9, dArr3[i20], 0);
                    i20++;
                }
                i21++;
                dArr3 = dArr3;
                dArr4 = dArr4;
                i20 = i20;
            }
            this.mSpline[i19 + 1] = CurveFit.get(this.mCurveFitType, Arrays.copyOf(dArr4, i20), (double[][]) Arrays.copyOf(dArr3, i20));
            i18 = i19 + 1;
        }
        this.mSpline[0] = CurveFit.get(this.mCurveFitType, dArr2, dArr);
        if (motionPathsArr[0].mPathMotionArc != Key.UNSET) {
            int length = motionPathsArr.length;
            int[] iArr3 = new int[length];
            double[] dArr5 = new double[length];
            double[][] dArr6 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, length, 2);
            for (int i22 = 0; i22 < length; i22++) {
                iArr3[i22] = motionPathsArr[i22].mPathMotionArc;
                dArr5[i22] = motionPathsArr[i22].time;
                dArr6[i22][0] = motionPathsArr[i22].x;
                dArr6[i22][1] = motionPathsArr[i22].y;
            }
            this.mArcSpline = CurveFit.getArc(iArr3, dArr5, dArr6);
        }
        this.mCycleMap = new HashMap<>();
        if (this.mKeyList != null) {
            float preCycleDistance = Float.NaN;
            for (String str10 : hashSet3) {
                ViewOscillator viewOscillatorMakeSpline = ViewOscillator.makeSpline(str10);
                if (viewOscillatorMakeSpline != null) {
                    if (viewOscillatorMakeSpline.variesByPath() && Float.isNaN(preCycleDistance)) {
                        preCycleDistance = getPreCycleDistance();
                    }
                    viewOscillatorMakeSpline.setType(str10);
                    this.mCycleMap.put(str10, viewOscillatorMakeSpline);
                }
            }
            for (Key key6 : this.mKeyList) {
                if (key6 instanceof KeyCycle) {
                    ((KeyCycle) key6).addCycleValues(this.mCycleMap);
                }
            }
            Iterator<ViewOscillator> it2 = this.mCycleMap.values().iterator();
            while (it2.hasNext()) {
                it2.next().setup(preCycleDistance);
            }
        }
    }

    public void setupRelative(MotionController motionController) {
        this.mStartMotionPath.setupRelative(motionController, motionController.mStartMotionPath);
        this.mEndMotionPath.setupRelative(motionController, motionController.mEndMotionPath);
    }

    public String toString() {
        float f = this.mStartMotionPath.x;
        float f2 = this.mStartMotionPath.y;
        float f3 = this.mEndMotionPath.x;
        float f4 = this.mEndMotionPath.y;
        StringBuilder sb = new StringBuilder(88);
        sb.append(NPStringFog.decode(new byte[]{68, 71, 66, 83, 20, 66, 94, 20, 78, 8, 70}, "d462f6", 872844768L));
        sb.append(f);
        sb.append(NPStringFog.decode(new byte[]{22, 77, 8, 65}, "642a1e", true, false));
        sb.append(f2);
        sb.append(NPStringFog.decode(new byte[]{21, 1, 15, 6, 8, 66, 77, 94, 65}, "5dab2b", 1.5545733E9f));
        sb.append(f3);
        sb.append(NPStringFog.decode(new byte[]{25, 27, 2, 21}, "9b85db", -8.6302074E8f));
        sb.append(f4);
        return sb.toString();
    }
}
