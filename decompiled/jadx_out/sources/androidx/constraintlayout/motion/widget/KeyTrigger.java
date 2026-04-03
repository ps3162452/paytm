package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import androidx.constraintlayout.motion.utils.ViewSpline;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.R;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import n.NPStringFog;

/* JADX INFO: loaded from: classes39.dex */
public class KeyTrigger extends Key {
    public static final int KEY_TYPE = 5;
    private float mFireLastPos;
    public static final String CROSS = NPStringFog.decode(new byte[]{114, 96, 125, 102, 96}, "122532", 905476931L);
    static final String NAME = NPStringFog.decode(new byte[]{114, 83, 29, 109, 20, 15, 94, 81, 1, 75}, "96d9ff", 7.79464279E8d);
    public static final String NEGATIVE_CROSS = NPStringFog.decode(new byte[]{90, 87, 86, 0, 17, 12, 66, 87, 114, 19, 10, 22, 71}, "421aee", true);
    public static final String POSITIVE_CROSS = NPStringFog.decode(new byte[]{66, 87, 65, 92, 18, 93, 68, 93, 113, 71, 9, 71, 65}, "2825f4", true);
    public static final String POST_LAYOUT = NPStringFog.decode(new byte[]{22, 9, 68, 70, 46, 89, 31, 9, 66, 70}, "ff72b8", false);
    private static final String TAG = NPStringFog.decode(new byte[]{46, 93, 27, 97, 23, 93, 2, 95, 7, 71}, "e8b5e4", -2145878839L);
    public static final String TRIGGER_COLLISION_ID = NPStringFog.decode(new byte[]{66, 65, 81, 82, 84, 1, 68, 112, 87, 89, 95, 13, 69, 90, 87, 91, 122, 0}, "63853d", true, false);
    public static final String TRIGGER_COLLISION_VIEW = NPStringFog.decode(new byte[]{17, 68, 95, 4, 94, 3, 23, 117, 89, 15, 85, 15, 22, 95, 89, 13, 111, 15, 0, 65}, "e66c9f", -1.1495685E9f);
    public static final String TRIGGER_ID = NPStringFog.decode(new byte[]{18, 19, 13, 5, 87, 3, 20, 40, 32}, "fadb0f", 1.713396409E9d);
    public static final String TRIGGER_RECEIVER = NPStringFog.decode(new byte[]{69, 22, 95, 95, 4, 82, 67, 54, 83, 91, 6, 94, 71, 1, 68}, "1d68c7", -21560);
    public static final String TRIGGER_SLACK = NPStringFog.decode(new byte[]{21, 17, 15, 80, 3, 92, 19, 48, 10, 86, 7, 82}, "acf7d9", -393143208L);
    public static final String VIEW_TRANSITION_ON_CROSS = NPStringFog.decode(new byte[]{66, 10, 83, 65, 100, 69, 85, 13, 69, 95, 68, 94, 91, 13, 121, 88, 115, 69, 91, 16, 69}, "4c6607", true);
    public static final String VIEW_TRANSITION_ON_NEGATIVE_CROSS = NPStringFog.decode(new byte[]{19, 15, 6, 79, 48, 65, 4, 8, 16, 81, 16, 90, 10, 8, 44, 86, 42, 86, 2, 7, 23, 81, 18, 86, 38, 20, 12, 75, 23}, "efc8d3", -1.3360955E9f);
    public static final String VIEW_TRANSITION_ON_POSITIVE_CROSS = NPStringFog.decode(new byte[]{64, 89, 81, 22, 49, 64, 87, 94, 71, 8, 17, 91, 89, 94, 123, 15, 53, 93, 69, 89, 64, 8, 19, 87, 117, 66, 91, 18, 22}, "604ae2", 1.5145906E7d);
    private int mCurveFit = -1;
    private String mCross = null;
    private int mTriggerReceiver = UNSET;
    private String mNegativeCross = null;
    private String mPositiveCross = null;
    private int mTriggerID = UNSET;
    private int mTriggerCollisionId = UNSET;
    private View mTriggerCollisionView = null;
    float mTriggerSlack = 0.1f;
    private boolean mFireCrossReset = true;
    private boolean mFireNegativeReset = true;
    private boolean mFirePositiveReset = true;
    private float mFireThreshold = Float.NaN;
    private boolean mPostLayout = false;
    int mViewTransitionOnNegativeCross = UNSET;
    int mViewTransitionOnPositiveCross = UNSET;
    int mViewTransitionOnCross = UNSET;
    RectF mCollisionRect = new RectF();
    RectF mTargetRect = new RectF();
    HashMap<String, Method> mMethodHashMap = new HashMap<>();

