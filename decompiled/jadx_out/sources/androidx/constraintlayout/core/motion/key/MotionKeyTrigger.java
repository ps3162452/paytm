package androidx.constraintlayout.core.motion.key;

import androidx.constraintlayout.core.motion.CustomVariable;
import androidx.constraintlayout.core.motion.MotionWidget;
import androidx.constraintlayout.core.motion.utils.FloatRect;
import androidx.constraintlayout.core.motion.utils.SplineSet;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import n.NPStringFog;

/* JADX INFO: loaded from: classes40.dex */
public class MotionKeyTrigger extends MotionKey {
    public static final int KEY_TYPE = 5;
    public static final int TYPE_CROSS = 312;
    public static final int TYPE_NEGATIVE_CROSS = 310;
    public static final int TYPE_POSITIVE_CROSS = 309;
    public static final int TYPE_POST_LAYOUT = 304;
    public static final int TYPE_TRIGGER_COLLISION_ID = 307;
    public static final int TYPE_TRIGGER_COLLISION_VIEW = 306;
    public static final int TYPE_TRIGGER_ID = 308;
    public static final int TYPE_TRIGGER_RECEIVER = 311;
    public static final int TYPE_TRIGGER_SLACK = 305;
    public static final int TYPE_VIEW_TRANSITION_ON_CROSS = 301;
    public static final int TYPE_VIEW_TRANSITION_ON_NEGATIVE_CROSS = 303;
    public static final int TYPE_VIEW_TRANSITION_ON_POSITIVE_CROSS = 302;
    private float mFireLastPos;
    public static final String CROSS = NPStringFog.decode(new byte[]{37, 97, 123, 96, 50}, "f343a1", true, true);
    public static final String NEGATIVE_CROSS = NPStringFog.decode(new byte[]{90, 4, 6, 3, 18, 93, 66, 4, 34, 16, 9, 71, 71}, "4aabf4", -3534);
    public static final String POSITIVE_CROSS = NPStringFog.decode(new byte[]{69, 95, 67, 91, 16, 92, 67, 85, 115, 64, 11, 70, 70}, "5002d5", -19447);
    public static final String POST_LAYOUT = NPStringFog.decode(new byte[]{21, 86, 69, 68, 41, 5, 28, 86, 67, 68}, "e960ed", 4147);
    private static final String TAG = NPStringFog.decode(new byte[]{42, 7, 28, 53, 68, 10, 6, 5, 0, 19}, "abea6c", 1790389326L);
    public static final String TRIGGER_COLLISION_ID = NPStringFog.decode(new byte[]{64, 22, 91, 94, 95, 6, 70, 39, 93, 85, 84, 10, 71, 13, 93, 87, 113, 7}, "4d298c", 1.4182934E9f);
    public static final String TRIGGER_COLLISION_VIEW = NPStringFog.decode(new byte[]{69, 74, 81, 81, 6, 1, 67, 123, 87, 90, 13, 13, 66, 81, 87, 88, 55, 13, 84, 79}, "1886ad", -17146);
    public static final String TRIGGER_ID = NPStringFog.decode(new byte[]{66, 69, 8, 3, 82, 84, 68, 126, 37}, "67ad51", true, false);
    public static final String TRIGGER_RECEIVER = NPStringFog.decode(new byte[]{18, 17, 94, 3, 94, 87, 20, 49, 82, 7, 92, 91, 16, 6, 69}, "fc7d92", -9.7603644E8d);
    public static final String TRIGGER_SLACK = NPStringFog.decode(new byte[]{16, 16, 12, 3, 94, 4, 22, 49, 9, 5, 90, 10}, "dbed9a", 414500932L);
    public static final String VIEW_TRANSITION_ON_CROSS = NPStringFog.decode(new byte[]{71, 81, 84, 19, 99, 69, 80, 86, 66, 13, 67, 94, 94, 86, 126, 10, 116, 69, 94, 75, 66}, "181d77", 11152);
    public static final String VIEW_TRANSITION_ON_NEGATIVE_CROSS = NPStringFog.decode(new byte[]{21, 11, 1, 68, 109, 74, 2, 12, 23, 90, 77, 81, 12, 12, 43, 93, 119, 93, 4, 3, 16, 90, 79, 93, 32, 16, 11, 64, 74}, "cbd398", 15559);
    public static final String VIEW_TRANSITION_ON_POSITIVE_CROSS = NPStringFog.decode(new byte[]{64, 12, 83, 79, 108, 71, 87, 11, 69, 81, 76, 92, 89, 11, 121, 86, 104, 90, 69, 12, 66, 81, 78, 80, 117, 23, 89, 75, 75}, "6e6885", 797401608L);
    private int mCurveFit = -1;
    private String mCross = null;
    private int mTriggerReceiver = UNSET;
    private String mNegativeCross = null;
    private String mPositiveCross = null;
    private int mTriggerID = UNSET;
    private int mTriggerCollisionId = UNSET;
    float mTriggerSlack = 0.1f;
    private boolean mFireCrossReset = true;
    private boolean mFireNegativeReset = true;
    private boolean mFirePositiveReset = true;
    private float mFireThreshold = Float.NaN;
    private boolean mPostLayout = false;
    int mViewTransitionOnNegativeCross = UNSET;
    int mViewTransitionOnPositiveCross = UNSET;
    int mViewTransitionOnCross = UNSET;
    FloatRect mCollisionRect = new FloatRect();
    FloatRect mTargetRect = new FloatRect();
    HashMap<String, Method> mMethodHashMap = new HashMap<>();

    public MotionKeyTrigger() {
        this.mType = 5;
        this.mCustom = new HashMap<>();
    }

