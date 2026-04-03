package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import androidx.constraintlayout.motion.utils.ViewSpline;
import androidx.constraintlayout.widget.R;
import java.util.HashMap;
import java.util.HashSet;
import n.NPStringFog;

/* JADX INFO: loaded from: classes39.dex */
public class KeyTimeCycle extends Key {
    public static final int KEY_TYPE = 3;
    public static final int SHAPE_BOUNCE = 6;
    public static final int SHAPE_COS_WAVE = 5;
    public static final int SHAPE_REVERSE_SAW_WAVE = 4;
    public static final int SHAPE_SAW_WAVE = 3;
    public static final int SHAPE_SIN_WAVE = 0;
    public static final int SHAPE_SQUARE_WAVE = 1;
    public static final int SHAPE_TRIANGLE_WAVE = 2;
    private String mTransitionEasing;
    static final String NAME = NPStringFog.decode(new byte[]{126, 7, 77, 108, 81, 88, 80, 33, 77, 91, 84, 80}, "5b4885", 1.683488843E9d);
    private static final String TAG = NPStringFog.decode(new byte[]{126, 80, 28, 100, 81, 91, 80, 118, 28, 83, 84, 83}, "55e086", 1.7179096E8f);
    public static final String WAVE_OFFSET = NPStringFog.decode(new byte[]{68, 84, 68, 86, 42, 87, 85, 70, 87, 71}, "3523e1", true, true);
    public static final String WAVE_PERIOD = NPStringFog.decode(new byte[]{70, 5, 23, 86, 103, 7, 67, 13, 14, 87}, "1da37b", true, false);
    public static final String WAVE_SHAPE = NPStringFog.decode(new byte[]{64, 2, 78, 7, 48, 88, 86, 19, 93}, "7c8bc0", -956480103L);
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

    private static class Loader {
        private static final int ANDROID_ALPHA = 1;
        private static final int ANDROID_ELEVATION = 2;
        private static final int ANDROID_ROTATION = 4;
        private static final int ANDROID_ROTATION_X = 5;
        private static final int ANDROID_ROTATION_Y = 6;
        private static final int ANDROID_SCALE_X = 7;
        private static final int ANDROID_SCALE_Y = 14;
        private static final int ANDROID_TRANSLATION_X = 15;
        private static final int ANDROID_TRANSLATION_Y = 16;
        private static final int ANDROID_TRANSLATION_Z = 17;
        private static final int CURVE_FIT = 13;
        private static final int FRAME_POSITION = 12;
        private static final int PROGRESS = 18;
        private static final int TARGET_ID = 10;
        private static final int TRANSITION_EASING = 9;
        private static final int TRANSITION_PATH_ROTATE = 8;
        private static final int WAVE_OFFSET = 21;
        private static final int WAVE_PERIOD = 20;
        private static final int WAVE_SHAPE = 19;
        private static SparseIntArray mAttrMap;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            mAttrMap = sparseIntArray;
            sparseIntArray.append(R.styleable.KeyTimeCycle_android_alpha, 1);
            mAttrMap.append(R.styleable.KeyTimeCycle_android_elevation, 2);
            mAttrMap.append(R.styleable.KeyTimeCycle_android_rotation, 4);
            mAttrMap.append(R.styleable.KeyTimeCycle_android_rotationX, 5);
            mAttrMap.append(R.styleable.KeyTimeCycle_android_rotationY, 6);
            mAttrMap.append(R.styleable.KeyTimeCycle_android_scaleX, 7);
            mAttrMap.append(R.styleable.KeyTimeCycle_transitionPathRotate, 8);
            mAttrMap.append(R.styleable.KeyTimeCycle_transitionEasing, 9);
            mAttrMap.append(R.styleable.KeyTimeCycle_motionTarget, 10);
            mAttrMap.append(R.styleable.KeyTimeCycle_framePosition, 12);
            mAttrMap.append(R.styleable.KeyTimeCycle_curveFit, 13);
            mAttrMap.append(R.styleable.KeyTimeCycle_android_scaleY, 14);
            mAttrMap.append(R.styleable.KeyTimeCycle_android_translationX, 15);
            mAttrMap.append(R.styleable.KeyTimeCycle_android_translationY, 16);
            mAttrMap.append(R.styleable.KeyTimeCycle_android_translationZ, 17);
            mAttrMap.append(R.styleable.KeyTimeCycle_motionProgress, 18);
            mAttrMap.append(R.styleable.KeyTimeCycle_wavePeriod, 20);
            mAttrMap.append(R.styleable.KeyTimeCycle_waveOffset, 21);
            mAttrMap.append(R.styleable.KeyTimeCycle_waveShape, 19);
        }

