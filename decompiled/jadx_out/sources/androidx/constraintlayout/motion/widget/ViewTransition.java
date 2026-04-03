package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.util.Log;
import android.util.TypedValue;
import android.util.Xml;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.AnticipateInterpolator;
import android.view.animation.BounceInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.OvershootInterpolator;
import androidx.constraintlayout.core.motion.utils.Easing;
import androidx.constraintlayout.core.motion.utils.KeyCache;
import androidx.constraintlayout.motion.widget.MotionScene;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.constraintlayout.widget.R;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import n.NPStringFog;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes39.dex */
public class ViewTransition {
    static final int ANTICIPATE = 6;
    static final int BOUNCE = 4;
    static final int EASE_IN = 1;
    static final int EASE_IN_OUT = 0;
    static final int EASE_OUT = 2;
    private static final int INTERPOLATOR_REFERENCE_ID = -2;
    static final int LINEAR = 3;
    public static final int ONSTATE_ACTION_DOWN = 1;
    public static final int ONSTATE_ACTION_DOWN_UP = 3;
    public static final int ONSTATE_ACTION_UP = 2;
    public static final int ONSTATE_SHARED_VALUE_SET = 4;
    public static final int ONSTATE_SHARED_VALUE_UNSET = 5;
    static final int OVERSHOOT = 5;
    private static final int SPLINE_STRING = -1;
    private static final int UNSET = -1;
    static final int VIEWTRANSITIONMODE_ALLSTATES = 1;
    static final int VIEWTRANSITIONMODE_CURRENTSTATE = 0;
    static final int VIEWTRANSITIONMODE_NOSTATE = 2;
    ConstraintSet.Constraint mConstraintDelta;
    Context mContext;
    private int mId;
    KeyFrames mKeyFrames;
    private int mTargetId;
    private String mTargetString;
    int mViewTransitionMode;
    ConstraintSet set;
    public static final String CONSTRAINT_OVERRIDE = NPStringFog.decode(new byte[]{122, 13, 94, 65, 16, 68, 88, 11, 94, 70, 43, 64, 92, 16, 66, 91, 0, 83}, "9b02d6", false, true);
    public static final String CUSTOM_ATTRIBUTE = NPStringFog.decode(new byte[]{116, 20, 64, 22, 88, 93, 118, 21, 71, 16, 94, 82, 66, 21, 86}, "7a3b70", -4970);
    public static final String CUSTOM_METHOD = NPStringFog.decode(new byte[]{118, 20, 18, 65, 86, 88, 120, 4, 21, 93, 86, 81}, "5aa595", false);
    public static final String KEY_FRAME_SET_TAG = NPStringFog.decode(new byte[]{46, 84, 24, 35, 70, 85, 8, 84, 50, 0, 64}, "e1ae44", 5959);
    public static final String VIEW_TRANSITION_TAG = NPStringFog.decode(new byte[]{100, 95, 7, 79, 48, 68, 83, 88, 17, 81, 16, 95, 93, 88}, "26b8d6", 1.0348301E9f);
    private static String TAG = NPStringFog.decode(new byte[]{101, 8, 86, 66, 55, 19, 82, 15, 64, 92, 23, 8, 92, 15}, "3a35ca", -1.644776723E9d);
    private int mOnStateTransition = -1;
    private boolean mDisabled = false;
    private int mPathMotionArc = 0;
    private int mDuration = -1;
    private int mUpDuration = -1;
    private int mDefaultInterpolator = 0;
    private String mDefaultInterpolatorString = null;
    private int mDefaultInterpolatorID = -1;
    private int mSetsTag = -1;
    private int mClearsTag = -1;
    private int mIfTagSet = -1;
    private int mIfTagNotSet = -1;
    private int mSharedValueTarget = -1;
    private int mSharedValueID = -1;
    private int mSharedValueCurrent = -1;

