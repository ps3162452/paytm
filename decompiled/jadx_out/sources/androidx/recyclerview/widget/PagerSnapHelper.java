package androidx.recyclerview.widget;

import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes42.dex */
public class PagerSnapHelper extends SnapHelper {
    private static final int MAX_SCROLL_ON_FLING_DURATION = 100;

    @Nullable
    private OrientationHelper mHorizontalHelper;

    @Nullable
    private OrientationHelper mVerticalHelper;

    private int distanceToCenter(@NonNull View view, OrientationHelper orientationHelper) {
        return (orientationHelper.getDecoratedStart(view) + (orientationHelper.getDecoratedMeasurement(view) / 2)) - (orientationHelper.getStartAfterPadding() + (orientationHelper.getTotalSpace() / 2));
    }

    @Nullable
    private View findCenterView(RecyclerView.LayoutManager layoutManager, OrientationHelper orientationHelper) {
        View view;
        View view2 = null;
        int childCount = layoutManager.getChildCount();
        if (childCount != 0) {
            int startAfterPadding = orientationHelper.getStartAfterPadding();
            int totalSpace = orientationHelper.getTotalSpace() / 2;
            int i = Integer.MAX_VALUE;
            int i2 = 0;
            while (i2 < childCount) {
                View childAt = layoutManager.getChildAt(i2);
                int iAbs = Math.abs((orientationHelper.getDecoratedStart(childAt) + (orientationHelper.getDecoratedMeasurement(childAt) / 2)) - (startAfterPadding + totalSpace));
                if (iAbs < i) {
                    view = childAt;
                } else {
                    iAbs = i;
                    view = view2;
                }
                i2++;
                view2 = view;
                i = iAbs;
            }
        }
        return view2;
    }

    @NonNull
    private OrientationHelper getHorizontalHelper(@NonNull RecyclerView.LayoutManager layoutManager) {
        if (this.mHorizontalHelper == null || this.mHorizontalHelper.mLayoutManager != layoutManager) {
            this.mHorizontalHelper = OrientationHelper.createHorizontalHelper(layoutManager);
        }
        return this.mHorizontalHelper;
    }

    @Nullable
    private OrientationHelper getOrientationHelper(RecyclerView.LayoutManager layoutManager) {
        if (layoutManager.canScrollVertically()) {
            return getVerticalHelper(layoutManager);
        }
        if (layoutManager.canScrollHorizontally()) {
            return getHorizontalHelper(layoutManager);
        }
        return null;
    }

    @NonNull
    private OrientationHelper getVerticalHelper(@NonNull RecyclerView.LayoutManager layoutManager) {
        if (this.mVerticalHelper == null || this.mVerticalHelper.mLayoutManager != layoutManager) {
            this.mVerticalHelper = OrientationHelper.createVerticalHelper(layoutManager);
        }
        return this.mVerticalHelper;
    }

