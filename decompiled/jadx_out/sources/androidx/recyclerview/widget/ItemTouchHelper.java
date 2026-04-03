package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import android.view.animation.Interpolator;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.view.GestureDetectorCompat;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.R;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;
import n.NPStringFog;

/* JADX INFO: loaded from: classes42.dex */
public class ItemTouchHelper extends RecyclerView.ItemDecoration implements RecyclerView.OnChildAttachStateChangeListener {
    static final int ACTION_MODE_DRAG_MASK = 16711680;
    private static final int ACTION_MODE_IDLE_MASK = 255;
    static final int ACTION_MODE_SWIPE_MASK = 65280;
    public static final int ACTION_STATE_DRAG = 2;
    public static final int ACTION_STATE_IDLE = 0;
    public static final int ACTION_STATE_SWIPE = 1;
    private static final int ACTIVE_POINTER_ID_NONE = -1;
    public static final int ANIMATION_TYPE_DRAG = 8;
    public static final int ANIMATION_TYPE_SWIPE_CANCEL = 4;
    public static final int ANIMATION_TYPE_SWIPE_SUCCESS = 2;
    private static final boolean DEBUG = false;
    static final int DIRECTION_FLAG_COUNT = 8;
    public static final int DOWN = 2;
    public static final int END = 32;
    public static final int LEFT = 4;
    private static final int PIXELS_PER_SECOND = 1000;
    public static final int RIGHT = 8;
    public static final int START = 16;
    private static final String TAG = NPStringFog.decode(new byte[]{112, 23, 92, 90, 109, 90, 76, 0, 81, 127, 92, 89, 73, 6, 75}, "9c9795", 2.4887894E8f);
    public static final int UP = 1;

    @NonNull
    Callback mCallback;
    private List<Integer> mDistances;
    private long mDragScrollStartTimeInMs;
    float mDx;
    float mDy;
    GestureDetectorCompat mGestureDetector;
    float mInitialTouchX;
    float mInitialTouchY;
    private ItemTouchHelperGestureListener mItemTouchHelperGestureListener;
    private float mMaxSwipeVelocity;
    RecyclerView mRecyclerView;
    int mSelectedFlags;
    private float mSelectedStartX;
    private float mSelectedStartY;
    private int mSlop;
    private List<RecyclerView.ViewHolder> mSwapTargets;
    private float mSwipeEscapeVelocity;
    private Rect mTmpRect;
    VelocityTracker mVelocityTracker;
    final List<View> mPendingCleanup = new ArrayList();
    private final float[] mTmpPosition = new float[2];
    RecyclerView.ViewHolder mSelected = null;
    int mActivePointerId = -1;
    private int mActionState = 0;