    static class Animate {
        boolean hold_at_100;
        private final int mClearsTag;
        float mDpositionDt;
        int mDuration;
        Interpolator mInterpolator;
        long mLastRender;
        MotionController mMC;
        float mPosition;
        private final int mSetsTag;
        long mStart;
        int mUpDuration;
        ViewTransitionController mVtController;
        KeyCache mCache = new KeyCache();
        boolean reverse = false;
        Rect mTempRec = new Rect();

        Animate(ViewTransitionController viewTransitionController, MotionController motionController, int i, int i2, int i3, Interpolator interpolator, int i4, int i5) {
            this.hold_at_100 = false;
            this.mVtController = viewTransitionController;
            this.mMC = motionController;
            this.mDuration = i;
            this.mUpDuration = i2;
            long jNanoTime = System.nanoTime();
            this.mStart = jNanoTime;
            this.mLastRender = jNanoTime;
            this.mVtController.addAnimation(this);
            this.mInterpolator = interpolator;
            this.mSetsTag = i4;
            this.mClearsTag = i5;
            if (i3 == 3) {
                this.hold_at_100 = true;
            }
            this.mDpositionDt = i == 0 ? Float.MAX_VALUE : 1.0f / i;
            mutate();
        }

        void mutate() {
            if (this.reverse) {
                mutateReverse();
            } else {
                mutateForward();
            }
        }

        void mutateForward() {
            long jNanoTime = System.nanoTime();
            long j = this.mLastRender;
            this.mLastRender = jNanoTime;
            float f = this.mPosition;
            double d = jNanoTime - j;
            Double.isNaN(d);
            float f2 = (((float) (d * 1.0E-6d)) * this.mDpositionDt) + f;
            this.mPosition = f2;
            if (f2 >= 1.0f) {
                this.mPosition = 1.0f;
            }
            Interpolator interpolator = this.mInterpolator;
            float interpolation = interpolator == null ? this.mPosition : interpolator.getInterpolation(this.mPosition);
            MotionController motionController = this.mMC;
            boolean zInterpolate = motionController.interpolate(motionController.mView, interpolation, jNanoTime, this.mCache);
            if (this.mPosition >= 1.0f) {
                if (this.mSetsTag != -1) {
                    this.mMC.getView().setTag(this.mSetsTag, Long.valueOf(System.nanoTime()));
                }
                if (this.mClearsTag != -1) {
                    this.mMC.getView().setTag(this.mClearsTag, null);
                }
                if (!this.hold_at_100) {
                    this.mVtController.removeAnimation(this);
                }
            }
            if (this.mPosition < 1.0f || zInterpolate) {
                this.mVtController.invalidate();
            }
        }

        void mutateReverse() {
            long jNanoTime = System.nanoTime();
            long j = this.mLastRender;
            this.mLastRender = jNanoTime;
            float f = this.mPosition;
            double d = jNanoTime - j;
            Double.isNaN(d);
            float f2 = f - (((float) (d * 1.0E-6d)) * this.mDpositionDt);
            this.mPosition = f2;
            if (f2 < 0.0f) {
                this.mPosition = 0.0f;
            }
            Interpolator interpolator = this.mInterpolator;
            float interpolation = interpolator == null ? this.mPosition : interpolator.getInterpolation(this.mPosition);
            MotionController motionController = this.mMC;
            boolean zInterpolate = motionController.interpolate(motionController.mView, interpolation, jNanoTime, this.mCache);
            if (this.mPosition <= 0.0f) {
                if (this.mSetsTag != -1) {
                    this.mMC.getView().setTag(this.mSetsTag, Long.valueOf(System.nanoTime()));
                }
                if (this.mClearsTag != -1) {
                    this.mMC.getView().setTag(this.mClearsTag, null);
                }
                this.mVtController.removeAnimation(this);
            }
            if (this.mPosition > 0.0f || zInterpolate) {
                this.mVtController.invalidate();
            }
        }

