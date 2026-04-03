package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.util.TypedValue;
import android.util.Xml;
import android.view.MotionEvent;
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
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.constraintlayout.widget.R;
import androidx.constraintlayout.widget.StateSet;
import java.io.IOException;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import n.NPStringFog;
import org.apache.http.HttpStatus;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes39.dex */
public class MotionScene {
    static final int ANTICIPATE = 6;
    static final int BOUNCE = 4;
    private static final boolean DEBUG = false;
    static final int EASE_IN = 1;
    static final int EASE_IN_OUT = 0;
    static final int EASE_OUT = 2;
    private static final int INTERPOLATOR_REFERENCE_ID = -2;
    public static final int LAYOUT_CALL_MEASURE = 2;
    public static final int LAYOUT_HONOR_REQUEST = 1;
    public static final int LAYOUT_IGNORE_REQUEST = 0;
    static final int LINEAR = 3;
    private static final int MIN_DURATION = 8;
    static final int OVERSHOOT = 5;
    private static final int SPLINE_STRING = -1;
    static final int TRANSITION_BACKWARD = 0;
    static final int TRANSITION_FORWARD = 1;
    public static final int UNSET = -1;
    private MotionEvent mLastTouchDown;
    float mLastTouchX;
    float mLastTouchY;
    private final MotionLayout mMotionLayout;
    private boolean mRtl;
    private MotionLayout.MotionTracker mVelocityTracker;
    final ViewTransitionController mViewTransitionController;
    private static final String CONSTRAINTSET_TAG = NPStringFog.decode(new byte[]{117, 13, 94, 66, 66, 71, 87, 11, 94, 69, 101, 80, 66}, "6b0165", -7.5158336E8f);
    private static final String INCLUDE_TAG = NPStringFog.decode(new byte[]{13, 11, 91, 10, 19, 0, 1}, "de8ffd", true, false);
    private static final String INCLUDE_TAG_UC = NPStringFog.decode(new byte[]{47, 13, 7, 89, 22, 6, 3}, "fcd5cb", 883799605L);
    private static final String KEYFRAMESET_TAG = NPStringFog.decode(new byte[]{122, 92, 28, 118, 23, 89, 92, 92, 54, 85, 17}, "19e0e8", 1617603421L);
    private static final String MOTIONSCENE_TAG = NPStringFog.decode(new byte[]{124, 94, 68, 81, 90, 86, 98, 82, 85, 86, 80}, "110858", 27301);
    private static final String ONCLICK_TAG = NPStringFog.decode(new byte[]{45, 93, 112, 13, 88, 84, 9}, "b33a17", -2.5366496E8f);
    private static final String ONSWIPE_TAG = NPStringFog.decode(new byte[]{119, 93, 103, 17, 10, 73, 93}, "834fc9", -1848594179L);
    private static final String STATESET_TAG = NPStringFog.decode(new byte[]{50, 70, 85, 66, 86, 96, 4, 70}, "a24633", 1832079481L);
    private static final String TAG = NPStringFog.decode(new byte[]{127, 89, 18, 88, 89, 13, 97, 85, 3, 95, 83}, "26f16c", -1.1264332E9f);
    private static final String TRANSITION_TAG = NPStringFog.decode(new byte[]{50, 66, 85, 95, 70, 88, 18, 89, 91, 95}, "f04151", 6.15113766E8d);
    private static final String VIEW_TRANSITION = NPStringFog.decode(new byte[]{98, 94, 92, 22, 53, 74, 85, 89, 74, 8, 21, 81, 91, 89}, "479aa8", 4.05830378E8d);
    StateSet mStateSet = null;
    Transition mCurrentTransition = null;
    private boolean mDisableAutoTransition = false;
    private ArrayList<Transition> mTransitionList = new ArrayList<>();
    private Transition mDefaultTransition = null;
    private ArrayList<Transition> mAbstractTransitionList = new ArrayList<>();
    private SparseArray<ConstraintSet> mConstraintSetMap = new SparseArray<>();
    private HashMap<String, Integer> mConstraintSetIdMap = new HashMap<>();
    private SparseIntArray mDeriveMap = new SparseIntArray();
    private boolean DEBUG_DESKTOP = false;
    private int mDefaultDuration = HttpStatus.SC_BAD_REQUEST;
    private int mLayoutDuringTransition = 0;
    private boolean mIgnoreTouch = false;
    private boolean mMotionOutsideRegion = false;

    public static class Transition {
        public static final int AUTO_ANIMATE_TO_END = 4;
        public static final int AUTO_ANIMATE_TO_START = 3;
        public static final int AUTO_JUMP_TO_END = 2;
        public static final int AUTO_JUMP_TO_START = 1;
        public static final int AUTO_NONE = 0;
        static final int TRANSITION_FLAG_FIRST_DRAW = 1;
        static final int TRANSITION_FLAG_INTERCEPT_TOUCH = 4;
        static final int TRANSITION_FLAG_INTRA_AUTO = 2;
        private int mAutoTransition;
        private int mConstraintSetEnd;
        private int mConstraintSetStart;
        private int mDefaultInterpolator;
        private int mDefaultInterpolatorID;
        private String mDefaultInterpolatorString;
        private boolean mDisable;
        private int mDuration;
        private int mId;
        private boolean mIsAbstract;
        private ArrayList<KeyFrames> mKeyFramesList;
        private int mLayoutDuringTransition;
        private final MotionScene mMotionScene;
        private ArrayList<TransitionOnClick> mOnClicks;
        private int mPathMotionArc;
        private float mStagger;
        private TouchResponse mTouchResponse;
        private int mTransitionFlags;

        public static class TransitionOnClick implements View.OnClickListener {
            public static final int ANIM_TOGGLE = 17;
            public static final int ANIM_TO_END = 1;
            public static final int ANIM_TO_START = 16;
            public static final int JUMP_TO_END = 256;
            public static final int JUMP_TO_START = 4096;
            int mMode;
            int mTargetId;
            private final Transition mTransition;

            public TransitionOnClick(Context context, Transition transition, XmlPullParser xmlPullParser) {
                this.mTargetId = -1;
                this.mMode = 17;
                this.mTransition = transition;
                TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R.styleable.OnClick);
                int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
                for (int i = 0; i < indexCount; i++) {
                    int index = typedArrayObtainStyledAttributes.getIndex(i);
                    if (index == R.styleable.OnClick_targetId) {
                        this.mTargetId = typedArrayObtainStyledAttributes.getResourceId(index, this.mTargetId);
                    } else if (index == R.styleable.OnClick_clickAction) {
                        this.mMode = typedArrayObtainStyledAttributes.getInt(index, this.mMode);
                    }
                }
                typedArrayObtainStyledAttributes.recycle();
            }

            public TransitionOnClick(Transition transition, int i, int i2) {
                this.mTargetId = -1;
                this.mMode = 17;
                this.mTransition = transition;
                this.mTargetId = i;
                this.mMode = i2;
            }