    private static class Loader {
        private static final int COLLISION = 9;
        private static final int CROSS = 4;
        private static final int FRAME_POS = 8;
        private static final int NEGATIVE_CROSS = 1;
        private static final int POSITIVE_CROSS = 2;
        private static final int POST_LAYOUT = 10;
        private static final int TARGET_ID = 7;
        private static final int TRIGGER_ID = 6;
        private static final int TRIGGER_RECEIVER = 11;
        private static final int TRIGGER_SLACK = 5;
        private static final int VT_CROSS = 12;
        private static final int VT_NEGATIVE_CROSS = 13;
        private static final int VT_POSITIVE_CROSS = 14;
        private static SparseIntArray mAttrMap;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            mAttrMap = sparseIntArray;
            sparseIntArray.append(R.styleable.KeyTrigger_framePosition, 8);
            mAttrMap.append(R.styleable.KeyTrigger_onCross, 4);
            mAttrMap.append(R.styleable.KeyTrigger_onNegativeCross, 1);
            mAttrMap.append(R.styleable.KeyTrigger_onPositiveCross, 2);
            mAttrMap.append(R.styleable.KeyTrigger_motionTarget, 7);
            mAttrMap.append(R.styleable.KeyTrigger_triggerId, 6);
            mAttrMap.append(R.styleable.KeyTrigger_triggerSlack, 5);
            mAttrMap.append(R.styleable.KeyTrigger_motion_triggerOnCollision, 9);
            mAttrMap.append(R.styleable.KeyTrigger_motion_postLayoutCollision, 10);
            mAttrMap.append(R.styleable.KeyTrigger_triggerReceiver, 11);
            mAttrMap.append(R.styleable.KeyTrigger_viewTransitionOnCross, 12);
            mAttrMap.append(R.styleable.KeyTrigger_viewTransitionOnNegativeCross, 13);
            mAttrMap.append(R.styleable.KeyTrigger_viewTransitionOnPositiveCross, 14);
        }

        private Loader() {
        }