        public void reactTo(int i, float f, float f2) {
            switch (i) {
                case 1:
                    if (!this.reverse) {
                        reverse(true);
                    }
                    break;
                case 2:
                    this.mMC.getView().getHitRect(this.mTempRec);
                    if (!this.mTempRec.contains((int) f, (int) f2) && !this.reverse) {
                        reverse(true);
                        break;
                    }
                    break;
            }
        }

        void reverse(boolean z) {
            int i;
            this.reverse = z;
            if (z && (i = this.mUpDuration) != -1) {
                this.mDpositionDt = i == 0 ? Float.MAX_VALUE : 1.0f / i;
            }
            this.mVtController.invalidate();
            this.mLastRender = System.nanoTime();
        }
    }

    ViewTransition(Context context, XmlPullParser xmlPullParser) {
        byte b;
        this.mContext = context;
        try {
            int eventType = xmlPullParser.getEventType();
            while (eventType != 1) {
                switch (eventType) {
                    case 2:
                        String name = xmlPullParser.getName();
                        switch (name.hashCode()) {
                            case -1962203927:
                                b = !name.equals(NPStringFog.decode(new byte[]{122, 95, 10, 23, 17, 67, 88, 89, 10, 16, 42, 71, 92, 66, 22, 13, 1, 84}, "90dde1", false)) ? (byte) -1 : (byte) 2;
                                break;
                            case -1239391468:
                                b = !name.equals(NPStringFog.decode(new byte[]{126, 92, 77, 34, 71, 89, 88, 92, 103, 1, 65}, "594d58", -23659)) ? (byte) -1 : (byte) 1;
                                break;
                            case 61998586:
                                b = !name.equals(NPStringFog.decode(new byte[]{101, 12, 93, 20, 96, 22, 82, 11, 75, 10, 64, 13, 92, 11}, "3e8c4d", -1.01348717E9f)) ? (byte) -1 : (byte) 0;
                                break;
                            case 366511058:
                                b = !name.equals(NPStringFog.decode(new byte[]{32, 16, 66, 70, 93, 15, 46, 0, 69, 90, 93, 6}, "ce122b", false)) ? (byte) -1 : (byte) 4;
                                break;
                            case 1791837707:
                                b = !name.equals(NPStringFog.decode(new byte[]{116, 16, 64, 21, 12, 11, 118, 17, 71, 19, 10, 4, 66, 17, 86}, "7e3acf", -1261830762L)) ? (byte) -1 : (byte) 3;
                                break;
                            default:
                                b = -1;
                                break;
                        }
                        switch (b) {
                            case 0:
                                parseViewTransitionTags(context, xmlPullParser);
                                break;
                            case 1:
                                this.mKeyFrames = new KeyFrames(context, xmlPullParser);
                                break;
                            case 2:
                                this.mConstraintDelta = ConstraintSet.buildDelta(context, xmlPullParser);
                                break;
                            case 3:
                            case 4:
                                ConstraintAttribute.parse(context, xmlPullParser, this.mConstraintDelta.mCustomConstraints);
                                break;
                            default:
                                String str = TAG;
                                String loc = Debug.getLoc();
                                StringBuilder sb = new StringBuilder(String.valueOf(loc).length() + 13 + String.valueOf(name).length());
                                sb.append(loc);
                                sb.append(NPStringFog.decode(new byte[]{69, 66, 95, 14, 15, 90, 18, 89, 17, 17, 0, 82, 69}, "e71ea5", true, true));
                                sb.append(name);
                                Log.e(str, sb.toString());
                                String str2 = TAG;
                                int lineNumber = xmlPullParser.getLineNumber();
                                StringBuilder sb2 = new StringBuilder(16);
                                sb2.append(NPStringFog.decode(new byte[]{24, 78, 90, 92, 14}, "667044", 2.0345501E9f));
                                sb2.append(lineNumber);
                                Log.e(str2, sb2.toString());
                                break;
                        }
                        break;
                    case 3:
                        if (NPStringFog.decode(new byte[]{102, 95, 83, 19, 103, 74, 81, 88, 69, 13, 71, 81, 95, 88}, "066d38", -32319).equals(xmlPullParser.getName())) {
                            return;
                        }
                        break;
                }
                eventType = xmlPullParser.next();
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (XmlPullParserException e2) {
            e2.printStackTrace();
        }
    }

    private void parseViewTransitionTags(Context context, XmlPullParser xmlPullParser) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R.styleable.ViewTransition);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i);
            if (index == R.styleable.ViewTransition_android_id) {
                this.mId = typedArrayObtainStyledAttributes.getResourceId(index, this.mId);
            } else if (index == R.styleable.ViewTransition_motionTarget) {
                if (MotionLayout.IS_IN_EDIT_MODE) {
                    int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, this.mTargetId);
                    this.mTargetId = resourceId;
                    if (resourceId == -1) {
                        this.mTargetString = typedArrayObtainStyledAttributes.getString(index);
                    }
                } else if (typedArrayObtainStyledAttributes.peekValue(index).type == 3) {
                    this.mTargetString = typedArrayObtainStyledAttributes.getString(index);
                } else {
                    this.mTargetId = typedArrayObtainStyledAttributes.getResourceId(index, this.mTargetId);
                }
            } else if (index == R.styleable.ViewTransition_onStateTransition) {
                this.mOnStateTransition = typedArrayObtainStyledAttributes.getInt(index, this.mOnStateTransition);
            } else if (index == R.styleable.ViewTransition_transitionDisable) {
                this.mDisabled = typedArrayObtainStyledAttributes.getBoolean(index, this.mDisabled);
            } else if (index == R.styleable.ViewTransition_pathMotionArc) {
                this.mPathMotionArc = typedArrayObtainStyledAttributes.getInt(index, this.mPathMotionArc);
            } else if (index == R.styleable.ViewTransition_duration) {
                this.mDuration = typedArrayObtainStyledAttributes.getInt(index, this.mDuration);
            } else if (index == R.styleable.ViewTransition_upDuration) {
                this.mUpDuration = typedArrayObtainStyledAttributes.getInt(index, this.mUpDuration);
            } else if (index == R.styleable.ViewTransition_viewTransitionMode) {
                this.mViewTransitionMode = typedArrayObtainStyledAttributes.getInt(index, this.mViewTransitionMode);
            } else if (index == R.styleable.ViewTransition_motionInterpolator) {
                TypedValue typedValuePeekValue = typedArrayObtainStyledAttributes.peekValue(index);
                if (typedValuePeekValue.type == 1) {
                    int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                    this.mDefaultInterpolatorID = resourceId2;
                    if (resourceId2 != -1) {
                        this.mDefaultInterpolator = -2;
                    }
                } else if (typedValuePeekValue.type == 3) {
                    String string = typedArrayObtainStyledAttributes.getString(index);
                    this.mDefaultInterpolatorString = string;
                    if (string == null || string.indexOf(NPStringFog.decode(new byte[]{74}, "e781e3", -346121854L)) <= 0) {
                        this.mDefaultInterpolator = -1;
                    } else {
                        this.mDefaultInterpolatorID = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                        this.mDefaultInterpolator = -2;
                    }
                } else {
                    this.mDefaultInterpolator = typedArrayObtainStyledAttributes.getInteger(index, this.mDefaultInterpolator);
                }
            } else if (index == R.styleable.ViewTransition_setsTag) {
                this.mSetsTag = typedArrayObtainStyledAttributes.getResourceId(index, this.mSetsTag);
            } else if (index == R.styleable.ViewTransition_clearsTag) {
                this.mClearsTag = typedArrayObtainStyledAttributes.getResourceId(index, this.mClearsTag);
            } else if (index == R.styleable.ViewTransition_ifTagSet) {
                this.mIfTagSet = typedArrayObtainStyledAttributes.getResourceId(index, this.mIfTagSet);
            } else if (index == R.styleable.ViewTransition_ifTagNotSet) {
                this.mIfTagNotSet = typedArrayObtainStyledAttributes.getResourceId(index, this.mIfTagNotSet);
            } else if (index == R.styleable.ViewTransition_SharedValueId) {
                this.mSharedValueID = typedArrayObtainStyledAttributes.getResourceId(index, this.mSharedValueID);
            } else if (index == R.styleable.ViewTransition_SharedValue) {
                this.mSharedValueTarget = typedArrayObtainStyledAttributes.getInteger(index, this.mSharedValueTarget);
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    private void updateTransition(MotionScene.Transition transition, View view) {
        int i = this.mDuration;
        if (i != -1) {
            transition.setDuration(i);
        }
        transition.setPathMotionArc(this.mPathMotionArc);
        transition.setInterpolatorInfo(this.mDefaultInterpolator, this.mDefaultInterpolatorString, this.mDefaultInterpolatorID);
        int id = view.getId();
        KeyFrames keyFrames = this.mKeyFrames;
        if (keyFrames != null) {
            ArrayList<Key> keyFramesForView = keyFrames.getKeyFramesForView(-1);
            KeyFrames keyFrames2 = new KeyFrames();
            Iterator<Key> it = keyFramesForView.iterator();
            while (it.hasNext()) {
                keyFrames2.addKey(it.next().mo3clone().setViewId(id));
            }
            transition.addKeyFrame(keyFrames2);
        }
    }

    void applyIndependentTransition(ViewTransitionController viewTransitionController, MotionLayout motionLayout, View view) {
        MotionController motionController = new MotionController(view);
        motionController.setBothStates(view);
        this.mKeyFrames.addAllFrames(motionController);
        motionController.setup(motionLayout.getWidth(), motionLayout.getHeight(), this.mDuration, System.nanoTime());
        new Animate(viewTransitionController, motionController, this.mDuration, this.mUpDuration, this.mOnStateTransition, getInterpolator(motionLayout.getContext()), this.mSetsTag, this.mClearsTag);
    }

    void applyTransition(ViewTransitionController viewTransitionController, MotionLayout motionLayout, int i, ConstraintSet constraintSet, final View... viewArr) {
        if (this.mDisabled) {
            return;
        }
        int i2 = this.mViewTransitionMode;
        if (i2 == 2) {
            applyIndependentTransition(viewTransitionController, motionLayout, viewArr[0]);
            return;
        }
        if (i2 == 1) {
            for (int i3 : motionLayout.getConstraintSetIds()) {
                if (i3 != i) {
                    ConstraintSet constraintSet2 = motionLayout.getConstraintSet(i3);
                    for (View view : viewArr) {
                        ConstraintSet.Constraint constraint = constraintSet2.getConstraint(view.getId());
                        ConstraintSet.Constraint constraint2 = this.mConstraintDelta;
                        if (constraint2 != null) {
                            constraint2.applyDelta(constraint);
                            constraint.mCustomConstraints.putAll(this.mConstraintDelta.mCustomConstraints);
                        }
                    }
                }
            }
        }
        ConstraintSet constraintSet3 = new ConstraintSet();
        constraintSet3.clone(constraintSet);
        for (View view2 : viewArr) {
            ConstraintSet.Constraint constraint3 = constraintSet3.getConstraint(view2.getId());
            ConstraintSet.Constraint constraint4 = this.mConstraintDelta;
            if (constraint4 != null) {
                constraint4.applyDelta(constraint3);
                constraint3.mCustomConstraints.putAll(this.mConstraintDelta.mCustomConstraints);
            }
        }
        motionLayout.updateState(i, constraintSet3);
        motionLayout.updateState(R.id.view_transition, constraintSet);
        motionLayout.setState(R.id.view_transition, -1, -1);
        MotionScene.Transition transition = new MotionScene.Transition(-1, motionLayout.mScene, R.id.view_transition, i);
        for (View view3 : viewArr) {
            updateTransition(transition, view3);
        }
        motionLayout.setTransition(transition);
        motionLayout.transitionToEnd(new Runnable(this, viewArr) { // from class: androidx.constraintlayout.motion.widget.ViewTransition$$ExternalSyntheticLambda0
            public final ViewTransition f$0;
            public final View[] f$1;

            {
                this.f$0 = this;
                this.f$1 = viewArr;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$applyTransition$0$ViewTransition(this.f$1);
            }
        });
    }

    boolean checkTags(View view) {
        int i = this.mIfTagSet;
        boolean z = i == -1 || view.getTag(i) != null;
        int i2 = this.mIfTagNotSet;
        return z && (i2 == -1 || view.getTag(i2) == null);
    }

    int getId() {
        return this.mId;
    }

    Interpolator getInterpolator(Context context) {
        switch (this.mDefaultInterpolator) {
            case -2:
                return AnimationUtils.loadInterpolator(context, this.mDefaultInterpolatorID);
            case -1:
                return new Interpolator(this, Easing.getInterpolator(this.mDefaultInterpolatorString)) { // from class: androidx.constraintlayout.motion.widget.ViewTransition.1
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
            case 6:
                return new AnticipateInterpolator();
        }
    }

    public int getSharedValue() {
        return this.mSharedValueTarget;
    }

    public int getSharedValueCurrent() {
        return this.mSharedValueCurrent;
    }

    public int getSharedValueID() {
        return this.mSharedValueID;
    }

    public int getStateTransition() {
        return this.mOnStateTransition;
    }

    boolean isEnabled() {
        return !this.mDisabled;
    }

    public /* synthetic */ void lambda$applyTransition$0$ViewTransition(View[] viewArr) {
        if (this.mSetsTag != -1) {
            for (View view : viewArr) {
                view.setTag(this.mSetsTag, Long.valueOf(System.nanoTime()));
            }
        }
        if (this.mClearsTag != -1) {
            for (View view2 : viewArr) {
                view2.setTag(this.mClearsTag, null);
            }
        }
    }

    boolean matchesView(View view) {
        String str;
        if (view == null) {
            return false;
        }
        if ((this.mTargetId != -1 || this.mTargetString != null) && checkTags(view)) {
            if (view.getId() == this.mTargetId) {
                return true;
            }
            if (this.mTargetString == null) {
                return false;
            }
            return (view.getLayoutParams() instanceof ConstraintLayout.LayoutParams) && (str = ((ConstraintLayout.LayoutParams) view.getLayoutParams()).constraintTag) != null && str.matches(this.mTargetString);
        }
        return false;
    }

    void setEnabled(boolean z) {
        this.mDisabled = !z;
    }

    void setId(int i) {
        this.mId = i;
    }

    public void setSharedValue(int i) {
        this.mSharedValueTarget = i;
    }

    public void setSharedValueCurrent(int i) {
        this.mSharedValueCurrent = i;
    }

    public void setSharedValueID(int i) {
        this.mSharedValueID = i;
    }

    public void setStateTransition(int i) {
        this.mOnStateTransition = i;
    }

    boolean supports(int i) {
        int i2 = this.mOnStateTransition;
        if (i2 == 1) {
            if (i == 0) {
                return true;
            }
        } else if (i2 == 2) {
            if (i == 1) {
                return true;
            }
        } else {
            if (i2 != 3) {
                return false;
            }
            if (i == 0) {
                return true;
            }
        }
        return false;
    }

    public String toString() {
        String name = Debug.getName(this.mContext, this.mId);
        StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 16);
        sb.append(NPStringFog.decode(new byte[]{111, 10, 80, 21, 97, 68, 88, 13, 70, 11, 65, 95, 86, 13, 29}, "9c5b56", true, true));
        sb.append(name);
        sb.append(NPStringFog.decode(new byte[]{16}, "9ee80d", false, false));
        return sb.toString();
    }
}
