package androidx.constraintlayout.core.motion;

import androidx.constraintlayout.core.motion.key.MotionKey;
import androidx.constraintlayout.core.motion.key.MotionKeyAttributes;
import androidx.constraintlayout.core.motion.key.MotionKeyCycle;
import androidx.constraintlayout.core.motion.key.MotionKeyPosition;
import androidx.constraintlayout.core.motion.key.MotionKeyTimeCycle;
import androidx.constraintlayout.core.motion.key.MotionKeyTrigger;
import androidx.constraintlayout.core.motion.utils.CurveFit;
import androidx.constraintlayout.core.motion.utils.DifferentialInterpolator;
import androidx.constraintlayout.core.motion.utils.Easing;
import androidx.constraintlayout.core.motion.utils.FloatRect;
import androidx.constraintlayout.core.motion.utils.KeyCache;
import androidx.constraintlayout.core.motion.utils.KeyCycleOscillator;
import androidx.constraintlayout.core.motion.utils.KeyFrameArray;
import androidx.constraintlayout.core.motion.utils.Rect;
import androidx.constraintlayout.core.motion.utils.SplineSet;
import androidx.constraintlayout.core.motion.utils.TimeCycleSplineSet;
import androidx.constraintlayout.core.motion.utils.Utils;
import androidx.constraintlayout.core.motion.utils.VelocityMatrix;
import androidx.constraintlayout.core.motion.utils.ViewState;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import n.NPStringFog;

/* JADX INFO: loaded from: classes40.dex */
public class Motion {
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
    private static final String TAG = NPStringFog.decode(new byte[]{41, 88, 67, 92, 11, 94, 39, 88, 89, 65, 22, 95, 8, 91, 82, 71}, "d775d0", false, false);
    public static final int VERTICAL_PATH_X = 4;
    public static final int VERTICAL_PATH_Y = 5;
    String[] attributeTable;
    private CurveFit mArcSpline;
    private int[] mAttributeInterpolatorCount;
    private String[] mAttributeNames;
    private HashMap<String, SplineSet> mAttributesMap;
    String mConstraintTag;
    float mCurrentCenterX;
    float mCurrentCenterY;
    private HashMap<String, KeyCycleOscillator> mCycleMap;
    int mId;
    private double[] mInterpolateData;
    private int[] mInterpolateVariables;
    private double[] mInterpolateVelocity;
    private MotionKeyTrigger[] mKeyTriggers;
    private CurveFit[] mSpline;
    private HashMap<String, TimeCycleSplineSet> mTimeCycleAttributesMap;
    MotionWidget mView;
    Rect mTempRect = new Rect();
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
    private ArrayList<MotionKey> mKeyList = new ArrayList<>();
    private int mPathMotionArc = -1;
    private int mTransformPivotTarget = -1;
    private MotionWidget mTransformPivotView = null;
    private int mQuantizeMotionSteps = -1;
    private float mQuantizeMotionPhase = Float.NaN;
    private DifferentialInterpolator mQuantizeMotionInterpolator = null;
    private boolean mNoMovement = false;

