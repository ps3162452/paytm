package androidx.recyclerview.widget;

import android.util.Log;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.Preconditions;
import androidx.recyclerview.widget.ConcatAdapter;
import androidx.recyclerview.widget.NestedAdapterWrapper;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StableIdStorage;
import androidx.recyclerview.widget.ViewTypeStorage;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import n.NPStringFog;

/* JADX INFO: loaded from: classes42.dex */
class ConcatAdapterController implements NestedAdapterWrapper.Callback {
    private final ConcatAdapter mConcatAdapter;

    @NonNull
    private final ConcatAdapter.Config.StableIdMode mStableIdMode;
    private final StableIdStorage mStableIdStorage;
    private final ViewTypeStorage mViewTypeStorage;
    private List<WeakReference<RecyclerView>> mAttachedRecyclerViews = new ArrayList();
    private final IdentityHashMap<RecyclerView.ViewHolder, NestedAdapterWrapper> mBinderLookup = new IdentityHashMap<>();
    private List<NestedAdapterWrapper> mWrappers = new ArrayList();
    private WrapperAndLocalPosition mReusableHolder = new WrapperAndLocalPosition();

    static class WrapperAndLocalPosition {
        boolean mInUse;
        int mLocalPosition;
        NestedAdapterWrapper mWrapper;

        WrapperAndLocalPosition() {
        }
    }