    private void fireCustom(String str, MotionWidget motionWidget) {
        boolean z = str.length() == 1;
        if (!z) {
            str = str.substring(1).toLowerCase(Locale.ROOT);
        }
        for (String str2 : this.mCustom.keySet()) {
            String lowerCase = str2.toLowerCase(Locale.ROOT);
            if (z || lowerCase.matches(str)) {
                CustomVariable customVariable = this.mCustom.get(str2);
                if (customVariable != null) {
                    customVariable.applyToWidget(motionWidget);
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
        return new MotionKeyTrigger().copy((MotionKey) this);
    }

    public void conditionallyFire(float f, MotionWidget motionWidget) {
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey
    public MotionKeyTrigger copy(MotionKey motionKey) {
        super.copy(motionKey);
        MotionKeyTrigger motionKeyTrigger = (MotionKeyTrigger) motionKey;
        this.mCurveFit = motionKeyTrigger.mCurveFit;
        this.mCross = motionKeyTrigger.mCross;
        this.mTriggerReceiver = motionKeyTrigger.mTriggerReceiver;
        this.mNegativeCross = motionKeyTrigger.mNegativeCross;
        this.mPositiveCross = motionKeyTrigger.mPositiveCross;
        this.mTriggerID = motionKeyTrigger.mTriggerID;
        this.mTriggerCollisionId = motionKeyTrigger.mTriggerCollisionId;
        this.mTriggerSlack = motionKeyTrigger.mTriggerSlack;
        this.mFireCrossReset = motionKeyTrigger.mFireCrossReset;
        this.mFireNegativeReset = motionKeyTrigger.mFireNegativeReset;
        this.mFirePositiveReset = motionKeyTrigger.mFirePositiveReset;
        this.mFireThreshold = motionKeyTrigger.mFireThreshold;
        this.mFireLastPos = motionKeyTrigger.mFireLastPos;
        this.mPostLayout = motionKeyTrigger.mPostLayout;
        this.mCollisionRect = motionKeyTrigger.mCollisionRect;
        this.mTargetRect = motionKeyTrigger.mTargetRect;
        this.mMethodHashMap = motionKeyTrigger.mMethodHashMap;
        return this;
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey
    public void getAttributeNames(HashSet<String> hashSet) {
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public int getId(String str) {
        byte b;
        switch (str.hashCode()) {
            case -1594793529:
                b = !str.equals(POSITIVE_CROSS) ? (byte) -1 : (byte) 8;
                break;
            case -966421266:
                b = !str.equals(VIEW_TRANSITION_ON_POSITIVE_CROSS) ? (byte) -1 : (byte) 1;
                break;
            case -786670827:
                b = !str.equals(TRIGGER_COLLISION_ID) ? (byte) -1 : (byte) 6;
                break;
            case -648752941:
                b = !str.equals(TRIGGER_ID) ? (byte) -1 : (byte) 7;
                break;
            case -638126837:
                b = !str.equals(NEGATIVE_CROSS) ? (byte) -1 : (byte) 9;
                break;
            case -76025313:
                b = !str.equals(TRIGGER_COLLISION_VIEW) ? (byte) -1 : (byte) 5;
                break;
            case -9754574:
                b = !str.equals(VIEW_TRANSITION_ON_NEGATIVE_CROSS) ? (byte) -1 : (byte) 2;
                break;
            case 364489912:
                b = !str.equals(TRIGGER_SLACK) ? (byte) -1 : (byte) 4;
                break;
            case 1301930599:
                b = !str.equals(VIEW_TRANSITION_ON_CROSS) ? (byte) -1 : (byte) 0;
                break;
            case 1401391082:
                b = !str.equals(POST_LAYOUT) ? (byte) -1 : (byte) 3;
                break;
            case 1535404999:
                b = !str.equals(TRIGGER_RECEIVER) ? (byte) -1 : (byte) 10;
                break;
            default:
                b = -1;
                break;
        }
        switch (b) {
            case 0:
                return 301;
            case 1:
                return 302;
            case 2:
                return 303;
            case 3:
                return 304;
            case 4:
                return 305;
            case 5:
                return 306;
            case 6:
                return 307;
            case 7:
                return 308;
            case 8:
                return 309;
            case 9:
                return 310;
            case 10:
                return 311;
            default:
                return -1;
        }
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey, androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i, float f) {
        switch (i) {
            case 305:
                this.mTriggerSlack = f;
                return true;
            default:
                return super.setValue(i, f);
        }
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey, androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i, int i2) {
        switch (i) {
            case 301:
                this.mViewTransitionOnCross = i2;
                return true;
            case 302:
                this.mViewTransitionOnPositiveCross = i2;
                return true;
            case 303:
                this.mViewTransitionOnNegativeCross = i2;
                return true;
            case 304:
            case 305:
            case 306:
            case 309:
            case 310:
            default:
                return super.setValue(i, i2);
            case 307:
                this.mTriggerCollisionId = i2;
                return true;
            case 308:
                this.mTriggerID = toInt(Integer.valueOf(i2));
                return true;
            case 311:
                this.mTriggerReceiver = i2;
                return true;
        }
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey, androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i, String str) {
        switch (i) {
            case 309:
                this.mPositiveCross = str;
                return true;
            case 310:
                this.mNegativeCross = str;
                return true;
            case 311:
            default:
                return super.setValue(i, str);
            case 312:
                this.mCross = str;
                return true;
        }
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey, androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i, boolean z) {
        switch (i) {
            case 304:
                this.mPostLayout = z;
                return true;
            default:
                return super.setValue(i, z);
        }
    }
}
