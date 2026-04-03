package androidx.viewpager2.widget;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import java.util.Locale;
import n.NPStringFog;

/* JADX INFO: loaded from: classes52.dex */
final class ScrollEventAdapter extends RecyclerView.OnScrollListener {
    private static final int NO_POSITION = -1;
    private static final int STATE_IDLE = 0;
    private static final int STATE_IN_PROGRESS_FAKE_DRAG = 4;
    private static final int STATE_IN_PROGRESS_IMMEDIATE_SCROLL = 3;
    private static final int STATE_IN_PROGRESS_MANUAL_DRAG = 1;
    private static final int STATE_IN_PROGRESS_SMOOTH_SCROLL = 2;
    private int mAdapterState;
    private ViewPager2.OnPageChangeCallback mCallback;
    private boolean mDataSetChangeHappened;
    private boolean mDispatchSelected;
    private int mDragStartPosition;
    private boolean mFakeDragging;
    private final LinearLayoutManager mLayoutManager;
    private final RecyclerView mRecyclerView;
    private boolean mScrollHappened;
    private int mScrollState;
    private ScrollEventValues mScrollValues;
    private int mTarget;
    private final ViewPager2 mViewPager;

    private static final class ScrollEventValues {
        float mOffset;
        int mOffsetPx;
        int mPosition;

        ScrollEventValues() {
        }

        void reset() {
            this.mPosition = -1;
            this.mOffset = 0.0f;
            this.mOffsetPx = 0;
        }
    }

    ScrollEventAdapter(ViewPager2 viewPager2) {
        this.mViewPager = viewPager2;
        RecyclerView recyclerView = viewPager2.mRecyclerView;
        this.mRecyclerView = recyclerView;
        this.mLayoutManager = (LinearLayoutManager) recyclerView.getLayoutManager();
        this.mScrollValues = new ScrollEventValues();
        resetState();
    }

    private void dispatchScrolled(int i, float f, int i2) {
        ViewPager2.OnPageChangeCallback onPageChangeCallback = this.mCallback;
        if (onPageChangeCallback != null) {
            onPageChangeCallback.onPageScrolled(i, f, i2);
        }
    }

    private void dispatchSelected(int i) {
        ViewPager2.OnPageChangeCallback onPageChangeCallback = this.mCallback;
        if (onPageChangeCallback != null) {
            onPageChangeCallback.onPageSelected(i);
        }
    }

    private void dispatchStateChanged(int i) {
        if ((this.mAdapterState == 3 && this.mScrollState == 0) || this.mScrollState == i) {
            return;
        }
        this.mScrollState = i;
        ViewPager2.OnPageChangeCallback onPageChangeCallback = this.mCallback;
        if (onPageChangeCallback != null) {
            onPageChangeCallback.onPageScrollStateChanged(i);
        }
    }

    private int getPosition() {
        return this.mLayoutManager.findFirstVisibleItemPosition();
    }

    private boolean isInAnyDraggingState() {
        int i = this.mAdapterState;
        return i == 1 || i == 4;
    }

    private void resetState() {
        this.mAdapterState = 0;
        this.mScrollState = 0;
        this.mScrollValues.reset();
        this.mDragStartPosition = -1;
        this.mTarget = -1;
        this.mDispatchSelected = false;
        this.mScrollHappened = false;
        this.mFakeDragging = false;
        this.mDataSetChangeHappened = false;
    }

    private void startDrag(boolean z) {
        this.mFakeDragging = z;
        this.mAdapterState = z ? 4 : 1;
        int i = this.mTarget;
        if (i != -1) {
            this.mDragStartPosition = i;
            this.mTarget = -1;
        } else if (this.mDragStartPosition == -1) {
            this.mDragStartPosition = getPosition();
        }
        dispatchStateChanged(1);
    }