    @VisibleForTesting
    List<RecoverAnimation> mRecoverAnimations = new ArrayList();
    final Runnable mScrollRunnable = new Runnable(this) { // from class: androidx.recyclerview.widget.ItemTouchHelper.1
        final ItemTouchHelper this$0;

        {
            this.this$0 = this;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.this$0.mSelected == null || !this.this$0.scrollIfNecessary()) {
                return;
            }
            if (this.this$0.mSelected != null) {
                this.this$0.moveIfNecessary(this.this$0.mSelected);
            }
            this.this$0.mRecyclerView.removeCallbacks(this.this$0.mScrollRunnable);
            ViewCompat.postOnAnimation(this.this$0.mRecyclerView, this);
        }
    };
    private RecyclerView.ChildDrawingOrderCallback mChildDrawingOrderCallback = null;
    View mOverdrawChild = null;
    int mOverdrawChildPosition = -1;
    private final RecyclerView.OnItemTouchListener mOnItemTouchListener = new RecyclerView.OnItemTouchListener(this) { // from class: androidx.recyclerview.widget.ItemTouchHelper.2
        final ItemTouchHelper this$0;

        {
            this.this$0 = this;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
        public boolean onInterceptTouchEvent(@NonNull RecyclerView recyclerView, @NonNull MotionEvent motionEvent) {
            int iFindPointerIndex;
            RecoverAnimation recoverAnimationFindAnimation;
            this.this$0.mGestureDetector.onTouchEvent(motionEvent);
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                this.this$0.mActivePointerId = motionEvent.getPointerId(0);
                this.this$0.mInitialTouchX = motionEvent.getX();
                this.this$0.mInitialTouchY = motionEvent.getY();
                this.this$0.obtainVelocityTracker();
                if (this.this$0.mSelected == null && (recoverAnimationFindAnimation = this.this$0.findAnimation(motionEvent)) != null) {
                    this.this$0.mInitialTouchX -= recoverAnimationFindAnimation.mX;
                    this.this$0.mInitialTouchY -= recoverAnimationFindAnimation.mY;
                    this.this$0.endRecoverAnimation(recoverAnimationFindAnimation.mViewHolder, true);
                    if (this.this$0.mPendingCleanup.remove(recoverAnimationFindAnimation.mViewHolder.itemView)) {
                        this.this$0.mCallback.clearView(this.this$0.mRecyclerView, recoverAnimationFindAnimation.mViewHolder);
                    }
                    this.this$0.select(recoverAnimationFindAnimation.mViewHolder, recoverAnimationFindAnimation.mActionState);
                    this.this$0.updateDxDy(motionEvent, this.this$0.mSelectedFlags, 0);
                }
            } else if (actionMasked == 3 || actionMasked == 1) {
                this.this$0.mActivePointerId = -1;
                this.this$0.select(null, 0);
            } else if (this.this$0.mActivePointerId != -1 && (iFindPointerIndex = motionEvent.findPointerIndex(this.this$0.mActivePointerId)) >= 0) {
                this.this$0.checkSelectForSwipe(actionMasked, motionEvent, iFindPointerIndex);
            }
            if (this.this$0.mVelocityTracker != null) {
                this.this$0.mVelocityTracker.addMovement(motionEvent);
            }
            return this.this$0.mSelected != null;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
        public void onRequestDisallowInterceptTouchEvent(boolean z) {
            if (z) {
                this.this$0.select(null, 0);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
        public void onTouchEvent(@NonNull RecyclerView recyclerView, @NonNull MotionEvent motionEvent) {
            this.this$0.mGestureDetector.onTouchEvent(motionEvent);
            if (this.this$0.mVelocityTracker != null) {
                this.this$0.mVelocityTracker.addMovement(motionEvent);
            }
            if (this.this$0.mActivePointerId == -1) {
                return;
            }
            int actionMasked = motionEvent.getActionMasked();
            int iFindPointerIndex = motionEvent.findPointerIndex(this.this$0.mActivePointerId);
            if (iFindPointerIndex >= 0) {
                this.this$0.checkSelectForSwipe(actionMasked, motionEvent, iFindPointerIndex);
            }
            RecyclerView.ViewHolder viewHolder = this.this$0.mSelected;
            if (viewHolder != null) {
                switch (actionMasked) {
                    case 1:
                        break;
                    case 2:
                        if (iFindPointerIndex >= 0) {
                            this.this$0.updateDxDy(motionEvent, this.this$0.mSelectedFlags, iFindPointerIndex);
                            this.this$0.moveIfNecessary(viewHolder);
                            this.this$0.mRecyclerView.removeCallbacks(this.this$0.mScrollRunnable);
                            this.this$0.mScrollRunnable.run();
                            this.this$0.mRecyclerView.invalidate();
                            return;
                        }
                        return;
                    case 3:
                        if (this.this$0.mVelocityTracker != null) {
                            this.this$0.mVelocityTracker.clear();
                        }
                        break;
                    case 4:
                    case 5:
                    default:
                        return;
                    case 6:
                        int actionIndex = motionEvent.getActionIndex();
                        if (motionEvent.getPointerId(actionIndex) == this.this$0.mActivePointerId) {
                            this.this$0.mActivePointerId = motionEvent.getPointerId(actionIndex == 0 ? 1 : 0);
                            this.this$0.updateDxDy(motionEvent, this.this$0.mSelectedFlags, actionIndex);
                            return;
                        }
                        return;
                }
                this.this$0.select(null, 0);
                this.this$0.mActivePointerId = -1;
            }
        }
    };

    public static abstract class Callback {
        private static final int ABS_HORIZONTAL_DIR_FLAGS = 789516;
        public static final int DEFAULT_DRAG_ANIMATION_DURATION = 200;
        public static final int DEFAULT_SWIPE_ANIMATION_DURATION = 250;
        private static final long DRAG_SCROLL_ACCELERATION_LIMIT_TIME_MS = 2000;
        static final int RELATIVE_DIR_FLAGS = 3158064;
        private static final Interpolator sDragScrollInterpolator = new Interpolator() { // from class: androidx.recyclerview.widget.ItemTouchHelper.Callback.1
            @Override // android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                return f * f * f * f * f;
            }
        };
        private static final Interpolator sDragViewScrollCapInterpolator = new Interpolator() { // from class: androidx.recyclerview.widget.ItemTouchHelper.Callback.2
            @Override // android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                float f2 = f - 1.0f;
                return (f2 * f2 * f2 * f2 * f2) + 1.0f;
            }
        };
        private int mCachedMaxScrollSpeed = -1;

        public static int convertToRelativeDirection(int i, int i2) {
            int i3 = i & ABS_HORIZONTAL_DIR_FLAGS;
            if (i3 == 0) {
                return i;
            }
            int i4 = (i3 ^ (-1)) & i;
            return i2 == 0 ? i4 | (i3 << 2) : i4 | ((i3 << 1) & (-789517)) | (((i3 << 1) & ABS_HORIZONTAL_DIR_FLAGS) << 2);
        }

        @NonNull
        public static ItemTouchUIUtil getDefaultUIUtil() {
            return ItemTouchUIUtilImpl.INSTANCE;
        }

        private int getMaxDragScroll(RecyclerView recyclerView) {
            if (this.mCachedMaxScrollSpeed == -1) {
                this.mCachedMaxScrollSpeed = recyclerView.getResources().getDimensionPixelSize(R.dimen.item_touch_helper_max_drag_scroll_per_frame);
            }
            return this.mCachedMaxScrollSpeed;
        }

        public static int makeFlag(int i, int i2) {
            return i2 << (i * 8);
        }

        public static int makeMovementFlags(int i, int i2) {
            return makeFlag(0, i2 | i) | makeFlag(1, i2) | makeFlag(2, i);
        }

        public boolean canDropOver(@NonNull RecyclerView recyclerView, @NonNull RecyclerView.ViewHolder viewHolder, @NonNull RecyclerView.ViewHolder viewHolder2) {
            return true;
        }

        public RecyclerView.ViewHolder chooseDropTarget(@NonNull RecyclerView.ViewHolder viewHolder, @NonNull List<RecyclerView.ViewHolder> list, int i, int i2) {
            int iAbs;
            RecyclerView.ViewHolder viewHolder2;
            RecyclerView.ViewHolder viewHolder3;
            int iAbs2;
            int i3;
            RecyclerView.ViewHolder viewHolder4;
            int bottom;
            int iAbs3;
            int top;
            int left;
            int iAbs4;
            int right;
            int width = viewHolder.itemView.getWidth();
            int height = viewHolder.itemView.getHeight();
            RecyclerView.ViewHolder viewHolder5 = null;
            int i4 = -1;
            int left2 = i - viewHolder.itemView.getLeft();
            int top2 = i2 - viewHolder.itemView.getTop();
            int size = list.size();
            int i5 = 0;
            while (i5 < size) {
                RecyclerView.ViewHolder viewHolder6 = list.get(i5);
                if (left2 <= 0 || (right = viewHolder6.itemView.getRight() - (i + width)) >= 0 || viewHolder6.itemView.getRight() <= viewHolder.itemView.getRight() || (iAbs = Math.abs(right)) <= i4) {
                    iAbs = i4;
                    viewHolder2 = viewHolder5;
                } else {
                    viewHolder2 = viewHolder6;
                }
                if (left2 >= 0 || (left = viewHolder6.itemView.getLeft() - i) <= 0 || viewHolder6.itemView.getLeft() >= viewHolder.itemView.getLeft() || (iAbs4 = Math.abs(left)) <= iAbs) {
                    viewHolder3 = viewHolder2;
                } else {
                    iAbs = iAbs4;
                    viewHolder3 = viewHolder6;
                }
                if (top2 >= 0 || (top = viewHolder6.itemView.getTop() - i2) <= 0 || viewHolder6.itemView.getTop() >= viewHolder.itemView.getTop() || (iAbs2 = Math.abs(top)) <= iAbs) {
                    iAbs2 = iAbs;
                } else {
                    viewHolder3 = viewHolder6;
                }
                if (top2 <= 0 || (bottom = viewHolder6.itemView.getBottom() - (i2 + height)) >= 0 || viewHolder6.itemView.getBottom() <= viewHolder.itemView.getBottom() || (iAbs3 = Math.abs(bottom)) <= iAbs2) {
                    i3 = iAbs2;
                    viewHolder4 = viewHolder3;
                } else {
                    viewHolder4 = viewHolder6;
                    i3 = iAbs3;
                }
                i5++;
                viewHolder5 = viewHolder4;
                i4 = i3;
            }
            return viewHolder5;
        }

        public void clearView(@NonNull RecyclerView recyclerView, @NonNull RecyclerView.ViewHolder viewHolder) {
            ItemTouchUIUtilImpl.INSTANCE.clearView(viewHolder.itemView);
        }

        public int convertToAbsoluteDirection(int i, int i2) {
            int i3 = i & RELATIVE_DIR_FLAGS;
            if (i3 == 0) {
                return i;
            }
            int i4 = (i3 ^ (-1)) & i;
            return i2 == 0 ? i4 | (i3 >> 2) : i4 | ((i3 >> 1) & (-3158065)) | (((i3 >> 1) & RELATIVE_DIR_FLAGS) >> 2);
        }

        final int getAbsoluteMovementFlags(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
            return convertToAbsoluteDirection(getMovementFlags(recyclerView, viewHolder), ViewCompat.getLayoutDirection(recyclerView));
        }

        public long getAnimationDuration(@NonNull RecyclerView recyclerView, int i, float f, float f2) {
            RecyclerView.ItemAnimator itemAnimator = recyclerView.getItemAnimator();
            return itemAnimator == null ? i == 8 ? 200L : 250L : i == 8 ? itemAnimator.getMoveDuration() : itemAnimator.getRemoveDuration();
        }

        public int getBoundingBoxMargin() {
            return 0;
        }

        public float getMoveThreshold(@NonNull RecyclerView.ViewHolder viewHolder) {
            return 0.5f;
        }

        public abstract int getMovementFlags(@NonNull RecyclerView recyclerView, @NonNull RecyclerView.ViewHolder viewHolder);

        public float getSwipeEscapeVelocity(float f) {
            return f;
        }

        public float getSwipeThreshold(@NonNull RecyclerView.ViewHolder viewHolder) {
            return 0.5f;
        }

        public float getSwipeVelocityThreshold(float f) {
            return f;
        }

        boolean hasDragFlag(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
            return (ItemTouchHelper.ACTION_MODE_DRAG_MASK & getAbsoluteMovementFlags(recyclerView, viewHolder)) != 0;
        }

        boolean hasSwipeFlag(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
            return (65280 & getAbsoluteMovementFlags(recyclerView, viewHolder)) != 0;
        }

        public int interpolateOutOfBoundsScroll(@NonNull RecyclerView recyclerView, int i, int i2, int i3, long j) {
            int interpolation = (int) (sDragScrollInterpolator.getInterpolation(j <= DRAG_SCROLL_ACCELERATION_LIMIT_TIME_MS ? j / 2000.0f : 1.0f) * ((int) (getMaxDragScroll(recyclerView) * ((int) Math.signum(i2)) * sDragViewScrollCapInterpolator.getInterpolation(Math.min(1.0f, (Math.abs(i2) * 1.0f) / i)))));
            return interpolation == 0 ? i2 > 0 ? 1 : -1 : interpolation;
        }

        public boolean isItemViewSwipeEnabled() {
            return true;
        }

        public boolean isLongPressDragEnabled() {
            return true;
        }

        public void onChildDraw(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView, @NonNull RecyclerView.ViewHolder viewHolder, float f, float f2, int i, boolean z) {
            ItemTouchUIUtilImpl.INSTANCE.onDraw(canvas, recyclerView, viewHolder.itemView, f, f2, i, z);
        }

        public void onChildDrawOver(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, float f, float f2, int i, boolean z) {
            ItemTouchUIUtilImpl.INSTANCE.onDrawOver(canvas, recyclerView, viewHolder.itemView, f, f2, i, z);
        }

        void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, List<RecoverAnimation> list, int i, float f, float f2) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                RecoverAnimation recoverAnimation = list.get(i2);
                recoverAnimation.update();
                int iSave = canvas.save();
                onChildDraw(canvas, recyclerView, recoverAnimation.mViewHolder, recoverAnimation.mX, recoverAnimation.mY, recoverAnimation.mActionState, false);
                canvas.restoreToCount(iSave);
            }
            if (viewHolder != null) {
                int iSave2 = canvas.save();
                onChildDraw(canvas, recyclerView, viewHolder, f, f2, i, true);
                canvas.restoreToCount(iSave2);
            }
        }

        void onDrawOver(Canvas canvas, RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, List<RecoverAnimation> list, int i, float f, float f2) {
            boolean z;
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                RecoverAnimation recoverAnimation = list.get(i2);
                int iSave = canvas.save();
                onChildDrawOver(canvas, recyclerView, recoverAnimation.mViewHolder, recoverAnimation.mX, recoverAnimation.mY, recoverAnimation.mActionState, false);
                canvas.restoreToCount(iSave);
            }
            if (viewHolder != null) {
                int iSave2 = canvas.save();
                onChildDrawOver(canvas, recyclerView, viewHolder, f, f2, i, true);
                canvas.restoreToCount(iSave2);
            }
            boolean z2 = false;
            int i3 = size - 1;
            while (i3 >= 0) {
                RecoverAnimation recoverAnimation2 = list.get(i3);
                if (!recoverAnimation2.mEnded || recoverAnimation2.mIsPendingCleanup) {
                    if (!recoverAnimation2.mEnded) {
                        z = true;
                    }
                    i3--;
                    z2 = z;
                } else {
                    list.remove(i3);
                }
                z = z2;
                i3--;
                z2 = z;
            }
            if (z2) {
                recyclerView.invalidate();
            }
        }

        public abstract boolean onMove(@NonNull RecyclerView recyclerView, @NonNull RecyclerView.ViewHolder viewHolder, @NonNull RecyclerView.ViewHolder viewHolder2);

        /* JADX WARN: Multi-variable type inference failed */
        public void onMoved(@NonNull RecyclerView recyclerView, @NonNull RecyclerView.ViewHolder viewHolder, int i, @NonNull RecyclerView.ViewHolder viewHolder2, int i2, int i3, int i4) {
            RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
            if (layoutManager instanceof ViewDropHandler) {
                ((ViewDropHandler) layoutManager).prepareForDrop(viewHolder.itemView, viewHolder2.itemView, i3, i4);
                return;
            }
            if (layoutManager.canScrollHorizontally()) {
                if (layoutManager.getDecoratedLeft(viewHolder2.itemView) <= recyclerView.getPaddingLeft()) {
                    recyclerView.scrollToPosition(i2);
                }
                if (layoutManager.getDecoratedRight(viewHolder2.itemView) >= recyclerView.getWidth() - recyclerView.getPaddingRight()) {
                    recyclerView.scrollToPosition(i2);
                }
            }
            if (layoutManager.canScrollVertically()) {
                if (layoutManager.getDecoratedTop(viewHolder2.itemView) <= recyclerView.getPaddingTop()) {
                    recyclerView.scrollToPosition(i2);
                }
                if (layoutManager.getDecoratedBottom(viewHolder2.itemView) >= recyclerView.getHeight() - recyclerView.getPaddingBottom()) {
                    recyclerView.scrollToPosition(i2);
                }
            }
        }

        public void onSelectedChanged(@Nullable RecyclerView.ViewHolder viewHolder, int i) {
            if (viewHolder != null) {
                ItemTouchUIUtilImpl.INSTANCE.onSelected(viewHolder.itemView);
            }
        }

        public abstract void onSwiped(@NonNull RecyclerView.ViewHolder viewHolder, int i);
    }

    private class ItemTouchHelperGestureListener extends GestureDetector.SimpleOnGestureListener {
        private boolean mShouldReactToLongPress = true;
        final ItemTouchHelper this$0;

        ItemTouchHelperGestureListener(ItemTouchHelper itemTouchHelper) {
            this.this$0 = itemTouchHelper;
        }

        void doNotReactToLongPress() {
            this.mShouldReactToLongPress = false;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onDown(MotionEvent motionEvent) {
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public void onLongPress(MotionEvent motionEvent) {
            View viewFindChildView;
            RecyclerView.ViewHolder childViewHolder;
            if (this.mShouldReactToLongPress && (viewFindChildView = this.this$0.findChildView(motionEvent)) != null && (childViewHolder = this.this$0.mRecyclerView.getChildViewHolder(viewFindChildView)) != null && this.this$0.mCallback.hasDragFlag(this.this$0.mRecyclerView, childViewHolder) && motionEvent.getPointerId(0) == this.this$0.mActivePointerId) {
                int iFindPointerIndex = motionEvent.findPointerIndex(this.this$0.mActivePointerId);
                float x = motionEvent.getX(iFindPointerIndex);
                float y = motionEvent.getY(iFindPointerIndex);
                this.this$0.mInitialTouchX = x;
                this.this$0.mInitialTouchY = y;
                ItemTouchHelper itemTouchHelper = this.this$0;
                this.this$0.mDy = 0.0f;
                itemTouchHelper.mDx = 0.0f;
                if (this.this$0.mCallback.isLongPressDragEnabled()) {
                    this.this$0.select(childViewHolder, 2);
                }
            }
        }
    }

    @VisibleForTesting
    static class RecoverAnimation implements Animator.AnimatorListener {
        final int mActionState;
        final int mAnimationType;
        private float mFraction;
        boolean mIsPendingCleanup;
        final float mStartDx;
        final float mStartDy;
        final float mTargetX;
        final float mTargetY;
        final RecyclerView.ViewHolder mViewHolder;
        float mX;
        float mY;
        boolean mOverridden = false;
        boolean mEnded = false;

        @VisibleForTesting
        final ValueAnimator mValueAnimator = ValueAnimator.ofFloat(0.0f, 1.0f);

        RecoverAnimation(RecyclerView.ViewHolder viewHolder, int i, int i2, float f, float f2, float f3, float f4) {
            this.mActionState = i2;
            this.mAnimationType = i;
            this.mViewHolder = viewHolder;
            this.mStartDx = f;
            this.mStartDy = f2;
            this.mTargetX = f3;
            this.mTargetY = f4;
            this.mValueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(this) { // from class: androidx.recyclerview.widget.ItemTouchHelper.RecoverAnimation.1
                final RecoverAnimation this$0;

                {
                    this.this$0 = this;
                }

                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.this$0.setFraction(valueAnimator.getAnimatedFraction());
                }
            });
            this.mValueAnimator.setTarget(viewHolder.itemView);
            this.mValueAnimator.addListener(this);
            setFraction(0.0f);
        }

        public void cancel() {
            this.mValueAnimator.cancel();
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            setFraction(1.0f);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (!this.mEnded) {
                this.mViewHolder.setIsRecyclable(true);
            }
            this.mEnded = true;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }

        public void setDuration(long j) {
            this.mValueAnimator.setDuration(j);
        }

        public void setFraction(float f) {
            this.mFraction = f;
        }

        public void start() {
            this.mViewHolder.setIsRecyclable(false);
            this.mValueAnimator.start();
        }

        public void update() {
            if (this.mStartDx == this.mTargetX) {
                this.mX = this.mViewHolder.itemView.getTranslationX();
            } else {
                this.mX = this.mStartDx + (this.mFraction * (this.mTargetX - this.mStartDx));
            }
            if (this.mStartDy == this.mTargetY) {
                this.mY = this.mViewHolder.itemView.getTranslationY();
            } else {
                this.mY = this.mStartDy + (this.mFraction * (this.mTargetY - this.mStartDy));
            }
        }
    }

    public static abstract class SimpleCallback extends Callback {
        private int mDefaultDragDirs;
        private int mDefaultSwipeDirs;

        public SimpleCallback(int i, int i2) {
            this.mDefaultSwipeDirs = i2;
            this.mDefaultDragDirs = i;
        }

        public int getDragDirs(@NonNull RecyclerView recyclerView, @NonNull RecyclerView.ViewHolder viewHolder) {
            return this.mDefaultDragDirs;
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public int getMovementFlags(@NonNull RecyclerView recyclerView, @NonNull RecyclerView.ViewHolder viewHolder) {
            return makeMovementFlags(getDragDirs(recyclerView, viewHolder), getSwipeDirs(recyclerView, viewHolder));
        }

        public int getSwipeDirs(@NonNull RecyclerView recyclerView, @NonNull RecyclerView.ViewHolder viewHolder) {
            return this.mDefaultSwipeDirs;
        }

        public void setDefaultDragDirs(int i) {
            this.mDefaultDragDirs = i;
        }

        public void setDefaultSwipeDirs(int i) {
            this.mDefaultSwipeDirs = i;
        }
    }

    public interface ViewDropHandler {
        void prepareForDrop(@NonNull View view, @NonNull View view2, int i, int i2);
    }

    public ItemTouchHelper(@NonNull Callback callback) {
        this.mCallback = callback;
    }

    private void addChildDrawingOrderCallback() {
        if (Build.VERSION.SDK_INT >= 21) {
            return;
        }
        if (this.mChildDrawingOrderCallback == null) {
            this.mChildDrawingOrderCallback = new RecyclerView.ChildDrawingOrderCallback(this) { // from class: androidx.recyclerview.widget.ItemTouchHelper.5
                final ItemTouchHelper this$0;

                {
                    this.this$0 = this;
                }

                @Override // androidx.recyclerview.widget.RecyclerView.ChildDrawingOrderCallback
                public int onGetChildDrawingOrder(int i, int i2) {
                    if (this.this$0.mOverdrawChild == null) {
                        return i2;
                    }
                    int iIndexOfChild = this.this$0.mOverdrawChildPosition;
                    if (iIndexOfChild == -1) {
                        iIndexOfChild = this.this$0.mRecyclerView.indexOfChild(this.this$0.mOverdrawChild);
                        this.this$0.mOverdrawChildPosition = iIndexOfChild;
                    }
                    return i2 == i + (-1) ? iIndexOfChild : i2 >= iIndexOfChild ? i2 + 1 : i2;
                }
            };
        }
        this.mRecyclerView.setChildDrawingOrderCallback(this.mChildDrawingOrderCallback);
    }

    private int checkHorizontalSwipe(RecyclerView.ViewHolder viewHolder, int i) {
        if ((i & 12) != 0) {
            int i2 = this.mDx > 0.0f ? 8 : 4;
            if (this.mVelocityTracker != null && this.mActivePointerId > -1) {
                this.mVelocityTracker.computeCurrentVelocity(1000, this.mCallback.getSwipeVelocityThreshold(this.mMaxSwipeVelocity));
                float xVelocity = this.mVelocityTracker.getXVelocity(this.mActivePointerId);
                float yVelocity = this.mVelocityTracker.getYVelocity(this.mActivePointerId);
                int i3 = xVelocity <= 0.0f ? 4 : 8;
                float fAbs = Math.abs(xVelocity);
                if ((i3 & i) != 0 && i2 == i3 && fAbs >= this.mCallback.getSwipeEscapeVelocity(this.mSwipeEscapeVelocity) && fAbs > Math.abs(yVelocity)) {
                    return i3;
                }
            }
            float width = this.mRecyclerView.getWidth();
            float swipeThreshold = this.mCallback.getSwipeThreshold(viewHolder);
            if ((i & i2) != 0 && Math.abs(this.mDx) > width * swipeThreshold) {
                return i2;
            }
        }
        return 0;
    }

    private int checkVerticalSwipe(RecyclerView.ViewHolder viewHolder, int i) {
        if ((i & 3) != 0) {
            int i2 = this.mDy > 0.0f ? 2 : 1;
            if (this.mVelocityTracker != null && this.mActivePointerId > -1) {
                this.mVelocityTracker.computeCurrentVelocity(1000, this.mCallback.getSwipeVelocityThreshold(this.mMaxSwipeVelocity));
                float xVelocity = this.mVelocityTracker.getXVelocity(this.mActivePointerId);
                float yVelocity = this.mVelocityTracker.getYVelocity(this.mActivePointerId);
                int i3 = yVelocity <= 0.0f ? 1 : 2;
                float fAbs = Math.abs(yVelocity);
                if ((i3 & i) != 0 && i3 == i2 && fAbs >= this.mCallback.getSwipeEscapeVelocity(this.mSwipeEscapeVelocity) && fAbs > Math.abs(xVelocity)) {
                    return i3;
                }
            }
            float height = this.mRecyclerView.getHeight();
            float swipeThreshold = this.mCallback.getSwipeThreshold(viewHolder);
            if ((i & i2) != 0 && Math.abs(this.mDy) > height * swipeThreshold) {
                return i2;
            }
        }
        return 0;
    }

    private void destroyCallbacks() {
        this.mRecyclerView.removeItemDecoration(this);
        this.mRecyclerView.removeOnItemTouchListener(this.mOnItemTouchListener);
        this.mRecyclerView.removeOnChildAttachStateChangeListener(this);
        for (int size = this.mRecoverAnimations.size() - 1; size >= 0; size--) {
            RecoverAnimation recoverAnimation = this.mRecoverAnimations.get(0);
            recoverAnimation.cancel();
            this.mCallback.clearView(this.mRecyclerView, recoverAnimation.mViewHolder);
        }
        this.mRecoverAnimations.clear();
        this.mOverdrawChild = null;
        this.mOverdrawChildPosition = -1;
        releaseVelocityTracker();
        stopGestureDetection();
    }

    private List<RecyclerView.ViewHolder> findSwapTargets(RecyclerView.ViewHolder viewHolder) {
        if (this.mSwapTargets == null) {
            this.mSwapTargets = new ArrayList();
            this.mDistances = new ArrayList();
        } else {
            this.mSwapTargets.clear();
            this.mDistances.clear();
        }
        int boundingBoxMargin = this.mCallback.getBoundingBoxMargin();
        int iRound = Math.round(this.mSelectedStartX + this.mDx) - boundingBoxMargin;
        int iRound2 = Math.round(this.mSelectedStartY + this.mDy) - boundingBoxMargin;
        int width = viewHolder.itemView.getWidth() + iRound + (boundingBoxMargin * 2);
        int height = viewHolder.itemView.getHeight() + iRound2 + (boundingBoxMargin * 2);
        int i = (iRound + width) / 2;
        int i2 = (iRound2 + height) / 2;
        RecyclerView.LayoutManager layoutManager = this.mRecyclerView.getLayoutManager();
        int childCount = layoutManager.getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = layoutManager.getChildAt(i3);
            if (childAt != viewHolder.itemView && childAt.getBottom() >= iRound2 && childAt.getTop() <= height && childAt.getRight() >= iRound && childAt.getLeft() <= width) {
                RecyclerView.ViewHolder childViewHolder = this.mRecyclerView.getChildViewHolder(childAt);
                if (this.mCallback.canDropOver(this.mRecyclerView, this.mSelected, childViewHolder)) {
                    int iAbs = Math.abs(i - ((childAt.getLeft() + childAt.getRight()) / 2));
                    int iAbs2 = Math.abs(i2 - ((childAt.getBottom() + childAt.getTop()) / 2));
                    int i4 = (iAbs * iAbs) + (iAbs2 * iAbs2);
                    int size = this.mSwapTargets.size();
                    int i5 = 0;
                    int i6 = 0;
                    while (i5 < size && i4 > this.mDistances.get(i5).intValue()) {
                        i5++;
                        i6++;
                    }
                    this.mSwapTargets.add(i6, childViewHolder);
                    this.mDistances.add(i6, Integer.valueOf(i4));
                }
            }
        }
        return this.mSwapTargets;
    }

    private RecyclerView.ViewHolder findSwipedView(MotionEvent motionEvent) {
        View viewFindChildView;
        RecyclerView.LayoutManager layoutManager = this.mRecyclerView.getLayoutManager();
        if (this.mActivePointerId == -1) {
            return null;
        }
        int iFindPointerIndex = motionEvent.findPointerIndex(this.mActivePointerId);
        float x = motionEvent.getX(iFindPointerIndex);
        float f = this.mInitialTouchX;
        float y = motionEvent.getY(iFindPointerIndex);
        float f2 = this.mInitialTouchY;
        float fAbs = Math.abs(x - f);
        float fAbs2 = Math.abs(y - f2);
        if (fAbs < this.mSlop && fAbs2 < this.mSlop) {
            return null;
        }
        if (fAbs > fAbs2 && layoutManager.canScrollHorizontally()) {
            return null;
        }
        if ((fAbs2 <= fAbs || !layoutManager.canScrollVertically()) && (viewFindChildView = findChildView(motionEvent)) != null) {
            return this.mRecyclerView.getChildViewHolder(viewFindChildView);
        }
        return null;
    }

    private void getSelectedDxDy(float[] fArr) {
        if ((this.mSelectedFlags & 12) != 0) {
            fArr[0] = (this.mSelectedStartX + this.mDx) - this.mSelected.itemView.getLeft();
        } else {
            fArr[0] = this.mSelected.itemView.getTranslationX();
        }
        if ((this.mSelectedFlags & 3) != 0) {
            fArr[1] = (this.mSelectedStartY + this.mDy) - this.mSelected.itemView.getTop();
        } else {
            fArr[1] = this.mSelected.itemView.getTranslationY();
        }
    }

    private static boolean hitTest(View view, float f, float f2, float f3, float f4) {
        return f >= f3 && f <= ((float) view.getWidth()) + f3 && f2 >= f4 && f2 <= ((float) view.getHeight()) + f4;
    }

    private void releaseVelocityTracker() {
        if (this.mVelocityTracker != null) {
            this.mVelocityTracker.recycle();
            this.mVelocityTracker = null;
        }
    }

    private void setupCallbacks() {
        this.mSlop = ViewConfiguration.get(this.mRecyclerView.getContext()).getScaledTouchSlop();
        this.mRecyclerView.addItemDecoration(this);
        this.mRecyclerView.addOnItemTouchListener(this.mOnItemTouchListener);
        this.mRecyclerView.addOnChildAttachStateChangeListener(this);
        startGestureDetection();
    }

    private void startGestureDetection() {
        this.mItemTouchHelperGestureListener = new ItemTouchHelperGestureListener(this);
        this.mGestureDetector = new GestureDetectorCompat(this.mRecyclerView.getContext(), this.mItemTouchHelperGestureListener);
    }

    private void stopGestureDetection() {
        if (this.mItemTouchHelperGestureListener != null) {
            this.mItemTouchHelperGestureListener.doNotReactToLongPress();
            this.mItemTouchHelperGestureListener = null;
        }
        if (this.mGestureDetector != null) {
            this.mGestureDetector = null;
        }
    }

    private int swipeIfNecessary(RecyclerView.ViewHolder viewHolder) {
        int iCheckVerticalSwipe;
        if (this.mActionState == 2) {
            return 0;
        }
        int movementFlags = this.mCallback.getMovementFlags(this.mRecyclerView, viewHolder);
        int iConvertToAbsoluteDirection = (this.mCallback.convertToAbsoluteDirection(movementFlags, ViewCompat.getLayoutDirection(this.mRecyclerView)) & 65280) >> 8;
        if (iConvertToAbsoluteDirection == 0) {
            return 0;
        }
        int i = (movementFlags & 65280) >> 8;
        if (Math.abs(this.mDx) > Math.abs(this.mDy)) {
            iCheckVerticalSwipe = checkHorizontalSwipe(viewHolder, iConvertToAbsoluteDirection);
            if (iCheckVerticalSwipe <= 0) {
                iCheckVerticalSwipe = checkVerticalSwipe(viewHolder, iConvertToAbsoluteDirection);
                if (iCheckVerticalSwipe <= 0) {
                    return 0;
                }
            } else if ((i & iCheckVerticalSwipe) == 0) {
                return Callback.convertToRelativeDirection(iCheckVerticalSwipe, ViewCompat.getLayoutDirection(this.mRecyclerView));
            }
        } else {
            iCheckVerticalSwipe = checkVerticalSwipe(viewHolder, iConvertToAbsoluteDirection);
            if (iCheckVerticalSwipe <= 0) {
                iCheckVerticalSwipe = checkHorizontalSwipe(viewHolder, iConvertToAbsoluteDirection);
                if (iCheckVerticalSwipe <= 0) {
                    return 0;
                }
                if ((i & iCheckVerticalSwipe) == 0) {
                    return Callback.convertToRelativeDirection(iCheckVerticalSwipe, ViewCompat.getLayoutDirection(this.mRecyclerView));
                }
            }
        }
        return iCheckVerticalSwipe;
    }

    public void attachToRecyclerView(@Nullable RecyclerView recyclerView) {
        if (this.mRecyclerView == recyclerView) {
            return;
        }
        if (this.mRecyclerView != null) {
            destroyCallbacks();
        }
        this.mRecyclerView = recyclerView;
        if (recyclerView != null) {
            Resources resources = recyclerView.getResources();
            this.mSwipeEscapeVelocity = resources.getDimension(R.dimen.item_touch_helper_swipe_escape_velocity);
            this.mMaxSwipeVelocity = resources.getDimension(R.dimen.item_touch_helper_swipe_escape_max_velocity);
            setupCallbacks();
        }
    }

    void checkSelectForSwipe(int i, MotionEvent motionEvent, int i2) {
        RecyclerView.ViewHolder viewHolderFindSwipedView;
        int absoluteMovementFlags;
        if (this.mSelected != null || i != 2 || this.mActionState == 2 || !this.mCallback.isItemViewSwipeEnabled() || this.mRecyclerView.getScrollState() == 1 || (viewHolderFindSwipedView = findSwipedView(motionEvent)) == null || (absoluteMovementFlags = (65280 & this.mCallback.getAbsoluteMovementFlags(this.mRecyclerView, viewHolderFindSwipedView)) >> 8) == 0) {
            return;
        }
        float x = motionEvent.getX(i2);
        float y = motionEvent.getY(i2);
        float f = x - this.mInitialTouchX;
        float f2 = y - this.mInitialTouchY;
        float fAbs = Math.abs(f);
        float fAbs2 = Math.abs(f2);
        if (fAbs >= this.mSlop || fAbs2 >= this.mSlop) {
            if (fAbs > fAbs2) {
                if (f < 0.0f && (absoluteMovementFlags & 4) == 0) {
                    return;
                }
                if (f > 0.0f && (absoluteMovementFlags & 8) == 0) {
                    return;
                }
            } else {
                if (f2 < 0.0f && (absoluteMovementFlags & 1) == 0) {
                    return;
                }
                if (f2 > 0.0f && (absoluteMovementFlags & 2) == 0) {
                    return;
                }
            }
            this.mDy = 0.0f;
            this.mDx = 0.0f;
            this.mActivePointerId = motionEvent.getPointerId(0);
            select(viewHolderFindSwipedView, 1);
        }
    }

    void endRecoverAnimation(RecyclerView.ViewHolder viewHolder, boolean z) {
        for (int size = this.mRecoverAnimations.size() - 1; size >= 0; size--) {
            RecoverAnimation recoverAnimation = this.mRecoverAnimations.get(size);
            if (recoverAnimation.mViewHolder == viewHolder) {
                recoverAnimation.mOverridden |= z;
                if (!recoverAnimation.mEnded) {
                    recoverAnimation.cancel();
                }
                this.mRecoverAnimations.remove(size);
                return;
            }
        }
    }

    RecoverAnimation findAnimation(MotionEvent motionEvent) {
        if (this.mRecoverAnimations.isEmpty()) {
            return null;
        }
        View viewFindChildView = findChildView(motionEvent);
        for (int size = this.mRecoverAnimations.size() - 1; size >= 0; size--) {
            RecoverAnimation recoverAnimation = this.mRecoverAnimations.get(size);
            if (recoverAnimation.mViewHolder.itemView == viewFindChildView) {
                return recoverAnimation;
            }
        }
        return null;
    }

    View findChildView(MotionEvent motionEvent) {
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        if (this.mSelected != null) {
            View view = this.mSelected.itemView;
            if (hitTest(view, x, y, this.mSelectedStartX + this.mDx, this.mSelectedStartY + this.mDy)) {
                return view;
            }
        }
        for (int size = this.mRecoverAnimations.size() - 1; size >= 0; size--) {
            RecoverAnimation recoverAnimation = this.mRecoverAnimations.get(size);
            View view2 = recoverAnimation.mViewHolder.itemView;
            if (hitTest(view2, x, y, recoverAnimation.mX, recoverAnimation.mY)) {
                return view2;
            }
        }
        return this.mRecyclerView.findChildViewUnder(x, y);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        rect.setEmpty();
    }

    boolean hasRunningRecoverAnim() {
        int size = this.mRecoverAnimations.size();
        for (int i = 0; i < size; i++) {
            if (!this.mRecoverAnimations.get(i).mEnded) {
                return true;
            }
        }
        return false;
    }

    void moveIfNecessary(RecyclerView.ViewHolder viewHolder) {
        if (!this.mRecyclerView.isLayoutRequested() && this.mActionState == 2) {
            float moveThreshold = this.mCallback.getMoveThreshold(viewHolder);
            int i = (int) (this.mSelectedStartX + this.mDx);
            int i2 = (int) (this.mSelectedStartY + this.mDy);
            if (Math.abs(i2 - viewHolder.itemView.getTop()) >= viewHolder.itemView.getHeight() * moveThreshold || Math.abs(i - viewHolder.itemView.getLeft()) >= moveThreshold * viewHolder.itemView.getWidth()) {
                List<RecyclerView.ViewHolder> listFindSwapTargets = findSwapTargets(viewHolder);
                if (listFindSwapTargets.size() != 0) {
                    RecyclerView.ViewHolder viewHolderChooseDropTarget = this.mCallback.chooseDropTarget(viewHolder, listFindSwapTargets, i, i2);
                    if (viewHolderChooseDropTarget == null) {
                        this.mSwapTargets.clear();
                        this.mDistances.clear();
                        return;
                    }
                    int absoluteAdapterPosition = viewHolderChooseDropTarget.getAbsoluteAdapterPosition();
                    int absoluteAdapterPosition2 = viewHolder.getAbsoluteAdapterPosition();
                    if (this.mCallback.onMove(this.mRecyclerView, viewHolder, viewHolderChooseDropTarget)) {
                        this.mCallback.onMoved(this.mRecyclerView, viewHolder, absoluteAdapterPosition2, viewHolderChooseDropTarget, absoluteAdapterPosition, i, i2);
                    }
                }
            }
        }
    }

    void obtainVelocityTracker() {
        if (this.mVelocityTracker != null) {
            this.mVelocityTracker.recycle();
        }
        this.mVelocityTracker = VelocityTracker.obtain();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
    public void onChildViewAttachedToWindow(@NonNull View view) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
    public void onChildViewDetachedFromWindow(@NonNull View view) {
        removeChildDrawingOrderCallbackIfNecessary(view);
        RecyclerView.ViewHolder childViewHolder = this.mRecyclerView.getChildViewHolder(view);
        if (childViewHolder == null) {
            return;
        }
        if (this.mSelected != null && childViewHolder == this.mSelected) {
            select(null, 0);
            return;
        }
        endRecoverAnimation(childViewHolder, false);
        if (this.mPendingCleanup.remove(childViewHolder.itemView)) {
            this.mCallback.clearView(this.mRecyclerView, childViewHolder);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
        float f;
        float f2 = 0.0f;
        this.mOverdrawChildPosition = -1;
        if (this.mSelected != null) {
            getSelectedDxDy(this.mTmpPosition);
            f = this.mTmpPosition[0];
            f2 = this.mTmpPosition[1];
        } else {
            f = 0.0f;
        }
        this.mCallback.onDraw(canvas, recyclerView, this.mSelected, this.mRecoverAnimations, this.mActionState, f, f2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void onDrawOver(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
        float f;
        float f2 = 0.0f;
        if (this.mSelected != null) {
            getSelectedDxDy(this.mTmpPosition);
            f = this.mTmpPosition[0];
            f2 = this.mTmpPosition[1];
        } else {
            f = 0.0f;
        }
        this.mCallback.onDrawOver(canvas, recyclerView, this.mSelected, this.mRecoverAnimations, this.mActionState, f, f2);
    }

    void postDispatchSwipe(RecoverAnimation recoverAnimation, int i) {
        this.mRecyclerView.post(new Runnable(this, recoverAnimation, i) { // from class: androidx.recyclerview.widget.ItemTouchHelper.4
            final ItemTouchHelper this$0;
            final RecoverAnimation val$anim;
            final int val$swipeDir;

            {
                this.this$0 = this;
                this.val$anim = recoverAnimation;
                this.val$swipeDir = i;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (this.this$0.mRecyclerView == null || !this.this$0.mRecyclerView.isAttachedToWindow() || this.val$anim.mOverridden || this.val$anim.mViewHolder.getAbsoluteAdapterPosition() == -1) {
                    return;
                }
                RecyclerView.ItemAnimator itemAnimator = this.this$0.mRecyclerView.getItemAnimator();
                if ((itemAnimator == null || !itemAnimator.isRunning(null)) && !this.this$0.hasRunningRecoverAnim()) {
                    this.this$0.mCallback.onSwiped(this.val$anim.mViewHolder, this.val$swipeDir);
                } else {
                    this.this$0.mRecyclerView.post(this);
                }
            }
        });
    }

    void removeChildDrawingOrderCallbackIfNecessary(View view) {
        if (view == this.mOverdrawChild) {
            this.mOverdrawChild = null;
            if (this.mChildDrawingOrderCallback != null) {
                this.mRecyclerView.setChildDrawingOrderCallback(null);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x010e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    boolean scrollIfNecessary() {
        /*
            Method dump skipped, instruction units count: 282
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.ItemTouchHelper.scrollIfNecessary():boolean");
    }

    void select(@Nullable RecyclerView.ViewHolder viewHolder, int i) {
        float fSignum;
        float fSignum2;
        if (viewHolder == this.mSelected && i == this.mActionState) {
            return;
        }
        this.mDragScrollStartTimeInMs = Long.MIN_VALUE;
        int i2 = this.mActionState;
        endRecoverAnimation(viewHolder, true);
        this.mActionState = i;
        if (i == 2) {
            if (viewHolder == null) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{43, 69, 74, 18, 66, 64, 7, 67, 74, 70, 3, 16, 48, 89, 92, 17, 42, 95, 10, 84, 92, 20, 66, 71, 14, 85, 87, 70, 6, 66, 7, 87, 94, 15, 12, 87}, "f09fb0", -4008));
            }
            this.mOverdrawChild = viewHolder.itemView;
            addChildDrawingOrderCallback();
        }
        boolean z = false;
        boolean z2 = false;
        if (this.mSelected != null) {
            RecyclerView.ViewHolder viewHolder2 = this.mSelected;
            if (viewHolder2.itemView.getParent() != null) {
                int iSwipeIfNecessary = i2 == 2 ? 0 : swipeIfNecessary(viewHolder2);
                releaseVelocityTracker();
                switch (iSwipeIfNecessary) {
                    case 1:
                    case 2:
                        fSignum = 0.0f;
                        fSignum2 = Math.signum(this.mDy) * this.mRecyclerView.getHeight();
                        break;
                    case 4:
                    case 8:
                    case 16:
                    case 32:
                        fSignum2 = 0.0f;
                        fSignum = Math.signum(this.mDx) * this.mRecyclerView.getWidth();
                        break;
                    default:
                        fSignum = 0.0f;
                        fSignum2 = 0.0f;
                        break;
                }
                int i3 = i2 == 2 ? 8 : iSwipeIfNecessary > 0 ? 2 : 4;
                getSelectedDxDy(this.mTmpPosition);
                float f = this.mTmpPosition[0];
                float f2 = this.mTmpPosition[1];
                RecoverAnimation recoverAnimation = new RecoverAnimation(this, viewHolder2, i3, i2, f, f2, fSignum, fSignum2, iSwipeIfNecessary, viewHolder2) { // from class: androidx.recyclerview.widget.ItemTouchHelper.3
                    final ItemTouchHelper this$0;
                    final RecyclerView.ViewHolder val$prevSelected;
                    final int val$swipeDir;

                    {
                        this.this$0 = this;
                        this.val$swipeDir = iSwipeIfNecessary;
                        this.val$prevSelected = viewHolder2;
                    }

                    @Override // androidx.recyclerview.widget.ItemTouchHelper.RecoverAnimation, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        super.onAnimationEnd(animator);
                        if (this.mOverridden) {
                            return;
                        }
                        if (this.val$swipeDir <= 0) {
                            this.this$0.mCallback.clearView(this.this$0.mRecyclerView, this.val$prevSelected);
                        } else {
                            this.this$0.mPendingCleanup.add(this.val$prevSelected.itemView);
                            this.mIsPendingCleanup = true;
                            if (this.val$swipeDir > 0) {
                                this.this$0.postDispatchSwipe(this, this.val$swipeDir);
                            }
                        }
                        if (this.this$0.mOverdrawChild == this.val$prevSelected.itemView) {
                            this.this$0.removeChildDrawingOrderCallbackIfNecessary(this.val$prevSelected.itemView);
                        }
                    }
                };
                recoverAnimation.setDuration(this.mCallback.getAnimationDuration(this.mRecyclerView, i3, fSignum - f, fSignum2 - f2));
                this.mRecoverAnimations.add(recoverAnimation);
                recoverAnimation.start();
                z2 = true;
            } else {
                removeChildDrawingOrderCallbackIfNecessary(viewHolder2.itemView);
                this.mCallback.clearView(this.mRecyclerView, viewHolder2);
            }
            this.mSelected = null;
            z = z2;
        }
        if (viewHolder != null) {
            this.mSelectedFlags = (this.mCallback.getAbsoluteMovementFlags(this.mRecyclerView, viewHolder) & ((1 << ((i * 8) + 8)) - 1)) >> (this.mActionState * 8);
            this.mSelectedStartX = viewHolder.itemView.getLeft();
            this.mSelectedStartY = viewHolder.itemView.getTop();
            this.mSelected = viewHolder;
            if (i == 2) {
                this.mSelected.itemView.performHapticFeedback(0);
            }
        }
        ViewParent parent = this.mRecyclerView.getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(this.mSelected != null);
        }
        if (!z) {
            this.mRecyclerView.getLayoutManager().requestSimpleAnimationsInNextLayout();
        }
        this.mCallback.onSelectedChanged(this.mSelected, this.mActionState);
        this.mRecyclerView.invalidate();
    }

    public void startDrag(@NonNull RecyclerView.ViewHolder viewHolder) {
        if (!this.mCallback.hasDragFlag(this.mRecyclerView, viewHolder)) {
            Log.e(TAG, NPStringFog.decode(new byte[]{99, 18, 5, 22, 17, 20, 84, 20, 5, 3, 69, 92, 81, 21, 68, 6, 0, 81, 94, 70, 7, 5, 9, 88, 85, 2, 68, 6, 16, 64, 16, 2, 22, 5, 2, 83, 89, 8, 3, 68, 12, 71, 16, 8, 11, 16, 69, 81, 94, 7, 6, 8, 0, 80}, "0fdde4", -1.1040133E9f));
            return;
        }
        if (viewHolder.itemView.getParent() != this.mRecyclerView) {
            Log.e(TAG, NPStringFog.decode(new byte[]{100, 70, 5, 19, 17, 68, 83, 64, 5, 6, 69, 12, 86, 65, 68, 3, 0, 1, 89, 18, 7, 0, 9, 8, 82, 86, 68, 22, 12, 16, 95, 18, 5, 65, 19, 13, 82, 69, 68, 9, 10, 8, 83, 87, 22, 65, 18, 12, 94, 81, 12, 65, 12, 23, 23, 92, 11, 21, 69, 5, 23, 81, 12, 8, 9, 0, 23, 93, 2, 65, 17, 12, 82, 18, 54, 4, 6, 29, 84, 94, 1, 19, 51, 13, 82, 69, 68, 22, 13, 13, 84, 90, 68, 8, 22, 68, 84, 93, 10, 21, 23, 11, 91, 94, 1, 5, 69, 6, 78, 18, 16, 9, 12, 23, 23, 123, 16, 4, 8, 48, 88, 71, 7, 9, 45, 1, 91, 66, 1, 19, 75}, "72daed", false));
            return;
        }
        obtainVelocityTracker();
        this.mDy = 0.0f;
        this.mDx = 0.0f;
        select(viewHolder, 2);
    }

    public void startSwipe(@NonNull RecyclerView.ViewHolder viewHolder) {
        if (!this.mCallback.hasSwipeFlag(this.mRecyclerView, viewHolder)) {
            Log.e(TAG, NPStringFog.decode(new byte[]{100, 16, 0, 70, 64, 22, 68, 19, 8, 68, 81, 22, 95, 5, 18, 20, 86, 83, 82, 10, 65, 87, 85, 90, 91, 1, 5, 20, 86, 67, 67, 68, 18, 67, 93, 70, 94, 10, 6, 20, 93, 69, 23, 10, 14, 64, 20, 83, 89, 5, 3, 88, 81, 82}, "7da446", -18590));
            return;
        }
        if (viewHolder.itemView.getParent() != this.mRecyclerView) {
            Log.e(TAG, NPStringFog.decode(new byte[]{103, 65, 83, 75, 69, 70, 71, 66, 91, 73, 84, 70, 92, 84, 65, 25, 83, 3, 81, 91, 18, 90, 80, 10, 88, 80, 86, 25, 70, 15, 64, 93, 18, 88, 17, 16, 93, 80, 69, 25, 89, 9, 88, 81, 87, 75, 17, 17, 92, 92, 81, 81, 17, 15, 71, 21, 92, 86, 69, 70, 85, 21, 81, 81, 88, 10, 80, 21, 93, 95, 17, 18, 92, 80, 18, 107, 84, 5, 77, 86, 94, 92, 67, 48, 93, 80, 69, 25, 82, 9, 90, 65, 64, 86, 93, 10, 81, 81, 18, 91, 72, 70, 64, 93, 91, 74, 17, 47, 64, 80, 95, 109, 94, 19, 87, 93, 122, 92, 93, 22, 81, 71, 28}, "45291f", -12326));
            return;
        }
        obtainVelocityTracker();
        this.mDy = 0.0f;
        this.mDx = 0.0f;
        select(viewHolder, 1);
    }

    void updateDxDy(MotionEvent motionEvent, int i, int i2) {
        float x = motionEvent.getX(i2);
        float y = motionEvent.getY(i2);
        this.mDx = x - this.mInitialTouchX;
        this.mDy = y - this.mInitialTouchY;
        if ((i & 4) == 0) {
            this.mDx = Math.max(0.0f, this.mDx);
        }
        if ((i & 8) == 0) {
            this.mDx = Math.min(0.0f, this.mDx);
        }
        if ((i & 1) == 0) {
            this.mDy = Math.max(0.0f, this.mDy);
        }
        if ((i & 2) == 0) {
            this.mDy = Math.min(0.0f, this.mDy);
        }
    }
}
