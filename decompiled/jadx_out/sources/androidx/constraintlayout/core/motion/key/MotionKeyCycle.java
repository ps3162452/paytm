package androidx.constraintlayout.core.motion.key;

import androidx.constraintlayout.core.motion.CustomVariable;
import androidx.constraintlayout.core.motion.utils.KeyCycleOscillator;
import androidx.constraintlayout.core.motion.utils.SplineSet;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.core.motion.utils.Utils;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import n.NPStringFog;

/* JADX INFO: loaded from: classes40.dex */
public class MotionKeyCycle extends MotionKey {
    public static final int KEY_TYPE = 4;
    public static final int SHAPE_BOUNCE = 6;
    public static final int SHAPE_COS_WAVE = 5;
    public static final int SHAPE_REVERSE_SAW_WAVE = 4;
    public static final int SHAPE_SAW_WAVE = 3;
    public static final int SHAPE_SIN_WAVE = 0;
    public static final int SHAPE_SQUARE_WAVE = 1;
    public static final int SHAPE_TRIANGLE_WAVE = 2;
    static final String NAME = NPStringFog.decode(new byte[]{45, 83, 72, 32, 24, 1, 10, 83}, "f61cab", false);
    private static final String TAG = NPStringFog.decode(new byte[]{114, 84, 27, 117, 31, 83, 85, 84}, "91b6f0", 540501934L);
    public static final String WAVE_OFFSET = NPStringFog.decode(new byte[]{22, 7, 19, 82, 43, 83, 7, 21, 0, 67}, "afe7d5", true, false);
    public static final String WAVE_PERIOD = NPStringFog.decode(new byte[]{19, 0, 19, 0, 100, 1, 22, 8, 10, 1}, "daee4d", 1230525462L);
    public static final String WAVE_PHASE = NPStringFog.decode(new byte[]{18, 2, 69, 86, 50, 80, 4, 16, 86}, "ec33b8", 8.36978882E8d);
    public static final String WAVE_SHAPE = NPStringFog.decode(new byte[]{20, 0, 21, 3, 102, 81, 2, 17, 6}, "cacf59", 8.92380086E8d);
    private String mTransitionEasing = null;
    private int mCurveFit = 0;
    private int mWaveShape = -1;
    private String mCustomWaveShape = null;
    private float mWavePeriod = Float.NaN;
    private float mWaveOffset = 0.0f;
    private float mWavePhase = 0.0f;
    private float mProgress = Float.NaN;
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

    public MotionKeyCycle() {
        this.mType = 4;
        this.mCustom = new HashMap<>();
    }