        private Loader() {
        }

        public static void read(KeyTimeCycle keyTimeCycle, TypedArray typedArray) {
            int indexCount = typedArray.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArray.getIndex(i);
                switch (mAttrMap.get(index)) {
                    case 1:
                        keyTimeCycle.mAlpha = typedArray.getFloat(index, keyTimeCycle.mAlpha);
                        break;
                    case 2:
                        keyTimeCycle.mElevation = typedArray.getDimension(index, keyTimeCycle.mElevation);
                        break;
                    case 3:
                    case 11:
                    default:
                        String hexString = Integer.toHexString(index);
                        int i2 = mAttrMap.get(index);
                        StringBuilder sb = new StringBuilder(String.valueOf(hexString).length() + 33);
                        sb.append(NPStringFog.decode(new byte[]{23, 88, 69, 21, 92, 0, 66, 87, 68, 18, 75, 13, 0, 67, 68, 3, 25, 84, 26}, "b60f9d", 4.2793946E8f));
                        sb.append(hexString);
                        sb.append("   ");
                        sb.append(i2);
                        Log.e(NPStringFog.decode(new byte[]{40, 92, 79, 101, 91, 90, 6, 122, 79, 82, 94, 82}, "c96127", -2.3670022E8f), sb.toString());
                        break;
                    case 4:
                        keyTimeCycle.mRotation = typedArray.getFloat(index, keyTimeCycle.mRotation);
                        break;
                    case 5:
                        keyTimeCycle.mRotationX = typedArray.getFloat(index, keyTimeCycle.mRotationX);
                        break;
                    case 6:
                        keyTimeCycle.mRotationY = typedArray.getFloat(index, keyTimeCycle.mRotationY);
                        break;
                    case 7:
                        keyTimeCycle.mScaleX = typedArray.getFloat(index, keyTimeCycle.mScaleX);
                        break;
                    case 8:
                        keyTimeCycle.mTransitionPathRotate = typedArray.getFloat(index, keyTimeCycle.mTransitionPathRotate);
                        break;
                    case 9:
                        keyTimeCycle.mTransitionEasing = typedArray.getString(index);
                        break;
                    case 10:
                        if (MotionLayout.IS_IN_EDIT_MODE) {
                            keyTimeCycle.mTargetId = typedArray.getResourceId(index, keyTimeCycle.mTargetId);
                            if (keyTimeCycle.mTargetId == -1) {
                                keyTimeCycle.mTargetString = typedArray.getString(index);
                            }
                        } else if (typedArray.peekValue(index).type == 3) {
                            keyTimeCycle.mTargetString = typedArray.getString(index);
                        } else {
                            keyTimeCycle.mTargetId = typedArray.getResourceId(index, keyTimeCycle.mTargetId);
                        }
                        break;
                    case 12:
                        keyTimeCycle.mFramePosition = typedArray.getInt(index, keyTimeCycle.mFramePosition);
                        break;
                    case 13:
                        keyTimeCycle.mCurveFit = typedArray.getInteger(index, keyTimeCycle.mCurveFit);
                        break;
                    case 14:
                        keyTimeCycle.mScaleY = typedArray.getFloat(index, keyTimeCycle.mScaleY);
                        break;
                    case 15:
                        keyTimeCycle.mTranslationX = typedArray.getDimension(index, keyTimeCycle.mTranslationX);
                        break;
                    case 16:
                        keyTimeCycle.mTranslationY = typedArray.getDimension(index, keyTimeCycle.mTranslationY);
                        break;
                    case 17:
                        if (Build.VERSION.SDK_INT >= 21) {
                            keyTimeCycle.mTranslationZ = typedArray.getDimension(index, keyTimeCycle.mTranslationZ);
                        }
                        break;
                    case 18:
                        keyTimeCycle.mProgress = typedArray.getFloat(index, keyTimeCycle.mProgress);
                        break;
                    case 19:
                        if (typedArray.peekValue(index).type == 3) {
                            keyTimeCycle.mCustomWaveShape = typedArray.getString(index);
                            keyTimeCycle.mWaveShape = 7;
                        } else {
                            keyTimeCycle.mWaveShape = typedArray.getInt(index, keyTimeCycle.mWaveShape);
                        }
                        break;
                    case 20:
                        keyTimeCycle.mWavePeriod = typedArray.getFloat(index, keyTimeCycle.mWavePeriod);
                        break;
                    case 21:
                        if (typedArray.peekValue(index).type == 5) {
                            keyTimeCycle.mWaveOffset = typedArray.getDimension(index, keyTimeCycle.mWaveOffset);
                        } else {
                            keyTimeCycle.mWaveOffset = typedArray.getFloat(index, keyTimeCycle.mWaveOffset);
                        }
                        break;
                }
            }
        }
    }

    public KeyTimeCycle() {
        this.mType = 3;
        this.mCustomConstraints = new HashMap<>();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0069  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void addTimeValues(java.util.HashMap<java.lang.String, androidx.constraintlayout.motion.utils.ViewTimeCycle> r13) {
        /*
            Method dump skipped, instruction units count: 969
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.KeyTimeCycle.addTimeValues(java.util.HashMap):void");
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void addValues(HashMap<String, ViewSpline> map) {
        throw new IllegalArgumentException(NPStringFog.decode(new byte[]{17, 122, 87, 26, 55, 15, 92, 84, 113, 26, 0, 10, 84, 66, 18, 7, 12, 70, 95, 94, 70, 67, 16, 19, 65, 65, 93, 17, 23, 70, 98, 65, 94, 10, 13, 3, 98, 84, 70}, "112ccf", -984382910L));
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    /* JADX INFO: renamed from: clone */
    public Key mo3clone() {
        return new KeyTimeCycle().copy(this);
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public Key copy(Key key) {
        super.copy(key);
        KeyTimeCycle keyTimeCycle = (KeyTimeCycle) key;
        this.mTransitionEasing = keyTimeCycle.mTransitionEasing;
        this.mCurveFit = keyTimeCycle.mCurveFit;
        this.mWaveShape = keyTimeCycle.mWaveShape;
        this.mWavePeriod = keyTimeCycle.mWavePeriod;
        this.mWaveOffset = keyTimeCycle.mWaveOffset;
        this.mProgress = keyTimeCycle.mProgress;
        this.mAlpha = keyTimeCycle.mAlpha;
        this.mElevation = keyTimeCycle.mElevation;
        this.mRotation = keyTimeCycle.mRotation;
        this.mTransitionPathRotate = keyTimeCycle.mTransitionPathRotate;
        this.mRotationX = keyTimeCycle.mRotationX;
        this.mRotationY = keyTimeCycle.mRotationY;
        this.mScaleX = keyTimeCycle.mScaleX;
        this.mScaleY = keyTimeCycle.mScaleY;
        this.mTranslationX = keyTimeCycle.mTranslationX;
        this.mTranslationY = keyTimeCycle.mTranslationY;
        this.mTranslationZ = keyTimeCycle.mTranslationZ;
        return this;
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void getAttributeNames(HashSet<String> hashSet) {
        if (!Float.isNaN(this.mAlpha)) {
            hashSet.add(NPStringFog.decode(new byte[]{0, 14, 71, 95, 85}, "ab7745", false));
        }
        if (!Float.isNaN(this.mElevation)) {
            hashSet.add(NPStringFog.decode(new byte[]{0, 93, 3, 79, 89, 64, 12, 94, 8}, "e1f984", 94659767L));
        }
        if (!Float.isNaN(this.mRotation)) {
            hashSet.add(NPStringFog.decode(new byte[]{69, 94, 71, 3, 77, 88, 88, 95}, "713b91", 2.30088163E8d));
        }
        if (!Float.isNaN(this.mRotationX)) {
            hashSet.add(NPStringFog.decode(new byte[]{68, 91, 18, 85, 21, 89, 89, 90, 62}, "64f4a0", -10955));
        }
        if (!Float.isNaN(this.mRotationY)) {
            hashSet.add(NPStringFog.decode(new byte[]{65, 9, 69, 88, 21, 15, 92, 8, 104}, "3f19af", -133511514L));
        }
        if (!Float.isNaN(this.mTranslationX)) {
            hashSet.add(NPStringFog.decode(new byte[]{68, 74, 0, 13, 64, 14, 81, 76, 8, 12, 93, 58}, "08ac3b", 3.431218E8f));
        }
        if (!Float.isNaN(this.mTranslationY)) {
            hashSet.add(NPStringFog.decode(new byte[]{23, 23, 5, 87, 64, 93, 2, 17, 13, 86, 93, 104}, "ced931", 25616));
        }
        if (!Float.isNaN(this.mTranslationZ)) {
            hashSet.add(NPStringFog.decode(new byte[]{21, 68, 7, 89, 67, 8, 0, 66, 15, 88, 94, 62}, "a6f70d", -24737));
        }
        if (!Float.isNaN(this.mTransitionPathRotate)) {
            hashSet.add(NPStringFog.decode(new byte[]{68, 64, 5, 86, 75, 88, 68, 91, 11, 86, 104, 80, 68, 90, 54, 87, 76, 80, 68, 87}, "02d881", false, true));
        }
        if (!Float.isNaN(this.mScaleX)) {
            hashSet.add(NPStringFog.decode(new byte[]{16, 5, 85, 14, 87, 60}, "cf4b2d", 9.98954653E8d));
        }
        if (!Float.isNaN(this.mScaleY)) {
            hashSet.add(NPStringFog.decode(new byte[]{23, 84, 88, 91, 92, 105}, "d79790", -20608));
        }
        if (!Float.isNaN(this.mProgress)) {
            hashSet.add(NPStringFog.decode(new byte[]{69, 22, 11, 2, 67, 0, 70, 23}, "5dde1e", 1190181419L));
        }
        if (this.mCustomConstraints.size() > 0) {
            for (String str : this.mCustomConstraints.keySet()) {
                String strValueOf = String.valueOf(NPStringFog.decode(new byte[]{113, 52, 49, 97, 46, 127, 30}, "2ab5a2", true, true));
                String strValueOf2 = String.valueOf(str);
                hashSet.add(strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf));
            }
        }
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void load(Context context, AttributeSet attributeSet) {
        Loader.read(this, context.obtainStyledAttributes(attributeSet, R.styleable.KeyTimeCycle));
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void setInterpolation(HashMap<String, Integer> map) {
        if (this.mCurveFit == -1) {
            return;
        }
        if (!Float.isNaN(this.mAlpha)) {
            map.put(NPStringFog.decode(new byte[]{83, 88, 22, 88, 82}, "24f030", false, false), Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mElevation)) {
            map.put(NPStringFog.decode(new byte[]{4, 84, 84, 71, 89, 22, 8, 87, 95}, "a8118b", true, false), Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mRotation)) {
            map.put(NPStringFog.decode(new byte[]{65, 14, 71, 5, 17, 93, 92, 15}, "3a3de4", false, false), Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mRotationX)) {
            map.put(NPStringFog.decode(new byte[]{17, 9, 21, 7, 68, 91, 12, 8, 57}, "cfaf02", false), Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mRotationY)) {
            map.put(NPStringFog.decode(new byte[]{68, 9, 66, 2, 21, 13, 89, 8, 111}, "6f6cad", false, true), Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mTranslationX)) {
            map.put(NPStringFog.decode(new byte[]{69, 66, 81, 15, 23, 15, 80, 68, 89, 14, 10, 59}, "100adc", 1790), Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mTranslationY)) {
            map.put(NPStringFog.decode(new byte[]{66, 17, 86, 89, 16, 8, 87, 23, 94, 88, 13, 61}, "6c77cd", 1.914886301E9d), Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mTranslationZ)) {
            map.put(NPStringFog.decode(new byte[]{18, 17, 85, 94, 17, 94, 7, 23, 93, 95, 12, 104}, "fc40b2", -200166154L), Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mTransitionPathRotate)) {
            map.put(NPStringFog.decode(new byte[]{17, 66, 2, 87, 16, 95, 17, 89, 12, 87, 51, 87, 17, 88, 49, 86, 23, 87, 17, 85}, "e0c9c6", false, false), Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mScaleX)) {
            map.put(NPStringFog.decode(new byte[]{16, 7, 87, 88, 83, 59}, "cd646c", true, true), Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mScaleX)) {
            map.put(NPStringFog.decode(new byte[]{16, 0, 4, 9, 1, 106}, "cceed3", false, true), Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mProgress)) {
            map.put(NPStringFog.decode(new byte[]{70, 68, 11, 82, 68, 82, 69, 69}, "66d567", false), Integer.valueOf(this.mCurveFit));
        }
        if (this.mCustomConstraints.size() > 0) {
            for (String str : this.mCustomConstraints.keySet()) {
                String strValueOf = String.valueOf(NPStringFog.decode(new byte[]{122, 100, 103, 49, 45, 40, 21}, "914ebe", -22487));
                String strValueOf2 = String.valueOf(str);
                map.put(strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf), Integer.valueOf(this.mCurveFit));
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:4:0x000e  */
    @Override // androidx.constraintlayout.motion.widget.Key
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setValue(java.lang.String r7, java.lang.Object r8) {
        /*
            Method dump skipped, instruction units count: 763
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.KeyTimeCycle.setValue(java.lang.String, java.lang.Object):void");
    }
}
