package androidx.constraintlayout.core.motion.key;

import androidx.constraintlayout.core.motion.utils.SplineSet;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import n.NPStringFog;

/* JADX INFO: loaded from: classes40.dex */
public class MotionKeyTimeCycle extends MotionKey {
    public static final int KEY_TYPE = 3;
    static final String NAME = NPStringFog.decode(new byte[]{127, 82, 75, 109, 13, 90, 81, 116, 75, 90, 8, 82}, "4729d7", -9766);
    private static final String TAG = NPStringFog.decode(new byte[]{46, 4, 76, 54, 95, 85, 0, 34, 76, 1, 90, 93}, "ea5b68", -1.4695981E9f);
    private String mTransitionEasing;
    private int mCurveFit = -1;
    private float mAlpha = Float.NaN;
    private float mElevation = Float.NaN;
    private float mRotation = Float.NaN;
    private float mRotationX = Float.NaN;
    private float mRotationY = Float.NaN;
    private float mTransitionPathRotate = Float.NaN;
    private float mScaleX = Float.NaN;
    private float mScaleY = Float.NaN;
    private float mTranslationX = Float.NaN;
    private float mTranslationY = Float.NaN;
    private float mTranslationZ = Float.NaN;
    private float mProgress = Float.NaN;
    private int mWaveShape = 0;
    private String mCustomWaveShape = null;
    private float mWavePeriod = Float.NaN;
    private float mWaveOffset = 0.0f;

