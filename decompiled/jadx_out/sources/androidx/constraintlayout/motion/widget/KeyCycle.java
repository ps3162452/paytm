package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import androidx.constraintlayout.motion.utils.ViewOscillator;
import androidx.constraintlayout.motion.utils.ViewSpline;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.R;
import java.util.HashMap;
import java.util.HashSet;
import n.NPStringFog;

/* JADX INFO: loaded from: classes39.dex */
public class KeyCycle extends Key {
    public static final int KEY_TYPE = 4;
    public static final int SHAPE_BOUNCE = 6;
    public static final int SHAPE_COS_WAVE = 5;
    public static final int SHAPE_REVERSE_SAW_WAVE = 4;
    public static final int SHAPE_SAW_WAVE = 3;
    public static final int SHAPE_SIN_WAVE = 0;
    public static final int SHAPE_SQUARE_WAVE = 1;
    public static final int SHAPE_TRIANGLE_WAVE = 2;
    static final String NAME = NPStringFog.decode(new byte[]{125, 0, 27, 33, 31, 5, 90, 0}, "6ebbff", -1.02999508E9d);
    private static final String TAG = NPStringFog.decode(new byte[]{125, 92, 79, 114, 73, 91, 90, 92}, "696108", false, false);
    public static final String WAVE_OFFSET = NPStringFog.decode(new byte[]{65, 89, 69, 87, 121, 82, 80, 75, 86, 70}, "683264", true, false);
    public static final String WAVE_PERIOD = NPStringFog.decode(new byte[]{64, 2, 71, 92, 99, 0, 69, 10, 94, 93}, "7c193e", true, true);
    public static final String WAVE_PHASE = NPStringFog.decode(new byte[]{21, 5, 19, 83, 102, 81, 3, 23, 0}, "bde669", -611253016L);
    public static final String WAVE_SHAPE = NPStringFog.decode(new byte[]{69, 83, 66, 81, 102, 11, 83, 66, 81}, "22445c", false, true);
    private String mTransitionEasing = null;
    private int mCurveFit = 0;
    private int mWaveShape = -1;
    private String mCustomWaveShape = null;
    private float mWavePeriod = Float.NaN;
    private float mWaveOffset = 0.0f;
    private float mWavePhase = 0.0f;
    private float mProgress = Float.NaN;
    private int mWaveVariesBy = -1;
    private float mAlpha = Float.NaN;
    private float mElevation = Float.NaN;
    private float mRotation = Float.NaN;
    private float mTransitionPathRotate = Float.NaN;
    private float mRotationX = Float.NaN;
    private float mRotationY = Float.NaN;
    private float mScaleX = Float.NaN;
    private float mScaleY = Float.NaN;
    private float mTranslationX = Float.NaN;
    private float mTranslationY = Float.NaN;
    private float mTranslationZ = Float.NaN;

    private static class Loader {
        private static final int ANDROID_ALPHA = 9;
        private static final int ANDROID_ELEVATION = 10;
        private static final int ANDROID_ROTATION = 11;
        private static final int ANDROID_ROTATION_X = 12;
        private static final int ANDROID_ROTATION_Y = 13;
        private static final int ANDROID_SCALE_X = 15;
        private static final int ANDROID_SCALE_Y = 16;
        private static final int ANDROID_TRANSLATION_X = 17;
        private static final int ANDROID_TRANSLATION_Y = 18;
        private static final int ANDROID_TRANSLATION_Z = 19;
        private static final int CURVE_FIT = 4;
        private static final int FRAME_POSITION = 2;
        private static final int PROGRESS = 20;
        private static final int TARGET_ID = 1;
        private static final int TRANSITION_EASING = 3;
        private static final int TRANSITION_PATH_ROTATE = 14;
        private static final int WAVE_OFFSET = 7;
        private static final int WAVE_PERIOD = 6;
        private static final int WAVE_PHASE = 21;
        private static final int WAVE_SHAPE = 5;
        private static final int WAVE_VARIES_BY = 8;
        private static SparseIntArray mAttrMap;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            mAttrMap = sparseIntArray;
            sparseIntArray.append(R.styleable.KeyCycle_motionTarget, 1);
            mAttrMap.append(R.styleable.KeyCycle_framePosition, 2);
            mAttrMap.append(R.styleable.KeyCycle_transitionEasing, 3);
            mAttrMap.append(R.styleable.KeyCycle_curveFit, 4);
            mAttrMap.append(R.styleable.KeyCycle_waveShape, 5);
            mAttrMap.append(R.styleable.KeyCycle_wavePeriod, 6);
            mAttrMap.append(R.styleable.KeyCycle_waveOffset, 7);
            mAttrMap.append(R.styleable.KeyCycle_waveVariesBy, 8);
            mAttrMap.append(R.styleable.KeyCycle_android_alpha, 9);
            mAttrMap.append(R.styleable.KeyCycle_android_elevation, 10);
            mAttrMap.append(R.styleable.KeyCycle_android_rotation, 11);
            mAttrMap.append(R.styleable.KeyCycle_android_rotationX, 12);
            mAttrMap.append(R.styleable.KeyCycle_android_rotationY, 13);
            mAttrMap.append(R.styleable.KeyCycle_transitionPathRotate, 14);
            mAttrMap.append(R.styleable.KeyCycle_android_scaleX, 15);
            mAttrMap.append(R.styleable.KeyCycle_android_scaleY, 16);
            mAttrMap.append(R.styleable.KeyCycle_android_translationX, 17);
            mAttrMap.append(R.styleable.KeyCycle_android_translationY, 18);
            mAttrMap.append(R.styleable.KeyCycle_android_translationZ, 19);
            mAttrMap.append(R.styleable.KeyCycle_motionProgress, 20);
            mAttrMap.append(R.styleable.KeyCycle_wavePhase, 21);
        }