    private boolean isForwardFling(RecyclerView.LayoutManager layoutManager, int i, int i2) {
        if (layoutManager.canScrollHorizontally()) {
            if (i <= 0) {
                return false;
            }
        } else if (i2 <= 0) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private boolean isReverseLayout(RecyclerView.LayoutManager layoutManager) {
        PointF pointFComputeScrollVectorForPosition;
        int itemCount = layoutManager.getItemCount();
        if (!(layoutManager instanceof RecyclerView.SmoothScroller.ScrollVectorProvider) || (pointFComputeScrollVectorForPosition = ((RecyclerView.SmoothScroller.ScrollVectorProvider) layoutManager).computeScrollVectorForPosition(itemCount - 1)) == null) {
            return false;
        }
        return pointFComputeScrollVectorForPosition.x < 0.0f || pointFComputeScrollVectorForPosition.y < 0.0f;
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    @Nullable
    public int[] calculateDistanceToFinalSnap(@NonNull RecyclerView.LayoutManager layoutManager, @NonNull View view) {
        int[] iArr = new int[2];
        if (layoutManager.canScrollHorizontally()) {
            iArr[0] = distanceToCenter(view, getHorizontalHelper(layoutManager));
        } else {
            iArr[0] = 0;
        }
        if (layoutManager.canScrollVertically()) {
            iArr[1] = distanceToCenter(view, getVerticalHelper(layoutManager));
        } else {
            iArr[1] = 0;
        }
        return iArr;
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    @Nullable
    protected RecyclerView.SmoothScroller createScroller(@NonNull RecyclerView.LayoutManager layoutManager) {
        if (layoutManager instanceof RecyclerView.SmoothScroller.ScrollVectorProvider) {
            return new LinearSmoothScroller(this, this.mRecyclerView.getContext()) { // from class: androidx.recyclerview.widget.PagerSnapHelper.1
                final PagerSnapHelper this$0;

                {
                    this.this$0 = this;
                }

                @Override // androidx.recyclerview.widget.LinearSmoothScroller
                protected float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
                    return 100.0f / displayMetrics.densityDpi;
                }

                @Override // androidx.recyclerview.widget.LinearSmoothScroller
                protected int calculateTimeForScrolling(int i) {
                    return Math.min(100, super.calculateTimeForScrolling(i));
                }

                @Override // androidx.recyclerview.widget.LinearSmoothScroller, androidx.recyclerview.widget.RecyclerView.SmoothScroller
                protected void onTargetFound(View view, RecyclerView.State state, RecyclerView.SmoothScroller.Action action) {
                    int[] iArrCalculateDistanceToFinalSnap = this.this$0.calculateDistanceToFinalSnap(this.this$0.mRecyclerView.getLayoutManager(), view);
                    int i = iArrCalculateDistanceToFinalSnap[0];
                    int i2 = iArrCalculateDistanceToFinalSnap[1];
                    int iCalculateTimeForDeceleration = calculateTimeForDeceleration(Math.max(Math.abs(i), Math.abs(i2)));
                    if (iCalculateTimeForDeceleration > 0) {
                        action.update(i, i2, iCalculateTimeForDeceleration, this.mDecelerateInterpolator);
                    }
                }
            };
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    @Nullable
    public View findSnapView(RecyclerView.LayoutManager layoutManager) {
        if (layoutManager.canScrollVertically()) {
            return findCenterView(layoutManager, getVerticalHelper(layoutManager));
        }
        if (layoutManager.canScrollHorizontally()) {
            return findCenterView(layoutManager, getHorizontalHelper(layoutManager));
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    public int findTargetSnapPosition(RecyclerView.LayoutManager layoutManager, int i, int i2) {
        OrientationHelper orientationHelper;
        View view;
        View view2 = null;
        int itemCount = layoutManager.getItemCount();
        if (itemCount == 0 || (orientationHelper = getOrientationHelper(layoutManager)) == null) {
            return -1;
        }
        int i3 = Integer.MIN_VALUE;
        int i4 = Integer.MAX_VALUE;
        int childCount = layoutManager.getChildCount();
        int i5 = 0;
        View view3 = null;
        while (i5 < childCount) {
            View childAt = layoutManager.getChildAt(i5);
            if (childAt == null) {
                view = view2;
            } else {
                int iDistanceToCenter = distanceToCenter(childAt, orientationHelper);
                if (iDistanceToCenter <= 0 && iDistanceToCenter > i3) {
                    i3 = iDistanceToCenter;
                    view3 = childAt;
                }
                if (iDistanceToCenter < 0 || iDistanceToCenter >= i4) {
                    view = view2;
                } else {
                    i4 = iDistanceToCenter;
                    view = childAt;
                }
            }
            i5++;
            view2 = view;
        }
        boolean zIsForwardFling = isForwardFling(layoutManager, i, i2);
        if (zIsForwardFling && view2 != null) {
            return layoutManager.getPosition(view2);
        }
        if (!zIsForwardFling && view3 != null) {
            return layoutManager.getPosition(view3);
        }
        if (zIsForwardFling) {
            view2 = view3;
        }
        if (view2 == null) {
            return -1;
        }
        int position = (isReverseLayout(layoutManager) == zIsForwardFling ? -1 : 1) + layoutManager.getPosition(view2);
        if (position < 0 || position >= itemCount) {
            return -1;
        }
        return position;
    }
}
