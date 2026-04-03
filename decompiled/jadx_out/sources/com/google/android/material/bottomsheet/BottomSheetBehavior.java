package com.google.android.material.bottomsheet;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.graphics.Insets;
import androidx.core.math.MathUtils;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.customview.view.AbsSavedState;
import androidx.customview.widget.ViewDragHelper;
import com.google.android.material.R;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import n.NPStringFog;

/* JADX INFO: loaded from: classes37.dex */
public class BottomSheetBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {
    private static final int CORNER_ANIMATION_DURATION = 500;
    private static final float HIDE_FRICTION = 0.1f;
    private static final float HIDE_THRESHOLD = 0.5f;
    private static final int NO_MAX_SIZE = -1;
    public static final int PEEK_HEIGHT_AUTO = -1;
    public static final int SAVE_ALL = -1;
    public static final int SAVE_FIT_TO_CONTENTS = 2;
    public static final int SAVE_HIDEABLE = 4;
    public static final int SAVE_NONE = 0;
    public static final int SAVE_PEEK_HEIGHT = 1;
    public static final int SAVE_SKIP_COLLAPSED = 8;
    private static final int SIGNIFICANT_VEL_THRESHOLD = 500;
    public static final int STATE_COLLAPSED = 4;
    public static final int STATE_DRAGGING = 1;
    public static final int STATE_EXPANDED = 3;
    public static final int STATE_HALF_EXPANDED = 6;
    public static final int STATE_HIDDEN = 5;
    public static final int STATE_SETTLING = 2;
    int activePointerId;
    private ColorStateList backgroundTint;
    private final ArrayList<BottomSheetCallback> callbacks;
    private int childHeight;
    int collapsedOffset;
    private final ViewDragHelper.Callback dragCallback;
    private boolean draggable;
    float elevation;
    private int expandHalfwayActionId;
    int expandedOffset;
    private boolean fitToContents;
    int fitToContentsOffset;
    private int gestureInsetBottom;
    private boolean gestureInsetBottomIgnored;
    int halfExpandedOffset;
    float halfExpandedRatio;
    boolean hideable;
    private boolean ignoreEvents;
    private Map<View, Integer> importantForAccessibilityMap;
    private int initialY;
    private int insetBottom;
    private int insetTop;
    private ValueAnimator interpolatorAnimator;
    private boolean isShapeExpanded;
    private int lastNestedScrollDy;
    int lastStableState;
    private boolean marginLeftSystemWindowInsets;
    private boolean marginRightSystemWindowInsets;
    private boolean marginTopSystemWindowInsets;
    private MaterialShapeDrawable materialShapeDrawable;
    private int maxHeight;
    private int maxWidth;
    private float maximumVelocity;
    private boolean nestedScrolled;
    WeakReference<View> nestedScrollingChildRef;
    private boolean paddingBottomSystemWindowInsets;
    private boolean paddingLeftSystemWindowInsets;
    private boolean paddingRightSystemWindowInsets;
    private boolean paddingTopSystemWindowInsets;
    int parentHeight;
    int parentWidth;
    private int peekHeight;
    private boolean peekHeightAuto;
    private int peekHeightGestureInsetBuffer;
    private int peekHeightMin;
    private int saveFlags;
    private ShapeAppearanceModel shapeAppearanceModelDefault;
    private boolean skipCollapsed;
    int state;
    private final BottomSheetBehavior<V>.StateSettlingTracker stateSettlingTracker;
    boolean touchingScrollingChild;
    private boolean updateImportantForAccessibilityOnSiblings;
    private VelocityTracker velocityTracker;
    ViewDragHelper viewDragHelper;
    WeakReference<V> viewRef;
    private static final String TAG = NPStringFog.decode(new byte[]{117, 94, 23, 76, 87, 11, 100, 89, 6, 93, 76, 36, 82, 89, 2, 78, 81, 9, 69}, "71c88f", -5.0687564E7f);
    private static final int DEF_STYLE_RES = R.style.Widget_Design_BottomSheet_Modal;

    public static abstract class BottomSheetCallback {
        void onLayout(View view) {
        }

        public abstract void onSlide(View view, float f);

        public abstract void onStateChanged(View view, int i);
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface SaveFlags {
    }

    protected static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.SavedState.1
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, (ClassLoader) null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.ClassLoaderCreator
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        boolean fitToContents;
        boolean hideable;
        int peekHeight;
        boolean skipCollapsed;
        final int state;

        public SavedState(Parcel parcel) {
            this(parcel, (ClassLoader) null);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.state = parcel.readInt();
            this.peekHeight = parcel.readInt();
            this.fitToContents = parcel.readInt() == 1;
            this.hideable = parcel.readInt() == 1;
            this.skipCollapsed = parcel.readInt() == 1;
        }

        @Deprecated
        public SavedState(Parcelable parcelable, int i) {
            super(parcelable);
            this.state = i;
        }

