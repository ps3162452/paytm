package androidx.recyclerview.widget;

import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import n.NPStringFog;

/* JADX INFO: loaded from: classes42.dex */
public final class ConcatAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
    static final String TAG = NPStringFog.decode(new byte[]{112, 94, 15, 80, 5, 69, 114, 85, 0, 67, 16, 84, 65}, "31a3d1", true, true);
    private final ConcatAdapterController mController;

    public static final class Config {

        @NonNull
        public static final Config DEFAULT = new Config(true, StableIdMode.NO_STABLE_IDS);
        public final boolean isolateViewTypes;

        @NonNull
        public final StableIdMode stableIdMode;

        public static final class Builder {
            private boolean mIsolateViewTypes = Config.DEFAULT.isolateViewTypes;
            private StableIdMode mStableIdMode = Config.DEFAULT.stableIdMode;

            @NonNull
            public Config build() {
                return new Config(this.mIsolateViewTypes, this.mStableIdMode);
            }

            @NonNull
            public Builder setIsolateViewTypes(boolean z) {
                this.mIsolateViewTypes = z;
                return this;
            }

            @NonNull
            public Builder setStableIdMode(@NonNull StableIdMode stableIdMode) {
                this.mStableIdMode = stableIdMode;
                return this;
            }
        }

        public enum StableIdMode {
            NO_STABLE_IDS,
            ISOLATED_STABLE_IDS,
            SHARED_STABLE_IDS
        }

        Config(boolean z, @NonNull StableIdMode stableIdMode) {
            this.isolateViewTypes = z;
            this.stableIdMode = stableIdMode;
        }
    }

    public ConcatAdapter(@NonNull Config config, @NonNull List<? extends RecyclerView.Adapter<? extends RecyclerView.ViewHolder>> list) {
        this.mController = new ConcatAdapterController(this, config);
        Iterator<? extends RecyclerView.Adapter<? extends RecyclerView.ViewHolder>> it = list.iterator();
        while (it.hasNext()) {
            addAdapter(it.next());
        }
        super.setHasStableIds(this.mController.hasStableIds());
    }

    @SafeVarargs
    public ConcatAdapter(@NonNull Config config, @NonNull RecyclerView.Adapter<? extends RecyclerView.ViewHolder>... adapterArr) {
        this(config, (List<? extends RecyclerView.Adapter<? extends RecyclerView.ViewHolder>>) Arrays.asList(adapterArr));
    }

    public ConcatAdapter(@NonNull List<? extends RecyclerView.Adapter<? extends RecyclerView.ViewHolder>> list) {
        this(Config.DEFAULT, list);
    }

    @SafeVarargs
    public ConcatAdapter(@NonNull RecyclerView.Adapter<? extends RecyclerView.ViewHolder>... adapterArr) {
        this(Config.DEFAULT, adapterArr);
    }

    public boolean addAdapter(int i, @NonNull RecyclerView.Adapter<? extends RecyclerView.ViewHolder> adapter) {
        return this.mController.addAdapter(i, adapter);
    }

    public boolean addAdapter(@NonNull RecyclerView.Adapter<? extends RecyclerView.ViewHolder> adapter) {
        return this.mController.addAdapter(adapter);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int findRelativeAdapterPositionIn(@NonNull RecyclerView.Adapter<? extends RecyclerView.ViewHolder> adapter, @NonNull RecyclerView.ViewHolder viewHolder, int i) {
        return this.mController.getLocalAdapterPosition(adapter, viewHolder, i);
    }

    @NonNull
    public List<? extends RecyclerView.Adapter<? extends RecyclerView.ViewHolder>> getAdapters() {
        return Collections.unmodifiableList(this.mController.getCopyOfAdapters());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.mController.getTotalCount();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        return this.mController.getItemId(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        return this.mController.getItemViewType(i);
    }

    void internalSetStateRestorationPolicy(@NonNull RecyclerView.Adapter.StateRestorationPolicy stateRestorationPolicy) {
        super.setStateRestorationPolicy(stateRestorationPolicy);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onAttachedToRecyclerView(@NonNull RecyclerView recyclerView) {
        this.mController.onAttachedToRecyclerView(recyclerView);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i) {
        this.mController.onBindViewHolder(viewHolder, i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        return this.mController.onCreateViewHolder(viewGroup, i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onDetachedFromRecyclerView(@NonNull RecyclerView recyclerView) {
        this.mController.onDetachedFromRecyclerView(recyclerView);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public boolean onFailedToRecycleView(@NonNull RecyclerView.ViewHolder viewHolder) {
        return this.mController.onFailedToRecycleView(viewHolder);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewAttachedToWindow(@NonNull RecyclerView.ViewHolder viewHolder) {
        this.mController.onViewAttachedToWindow(viewHolder);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewDetachedFromWindow(@NonNull RecyclerView.ViewHolder viewHolder) {
        this.mController.onViewDetachedFromWindow(viewHolder);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewRecycled(@NonNull RecyclerView.ViewHolder viewHolder) {
        this.mController.onViewRecycled(viewHolder);
    }

    public boolean removeAdapter(@NonNull RecyclerView.Adapter<? extends RecyclerView.ViewHolder> adapter) {
        return this.mController.removeAdapter(adapter);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void setHasStableIds(boolean z) {
        throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{118, 89, 84, 94, 88, 93, 82, 24, 75, 87, 69, 123, 84, 75, 107, 70, 80, 81, 89, 93, 113, 86, 66, 19, 92, 75, 24, 92, 94, 71, 21, 89, 84, 94, 94, 68, 80, 92, 24, 93, 95, 19, 65, 80, 93, 18, 114, 92, 91, 91, 89, 70, 112, 87, 84, 72, 76, 87, 67, 29, 21, 109, 75, 87, 17, 71, 93, 93, 24, 113, 94, 93, 83, 81, 95, 18, 94, 81, 95, 93, 91, 70, 17, 67, 84, 75, 75, 87, 85, 19, 92, 86, 24, 70, 89, 86, 21, 91, 87, 92, 66, 71, 71, 77, 91, 70, 94, 65, 21, 76, 87, 18, 82, 92, 91, 76, 74, 93, 93, 19, 65, 80, 81, 65, 17, 81, 80, 80, 89, 68, 88, 92, 71}, "588213", true));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void setStateRestorationPolicy(@NonNull RecyclerView.Adapter.StateRestorationPolicy stateRestorationPolicy) {
        throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{112, 2, 88, 88, 11, 93, 84, 67, 71, 81, 22, 96, 71, 2, 64, 81, 48, 86, 64, 23, 91, 70, 3, 71, 90, 12, 90, 100, 13, 95, 90, 0, 77, 20, 11, 64, 19, 13, 91, 64, 66, 82, 95, 15, 91, 67, 7, 87, 19, 12, 90, 20, 22, 91, 86, 67, 119, 91, 12, 80, 82, 23, 117, 80, 3, 67, 71, 6, 70, 26, 66, 103, 91, 10, 71, 20, 20, 82, 95, 22, 81, 20, 11, 64, 19, 10, 90, 82, 7, 65, 65, 6, 80, 20, 4, 65, 92, 14, 20, 85, 6, 87, 86, 7, 20, 85, 6, 82, 67, 23, 81, 70, 17}, "3c44b3", -6.83630522E8d));
    }
}
