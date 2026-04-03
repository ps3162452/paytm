package androidx.recyclerview.widget;

import android.util.Log;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import androidx.annotation.WorkerThread;
import androidx.recyclerview.widget.ThreadUtil;
import androidx.recyclerview.widget.TileList;
import n.NPStringFog;

/* JADX INFO: loaded from: classes42.dex */
public class AsyncListUtil<T> {
    static final boolean DEBUG = false;
    static final String TAG = NPStringFog.decode(new byte[]{36, 69, 28, 12, 82, 121, 12, 69, 17, 55, 69, 92, 9}, "e6eb15", true, true);
    boolean mAllowScrollHints;
    final ThreadUtil.BackgroundCallback<T> mBackgroundProxy;
    final DataCallback<T> mDataCallback;
    final ThreadUtil.MainThreadCallback<T> mMainThreadProxy;
    final Class<T> mTClass;
    final TileList<T> mTileList;
    final int mTileSize;
    final ViewCallback mViewCallback;
    final int[] mTmpRange = new int[2];
    final int[] mPrevRange = new int[2];
    final int[] mTmpRangeExtended = new int[2];
    private int mScrollHint = 0;
    int mItemCount = 0;
    int mDisplayedGeneration = 0;
    int mRequestedGeneration = this.mDisplayedGeneration;
    final SparseIntArray mMissingPositions = new SparseIntArray();
    private final ThreadUtil.MainThreadCallback<T> mMainThreadCallback = new ThreadUtil.MainThreadCallback<T>(this) { // from class: androidx.recyclerview.widget.AsyncListUtil.1
        final AsyncListUtil this$0;

        {
            this.this$0 = this;
        }

        private boolean isRequestedGeneration(int i) {
            return i == this.this$0.mRequestedGeneration;
        }

        private void recycleAllTiles() {
            for (int i = 0; i < this.this$0.mTileList.size(); i++) {
                this.this$0.mBackgroundProxy.recycleTile(this.this$0.mTileList.getAtIndex(i));
            }
            this.this$0.mTileList.clear();
        }

        @Override // androidx.recyclerview.widget.ThreadUtil.MainThreadCallback
        public void addTile(int i, TileList.Tile<T> tile) {
            if (!isRequestedGeneration(i)) {
                this.this$0.mBackgroundProxy.recycleTile(tile);
                return;
            }
            TileList.Tile<T> tileAddOrReplace = this.this$0.mTileList.addOrReplace(tile);
            if (tileAddOrReplace != null) {
                Log.e(NPStringFog.decode(new byte[]{114, 67, 65, 12, 86, 45, 90, 67, 76, 55, 65, 8, 95}, "308b5a", 1.6671877E8f), NPStringFog.decode(new byte[]{83, 19, 64, 89, 92, 1, 86, 18, 85, 21, 65, 11, 91, 3, 16, 117}, "7f055b", -62889537L) + tileAddOrReplace.mStartPosition);
                this.this$0.mBackgroundProxy.recycleTile(tileAddOrReplace);
            }
            int i2 = tile.mStartPosition;
            int i3 = tile.mItemCount;
            int i4 = 0;
            while (i4 < this.this$0.mMissingPositions.size()) {
                int iKeyAt = this.this$0.mMissingPositions.keyAt(i4);
                if (tile.mStartPosition > iKeyAt || iKeyAt >= i2 + i3) {
                    i4++;
                } else {
                    this.this$0.mMissingPositions.removeAt(i4);
                    this.this$0.mViewCallback.onItemLoaded(iKeyAt);
                }
            }
        }

        @Override // androidx.recyclerview.widget.ThreadUtil.MainThreadCallback
        public void removeTile(int i, int i2) {
            if (isRequestedGeneration(i)) {
                TileList.Tile<T> tileRemoveAtPos = this.this$0.mTileList.removeAtPos(i2);
                if (tileRemoveAtPos == null) {
                    Log.e(NPStringFog.decode(new byte[]{118, 23, 24, 92, 2, 126, 94, 23, 21, 103, 21, 91, 91}, "7da2a2", true, false), NPStringFog.decode(new byte[]{70, 90, 84, 0, 24, 93, 93, 71, 24, 3, 87, 70, 92, 87, 24, 37}, "238e83", -14734) + i2);
                } else {
                    this.this$0.mBackgroundProxy.recycleTile(tileRemoveAtPos);
                }
            }
        }

        @Override // androidx.recyclerview.widget.ThreadUtil.MainThreadCallback
        public void updateItemCount(int i, int i2) {
            if (isRequestedGeneration(i)) {
                this.this$0.mItemCount = i2;
                this.this$0.mViewCallback.onDataRefresh();
                this.this$0.mDisplayedGeneration = this.this$0.mRequestedGeneration;
                recycleAllTiles();
                this.this$0.mAllowScrollHints = false;
                this.this$0.updateRange();
            }
        }
    };
    private final ThreadUtil.BackgroundCallback<T> mBackgroundCallback = new ThreadUtil.BackgroundCallback<T>(this) { // from class: androidx.recyclerview.widget.AsyncListUtil.2
        private int mFirstRequiredTileStart;
        private int mGeneration;
        private int mItemCount;
        private int mLastRequiredTileStart;
        final SparseBooleanArray mLoadedTiles = new SparseBooleanArray();
        private TileList.Tile<T> mRecycledRoot;
        final AsyncListUtil this$0;

        {
            this.this$0 = this;
        }

        private TileList.Tile<T> acquireTile() {
            if (this.mRecycledRoot == null) {
                return new TileList.Tile<>(this.this$0.mTClass, this.this$0.mTileSize);
            }
            TileList.Tile<T> tile = this.mRecycledRoot;
            this.mRecycledRoot = this.mRecycledRoot.mNext;
            return tile;
        }

        private void addTile(TileList.Tile<T> tile) {
            this.mLoadedTiles.put(tile.mStartPosition, true);
            this.this$0.mMainThreadProxy.addTile(this.mGeneration, tile);
        }

        private void flushTileCache(int i) {
            int maxCachedTiles = this.this$0.mDataCallback.getMaxCachedTiles();
            while (this.mLoadedTiles.size() >= maxCachedTiles) {
                int iKeyAt = this.mLoadedTiles.keyAt(0);
                int iKeyAt2 = this.mLoadedTiles.keyAt(this.mLoadedTiles.size() - 1);
                int i2 = this.mFirstRequiredTileStart - iKeyAt;
                int i3 = iKeyAt2 - this.mLastRequiredTileStart;
                if (i2 > 0 && (i2 >= i3 || i == 2)) {
                    removeTile(iKeyAt);
                } else {
                    if (i3 <= 0) {
                        return;
                    }
                    if (i2 >= i3 && i != 1) {
                        return;
                    } else {
                        removeTile(iKeyAt2);
                    }
                }
            }
        }

        private int getTileStart(int i) {
            return i - (i % this.this$0.mTileSize);
        }

        private boolean isTileLoaded(int i) {
            return this.mLoadedTiles.get(i);
        }

        private void log(String str, Object... objArr) {
            Log.d(NPStringFog.decode(new byte[]{121, 18, 64, 15, 82, 122, 81, 18, 77, 52, 69, 95, 84}, "8a9a16", true, true), NPStringFog.decode(new byte[]{108, 113, 41, 114, 98, 60, 23}, "73b50a", false, false) + String.format(str, objArr));
        }

        private void removeTile(int i) {
            this.mLoadedTiles.delete(i);
            this.this$0.mMainThreadProxy.removeTile(this.mGeneration, i);
        }

        private void requestTiles(int i, int i2, int i3, boolean z) {
            int i4 = i;
            while (i4 <= i2) {
                this.this$0.mBackgroundProxy.loadTile(z ? (i2 + i) - i4 : i4, i3);
                i4 += this.this$0.mTileSize;
            }
        }

        @Override // androidx.recyclerview.widget.ThreadUtil.BackgroundCallback
        public void loadTile(int i, int i2) {
            if (isTileLoaded(i)) {
                return;
            }
            TileList.Tile<T> tileAcquireTile = acquireTile();
            tileAcquireTile.mStartPosition = i;
            tileAcquireTile.mItemCount = Math.min(this.this$0.mTileSize, this.mItemCount - tileAcquireTile.mStartPosition);
            this.this$0.mDataCallback.fillData(tileAcquireTile.mItems, tileAcquireTile.mStartPosition, tileAcquireTile.mItemCount);
            flushTileCache(i2);
            addTile(tileAcquireTile);
        }

        @Override // androidx.recyclerview.widget.ThreadUtil.BackgroundCallback
        public void recycleTile(TileList.Tile<T> tile) {
            this.this$0.mDataCallback.recycleData(tile.mItems, tile.mItemCount);
            tile.mNext = this.mRecycledRoot;
            this.mRecycledRoot = tile;
        }

        @Override // androidx.recyclerview.widget.ThreadUtil.BackgroundCallback
        public void refresh(int i) {
            this.mGeneration = i;
            this.mLoadedTiles.clear();
            this.mItemCount = this.this$0.mDataCallback.refreshData();
            this.this$0.mMainThreadProxy.updateItemCount(this.mGeneration, this.mItemCount);
        }

        @Override // androidx.recyclerview.widget.ThreadUtil.BackgroundCallback
        public void updateRange(int i, int i2, int i3, int i4, int i5) {
            if (i > i2) {
                return;
            }
            int tileStart = getTileStart(i);
            int tileStart2 = getTileStart(i2);
            this.mFirstRequiredTileStart = getTileStart(i3);
            this.mLastRequiredTileStart = getTileStart(i4);
            if (i5 == 1) {
                requestTiles(this.mFirstRequiredTileStart, tileStart2, i5, true);
                requestTiles(this.this$0.mTileSize + tileStart2, this.mLastRequiredTileStart, i5, false);
            } else {
                requestTiles(tileStart, this.mLastRequiredTileStart, i5, false);
                requestTiles(this.mFirstRequiredTileStart, tileStart - this.this$0.mTileSize, i5, true);
            }
        }
    };

