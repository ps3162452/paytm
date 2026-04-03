package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import androidx.constraintlayout.widget.R;
import java.util.HashMap;
import java.util.HashSet;
import n.NPStringFog;

/* JADX INFO: loaded from: classes39.dex */
public class KeyAttributes extends Key {
    private static final boolean DEBUG = false;
    public static final int KEY_TYPE = 1;
    static final String NAME = NPStringFog.decode(new byte[]{126, 4, 29, 36, 16, 71, 71, 8, 6, 16, 16, 86}, "5aded3", 1268074942L);
    private static final String TAG = NPStringFog.decode(new byte[]{123, 84, 26, 120, 71, 68, 66, 88, 1, 76, 71, 85, 67}, "01c930", true);
    private String mTransitionEasing;
    private int mCurveFit = -1;
    private boolean mVisibility = false;
    private float mAlpha = Float.NaN;
    private float mElevation = Float.NaN;
    private float mRotation = Float.NaN;
    private float mRotationX = Float.NaN;
    private float mRotationY = Float.NaN;
    private float mPivotX = Float.NaN;
    private float mPivotY = Float.NaN;
    private float mTransitionPathRotate = Float.NaN;
    private float mScaleX = Float.NaN;
    private float mScaleY = Float.NaN;
    private float mTranslationX = Float.NaN;
    private float mTranslationY = Float.NaN;
    private float mTranslationZ = Float.NaN;
    private float mProgress = Float.NaN;

    private static class Loader {
        private static final int ANDROID_ALPHA = 1;
        private static final int ANDROID_ELEVATION = 2;
        private static final int ANDROID_PIVOT_X = 19;
        private static final int ANDROID_PIVOT_Y = 20;
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
        private static SparseIntArray mAttrMap;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            mAttrMap = sparseIntArray;
            sparseIntArray.append(R.styleable.KeyAttribute_android_alpha, 1);
            mAttrMap.append(R.styleable.KeyAttribute_android_elevation, 2);
            mAttrMap.append(R.styleable.KeyAttribute_android_rotation, 4);
            mAttrMap.append(R.styleable.KeyAttribute_android_rotationX, 5);
            mAttrMap.append(R.styleable.KeyAttribute_android_rotationY, 6);
            mAttrMap.append(R.styleable.KeyAttribute_android_transformPivotX, 19);
            mAttrMap.append(R.styleable.KeyAttribute_android_transformPivotY, 20);
            mAttrMap.append(R.styleable.KeyAttribute_android_scaleX, 7);
            mAttrMap.append(R.styleable.KeyAttribute_transitionPathRotate, 8);
            mAttrMap.append(R.styleable.KeyAttribute_transitionEasing, 9);
            mAttrMap.append(R.styleable.KeyAttribute_motionTarget, 10);
            mAttrMap.append(R.styleable.KeyAttribute_framePosition, 12);
            mAttrMap.append(R.styleable.KeyAttribute_curveFit, 13);
            mAttrMap.append(R.styleable.KeyAttribute_android_scaleY, 14);
            mAttrMap.append(R.styleable.KeyAttribute_android_translationX, 15);
            mAttrMap.append(R.styleable.KeyAttribute_android_translationY, 16);
            mAttrMap.append(R.styleable.KeyAttribute_android_translationZ, 17);
            mAttrMap.append(R.styleable.KeyAttribute_motionProgress, 18);
        }

        private Loader() {
        }