        private Loader() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void read(KeyCycle keyCycle, TypedArray typedArray) {
            int indexCount = typedArray.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArray.getIndex(i);
                switch (mAttrMap.get(index)) {
                    case 1:
                        if (MotionLayout.IS_IN_EDIT_MODE) {
                            keyCycle.mTargetId = typedArray.getResourceId(index, keyCycle.mTargetId);
                            if (keyCycle.mTargetId == -1) {
                                keyCycle.mTargetString = typedArray.getString(index);
                            }
                        } else if (typedArray.peekValue(index).type == 3) {
                            keyCycle.mTargetString = typedArray.getString(index);
                        } else {
                            keyCycle.mTargetId = typedArray.getResourceId(index, keyCycle.mTargetId);
                        }
                        break;
                    case 2:
                        keyCycle.mFramePosition = typedArray.getInt(index, keyCycle.mFramePosition);
                        break;
                    case 3:
                        keyCycle.mTransitionEasing = typedArray.getString(index);
                        break;
                    case 4:
                        keyCycle.mCurveFit = typedArray.getInteger(index, keyCycle.mCurveFit);
                        break;
                    case 5:
                        if (typedArray.peekValue(index).type == 3) {
                            keyCycle.mCustomWaveShape = typedArray.getString(index);
                            keyCycle.mWaveShape = 7;
                        } else {
                            keyCycle.mWaveShape = typedArray.getInt(index, keyCycle.mWaveShape);
                        }
                        break;
                    case 6:
                        keyCycle.mWavePeriod = typedArray.getFloat(index, keyCycle.mWavePeriod);
                        break;
                    case 7:
                        if (typedArray.peekValue(index).type == 5) {
                            keyCycle.mWaveOffset = typedArray.getDimension(index, keyCycle.mWaveOffset);
                        } else {
                            keyCycle.mWaveOffset = typedArray.getFloat(index, keyCycle.mWaveOffset);
                        }
                        break;
                    case 8:
                        keyCycle.mWaveVariesBy = typedArray.getInt(index, keyCycle.mWaveVariesBy);
                        break;
                    case 9:
                        keyCycle.mAlpha = typedArray.getFloat(index, keyCycle.mAlpha);
                        break;
                    case 10:
                        keyCycle.mElevation = typedArray.getDimension(index, keyCycle.mElevation);
                        break;
                    case 11:
                        keyCycle.mRotation = typedArray.getFloat(index, keyCycle.mRotation);
                        break;
                    case 12:
                        keyCycle.mRotationX = typedArray.getFloat(index, keyCycle.mRotationX);
                        break;
                    case 13:
                        keyCycle.mRotationY = typedArray.getFloat(index, keyCycle.mRotationY);
                        break;
                    case 14:
                        keyCycle.mTransitionPathRotate = typedArray.getFloat(index, keyCycle.mTransitionPathRotate);
                        break;
                    case 15:
                        keyCycle.mScaleX = typedArray.getFloat(index, keyCycle.mScaleX);
                        break;
                    case 16:
                        keyCycle.mScaleY = typedArray.getFloat(index, keyCycle.mScaleY);
                        break;
                    case 17:
                        keyCycle.mTranslationX = typedArray.getDimension(index, keyCycle.mTranslationX);
                        break;
                    case 18:
                        keyCycle.mTranslationY = typedArray.getDimension(index, keyCycle.mTranslationY);
                        break;
                    case 19:
                        if (Build.VERSION.SDK_INT >= 21) {
                            keyCycle.mTranslationZ = typedArray.getDimension(index, keyCycle.mTranslationZ);
                        }
                        break;
                    case 20:
                        keyCycle.mProgress = typedArray.getFloat(index, keyCycle.mProgress);
                        break;
                    case 21:
                        keyCycle.mWavePhase = typedArray.getFloat(index, keyCycle.mWavePhase) / 360.0f;
                        break;
                    default:
                        String hexString = Integer.toHexString(index);
                        int i2 = mAttrMap.get(index);
                        StringBuilder sb = new StringBuilder(String.valueOf(hexString).length() + 33);
                        sb.append(NPStringFog.decode(new byte[]{68, 11, 66, 74, 4, 7, 17, 4, 67, 77, 19, 10, 83, 16, 67, 92, 65, 83, 73}, "1e79ac", false, false));
                        sb.append(hexString);
                        sb.append("   ");
                        sb.append(i2);
                        Log.e(NPStringFog.decode(new byte[]{45, 86, 74, 118, 72, 0, 10, 86}, "f3351c", false, false), sb.toString());
                        break;
                }
            }
        }
    }

    public KeyCycle() {
        this.mType = 4;
        this.mCustomConstraints = new HashMap<>();
    }

    public void addCycleValues(HashMap<String, ViewOscillator> map) {
        ViewOscillator viewOscillator;
        ViewOscillator viewOscillator2;
        for (String str : map.keySet()) {
            if (str.startsWith(NPStringFog.decode(new byte[]{114, 101, 98, 55, 120, 125}, "101c70", -6719))) {
                ConstraintAttribute constraintAttribute = this.mCustomConstraints.get(str.substring(NPStringFog.decode(new byte[]{38, 101, 97, 48, 41, 124}, "e02df1", 447422174L).length() + 1));
                if (constraintAttribute != null && constraintAttribute.getType() == ConstraintAttribute.AttributeType.FLOAT_TYPE && (viewOscillator = map.get(str)) != null) {
                    viewOscillator.setPoint(this.mFramePosition, this.mWaveShape, this.mCustomWaveShape, this.mWaveVariesBy, this.mWavePeriod, this.mWaveOffset, this.mWavePhase, constraintAttribute.getValueToInterpolate(), constraintAttribute);
                }
            } else {
                float value = getValue(str);
                if (!Float.isNaN(value) && (viewOscillator2 = map.get(str)) != null) {
                    viewOscillator2.setPoint(this.mFramePosition, this.mWaveShape, this.mCustomWaveShape, this.mWaveVariesBy, this.mWavePeriod, this.mWaveOffset, this.mWavePhase, value);
                }
            }
        }
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void addValues(HashMap<String, ViewSpline> map) {
        int size = map.size();
        StringBuilder sb = new StringBuilder(22);
        sb.append(NPStringFog.decode(new byte[]{81, 5, 5, 20}, "0aa417", 1.3690664E9f));
        sb.append(size);
        sb.append(NPStringFog.decode(new byte[]{25, 67, 86, 91, 64, 84, 74}, "957751", 471244046L));
        Debug.logStack(NAME, sb.toString(), 2);
        for (String str : map.keySet()) {
            ViewSpline viewSpline = map.get(str);
            if (viewSpline != null) {
                byte b = -1;
                switch (str.hashCode()) {
                    case -1249320806:
                        if (str.equals(NPStringFog.decode(new byte[]{17, 86, 66, 81, 22, 13, 12, 87, 110}, "c960bd", -18390))) {
                            b = 3;
                        }
                        break;
                    case -1249320805:
                        if (str.equals(NPStringFog.decode(new byte[]{67, 87, 76, 2, 71, 94, 94, 86, 97}, "188c37", 1.198900259E9d))) {
                            b = 4;
                        }
                        break;
                    case -1225497657:
                        if (str.equals(NPStringFog.decode(new byte[]{22, 17, 86, 15, 71, 15, 3, 23, 94, 14, 90, 59}, "bc7a4c", 1.153179901E9d))) {
                            b = 8;
                        }
                        break;
                    case -1225497656:
                        if (str.equals(NPStringFog.decode(new byte[]{68, 69, 87, 87, 67, 91, 81, 67, 95, 86, 94, 110}, "076907", 3.88555961E8d))) {
                            b = 9;
                        }
                        break;
                    case -1225497655:
                        if (str.equals(NPStringFog.decode(new byte[]{68, 71, 0, 93, 70, 15, 81, 65, 8, 92, 91, 57}, "05a35c", 824866227L))) {
                            b = 10;
                        }
                        break;
                    case -1001078227:
                        if (str.equals(NPStringFog.decode(new byte[]{19, 64, 95, 1, 17, 82, 16, 65}, "c20fc7", -1206797230L))) {
                            b = 13;
                        }
                        break;
                    case -908189618:
                        if (str.equals(NPStringFog.decode(new byte[]{74, 81, 3, 90, 86, 111}, "92b637", -6.070258E8f))) {
                            b = 6;
                        }
                        break;
                    case -908189617:
                        if (str.equals(NPStringFog.decode(new byte[]{68, 7, 2, 89, 83, 59}, "7dc56b", 3.19353668E8d))) {
                            b = 7;
                        }
                        break;
                    case -40300674:
                        if (str.equals(NPStringFog.decode(new byte[]{20, 88, 22, 0, 17, 95, 9, 89}, "f7bae6", -4.390246E8f))) {
                            b = 2;
                        }
                        break;
                    case -4379043:
                        if (str.equals(NPStringFog.decode(new byte[]{3, 94, 92, 66, 80, 67, 15, 93, 87}, "f29417", 1066936525L))) {
                            b = 1;
                        }
                        break;
                    case 37232917:
                        if (str.equals(NPStringFog.decode(new byte[]{70, 68, 82, 10, 16, 10, 70, 95, 92, 10, 51, 2, 70, 94, 97, 11, 23, 2, 70, 83}, "263dcc", true))) {
                            b = 5;
                        }
                        break;
                    case 92909918:
                        if (str.equals(NPStringFog.decode(new byte[]{82, 91, 65, 89, 2}, "3711cd", true))) {
                            b = 0;
                        }
                        break;
                    case 156108012:
                        if (str.equals(WAVE_OFFSET)) {
                            b = 11;
                        }
                        break;
                    case 1530034690:
                        if (str.equals(WAVE_PHASE)) {
                            b = 12;
                        }
                        break;
                }
                switch (b) {
                    case 0:
                        viewSpline.setPoint(this.mFramePosition, this.mAlpha);
                        break;
                    case 1:
                        viewSpline.setPoint(this.mFramePosition, this.mElevation);
                        break;
                    case 2:
                        viewSpline.setPoint(this.mFramePosition, this.mRotation);
                        break;
                    case 3:
                        viewSpline.setPoint(this.mFramePosition, this.mRotationX);
                        break;
                    case 4:
                        viewSpline.setPoint(this.mFramePosition, this.mRotationY);
                        break;
                    case 5:
                        viewSpline.setPoint(this.mFramePosition, this.mTransitionPathRotate);
                        break;
                    case 6:
                        viewSpline.setPoint(this.mFramePosition, this.mScaleX);
                        break;
                    case 7:
                        viewSpline.setPoint(this.mFramePosition, this.mScaleY);
                        break;
                    case 8:
                        viewSpline.setPoint(this.mFramePosition, this.mTranslationX);
                        break;
                    case 9:
                        viewSpline.setPoint(this.mFramePosition, this.mTranslationY);
                        break;
                    case 10:
                        viewSpline.setPoint(this.mFramePosition, this.mTranslationZ);
                        break;
                    case 11:
                        viewSpline.setPoint(this.mFramePosition, this.mWaveOffset);
                        break;
                    case 12:
                        viewSpline.setPoint(this.mFramePosition, this.mWavePhase);
                        break;
                    case 13:
                        viewSpline.setPoint(this.mFramePosition, this.mProgress);
                        break;
                    default:
                        if (!str.startsWith(NPStringFog.decode(new byte[]{116, 103, 102, 54, 43, 123}, "725bd6", true))) {
                            String strValueOf = String.valueOf(str);
                            Log.v(NPStringFog.decode(new byte[]{99, 116, 55, 47, 124, 125, 115, 21, 46, 4, 76, 112, 77, 86, 9, 4}, "45ea53", true, true), strValueOf.length() != 0 ? NPStringFog.decode(new byte[]{18, 22, 52, 122, 126, 120, 125, 97, 47, 20, 21}, "26a456", -12632).concat(strValueOf) : new String(NPStringFog.decode(new byte[]{65, 69, 97, 42, 115, 40, 46, 50, 122, 68, 24}, "ae4d8f", -1.12401366E8d)));
                        }
                        break;
                }
            }
        }
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    /* JADX INFO: renamed from: clone */
    public Key mo3clone() {
        return new KeyCycle().copy(this);
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public Key copy(Key key) {
        super.copy(key);
        KeyCycle keyCycle = (KeyCycle) key;
        this.mTransitionEasing = keyCycle.mTransitionEasing;
        this.mCurveFit = keyCycle.mCurveFit;
        this.mWaveShape = keyCycle.mWaveShape;
        this.mCustomWaveShape = keyCycle.mCustomWaveShape;
        this.mWavePeriod = keyCycle.mWavePeriod;
        this.mWaveOffset = keyCycle.mWaveOffset;
        this.mWavePhase = keyCycle.mWavePhase;
        this.mProgress = keyCycle.mProgress;
        this.mWaveVariesBy = keyCycle.mWaveVariesBy;
        this.mAlpha = keyCycle.mAlpha;
        this.mElevation = keyCycle.mElevation;
        this.mRotation = keyCycle.mRotation;
        this.mTransitionPathRotate = keyCycle.mTransitionPathRotate;
        this.mRotationX = keyCycle.mRotationX;
        this.mRotationY = keyCycle.mRotationY;
        this.mScaleX = keyCycle.mScaleX;
        this.mScaleY = keyCycle.mScaleY;
        this.mTranslationX = keyCycle.mTranslationX;
        this.mTranslationY = keyCycle.mTranslationY;
        this.mTranslationZ = keyCycle.mTranslationZ;
        return this;
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void getAttributeNames(HashSet<String> hashSet) {
        if (!Float.isNaN(this.mAlpha)) {
            hashSet.add(NPStringFog.decode(new byte[]{89, 15, 21, 81, 86}, "8ce97b", 696960046L));
        }
        if (!Float.isNaN(this.mElevation)) {
            hashSet.add(NPStringFog.decode(new byte[]{87, 89, 86, 18, 3, 71, 91, 90, 93}, "253db3", true));
        }
        if (!Float.isNaN(this.mRotation)) {
            hashSet.add(NPStringFog.decode(new byte[]{22, 13, 21, 2, 66, 93, 11, 12}, "dbac64", -1.2188511E9f));
        }
        if (!Float.isNaN(this.mRotationX)) {
            hashSet.add(NPStringFog.decode(new byte[]{66, 11, 71, 84, 71, 80, 95, 10, 107}, "0d3539", true));
        }
        if (!Float.isNaN(this.mRotationY)) {
            hashSet.add(NPStringFog.decode(new byte[]{68, 88, 17, 3, 76, 11, 89, 89, 60}, "67eb8b", false));
        }
        if (!Float.isNaN(this.mScaleX)) {
            hashSet.add(NPStringFog.decode(new byte[]{22, 90, 84, 88, 4, 61}, "e954ae", -19117));
        }
        if (!Float.isNaN(this.mScaleY)) {
            hashSet.add(NPStringFog.decode(new byte[]{69, 5, 82, 10, 92, 111}, "6f3f96", true));
        }
        if (!Float.isNaN(this.mTransitionPathRotate)) {
            hashSet.add(NPStringFog.decode(new byte[]{66, 22, 7, 93, 65, 10, 66, 13, 9, 93, 98, 2, 66, 12, 52, 92, 70, 2, 66, 1}, "6df32c", true));
        }
        if (!Float.isNaN(this.mTranslationX)) {
            hashSet.add(NPStringFog.decode(new byte[]{18, 22, 89, 12, 16, 85, 7, 16, 81, 13, 13, 97}, "fd8bc9", false, false));
        }
        if (!Float.isNaN(this.mTranslationY)) {
            hashSet.add(NPStringFog.decode(new byte[]{18, 23, 83, 87, 17, 8, 7, 17, 91, 86, 12, 61}, "fe29bd", false));
        }
        if (!Float.isNaN(this.mTranslationZ)) {
            hashSet.add(NPStringFog.decode(new byte[]{17, 66, 85, 13, 74, 13, 4, 68, 93, 12, 87, 59}, "e04c9a", 3.0721728E8f));
        }
        if (this.mCustomConstraints.size() > 0) {
            for (String str : this.mCustomConstraints.keySet()) {
                String strValueOf = String.valueOf(NPStringFog.decode(new byte[]{37, 108, 55, 49, 125, 116, 74}, "f9de29", true, true));
                String strValueOf2 = String.valueOf(str);
                hashSet.add(strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf));
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:4:0x000f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public float getValue(java.lang.String r7) {
        /*
            Method dump skipped, instruction units count: 714
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.KeyCycle.getValue(java.lang.String):float");
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void load(Context context, AttributeSet attributeSet) {
        Loader.read(this, context.obtainStyledAttributes(attributeSet, R.styleable.KeyCycle));
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
            Method dump skipped, instruction units count: 793
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.KeyCycle.setValue(java.lang.String, java.lang.Object):void");
    }
}
