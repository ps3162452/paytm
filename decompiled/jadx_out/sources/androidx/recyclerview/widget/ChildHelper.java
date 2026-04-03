package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;
import n.NPStringFog;

/* JADX INFO: loaded from: classes42.dex */
class ChildHelper {
    private static final boolean DEBUG = false;
    private static final String TAG = NPStringFog.decode(new byte[]{34, 90, 81, 88, 6, 74, 4, 92, 112, 81, 14, 72, 4, 64}, "a284b8", 1898281575L);
    final Callback mCallback;
    final Bucket mBucket = new Bucket();
    final List<View> mHiddenViews = new ArrayList();

    static class Bucket {
        static final int BITS_PER_WORD = 64;
        static final long LAST_BIT = Long.MIN_VALUE;
        long mData = 0;
        Bucket mNext;

        Bucket() {
        }

        private void ensureNext() {
            if (this.mNext == null) {
                this.mNext = new Bucket();
            }
        }

        void clear(int i) {
            if (i < 64) {
                this.mData &= (1 << i) ^ (-1);
            } else if (this.mNext != null) {
                this.mNext.clear(i - 64);
            }
        }

        int countOnesBefore(int i) {
            return this.mNext == null ? i >= 64 ? Long.bitCount(this.mData) : Long.bitCount(this.mData & ((1 << i) - 1)) : i < 64 ? Long.bitCount(this.mData & ((1 << i) - 1)) : this.mNext.countOnesBefore(i - 64) + Long.bitCount(this.mData);
        }

        boolean get(int i) {
            if (i < 64) {
                return (this.mData & (1 << i)) != 0;
            }
            ensureNext();
            return this.mNext.get(i - 64);
        }

        void insert(int i, boolean z) {
            if (i >= 64) {
                ensureNext();
                this.mNext.insert(i - 64, z);
                return;
            }
            boolean z2 = (this.mData & LAST_BIT) != 0;
            long j = (1 << i) - 1;
            this.mData = (((j ^ (-1)) & this.mData) << 1) | (this.mData & j);
            if (z) {
                set(i);
            } else {
                clear(i);
            }
            if (z2 || this.mNext != null) {
                ensureNext();
                this.mNext.insert(0, z2);
            }
        }

        boolean remove(int i) {
            if (i >= 64) {
                ensureNext();
                return this.mNext.remove(i - 64);
            }
            long j = 1 << i;
            boolean z = (this.mData & j) != 0;
            this.mData &= (-1) ^ j;
            long j2 = j - 1;
            this.mData = Long.rotateRight((j2 ^ (-1)) & this.mData, 1) | (this.mData & j2);
            if (this.mNext == null) {
                return z;
            }
            if (this.mNext.get(0)) {
                set(63);
            }
            this.mNext.remove(0);
            return z;
        }

        void reset() {
            this.mData = 0L;
            if (this.mNext != null) {
                this.mNext.reset();
            }
        }

        void set(int i) {
            if (i < 64) {
                this.mData |= 1 << i;
            } else {
                ensureNext();
                this.mNext.set(i - 64);
            }
        }

        public String toString() {
            return this.mNext == null ? Long.toBinaryString(this.mData) : this.mNext.toString() + NPStringFog.decode(new byte[]{75, 25}, "3a8e8d", false, true) + Long.toBinaryString(this.mData);
        }
    }

    interface Callback {
        void addView(View view, int i);

        void attachViewToParent(View view, int i, ViewGroup.LayoutParams layoutParams);

        void detachViewFromParent(int i);

        View getChildAt(int i);

        int getChildCount();

        RecyclerView.ViewHolder getChildViewHolder(View view);

        int indexOfChild(View view);

        void onEnteredHiddenState(View view);

        void onLeftHiddenState(View view);

        void removeAllViews();

        void removeViewAt(int i);
    }

    ChildHelper(Callback callback) {
        this.mCallback = callback;
    }

    private int getOffset(int i) {
        int i2 = -1;
        if (i >= 0) {
            int childCount = this.mCallback.getChildCount();
            int i3 = i;
            while (true) {
                if (i3 >= childCount) {
                    break;
                }
                int iCountOnesBefore = i - (i3 - this.mBucket.countOnesBefore(i3));
                if (iCountOnesBefore == 0) {
                    i2 = i3;
                    while (this.mBucket.get(i2)) {
                        i2++;
                    }
                } else {
                    i3 += iCountOnesBefore;
                }
            }
        }
        return i2;
    }

    private void hideViewInternal(View view) {
        this.mHiddenViews.add(view);
        this.mCallback.onEnteredHiddenState(view);
    }

    private boolean unhideViewInternal(View view) {
        if (!this.mHiddenViews.remove(view)) {
            return false;
        }
        this.mCallback.onLeftHiddenState(view);
        return true;
    }

    void addView(View view, int i, boolean z) {
        int childCount = i < 0 ? this.mCallback.getChildCount() : getOffset(i);
        this.mBucket.insert(childCount, z);
        if (z) {
            hideViewInternal(view);
        }
        this.mCallback.addView(view, childCount);
    }

    void addView(View view, boolean z) {
        addView(view, -1, z);
    }