    public static abstract class DataCallback<T> {
        @WorkerThread
        public abstract void fillData(@NonNull T[] tArr, int i, int i2);

        @WorkerThread
        public int getMaxCachedTiles() {
            return 10;
        }

        @WorkerThread
        public void recycleData(@NonNull T[] tArr, int i) {
        }

        @WorkerThread
        public abstract int refreshData();
    }

    public static abstract class ViewCallback {
        public static final int HINT_SCROLL_ASC = 2;
        public static final int HINT_SCROLL_DESC = 1;
        public static final int HINT_SCROLL_NONE = 0;

        @UiThread
        public void extendRangeInto(@NonNull int[] iArr, @NonNull int[] iArr2, int i) {
            int i2 = (iArr[1] - iArr[0]) + 1;
            int i3 = i2 / 2;
            iArr2[0] = iArr[0] - (i == 1 ? i2 : i3);
            int i4 = iArr[1];
            if (i == 2) {
                i3 = i2;
            }
            iArr2[1] = i4 + i3;
        }

        @UiThread
        public abstract void getItemRangeInto(@NonNull int[] iArr);

        @UiThread
        public abstract void onDataRefresh();

        @UiThread
        public abstract void onItemLoaded(int i);
    }

    public AsyncListUtil(@NonNull Class<T> cls, int i, @NonNull DataCallback<T> dataCallback, @NonNull ViewCallback viewCallback) {
        this.mTClass = cls;
        this.mTileSize = i;
        this.mDataCallback = dataCallback;
        this.mViewCallback = viewCallback;
        this.mTileList = new TileList<>(this.mTileSize);
        MessageThreadUtil messageThreadUtil = new MessageThreadUtil();
        this.mMainThreadProxy = messageThreadUtil.getMainThreadProxy(this.mMainThreadCallback);
        this.mBackgroundProxy = messageThreadUtil.getBackgroundProxy(this.mBackgroundCallback);
        refresh();
    }