    private void updateScrollEventValues() {
        int i;
        int i2;
        int i3;
        int i4;
        int top;
        int i5;
        ScrollEventValues scrollEventValues = this.mScrollValues;
        scrollEventValues.mPosition = this.mLayoutManager.findFirstVisibleItemPosition();
        if (scrollEventValues.mPosition == -1) {
            scrollEventValues.reset();
            return;
        }
        View viewFindViewByPosition = this.mLayoutManager.findViewByPosition(scrollEventValues.mPosition);
        if (viewFindViewByPosition == null) {
            scrollEventValues.reset();
            return;
        }
        int leftDecorationWidth = this.mLayoutManager.getLeftDecorationWidth(viewFindViewByPosition);
        int rightDecorationWidth = this.mLayoutManager.getRightDecorationWidth(viewFindViewByPosition);
        int topDecorationHeight = this.mLayoutManager.getTopDecorationHeight(viewFindViewByPosition);
        int bottomDecorationHeight = this.mLayoutManager.getBottomDecorationHeight(viewFindViewByPosition);
        ViewGroup.LayoutParams layoutParams = viewFindViewByPosition.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            int i6 = leftDecorationWidth + marginLayoutParams.leftMargin;
            int i7 = rightDecorationWidth + marginLayoutParams.rightMargin;
            int i8 = topDecorationHeight + marginLayoutParams.topMargin;
            i = marginLayoutParams.bottomMargin + bottomDecorationHeight;
            i2 = i8;
            i3 = i7;
            i4 = i6;
        } else {
            i = bottomDecorationHeight;
            i2 = topDecorationHeight;
            i3 = rightDecorationWidth;
            i4 = leftDecorationWidth;
        }
        int height = viewFindViewByPosition.getHeight();
        int width = viewFindViewByPosition.getWidth();
        if (this.mLayoutManager.getOrientation() == 0) {
            i5 = width + i4 + i3;
            top = (viewFindViewByPosition.getLeft() - i4) - this.mRecyclerView.getPaddingLeft();
            if (this.mViewPager.isRtl()) {
                top = -top;
            }
        } else {
            int i9 = height + i2 + i;
            top = (viewFindViewByPosition.getTop() - i2) - this.mRecyclerView.getPaddingTop();
            i5 = i9;
        }
        scrollEventValues.mOffsetPx = -top;
        if (scrollEventValues.mOffsetPx >= 0) {
            scrollEventValues.mOffset = i5 == 0 ? 0.0f : scrollEventValues.mOffsetPx / i5;
        } else {
            if (!new AnimateLayoutChangeDetector(this.mLayoutManager).mayHaveInterferingAnimations()) {
                throw new IllegalStateException(String.format(Locale.US, NPStringFog.decode(new byte[]{51, 89, 81, 86, 70, 7, 2, 86, 22, 92, 8, 8, 26, 24, 84, 86, 70, 11, 5, 94, 69, 86, 18, 68, 1, 65, 22, 82, 70, 20, 12, 75, 95, 71, 15, 18, 6, 24, 87, 94, 9, 17, 13, 76, 26, 19, 8, 11, 23, 24, 84, 74, 70, 65, 7}, "c863fd", false), Integer.valueOf(scrollEventValues.mOffsetPx)));
            }
            throw new IllegalStateException(NPStringFog.decode(new byte[]{102, 85, 3, 80, 16, 74, 31, 20, 7, 90, 86, 77, 87, 93, 10, 21, 89, 25, 96, 93, 1, 66, 127, 75, 89, 65, 20, 21, 79, 80, 66, 92, 68, 84, 24, 117, 87, 77, 11, 64, 76, 109, 68, 85, 10, 70, 81, 77, 95, 91, 10, 21, 16, 86, 68, 20, 5, 91, 81, 84, 87, 64, 1, 121, 89, 64, 89, 65, 16, 118, 80, 88, 88, 83, 1, 70, 5, 27, 66, 70, 17, 80, 26, 16, 26, 20, 19, 93, 81, 90, 94, 20, 13, 91, 76, 92, 68, 82, 1, 71, 93, 74, 22, 67, 13, 65, 80, 25, 66, 92, 1, 21, 75, 90, 68, 91, 8, 89, 81, 87, 81, 20, 5, 91, 81, 84, 87, 64, 13, 90, 86, 23, 22, 121, 5, 94, 93, 25, 69, 65, 22, 80, 24, 77, 89, 20, 7, 84, 84, 85, 22, 83, 1, 65, 116, 88, 79, 91, 17, 65, 108, 75, 87, 90, 23, 92, 76, 80, 89, 90, 76, 28, 22, 74, 83, 64, 37, 91, 81, 84, 87, 64, 1, 101, 89, 75, 83, 90, 16, 125, 81, 92, 68, 85, 22, 86, 80, 64, 30, 82, 5, 89, 75, 92, 31, 20, 11, 91, 24, 88, 90, 88, 68, 99, 81, 92, 65, 115, 22, 90, 77, 73, 69, 20, 19, 92, 76, 81, 22, 85, 68, 121, 89, 64, 89, 65, 16, 97, 74, 88, 88, 71, 13, 65, 81, 86, 88, 20, 6, 80, 94, 86, 68, 81, 68, 84, 86, 25, 87, 90, 13, 88, 89, 77, 95, 91, 10, 21, 81, 74, 22, 71, 16, 84, 74, 77, 83, 80, 74}, "64d589", true));
        }
    }

    double getRelativeScrollPosition() {
        updateScrollEventValues();
        double d = this.mScrollValues.mPosition;
        double d2 = this.mScrollValues.mOffset;
        Double.isNaN(d);
        Double.isNaN(d2);
        return d + d2;
    }

    int getScrollState() {
        return this.mScrollState;
    }

    boolean isDragging() {
        return this.mScrollState == 1;
    }

    boolean isFakeDragging() {
        return this.mFakeDragging;
    }

    boolean isIdle() {
        return this.mScrollState == 0;
    }

    void notifyBeginFakeDrag() {
        this.mAdapterState = 4;
        startDrag(true);
    }

    void notifyDataSetChangeHappened() {
        this.mDataSetChangeHappened = true;
    }

    void notifyEndFakeDrag() {
        if (!isDragging() || this.mFakeDragging) {
            this.mFakeDragging = false;
            updateScrollEventValues();
            if (this.mScrollValues.mOffsetPx != 0) {
                dispatchStateChanged(2);
                return;
            }
            if (this.mScrollValues.mPosition != this.mDragStartPosition) {
                dispatchSelected(this.mScrollValues.mPosition);
            }
            dispatchStateChanged(0);
            resetState();
        }
    }

    void notifyProgrammaticScroll(int i, boolean z) {
        this.mAdapterState = z ? 2 : 3;
        this.mFakeDragging = false;
        boolean z2 = this.mTarget != i;
        this.mTarget = i;
        dispatchStateChanged(2);
        if (z2) {
            dispatchSelected(i);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    public void onScrollStateChanged(RecyclerView recyclerView, int i) {
        boolean z = true;
        if (!(this.mAdapterState == 1 && this.mScrollState == 1) && i == 1) {
            startDrag(false);
            return;
        }
        if (isInAnyDraggingState() && i == 2) {
            if (this.mScrollHappened) {
                dispatchStateChanged(2);
                this.mDispatchSelected = true;
                return;
            }
            return;
        }
        if (isInAnyDraggingState() && i == 0) {
            updateScrollEventValues();
            if (this.mScrollHappened) {
                if (this.mScrollValues.mOffsetPx != 0) {
                    z = false;
                } else if (this.mDragStartPosition != this.mScrollValues.mPosition) {
                    dispatchSelected(this.mScrollValues.mPosition);
                }
            } else if (this.mScrollValues.mPosition != -1) {
                dispatchScrolled(this.mScrollValues.mPosition, 0.0f, 0);
            }
            if (z) {
                dispatchStateChanged(0);
                resetState();
            }
        }
        if (this.mAdapterState == 2 && i == 0 && this.mDataSetChangeHappened) {
            updateScrollEventValues();
            if (this.mScrollValues.mOffsetPx == 0) {
                if (this.mTarget != this.mScrollValues.mPosition) {
                    dispatchSelected(this.mScrollValues.mPosition == -1 ? 0 : this.mScrollValues.mPosition);
                }
                dispatchStateChanged(0);
                resetState();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x001d  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0020  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0066  */
    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onScrolled(androidx.recyclerview.widget.RecyclerView r7, int r8, int r9) {
        /*
            r6 = this;
            r5 = -1
            r1 = 1
            r2 = 0
            r6.mScrollHappened = r1
            r6.updateScrollEventValues()
            boolean r0 = r6.mDispatchSelected
            if (r0 == 0) goto L6b
            r6.mDispatchSelected = r2
            if (r9 > 0) goto L1d
            if (r9 != 0) goto L64
            if (r8 >= 0) goto L62
            r0 = r1
        L15:
            androidx.viewpager2.widget.ViewPager2 r3 = r6.mViewPager
            boolean r3 = r3.isRtl()
            if (r0 != r3) goto L64
        L1d:
            r0 = r1
        L1e:
            if (r0 == 0) goto L66
            androidx.viewpager2.widget.ScrollEventAdapter$ScrollEventValues r0 = r6.mScrollValues
            int r0 = r0.mOffsetPx
            if (r0 == 0) goto L66
            androidx.viewpager2.widget.ScrollEventAdapter$ScrollEventValues r0 = r6.mScrollValues
            int r0 = r0.mPosition
            int r0 = r0 + 1
        L2c:
            r6.mTarget = r0
            int r3 = r6.mDragStartPosition
            if (r3 == r0) goto L35
            r6.dispatchSelected(r0)
        L35:
            androidx.viewpager2.widget.ScrollEventAdapter$ScrollEventValues r0 = r6.mScrollValues
            int r0 = r0.mPosition
            if (r0 != r5) goto L7a
            r0 = r2
        L3c:
            androidx.viewpager2.widget.ScrollEventAdapter$ScrollEventValues r3 = r6.mScrollValues
            float r3 = r3.mOffset
            androidx.viewpager2.widget.ScrollEventAdapter$ScrollEventValues r4 = r6.mScrollValues
            int r4 = r4.mOffsetPx
            r6.dispatchScrolled(r0, r3, r4)
            androidx.viewpager2.widget.ScrollEventAdapter$ScrollEventValues r0 = r6.mScrollValues
            int r0 = r0.mPosition
            int r3 = r6.mTarget
            if (r0 == r3) goto L51
            if (r3 != r5) goto L61
        L51:
            androidx.viewpager2.widget.ScrollEventAdapter$ScrollEventValues r0 = r6.mScrollValues
            int r0 = r0.mOffsetPx
            if (r0 != 0) goto L61
            int r0 = r6.mScrollState
            if (r0 == r1) goto L61
            r6.dispatchStateChanged(r2)
            r6.resetState()
        L61:
            return
        L62:
            r0 = r2
            goto L15
        L64:
            r0 = r2
            goto L1e
        L66:
            androidx.viewpager2.widget.ScrollEventAdapter$ScrollEventValues r0 = r6.mScrollValues
            int r0 = r0.mPosition
            goto L2c
        L6b:
            int r0 = r6.mAdapterState
            if (r0 != 0) goto L35
            androidx.viewpager2.widget.ScrollEventAdapter$ScrollEventValues r0 = r6.mScrollValues
            int r0 = r0.mPosition
            if (r0 != r5) goto L76
            r0 = r2
        L76:
            r6.dispatchSelected(r0)
            goto L35
        L7a:
            androidx.viewpager2.widget.ScrollEventAdapter$ScrollEventValues r0 = r6.mScrollValues
            int r0 = r0.mPosition
            goto L3c
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager2.widget.ScrollEventAdapter.onScrolled(androidx.recyclerview.widget.RecyclerView, int, int):void");
    }

    void setOnPageChangeCallback(ViewPager2.OnPageChangeCallback onPageChangeCallback) {
        this.mCallback = onPageChangeCallback;
    }
}