    public Motion(MotionWidget motionWidget) {
        setView(motionWidget);
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

    private static DifferentialInterpolator getInterpolator(int i, String str, int i2) {
        switch (i) {
            case -1:
                return new DifferentialInterpolator(Easing.getInterpolator(str)) { // from class: androidx.constraintlayout.core.motion.Motion.1
                    float mX;
                    final Easing val$easing;

                    {
                        this.val$easing = easing;
                    }

                    @Override // androidx.constraintlayout.core.motion.utils.DifferentialInterpolator
                    public float getInterpolation(float f) {
                        this.mX = f;
                        return (float) this.val$easing.get(f);
                    }

                    @Override // androidx.constraintlayout.core.motion.utils.DifferentialInterpolator
                    public float getVelocity() {
                        return (float) this.val$easing.getDiff(this.mX);
                    }
                };
            default:
                return null;
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
        MotionPaths motionPaths2 = null;
        for (MotionPaths motionPaths3 : this.mMotionPaths) {
            if (motionPaths.position != motionPaths3.position) {
                motionPaths3 = motionPaths2;
            }
            motionPaths2 = motionPaths3;
        }
        if (motionPaths2 != null) {
            this.mMotionPaths.remove(motionPaths2);
        }
        if (Collections.binarySearch(this.mMotionPaths, motionPaths) == 0) {
            Utils.loge(TAG, NPStringFog.decode(new byte[]{67, 120, 83, 75, 101, 89, 23, 91, 22, 66, 90, 75, 10, 71, 95, 93, 91, 24, 65}, "c36258", 21896) + motionPaths.position + NPStringFog.decode(new byte[]{22, 22, 95, 66, 67, 22, 93, 82, 85, 23, 88, 3, 20, 68, 81, 89, 80, 0}, "46077e", true, true));
        }
        this.mMotionPaths.add((-r0) - 1, motionPaths);
    }

    private void readView(MotionPaths motionPaths) {
        motionPaths.setBounds(this.mView.getX(), this.mView.getY(), this.mView.getWidth(), this.mView.getHeight());
    }

    public void addKey(MotionKey motionKey) {
        this.mKeyList.add(motionKey);
    }

    void addKeys(ArrayList<MotionKey> arrayList) {
        this.mKeyList.addAll(arrayList);
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x0120 A[PHI: r0
      0x0120: PHI (r0v16 float) = (r0v15 float), (r0v33 float), (r0v33 float) binds: [B:13:0x0023, B:18:0x002e, B:20:0x0035] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void buildBounds(float[] r13, int r14) {
        /*
            Method dump skipped, instruction units count: 332
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.motion.Motion.buildBounds(float[], int):void");
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

    public int buildKeyFrames(float[] fArr, int[] iArr, int[] iArr2) {
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
        if (iArr2 != null) {
            Iterator<MotionPaths> it2 = this.mMotionPaths.iterator();
            int i2 = 0;
            while (it2.hasNext()) {
                iArr2[i2] = (int) (it2.next().position * 100.0f);
                i2++;
            }
        }
        int i3 = 0;
        for (int i4 = 0; i4 < timePoints.length; i4++) {
            this.mSpline[0].getPos(timePoints[i4], this.mInterpolateData);
            this.mStartMotionPath.getCenter(timePoints[i4], this.mInterpolateVariables, this.mInterpolateData, fArr, i3);
            i3 += 2;
        }
        return i3 / 2;
    }

    /* JADX WARN: Removed duplicated region for block: B:67:0x018e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void buildPath(float[] r19, int r20) {
        /*
            Method dump skipped, instruction units count: 444
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.motion.Motion.buildPath(float[], int):void");
    }

    public void buildRect(float f, float[] fArr, int i) {
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
    }

    public int getAnimateRelativeTo() {
        return this.mStartMotionPath.mAnimateRelativeTo;
    }

    int getAttributeValues(String str, float[] fArr, int i) {
        float f = 1.0f / (i - 1);
        SplineSet splineSet = this.mAttributesMap.get(str);
        if (splineSet == null) {
            return -1;
        }
        for (int i2 = 0; i2 < fArr.length; i2++) {
            fArr[i2] = splineSet.get(i2 / (fArr.length - 1));
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

    public MotionPaths getKeyFrame(int i) {
        return this.mMotionPaths.get(i);
    }

    public int getKeyFrameInfo(int i, int[] iArr) {
        float[] fArr = new float[2];
        int i2 = 0;
        int i3 = 0;
        for (MotionKey motionKey : this.mKeyList) {
            if (motionKey.mType == i || i != -1) {
                iArr[i2] = 0;
                int i4 = i2 + 1;
                iArr[i4] = motionKey.mType;
                int i5 = i4 + 1;
                iArr[i5] = motionKey.mFramePosition;
                float f = motionKey.mFramePosition / 100.0f;
                this.mSpline[0].getPos(f, this.mInterpolateData);
                this.mStartMotionPath.getCenter(f, this.mInterpolateVariables, this.mInterpolateData, fArr, 0);
                int i6 = i5 + 1;
                iArr[i6] = Float.floatToIntBits(fArr[0]);
                int i7 = i6 + 1;
                iArr[i7] = Float.floatToIntBits(fArr[1]);
                if (motionKey instanceof MotionKeyPosition) {
                    MotionKeyPosition motionKeyPosition = (MotionKeyPosition) motionKey;
                    int i8 = i7 + 1;
                    iArr[i8] = motionKeyPosition.mPositionType;
                    int i9 = i8 + 1;
                    iArr[i9] = Float.floatToIntBits(motionKeyPosition.mPercentX);
                    i7 = i9 + 1;
                    iArr[i7] = Float.floatToIntBits(motionKeyPosition.mPercentY);
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
        for (MotionKey motionKey : this.mKeyList) {
            iArr[i2] = motionKey.mFramePosition + (motionKey.mType * 1000);
            float f = motionKey.mFramePosition / 100.0f;
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

    MotionKeyPosition getPositionKeyframe(int i, int i2, float f, float f2) {
        FloatRect floatRect = new FloatRect();
        floatRect.left = this.mStartMotionPath.x;
        floatRect.top = this.mStartMotionPath.y;
        floatRect.right = floatRect.left + this.mStartMotionPath.width;
        floatRect.bottom = floatRect.top + this.mStartMotionPath.height;
        FloatRect floatRect2 = new FloatRect();
        floatRect2.left = this.mEndMotionPath.x;
        floatRect2.top = this.mEndMotionPath.y;
        floatRect2.right = floatRect2.left + this.mEndMotionPath.width;
        floatRect2.bottom = floatRect2.top + this.mEndMotionPath.height;
        for (MotionKey motionKey : this.mKeyList) {
            if ((motionKey instanceof MotionKeyPosition) && ((MotionKeyPosition) motionKey).intersects(i, i2, floatRect, floatRect2, f, f2)) {
                return (MotionKeyPosition) motionKey;
            }
        }
        return null;
    }

    void getPostLayoutDvDp(float f, int i, int i2, float f2, float f3, float[] fArr) {
        float adjustedPosition = getAdjustedPosition(f, this.mVelocity);
        HashMap<String, SplineSet> map = this.mAttributesMap;
        SplineSet splineSet = map == null ? null : map.get(NPStringFog.decode(new byte[]{66, 67, 86, 90, 67, 9, 87, 69, 94, 91, 94, 61}, "61740e", true, false));
        HashMap<String, SplineSet> map2 = this.mAttributesMap;
        SplineSet splineSet2 = map2 == null ? null : map2.get(NPStringFog.decode(new byte[]{64, 74, 2, 87, 71, 91, 85, 76, 10, 86, 90, 110}, "48c947", -1.310180332E9d));
        HashMap<String, SplineSet> map3 = this.mAttributesMap;
        SplineSet splineSet3 = map3 == null ? null : map3.get(NPStringFog.decode(new byte[]{71, 89, 64, 84, 22, 10, 90, 88, 110}, "5645bc", 2.070062999E9d));
        HashMap<String, SplineSet> map4 = this.mAttributesMap;
        SplineSet splineSet4 = map4 == null ? null : map4.get(NPStringFog.decode(new byte[]{68, 84, 85, 94, 93, 58}, "77428b", 6766119.0f));
        HashMap<String, SplineSet> map5 = this.mAttributesMap;
        SplineSet splineSet5 = map5 == null ? null : map5.get(NPStringFog.decode(new byte[]{21, 90, 86, 15, 82, 97}, "f97c78", 1.698046193E9d));
        HashMap<String, KeyCycleOscillator> map6 = this.mCycleMap;
        KeyCycleOscillator keyCycleOscillator = map6 == null ? null : map6.get(NPStringFog.decode(new byte[]{77, 70, 5, 90, 22, 94, 88, 64, 13, 91, 11, 106}, "94d4e2", false));
        HashMap<String, KeyCycleOscillator> map7 = this.mCycleMap;
        KeyCycleOscillator keyCycleOscillator2 = map7 == null ? null : map7.get(NPStringFog.decode(new byte[]{16, 66, 3, 11, 70, 95, 5, 68, 11, 10, 91, 106}, "d0be53", -1.3995694E8f));
        HashMap<String, KeyCycleOscillator> map8 = this.mCycleMap;
        KeyCycleOscillator keyCycleOscillator3 = map8 == null ? null : map8.get(NPStringFog.decode(new byte[]{22, 91, 77, 86, 23, 8, 11, 90, 99}, "d497ca", 1420158899L));
        HashMap<String, KeyCycleOscillator> map9 = this.mCycleMap;
        KeyCycleOscillator keyCycleOscillator4 = map9 == null ? null : map9.get(NPStringFog.decode(new byte[]{69, 87, 81, 14, 1, 108}, "640bd4", -2001342615L));
        HashMap<String, KeyCycleOscillator> map10 = this.mCycleMap;
        KeyCycleOscillator keyCycleOscillator5 = map10 == null ? null : map10.get(NPStringFog.decode(new byte[]{66, 84, 88, 88, 81, 110}, "179447", -1.970531743E9d));
        VelocityMatrix velocityMatrix = new VelocityMatrix();
        velocityMatrix.clear();
        velocityMatrix.setRotationVelocity(splineSet3, adjustedPosition);
        velocityMatrix.setTranslationVelocity(splineSet, splineSet2, adjustedPosition);
        velocityMatrix.setScaleVelocity(splineSet4, splineSet5, adjustedPosition);
        velocityMatrix.setRotationVelocity(keyCycleOscillator3, adjustedPosition);
        velocityMatrix.setTranslationVelocity(keyCycleOscillator, keyCycleOscillator2, adjustedPosition);
        velocityMatrix.setScaleVelocity(keyCycleOscillator4, keyCycleOscillator5, adjustedPosition);
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
            velocityMatrix.setRotationVelocity(splineSet3, adjustedPosition);
            velocityMatrix.setTranslationVelocity(splineSet, splineSet2, adjustedPosition);
            velocityMatrix.setScaleVelocity(splineSet4, splineSet5, adjustedPosition);
            velocityMatrix.setRotationVelocity(keyCycleOscillator3, adjustedPosition);
            velocityMatrix.setTranslationVelocity(keyCycleOscillator, keyCycleOscillator2, adjustedPosition);
            velocityMatrix.setScaleVelocity(keyCycleOscillator4, keyCycleOscillator5, adjustedPosition);
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

    public MotionWidget getView() {
        return this.mView;
    }

    public boolean interpolate(MotionWidget motionWidget, float f, long j, KeyCache keyCache) {
        float adjustedPosition = getAdjustedPosition(f, null);
        int i = this.mQuantizeMotionSteps;
        if (i != -1) {
            float f2 = 1.0f / i;
            float fFloor = (float) Math.floor(adjustedPosition / f2);
            float f3 = (adjustedPosition % f2) / f2;
            if (!Float.isNaN(this.mQuantizeMotionPhase)) {
                f3 = (f3 + this.mQuantizeMotionPhase) % 1.0f;
            }
            DifferentialInterpolator differentialInterpolator = this.mQuantizeMotionInterpolator;
            adjustedPosition = (fFloor * f2) + ((differentialInterpolator != null ? differentialInterpolator.getInterpolation(f3) : ((double) f3) > 0.5d ? 1.0f : 0.0f) * f2);
        }
        HashMap<String, SplineSet> map = this.mAttributesMap;
        if (map != null) {
            Iterator<SplineSet> it = map.values().iterator();
            while (it.hasNext()) {
                it.next().setProperty(motionWidget, adjustedPosition);
            }
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
                this.mStartMotionPath.setView(adjustedPosition, motionWidget, this.mInterpolateVariables, this.mInterpolateData, this.mInterpolateVelocity, null);
            }
            if (this.mTransformPivotTarget != -1) {
                if (this.mTransformPivotView == null) {
                    this.mTransformPivotView = motionWidget.getParent().findViewById(this.mTransformPivotTarget);
                }
                if (this.mTransformPivotView != null) {
                    float top = (r0.getTop() + this.mTransformPivotView.getBottom()) / 2.0f;
                    float left = (this.mTransformPivotView.getLeft() + this.mTransformPivotView.getRight()) / 2.0f;
                    if (motionWidget.getRight() - motionWidget.getLeft() > 0 && motionWidget.getBottom() - motionWidget.getTop() > 0) {
                        float left2 = motionWidget.getLeft();
                        float top2 = motionWidget.getTop();
                        motionWidget.setPivotX(left - left2);
                        motionWidget.setPivotY(top - top2);
                    }
                }
            }
            int i2 = 1;
            while (true) {
                int i3 = i2;
                CurveFit[] curveFitArr2 = this.mSpline;
                if (i3 >= curveFitArr2.length) {
                    break;
                }
                curveFitArr2[i3].getPos(adjustedPosition, this.mValuesBuff);
                this.mStartMotionPath.customAttributes.get(this.mAttributeNames[i3 - 1]).setInterpolatedValue(motionWidget, this.mValuesBuff);
                i2 = i3 + 1;
            }
            if (this.mStartPoint.mVisibilityMode == 0) {
                if (adjustedPosition <= 0.0f) {
                    motionWidget.setVisibility(this.mStartPoint.visibility);
                } else if (adjustedPosition >= 1.0f) {
                    motionWidget.setVisibility(this.mEndPoint.visibility);
                } else if (this.mEndPoint.visibility != this.mStartPoint.visibility) {
                    motionWidget.setVisibility(4);
                }
            }
            if (this.mKeyTriggers != null) {
                int i4 = 0;
                while (true) {
                    MotionKeyTrigger[] motionKeyTriggerArr = this.mKeyTriggers;
                    if (i4 >= motionKeyTriggerArr.length) {
                        break;
                    }
                    motionKeyTriggerArr[i4].conditionallyFire(adjustedPosition, motionWidget);
                    i4++;
                }
            }
        } else {
            float f4 = this.mStartMotionPath.x + ((this.mEndMotionPath.x - this.mStartMotionPath.x) * adjustedPosition);
            float f5 = this.mStartMotionPath.y + ((this.mEndMotionPath.y - this.mStartMotionPath.y) * adjustedPosition);
            motionWidget.layout((int) (0.5f + f4), (int) (0.5f + f5), (int) (f4 + 0.5f + this.mStartMotionPath.width + ((this.mEndMotionPath.width - this.mStartMotionPath.width) * adjustedPosition)), (int) (f5 + 0.5f + ((this.mEndMotionPath.height - this.mStartMotionPath.height) * adjustedPosition) + this.mStartMotionPath.height));
        }
        HashMap<String, KeyCycleOscillator> map2 = this.mCycleMap;
        if (map2 == null) {
            return false;
        }
        for (KeyCycleOscillator keyCycleOscillator : map2.values()) {
            if (keyCycleOscillator instanceof KeyCycleOscillator.PathRotateSet) {
                KeyCycleOscillator.PathRotateSet pathRotateSet = (KeyCycleOscillator.PathRotateSet) keyCycleOscillator;
                double[] dArr2 = this.mInterpolateVelocity;
                pathRotateSet.setPathRotate(motionWidget, adjustedPosition, dArr2[0], dArr2[1]);
            } else {
                keyCycleOscillator.setProperty(motionWidget, adjustedPosition);
            }
        }
        return false;
    }

    String name() {
        return this.mView.getName();
    }

    void positionKeyframe(MotionWidget motionWidget, MotionKeyPosition motionKeyPosition, float f, float f2, String[] strArr, float[] fArr) {
        FloatRect floatRect = new FloatRect();
        floatRect.left = this.mStartMotionPath.x;
        floatRect.top = this.mStartMotionPath.y;
        floatRect.right = floatRect.left + this.mStartMotionPath.width;
        floatRect.bottom = floatRect.top + this.mStartMotionPath.height;
        FloatRect floatRect2 = new FloatRect();
        floatRect2.left = this.mEndMotionPath.x;
        floatRect2.top = this.mEndMotionPath.y;
        floatRect2.right = floatRect2.left + this.mEndMotionPath.width;
        floatRect2.bottom = floatRect2.top + this.mEndMotionPath.height;
        motionKeyPosition.positionAttributes(motionWidget, floatRect, floatRect2, f, f2, strArr, fArr);
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

    void setBothStates(MotionWidget motionWidget) {
        this.mStartMotionPath.time = 0.0f;
        this.mStartMotionPath.position = 0.0f;
        this.mNoMovement = true;
        this.mStartMotionPath.setBounds(motionWidget.getX(), motionWidget.getY(), motionWidget.getWidth(), motionWidget.getHeight());
        this.mEndMotionPath.setBounds(motionWidget.getX(), motionWidget.getY(), motionWidget.getWidth(), motionWidget.getHeight());
        this.mStartPoint.setState(motionWidget);
        this.mEndPoint.setState(motionWidget);
    }

    public void setDrawPath(int i) {
        this.mStartMotionPath.mDrawPath = i;
    }

    public void setEnd(MotionWidget motionWidget) {
        this.mEndMotionPath.time = 1.0f;
        this.mEndMotionPath.position = 1.0f;
        readView(this.mEndMotionPath);
        this.mEndMotionPath.setBounds(motionWidget.getLeft(), motionWidget.getTop(), motionWidget.getWidth(), motionWidget.getHeight());
        this.mEndMotionPath.applyParameters(motionWidget);
        this.mEndPoint.setState(motionWidget);
    }

    public void setPathMotionArc(int i) {
        this.mPathMotionArc = i;
    }

    public void setStart(MotionWidget motionWidget) {
        this.mStartMotionPath.time = 0.0f;
        this.mStartMotionPath.position = 0.0f;
        this.mStartMotionPath.setBounds(motionWidget.getX(), motionWidget.getY(), motionWidget.getWidth(), motionWidget.getHeight());
        this.mStartMotionPath.applyParameters(motionWidget);
        this.mStartPoint.setState(motionWidget);
    }

    public void setStartState(ViewState viewState, MotionWidget motionWidget, int i, int i2, int i3) {
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
        this.mStartPoint.setState(rect, motionWidget, i, viewState.rotation);
    }

    public void setTransformPivotTarget(int i) {
        this.mTransformPivotTarget = i;
        this.mTransformPivotView = null;
    }

    public void setView(MotionWidget motionWidget) {
        this.mView = motionWidget;
    }

    public void setup(int i, int i2, float f, long j) {
        CustomVariable customVariable;
        SplineSet splineSetMakeSpline;
        CustomVariable customVariable2;
        Integer num;
        SplineSet splineSetMakeSpline2;
        CustomVariable customVariable3;
        ArrayList arrayList;
        new HashSet();
        HashSet<String> hashSet = new HashSet<>();
        HashSet<String> hashSet2 = new HashSet<>();
        HashSet<String> hashSet3 = new HashSet<>();
        HashMap<String, Integer> map = new HashMap<>();
        ArrayList arrayList2 = null;
        int i3 = this.mPathMotionArc;
        if (i3 != -1) {
            this.mStartMotionPath.mPathMotionArc = i3;
        }
        this.mStartPoint.different(this.mEndPoint, hashSet2);
        ArrayList<MotionKey> arrayList3 = this.mKeyList;
        if (arrayList3 != null) {
            for (MotionKey motionKey : arrayList3) {
                if (motionKey instanceof MotionKeyPosition) {
                    MotionKeyPosition motionKeyPosition = (MotionKeyPosition) motionKey;
                    insertKey(new MotionPaths(i, i2, motionKeyPosition, this.mStartMotionPath, this.mEndMotionPath));
                    if (motionKeyPosition.mCurveFit != -1) {
                        this.mCurveFitType = motionKeyPosition.mCurveFit;
                    }
                    arrayList = arrayList2;
                } else if (motionKey instanceof MotionKeyCycle) {
                    motionKey.getAttributeNames(hashSet3);
                    arrayList = arrayList2;
                } else if (motionKey instanceof MotionKeyTimeCycle) {
                    motionKey.getAttributeNames(hashSet);
                    arrayList = arrayList2;
                } else if (motionKey instanceof MotionKeyTrigger) {
                    ArrayList arrayList4 = arrayList2 == null ? new ArrayList() : arrayList2;
                    arrayList4.add((MotionKeyTrigger) motionKey);
                    arrayList = arrayList4;
                } else {
                    motionKey.setInterpolation(map);
                    motionKey.getAttributeNames(hashSet2);
                    arrayList = arrayList2;
                }
                arrayList2 = arrayList;
            }
        } else {
            arrayList2 = null;
        }
        if (arrayList2 != null) {
            this.mKeyTriggers = (MotionKeyTrigger[]) arrayList2.toArray(new MotionKeyTrigger[0]);
        }
        if (!hashSet2.isEmpty()) {
            this.mAttributesMap = new HashMap<>();
            for (String str : hashSet2) {
                if (str.startsWith(NPStringFog.decode(new byte[]{117, 52, 103, 100, 118, 126, 26}, "6a4093", -1.0164307E9f))) {
                    KeyFrameArray.CustomVar customVar = new KeyFrameArray.CustomVar();
                    String str2 = str.split(NPStringFog.decode(new byte[]{21}, "920089", 1.683934704E9d))[1];
                    for (MotionKey motionKey2 : this.mKeyList) {
                        if (motionKey2.mCustom != null && (customVariable3 = motionKey2.mCustom.get(str2)) != null) {
                            customVar.append(motionKey2.mFramePosition, customVariable3);
                        }
                    }
                    splineSetMakeSpline2 = SplineSet.makeCustomSplineSet(str, customVar);
                } else {
                    splineSetMakeSpline2 = SplineSet.makeSpline(str, j);
                }
                if (splineSetMakeSpline2 != null) {
                    splineSetMakeSpline2.setType(str);
                    this.mAttributesMap.put(str, splineSetMakeSpline2);
                }
            }
            ArrayList<MotionKey> arrayList5 = this.mKeyList;
            if (arrayList5 != null) {
                for (MotionKey motionKey3 : arrayList5) {
                    if (motionKey3 instanceof MotionKeyAttributes) {
                        motionKey3.addValues(this.mAttributesMap);
                    }
                }
            }
            this.mStartPoint.addValues(this.mAttributesMap, 0);
            this.mEndPoint.addValues(this.mAttributesMap, 100);
            for (String str3 : this.mAttributesMap.keySet()) {
                int iIntValue = (!map.containsKey(str3) || (num = map.get(str3)) == null) ? 0 : num.intValue();
                SplineSet splineSet = this.mAttributesMap.get(str3);
                if (splineSet != null) {
                    splineSet.setup(iIntValue);
                }
            }
        }
        if (!hashSet.isEmpty()) {
            if (this.mTimeCycleAttributesMap == null) {
                this.mTimeCycleAttributesMap = new HashMap<>();
            }
            for (String str4 : hashSet) {
                if (!this.mTimeCycleAttributesMap.containsKey(str4)) {
                    if (str4.startsWith(NPStringFog.decode(new byte[]{114, 97, 50, 48, 43, 124, 29}, "14add1", 4.74757332E8d))) {
                        KeyFrameArray.CustomVar customVar2 = new KeyFrameArray.CustomVar();
                        String str5 = str4.split(NPStringFog.decode(new byte[]{27}, "7a9f0d", 7993))[1];
                        for (MotionKey motionKey4 : this.mKeyList) {
                            if (motionKey4.mCustom != null && (customVariable2 = motionKey4.mCustom.get(str5)) != null) {
                                customVar2.append(motionKey4.mFramePosition, customVariable2);
                            }
                        }
                        splineSetMakeSpline = SplineSet.makeCustomSplineSet(str4, customVar2);
                    } else {
                        splineSetMakeSpline = SplineSet.makeSpline(str4, j);
                    }
                    if (splineSetMakeSpline != null) {
                        splineSetMakeSpline.setType(str4);
                    }
                }
            }
            ArrayList<MotionKey> arrayList6 = this.mKeyList;
            if (arrayList6 != null) {
                for (MotionKey motionKey5 : arrayList6) {
                    if (motionKey5 instanceof MotionKeyTimeCycle) {
                        ((MotionKeyTimeCycle) motionKey5).addTimeValues(this.mTimeCycleAttributesMap);
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
        int i4 = 1;
        motionPathsArr[0] = this.mStartMotionPath;
        motionPathsArr[motionPathsArr.length - 1] = this.mEndMotionPath;
        if (this.mMotionPaths.size() > 0 && this.mCurveFitType == MotionKey.UNSET) {
            this.mCurveFitType = 0;
        }
        Iterator<MotionPaths> it = this.mMotionPaths.iterator();
        while (true) {
            int i5 = i4;
            if (!it.hasNext()) {
                break;
            }
            motionPathsArr[i5] = it.next();
            i4 = i5 + 1;
        }
        HashSet hashSet4 = new HashSet();
        for (String str7 : this.mEndMotionPath.customAttributes.keySet()) {
            if (this.mStartMotionPath.customAttributes.containsKey(str7)) {
                if (!hashSet2.contains(NPStringFog.decode(new byte[]{37, 102, 53, 96, 124, 124, 74}, "f3f431", 1.814694941E9d) + str7)) {
                    hashSet4.add(str7);
                }
            }
        }
        String[] strArr = (String[]) hashSet4.toArray(new String[0]);
        this.mAttributeNames = strArr;
        this.mAttributeInterpolatorCount = new int[strArr.length];
        int i6 = 0;
        while (true) {
            int i7 = i6;
            String[] strArr2 = this.mAttributeNames;
            if (i7 >= strArr2.length) {
                break;
            }
            String str8 = strArr2[i7];
            this.mAttributeInterpolatorCount[i7] = 0;
            int i8 = 0;
            while (true) {
                int i9 = i8;
                if (i9 >= motionPathsArr.length) {
                    break;
                }
                if (motionPathsArr[i9].customAttributes.containsKey(str8) && (customVariable = motionPathsArr[i9].customAttributes.get(str8)) != null) {
                    int[] iArr = this.mAttributeInterpolatorCount;
                    iArr[i7] = customVariable.numberOfInterpolatedValues() + iArr[i7];
                    break;
                }
                i8 = i9 + 1;
            }
            i6 = i7 + 1;
        }
        boolean z = motionPathsArr[0].mPathMotionArc != -1;
        boolean[] zArr = new boolean[this.mAttributeNames.length + 18];
        for (int i10 = 1; i10 < motionPathsArr.length; i10++) {
            motionPathsArr[i10].different(motionPathsArr[i10 - 1], zArr, this.mAttributeNames, z);
        }
        int i11 = 0;
        for (int i12 = 1; i12 < zArr.length; i12++) {
            if (zArr[i12]) {
                i11++;
            }
        }
        this.mInterpolateVariables = new int[i11];
        int iMax = Math.max(2, i11);
        this.mInterpolateData = new double[iMax];
        this.mInterpolateVelocity = new double[iMax];
        int i13 = 0;
        for (int i14 = 1; i14 < zArr.length; i14++) {
            if (zArr[i14]) {
                this.mInterpolateVariables[i13] = i14;
                i13++;
            }
        }
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, motionPathsArr.length, this.mInterpolateVariables.length);
        double[] dArr2 = new double[motionPathsArr.length];
        for (int i15 = 0; i15 < motionPathsArr.length; i15++) {
            motionPathsArr[i15].fillStandard(dArr[i15], this.mInterpolateVariables);
            dArr2[i15] = motionPathsArr[i15].time;
        }
        int i16 = 0;
        while (true) {
            int i17 = i16;
            int[] iArr2 = this.mInterpolateVariables;
            if (i17 >= iArr2.length) {
                break;
            }
            if (iArr2[i17] < MotionPaths.names.length) {
                String str9 = MotionPaths.names[this.mInterpolateVariables[i17]] + NPStringFog.decode(new byte[]{24, 99}, "880ddf", -8.2822554E8f);
                for (int i18 = 0; i18 < motionPathsArr.length; i18++) {
                    str9 = str9 + dArr[i18][i17];
                }
            }
            i16 = i17 + 1;
        }
        this.mSpline = new CurveFit[this.mAttributeNames.length + 1];
        int i19 = 0;
        while (true) {
            int i20 = i19;
            String[] strArr3 = this.mAttributeNames;
            if (i20 >= strArr3.length) {
                break;
            }
            int i21 = 0;
            String str10 = strArr3[i20];
            double[][] dArr3 = (double[][]) null;
            double[] dArr4 = null;
            int i22 = 0;
            while (i22 < motionPathsArr.length) {
                if (motionPathsArr[i22].hasCustomData(str10)) {
                    if (dArr3 == null) {
                        double[] dArr5 = new double[motionPathsArr.length];
                        dArr3 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, motionPathsArr.length, motionPathsArr[i22].getCustomDataCount(str10));
                        dArr4 = dArr5;
                    }
                    dArr4[i21] = motionPathsArr[i22].time;
                    motionPathsArr[i22].getCustomData(str10, dArr3[i21], 0);
                    i21++;
                }
                i22++;
                dArr4 = dArr4;
                dArr3 = dArr3;
                i21 = i21;
            }
            this.mSpline[i20 + 1] = CurveFit.get(this.mCurveFitType, Arrays.copyOf(dArr4, i21), (double[][]) Arrays.copyOf(dArr3, i21));
            i19 = i20 + 1;
        }
        this.mSpline[0] = CurveFit.get(this.mCurveFitType, dArr2, dArr);
        if (motionPathsArr[0].mPathMotionArc != -1) {
            int length = motionPathsArr.length;
            int[] iArr3 = new int[length];
            double[] dArr6 = new double[length];
            double[][] dArr7 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, length, 2);
            for (int i23 = 0; i23 < length; i23++) {
                iArr3[i23] = motionPathsArr[i23].mPathMotionArc;
                dArr6[i23] = motionPathsArr[i23].time;
                dArr7[i23][0] = motionPathsArr[i23].x;
                dArr7[i23][1] = motionPathsArr[i23].y;
            }
            this.mArcSpline = CurveFit.getArc(iArr3, dArr6, dArr7);
        }
        this.mCycleMap = new HashMap<>();
        if (this.mKeyList != null) {
            float preCycleDistance = Float.NaN;
            for (String str11 : hashSet3) {
                KeyCycleOscillator keyCycleOscillatorMakeWidgetCycle = KeyCycleOscillator.makeWidgetCycle(str11);
                if (keyCycleOscillatorMakeWidgetCycle != null) {
                    if (keyCycleOscillatorMakeWidgetCycle.variesByPath() && Float.isNaN(preCycleDistance)) {
                        preCycleDistance = getPreCycleDistance();
                    }
                    keyCycleOscillatorMakeWidgetCycle.setType(str11);
                    this.mCycleMap.put(str11, keyCycleOscillatorMakeWidgetCycle);
                }
            }
            for (MotionKey motionKey6 : this.mKeyList) {
                if (motionKey6 instanceof MotionKeyCycle) {
                    ((MotionKeyCycle) motionKey6).addCycleValues(this.mCycleMap);
                }
            }
            Iterator<KeyCycleOscillator> it2 = this.mCycleMap.values().iterator();
            while (it2.hasNext()) {
                it2.next().setup(preCycleDistance);
            }
        }
    }

    public void setupRelative(Motion motion) {
        this.mStartMotionPath.setupRelative(motion, motion.mStartMotionPath);
        this.mEndMotionPath.setupRelative(motion, motion.mEndMotionPath);
    }

    public String toString() {
        return NPStringFog.decode(new byte[]{24, 65, 64, 0, 23, 76, 2, 18, 76, 91, 69}, "824ae8", true, true) + this.mStartMotionPath.x + NPStringFog.decode(new byte[]{65, 27, 11, 22}, "ab16fa", 4.2418316E7f) + this.mStartMotionPath.y + NPStringFog.decode(new byte[]{20, 85, 93, 93, 95, 18, 76, 10, 19}, "4039e2", 1.013916424E9d) + this.mEndMotionPath.x + NPStringFog.decode(new byte[]{21, 78, 95, 23}, "57e7b9", false, true) + this.mEndMotionPath.y;
    }
}