    public void addCycleValues(HashMap<String, KeyCycleOscillator> map) {
        KeyCycleOscillator keyCycleOscillator;
        KeyCycleOscillator keyCycleOscillator2;
        for (String str : map.keySet()) {
            if (str.startsWith(NPStringFog.decode(new byte[]{112, 98, 53, 100, 126, 126}, "37f013", false, false))) {
                CustomVariable customVariable = this.mCustom.get(str.substring(NPStringFog.decode(new byte[]{114, 108, 98, 99, 120, 121}, "191774", 19920).length() + 1));
                if (customVariable != null && customVariable.getType() == 901 && (keyCycleOscillator = map.get(str)) != null) {
                    keyCycleOscillator.setPoint(this.mFramePosition, this.mWaveShape, this.mCustomWaveShape, -1, this.mWavePeriod, this.mWaveOffset, this.mWavePhase, customVariable.getValueToInterpolate(), customVariable);
                }
            } else {
                float value = getValue(str);
                if (!Float.isNaN(value) && (keyCycleOscillator2 = map.get(str)) != null) {
                    keyCycleOscillator2.setPoint(this.mFramePosition, this.mWaveShape, this.mCustomWaveShape, -1, this.mWavePeriod, this.mWaveOffset, this.mWavePhase, value);
                }
            }
        }
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey
    public void addValues(HashMap<String, SplineSet> map) {
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey
    /* JADX INFO: renamed from: clone */
    public MotionKey mo2clone() {
        return null;
    }

    public void dump() {
        System.out.println(NPStringFog.decode(new byte[]{47, 93, 17, 90, 13, 8, 41, 87, 28, 112, 27, 5, 14, 87, 30, 94, 53, 7, 20, 87, 54, 91, 3, 22, 7, 15}, "b2e3bf", true) + this.mWaveShape + NPStringFog.decode(new byte[]{28, 19, 85, 54, 82, 79, 85, 99, 93, 19, 90, 86, 84, 14}, "038a39", 13024) + this.mWavePeriod + NPStringFog.decode(new byte[]{31, 70, 90, 102, 82, 70, 86, 41, 81, 87, 64, 85, 71, 91}, "3f7130", 9.4328384E8f) + this.mWaveOffset + NPStringFog.decode(new byte[]{20, 22, 15, 98, 81, 67, 93, 102, 10, 84, 67, 80, 5}, "86b505", -758500094L) + this.mWavePhase + NPStringFog.decode(new byte[]{30, 16, 85, 97, 94, 17, 83, 68, 81, 92, 95, 88}, "20831e", -1394602846L) + this.mRotation + '}');
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey
    public void getAttributeNames(HashSet<String> hashSet) {
        if (!Float.isNaN(this.mAlpha)) {
            hashSet.add(NPStringFog.decode(new byte[]{87, 93, 64, 90, 88}, "61029c", true));
        }
        if (!Float.isNaN(this.mElevation)) {
            hashSet.add(NPStringFog.decode(new byte[]{85, 91, 87, 65, 7, 69, 89, 88, 92}, "0727f1", 7093));
        }
        if (!Float.isNaN(this.mRotation)) {
            hashSet.add(NPStringFog.decode(new byte[]{16, 88, 16, 5, 69, 92, 13, 89, 62}, "b7dd15", false));
        }
        if (!Float.isNaN(this.mRotationX)) {
            hashSet.add(NPStringFog.decode(new byte[]{16, 89, 21, 85, 16, 8, 13, 88, 57}, "b6a4da", true));
        }
        if (!Float.isNaN(this.mRotationY)) {
            hashSet.add(NPStringFog.decode(new byte[]{16, 89, 22, 83, 18, 94, 13, 88, 59}, "b6b2f7", -1.6353344E9f));
        }
        if (!Float.isNaN(this.mScaleX)) {
            hashSet.add(NPStringFog.decode(new byte[]{67, 87, 4, 92, 83, 60}, "04e06d", true));
        }
        if (!Float.isNaN(this.mScaleY)) {
            hashSet.add(NPStringFog.decode(new byte[]{21, 91, 84, 94, 1, 108}, "f852d5", 1.661318708E9d));
        }
        if (!Float.isNaN(this.mTransitionPathRotate)) {
            hashSet.add(NPStringFog.decode(new byte[]{70, 0, 68, 9, 99, 93, 66, 0, 68, 4}, "6a0a12", -1.0696961E9f));
        }
        if (!Float.isNaN(this.mTranslationX)) {
            hashSet.add(NPStringFog.decode(new byte[]{23, 22, 81, 95, 17, 10, 2, 16, 89, 94, 12, 62}, "cd01bf", true));
        }
        if (!Float.isNaN(this.mTranslationY)) {
            hashSet.add(NPStringFog.decode(new byte[]{21, 19, 83, 86, 70, 14, 0, 21, 91, 87, 91, 59}, "aa285b", 2013064930L));
        }
        if (!Float.isNaN(this.mTranslationZ)) {
            hashSet.add(NPStringFog.decode(new byte[]{22, 68, 4, 10, 65, 95, 3, 66, 12, 11, 92, 105}, "b6ed23", -1.7052426E9f));
        }
        if (this.mCustom.size() > 0) {
            Iterator<String> it = this.mCustom.keySet().iterator();
            while (it.hasNext()) {
                hashSet.add(NPStringFog.decode(new byte[]{118, 52, 53, 96, 125, 47, 25}, "5af42b", -1.739759982E9d) + it.next());
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:4:0x000e  */
    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int getId(java.lang.String r7) {
        /*
            Method dump skipped, instruction units count: 893
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.motion.key.MotionKeyCycle.getId(java.lang.String):int");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:4:0x000e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public float getValue(java.lang.String r7) {
        /*
            Method dump skipped, instruction units count: 593
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.motion.key.MotionKeyCycle.getValue(java.lang.String):float");
    }

    public void printAttributes() {
        HashSet<String> hashSet = new HashSet<>();
        getAttributeNames(hashSet);
        Utils.log(NPStringFog.decode(new byte[]{23, 75, 28, 76, 72, 75, 26, 75, 28, 76, 72, 75, 26, 75, 17}, "7f1aef", -1.5666703E9f) + this.mFramePosition + NPStringFog.decode(new byte[]{69, 21, 73, 20, 26, 27, 72, 21, 73, 20, 26, 27, 72, 21}, "e8d976", -1.272006054E9d));
        Utils.log(NPStringFog.decode(new byte[]{127, 90, 70, 95, 86, 93, 121, 80, 75, 117, 64, 80, 94, 80, 73, 101, 81, 82, 66, 80, 15}, "252693", -23259) + this.mWaveShape + NPStringFog.decode(new byte[]{28, 70, 54, 93, 75, 13, 95, 2, 91}, "0ff89d", true) + this.mWavePeriod + NPStringFog.decode(new byte[]{20, 21, 118, 3, 0, 16, 93, 65, 4}, "859efc", true, true) + this.mWaveOffset + NPStringFog.decode(new byte[]{21, 19, 96, 80, 83, 21, 92, 14}, "93082f", false, true) + this.mWavePhase + '}');
        String[] strArr = (String[]) hashSet.toArray(new String[0]);
        for (int i = 0; i < strArr.length; i++) {
            TypedValues.Attributes.CC.getId(strArr[i]);
            Utils.log(strArr[i] + NPStringFog.decode(new byte[]{11}, "148341", -25438) + getValue(strArr[i]));
        }
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey, androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i, float f) {
        switch (i) {
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
            case 315:
                this.mProgress = f;
                return true;
            case 403:
                this.mAlpha = f;
                return true;
            case 416:
                this.mTransitionPathRotate = f;
                return true;
            case 423:
                this.mWavePeriod = f;
                return true;
            case 424:
                this.mWaveOffset = f;
                return true;
            case TypedValues.Cycle.TYPE_WAVE_PHASE /* 425 */:
                this.mWavePhase = f;
                return true;
            default:
                return super.setValue(i, f);
        }
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey, androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i, int i2) {
        switch (i) {
            case 401:
                this.mCurveFit = i2;
                break;
            case TypedValues.Cycle.TYPE_WAVE_SHAPE /* 421 */:
                this.mWaveShape = i2;
                break;
            default:
                if (!setValue(i, i2)) {
                    break;
                }
                break;
        }
        return true;
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey, androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i, String str) {
        switch (i) {
            case 420:
                this.mTransitionEasing = str;
                return true;
            case TypedValues.Cycle.TYPE_WAVE_SHAPE /* 421 */:
            default:
                return super.setValue(i, str);
            case 422:
                this.mCustomWaveShape = str;
                return true;
        }
    }
}