            public void addOnClickListeners(MotionLayout motionLayout, int i, Transition transition) {
                int i2 = this.mTargetId;
                MotionLayout motionLayoutFindViewById = motionLayout;
                if (i2 != -1) {
                    motionLayoutFindViewById = motionLayout.findViewById(i2);
                }
                if (motionLayoutFindViewById == null) {
                    int i3 = this.mTargetId;
                    StringBuilder sb = new StringBuilder(37);
                    sb.append(NPStringFog.decode(new byte[]{118, 8, 112, 92, 88, 7, 82, 70, 80, 95, 68, 8, 93, 70, 93, 95, 69, 68, 95, 15, 93, 84, 17, 13, 93, 70}, "9f301d", -2.00069597E8d));
                    sb.append(i3);
                    Log.e(NPStringFog.decode(new byte[]{126, 12, 68, 90, 14, 91, 96, 0, 85, 93, 4}, "3c03a5", -1484641554L), sb.toString());
                    return;
                }
                int i4 = transition.mConstraintSetStart;
                int i5 = transition.mConstraintSetEnd;
                if (i4 == -1) {
                    motionLayoutFindViewById.setOnClickListener(this);
                    return;
                }
                int i6 = this.mMode;
                boolean z = (i6 & 1) != 0 && i == i4;
                boolean z2 = (i6 & 256) != 0 && i == i4;
                boolean z3 = (i6 & 1) != 0 && i == i4;
                if (((i6 & 4096) != 0 && i == i5) || (z | z2 | z3 | ((i6 & 16) != 0 && i == i5))) {
                    motionLayoutFindViewById.setOnClickListener(this);
                }
            }

            boolean isTransitionViable(Transition transition, MotionLayout motionLayout) {
                Transition transition2 = this.mTransition;
                if (transition2 == transition) {
                    return true;
                }
                int i = transition2.mConstraintSetEnd;
                int i2 = this.mTransition.mConstraintSetStart;
                return i2 == -1 ? motionLayout.mCurrentState != i : motionLayout.mCurrentState == i2 || motionLayout.mCurrentState == i;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                boolean z = false;
                MotionLayout motionLayout = this.mTransition.mMotionScene.mMotionLayout;
                if (motionLayout.isInteractionEnabled()) {
                    if (this.mTransition.mConstraintSetStart == -1) {
                        int currentState = motionLayout.getCurrentState();
                        if (currentState == -1) {
                            motionLayout.transitionToState(this.mTransition.mConstraintSetEnd);
                            return;
                        }
                        Transition transition = new Transition(this.mTransition.mMotionScene, this.mTransition);
                        transition.mConstraintSetStart = currentState;
                        transition.mConstraintSetEnd = this.mTransition.mConstraintSetEnd;
                        motionLayout.setTransition(transition);
                        motionLayout.transitionToEnd();
                        return;
                    }
                    Transition transition2 = this.mTransition.mMotionScene.mCurrentTransition;
                    int i = this.mMode;
                    boolean z2 = ((i & 1) == 0 && (i & 256) == 0) ? false : true;
                    boolean z3 = ((i & 16) == 0 && (i & 4096) == 0) ? false : true;
                    if (z2 && z3) {
                        Transition transition3 = this.mTransition.mMotionScene.mCurrentTransition;
                        Transition transition4 = this.mTransition;
                        if (transition3 != transition4) {
                            motionLayout.setTransition(transition4);
                        }
                        if (motionLayout.getCurrentState() == motionLayout.getEndState() || motionLayout.getProgress() > 0.5f) {
                            z2 = false;
                            z = z3;
                        }
                    } else {
                        z = z3;
                    }
                    if (isTransitionViable(transition2, motionLayout)) {
                        if (z2 && (this.mMode & 1) != 0) {
                            motionLayout.setTransition(this.mTransition);
                            motionLayout.transitionToEnd();
                            return;
                        }
                        if (z && (this.mMode & 16) != 0) {
                            motionLayout.setTransition(this.mTransition);
                            motionLayout.transitionToStart();
                        } else if (z2 && (this.mMode & 256) != 0) {
                            motionLayout.setTransition(this.mTransition);
                            motionLayout.setProgress(1.0f);
                        } else {
                            if (!z || (this.mMode & 4096) == 0) {
                                return;
                            }
                            motionLayout.setTransition(this.mTransition);
                            motionLayout.setProgress(0.0f);
                        }
                    }
                }
            }

            public void removeOnClickListeners(MotionLayout motionLayout) {
                int i = this.mTargetId;
                if (i == -1) {
                    return;
                }
                View viewFindViewById = motionLayout.findViewById(i);
                if (viewFindViewById != null) {
                    viewFindViewById.setOnClickListener(null);
                    return;
                }
                int i2 = this.mTargetId;
                StringBuilder sb = new StringBuilder(35);
                sb.append(NPStringFog.decode(new byte[]{25, 24, 27, 25, 22, 24, 90, 95, 68, 92, 82, 24, 87, 95, 69, 16, 80, 81, 87, 84, 17, 89, 82, 24}, "901068", -1.90130734E8d));
                sb.append(i2);
                Log.e(NPStringFog.decode(new byte[]{127, 91, 65, 80, 90, 11, 97, 87, 80, 87, 80}, "24595e", 17071), sb.toString());
            }
        }

        public Transition(int i, MotionScene motionScene, int i2, int i3) {
            this.mId = -1;
            this.mIsAbstract = false;
            this.mConstraintSetEnd = -1;
            this.mConstraintSetStart = -1;
            this.mDefaultInterpolator = 0;
            this.mDefaultInterpolatorString = null;
            this.mDefaultInterpolatorID = -1;
            this.mDuration = HttpStatus.SC_BAD_REQUEST;
            this.mStagger = 0.0f;
            this.mKeyFramesList = new ArrayList<>();
            this.mTouchResponse = null;
            this.mOnClicks = new ArrayList<>();
            this.mAutoTransition = 0;
            this.mDisable = false;
            this.mPathMotionArc = -1;
            this.mLayoutDuringTransition = 0;
            this.mTransitionFlags = 0;
            this.mId = i;
            this.mMotionScene = motionScene;
            this.mConstraintSetStart = i2;
            this.mConstraintSetEnd = i3;
            this.mDuration = motionScene.mDefaultDuration;
            this.mLayoutDuringTransition = motionScene.mLayoutDuringTransition;
        }

        Transition(MotionScene motionScene, Context context, XmlPullParser xmlPullParser) {
            this.mId = -1;
            this.mIsAbstract = false;
            this.mConstraintSetEnd = -1;
            this.mConstraintSetStart = -1;
            this.mDefaultInterpolator = 0;
            this.mDefaultInterpolatorString = null;
            this.mDefaultInterpolatorID = -1;
            this.mDuration = HttpStatus.SC_BAD_REQUEST;
            this.mStagger = 0.0f;
            this.mKeyFramesList = new ArrayList<>();
            this.mTouchResponse = null;
            this.mOnClicks = new ArrayList<>();
            this.mAutoTransition = 0;
            this.mDisable = false;
            this.mPathMotionArc = -1;
            this.mLayoutDuringTransition = 0;
            this.mTransitionFlags = 0;
            this.mDuration = motionScene.mDefaultDuration;
            this.mLayoutDuringTransition = motionScene.mLayoutDuringTransition;
            this.mMotionScene = motionScene;
            fillFromAttributeList(motionScene, context, Xml.asAttributeSet(xmlPullParser));
        }

