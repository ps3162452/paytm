package androidx.recyclerview.widget;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import n.NPStringFog;

/* JADX INFO: loaded from: classes42.dex */
public abstract class OrientationHelper {
    public static final int HORIZONTAL = 0;
    private static final int INVALID_SIZE = Integer.MIN_VALUE;
    public static final int VERTICAL = 1;
    private int mLastTotalSpace;
    protected final RecyclerView.LayoutManager mLayoutManager;
    final Rect mTmpRect;

    private OrientationHelper(RecyclerView.LayoutManager layoutManager) {
        this.mLastTotalSpace = Integer.MIN_VALUE;
        this.mTmpRect = new Rect();
        this.mLayoutManager = layoutManager;
    }

    public static OrientationHelper createHorizontalHelper(RecyclerView.LayoutManager layoutManager) {
        return new OrientationHelper(layoutManager) { // from class: androidx.recyclerview.widget.OrientationHelper.1
            @Override // androidx.recyclerview.widget.OrientationHelper
            public int getDecoratedEnd(View view) {
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                return layoutParams.rightMargin + this.mLayoutManager.getDecoratedRight(view);
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public int getDecoratedMeasurement(View view) {
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                return layoutParams.rightMargin + this.mLayoutManager.getDecoratedMeasuredWidth(view) + layoutParams.leftMargin;
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public int getDecoratedMeasurementInOther(View view) {
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                return layoutParams.bottomMargin + this.mLayoutManager.getDecoratedMeasuredHeight(view) + layoutParams.topMargin;
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public int getDecoratedStart(View view) {
                return this.mLayoutManager.getDecoratedLeft(view) - ((RecyclerView.LayoutParams) view.getLayoutParams()).leftMargin;
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public int getEnd() {
                return this.mLayoutManager.getWidth();
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public int getEndAfterPadding() {
                return this.mLayoutManager.getWidth() - this.mLayoutManager.getPaddingRight();
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public int getEndPadding() {
                return this.mLayoutManager.getPaddingRight();
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public int getMode() {
                return this.mLayoutManager.getWidthMode();
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public int getModeInOther() {
                return this.mLayoutManager.getHeightMode();
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public int getStartAfterPadding() {
                return this.mLayoutManager.getPaddingLeft();
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public int getTotalSpace() {
                return (this.mLayoutManager.getWidth() - this.mLayoutManager.getPaddingLeft()) - this.mLayoutManager.getPaddingRight();
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public int getTransformedEndWithDecoration(View view) {
                this.mLayoutManager.getTransformedBoundingBox(view, true, this.mTmpRect);
                return this.mTmpRect.right;
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public int getTransformedStartWithDecoration(View view) {
                this.mLayoutManager.getTransformedBoundingBox(view, true, this.mTmpRect);
                return this.mTmpRect.left;
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public void offsetChild(View view, int i) {
                view.offsetLeftAndRight(i);
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public void offsetChildren(int i) {
                this.mLayoutManager.offsetChildrenHorizontal(i);
            }
        };
    }

    public static OrientationHelper createOrientationHelper(RecyclerView.LayoutManager layoutManager, int i) {
        switch (i) {
            case 0:
                return createHorizontalHelper(layoutManager);
            case 1:
                return createVerticalHelper(layoutManager);
            default:
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{8, 8, 18, 83, 84, 8, 5, 70, 11, 64, 81, 4, 15, 18, 5, 70, 81, 14, 15}, "afd28a", false));
        }
    }

    public static OrientationHelper createVerticalHelper(RecyclerView.LayoutManager layoutManager) {
        return new OrientationHelper(layoutManager) { // from class: androidx.recyclerview.widget.OrientationHelper.2
            @Override // androidx.recyclerview.widget.OrientationHelper
            public int getDecoratedEnd(View view) {
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                return layoutParams.bottomMargin + this.mLayoutManager.getDecoratedBottom(view);
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public int getDecoratedMeasurement(View view) {
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                return layoutParams.bottomMargin + this.mLayoutManager.getDecoratedMeasuredHeight(view) + layoutParams.topMargin;
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public int getDecoratedMeasurementInOther(View view) {
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                return layoutParams.rightMargin + this.mLayoutManager.getDecoratedMeasuredWidth(view) + layoutParams.leftMargin;
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public int getDecoratedStart(View view) {
                return this.mLayoutManager.getDecoratedTop(view) - ((RecyclerView.LayoutParams) view.getLayoutParams()).topMargin;
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public int getEnd() {
                return this.mLayoutManager.getHeight();
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public int getEndAfterPadding() {
                return this.mLayoutManager.getHeight() - this.mLayoutManager.getPaddingBottom();
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public int getEndPadding() {
                return this.mLayoutManager.getPaddingBottom();
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public int getMode() {
                return this.mLayoutManager.getHeightMode();
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public int getModeInOther() {
                return this.mLayoutManager.getWidthMode();
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public int getStartAfterPadding() {
                return this.mLayoutManager.getPaddingTop();
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public int getTotalSpace() {
                return (this.mLayoutManager.getHeight() - this.mLayoutManager.getPaddingTop()) - this.mLayoutManager.getPaddingBottom();
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public int getTransformedEndWithDecoration(View view) {
                this.mLayoutManager.getTransformedBoundingBox(view, true, this.mTmpRect);
                return this.mTmpRect.bottom;
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public int getTransformedStartWithDecoration(View view) {
                this.mLayoutManager.getTransformedBoundingBox(view, true, this.mTmpRect);
                return this.mTmpRect.top;
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public void offsetChild(View view, int i) {
                view.offsetTopAndBottom(i);
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public void offsetChildren(int i) {
                this.mLayoutManager.offsetChildrenVertical(i);
            }
        };
    }

    public abstract int getDecoratedEnd(View view);

    public abstract int getDecoratedMeasurement(View view);

    public abstract int getDecoratedMeasurementInOther(View view);

    public abstract int getDecoratedStart(View view);

    public abstract int getEnd();

    public abstract int getEndAfterPadding();

    public abstract int getEndPadding();

    public RecyclerView.LayoutManager getLayoutManager() {
        return this.mLayoutManager;
    }

    public abstract int getMode();

    public abstract int getModeInOther();

    public abstract int getStartAfterPadding();

    public abstract int getTotalSpace();

    public int getTotalSpaceChange() {
        if (Integer.MIN_VALUE == this.mLastTotalSpace) {
            return 0;
        }
        return getTotalSpace() - this.mLastTotalSpace;
    }

    public abstract int getTransformedEndWithDecoration(View view);

    public abstract int getTransformedStartWithDecoration(View view);

    public abstract void offsetChild(View view, int i);

    public abstract void offsetChildren(int i);

    public void onLayoutComplete() {
        this.mLastTotalSpace = getTotalSpace();
    }
}