    ConcatAdapterController(ConcatAdapter concatAdapter, ConcatAdapter.Config config) {
        this.mConcatAdapter = concatAdapter;
        if (config.isolateViewTypes) {
            this.mViewTypeStorage = new ViewTypeStorage.IsolatedViewTypeStorage();
        } else {
            this.mViewTypeStorage = new ViewTypeStorage.SharedIdRangeViewTypeStorage();
        }
        this.mStableIdMode = config.stableIdMode;
        if (config.stableIdMode == ConcatAdapter.Config.StableIdMode.NO_STABLE_IDS) {
            this.mStableIdStorage = new StableIdStorage.NoStableIdStorage();
        } else if (config.stableIdMode == ConcatAdapter.Config.StableIdMode.ISOLATED_STABLE_IDS) {
            this.mStableIdStorage = new StableIdStorage.IsolatedStableIdStorage();
        } else {
            if (config.stableIdMode != ConcatAdapter.Config.StableIdMode.SHARED_STABLE_IDS) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{67, 8, 82, 10, 92, 64, 88, 70, 74, 16, 82, 85, 90, 3, 25, 13, 87, 23, 91, 9, 93, 1}, "6f9d37", 1.653612444E9d));
            }
            this.mStableIdStorage = new StableIdStorage.SharedPoolStableIdStorage();
        }
    }

    private void calculateAndUpdateStateRestorationPolicy() {
        RecyclerView.Adapter.StateRestorationPolicy stateRestorationPolicyComputeStateRestorationPolicy = computeStateRestorationPolicy();
        if (stateRestorationPolicyComputeStateRestorationPolicy != this.mConcatAdapter.getStateRestorationPolicy()) {
            this.mConcatAdapter.internalSetStateRestorationPolicy(stateRestorationPolicyComputeStateRestorationPolicy);
        }
    }

    private RecyclerView.Adapter.StateRestorationPolicy computeStateRestorationPolicy() {
        for (NestedAdapterWrapper nestedAdapterWrapper : this.mWrappers) {
            RecyclerView.Adapter.StateRestorationPolicy stateRestorationPolicy = nestedAdapterWrapper.adapter.getStateRestorationPolicy();
            if (stateRestorationPolicy == RecyclerView.Adapter.StateRestorationPolicy.PREVENT) {
                return RecyclerView.Adapter.StateRestorationPolicy.PREVENT;
            }
            if (stateRestorationPolicy == RecyclerView.Adapter.StateRestorationPolicy.PREVENT_WHEN_EMPTY && nestedAdapterWrapper.getCachedItemCount() == 0) {
                return RecyclerView.Adapter.StateRestorationPolicy.PREVENT;
            }
        }
        return RecyclerView.Adapter.StateRestorationPolicy.ALLOW;
    }

    private int countItemsBefore(NestedAdapterWrapper nestedAdapterWrapper) {
        int i;
        NestedAdapterWrapper next;
        int cachedItemCount = 0;
        Iterator<NestedAdapterWrapper> it = this.mWrappers.iterator();
        while (true) {
            i = cachedItemCount;
            if (!it.hasNext() || (next = it.next()) == nestedAdapterWrapper) {
                break;
            }
            cachedItemCount = next.getCachedItemCount() + i;
        }
        return i;
    }

    @NonNull
    private WrapperAndLocalPosition findWrapperAndLocalPosition(int i) {
        WrapperAndLocalPosition wrapperAndLocalPosition;
        if (this.mReusableHolder.mInUse) {
            wrapperAndLocalPosition = new WrapperAndLocalPosition();
        } else {
            this.mReusableHolder.mInUse = true;
            wrapperAndLocalPosition = this.mReusableHolder;
        }
        Iterator<NestedAdapterWrapper> it = this.mWrappers.iterator();
        int cachedItemCount = i;
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            NestedAdapterWrapper next = it.next();
            if (next.getCachedItemCount() > cachedItemCount) {
                wrapperAndLocalPosition.mWrapper = next;
                wrapperAndLocalPosition.mLocalPosition = cachedItemCount;
                break;
            }
            cachedItemCount -= next.getCachedItemCount();
        }
        if (wrapperAndLocalPosition.mWrapper == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{117, 86, 90, 90, 86, 66, 22, 81, 93, 90, 93, 22, 65, 69, 85, 68, 73, 83, 68, 23, 82, 91, 75, 22}, "674496", false) + i);
        }
        return wrapperAndLocalPosition;
    }

    @Nullable
    private NestedAdapterWrapper findWrapperFor(RecyclerView.Adapter<RecyclerView.ViewHolder> adapter) {
        int iIndexOfWrapper = indexOfWrapper(adapter);
        if (iIndexOfWrapper == -1) {
            return null;
        }
        return this.mWrappers.get(iIndexOfWrapper);
    }

    @NonNull
    private NestedAdapterWrapper getWrapper(RecyclerView.ViewHolder viewHolder) {
        NestedAdapterWrapper nestedAdapterWrapper = this.mBinderLookup.get(viewHolder);
        if (nestedAdapterWrapper == null) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{33, 5, 12, 11, 12, 66, 66, 2, 11, 11, 7, 22, 21, 22, 3, 21, 19, 83, 16, 68, 4, 10, 17, 22}, "bdbec6", -8.5458605E8f) + viewHolder + NPStringFog.decode(new byte[]{31, 25, 18, 0, 80, 94, 64, 25, 13, 12, 94, 86, 19, 80, 21, 69, 92, 64, 19, 87, 14, 17, 21, 81, 92, 76, 15, 1, 21, 81, 74, 25, 21, 13, 92, 64, 19, 88, 5, 4, 69, 71, 86, 75, 91, 69}, "39ae53", -14325) + this);
        }
        return nestedAdapterWrapper;
    }

    private int indexOfWrapper(RecyclerView.Adapter<RecyclerView.ViewHolder> adapter) {
        int size = this.mWrappers.size();
        for (int i = 0; i < size; i++) {
            if (this.mWrappers.get(i).adapter == adapter) {
                return i;
            }
        }
        return -1;
    }

    private boolean isAttachedTo(RecyclerView recyclerView) {
        Iterator<WeakReference<RecyclerView>> it = this.mAttachedRecyclerViews.iterator();
        while (it.hasNext()) {
            if (it.next().get() == recyclerView) {
                return true;
            }
        }
        return false;
    }

    private void releaseWrapperAndLocalPosition(WrapperAndLocalPosition wrapperAndLocalPosition) {
        wrapperAndLocalPosition.mInUse = false;
        wrapperAndLocalPosition.mWrapper = null;
        wrapperAndLocalPosition.mLocalPosition = -1;
        this.mReusableHolder = wrapperAndLocalPosition;
    }

    boolean addAdapter(int i, RecyclerView.Adapter<RecyclerView.ViewHolder> adapter) {
        if (i < 0 || i > this.mWrappers.size()) {
            throw new IndexOutOfBoundsException(NPStringFog.decode(new byte[]{47, 12, 6, 4, 25, 20, 11, 23, 17, 21, 65, 86, 3, 66, 0, 4, 21, 67, 3, 7, 12, 65, 81, 20, 7, 12, 6, 65}, "fbbaa4", 945711577L) + this.mWrappers.size() + NPStringFog.decode(new byte[]{31, 65, 118, 11, 68, 81, 95, 91}, "1a1b24", -1.292139485E9d) + i);
        }
        if (hasStableIds()) {
            Preconditions.checkArgument(adapter.hasStableIds(), NPStringFog.decode(new byte[]{119, 93, 9, 19, 67, 17, 84, 17, 4, 87, 81, 20, 66, 84, 23, 64, 16, 9, 67, 66, 17, 19, 88, 5, 64, 84, 69, 64, 68, 5, 84, 93, 0, 19, 89, 0, 69, 17, 18, 91, 85, 10, 22, 66, 17, 82, 82, 8, 83, 17, 12, 87, 16, 9, 89, 85, 0, 19, 89, 23, 22, 120, 54, 124, 124, 37, 98, 116, 33, 108, 99, 48, 119, 115, 41, 118, 111, 45, 114, 98, 69, 92, 66, 68, 101, 121, 36, 97, 117, 32, 105, 98, 49, 114, 114, 40, 115, 110, 44, 119, 99}, "61e30d", true));
        } else if (adapter.hasStableIds()) {
            Log.w(NPStringFog.decode(new byte[]{38, 87, 89, 1, 86, 68, 36, 92, 86, 18, 67, 85, 23}, "e87b70", -942615780L), NPStringFog.decode(new byte[]{107, 18, 4, 4, 9, 82, 24, 15, 1, 21, 69, 94, 86, 70, 17, 14, 0, 23, 89, 2, 4, 22, 17, 82, 74, 70, 18, 15, 9, 91, 24, 4, 0, 70, 12, 80, 86, 9, 23, 3, 1, 23, 89, 21, 69, 18, 13, 82, 24, 37, 10, 8, 6, 86, 76, 39, 1, 7, 21, 67, 93, 20, 69, 15, 22, 23, 91, 9, 11, 0, 12, 80, 77, 20, 0, 2, 69, 89, 87, 18, 69, 18, 10, 23, 80, 7, 19, 3, 69, 68, 76, 7, 7, 10, 0, 23, 81, 2, 22}, "8fefe7", -1213296387L));
        }
        if (findWrapperFor(adapter) != null) {
            return false;
        }
        NestedAdapterWrapper nestedAdapterWrapper = new NestedAdapterWrapper(adapter, this, this.mViewTypeStorage, this.mStableIdStorage.createStableIdLookup());
        this.mWrappers.add(i, nestedAdapterWrapper);
        Iterator<WeakReference<RecyclerView>> it = this.mAttachedRecyclerViews.iterator();
        while (it.hasNext()) {
            RecyclerView recyclerView = it.next().get();
            if (recyclerView != null) {
                adapter.onAttachedToRecyclerView(recyclerView);
            }
        }
        if (nestedAdapterWrapper.getCachedItemCount() > 0) {
            this.mConcatAdapter.notifyItemRangeInserted(countItemsBefore(nestedAdapterWrapper), nestedAdapterWrapper.getCachedItemCount());
        }
        calculateAndUpdateStateRestorationPolicy();
        return true;
    }

    boolean addAdapter(RecyclerView.Adapter<RecyclerView.ViewHolder> adapter) {
        return addAdapter(this.mWrappers.size(), adapter);
    }

    public boolean canRestoreState() {
        Iterator<NestedAdapterWrapper> it = this.mWrappers.iterator();
        while (it.hasNext()) {
            if (!it.next().adapter.canRestoreState()) {
                return false;
            }
        }
        return true;
    }

    @Nullable
    public RecyclerView.Adapter<? extends RecyclerView.ViewHolder> getBoundAdapter(RecyclerView.ViewHolder viewHolder) {
        NestedAdapterWrapper nestedAdapterWrapper = this.mBinderLookup.get(viewHolder);
        if (nestedAdapterWrapper == null) {
            return null;
        }
        return nestedAdapterWrapper.adapter;
    }

    public List<RecyclerView.Adapter<? extends RecyclerView.ViewHolder>> getCopyOfAdapters() {
        if (this.mWrappers.isEmpty()) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(this.mWrappers.size());
        Iterator<NestedAdapterWrapper> it = this.mWrappers.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().adapter);
        }
        return arrayList;
    }

    public long getItemId(int i) {
        WrapperAndLocalPosition wrapperAndLocalPositionFindWrapperAndLocalPosition = findWrapperAndLocalPosition(i);
        long itemId = wrapperAndLocalPositionFindWrapperAndLocalPosition.mWrapper.getItemId(wrapperAndLocalPositionFindWrapperAndLocalPosition.mLocalPosition);
        releaseWrapperAndLocalPosition(wrapperAndLocalPositionFindWrapperAndLocalPosition);
        return itemId;
    }

    public int getItemViewType(int i) {
        WrapperAndLocalPosition wrapperAndLocalPositionFindWrapperAndLocalPosition = findWrapperAndLocalPosition(i);
        int itemViewType = wrapperAndLocalPositionFindWrapperAndLocalPosition.mWrapper.getItemViewType(wrapperAndLocalPositionFindWrapperAndLocalPosition.mLocalPosition);
        releaseWrapperAndLocalPosition(wrapperAndLocalPositionFindWrapperAndLocalPosition);
        return itemViewType;
    }

    public int getLocalAdapterPosition(RecyclerView.Adapter<? extends RecyclerView.ViewHolder> adapter, RecyclerView.ViewHolder viewHolder, int i) {
        NestedAdapterWrapper nestedAdapterWrapper = this.mBinderLookup.get(viewHolder);
        if (nestedAdapterWrapper == null) {
            return -1;
        }
        int iCountItemsBefore = i - countItemsBefore(nestedAdapterWrapper);
        int itemCount = nestedAdapterWrapper.adapter.getItemCount();
        if (iCountItemsBefore < 0 || iCountItemsBefore >= itemCount) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{118, 6, 76, 4, 5, 77, 87, 7, 24, 8, 8, 90, 93, 13, 75, 8, 21, 77, 87, 13, 76, 65, 7, 93, 83, 19, 76, 4, 20, 25, 71, 19, 92, 0, 18, 92, 65, 77, 24, 53, 14, 92, 18, 15, 87, 2, 7, 85, 18, 19, 87, 18, 15, 77, 91, 12, 86, 65, 9, 95, 18, 23, 80, 4, 70, 79, 91, 6, 79, 65, 14, 86, 94, 7, 93, 19, 70, 84, 83, 19, 75, 65, 18, 86, 18}, "2c8af9", -329891849L) + iCountItemsBefore + NPStringFog.decode(new byte[]{70, 66, 94, 11, 84, 92, 70, 92, 69, 66, 88, 65, 18, 21, 89, 4, 23, 86, 9, 64, 88, 6, 68, 20, 0, 90, 68, 66, 67, 92, 3, 21, 87, 6, 86, 68, 18, 80, 68, 66, 64, 93, 18, 93, 22, 17, 94, 78, 3, 21}, "f56b74", -1.830741776E9d) + itemCount + NPStringFog.decode(new byte[]{72, 46, 5, 95, 82, 17, 21, 22, 22, 81, 23, 69, 9, 67, 13, 89, 90, 84, 2, 10, 5, 64, 82, 93, 31, 67, 7, 85, 91, 93, 70, 13, 11, 64, 94, 87, 31, 67, 9, 81, 67, 89, 9, 7, 23, 20, 94, 95, 70, 26, 11, 65, 69, 17, 7, 7, 5, 68, 67, 84, 20, 67, 19, 92, 82, 95, 70, 26, 11, 65, 23, 82, 14, 2, 10, 83, 82, 17, 18, 11, 1, 20, 85, 80, 5, 8, 13, 90, 80, 17, 2, 2, 16, 85, 65, 88, 3, 20, 44, 91, 91, 85, 3, 17, 94}, "fcd471", 8188) + viewHolder + NPStringFog.decode(new byte[]{88, 6, 85, 19, 16, 86, 75, 88}, "9b4cd3", -1.2917051E9f) + adapter);
        }
        return nestedAdapterWrapper.adapter.findRelativeAdapterPositionIn(adapter, viewHolder, iCountItemsBefore);
    }

    public int getTotalCount() {
        int cachedItemCount = 0;
        Iterator<NestedAdapterWrapper> it = this.mWrappers.iterator();
        while (true) {
            int i = cachedItemCount;
            if (!it.hasNext()) {
                return i;
            }
            cachedItemCount = it.next().getCachedItemCount() + i;
        }
    }

    public boolean hasStableIds() {
        return this.mStableIdMode != ConcatAdapter.Config.StableIdMode.NO_STABLE_IDS;
    }

    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        if (isAttachedTo(recyclerView)) {
            return;
        }
        this.mAttachedRecyclerViews.add(new WeakReference<>(recyclerView));
        Iterator<NestedAdapterWrapper> it = this.mWrappers.iterator();
        while (it.hasNext()) {
            it.next().adapter.onAttachedToRecyclerView(recyclerView);
        }
    }

    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        WrapperAndLocalPosition wrapperAndLocalPositionFindWrapperAndLocalPosition = findWrapperAndLocalPosition(i);
        this.mBinderLookup.put(viewHolder, wrapperAndLocalPositionFindWrapperAndLocalPosition.mWrapper);
        wrapperAndLocalPositionFindWrapperAndLocalPosition.mWrapper.onBindViewHolder(viewHolder, wrapperAndLocalPositionFindWrapperAndLocalPosition.mLocalPosition);
        releaseWrapperAndLocalPosition(wrapperAndLocalPositionFindWrapperAndLocalPosition);
    }

    @Override // androidx.recyclerview.widget.NestedAdapterWrapper.Callback
    public void onChanged(@NonNull NestedAdapterWrapper nestedAdapterWrapper) {
        this.mConcatAdapter.notifyDataSetChanged();
        calculateAndUpdateStateRestorationPolicy();
    }

    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return this.mViewTypeStorage.getWrapperForGlobalType(i).onCreateViewHolder(viewGroup, i);
    }

    public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        int size = this.mAttachedRecyclerViews.size() - 1;
        while (true) {
            if (size < 0) {
                break;
            }
            WeakReference<RecyclerView> weakReference = this.mAttachedRecyclerViews.get(size);
            if (weakReference.get() == null) {
                this.mAttachedRecyclerViews.remove(size);
            } else if (weakReference.get() == recyclerView) {
                this.mAttachedRecyclerViews.remove(size);
                break;
            }
            size--;
        }
        Iterator<NestedAdapterWrapper> it = this.mWrappers.iterator();
        while (it.hasNext()) {
            it.next().adapter.onDetachedFromRecyclerView(recyclerView);
        }
    }

    public boolean onFailedToRecycleView(RecyclerView.ViewHolder viewHolder) {
        NestedAdapterWrapper nestedAdapterWrapper = this.mBinderLookup.get(viewHolder);
        if (nestedAdapterWrapper == null) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{38, 5, 93, 88, 11, 64, 69, 2, 90, 88, 0, 20, 18, 22, 82, 70, 20, 81, 23, 68, 85, 89, 22, 20}, "ed36d4", -5408) + viewHolder + NPStringFog.decode(new byte[]{20, 16, 65, 3, 80, 89, 75, 16, 94, 15, 94, 81, 24, 89, 70, 70, 92, 71, 24, 94, 93, 18, 21, 86, 87, 69, 92, 2, 21, 86, 65, 16, 70, 14, 92, 71, 24, 81, 86, 7, 69, 64, 93, 66, 8, 70}, "802f54", -7.721349E8f) + this);
        }
        boolean zOnFailedToRecycleView = nestedAdapterWrapper.adapter.onFailedToRecycleView(viewHolder);
        this.mBinderLookup.remove(viewHolder);
        return zOnFailedToRecycleView;
    }

    @Override // androidx.recyclerview.widget.NestedAdapterWrapper.Callback
    public void onItemRangeChanged(@NonNull NestedAdapterWrapper nestedAdapterWrapper, int i, int i2) {
        this.mConcatAdapter.notifyItemRangeChanged(countItemsBefore(nestedAdapterWrapper) + i, i2);
    }

    @Override // androidx.recyclerview.widget.NestedAdapterWrapper.Callback
    public void onItemRangeChanged(@NonNull NestedAdapterWrapper nestedAdapterWrapper, int i, int i2, @Nullable Object obj) {
        this.mConcatAdapter.notifyItemRangeChanged(countItemsBefore(nestedAdapterWrapper) + i, i2, obj);
    }

    @Override // androidx.recyclerview.widget.NestedAdapterWrapper.Callback
    public void onItemRangeInserted(@NonNull NestedAdapterWrapper nestedAdapterWrapper, int i, int i2) {
        this.mConcatAdapter.notifyItemRangeInserted(countItemsBefore(nestedAdapterWrapper) + i, i2);
    }

    @Override // androidx.recyclerview.widget.NestedAdapterWrapper.Callback
    public void onItemRangeMoved(@NonNull NestedAdapterWrapper nestedAdapterWrapper, int i, int i2) {
        int iCountItemsBefore = countItemsBefore(nestedAdapterWrapper);
        this.mConcatAdapter.notifyItemMoved(i + iCountItemsBefore, iCountItemsBefore + i2);
    }

    @Override // androidx.recyclerview.widget.NestedAdapterWrapper.Callback
    public void onItemRangeRemoved(@NonNull NestedAdapterWrapper nestedAdapterWrapper, int i, int i2) {
        this.mConcatAdapter.notifyItemRangeRemoved(countItemsBefore(nestedAdapterWrapper) + i, i2);
    }

    @Override // androidx.recyclerview.widget.NestedAdapterWrapper.Callback
    public void onStateRestorationPolicyChanged(NestedAdapterWrapper nestedAdapterWrapper) {
        calculateAndUpdateStateRestorationPolicy();
    }

    public void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
        getWrapper(viewHolder).adapter.onViewAttachedToWindow(viewHolder);
    }

    public void onViewDetachedFromWindow(RecyclerView.ViewHolder viewHolder) {
        getWrapper(viewHolder).adapter.onViewDetachedFromWindow(viewHolder);
    }

    public void onViewRecycled(RecyclerView.ViewHolder viewHolder) {
        NestedAdapterWrapper nestedAdapterWrapper = this.mBinderLookup.get(viewHolder);
        if (nestedAdapterWrapper == null) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{117, 88, 10, 12, 86, 67, 22, 95, 13, 12, 93, 23, 65, 75, 5, 18, 73, 82, 68, 25, 2, 13, 75, 23}, "69db97", 31325) + viewHolder + NPStringFog.decode(new byte[]{21, 16, 21, 93, 0, 85, 74, 16, 10, 81, 14, 93, 25, 89, 18, 24, 12, 75, 25, 94, 9, 76, 69, 90, 86, 69, 8, 92, 69, 90, 64, 16, 18, 80, 12, 75, 25, 81, 2, 89, 21, 76, 92, 66, 92, 24}, "90f8e8", false, false) + this);
        }
        nestedAdapterWrapper.adapter.onViewRecycled(viewHolder);
        this.mBinderLookup.remove(viewHolder);
    }

    boolean removeAdapter(RecyclerView.Adapter<RecyclerView.ViewHolder> adapter) {
        int iIndexOfWrapper = indexOfWrapper(adapter);
        if (iIndexOfWrapper == -1) {
            return false;
        }
        NestedAdapterWrapper nestedAdapterWrapper = this.mWrappers.get(iIndexOfWrapper);
        int iCountItemsBefore = countItemsBefore(nestedAdapterWrapper);
        this.mWrappers.remove(iIndexOfWrapper);
        this.mConcatAdapter.notifyItemRangeRemoved(iCountItemsBefore, nestedAdapterWrapper.getCachedItemCount());
        Iterator<WeakReference<RecyclerView>> it = this.mAttachedRecyclerViews.iterator();
        while (it.hasNext()) {
            RecyclerView recyclerView = it.next().get();
            if (recyclerView != null) {
                adapter.onDetachedFromRecyclerView(recyclerView);
            }
        }
        nestedAdapterWrapper.dispose();
        calculateAndUpdateStateRestorationPolicy();
        return true;
    }
}