        Transition(MotionScene motionScene, Transition transition) {
            this.mId = -1;
            this.mIsAbstract = false;
            this.mConstraintSetEnd = -1;
            this.mConstraintSetStart = -1;
            this.mDefaultInterpolator = 0;
            this.mDefaultInterpolatorString = null;
            this.mDefaultInterpolatorID = -1;
            this.mDuration = HttpStatus.SC_BAD_REQUEST;
            this.mStagger = 0.0f;
            this.mKeyFramesList = new ArrayList<>();
            this.mTouchResponse = null;
            this.mOnClicks = new ArrayList<>();
            this.mAutoTransition = 0;
            this.mDisable = false;
            this.mPathMotionArc = -1;
            this.mLayoutDuringTransition = 0;
            this.mTransitionFlags = 0;
            this.mMotionScene = motionScene;
            this.mDuration = motionScene.mDefaultDuration;
            if (transition != null) {
                this.mPathMotionArc = transition.mPathMotionArc;
                this.mDefaultInterpolator = transition.mDefaultInterpolator;
                this.mDefaultInterpolatorString = transition.mDefaultInterpolatorString;
                this.mDefaultInterpolatorID = transition.mDefaultInterpolatorID;
                this.mDuration = transition.mDuration;
                this.mKeyFramesList = transition.mKeyFramesList;
                this.mStagger = transition.mStagger;
                this.mLayoutDuringTransition = transition.mLayoutDuringTransition;
            }
        }