        public static void read(KeyAttributes keyAttributes, TypedArray typedArray) {
            int indexCount = typedArray.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArray.getIndex(i);
                switch (mAttrMap.get(index)) {
                    case 1:
                        keyAttributes.mAlpha = typedArray.getFloat(index, keyAttributes.mAlpha);
                        break;
                    case 2:
                        keyAttributes.mElevation = typedArray.getDimension(index, keyAttributes.mElevation);
                        break;
                    case 3:
                    case 11:
                    default:
                        String hexString = Integer.toHexString(index);
                        int i2 = mAttrMap.get(index);
                        StringBuilder sb = new StringBuilder(String.valueOf(hexString).length() + 33);
                        sb.append(NPStringFog.decode(new byte[]{77, 90, 22, 22, 93, 87, 24, 85, 23, 17, 74, 90, 90, 65, 23, 0, 24, 3, 64}, "84ce83", false));
                        sb.append(hexString);
                        sb.append("   ");
                        sb.append(i2);
                        Log.e(NPStringFog.decode(new byte[]{114, 85, 65, 39, 18, 67, 75, 89, 90, 19, 18, 82}, "908ff7", 25595), sb.toString());
                        break;
                    case 4:
                        keyAttributes.mRotation = typedArray.getFloat(index, keyAttributes.mRotation);
                        break;
                    case 5:
                        keyAttributes.mRotationX = typedArray.getFloat(index, keyAttributes.mRotationX);
                        break;
                    case 6:
                        keyAttributes.mRotationY = typedArray.getFloat(index, keyAttributes.mRotationY);
                        break;
                    case 7:
                        keyAttributes.mScaleX = typedArray.getFloat(index, keyAttributes.mScaleX);
                        break;
                    case 8:
                        keyAttributes.mTransitionPathRotate = typedArray.getFloat(index, keyAttributes.mTransitionPathRotate);
                        break;
                    case 9:
                        keyAttributes.mTransitionEasing = typedArray.getString(index);
                        break;
                    case 10:
                        if (MotionLayout.IS_IN_EDIT_MODE) {
                            keyAttributes.mTargetId = typedArray.getResourceId(index, keyAttributes.mTargetId);
                            if (keyAttributes.mTargetId == -1) {
                                keyAttributes.mTargetString = typedArray.getString(index);
                            }
                        } else if (typedArray.peekValue(index).type == 3) {
                            keyAttributes.mTargetString = typedArray.getString(index);
                        } else {
                            keyAttributes.mTargetId = typedArray.getResourceId(index, keyAttributes.mTargetId);
                        }
                        break;
                    case 12:
                        keyAttributes.mFramePosition = typedArray.getInt(index, keyAttributes.mFramePosition);
                        break;
                    case 13:
                        keyAttributes.mCurveFit = typedArray.getInteger(index, keyAttributes.mCurveFit);
                        break;
                    case 14:
                        keyAttributes.mScaleY = typedArray.getFloat(index, keyAttributes.mScaleY);
                        break;
                    case 15:
                        keyAttributes.mTranslationX = typedArray.getDimension(index, keyAttributes.mTranslationX);
                        break;
                    case 16:
                        keyAttributes.mTranslationY = typedArray.getDimension(index, keyAttributes.mTranslationY);
                        break;
                    case 17:
                        if (Build.VERSION.SDK_INT >= 21) {
                            keyAttributes.mTranslationZ = typedArray.getDimension(index, keyAttributes.mTranslationZ);
                        }
                        break;
                    case 18:
                        keyAttributes.mProgress = typedArray.getFloat(index, keyAttributes.mProgress);
                        break;
                    case 19:
                        keyAttributes.mPivotX = typedArray.getDimension(index, keyAttributes.mPivotX);
                        break;
                    case 20:
                        keyAttributes.mPivotY = typedArray.getDimension(index, keyAttributes.mPivotY);
                        break;
                }
            }
        }
    }

    public KeyAttributes() {
        this.mType = 1;
        this.mCustomConstraints = new HashMap<>();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0067  */
    @Override // androidx.constraintlayout.motion.widget.Key
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void addValues(java.util.HashMap<java.lang.String, androidx.constraintlayout.motion.utils.ViewSpline> r13) {
        /*
            Method dump skipped, instruction units count: 919
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.KeyAttributes.addValues(java.util.HashMap):void");
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    /* JADX INFO: renamed from: clone */
    public Key mo3clone() {
        return new KeyAttributes().copy(this);
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public Key copy(Key key) {
        super.copy(key);
        KeyAttributes keyAttributes = (KeyAttributes) key;
        this.mCurveFit = keyAttributes.mCurveFit;
        this.mVisibility = keyAttributes.mVisibility;
        this.mAlpha = keyAttributes.mAlpha;
        this.mElevation = keyAttributes.mElevation;
        this.mRotation = keyAttributes.mRotation;
        this.mRotationX = keyAttributes.mRotationX;
        this.mRotationY = keyAttributes.mRotationY;
        this.mPivotX = keyAttributes.mPivotX;
        this.mPivotY = keyAttributes.mPivotY;
        this.mTransitionPathRotate = keyAttributes.mTransitionPathRotate;
        this.mScaleX = keyAttributes.mScaleX;
        this.mScaleY = keyAttributes.mScaleY;
        this.mTranslationX = keyAttributes.mTranslationX;
        this.mTranslationY = keyAttributes.mTranslationY;
        this.mTranslationZ = keyAttributes.mTranslationZ;
        this.mProgress = keyAttributes.mProgress;
        return this;
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void getAttributeNames(HashSet<String> hashSet) {
        if (!Float.isNaN(this.mAlpha)) {
            hashSet.add(NPStringFog.decode(new byte[]{86, 92, 22, 94, 2}, "70f6ca", 1.8264652E7f));
        }
        if (!Float.isNaN(this.mElevation)) {
            hashSet.add(NPStringFog.decode(new byte[]{80, 89, 4, 21, 85, 71, 92, 90, 15}, "55ac43", false, false));
        }
        if (!Float.isNaN(this.mRotation)) {
            hashSet.add(NPStringFog.decode(new byte[]{74, 95, 71, 7, 67, 10, 87, 94}, "803f7c", true, false));
        }
        if (!Float.isNaN(this.mRotationX)) {
            hashSet.add(NPStringFog.decode(new byte[]{22, 90, 77, 4, 77, 88, 11, 91, 97}, "d59e91", -2.070904519E9d));
        }
        if (!Float.isNaN(this.mRotationY)) {
            hashSet.add(NPStringFog.decode(new byte[]{19, 9, 17, 5, 70, 88, 14, 8, 60}, "afed21", true, false));
        }
        if (!Float.isNaN(this.mPivotX)) {
            hashSet.add(NPStringFog.decode(new byte[]{17, 68, 81, 11, 65, 80, 10, 68, 93, 53, 91, 64, 10, 66, 104}, "e60e26", 1808728383L));
        }
        if (!Float.isNaN(this.mPivotY)) {
            hashSet.add(NPStringFog.decode(new byte[]{64, 67, 0, 89, 21, 86, 91, 67, 12, 103, 15, 70, 91, 69, 56}, "41a7f0", 2.5849334E8f));
        }
        if (!Float.isNaN(this.mTranslationX)) {
            hashSet.add(NPStringFog.decode(new byte[]{65, 19, 0, 88, 70, 95, 84, 21, 8, 89, 91, 107}, "5aa653", 3.57575394E8d));
        }
        if (!Float.isNaN(this.mTranslationY)) {
            hashSet.add(NPStringFog.decode(new byte[]{70, 70, 82, 94, 67, 92, 83, 64, 90, 95, 94, 105}, "243000", true));
        }
        if (!Float.isNaN(this.mTranslationZ)) {
            hashSet.add(NPStringFog.decode(new byte[]{67, 75, 87, 95, 22, 94, 86, 77, 95, 94, 11, 104}, "7961e2", 1.541010307E9d));
        }
        if (!Float.isNaN(this.mTransitionPathRotate)) {
            hashSet.add(NPStringFog.decode(new byte[]{64, 17, 89, 93, 16, 95, 64, 10, 87, 93, 51, 87, 64, 11, 106, 92, 23, 87, 64, 6}, "4c83c6", true, true));
        }
        if (!Float.isNaN(this.mScaleX)) {
            hashSet.add(NPStringFog.decode(new byte[]{64, 82, 81, 85, 86, 109}, "310935", 1.37942465E8d));
        }
        if (!Float.isNaN(this.mScaleY)) {
            hashSet.add(NPStringFog.decode(new byte[]{67, 5, 86, 95, 0, 104}, "0f73e1", -3.253758E8f));
        }
        if (!Float.isNaN(this.mProgress)) {
            hashSet.add(NPStringFog.decode(new byte[]{67, 22, 95, 83, 67, 87, 64, 23}, "3d0412", 1.2881148E9f));
        }
        if (this.mCustomConstraints.size() > 0) {
            for (String str : this.mCustomConstraints.keySet()) {
                String strValueOf = String.valueOf(NPStringFog.decode(new byte[]{38, 101, 48, 97, 126, 117, 73}, "e0c518", false, false));
                String strValueOf2 = String.valueOf(str);
                hashSet.add(strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf));
            }
        }
    }

    int getCurveFit() {
        return this.mCurveFit;
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void load(Context context, AttributeSet attributeSet) {
        Loader.read(this, context.obtainStyledAttributes(attributeSet, R.styleable.KeyAttribute));
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void setInterpolation(HashMap<String, Integer> map) {
        if (this.mCurveFit == -1) {
            return;
        }
        if (!Float.isNaN(this.mAlpha)) {
            map.put(NPStringFog.decode(new byte[]{3, 8, 20, 9, 81}, "bdda09", true), Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mElevation)) {
            map.put(NPStringFog.decode(new byte[]{93, 95, 6, 69, 88, 23, 81, 92, 13}, "83c39c", 4.84627039E8d), Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mRotation)) {
            map.put(NPStringFog.decode(new byte[]{70, 88, 21, 80, 23, 90, 91, 89}, "47a1c3", -7.238892E7d), Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mRotationX)) {
            map.put(NPStringFog.decode(new byte[]{75, 87, 69, 89, 70, 93, 86, 86, 105}, "981824", -208316803L), Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mRotationY)) {
            map.put(NPStringFog.decode(new byte[]{17, 12, 66, 2, 77, 92, 12, 13, 111}, "cc6c95", 18280), Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mPivotX)) {
            map.put(NPStringFog.decode(new byte[]{77, 19, 88, 90, 66, 84, 86, 19, 84, 100, 88, 68, 86, 21, 97}, "9a9412", false, true), Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mPivotY)) {
            map.put(NPStringFog.decode(new byte[]{68, 71, 3, 12, 66, 0, 95, 71, 15, 50, 88, 16, 95, 65, 59}, "05bb1f", -1.4070701E9f), Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mTranslationX)) {
            map.put(NPStringFog.decode(new byte[]{18, 69, 4, 87, 75, 93, 7, 67, 12, 86, 86, 105}, "f7e981", 9.27820353E8d), Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mTranslationY)) {
            map.put(NPStringFog.decode(new byte[]{68, 20, 89, 87, 64, 85, 81, 18, 81, 86, 93, 96}, "0f8939", 225183088L), Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mTranslationZ)) {
            map.put(NPStringFog.decode(new byte[]{18, 22, 82, 86, 67, 8, 7, 16, 90, 87, 94, 62}, "fd380d", 1337732652L), Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mTransitionPathRotate)) {
            map.put(NPStringFog.decode(new byte[]{23, 69, 88, 10, 71, 89, 23, 94, 86, 10, 100, 81, 23, 95, 107, 11, 64, 81, 23, 82}, "c79d40", 14145), Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mScaleX)) {
            map.put(NPStringFog.decode(new byte[]{18, 0, 80, 14, 92, 96}, "ac1b98", -1017477347L), Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mScaleY)) {
            map.put(NPStringFog.decode(new byte[]{69, 90, 7, 15, 7, 105}, "69fcb0", 16490), Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mProgress)) {
            map.put(NPStringFog.decode(new byte[]{19, 69, 10, 83, 16, 84, 16, 68}, "c7e4b1", false), Integer.valueOf(this.mCurveFit));
        }
        if (this.mCustomConstraints.size() > 0) {
            for (String str : this.mCustomConstraints.keySet()) {
                String strValueOf = String.valueOf(NPStringFog.decode(new byte[]{38, 49, 100, 48, 41, 121, 73}, "ed7df4", 4766));
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
            Method dump skipped, instruction units count: 845
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.KeyAttributes.setValue(java.lang.String, java.lang.Object):void");
    }
}
