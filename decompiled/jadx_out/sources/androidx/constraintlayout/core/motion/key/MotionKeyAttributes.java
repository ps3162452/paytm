package androidx.constraintlayout.core.motion.key;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import n.NPStringFog;

/* JADX INFO: loaded from: classes40.dex */
public class MotionKeyAttributes extends MotionKey {
    private static final boolean DEBUG = false;
    public static final int KEY_TYPE = 1;
    static final String NAME = NPStringFog.decode(new byte[]{124, 93, 79, 37, 69, 16, 69, 81, 84, 17, 69, 1}, "786d1d", -1.21781729E9d);
    private static final String TAG = NPStringFog.decode(new byte[]{47, 6, 74, 115, 22, 64, 22, 10, 81, 71, 22, 81, 23}, "dc32b4", false);
    private String mTransitionEasing;
    private int mCurveFit = -1;
    private int mVisibility = 0;
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

    public MotionKeyAttributes() {
        this.mType = 1;
        this.mCustom = new HashMap<>();
    }

    private float getFloatValue(int i) {
        switch (i) {
            case 100:
                return this.mFramePosition;
            case 303:
                return this.mAlpha;
            case 304:
                return this.mTranslationX;
            case 305:
                return this.mTranslationY;
            case 306:
                return this.mTranslationZ;
            case 307:
                return this.mElevation;
            case 308:
                return this.mRotationX;
            case 309:
                return this.mRotationY;
            case 310:
                return this.mRotation;
            case 311:
                return this.mScaleX;
            case 312:
                return this.mScaleY;
            case 313:
                return this.mPivotX;
            case 314:
                return this.mPivotY;
            case 315:
                return this.mProgress;
            case TypedValues.Attributes.TYPE_PATH_ROTATE /* 316 */:
                return this.mTransitionPathRotate;
            default:
                return Float.NaN;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0067  */
    @Override // androidx.constraintlayout.core.motion.key.MotionKey
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void addValues(java.util.HashMap<java.lang.String, androidx.constraintlayout.core.motion.utils.SplineSet> r15) {
        /*
            Method dump skipped, instruction units count: 957
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.motion.key.MotionKeyAttributes.addValues(java.util.HashMap):void");
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey
    /* JADX INFO: renamed from: clone */
    public MotionKey mo2clone() {
        return null;
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey
    public void getAttributeNames(HashSet<String> hashSet) {
        if (!Float.isNaN(this.mAlpha)) {
            hashSet.add(NPStringFog.decode(new byte[]{85, 8, 70, 9, 3}, "4d6ab3", -2.3976509E8f));
        }
        if (!Float.isNaN(this.mElevation)) {
            hashSet.add(NPStringFog.decode(new byte[]{93, 88, 83, 66, 83, 16, 81, 91, 88}, "84642d", 401684577L));
        }
        if (!Float.isNaN(this.mRotation)) {
            hashSet.add(NPStringFog.decode(new byte[]{22, 9, 23, 88, 69, 13, 11, 8, 57}, "dfc91d", 5.36028867E8d));
        }
        if (!Float.isNaN(this.mRotationX)) {
            hashSet.add(NPStringFog.decode(new byte[]{71, 89, 16, 82, 65, 12, 90, 88, 60}, "56d35e", true));
        }
        if (!Float.isNaN(this.mRotationY)) {
            hashSet.add(NPStringFog.decode(new byte[]{66, 12, 69, 83, 23, 88, 95, 13, 104}, "0c12c1", false, true));
        }
        if (!Float.isNaN(this.mPivotX)) {
            hashSet.add(NPStringFog.decode(new byte[]{18, 8, 19, 12, 22, 106}, "baecb2", -26989));
        }
        if (!Float.isNaN(this.mPivotY)) {
            hashSet.add(NPStringFog.decode(new byte[]{17, 11, 79, 90, 77, 104}, "ab9591", -3.6197667E8f));
        }
        if (!Float.isNaN(this.mTranslationX)) {
            hashSet.add(NPStringFog.decode(new byte[]{22, 64, 7, 88, 16, 88, 3, 70, 15, 89, 13, 108}, "b2f6c4", 886850828L));
        }
        if (!Float.isNaN(this.mTranslationY)) {
            hashSet.add(NPStringFog.decode(new byte[]{66, 71, 88, 92, 65, 8, 87, 65, 80, 93, 92, 61}, "65922d", true));
        }
        if (!Float.isNaN(this.mTranslationZ)) {
            hashSet.add(NPStringFog.decode(new byte[]{17, 70, 3, 12, 70, 15, 4, 64, 11, 13, 91, 57}, "e4bb5c", false, false));
        }
        if (!Float.isNaN(this.mTransitionPathRotate)) {
            hashSet.add(NPStringFog.decode(new byte[]{18, 0, 69, 10, 103, 11, 22, 0, 69, 7}, "ba1b5d", 8.07630701E8d));
        }
        if (!Float.isNaN(this.mScaleX)) {
            hashSet.add(NPStringFog.decode(new byte[]{75, 6, 83, 15, 85, 110}, "8e2c06", 8.3709109E7d));
        }
        if (!Float.isNaN(this.mScaleY)) {
            hashSet.add(NPStringFog.decode(new byte[]{74, 7, 0, 85, 85, 96}, "9da909", true));
        }
        if (!Float.isNaN(this.mProgress)) {
            hashSet.add(NPStringFog.decode(new byte[]{71, 65, 91, 3, 22, 85, 68, 64}, "734dd0", false, false));
        }
        if (this.mCustom.size() > 0) {
            Iterator<String> it = this.mCustom.keySet().iterator();
            while (it.hasNext()) {
                hashSet.add(NPStringFog.decode(new byte[]{118, 109, 49, 103, 121, 117, 25}, "58b368", true) + it.next());
            }
        }
    }

    public int getCurveFit() {
        return this.mCurveFit;
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public int getId(String str) {
        return TypedValues.Attributes.CC.getId(str);
    }

    public void printAttributes() {
        HashSet<String> hashSet = new HashSet<>();
        getAttributeNames(hashSet);
        System.out.println(NPStringFog.decode(new byte[]{25, 31, 72, 26, 26, 76, 20, 31, 72, 26, 26, 76, 20, 31, 69}, "92e77a", -1016051793L) + this.mFramePosition + NPStringFog.decode(new byte[]{16, 20, 20, 28, 79, 76, 29, 20, 20, 28, 79, 76, 29, 20}, "0991ba", -15979));
        String[] strArr = (String[]) hashSet.toArray(new String[0]);
        for (int i = 0; i < strArr.length; i++) {
            int id = TypedValues.Attributes.CC.getId(strArr[i]);
            System.out.println(strArr[i] + NPStringFog.decode(new byte[]{14}, "43ce1e", false, true) + getFloatValue(id));
        }
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey
    public void setInterpolation(HashMap<String, Integer> map) {
        if (!Float.isNaN(this.mAlpha)) {
            map.put(NPStringFog.decode(new byte[]{86, 85, 64, 9, 81}, "790a0a", true), Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mElevation)) {
            map.put(NPStringFog.decode(new byte[]{83, 13, 82, 19, 89, 16, 95, 14, 89}, "6a7e8d", -23931), Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mRotation)) {
            map.put(NPStringFog.decode(new byte[]{70, 10, 65, 81, 70, 12, 91, 11, 111}, "4e502e", -1930242062L), Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mRotationX)) {
            map.put(NPStringFog.decode(new byte[]{19, 94, 21, 4, 16, 88, 14, 95, 57}, "a1aed1", 1.175983E9f), Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mRotationY)) {
            map.put(NPStringFog.decode(new byte[]{20, 90, 21, 2, 69, 91, 9, 91, 56}, "f5ac12", -705165196L), Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mPivotX)) {
            map.put(NPStringFog.decode(new byte[]{18, 93, 21, 92, 64, 107}, "b4c343", false), Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mPivotY)) {
            map.put(NPStringFog.decode(new byte[]{64, 13, 20, 87, 68, 108}, "0db805", true, false), Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mTranslationX)) {
            map.put(NPStringFog.decode(new byte[]{76, 22, 2, 86, 18, 92, 89, 16, 10, 87, 15, 104}, "8dc8a0", 23968), Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mTranslationY)) {
            map.put(NPStringFog.decode(new byte[]{21, 19, 81, 10, 71, 15, 0, 21, 89, 11, 90, 58}, "aa0d4c", true), Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mTranslationZ)) {
            map.put(NPStringFog.decode(new byte[]{17, 23, 81, 10, 21, 13, 4, 17, 89, 11, 8, 59}, "ee0dfa", 19223), Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mTransitionPathRotate)) {
            map.put(NPStringFog.decode(new byte[]{69, 88, 77, 92, 102, 91, 65, 88, 77, 81}, "599444", 1.486059409E9d), Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mScaleX)) {
            map.put(NPStringFog.decode(new byte[]{64, 91, 86, 9, 6, 97}, "387ec9", true, false), Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mScaleY)) {
            map.put(NPStringFog.decode(new byte[]{69, 7, 4, 15, 87, 104}, "6dec21", 24797), Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mProgress)) {
            map.put(NPStringFog.decode(new byte[]{67, 17, 11, 83, 69, 83, 64, 16}, "3cd476", 1899929934L), Integer.valueOf(this.mCurveFit));
        }
        if (this.mCustom.size() > 0) {
            Iterator<String> it = this.mCustom.keySet().iterator();
            while (it.hasNext()) {
                map.put(NPStringFog.decode(new byte[]{33, 54, 96, 97, 119, 120, 78}, "bc3585", false, false) + it.next(), Integer.valueOf(this.mCurveFit));
            }
        }
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey, androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i, float f) {
        switch (i) {
            case 100:
                this.mTransitionPathRotate = f;
                return true;
            case 303:
                this.mAlpha = f;
                return true;
            case 304:
                this.mTranslationX = f;
                return true;
            case 305:
                this.mTranslationY = f;
                return true;
            case 306:
                this.mTranslationZ = f;
                return true;
            case 307:
                this.mElevation = f;
                return true;
            case 308:
                this.mRotationX = f;
                return true;
            case 309:
                this.mRotationY = f;
                return true;
            case 310:
                this.mRotation = f;
                return true;
            case 311:
                this.mScaleX = f;
                return true;
            case 312:
                this.mScaleY = f;
                return true;
            case 313:
                this.mPivotX = f;
                return true;
            case 314:
                this.mPivotY = f;
                return true;
            case 315:
                this.mProgress = f;
                return true;
            case TypedValues.Attributes.TYPE_PATH_ROTATE /* 316 */:
                this.mTransitionPathRotate = f;
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
            case 301:
                this.mCurveFit = i2;
                return true;
            case 302:
                this.mVisibility = i2;
                return true;
            default:
                if (!setValue(i, i2)) {
                    return super.setValue(i, i2);
                }
                return true;
        }
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey, androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i, String str) {
        switch (i) {
            case 101:
                this.mTargetString = str;
                return true;
            case TypedValues.Attributes.TYPE_EASING /* 317 */:
                this.mTransitionEasing = str;
                return true;
            default:
                return super.setValue(i, str);
        }
    }
}