    public MotionKeyTimeCycle() {
        this.mType = 3;
        this.mCustom = new HashMap<>();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:14:0x006e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void addTimeValues(java.util.HashMap<java.lang.String, androidx.constraintlayout.core.motion.utils.TimeCycleSplineSet> r13) {
        /*
            Method dump skipped, instruction units count: 971
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.motion.key.MotionKeyTimeCycle.addTimeValues(java.util.HashMap):void");
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey
    public void addValues(HashMap<String, SplineSet> map) {
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey
    /* JADX INFO: renamed from: clone */
    public MotionKey mo2clone() {
        return new MotionKeyTimeCycle().copy((MotionKey) this);
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey
    public MotionKeyTimeCycle copy(MotionKey motionKey) {
        super.copy(motionKey);
        MotionKeyTimeCycle motionKeyTimeCycle = (MotionKeyTimeCycle) motionKey;
        this.mTransitionEasing = motionKeyTimeCycle.mTransitionEasing;
        this.mCurveFit = motionKeyTimeCycle.mCurveFit;
        this.mWaveShape = motionKeyTimeCycle.mWaveShape;
        this.mWavePeriod = motionKeyTimeCycle.mWavePeriod;
        this.mWaveOffset = motionKeyTimeCycle.mWaveOffset;
        this.mProgress = motionKeyTimeCycle.mProgress;
        this.mAlpha = motionKeyTimeCycle.mAlpha;
        this.mElevation = motionKeyTimeCycle.mElevation;
        this.mRotation = motionKeyTimeCycle.mRotation;
        this.mTransitionPathRotate = motionKeyTimeCycle.mTransitionPathRotate;
        this.mRotationX = motionKeyTimeCycle.mRotationX;
        this.mRotationY = motionKeyTimeCycle.mRotationY;
        this.mScaleX = motionKeyTimeCycle.mScaleX;
        this.mScaleY = motionKeyTimeCycle.mScaleY;
        this.mTranslationX = motionKeyTimeCycle.mTranslationX;
        this.mTranslationY = motionKeyTimeCycle.mTranslationY;
        this.mTranslationZ = motionKeyTimeCycle.mTranslationZ;
        return this;
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey
    public void getAttributeNames(HashSet<String> hashSet) {
        if (!Float.isNaN(this.mAlpha)) {
            hashSet.add(NPStringFog.decode(new byte[]{83, 9, 17, 9, 0}, "2eaaa4", 479668007L));
        }
        if (!Float.isNaN(this.mElevation)) {
            hashSet.add(NPStringFog.decode(new byte[]{7, 95, 0, 68, 2, 16, 11, 92, 11}, "b3e2cd", true, false));
        }
        if (!Float.isNaN(this.mRotation)) {
            hashSet.add(NPStringFog.decode(new byte[]{68, 86, 18, 86, 23, 10, 89, 87, 60}, "69f7cc", -5.9819508E8d));
        }
        if (!Float.isNaN(this.mRotationX)) {
            hashSet.add(NPStringFog.decode(new byte[]{23, 11, 22, 0, 68, 15, 10, 10, 58}, "edba0f", -15080));
        }
        if (!Float.isNaN(this.mRotationY)) {
            hashSet.add(NPStringFog.decode(new byte[]{71, 93, 17, 89, 22, 88, 90, 92, 60}, "52e8b1", -1.6149505E9f));
        }
        if (!Float.isNaN(this.mScaleX)) {
            hashSet.add(NPStringFog.decode(new byte[]{21, 87, 88, 10, 6, 109}, "f49fc5", -7.56487479E8d));
        }
        if (!Float.isNaN(this.mScaleY)) {
            hashSet.add(NPStringFog.decode(new byte[]{68, 81, 5, 8, 3, 108}, "72ddf5", -22522));
        }
        if (!Float.isNaN(this.mTransitionPathRotate)) {
            hashSet.add(NPStringFog.decode(new byte[]{18, 3, 76, 81, 97, 89, 22, 3, 76, 92}, "bb8936", false, false));
        }
        if (!Float.isNaN(this.mTranslationX)) {
            hashSet.add(NPStringFog.decode(new byte[]{23, 66, 89, 87, 64, 93, 2, 68, 81, 86, 93, 105}, "c08931", -1871140162L));
        }
        if (!Float.isNaN(this.mTranslationY)) {
            hashSet.add(NPStringFog.decode(new byte[]{76, 22, 89, 95, 71, 15, 89, 16, 81, 94, 90, 58}, "8d814c", true));
        }
        if (!Float.isNaN(this.mTranslationZ)) {
            hashSet.add(NPStringFog.decode(new byte[]{76, 23, 81, 15, 17, 10, 89, 17, 89, 14, 12, 60}, "8e0abf", 1.2088192E9f));
        }
        if (this.mCustom.size() > 0) {
            Iterator<String> it = this.mCustom.keySet().iterator();
            while (it.hasNext()) {
                hashSet.add(NPStringFog.decode(new byte[]{113, 96, 54, 49, 118, 122, 30}, "25ee97", 2.0345987E9f) + it.next());
            }
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public int getId(String str) {
        return TypedValues.Cycle.CC.getId(str);
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey, androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i, float f) {
        switch (i) {
            case 304:
                this.mTranslationX = toFloat(Float.valueOf(f));
                return true;
            case 305:
                this.mTranslationY = toFloat(Float.valueOf(f));
                return true;
            case 306:
                this.mTranslationZ = toFloat(Float.valueOf(f));
                return true;
            case 307:
                this.mElevation = toFloat(Float.valueOf(f));
                return true;
            case 308:
                this.mRotationX = toFloat(Float.valueOf(f));
                return true;
            case 309:
                this.mRotationY = toFloat(Float.valueOf(f));
                return true;
            case 310:
                this.mRotation = toFloat(Float.valueOf(f));
                return true;
            case 311:
                this.mScaleX = toFloat(Float.valueOf(f));
                return true;
            case 312:
                this.mScaleY = toFloat(Float.valueOf(f));
                return true;
            case 315:
                this.mProgress = toFloat(Float.valueOf(f));
                return true;
            case 401:
                this.mCurveFit = toInt(Float.valueOf(f));
                return true;
            case 403:
                this.mAlpha = f;
                return true;
            case 416:
                this.mTransitionPathRotate = toFloat(Float.valueOf(f));
                return true;
            case 423:
                this.mWavePeriod = toFloat(Float.valueOf(f));
                return true;
            case 424:
                this.mWaveOffset = toFloat(Float.valueOf(f));
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
            case TypedValues.Cycle.TYPE_WAVE_SHAPE /* 421 */:
                this.mWaveShape = i2;
                return true;
            default:
                return super.setValue(i, i2);
        }
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey, androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i, String str) {
        switch (i) {
            case 420:
                this.mTransitionEasing = str;
                return true;
            case TypedValues.Cycle.TYPE_WAVE_SHAPE /* 421 */:
                this.mWaveShape = 7;
                this.mCustomWaveShape = str;
                return true;
            default:
                return super.setValue(i, str);
        }
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey, androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i, boolean z) {
        return super.setValue(i, z);
    }
}