    void attachViewToParent(View view, int i, ViewGroup.LayoutParams layoutParams, boolean z) {
        int childCount = i < 0 ? this.mCallback.getChildCount() : getOffset(i);
        this.mBucket.insert(childCount, z);
        if (z) {
            hideViewInternal(view);
        }
        this.mCallback.attachViewToParent(view, childCount, layoutParams);
    }

    void detachViewFromParent(int i) {
        int offset = getOffset(i);
        this.mBucket.remove(offset);
        this.mCallback.detachViewFromParent(offset);
    }

    View findHiddenNonRemovedView(int i) {
        int size = this.mHiddenViews.size();
        for (int i2 = 0; i2 < size; i2++) {
            View view = this.mHiddenViews.get(i2);
            RecyclerView.ViewHolder childViewHolder = this.mCallback.getChildViewHolder(view);
            if (childViewHolder.getLayoutPosition() == i && !childViewHolder.isInvalid() && !childViewHolder.isRemoved()) {
                return view;
            }
        }
        return null;
    }

    View getChildAt(int i) {
        return this.mCallback.getChildAt(getOffset(i));
    }

    int getChildCount() {
        return this.mCallback.getChildCount() - this.mHiddenViews.size();
    }

    View getUnfilteredChildAt(int i) {
        return this.mCallback.getChildAt(i);
    }

    int getUnfilteredChildCount() {
        return this.mCallback.getChildCount();
    }

    void hide(View view) {
        int iIndexOfChild = this.mCallback.indexOfChild(view);
        if (iIndexOfChild < 0) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{20, 91, 0, 79, 69, 11, 17, 18, 11, 87, 17, 66, 3, 18, 6, 80, 12, 14, 6, 30, 69, 91, 4, 12, 12, 93, 17, 24, 13, 11, 6, 87, 69}, "b2e8eb", -12818) + view);
        }
        this.mBucket.set(iIndexOfChild);
        hideViewInternal(view);
    }

    int indexOfChild(View view) {
        int iIndexOfChild = this.mCallback.indexOfChild(view);
        if (iIndexOfChild == -1 || this.mBucket.get(iIndexOfChild)) {
            return -1;
        }
        return iIndexOfChild - this.mBucket.countOnesBefore(iIndexOfChild);
    }

    boolean isHidden(View view) {
        return this.mHiddenViews.contains(view);
    }

    void removeAllViewsUnfiltered() {
        this.mBucket.reset();
        for (int size = this.mHiddenViews.size() - 1; size >= 0; size--) {
            this.mCallback.onLeftHiddenState(this.mHiddenViews.get(size));
            this.mHiddenViews.remove(size);
        }
        this.mCallback.removeAllViews();
    }

    void removeView(View view) {
        int iIndexOfChild = this.mCallback.indexOfChild(view);
        if (iIndexOfChild < 0) {
            return;
        }
        if (this.mBucket.remove(iIndexOfChild)) {
            unhideViewInternal(view);
        }
        this.mCallback.removeViewAt(iIndexOfChild);
    }

    void removeViewAt(int i) {
        int offset = getOffset(i);
        View childAt = this.mCallback.getChildAt(offset);
        if (childAt == null) {
            return;
        }
        if (this.mBucket.remove(offset)) {
            unhideViewInternal(childAt);
        }
        this.mCallback.removeViewAt(offset);
    }

    boolean removeViewIfHidden(View view) {
        int iIndexOfChild = this.mCallback.indexOfChild(view);
        if (iIndexOfChild == -1) {
            if (unhideViewInternal(view)) {
            }
            return true;
        }
        if (!this.mBucket.get(iIndexOfChild)) {
            return false;
        }
        this.mBucket.remove(iIndexOfChild);
        if (!unhideViewInternal(view)) {
        }
        this.mCallback.removeViewAt(iIndexOfChild);
        return true;
    }

    public String toString() {
        return this.mBucket.toString() + NPStringFog.decode(new byte[]{72, 17, 12, 13, 81, 2, 1, 95, 68, 8, 92, 21, 16, 11}, "d1dd5f", 9.7251544E8d) + this.mHiddenViews.size();
    }

    void unhide(View view) {
        int iIndexOfChild = this.mCallback.indexOfChild(view);
        if (iIndexOfChild < 0) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{70, 93, 84, 68, 22, 81, 67, 20, 95, 92, 66, 24, 81, 20, 82, 91, 95, 84, 84, 24, 17, 80, 87, 86, 94, 91, 69, 19, 94, 81, 84, 81, 17}, "041368", 13348) + view);
        }
        if (!this.mBucket.get(iIndexOfChild)) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{23, 75, 75, 93, 86, 84, 67, 77, 93, 20, 77, 93, 11, 80, 86, 81, 24, 82, 67, 79, 91, 81, 79, 19, 23, 81, 83, 64, 24, 68, 2, 74, 18, 90, 87, 71, 67, 81, 91, 80, 92, 86, 13}, "c92483", -8.47014467E8d) + view);
        }
        this.mBucket.clear(iIndexOfChild);
        unhideViewInternal(view);
    }
}