    private boolean isRefreshPending() {
        return this.mRequestedGeneration != this.mDisplayedGeneration;
    }

    @Nullable
    public T getItem(int i) {
        if (i < 0 || i >= this.mItemCount) {
            throw new IndexOutOfBoundsException(i + NPStringFog.decode(new byte[]{24, 91, 66, 16, 91, 86, 76, 18, 70, 89, 65, 81, 81, 92, 17, 0, 21, 88, 86, 86, 17}, "821059", 1.040343219E9d) + this.mItemCount);
        }
        T itemAt = this.mTileList.getItemAt(i);
        if (itemAt == null && !isRefreshPending()) {
            this.mMissingPositions.put(i, 0);
        }
        return itemAt;
    }

    public int getItemCount() {
        return this.mItemCount;
    }

    void log(String str, Object... objArr) {
        Log.d(TAG, NPStringFog.decode(new byte[]{111, 121, 113, 44, 124, 107, 20}, "440e26", -4.74357685E8d) + String.format(str, objArr));
    }

    public void onRangeChanged() {
        if (isRefreshPending()) {
            return;
        }
        updateRange();
        this.mAllowScrollHints = true;
    }

    public void refresh() {
        this.mMissingPositions.clear();
        ThreadUtil.BackgroundCallback<T> backgroundCallback = this.mBackgroundProxy;
        int i = this.mRequestedGeneration + 1;
        this.mRequestedGeneration = i;
        backgroundCallback.refresh(i);
    }

    void updateRange() {
        this.mViewCallback.getItemRangeInto(this.mTmpRange);
        if (this.mTmpRange[0] > this.mTmpRange[1] || this.mTmpRange[0] < 0 || this.mTmpRange[1] >= this.mItemCount) {
            return;
        }
        if (!this.mAllowScrollHints || this.mTmpRange[0] > this.mPrevRange[1] || this.mPrevRange[0] > this.mTmpRange[1]) {
            this.mScrollHint = 0;
        } else if (this.mTmpRange[0] < this.mPrevRange[0]) {
            this.mScrollHint = 1;
        } else if (this.mTmpRange[0] > this.mPrevRange[0]) {
            this.mScrollHint = 2;
        }
        this.mPrevRange[0] = this.mTmpRange[0];
        this.mPrevRange[1] = this.mTmpRange[1];
        this.mViewCallback.extendRangeInto(this.mTmpRange, this.mTmpRangeExtended, this.mScrollHint);
        this.mTmpRangeExtended[0] = Math.min(this.mTmpRange[0], Math.max(this.mTmpRangeExtended[0], 0));
        this.mTmpRangeExtended[1] = Math.max(this.mTmpRange[1], Math.min(this.mTmpRangeExtended[1], this.mItemCount - 1));
        this.mBackgroundProxy.updateRange(this.mTmpRange[0], this.mTmpRange[1], this.mTmpRangeExtended[0], this.mTmpRangeExtended[1], this.mScrollHint);
    }
}