        public SavedState(Parcelable parcelable, BottomSheetBehavior<?> bottomSheetBehavior) {
            super(parcelable);
            this.state = bottomSheetBehavior.state;
            this.peekHeight = ((BottomSheetBehavior) bottomSheetBehavior).peekHeight;
            this.fitToContents = ((BottomSheetBehavior) bottomSheetBehavior).fitToContents;
            this.hideable = bottomSheetBehavior.hideable;
            this.skipCollapsed = ((BottomSheetBehavior) bottomSheetBehavior).skipCollapsed;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.state);
            parcel.writeInt(this.peekHeight);
            parcel.writeInt(this.fitToContents ? 1 : 0);
            parcel.writeInt(this.hideable ? 1 : 0);
            parcel.writeInt(this.skipCollapsed ? 1 : 0);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface StableState {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface State {
    }

    private class StateSettlingTracker {
        private final Runnable continueSettlingRunnable;
        private boolean isContinueSettlingRunnablePosted;
        private int targetState;
        final BottomSheetBehavior this$0;

        private StateSettlingTracker(BottomSheetBehavior bottomSheetBehavior) {
            this.this$0 = bottomSheetBehavior;
            this.continueSettlingRunnable = new Runnable(this) { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.StateSettlingTracker.1
                final StateSettlingTracker this$1;

                {
                    this.this$1 = this;
                }

                @Override // java.lang.Runnable
                public void run() {
                    this.this$1.isContinueSettlingRunnablePosted = false;
                    if (this.this$1.this$0.viewDragHelper != null && this.this$1.this$0.viewDragHelper.continueSettling(true)) {
                        StateSettlingTracker stateSettlingTracker = this.this$1;
                        stateSettlingTracker.continueSettlingToState(stateSettlingTracker.targetState);
                    } else if (this.this$1.this$0.state == 2) {
                        this.this$1.this$0.setStateInternal(this.this$1.targetState);
                    }
                }
            };
        }

        void continueSettlingToState(int i) {
            if (this.this$0.viewRef == null || this.this$0.viewRef.get() == null) {
                return;
            }
            this.targetState = i;
            if (this.isContinueSettlingRunnablePosted) {
                return;
            }
            ViewCompat.postOnAnimation(this.this$0.viewRef.get(), this.continueSettlingRunnable);
            this.isContinueSettlingRunnablePosted = true;
        }
    }

    public BottomSheetBehavior() {
        this.saveFlags = 0;
        this.fitToContents = true;
        this.updateImportantForAccessibilityOnSiblings = false;
        this.maxWidth = -1;
        this.maxHeight = -1;
        this.stateSettlingTracker = new StateSettlingTracker();
        this.halfExpandedRatio = 0.5f;
        this.elevation = -1.0f;
        this.draggable = true;
        this.state = 4;
        this.lastStableState = 4;
        this.callbacks = new ArrayList<>();
        this.expandHalfwayActionId = -1;
        this.dragCallback = new ViewDragHelper.Callback(this) { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.4
            final BottomSheetBehavior this$0;
            private long viewCapturedMillis;

            {
                this.this$0 = this;
            }

            private boolean releasedLow(View view) {
                return view.getTop() > (this.this$0.parentHeight + this.this$0.getExpandedOffset()) / 2;
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public int clampViewPositionHorizontal(View view, int i, int i2) {
                return view.getLeft();
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public int clampViewPositionVertical(View view, int i, int i2) {
                return MathUtils.clamp(i, this.this$0.getExpandedOffset(), this.this$0.hideable ? this.this$0.parentHeight : this.this$0.collapsedOffset);
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public int getViewVerticalDragRange(View view) {
                return this.this$0.hideable ? this.this$0.parentHeight : this.this$0.collapsedOffset;
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public void onViewDragStateChanged(int i) {
                if (i == 1 && this.this$0.draggable) {
                    this.this$0.setStateInternal(1);
                }
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public void onViewPositionChanged(View view, int i, int i2, int i3, int i4) {
                this.this$0.dispatchOnSlide(i2);
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public void onViewReleased(View view, float f, float f2) {
                int i = 3;
                int i2 = 4;
                if (f2 < 0.0f) {
                    if (this.this$0.fitToContents) {
                        i2 = 3;
                    } else {
                        int top = view.getTop();
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        long j = this.viewCapturedMillis;
                        if (this.this$0.shouldSkipHalfExpandedStateWhenDragging()) {
                            if (!this.this$0.shouldExpandOnUpwardDrag(jCurrentTimeMillis - j, (top * 100.0f) / this.this$0.parentHeight)) {
                                i = 4;
                            }
                        } else if (top > this.this$0.halfExpandedOffset) {
                            i = 6;
                        }
                        i2 = i;
                    }
                } else if (this.this$0.hideable && this.this$0.shouldHide(view, f2)) {
                    i2 = ((Math.abs(f) >= Math.abs(f2) || f2 <= 500.0f) && !releasedLow(view)) ? (!this.this$0.fitToContents && Math.abs(view.getTop() - this.this$0.getExpandedOffset()) >= Math.abs(view.getTop() - this.this$0.halfExpandedOffset)) ? 6 : 3 : 5;
                } else if (f2 == 0.0f || Math.abs(f) > Math.abs(f2)) {
                    int top2 = view.getTop();
                    if (this.this$0.fitToContents) {
                        if (Math.abs(top2 - this.this$0.fitToContentsOffset) < Math.abs(top2 - this.this$0.collapsedOffset)) {
                            i2 = 3;
                        }
                    } else if (top2 < this.this$0.halfExpandedOffset) {
                        if (top2 < Math.abs(top2 - this.this$0.collapsedOffset)) {
                            i2 = 3;
                        } else if (!this.this$0.shouldSkipHalfExpandedStateWhenDragging()) {
                            i2 = 6;
                        }
                    } else if (Math.abs(top2 - this.this$0.halfExpandedOffset) < Math.abs(top2 - this.this$0.collapsedOffset) && !this.this$0.shouldSkipHalfExpandedStateWhenDragging()) {
                        i2 = 6;
                    }
                } else if (!this.this$0.fitToContents) {
                    int top3 = view.getTop();
                    if (Math.abs(top3 - this.this$0.halfExpandedOffset) < Math.abs(top3 - this.this$0.collapsedOffset) && !this.this$0.shouldSkipHalfExpandedStateWhenDragging()) {
                        i2 = 6;
                    }
                }
                BottomSheetBehavior bottomSheetBehavior = this.this$0;
                bottomSheetBehavior.startSettling(view, i2, bottomSheetBehavior.shouldSkipSmoothAnimation());
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public boolean tryCaptureView(View view, int i) {
                if (this.this$0.state == 1 || this.this$0.touchingScrollingChild) {
                    return false;
                }
                if (this.this$0.state == 3 && this.this$0.activePointerId == i) {
                    View view2 = this.this$0.nestedScrollingChildRef != null ? this.this$0.nestedScrollingChildRef.get() : null;
                    if (view2 != null && view2.canScrollVertically(-1)) {
                        return false;
                    }
                }
                this.viewCapturedMillis = System.currentTimeMillis();
                return this.this$0.viewRef != null && this.this$0.viewRef.get() == view;
            }
        };
    }

    public BottomSheetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.saveFlags = 0;
        this.fitToContents = true;
        this.updateImportantForAccessibilityOnSiblings = false;
        this.maxWidth = -1;
        this.maxHeight = -1;
        this.stateSettlingTracker = new StateSettlingTracker();
        this.halfExpandedRatio = 0.5f;
        this.elevation = -1.0f;
        this.draggable = true;
        this.state = 4;
        this.lastStableState = 4;
        this.callbacks = new ArrayList<>();
        this.expandHalfwayActionId = -1;
        this.dragCallback = new ViewDragHelper.Callback(this) { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.4
            final BottomSheetBehavior this$0;
            private long viewCapturedMillis;

            {
                this.this$0 = this;
            }

            private boolean releasedLow(View view) {
                return view.getTop() > (this.this$0.parentHeight + this.this$0.getExpandedOffset()) / 2;
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public int clampViewPositionHorizontal(View view, int i, int i2) {
                return view.getLeft();
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public int clampViewPositionVertical(View view, int i, int i2) {
                return MathUtils.clamp(i, this.this$0.getExpandedOffset(), this.this$0.hideable ? this.this$0.parentHeight : this.this$0.collapsedOffset);
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public int getViewVerticalDragRange(View view) {
                return this.this$0.hideable ? this.this$0.parentHeight : this.this$0.collapsedOffset;
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public void onViewDragStateChanged(int i) {
                if (i == 1 && this.this$0.draggable) {
                    this.this$0.setStateInternal(1);
                }
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public void onViewPositionChanged(View view, int i, int i2, int i3, int i4) {
                this.this$0.dispatchOnSlide(i2);
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public void onViewReleased(View view, float f, float f2) {
                int i = 3;
                int i2 = 4;
                if (f2 < 0.0f) {
                    if (this.this$0.fitToContents) {
                        i2 = 3;
                    } else {
                        int top = view.getTop();
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        long j = this.viewCapturedMillis;
                        if (this.this$0.shouldSkipHalfExpandedStateWhenDragging()) {
                            if (!this.this$0.shouldExpandOnUpwardDrag(jCurrentTimeMillis - j, (top * 100.0f) / this.this$0.parentHeight)) {
                                i = 4;
                            }
                        } else if (top > this.this$0.halfExpandedOffset) {
                            i = 6;
                        }
                        i2 = i;
                    }
                } else if (this.this$0.hideable && this.this$0.shouldHide(view, f2)) {
                    i2 = ((Math.abs(f) >= Math.abs(f2) || f2 <= 500.0f) && !releasedLow(view)) ? (!this.this$0.fitToContents && Math.abs(view.getTop() - this.this$0.getExpandedOffset()) >= Math.abs(view.getTop() - this.this$0.halfExpandedOffset)) ? 6 : 3 : 5;
                } else if (f2 == 0.0f || Math.abs(f) > Math.abs(f2)) {
                    int top2 = view.getTop();
                    if (this.this$0.fitToContents) {
                        if (Math.abs(top2 - this.this$0.fitToContentsOffset) < Math.abs(top2 - this.this$0.collapsedOffset)) {
                            i2 = 3;
                        }
                    } else if (top2 < this.this$0.halfExpandedOffset) {
                        if (top2 < Math.abs(top2 - this.this$0.collapsedOffset)) {
                            i2 = 3;
                        } else if (!this.this$0.shouldSkipHalfExpandedStateWhenDragging()) {
                            i2 = 6;
                        }
                    } else if (Math.abs(top2 - this.this$0.halfExpandedOffset) < Math.abs(top2 - this.this$0.collapsedOffset) && !this.this$0.shouldSkipHalfExpandedStateWhenDragging()) {
                        i2 = 6;
                    }
                } else if (!this.this$0.fitToContents) {
                    int top3 = view.getTop();
                    if (Math.abs(top3 - this.this$0.halfExpandedOffset) < Math.abs(top3 - this.this$0.collapsedOffset) && !this.this$0.shouldSkipHalfExpandedStateWhenDragging()) {
                        i2 = 6;
                    }
                }
                BottomSheetBehavior bottomSheetBehavior = this.this$0;
                bottomSheetBehavior.startSettling(view, i2, bottomSheetBehavior.shouldSkipSmoothAnimation());
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public boolean tryCaptureView(View view, int i) {
                if (this.this$0.state == 1 || this.this$0.touchingScrollingChild) {
                    return false;
                }
                if (this.this$0.state == 3 && this.this$0.activePointerId == i) {
                    View view2 = this.this$0.nestedScrollingChildRef != null ? this.this$0.nestedScrollingChildRef.get() : null;
                    if (view2 != null && view2.canScrollVertically(-1)) {
                        return false;
                    }
                }
                this.viewCapturedMillis = System.currentTimeMillis();
                return this.this$0.viewRef != null && this.this$0.viewRef.get() == view;
            }
        };
        this.peekHeightGestureInsetBuffer = context.getResources().getDimensionPixelSize(R.dimen.mtrl_min_touch_target_size);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.BottomSheetBehavior_Layout);
        if (typedArrayObtainStyledAttributes.hasValue(R.styleable.BottomSheetBehavior_Layout_backgroundTint)) {
            this.backgroundTint = MaterialResources.getColorStateList(context, typedArrayObtainStyledAttributes, R.styleable.BottomSheetBehavior_Layout_backgroundTint);
        }
        if (typedArrayObtainStyledAttributes.hasValue(R.styleable.BottomSheetBehavior_Layout_shapeAppearance)) {
            this.shapeAppearanceModelDefault = ShapeAppearanceModel.builder(context, attributeSet, R.attr.bottomSheetStyle, DEF_STYLE_RES).build();
        }
        createMaterialShapeDrawableIfNeeded(context);
        createShapeValueAnimator();
        if (Build.VERSION.SDK_INT >= 21) {
            this.elevation = typedArrayObtainStyledAttributes.getDimension(R.styleable.BottomSheetBehavior_Layout_android_elevation, -1.0f);
        }
        if (typedArrayObtainStyledAttributes.hasValue(R.styleable.BottomSheetBehavior_Layout_android_maxWidth)) {
            setMaxWidth(typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.BottomSheetBehavior_Layout_android_maxWidth, -1));
        }
        if (typedArrayObtainStyledAttributes.hasValue(R.styleable.BottomSheetBehavior_Layout_android_maxHeight)) {
            setMaxHeight(typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.BottomSheetBehavior_Layout_android_maxHeight, -1));
        }
        TypedValue typedValuePeekValue = typedArrayObtainStyledAttributes.peekValue(R.styleable.BottomSheetBehavior_Layout_behavior_peekHeight);
        if (typedValuePeekValue == null || typedValuePeekValue.data != -1) {
            setPeekHeight(typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.BottomSheetBehavior_Layout_behavior_peekHeight, -1));
        } else {
            setPeekHeight(typedValuePeekValue.data);
        }
        setHideable(typedArrayObtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_behavior_hideable, false));
        setGestureInsetBottomIgnored(typedArrayObtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_gestureInsetBottomIgnored, false));
        setFitToContents(typedArrayObtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_behavior_fitToContents, true));
        setSkipCollapsed(typedArrayObtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_behavior_skipCollapsed, false));
        setDraggable(typedArrayObtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_behavior_draggable, true));
        setSaveFlags(typedArrayObtainStyledAttributes.getInt(R.styleable.BottomSheetBehavior_Layout_behavior_saveFlags, 0));
        setHalfExpandedRatio(typedArrayObtainStyledAttributes.getFloat(R.styleable.BottomSheetBehavior_Layout_behavior_halfExpandedRatio, 0.5f));
        TypedValue typedValuePeekValue2 = typedArrayObtainStyledAttributes.peekValue(R.styleable.BottomSheetBehavior_Layout_behavior_expandedOffset);
        if (typedValuePeekValue2 == null || typedValuePeekValue2.type != 16) {
            setExpandedOffset(typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.BottomSheetBehavior_Layout_behavior_expandedOffset, 0));
        } else {
            setExpandedOffset(typedValuePeekValue2.data);
        }
        this.paddingBottomSystemWindowInsets = typedArrayObtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_paddingBottomSystemWindowInsets, false);
        this.paddingLeftSystemWindowInsets = typedArrayObtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_paddingLeftSystemWindowInsets, false);
        this.paddingRightSystemWindowInsets = typedArrayObtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_paddingRightSystemWindowInsets, false);
        this.paddingTopSystemWindowInsets = typedArrayObtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_paddingTopSystemWindowInsets, true);
        this.marginLeftSystemWindowInsets = typedArrayObtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_marginLeftSystemWindowInsets, false);
        this.marginRightSystemWindowInsets = typedArrayObtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_marginRightSystemWindowInsets, false);
        this.marginTopSystemWindowInsets = typedArrayObtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_marginTopSystemWindowInsets, false);
        typedArrayObtainStyledAttributes.recycle();
        this.maximumVelocity = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
    }

    private int addAccessibilityActionForState(V v, int i, int i2) {
        return ViewCompat.addAccessibilityAction(v, v.getResources().getString(i), createAccessibilityViewCommandForState(i2));
    }

    private void calculateCollapsedOffset() {
        int iCalculatePeekHeight = calculatePeekHeight();
        if (this.fitToContents) {
            this.collapsedOffset = Math.max(this.parentHeight - iCalculatePeekHeight, this.fitToContentsOffset);
        } else {
            this.collapsedOffset = this.parentHeight - iCalculatePeekHeight;
        }
    }

    private void calculateHalfExpandedOffset() {
        this.halfExpandedOffset = (int) (this.parentHeight * (1.0f - this.halfExpandedRatio));
    }

    private int calculatePeekHeight() {
        int i;
        return this.peekHeightAuto ? Math.min(Math.max(this.peekHeightMin, this.parentHeight - ((this.parentWidth * 9) / 16)), this.childHeight) + this.insetBottom : (this.gestureInsetBottomIgnored || this.paddingBottomSystemWindowInsets || (i = this.gestureInsetBottom) <= 0) ? this.peekHeight + this.insetBottom : Math.max(this.peekHeight, i + this.peekHeightGestureInsetBuffer);
    }

    private AccessibilityViewCommand createAccessibilityViewCommandForState(int i) {
        return new AccessibilityViewCommand(this, i) { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.5
            final BottomSheetBehavior this$0;
            final int val$state;

            {
                this.this$0 = this;
                this.val$state = i;
            }

            @Override // androidx.core.view.accessibility.AccessibilityViewCommand
            public boolean perform(View view, AccessibilityViewCommand.CommandArguments commandArguments) {
                this.this$0.setState(this.val$state);
                return true;
            }
        };
    }

    private void createMaterialShapeDrawableIfNeeded(Context context) {
        if (this.shapeAppearanceModelDefault == null) {
            return;
        }
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(this.shapeAppearanceModelDefault);
        this.materialShapeDrawable = materialShapeDrawable;
        materialShapeDrawable.initializeElevationOverlay(context);
        ColorStateList colorStateList = this.backgroundTint;
        if (colorStateList != null) {
            this.materialShapeDrawable.setFillColor(colorStateList);
            return;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(android.R.attr.colorBackground, typedValue, true);
        this.materialShapeDrawable.setTint(typedValue.data);
    }

    private void createShapeValueAnimator() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.interpolatorAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(500L);
        this.interpolatorAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(this) { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.2
            final BottomSheetBehavior this$0;

            {
                this.this$0 = this;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                if (this.this$0.materialShapeDrawable != null) {
                    this.this$0.materialShapeDrawable.setInterpolation(fFloatValue);
                }
            }
        });
    }

    public static <V extends View> BottomSheetBehavior<V> from(V v) {
        ViewGroup.LayoutParams layoutParams = v.getLayoutParams();
        if (!(layoutParams instanceof CoordinatorLayout.LayoutParams)) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{53, 9, 0, 65, 68, 12, 4, 22, 69, 8, 65, 69, 15, 14, 17, 65, 83, 69, 2, 9, 12, 13, 86, 69, 14, 7, 69, 34, 93, 10, 19, 5, 12, 15, 83, 17, 14, 19, 41, 0, 75, 10, 20, 21}, "aaea2e", 8.16112459E8d));
        }
        CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) layoutParams).getBehavior();
        if (behavior instanceof BottomSheetBehavior) {
            return (BottomSheetBehavior) behavior;
        }
        throw new IllegalArgumentException(NPStringFog.decode(new byte[]{98, 10, 92, 23, 65, 13, 83, 21, 25, 94, 68, 68, 88, 13, 77, 23, 86, 23, 69, 13, 90, 94, 86, 16, 83, 6, 25, 64, 94, 16, 94, 66, 123, 88, 67, 16, 89, 15, 106, 95, 82, 1, 66, 32, 92, 95, 86, 18, 95, 13, 75}, "6b977d", 1.8996629E8f));
    }

    private int getChildMeasureSpec(int i, int i2, int i3, int i4) {
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i, i2, i4);
        if (i3 == -1) {
            return childMeasureSpec;
        }
        int mode = View.MeasureSpec.getMode(childMeasureSpec);
        int size = View.MeasureSpec.getSize(childMeasureSpec);
        switch (mode) {
            case BasicMeasure.EXACTLY /* 1073741824 */:
                return View.MeasureSpec.makeMeasureSpec(Math.min(size, i3), BasicMeasure.EXACTLY);
            default:
                if (size != 0) {
                    i3 = Math.min(size, i3);
                }
                return View.MeasureSpec.makeMeasureSpec(i3, Integer.MIN_VALUE);
        }
    }

    private int getTopOffsetForState(int i) {
        switch (i) {
            case 3:
                return getExpandedOffset();
            case 4:
                return this.collapsedOffset;
            case 5:
                return this.parentHeight;
            case 6:
                return this.halfExpandedOffset;
            default:
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{126, 87, 71, 86, 90, 94, 83, 25, 66, 67, 87, 67, 82, 25, 69, 88, 22, 80, 82, 77, 17, 67, 89, 71, 23, 86, 87, 81, 69, 82, 67, 3, 17}, "791767", -1.48783494E8d) + i);
        }
    }

    private float getYVelocity() {
        VelocityTracker velocityTracker = this.velocityTracker;
        if (velocityTracker == null) {
            return 0.0f;
        }
        velocityTracker.computeCurrentVelocity(1000, this.maximumVelocity);
        return this.velocityTracker.getYVelocity(this.activePointerId);
    }

    private boolean isLayouting(V v) {
        ViewParent parent = v.getParent();
        return parent != null && parent.isLayoutRequested() && ViewCompat.isAttachedToWindow(v);
    }

    private void replaceAccessibilityActionForState(V v, AccessibilityNodeInfoCompat.AccessibilityActionCompat accessibilityActionCompat, int i) {
        ViewCompat.replaceAccessibilityAction(v, accessibilityActionCompat, null, createAccessibilityViewCommandForState(i));
    }

    private void reset() {
        this.activePointerId = -1;
        VelocityTracker velocityTracker = this.velocityTracker;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.velocityTracker = null;
        }
    }

    private void restoreOptionalState(SavedState savedState) {
        int i = this.saveFlags;
        if (i == 0) {
            return;
        }
        if (i == -1 || (i & 1) == 1) {
            this.peekHeight = savedState.peekHeight;
        }
        int i2 = this.saveFlags;
        if (i2 == -1 || (i2 & 2) == 2) {
            this.fitToContents = savedState.fitToContents;
        }
        int i3 = this.saveFlags;
        if (i3 == -1 || (i3 & 4) == 4) {
            this.hideable = savedState.hideable;
        }
        int i4 = this.saveFlags;
        if (i4 == -1 || (i4 & 8) == 8) {
            this.skipCollapsed = savedState.skipCollapsed;
        }
    }

    private void runAfterLayout(V v, Runnable runnable) {
        if (isLayouting(v)) {
            v.post(runnable);
        } else {
            runnable.run();
        }
    }

    private void setWindowInsetsListener(View view) {
        boolean z = (Build.VERSION.SDK_INT < 29 || isGestureInsetBottomIgnored() || this.peekHeightAuto) ? false : true;
        if (this.paddingBottomSystemWindowInsets || this.paddingLeftSystemWindowInsets || this.paddingRightSystemWindowInsets || this.marginLeftSystemWindowInsets || this.marginRightSystemWindowInsets || this.marginTopSystemWindowInsets || z) {
            ViewUtils.doOnApplyWindowInsets(view, new ViewUtils.OnApplyWindowInsetsListener(this, z) { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.3
                final BottomSheetBehavior this$0;
                final boolean val$shouldHandleGestureInsets;

                {
                    this.this$0 = this;
                    this.val$shouldHandleGestureInsets = z;
                }

                @Override // com.google.android.material.internal.ViewUtils.OnApplyWindowInsetsListener
                public WindowInsetsCompat onApplyWindowInsets(View view2, WindowInsetsCompat windowInsetsCompat, ViewUtils.RelativePadding relativePadding) {
                    int i;
                    boolean z2;
                    Insets insets = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.systemBars());
                    Insets insets2 = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.mandatorySystemGestures());
                    this.this$0.insetTop = insets.top;
                    boolean zIsLayoutRtl = ViewUtils.isLayoutRtl(view2);
                    int paddingBottom = view2.getPaddingBottom();
                    int paddingLeft = view2.getPaddingLeft();
                    int paddingRight = view2.getPaddingRight();
                    if (this.this$0.paddingBottomSystemWindowInsets) {
                        this.this$0.insetBottom = windowInsetsCompat.getSystemWindowInsetBottom();
                        i = relativePadding.bottom + this.this$0.insetBottom;
                    } else {
                        i = paddingBottom;
                    }
                    if (this.this$0.paddingLeftSystemWindowInsets) {
                        paddingLeft = (zIsLayoutRtl ? relativePadding.end : relativePadding.start) + insets.left;
                    }
                    if (this.this$0.paddingRightSystemWindowInsets) {
                        paddingRight = (zIsLayoutRtl ? relativePadding.start : relativePadding.end) + insets.right;
                    }
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view2.getLayoutParams();
                    if (!this.this$0.marginLeftSystemWindowInsets || marginLayoutParams.leftMargin == insets.left) {
                        z2 = false;
                    } else {
                        marginLayoutParams.leftMargin = insets.left;
                        z2 = true;
                    }
                    if (this.this$0.marginRightSystemWindowInsets && marginLayoutParams.rightMargin != insets.right) {
                        marginLayoutParams.rightMargin = insets.right;
                        z2 = true;
                    }
                    if (this.this$0.marginTopSystemWindowInsets && marginLayoutParams.topMargin != insets.top) {
                        marginLayoutParams.topMargin = insets.top;
                        z2 = true;
                    }
                    if (z2) {
                        view2.setLayoutParams(marginLayoutParams);
                    }
                    view2.setPadding(paddingLeft, view2.getPaddingTop(), paddingRight, i);
                    if (this.val$shouldHandleGestureInsets) {
                        this.this$0.gestureInsetBottom = insets2.bottom;
                    }
                    if (this.this$0.paddingBottomSystemWindowInsets || this.val$shouldHandleGestureInsets) {
                        this.this$0.updatePeekHeight(false);
                    }
                    return windowInsetsCompat;
                }
            });
        }
    }

    private boolean shouldHandleDraggingWithHelper() {
        return this.viewDragHelper != null && (this.draggable || this.state == 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startSettling(View view, int i, boolean z) {
        int topOffsetForState = getTopOffsetForState(i);
        ViewDragHelper viewDragHelper = this.viewDragHelper;
        if (!(viewDragHelper != null && (!z ? !viewDragHelper.smoothSlideViewTo(view, view.getLeft(), topOffsetForState) : !viewDragHelper.settleCapturedViewAt(view.getLeft(), topOffsetForState)))) {
            setStateInternal(i);
            return;
        }
        setStateInternal(2);
        updateDrawableForTargetState(i);
        this.stateSettlingTracker.continueSettlingToState(i);
    }

    private void updateAccessibilityActions() {
        V v;
        WeakReference<V> weakReference = this.viewRef;
        if (weakReference == null || (v = weakReference.get()) == null) {
            return;
        }
        ViewCompat.removeAccessibilityAction(v, 524288);
        ViewCompat.removeAccessibilityAction(v, 262144);
        ViewCompat.removeAccessibilityAction(v, 1048576);
        int i = this.expandHalfwayActionId;
        if (i != -1) {
            ViewCompat.removeAccessibilityAction(v, i);
        }
        if (!this.fitToContents && this.state != 6) {
            this.expandHalfwayActionId = addAccessibilityActionForState(v, R.string.bottomsheet_action_expand_halfway, 6);
        }
        if (this.hideable && this.state != 5) {
            replaceAccessibilityActionForState(v, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_DISMISS, 5);
        }
        switch (this.state) {
            case 3:
                replaceAccessibilityActionForState(v, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_COLLAPSE, this.fitToContents ? 4 : 6);
                break;
            case 4:
                replaceAccessibilityActionForState(v, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_EXPAND, this.fitToContents ? 3 : 6);
                break;
            case 6:
                replaceAccessibilityActionForState(v, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_COLLAPSE, 4);
                replaceAccessibilityActionForState(v, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_EXPAND, 3);
                break;
        }
    }

    private void updateDrawableForTargetState(int i) {
        ValueAnimator valueAnimator;
        if (i == 2) {
            return;
        }
        boolean z = i == 3;
        if (this.isShapeExpanded != z) {
            this.isShapeExpanded = z;
            if (this.materialShapeDrawable == null || (valueAnimator = this.interpolatorAnimator) == null) {
                return;
            }
            if (valueAnimator.isRunning()) {
                this.interpolatorAnimator.reverse();
                return;
            }
            float f = z ? 0.0f : 1.0f;
            this.interpolatorAnimator.setFloatValues(1.0f - f, f);
            this.interpolatorAnimator.start();
        }
    }

    private void updateImportantForAccessibility(boolean z) {
        Map<View, Integer> map;
        WeakReference<V> weakReference = this.viewRef;
        if (weakReference == null) {
            return;
        }
        ViewParent parent = weakReference.get().getParent();
        if (parent instanceof CoordinatorLayout) {
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
            int childCount = coordinatorLayout.getChildCount();
            if (Build.VERSION.SDK_INT >= 16 && z) {
                if (this.importantForAccessibilityMap != null) {
                    return;
                } else {
                    this.importantForAccessibilityMap = new HashMap(childCount);
                }
            }
            for (int i = 0; i < childCount; i++) {
                View childAt = coordinatorLayout.getChildAt(i);
                if (childAt != this.viewRef.get()) {
                    if (z) {
                        if (Build.VERSION.SDK_INT >= 16) {
                            this.importantForAccessibilityMap.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                        }
                        if (this.updateImportantForAccessibilityOnSiblings) {
                            ViewCompat.setImportantForAccessibility(childAt, 4);
                        }
                    } else if (this.updateImportantForAccessibilityOnSiblings && (map = this.importantForAccessibilityMap) != null && map.containsKey(childAt)) {
                        ViewCompat.setImportantForAccessibility(childAt, this.importantForAccessibilityMap.get(childAt).intValue());
                    }
                }
            }
            if (!z) {
                this.importantForAccessibilityMap = null;
            } else if (this.updateImportantForAccessibilityOnSiblings) {
                this.viewRef.get().sendAccessibilityEvent(8);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePeekHeight(boolean z) {
        V v;
        if (this.viewRef != null) {
            calculateCollapsedOffset();
            if (this.state != 4 || (v = this.viewRef.get()) == null) {
                return;
            }
            if (z) {
                setState(4);
            } else {
                v.requestLayout();
            }
        }
    }

    public void addBottomSheetCallback(BottomSheetCallback bottomSheetCallback) {
        if (this.callbacks.contains(bottomSheetCallback)) {
            return;
        }
        this.callbacks.add(bottomSheetCallback);
    }

    public void disableShapeAnimations() {
        this.interpolatorAnimator = null;
    }

    void dispatchOnSlide(int i) {
        float expandedOffset;
        V v = this.viewRef.get();
        if (v == null || this.callbacks.isEmpty()) {
            return;
        }
        int i2 = this.collapsedOffset;
        if (i > i2 || i2 == getExpandedOffset()) {
            int i3 = this.collapsedOffset;
            expandedOffset = (i3 - i) / (this.parentHeight - i3);
        } else {
            int i4 = this.collapsedOffset;
            expandedOffset = (i4 - i) / (i4 - getExpandedOffset());
        }
        int i5 = 0;
        while (true) {
            int i6 = i5;
            if (i6 >= this.callbacks.size()) {
                return;
            }
            this.callbacks.get(i6).onSlide(v, expandedOffset);
            i5 = i6 + 1;
        }
    }

    View findScrollingChild(View view) {
        if (ViewCompat.isNestedScrollingEnabled(view)) {
            return view;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View viewFindScrollingChild = findScrollingChild(viewGroup.getChildAt(i));
                if (viewFindScrollingChild != null) {
                    return viewFindScrollingChild;
                }
            }
        }
        return null;
    }

    public int getExpandedOffset() {
        if (this.fitToContents) {
            return this.fitToContentsOffset;
        }
        return Math.max(this.expandedOffset, this.paddingTopSystemWindowInsets ? 0 : this.insetTop);
    }

    public float getHalfExpandedRatio() {
        return this.halfExpandedRatio;
    }

    public int getLastStableState() {
        return this.lastStableState;
    }

    MaterialShapeDrawable getMaterialShapeDrawable() {
        return this.materialShapeDrawable;
    }

    public int getMaxHeight() {
        return this.maxHeight;
    }

    public int getMaxWidth() {
        return this.maxWidth;
    }

    public int getPeekHeight() {
        if (this.peekHeightAuto) {
            return -1;
        }
        return this.peekHeight;
    }

    int getPeekHeightMin() {
        return this.peekHeightMin;
    }

    public int getSaveFlags() {
        return this.saveFlags;
    }

    public boolean getSkipCollapsed() {
        return this.skipCollapsed;
    }

    public int getState() {
        return this.state;
    }

    public boolean isDraggable() {
        return this.draggable;
    }

    public boolean isFitToContents() {
        return this.fitToContents;
    }

    public boolean isGestureInsetBottomIgnored() {
        return this.gestureInsetBottomIgnored;
    }

    public boolean isHideable() {
        return this.hideable;
    }

    public boolean isNestedScrollingCheckEnabled() {
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onAttachedToLayoutParams(CoordinatorLayout.LayoutParams layoutParams) {
        super.onAttachedToLayoutParams(layoutParams);
        this.viewRef = null;
        this.viewDragHelper = null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onDetachedFromLayoutParams() {
        super.onDetachedFromLayoutParams();
        this.viewRef = null;
        this.viewDragHelper = null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        ViewDragHelper viewDragHelper;
        if (!v.isShown() || !this.draggable) {
            this.ignoreEvents = true;
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            reset();
        }
        if (this.velocityTracker == null) {
            this.velocityTracker = VelocityTracker.obtain();
        }
        this.velocityTracker.addMovement(motionEvent);
        switch (actionMasked) {
            case 0:
                int x = (int) motionEvent.getX();
                this.initialY = (int) motionEvent.getY();
                if (this.state != 2) {
                    WeakReference<View> weakReference = this.nestedScrollingChildRef;
                    View view = weakReference != null ? weakReference.get() : null;
                    if (view != null && coordinatorLayout.isPointInChildBounds(view, x, this.initialY)) {
                        this.activePointerId = motionEvent.getPointerId(motionEvent.getActionIndex());
                        this.touchingScrollingChild = true;
                    }
                }
                this.ignoreEvents = this.activePointerId == -1 && !coordinatorLayout.isPointInChildBounds(v, x, this.initialY);
                break;
            case 1:
            case 3:
                this.touchingScrollingChild = false;
                this.activePointerId = -1;
                if (this.ignoreEvents) {
                    this.ignoreEvents = false;
                    return false;
                }
                break;
        }
        if (!this.ignoreEvents && (viewDragHelper = this.viewDragHelper) != null && viewDragHelper.shouldInterceptTouchEvent(motionEvent)) {
            return true;
        }
        WeakReference<View> weakReference2 = this.nestedScrollingChildRef;
        View view2 = weakReference2 != null ? weakReference2.get() : null;
        return (actionMasked != 2 || view2 == null || this.ignoreEvents || this.state == 1 || coordinatorLayout.isPointInChildBounds(view2, (int) motionEvent.getX(), (int) motionEvent.getY()) || this.viewDragHelper == null || Math.abs(((float) this.initialY) - motionEvent.getY()) <= ((float) this.viewDragHelper.getTouchSlop())) ? false : true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, V v, int i) {
        if (ViewCompat.getFitsSystemWindows(coordinatorLayout) && !ViewCompat.getFitsSystemWindows(v)) {
            v.setFitsSystemWindows(true);
        }
        if (this.viewRef == null) {
            this.peekHeightMin = coordinatorLayout.getResources().getDimensionPixelSize(R.dimen.design_bottom_sheet_peek_height_min);
            setWindowInsetsListener(v);
            this.viewRef = new WeakReference<>(v);
            MaterialShapeDrawable materialShapeDrawable = this.materialShapeDrawable;
            if (materialShapeDrawable != null) {
                ViewCompat.setBackground(v, materialShapeDrawable);
                MaterialShapeDrawable materialShapeDrawable2 = this.materialShapeDrawable;
                float elevation = this.elevation;
                if (elevation == -1.0f) {
                    elevation = ViewCompat.getElevation(v);
                }
                materialShapeDrawable2.setElevation(elevation);
                boolean z = this.state == 3;
                this.isShapeExpanded = z;
                this.materialShapeDrawable.setInterpolation(z ? 0.0f : 1.0f);
            } else {
                ColorStateList colorStateList = this.backgroundTint;
                if (colorStateList != null) {
                    ViewCompat.setBackgroundTintList(v, colorStateList);
                }
            }
            updateAccessibilityActions();
            if (ViewCompat.getImportantForAccessibility(v) == 0) {
                ViewCompat.setImportantForAccessibility(v, 1);
            }
        }
        if (this.viewDragHelper == null) {
            this.viewDragHelper = ViewDragHelper.create(coordinatorLayout, this.dragCallback);
        }
        int top = v.getTop();
        coordinatorLayout.onLayoutChild(v, i);
        this.parentWidth = coordinatorLayout.getWidth();
        this.parentHeight = coordinatorLayout.getHeight();
        int height = v.getHeight();
        this.childHeight = height;
        int i2 = this.parentHeight;
        int i3 = this.insetTop;
        if (i2 - height < i3) {
            if (this.paddingTopSystemWindowInsets) {
                this.childHeight = i2;
            } else {
                this.childHeight = i2 - i3;
            }
        }
        this.fitToContentsOffset = Math.max(0, i2 - this.childHeight);
        calculateHalfExpandedOffset();
        calculateCollapsedOffset();
        int i4 = this.state;
        if (i4 == 3) {
            ViewCompat.offsetTopAndBottom(v, getExpandedOffset());
        } else if (i4 == 6) {
            ViewCompat.offsetTopAndBottom(v, this.halfExpandedOffset);
        } else if (this.hideable && i4 == 5) {
            ViewCompat.offsetTopAndBottom(v, this.parentHeight);
        } else if (i4 == 4) {
            ViewCompat.offsetTopAndBottom(v, this.collapsedOffset);
        } else if (i4 == 1 || i4 == 2) {
            ViewCompat.offsetTopAndBottom(v, top - v.getTop());
        }
        this.nestedScrollingChildRef = new WeakReference<>(findScrollingChild(v));
        for (int i5 = 0; i5 < this.callbacks.size(); i5++) {
            this.callbacks.get(i5).onLayout(v);
        }
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onMeasureChild(CoordinatorLayout coordinatorLayout, V v, int i, int i2, int i3, int i4) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) v.getLayoutParams();
        v.measure(getChildMeasureSpec(i, coordinatorLayout.getPaddingLeft() + coordinatorLayout.getPaddingRight() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, this.maxWidth, marginLayoutParams.width), getChildMeasureSpec(i3, coordinatorLayout.getPaddingTop() + coordinatorLayout.getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i4, this.maxHeight, marginLayoutParams.height));
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onNestedPreFling(CoordinatorLayout coordinatorLayout, V v, View view, float f, float f2) {
        WeakReference<View> weakReference;
        if (isNestedScrollingCheckEnabled() && (weakReference = this.nestedScrollingChildRef) != null && view == weakReference.get()) {
            return this.state != 3 || super.onNestedPreFling(coordinatorLayout, v, view, f, f2);
        }
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onNestedPreScroll(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int[] iArr, int i3) {
        if (i3 == 1) {
            return;
        }
        WeakReference<View> weakReference = this.nestedScrollingChildRef;
        View view2 = weakReference != null ? weakReference.get() : null;
        if (!isNestedScrollingCheckEnabled() || view == view2) {
            int top = v.getTop();
            int i4 = top - i2;
            if (i2 > 0) {
                if (i4 < getExpandedOffset()) {
                    iArr[1] = top - getExpandedOffset();
                    ViewCompat.offsetTopAndBottom(v, -iArr[1]);
                    setStateInternal(3);
                } else {
                    if (!this.draggable) {
                        return;
                    }
                    iArr[1] = i2;
                    ViewCompat.offsetTopAndBottom(v, -i2);
                    setStateInternal(1);
                }
            } else if (i2 < 0 && !view.canScrollVertically(-1)) {
                int i5 = this.collapsedOffset;
                if (i4 > i5 && !this.hideable) {
                    iArr[1] = top - i5;
                    ViewCompat.offsetTopAndBottom(v, -iArr[1]);
                    setStateInternal(4);
                } else {
                    if (!this.draggable) {
                        return;
                    }
                    iArr[1] = i2;
                    ViewCompat.offsetTopAndBottom(v, -i2);
                    setStateInternal(1);
                }
            }
            dispatchOnSlide(v.getTop());
            this.lastNestedScrollDy = i2;
            this.nestedScrolled = true;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onNestedScroll(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onRestoreInstanceState(CoordinatorLayout coordinatorLayout, V v, Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(coordinatorLayout, v, savedState.getSuperState());
        restoreOptionalState(savedState);
        if (savedState.state == 1 || savedState.state == 2) {
            this.state = 4;
            this.lastStableState = 4;
        } else {
            int i = savedState.state;
            this.state = i;
            this.lastStableState = i;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public Parcelable onSaveInstanceState(CoordinatorLayout coordinatorLayout, V v) {
        return new SavedState(super.onSaveInstanceState(coordinatorLayout, v), (BottomSheetBehavior<?>) this);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i, int i2) {
        this.lastNestedScrollDy = 0;
        this.nestedScrolled = false;
        return (i & 2) != 0;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onStopNestedScroll(CoordinatorLayout coordinatorLayout, V v, View view, int i) {
        WeakReference<View> weakReference;
        int i2 = 3;
        if (v.getTop() == getExpandedOffset()) {
            setStateInternal(3);
            return;
        }
        if (!isNestedScrollingCheckEnabled() || ((weakReference = this.nestedScrollingChildRef) != null && view == weakReference.get() && this.nestedScrolled)) {
            if (this.lastNestedScrollDy > 0) {
                if (!this.fitToContents) {
                    i2 = v.getTop() <= this.halfExpandedOffset ? 3 : 6;
                }
            } else if (this.hideable && shouldHide(v, getYVelocity())) {
                i2 = 5;
            } else if (this.lastNestedScrollDy == 0) {
                int top = v.getTop();
                if (!this.fitToContents) {
                    int i3 = this.halfExpandedOffset;
                    if (top >= i3) {
                        i2 = Math.abs(top - i3) < Math.abs(top - this.collapsedOffset) ? 6 : 4;
                    } else if (top >= Math.abs(top - this.collapsedOffset)) {
                        i2 = shouldSkipHalfExpandedStateWhenDragging() ? 4 : 6;
                    }
                } else if (Math.abs(top - this.fitToContentsOffset) >= Math.abs(top - this.collapsedOffset)) {
                    i2 = 4;
                }
            } else if (this.fitToContents) {
                i2 = 4;
            } else {
                int top2 = v.getTop();
                i2 = Math.abs(top2 - this.halfExpandedOffset) < Math.abs(top2 - this.collapsedOffset) ? 6 : 4;
            }
            startSettling(v, i2, false);
            this.nestedScrolled = false;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onTouchEvent(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        if (!v.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (this.state == 1 && actionMasked == 0) {
            return true;
        }
        if (shouldHandleDraggingWithHelper()) {
            this.viewDragHelper.processTouchEvent(motionEvent);
        }
        if (actionMasked == 0) {
            reset();
        }
        if (this.velocityTracker == null) {
            this.velocityTracker = VelocityTracker.obtain();
        }
        this.velocityTracker.addMovement(motionEvent);
        if (shouldHandleDraggingWithHelper() && actionMasked == 2 && !this.ignoreEvents && Math.abs(this.initialY - motionEvent.getY()) > this.viewDragHelper.getTouchSlop()) {
            this.viewDragHelper.captureChildView(v, motionEvent.getPointerId(motionEvent.getActionIndex()));
        }
        return !this.ignoreEvents;
    }

    public void removeBottomSheetCallback(BottomSheetCallback bottomSheetCallback) {
        this.callbacks.remove(bottomSheetCallback);
    }

    @Deprecated
    public void setBottomSheetCallback(BottomSheetCallback bottomSheetCallback) {
        Log.w(TAG, NPStringFog.decode(new byte[]{35, 86, 65, 23, 92, 8, 50, 81, 80, 6, 71, 39, 4, 81, 84, 21, 90, 10, 19, 25, 91, 12, 68, 69, 18, 76, 69, 19, 92, 23, 21, 74, 21, 14, 70, 9, 21, 80, 69, 15, 86, 69, 2, 88, 89, 15, 81, 4, 2, 82, 70, 77, 19, 5, 18, 92, 65, 33, 92, 17, 21, 86, 88, 48, 91, 0, 4, 77, 118, 2, 95, 9, 3, 88, 86, 8, 27, 76, 1, 25, 71, 6, 94, 10, 23, 92, 70, 67, 82, 9, 13, 25, 80, 27, 90, 22, 21, 80, 91, 4, 19, 6, 0, 85, 89, 1, 82, 6, 10, 74, 25, 67, 90, 11, 2, 85, 64, 7, 90, 11, 6, 25, 90, 13, 86, 22, 65, 74, 80, 23, 19, 12, 15, 77, 80, 17, 93, 4, 13, 85, 76, 67, 81, 28, 65, 85, 92, 1, 65, 4, 19, 64, 21, 2, 70, 17, 9, 86, 71, 16, 31, 69, 22, 81, 92, 0, 91, 69, 12, 88, 76, 67, 65, 0, 18, 76, 89, 23, 19, 12, 15, 25, 64, 13, 90, 11, 21, 92, 91, 7, 86, 1, 65, 91, 80, 11, 82, 19, 8, 86, 71, 77, 19, 49, 9, 80, 70, 67, 94, 4, 24, 25, 86, 11, 82, 11, 6, 92, 21, 10, 93, 69, 21, 81, 80, 67, 85, 16, 21, 76, 71, 6, 29, 69, 49, 85, 80, 2, 64, 0, 65, 76, 70, 6, 19, 5, 0, 93, 81, 33, 92, 17, 21, 86, 88, 48, 91, 0, 4, 77, 118, 2, 95, 9, 3, 88, 86, 8, 27, 76, 1, 25, 84, 13, 87, 69, 1, 75, 80, 14, 92, 19, 4, 123, 90, 23, 71, 10, 12, 106, 93, 6, 86, 17, 34, 88, 89, 15, 81, 4, 2, 82, 29, 74, 83, 69, 8, 87, 70, 23, 86, 4, 5, 25, 65, 12, 19, 22, 4, 77, 21, 26, 92, 16, 19, 25, 90, 20, 93, 69, 2, 88, 89, 15, 81, 4, 2, 82, 70, 77}, "a95c3e", true, false));
        this.callbacks.clear();
        if (bottomSheetCallback != null) {
            this.callbacks.add(bottomSheetCallback);
        }
    }

    public void setDraggable(boolean z) {
        this.draggable = z;
    }

    public void setExpandedOffset(int i) {
        if (i < 0) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{88, 95, 82, 70, 84, 69, 23, 84, 65, 70, 69, 17, 85, 92, 20, 82, 67, 84, 86, 77, 81, 71, 17, 69, 95, 88, 90, 21, 94, 67, 23, 92, 69, 64, 80, 93, 23, 77, 91, 21, 1}, "794511", 16637));
        }
        this.expandedOffset = i;
    }

    public void setFitToContents(boolean z) {
        if (this.fitToContents == z) {
            return;
        }
        this.fitToContents = z;
        if (this.viewRef != null) {
            calculateCollapsedOffset();
        }
        setStateInternal((this.fitToContents && this.state == 6) ? 3 : this.state);
        updateAccessibilityActions();
    }

    public void setGestureInsetBottomIgnored(boolean z) {
        this.gestureInsetBottomIgnored = z;
    }

    public void setHalfExpandedRatio(float f) {
        if (f <= 0.0f || f >= 1.0f) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{17, 80, 71, 90, 10, 16, 14, 68, 64, 71, 69, 82, 6, 17, 82, 19, 3, 92, 12, 80, 71, 19, 19, 81, 15, 68, 86, 19, 7, 85, 23, 70, 86, 86, 11, 16, 83, 17, 82, 93, 1, 16, 82}, "c133e0", 4.06618636E8d));
        }
        this.halfExpandedRatio = f;
        if (this.viewRef != null) {
            calculateHalfExpandedOffset();
        }
    }

    public void setHideable(boolean z) {
        if (this.hideable != z) {
            this.hideable = z;
            if (!z && this.state == 5) {
                setState(4);
            }
            updateAccessibilityActions();
        }
    }

    public void setHideableInternal(boolean z) {
        this.hideable = z;
    }

    public void setMaxHeight(int i) {
        this.maxHeight = i;
    }

    public void setMaxWidth(int i) {
        this.maxWidth = i;
    }

    public void setPeekHeight(int i) {
        setPeekHeight(i, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void setPeekHeight(int r4, boolean r5) {
        /*
            r3 = this;
            r0 = 1
            r1 = 0
            r2 = -1
            if (r4 != r2) goto L11
            boolean r2 = r3.peekHeightAuto
            if (r2 != 0) goto L22
            r3.peekHeightAuto = r0
        Lb:
            if (r0 == 0) goto L10
            r3.updatePeekHeight(r5)
        L10:
            return
        L11:
            boolean r2 = r3.peekHeightAuto
            if (r2 != 0) goto L19
            int r2 = r3.peekHeight
            if (r2 == r4) goto L22
        L19:
            r3.peekHeightAuto = r1
            int r1 = java.lang.Math.max(r1, r4)
            r3.peekHeight = r1
            goto Lb
        L22:
            r0 = r1
            goto Lb
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.setPeekHeight(int, boolean):void");
    }

    public void setSaveFlags(int i) {
        this.saveFlags = i;
    }

    public void setSkipCollapsed(boolean z) {
        this.skipCollapsed = z;
    }

    public void setState(int i) {
        if (i == 1 || i == 2) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{55, 98, 34, 108, 119, 103}, "d6c828", 1.2972901E9f) + (i == 1 ? NPStringFog.decode(new byte[]{124, 54, 112, 36, 116, 126, 118, 35}, "8d1c37", 1.903488845E9d) : NPStringFog.decode(new byte[]{54, 118, 99, 108, 127, 47, 43, 116}, "e3783f", 22153)) + NPStringFog.decode(new byte[]{68, 18, 90, 14, 65, 85, 0, 65, 92, 14, 64, 25, 6, 4, 18, 18, 81, 77, 68, 4, 74, 21, 81, 75, 10, 0, 94, 13, 77, 23}, "da2a49", true));
        }
        if (!this.hideable && i == 5) {
            Log.w(TAG, NPStringFog.decode(new byte[]{113, 89, 11, 94, 10, 65, 18, 75, 0, 68, 69, 70, 70, 89, 17, 85, 95, 21}, "28e0e5", -9.05072122E8d) + i);
            return;
        }
        int i2 = (i == 6 && this.fitToContents && getTopOffsetForState(i) <= this.fitToContentsOffset) ? 3 : i;
        WeakReference<V> weakReference = this.viewRef;
        if (weakReference == null || weakReference.get() == null) {
            setStateInternal(i);
        } else {
            V v = this.viewRef.get();
            runAfterLayout(v, new Runnable(this, v, i2) { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.1
                final BottomSheetBehavior this$0;
                final View val$child;
                final int val$finalState;

                {
                    this.this$0 = this;
                    this.val$child = v;
                    this.val$finalState = i2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    this.this$0.startSettling(this.val$child, this.val$finalState, false);
                }
            });
        }
    }

    void setStateInternal(int i) {
        V v;
        int i2 = 0;
        if (this.state == i) {
            return;
        }
        this.state = i;
        if (i == 4 || i == 3 || i == 6 || (this.hideable && i == 5)) {
            this.lastStableState = i;
        }
        WeakReference<V> weakReference = this.viewRef;
        if (weakReference == null || (v = weakReference.get()) == null) {
            return;
        }
        if (i == 3) {
            updateImportantForAccessibility(true);
        } else if (i == 6 || i == 5 || i == 4) {
            updateImportantForAccessibility(false);
        }
        updateDrawableForTargetState(i);
        while (true) {
            int i3 = i2;
            if (i3 >= this.callbacks.size()) {
                updateAccessibilityActions();
                return;
            } else {
                this.callbacks.get(i3).onStateChanged(v, i);
                i2 = i3 + 1;
            }
        }
    }

    public void setUpdateImportantForAccessibilityOnSiblings(boolean z) {
        this.updateImportantForAccessibilityOnSiblings = z;
    }

    public boolean shouldExpandOnUpwardDrag(long j, float f) {
        return false;
    }

    boolean shouldHide(View view, float f) {
        if (this.skipCollapsed) {
            return true;
        }
        if (view.getTop() < this.collapsedOffset) {
            return false;
        }
        return Math.abs((((float) view.getTop()) + (0.1f * f)) - ((float) this.collapsedOffset)) / ((float) calculatePeekHeight()) > 0.5f;
    }

    public boolean shouldSkipHalfExpandedStateWhenDragging() {
        return false;
    }

    public boolean shouldSkipSmoothAnimation() {
        return true;
    }
}
