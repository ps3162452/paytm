package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import n.NPStringFog;

/* JADX INFO: loaded from: classes42.dex */
class LayoutState {
    static final int INVALID_LAYOUT = Integer.MIN_VALUE;
    static final int ITEM_DIRECTION_HEAD = -1;
    static final int ITEM_DIRECTION_TAIL = 1;
    static final int LAYOUT_END = 1;
    static final int LAYOUT_START = -1;
    int mAvailable;
    int mCurrentPosition;
    boolean mInfinite;
    int mItemDirection;
    int mLayoutDirection;
    boolean mStopInFocusable;
    boolean mRecycle = true;
    int mStartLine = 0;
    int mEndLine = 0;

    LayoutState() {
    }

    boolean hasMore(RecyclerView.State state) {
        return this.mCurrentPosition >= 0 && this.mCurrentPosition < state.getItemCount();
    }

    View next(RecyclerView.Recycler recycler) {
        View viewForPosition = recycler.getViewForPosition(this.mCurrentPosition);
        this.mCurrentPosition += this.mItemDirection;
        return viewForPosition;
    }

    public String toString() {
        return NPStringFog.decode(new byte[]{122, 2, 76, 95, 69, 22, 101, 23, 84, 68, 85, 25, 91, 34, 67, 81, 89, 14, 87, 1, 89, 85, 13}, "6c500b", -4.507504E8f) + this.mAvailable + NPStringFog.decode(new byte[]{31, 18, 15, 37, 67, 70, 65, 87, 12, 18, 102, 91, 64, 91, 22, 15, 89, 90, 14}, "32bf64", -2023736345L) + this.mCurrentPosition + NPStringFog.decode(new byte[]{74, 16, 12, 44, 65, 82, 11, 116, 8, 23, 80, 84, 18, 89, 14, 11, 8}, "f0ae57", true) + this.mItemDirection + NPStringFog.decode(new byte[]{73, 21, 9, 124, 5, 64, 10, 64, 16, 116, 13, 75, 0, 86, 16, 89, 11, 87, 88}, "e5d0d9", true) + this.mLayoutDirection + NPStringFog.decode(new byte[]{20, 20, 88, 97, 16, 86, 74, 64, 121, 91, 10, 82, 5}, "8452d7", -1.07833836E9d) + this.mStartLine + NPStringFog.decode(new byte[]{24, 21, 93, 119, 8, 85, 120, 92, 94, 87, 91}, "4502f1", true) + this.mEndLine + '}';
    }
}