        public static void read(KeyTrigger keyTrigger, TypedArray typedArray, Context context) {
            int indexCount = typedArray.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArray.getIndex(i);
                switch (mAttrMap.get(index)) {
                    case 1:
                        keyTrigger.mNegativeCross = typedArray.getString(index);
                        break;
                    case 2:
                        keyTrigger.mPositiveCross = typedArray.getString(index);
                        break;
                    case 3:
                    default:
                        String hexString = Integer.toHexString(index);
                        int i2 = mAttrMap.get(index);
                        StringBuilder sb = new StringBuilder(String.valueOf(hexString).length() + 33);
                        sb.append(NPStringFog.decode(new byte[]{22, 12, 71, 66, 6, 81, 67, 3, 70, 69, 17, 92, 1, 23, 70, 84, 67, 5, 27}, "cb21c5", 1.534514186E9d));
                        sb.append(hexString);
                        sb.append("   ");
                        sb.append(i2);
                        Log.e(NPStringFog.decode(new byte[]{47, 4, 27, 55, 16, 10, 3, 6, 7, 17}, "dabcbc", true), sb.toString());
                        break;
                    case 4:
                        keyTrigger.mCross = typedArray.getString(index);
                        break;
                    case 5:
                        keyTrigger.mTriggerSlack = typedArray.getFloat(index, keyTrigger.mTriggerSlack);
                        break;
                    case 6:
                        keyTrigger.mTriggerID = typedArray.getResourceId(index, keyTrigger.mTriggerID);
                        break;
                    case 7:
                        if (MotionLayout.IS_IN_EDIT_MODE) {
                            keyTrigger.mTargetId = typedArray.getResourceId(index, keyTrigger.mTargetId);
                            if (keyTrigger.mTargetId == -1) {
                                keyTrigger.mTargetString = typedArray.getString(index);
                            }
                        } else if (typedArray.peekValue(index).type == 3) {
                            keyTrigger.mTargetString = typedArray.getString(index);
                        } else {
                            keyTrigger.mTargetId = typedArray.getResourceId(index, keyTrigger.mTargetId);
                        }
                        break;
                    case 8:
                        keyTrigger.mFramePosition = typedArray.getInteger(index, keyTrigger.mFramePosition);
                        keyTrigger.mFireThreshold = (keyTrigger.mFramePosition + 0.5f) / 100.0f;
                        break;
                    case 9:
                        keyTrigger.mTriggerCollisionId = typedArray.getResourceId(index, keyTrigger.mTriggerCollisionId);
                        break;
                    case 10:
                        keyTrigger.mPostLayout = typedArray.getBoolean(index, keyTrigger.mPostLayout);
                        break;
                    case 11:
                        keyTrigger.mTriggerReceiver = typedArray.getResourceId(index, keyTrigger.mTriggerReceiver);
                        break;
                    case 12:
                        keyTrigger.mViewTransitionOnCross = typedArray.getResourceId(index, keyTrigger.mViewTransitionOnCross);
                        break;
                    case 13:
                        keyTrigger.mViewTransitionOnNegativeCross = typedArray.getResourceId(index, keyTrigger.mViewTransitionOnNegativeCross);
                        break;
                    case 14:
                        keyTrigger.mViewTransitionOnPositiveCross = typedArray.getResourceId(index, keyTrigger.mViewTransitionOnPositiveCross);
                        break;
                }
            }
        }
    }

    public KeyTrigger() {
        this.mType = 5;
        this.mCustomConstraints = new HashMap<>();
    }

    private void fire(String str, View view) {
        Method method;
        if (str == null) {
            return;
        }
        if (str.startsWith(NPStringFog.decode(new byte[]{29}, "37938a", false))) {
            fireCustom(str, view);
            return;
        }
        if (this.mMethodHashMap.containsKey(str)) {
            method = this.mMethodHashMap.get(str);
            if (method == null) {
                return;
            }
        } else {
            method = null;
        }
        if (method == null) {
            try {
                method = view.getClass().getMethod(str, new Class[0]);
                this.mMethodHashMap.put(str, method);
            } catch (NoSuchMethodException e) {
                this.mMethodHashMap.put(str, null);
                String simpleName = view.getClass().getSimpleName();
                String name = Debug.getName(view);
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 34 + String.valueOf(simpleName).length() + String.valueOf(name).length());
                sb.append(NPStringFog.decode(new byte[]{123, 12, 19, 91, 0, 68, 86, 12, 18, 23, 2, 13, 86, 7, 70, 90, 1, 16, 80, 12, 2, 23, 70}, "8cf7dd", 1.184205008E9d));
                sb.append(str);
                sb.append(NPStringFog.decode(new byte[]{70, 87, 86, 16, 85, 13, 5, 75, 75, 16}, "d8806a", -4.26677376E8d));
                sb.append(simpleName);
                sb.append(" ");
                sb.append(name);
                Log.e(NAME, sb.toString());
                return;
            }
        }
        try {
            method.invoke(view, new Object[0]);
        } catch (Exception e2) {
            String str2 = this.mCross;
            String simpleName2 = view.getClass().getSimpleName();
            String name2 = Debug.getName(view);
            StringBuilder sb2 = new StringBuilder(String.valueOf(str2).length() + 30 + String.valueOf(simpleName2).length() + String.valueOf(name2).length());
            sb2.append(NPStringFog.decode(new byte[]{116, 25, 86, 86, 21, 66, 88, 14, 91, 19, 12, 88, 17, 2, 84, 95, 9, 22, 19}, "1a53e6", false));
            sb2.append(str2);
            sb2.append(NPStringFog.decode(new byte[]{64, 92, 90, 66, 6, 95, 3, 64, 71, 66}, "b34be3", -1.7930262E9f));
            sb2.append(simpleName2);
            sb2.append(" ");
            sb2.append(name2);
            Log.e(NAME, sb2.toString());
        }
    }

    private void fireCustom(String str, View view) {
        boolean z = str.length() == 1;
        if (!z) {
            str = str.substring(1).toLowerCase(Locale.ROOT);
        }
        for (String str2 : this.mCustomConstraints.keySet()) {
            String lowerCase = str2.toLowerCase(Locale.ROOT);
            if (z || lowerCase.matches(str)) {
                ConstraintAttribute constraintAttribute = this.mCustomConstraints.get(str2);
                if (constraintAttribute != null) {
                    constraintAttribute.applyCustom(view);
                }
            }
        }
    }

    private void setUpRect(RectF rectF, View view, boolean z) {
        rectF.top = view.getTop();
        rectF.bottom = view.getBottom();
        rectF.left = view.getLeft();
        rectF.right = view.getRight();
        if (z) {
            view.getMatrix().mapRect(rectF);
        }
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void addValues(HashMap<String, ViewSpline> map) {
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    /* JADX INFO: renamed from: clone */
    public Key mo3clone() {
        return new KeyTrigger().copy(this);
    }

    /* JADX WARN: Removed duplicated region for block: B:61:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0141  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x016c  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x016e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void conditionallyFire(float r10, android.view.View r11) {
        /*
            Method dump skipped, instruction units count: 381
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.KeyTrigger.conditionallyFire(float, android.view.View):void");
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public Key copy(Key key) {
        super.copy(key);
        KeyTrigger keyTrigger = (KeyTrigger) key;
        this.mCurveFit = keyTrigger.mCurveFit;
        this.mCross = keyTrigger.mCross;
        this.mTriggerReceiver = keyTrigger.mTriggerReceiver;
        this.mNegativeCross = keyTrigger.mNegativeCross;
        this.mPositiveCross = keyTrigger.mPositiveCross;
        this.mTriggerID = keyTrigger.mTriggerID;
        this.mTriggerCollisionId = keyTrigger.mTriggerCollisionId;
        this.mTriggerCollisionView = keyTrigger.mTriggerCollisionView;
        this.mTriggerSlack = keyTrigger.mTriggerSlack;
        this.mFireCrossReset = keyTrigger.mFireCrossReset;
        this.mFireNegativeReset = keyTrigger.mFireNegativeReset;
        this.mFirePositiveReset = keyTrigger.mFirePositiveReset;
        this.mFireThreshold = keyTrigger.mFireThreshold;
        this.mFireLastPos = keyTrigger.mFireLastPos;
        this.mPostLayout = keyTrigger.mPostLayout;
        this.mCollisionRect = keyTrigger.mCollisionRect;
        this.mTargetRect = keyTrigger.mTargetRect;
        this.mMethodHashMap = keyTrigger.mMethodHashMap;
        return this;
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void getAttributeNames(HashSet<String> hashSet) {
    }

    int getCurveFit() {
        return this.mCurveFit;
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void load(Context context, AttributeSet attributeSet) {
        Loader.read(this, context.obtainStyledAttributes(attributeSet, R.styleable.KeyTrigger), context);
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
            Method dump skipped, instruction units count: 308
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.KeyTrigger.setValue(java.lang.String, java.lang.Object):void");
    }
}