        private void fill(MotionScene motionScene, Context context, TypedArray typedArray) {
            int indexCount = typedArray.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArray.getIndex(i);
                if (index == R.styleable.Transition_constraintSetEnd) {
                    this.mConstraintSetEnd = typedArray.getResourceId(index, -1);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.mConstraintSetEnd);
                    if (NPStringFog.decode(new byte[]{84, 80, 64, 87, 77, 65}, "819885", -9.53633835E8d).equals(resourceTypeName)) {
                        ConstraintSet constraintSet = new ConstraintSet();
                        constraintSet.load(context, this.mConstraintSetEnd);
                        motionScene.mConstraintSetMap.append(this.mConstraintSetEnd, constraintSet);
                    } else if (NPStringFog.decode(new byte[]{65, 95, 91}, "927511", -1324152181L).equals(resourceTypeName)) {
                        this.mConstraintSetEnd = motionScene.parseInclude(context, this.mConstraintSetEnd);
                    }
                } else if (index == R.styleable.Transition_constraintSetStart) {
                    this.mConstraintSetStart = typedArray.getResourceId(index, this.mConstraintSetStart);
                    String resourceTypeName2 = context.getResources().getResourceTypeName(this.mConstraintSetStart);
                    if (NPStringFog.decode(new byte[]{90, 82, 79, 91, 67, 68}, "636460", true, true).equals(resourceTypeName2)) {
                        ConstraintSet constraintSet2 = new ConstraintSet();
                        constraintSet2.load(context, this.mConstraintSetStart);
                        motionScene.mConstraintSetMap.append(this.mConstraintSetStart, constraintSet2);
                    } else if (NPStringFog.decode(new byte[]{75, 90, 9}, "37e3df", true).equals(resourceTypeName2)) {
                        this.mConstraintSetStart = motionScene.parseInclude(context, this.mConstraintSetStart);
                    }
                } else if (index == R.styleable.Transition_motionInterpolator) {
                    TypedValue typedValuePeekValue = typedArray.peekValue(index);
                    if (typedValuePeekValue.type == 1) {
                        int resourceId = typedArray.getResourceId(index, -1);
                        this.mDefaultInterpolatorID = resourceId;
                        if (resourceId != -1) {
                            this.mDefaultInterpolator = -2;
                        }
                    } else if (typedValuePeekValue.type == 3) {
                        String string = typedArray.getString(index);
                        this.mDefaultInterpolatorString = string;
                        if (string != null) {
                            if (string.indexOf(NPStringFog.decode(new byte[]{26}, "51c2ed", false)) > 0) {
                                this.mDefaultInterpolatorID = typedArray.getResourceId(index, -1);
                                this.mDefaultInterpolator = -2;
                            } else {
                                this.mDefaultInterpolator = -1;
                            }
                        }
                    } else {
                        this.mDefaultInterpolator = typedArray.getInteger(index, this.mDefaultInterpolator);
                    }
                } else if (index == R.styleable.Transition_duration) {
                    int i2 = typedArray.getInt(index, this.mDuration);
                    this.mDuration = i2;
                    if (i2 < 8) {
                        this.mDuration = 8;
                    }
                } else if (index == R.styleable.Transition_staggered) {
                    this.mStagger = typedArray.getFloat(index, this.mStagger);
                } else if (index == R.styleable.Transition_autoTransition) {
                    this.mAutoTransition = typedArray.getInteger(index, this.mAutoTransition);
                } else if (index == R.styleable.Transition_android_id) {
                    this.mId = typedArray.getResourceId(index, this.mId);
                } else if (index == R.styleable.Transition_transitionDisable) {
                    this.mDisable = typedArray.getBoolean(index, this.mDisable);
                } else if (index == R.styleable.Transition_pathMotionArc) {
                    this.mPathMotionArc = typedArray.getInteger(index, -1);
                } else if (index == R.styleable.Transition_layoutDuringTransition) {
                    this.mLayoutDuringTransition = typedArray.getInteger(index, 0);
                } else if (index == R.styleable.Transition_transitionFlags) {
                    this.mTransitionFlags = typedArray.getInteger(index, 0);
                }
            }
            if (this.mConstraintSetStart == -1) {
                this.mIsAbstract = true;
            }
        }

        private void fillFromAttributeList(MotionScene motionScene, Context context, AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.Transition);
            fill(motionScene, context, typedArrayObtainStyledAttributes);
            typedArrayObtainStyledAttributes.recycle();
        }

        public void addKeyFrame(KeyFrames keyFrames) {
            this.mKeyFramesList.add(keyFrames);
        }

        public void addOnClick(int i, int i2) {
            for (TransitionOnClick transitionOnClick : this.mOnClicks) {
                if (transitionOnClick.mTargetId == i) {
                    transitionOnClick.mMode = i2;
                    return;
                }
            }
            this.mOnClicks.add(new TransitionOnClick(this, i, i2));
        }

        public void addOnClick(Context context, XmlPullParser xmlPullParser) {
            this.mOnClicks.add(new TransitionOnClick(context, this, xmlPullParser));
        }

        public String debugString(Context context) {
            String strDecode = this.mConstraintSetStart == -1 ? NPStringFog.decode(new byte[]{92, 69, 84, 9}, "208ee6", -2.116582E9f) : context.getResources().getResourceEntryName(this.mConstraintSetStart);
            if (this.mConstraintSetEnd == -1) {
                return String.valueOf(strDecode).concat(NPStringFog.decode(new byte[]{66, 26, 12, 70, 11, 16, 14, 91}, "b72fee", 961942748L));
            }
            String strValueOf = String.valueOf(strDecode);
            String resourceEntryName = context.getResources().getResourceEntryName(this.mConstraintSetEnd);
            StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 4 + String.valueOf(resourceEntryName).length());
            sb.append(strValueOf);
            sb.append(NPStringFog.decode(new byte[]{20, 76, 91, 22}, "4ae671", true, true));
            sb.append(resourceEntryName);
            return sb.toString();
        }

        public int getAutoTransition() {
            return this.mAutoTransition;
        }

        public int getDuration() {
            return this.mDuration;
        }

        public int getEndConstraintSetId() {
            return this.mConstraintSetEnd;
        }

        public int getId() {
            return this.mId;
        }

        public List<KeyFrames> getKeyFrameList() {
            return this.mKeyFramesList;
        }

        public int getLayoutDuringTransition() {
            return this.mLayoutDuringTransition;
        }

        public List<TransitionOnClick> getOnClickList() {
            return this.mOnClicks;
        }

        public int getPathMotionArc() {
            return this.mPathMotionArc;
        }

        public float getStagger() {
            return this.mStagger;
        }

        public int getStartConstraintSetId() {
            return this.mConstraintSetStart;
        }

        public TouchResponse getTouchResponse() {
            return this.mTouchResponse;
        }

        public boolean isEnabled() {
            return !this.mDisable;
        }

        public boolean isTransitionFlag(int i) {
            return (this.mTransitionFlags & i) != 0;
        }

        public void removeOnClick(int i) {
            TransitionOnClick next;
            Iterator<TransitionOnClick> it = this.mOnClicks.iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                } else {
                    next = it.next();
                    if (next.mTargetId == i) {
                        break;
                    }
                }
            }
            if (next != null) {
                this.mOnClicks.remove(next);
            }
        }

        public void setAutoTransition(int i) {
            this.mAutoTransition = i;
        }

        public void setDuration(int i) {
            this.mDuration = Math.max(i, 8);
        }

        public void setEnable(boolean z) {
            setEnabled(z);
        }

        public void setEnabled(boolean z) {
            this.mDisable = !z;
        }

        public void setInterpolatorInfo(int i, String str, int i2) {
            this.mDefaultInterpolator = i;
            this.mDefaultInterpolatorString = str;
            this.mDefaultInterpolatorID = i2;
        }

        public void setLayoutDuringTransition(int i) {
            this.mLayoutDuringTransition = i;
        }

        public void setOnSwipe(OnSwipe onSwipe) {
            this.mTouchResponse = onSwipe == null ? null : new TouchResponse(this.mMotionScene.mMotionLayout, onSwipe);
        }

        public void setOnTouchUp(int i) {
            TouchResponse touchResponse = getTouchResponse();
            if (touchResponse != null) {
                touchResponse.setTouchUpMode(i);
            }
        }

        public void setPathMotionArc(int i) {
            this.mPathMotionArc = i;
        }

        public void setStagger(float f) {
            this.mStagger = f;
        }

        public void setTransitionFlag(int i) {
            this.mTransitionFlags = i;
        }
    }

    MotionScene(Context context, MotionLayout motionLayout, int i) {
        this.mMotionLayout = motionLayout;
        this.mViewTransitionController = new ViewTransitionController(motionLayout);
        load(context, i);
        this.mConstraintSetMap.put(R.id.motion_base, new ConstraintSet());
        this.mConstraintSetIdMap.put(NPStringFog.decode(new byte[]{93, 13, 67, 15, 14, 94, 111, 0, 86, 21, 4}, "0b7fa0", -19718), Integer.valueOf(R.id.motion_base));
    }

    public MotionScene(MotionLayout motionLayout) {
        this.mMotionLayout = motionLayout;
        this.mViewTransitionController = new ViewTransitionController(motionLayout);
    }

    private int getId(Context context, String str) {
        int identifier;
        if (str.contains(NPStringFog.decode(new byte[]{74}, "ea00f4", -4.84460948E8d))) {
            identifier = context.getResources().getIdentifier(str.substring(str.indexOf(47) + 1), NPStringFog.decode(new byte[]{11, 1}, "beb500", true), context.getPackageName());
            if (this.DEBUG_DESKTOP) {
                PrintStream printStream = System.out;
                StringBuilder sb = new StringBuilder(27);
                sb.append(NPStringFog.decode(new byte[]{92, 83, 21, 94, 82, 23, 120, 86, 69, 25, 69, 6, 70, 23, 8, 25}, "57597c", 2064490381L));
                sb.append(identifier);
                printStream.println(sb.toString());
            }
        } else {
            identifier = -1;
        }
        if (identifier != -1) {
            return identifier;
        }
        if (str != null && str.length() > 1) {
            return Integer.parseInt(str.substring(1));
        }
        Log.e(MOTIONSCENE_TAG, NPStringFog.decode(new byte[]{80, 69, 68, 89, 16, 21, 92, 89, 22, 70, 3, 71, 70, 94, 88, 81, 66, 92, 81}, "5766b5", -3.6612883E8f));
        return identifier;
    }

    private int getIndex(Transition transition) {
        int i = transition.mId;
        if (i == -1) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{55, 80, 4, 21, 77, 20, 2, 86, 18, 92, 77, 15, 12, 86, 65, 88, 76, 21, 23, 24, 9, 84, 79, 3, 67, 89, 15, 21, 80, 2}, "c8a59f", true));
        }
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 >= this.mTransitionList.size()) {
                return -1;
            }
            if (this.mTransitionList.get(i3).mId == i) {
                return i3;
            }
            i2 = i3 + 1;
        }
    }

    static String getLine(Context context, int i, XmlPullParser xmlPullParser) {
        String name = Debug.getName(context, i);
        int lineNumber = xmlPullParser.getLineNumber();
        String name2 = xmlPullParser.getName();
        StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 22 + String.valueOf(name2).length());
        sb.append(NPStringFog.decode(new byte[]{26, 31}, "47ff8d", 1.551754977E9d));
        sb.append(name);
        sb.append(NPStringFog.decode(new byte[]{24, 79, 88, 94, 89}, "6752ce", 1.088009395E9d));
        sb.append(lineNumber);
        sb.append(NPStringFog.decode(new byte[]{16, 20, 16}, "9426d0", -1851240054L));
        sb.append(name2);
        sb.append(NPStringFog.decode(new byte[]{68}, "fd2416", -8.95166E7f));
        return sb.toString();
    }

    private int getRealID(int i) {
        int iStateGetConstraintID;
        StateSet stateSet = this.mStateSet;
        return (stateSet == null || (iStateGetConstraintID = stateSet.stateGetConstraintID(i, -1, -1)) == -1) ? i : iStateGetConstraintID;
    }

    private boolean hasCycleDependency(int i) {
        int i2 = this.mDeriveMap.get(i);
        int size = this.mDeriveMap.size();
        while (i2 > 0) {
            if (i2 == i || size < 0) {
                return true;
            }
            i2 = this.mDeriveMap.get(i2);
            size--;
        }
        return false;
    }

    private boolean isProcessingTouch() {
        return this.mVelocityTracker != null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0054  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void load(android.content.Context r11, int r12) {
        /*
            Method dump skipped, instruction units count: 589
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.MotionScene.load(android.content.Context, int):void");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00bd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int parseConstraintSet(android.content.Context r14, org.xmlpull.v1.XmlPullParser r15) {
        /*
            Method dump skipped, instruction units count: 559
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.MotionScene.parseConstraintSet(android.content.Context, org.xmlpull.v1.XmlPullParser):int");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int parseInclude(Context context, int i) {
        int eventType;
        XmlResourceParser xml = context.getResources().getXml(i);
        try {
        } catch (IOException e) {
            e.printStackTrace();
        } catch (XmlPullParserException e2) {
            e2.printStackTrace();
        }
        for (eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
            String name = xml.getName();
            if (2 == eventType && CONSTRAINTSET_TAG.equals(name)) {
                return parseConstraintSet(context, xml);
            }
            return -1;
        }
        return -1;
    }

    private void parseInclude(Context context, XmlPullParser xmlPullParser) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R.styleable.include);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i);
            if (index == R.styleable.include_constraintSet) {
                parseInclude(context, typedArrayObtainStyledAttributes.getResourceId(index, -1));
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    private void parseMotionSceneTags(Context context, XmlPullParser xmlPullParser) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R.styleable.MotionScene);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i);
            if (index == R.styleable.MotionScene_defaultDuration) {
                int i2 = typedArrayObtainStyledAttributes.getInt(index, this.mDefaultDuration);
                this.mDefaultDuration = i2;
                if (i2 < 8) {
                    this.mDefaultDuration = 8;
                }
            } else if (index == R.styleable.MotionScene_layoutDuringTransition) {
                this.mLayoutDuringTransition = typedArrayObtainStyledAttributes.getInteger(index, 0);
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    private void readConstraintChain(int i, MotionLayout motionLayout) {
        ConstraintSet constraintSet = this.mConstraintSetMap.get(i);
        constraintSet.derivedState = constraintSet.mIdString;
        int i2 = this.mDeriveMap.get(i);
        if (i2 > 0) {
            readConstraintChain(i2, motionLayout);
            ConstraintSet constraintSet2 = this.mConstraintSetMap.get(i2);
            if (constraintSet2 == null) {
                String strValueOf = String.valueOf(Debug.getName(this.mMotionLayout.getContext(), i2));
                Log.e(MOTIONSCENE_TAG, strValueOf.length() != 0 ? NPStringFog.decode(new byte[]{114, 106, 49, 118, 97, 18, 23, 81, 13, 79, 82, 95, 94, 92, 67, 93, 86, 65, 94, 78, 6, 122, 92, 93, 68, 76, 17, 88, 90, 93, 67, 75, 37, 75, 92, 94, 13, 24, 35, 80, 87, 28}, "78c933", true, true).concat(strValueOf) : new String(NPStringFog.decode(new byte[]{116, 49, 107, 120, 100, 17, 17, 10, 87, 65, 87, 92, 88, 7, 25, 83, 83, 66, 88, 21, 92, 116, 89, 94, 66, 23, 75, 86, 95, 94, 69, 16, 127, 69, 89, 93, 11, 67, 121, 94, 82, 31}, "1c9760", false)));
                return;
            }
            String strValueOf2 = String.valueOf(constraintSet.derivedState);
            String str = constraintSet2.derivedState;
            StringBuilder sb = new StringBuilder(String.valueOf(strValueOf2).length() + 1 + String.valueOf(str).length());
            sb.append(strValueOf2);
            sb.append(NPStringFog.decode(new byte[]{76}, "c7a84f", 29897));
            sb.append(str);
            constraintSet.derivedState = sb.toString();
            constraintSet.readFallback(constraintSet2);
        } else {
            constraintSet.derivedState = String.valueOf(constraintSet.derivedState).concat(NPStringFog.decode(new byte[]{66, 21, 15, 3, 78, 90, 23, 65}, "b5cb75", 3.0865382E8f));
            constraintSet.readFallback(motionLayout);
        }
        constraintSet.applyDeltaFrom(constraintSet);
    }

    public static String stripID(String str) {
        if (str == null) {
            return "";
        }
        int iIndexOf = str.indexOf(47);
        return iIndexOf >= 0 ? str.substring(iIndexOf + 1) : str;
    }

    public void addOnClickListeners(MotionLayout motionLayout, int i) {
        for (Transition transition : this.mTransitionList) {
            if (transition.mOnClicks.size() > 0) {
                Iterator it = transition.mOnClicks.iterator();
                while (it.hasNext()) {
                    ((Transition.TransitionOnClick) it.next()).removeOnClickListeners(motionLayout);
                }
            }
        }
        for (Transition transition2 : this.mAbstractTransitionList) {
            if (transition2.mOnClicks.size() > 0) {
                Iterator it2 = transition2.mOnClicks.iterator();
                while (it2.hasNext()) {
                    ((Transition.TransitionOnClick) it2.next()).removeOnClickListeners(motionLayout);
                }
            }
        }
        for (Transition transition3 : this.mTransitionList) {
            if (transition3.mOnClicks.size() > 0) {
                Iterator it3 = transition3.mOnClicks.iterator();
                while (it3.hasNext()) {
                    ((Transition.TransitionOnClick) it3.next()).addOnClickListeners(motionLayout, i, transition3);
                }
            }
        }
        for (Transition transition4 : this.mAbstractTransitionList) {
            if (transition4.mOnClicks.size() > 0) {
                Iterator it4 = transition4.mOnClicks.iterator();
                while (it4.hasNext()) {
                    ((Transition.TransitionOnClick) it4.next()).addOnClickListeners(motionLayout, i, transition4);
                }
            }
        }
    }

    public void addTransition(Transition transition) {
        int index = getIndex(transition);
        if (index == -1) {
            this.mTransitionList.add(transition);
        } else {
            this.mTransitionList.set(index, transition);
        }
    }

    public boolean applyViewTransition(int i, MotionController motionController) {
        return this.mViewTransitionController.applyViewTransition(i, motionController);
    }

    boolean autoTransition(MotionLayout motionLayout, int i) {
        Transition transition;
        if (!isProcessingTouch() && !this.mDisableAutoTransition) {
            for (Transition transition2 : this.mTransitionList) {
                if (transition2.mAutoTransition != 0 && ((transition = this.mCurrentTransition) != transition2 || !transition.isTransitionFlag(2))) {
                    if (i == transition2.mConstraintSetStart && (transition2.mAutoTransition == 4 || transition2.mAutoTransition == 2)) {
                        motionLayout.setState(MotionLayout.TransitionState.FINISHED);
                        motionLayout.setTransition(transition2);
                        if (transition2.mAutoTransition == 4) {
                            motionLayout.transitionToEnd();
                            motionLayout.setState(MotionLayout.TransitionState.SETUP);
                            motionLayout.setState(MotionLayout.TransitionState.MOVING);
                        } else {
                            motionLayout.setProgress(1.0f);
                            motionLayout.evaluate(true);
                            motionLayout.setState(MotionLayout.TransitionState.SETUP);
                            motionLayout.setState(MotionLayout.TransitionState.MOVING);
                            motionLayout.setState(MotionLayout.TransitionState.FINISHED);
                            motionLayout.onNewStateAttachHandlers();
                        }
                        return true;
                    }
                    if (i == transition2.mConstraintSetEnd && (transition2.mAutoTransition == 3 || transition2.mAutoTransition == 1)) {
                        motionLayout.setState(MotionLayout.TransitionState.FINISHED);
                        motionLayout.setTransition(transition2);
                        if (transition2.mAutoTransition == 3) {
                            motionLayout.transitionToStart();
                            motionLayout.setState(MotionLayout.TransitionState.SETUP);
                            motionLayout.setState(MotionLayout.TransitionState.MOVING);
                        } else {
                            motionLayout.setProgress(0.0f);
                            motionLayout.evaluate(true);
                            motionLayout.setState(MotionLayout.TransitionState.SETUP);
                            motionLayout.setState(MotionLayout.TransitionState.MOVING);
                            motionLayout.setState(MotionLayout.TransitionState.FINISHED);
                            motionLayout.onNewStateAttachHandlers();
                        }
                        return true;
                    }
                }
            }
            return false;
        }
        return false;
    }

    public Transition bestTransitionFor(int i, float f, float f2, MotionEvent motionEvent) {
        float f3;
        Transition transition;
        if (i == -1) {
            return this.mCurrentTransition;
        }
        List<Transition> transitionsWithState = getTransitionsWithState(i);
        float f4 = 0.0f;
        Transition transition2 = null;
        RectF rectF = new RectF();
        for (Transition transition3 : transitionsWithState) {
            if (!transition3.mDisable) {
                if (transition3.mTouchResponse != null) {
                    transition3.mTouchResponse.setRTL(this.mRtl);
                    RectF touchRegion = transition3.mTouchResponse.getTouchRegion(this.mMotionLayout, rectF);
                    if (touchRegion == null || motionEvent == null || touchRegion.contains(motionEvent.getX(), motionEvent.getY())) {
                        RectF limitBoundsTo = transition3.mTouchResponse.getLimitBoundsTo(this.mMotionLayout, rectF);
                        if (limitBoundsTo == null || motionEvent == null || limitBoundsTo.contains(motionEvent.getX(), motionEvent.getY())) {
                            float fDot = transition3.mTouchResponse.dot(f, f2);
                            if (transition3.mTouchResponse.mIsRotateMode && motionEvent != null) {
                                fDot = ((float) (Math.atan2(f2 + r8, f + r3) - Math.atan2(motionEvent.getX() - transition3.mTouchResponse.mRotateCenterX, motionEvent.getY() - transition3.mTouchResponse.mRotateCenterY))) * 10.0f;
                            }
                            float f5 = transition3.mConstraintSetEnd == i ? fDot * (-1.0f) : fDot * 1.1f;
                            if (f5 > f4) {
                                float f6 = f5;
                                transition = transition3;
                                f3 = f6;
                            } else {
                                f3 = f4;
                                transition = transition2;
                            }
                        }
                    }
                } else {
                    f3 = f4;
                    transition = transition2;
                }
                transition2 = transition;
                f4 = f3;
            }
        }
        return transition2;
    }

    public void disableAutoTransition(boolean z) {
        this.mDisableAutoTransition = z;
    }

    public void enableViewTransition(int i, boolean z) {
        this.mViewTransitionController.enableViewTransition(i, z);
    }

    public int gatPathMotionArc() {
        Transition transition = this.mCurrentTransition;
        if (transition != null) {
            return transition.mPathMotionArc;
        }
        return -1;
    }

    int getAutoCompleteMode() {
        Transition transition = this.mCurrentTransition;
        if (transition == null || transition.mTouchResponse == null) {
            return 0;
        }
        return this.mCurrentTransition.mTouchResponse.getAutoCompleteMode();
    }

    ConstraintSet getConstraintSet(int i) {
        return getConstraintSet(i, -1, -1);
    }

    ConstraintSet getConstraintSet(int i, int i2, int i3) {
        int iStateGetConstraintID;
        if (this.DEBUG_DESKTOP) {
            PrintStream printStream = System.out;
            StringBuilder sb = new StringBuilder(14);
            sb.append(NPStringFog.decode(new byte[]{81, 85, 17}, "811cb1", -1279642569L));
            sb.append(i);
            printStream.println(sb.toString());
            PrintStream printStream2 = System.out;
            int size = this.mConstraintSetMap.size();
            StringBuilder sb2 = new StringBuilder(16);
            sb2.append(NPStringFog.decode(new byte[]{67, 95, 74, 81, 70}, "0604f1", -1748850972L));
            sb2.append(size);
            printStream2.println(sb2.toString());
        }
        StateSet stateSet = this.mStateSet;
        if (stateSet != null && (iStateGetConstraintID = stateSet.stateGetConstraintID(i, i2, i3)) != -1) {
            i = iStateGetConstraintID;
        }
        if (this.mConstraintSetMap.get(i) != null) {
            return this.mConstraintSetMap.get(i);
        }
        String name = Debug.getName(this.mMotionLayout.getContext(), i);
        StringBuilder sb3 = new StringBuilder(String.valueOf(name).length() + 55);
        sb3.append(NPStringFog.decode(new byte[]{96, 3, 66, 13, 88, 94, 80, 66, 83, 12, 68, 92, 83, 66, 94, 12, 69, 16, 81, 11, 94, 7, 17, 115, 88, 12, 67, 23, 67, 81, 94, 12, 68, 48, 84, 68, 23, 11, 84, 76}, "7b0c10", -14437));
        sb3.append(name);
        sb3.append(NPStringFog.decode(new byte[]{17, 113, 92, 22, 123, 88, 69, 81, 93, 88, 101, 84, 84, 86, 87}, "182667", 11111));
        Log.e(MOTIONSCENE_TAG, sb3.toString());
        SparseArray<ConstraintSet> sparseArray = this.mConstraintSetMap;
        return sparseArray.get(sparseArray.keyAt(0));
    }

    public ConstraintSet getConstraintSet(Context context, String str) {
        if (this.DEBUG_DESKTOP) {
            PrintStream printStream = System.out;
            String strValueOf = String.valueOf(str);
            printStream.println(strValueOf.length() != 0 ? NPStringFog.decode(new byte[]{93, 92, 23}, "487581", false).concat(strValueOf) : new String(NPStringFog.decode(new byte[]{88, 87, 16}, "1302c0", false)));
            PrintStream printStream2 = System.out;
            int size = this.mConstraintSetMap.size();
            StringBuilder sb = new StringBuilder(16);
            sb.append(NPStringFog.decode(new byte[]{64, 88, 28, 84, 17}, "31f11f", true, false));
            sb.append(size);
            printStream2.println(sb.toString());
        }
        for (int i = 0; i < this.mConstraintSetMap.size(); i++) {
            int iKeyAt = this.mConstraintSetMap.keyAt(i);
            String resourceName = context.getResources().getResourceName(iKeyAt);
            if (this.DEBUG_DESKTOP) {
                PrintStream printStream3 = System.out;
                StringBuilder sb2 = new StringBuilder(String.valueOf(resourceName).length() + 41 + String.valueOf(str).length());
                sb2.append(NPStringFog.decode(new byte[]{121, 7, 24, 94, 91, 69, 16, 95}, "0c8847", true));
                sb2.append(i);
                sb2.append(NPStringFog.decode(new byte[]{10, 21, 94, 22, 22, 15}, "457e63", -1.07122727E9d));
                sb2.append(resourceName);
                sb2.append(NPStringFog.decode(new byte[]{7, 68, 91, 95, 95, 88, 80, 10, 80, 16, 86, 92, 75, 68, 11}, "9d7003", -1.805228236E9d));
                sb2.append(str);
                sb2.append(NPStringFog.decode(new byte[]{14}, "0b0a57", 5.698654E8f));
                printStream3.println(sb2.toString());
            }
            if (str.equals(resourceName)) {
                return this.mConstraintSetMap.get(iKeyAt);
            }
        }
        return null;
    }

    public int[] getConstraintSetIds() {
        int[] iArr = new int[this.mConstraintSetMap.size()];
        for (int i = 0; i < iArr.length; i++) {
            iArr[i] = this.mConstraintSetMap.keyAt(i);
        }
        return iArr;
    }

    public ArrayList<Transition> getDefinedTransitions() {
        return this.mTransitionList;
    }

    public int getDuration() {
        Transition transition = this.mCurrentTransition;
        return transition != null ? transition.mDuration : this.mDefaultDuration;
    }

    int getEndId() {
        Transition transition = this.mCurrentTransition;
        if (transition == null) {
            return -1;
        }
        return transition.mConstraintSetEnd;
    }

    public Interpolator getInterpolator() {
        switch (this.mCurrentTransition.mDefaultInterpolator) {
            case -2:
                return AnimationUtils.loadInterpolator(this.mMotionLayout.getContext(), this.mCurrentTransition.mDefaultInterpolatorID);
            case -1:
                return new Interpolator(this, Easing.getInterpolator(this.mCurrentTransition.mDefaultInterpolatorString)) { // from class: androidx.constraintlayout.motion.widget.MotionScene.1
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

    Key getKeyFrame(Context context, int i, int i2, int i3) {
        Transition transition = this.mCurrentTransition;
        if (transition == null) {
            return null;
        }
        for (KeyFrames keyFrames : transition.mKeyFramesList) {
            for (Integer num : keyFrames.getKeys()) {
                if (i2 == num.intValue()) {
                    for (Key key : keyFrames.getKeyFramesForView(num.intValue())) {
                        if (key.mFramePosition == i3 && key.mType == i) {
                            return key;
                        }
                    }
                }
            }
        }
        return null;
    }

    public void getKeyFrames(MotionController motionController) {
        Transition transition = this.mCurrentTransition;
        if (transition != null) {
            Iterator it = transition.mKeyFramesList.iterator();
            while (it.hasNext()) {
                ((KeyFrames) it.next()).addFrames(motionController);
            }
        } else {
            Transition transition2 = this.mDefaultTransition;
            if (transition2 != null) {
                Iterator it2 = transition2.mKeyFramesList.iterator();
                while (it2.hasNext()) {
                    ((KeyFrames) it2.next()).addFrames(motionController);
                }
            }
        }
    }

    float getMaxAcceleration() {
        Transition transition = this.mCurrentTransition;
        if (transition == null || transition.mTouchResponse == null) {
            return 0.0f;
        }
        return this.mCurrentTransition.mTouchResponse.getMaxAcceleration();
    }

    float getMaxVelocity() {
        Transition transition = this.mCurrentTransition;
        if (transition == null || transition.mTouchResponse == null) {
            return 0.0f;
        }
        return this.mCurrentTransition.mTouchResponse.getMaxVelocity();
    }

    boolean getMoveWhenScrollAtTop() {
        Transition transition = this.mCurrentTransition;
        if (transition == null || transition.mTouchResponse == null) {
            return false;
        }
        return this.mCurrentTransition.mTouchResponse.getMoveWhenScrollAtTop();
    }

    public float getPathPercent(View view, int i) {
        return 0.0f;
    }

    float getProgressDirection(float f, float f2) {
        Transition transition = this.mCurrentTransition;
        if (transition == null || transition.mTouchResponse == null) {
            return 0.0f;
        }
        return this.mCurrentTransition.mTouchResponse.getProgressDirection(f, f2);
    }

    int getSpringBoundary() {
        Transition transition = this.mCurrentTransition;
        if (transition == null || transition.mTouchResponse == null) {
            return 0;
        }
        return this.mCurrentTransition.mTouchResponse.getSpringBoundary();
    }

    float getSpringDamping() {
        Transition transition = this.mCurrentTransition;
        if (transition == null || transition.mTouchResponse == null) {
            return 0.0f;
        }
        return this.mCurrentTransition.mTouchResponse.getSpringDamping();
    }

    float getSpringMass() {
        Transition transition = this.mCurrentTransition;
        if (transition == null || transition.mTouchResponse == null) {
            return 0.0f;
        }
        return this.mCurrentTransition.mTouchResponse.getSpringMass();
    }

    float getSpringStiffiness() {
        Transition transition = this.mCurrentTransition;
        if (transition == null || transition.mTouchResponse == null) {
            return 0.0f;
        }
        return this.mCurrentTransition.mTouchResponse.getSpringStiffness();
    }

    float getSpringStopThreshold() {
        Transition transition = this.mCurrentTransition;
        if (transition == null || transition.mTouchResponse == null) {
            return 0.0f;
        }
        return this.mCurrentTransition.mTouchResponse.getSpringStopThreshold();
    }

    public float getStaggered() {
        Transition transition = this.mCurrentTransition;
        if (transition != null) {
            return transition.mStagger;
        }
        return 0.0f;
    }

    int getStartId() {
        Transition transition = this.mCurrentTransition;
        if (transition == null) {
            return -1;
        }
        return transition.mConstraintSetStart;
    }

    public Transition getTransitionById(int i) {
        for (Transition transition : this.mTransitionList) {
            if (transition.mId == i) {
                return transition;
            }
        }
        return null;
    }

    int getTransitionDirection(int i) {
        Iterator<Transition> it = this.mTransitionList.iterator();
        while (it.hasNext()) {
            if (it.next().mConstraintSetStart == i) {
                return 0;
            }
        }
        return 1;
    }

    public List<Transition> getTransitionsWithState(int i) {
        int realID = getRealID(i);
        ArrayList arrayList = new ArrayList();
        for (Transition transition : this.mTransitionList) {
            if (transition.mConstraintSetStart == realID || transition.mConstraintSetEnd == realID) {
                arrayList.add(transition);
            }
        }
        return arrayList;
    }

    boolean hasKeyFramePosition(View view, int i) {
        Transition transition = this.mCurrentTransition;
        if (transition == null) {
            return false;
        }
        Iterator it = transition.mKeyFramesList.iterator();
        while (it.hasNext()) {
            Iterator<Key> it2 = ((KeyFrames) it.next()).getKeyFramesForView(view.getId()).iterator();
            while (it2.hasNext()) {
                if (it2.next().mFramePosition == i) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean isViewTransitionEnabled(int i) {
        return this.mViewTransitionController.isViewTransitionEnabled(i);
    }

    public int lookUpConstraintId(String str) {
        Integer num = this.mConstraintSetIdMap.get(str);
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    public String lookUpConstraintName(int i) {
        for (Map.Entry<String, Integer> entry : this.mConstraintSetIdMap.entrySet()) {
            Integer value = entry.getValue();
            if (value != null && value.intValue() == i) {
                return entry.getKey();
            }
        }
        return null;
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
    }

    void processScrollMove(float f, float f2) {
        Transition transition = this.mCurrentTransition;
        if (transition == null || transition.mTouchResponse == null) {
            return;
        }
        this.mCurrentTransition.mTouchResponse.scrollMove(f, f2);
    }

    void processScrollUp(float f, float f2) {
        Transition transition = this.mCurrentTransition;
        if (transition == null || transition.mTouchResponse == null) {
            return;
        }
        this.mCurrentTransition.mTouchResponse.scrollUp(f, f2);
    }

    void processTouchEvent(MotionEvent motionEvent, int i, MotionLayout motionLayout) {
        MotionLayout.MotionTracker motionTracker;
        MotionEvent motionEvent2;
        boolean z = false;
        RectF rectF = new RectF();
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = this.mMotionLayout.obtainVelocityTracker();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        if (i != -1) {
            switch (motionEvent.getAction()) {
                case 0:
                    this.mLastTouchX = motionEvent.getRawX();
                    this.mLastTouchY = motionEvent.getRawY();
                    this.mLastTouchDown = motionEvent;
                    this.mIgnoreTouch = false;
                    if (this.mCurrentTransition.mTouchResponse != null) {
                        RectF limitBoundsTo = this.mCurrentTransition.mTouchResponse.getLimitBoundsTo(this.mMotionLayout, rectF);
                        if (limitBoundsTo != null && !limitBoundsTo.contains(this.mLastTouchDown.getX(), this.mLastTouchDown.getY())) {
                            this.mLastTouchDown = null;
                            this.mIgnoreTouch = true;
                            return;
                        }
                        RectF touchRegion = this.mCurrentTransition.mTouchResponse.getTouchRegion(this.mMotionLayout, rectF);
                        if (touchRegion == null || touchRegion.contains(this.mLastTouchDown.getX(), this.mLastTouchDown.getY())) {
                            this.mMotionOutsideRegion = false;
                        } else {
                            this.mMotionOutsideRegion = true;
                        }
                        this.mCurrentTransition.mTouchResponse.setDown(this.mLastTouchX, this.mLastTouchY);
                        return;
                    }
                    return;
                case 2:
                    if (!this.mIgnoreTouch) {
                        float rawY = motionEvent.getRawY() - this.mLastTouchY;
                        float rawX = motionEvent.getRawX() - this.mLastTouchX;
                        if ((rawX == 0.0d && rawY == 0.0d) || (motionEvent2 = this.mLastTouchDown) == null) {
                            return;
                        }
                        Transition transitionBestTransitionFor = bestTransitionFor(i, rawX, rawY, motionEvent2);
                        if (transitionBestTransitionFor != null) {
                            motionLayout.setTransition(transitionBestTransitionFor);
                            RectF touchRegion2 = this.mCurrentTransition.mTouchResponse.getTouchRegion(this.mMotionLayout, rectF);
                            if (touchRegion2 != null && !touchRegion2.contains(this.mLastTouchDown.getX(), this.mLastTouchDown.getY())) {
                                z = true;
                            }
                            this.mMotionOutsideRegion = z;
                            this.mCurrentTransition.mTouchResponse.setUpTouchEvent(this.mLastTouchX, this.mLastTouchY);
                        }
                    }
                    break;
            }
        }
        if (this.mIgnoreTouch) {
            return;
        }
        Transition transition = this.mCurrentTransition;
        if (transition != null && transition.mTouchResponse != null && !this.mMotionOutsideRegion) {
            this.mCurrentTransition.mTouchResponse.processTouchEvent(motionEvent, this.mVelocityTracker, i, this);
        }
        this.mLastTouchX = motionEvent.getRawX();
        this.mLastTouchY = motionEvent.getRawY();
        if (motionEvent.getAction() != 1 || (motionTracker = this.mVelocityTracker) == null) {
            return;
        }
        motionTracker.recycle();
        this.mVelocityTracker = null;
        if (motionLayout.mCurrentState != -1) {
            autoTransition(motionLayout, motionLayout.mCurrentState);
        }
    }

    void readFallback(MotionLayout motionLayout) {
        for (int i = 0; i < this.mConstraintSetMap.size(); i++) {
            int iKeyAt = this.mConstraintSetMap.keyAt(i);
            if (hasCycleDependency(iKeyAt)) {
                Log.e(MOTIONSCENE_TAG, NPStringFog.decode(new byte[]{113, 82, 92, 11, 11, 68, 18, 81, 87, 69, 0, 85, 64, 90, 68, 0, 0, 16, 84, 65, 93, 8, 68, 73, 93, 70, 64, 22, 1, 92, 84}, "232ed0", 1.1426509E9f));
                return;
            }
            readConstraintChain(iKeyAt, motionLayout);
        }
    }

    public void removeTransition(Transition transition) {
        int index = getIndex(transition);
        if (index != -1) {
            this.mTransitionList.remove(index);
        }
    }

    public void setConstraintSet(int i, ConstraintSet constraintSet) {
        this.mConstraintSetMap.put(i, constraintSet);
    }

    public void setDuration(int i) {
        Transition transition = this.mCurrentTransition;
        if (transition != null) {
            transition.setDuration(i);
        } else {
            this.mDefaultDuration = i;
        }
    }

    public void setKeyframe(View view, int i, String str, Object obj) {
        Transition transition = this.mCurrentTransition;
        if (transition == null) {
            return;
        }
        Iterator it = transition.mKeyFramesList.iterator();
        while (it.hasNext()) {
            Iterator<Key> it2 = ((KeyFrames) it.next()).getKeyFramesForView(view.getId()).iterator();
            while (it2.hasNext()) {
                if (it2.next().mFramePosition == i) {
                    if ((obj != null ? ((Float) obj).floatValue() : 0.0f) == 0.0f) {
                    }
                    str.equalsIgnoreCase(NPStringFog.decode(new byte[]{7, 21, 70, 91, 98, 4, 20, 21, 83, 15, 86, 8, 5, 16, 90, 0, 64, 49, 7, 17, 94, 62, 66, 4, 20, 6, 83, 15, 70}, "fe6a2a", -1.5130694E8f));
                }
            }
        }
    }

    public void setRtl(boolean z) {
        this.mRtl = z;
        Transition transition = this.mCurrentTransition;
        if (transition == null || transition.mTouchResponse == null) {
            return;
        }
        this.mCurrentTransition.mTouchResponse.setRTL(this.mRtl);
    }

    void setTransition(int i, int i2) {
        int iStateGetConstraintID;
        int i3;
        Transition transition;
        StateSet stateSet = this.mStateSet;
        if (stateSet != null) {
            int iStateGetConstraintID2 = stateSet.stateGetConstraintID(i, -1, -1);
            if (iStateGetConstraintID2 == -1) {
                iStateGetConstraintID2 = i;
            }
            iStateGetConstraintID = this.mStateSet.stateGetConstraintID(i2, -1, -1);
            if (iStateGetConstraintID != -1) {
                i3 = iStateGetConstraintID2;
            } else {
                iStateGetConstraintID = i2;
                i3 = iStateGetConstraintID2;
            }
        } else {
            iStateGetConstraintID = i2;
            i3 = i;
        }
        Transition transition2 = this.mCurrentTransition;
        if (transition2 != null && transition2.mConstraintSetEnd == i2 && this.mCurrentTransition.mConstraintSetStart == i) {
            return;
        }
        for (Transition transition3 : this.mTransitionList) {
            if ((transition3.mConstraintSetEnd == iStateGetConstraintID && transition3.mConstraintSetStart == i3) || (transition3.mConstraintSetEnd == i2 && transition3.mConstraintSetStart == i)) {
                this.mCurrentTransition = transition3;
                if (transition3 == null || transition3.mTouchResponse == null) {
                    return;
                }
                this.mCurrentTransition.mTouchResponse.setRTL(this.mRtl);
                return;
            }
        }
        Transition next = this.mDefaultTransition;
        Iterator<Transition> it = this.mAbstractTransitionList.iterator();
        while (true) {
            transition = next;
            if (!it.hasNext()) {
                break;
            }
            next = it.next();
            if (next.mConstraintSetEnd != i2) {
                next = transition;
            }
        }
        Transition transition4 = new Transition(this, transition);
        transition4.mConstraintSetStart = i3;
        transition4.mConstraintSetEnd = iStateGetConstraintID;
        if (i3 != -1) {
            this.mTransitionList.add(transition4);
        }
        this.mCurrentTransition = transition4;
    }

    public void setTransition(Transition transition) {
        this.mCurrentTransition = transition;
        if (transition == null || transition.mTouchResponse == null) {
            return;
        }
        this.mCurrentTransition.mTouchResponse.setRTL(this.mRtl);
    }

    void setupTouch() {
        Transition transition = this.mCurrentTransition;
        if (transition == null || transition.mTouchResponse == null) {
            return;
        }
        this.mCurrentTransition.mTouchResponse.setupTouch();
    }

    boolean supportTouch() {
        Iterator<Transition> it = this.mTransitionList.iterator();
        while (it.hasNext()) {
            if (it.next().mTouchResponse != null) {
                return true;
            }
        }
        Transition transition = this.mCurrentTransition;
        return (transition == null || transition.mTouchResponse == null) ? false : true;
    }

    public boolean validateLayout(MotionLayout motionLayout) {
        return motionLayout == this.mMotionLayout && motionLayout.mScene == this;
    }

    public void viewTransition(int i, View... viewArr) {
        this.mViewTransitionController.viewTransition(i, viewArr);
    }
}
