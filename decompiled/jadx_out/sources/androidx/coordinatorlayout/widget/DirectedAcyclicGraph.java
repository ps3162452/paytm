package androidx.coordinatorlayout.widget;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.collection.SimpleArrayMap;
import androidx.core.util.Pools;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import n.NPStringFog;

/* JADX INFO: loaded from: classes36.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY})
public final class DirectedAcyclicGraph<T> {
    private final Pools.Pool<ArrayList<T>> mListPool = new Pools.SimplePool(10);
    private final SimpleArrayMap<T, ArrayList<T>> mGraph = new SimpleArrayMap<>();
    private final ArrayList<T> mSortResult = new ArrayList<>();
    private final HashSet<T> mSortTmpMarked = new HashSet<>();

    private void dfs(T t, ArrayList<T> arrayList, HashSet<T> hashSet) {
        if (arrayList.contains(t)) {
            return;
        }
        if (hashSet.contains(t)) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{108, 91, 15, 71, 21, 4, 74, 82, 22, 92, 21, 0, 87, 93, 18, 85, 92, 13, 75, 19, 5, 77, 86, 15, 81, 80, 70, 80, 80, 19, 93, 93, 2, 81, 91, 0, 81, 86, 21}, "83f45c", -14313));
        }
        hashSet.add(t);
        ArrayList<T> arrayList2 = this.mGraph.get(t);
        if (arrayList2 != null) {
            int size = arrayList2.size();
            for (int i = 0; i < size; i++) {
                dfs(arrayList2.get(i), arrayList, hashSet);
            }
        }
        hashSet.remove(t);
        arrayList.add(t);
    }

    @NonNull
    private ArrayList<T> getEmptyList() {
        ArrayList<T> arrayListAcquire = this.mListPool.acquire();
        return arrayListAcquire == null ? new ArrayList<>() : arrayListAcquire;
    }

    private void poolList(@NonNull ArrayList<T> arrayList) {
        arrayList.clear();
        this.mListPool.release(arrayList);
    }

    public void addEdge(@NonNull T t, @NonNull T t2) {
        if (!this.mGraph.containsKey(t) || !this.mGraph.containsKey(t2)) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{113, 93, 10, 23, 87, 88, 84, 84, 21, 23, 84, 66, 67, 69, 70, 85, 92, 23, 64, 67, 3, 68, 92, 89, 68, 17, 15, 89, 25, 67, 88, 84, 70, 80, 75, 86, 64, 89, 70, 85, 92, 81, 95, 67, 3, 23, 91, 82, 89, 95, 1, 23, 88, 83, 84, 84, 2, 23, 88, 68, 16, 80, 8, 23, 92, 83, 87, 84}, "01f797", true));
        }
        ArrayList<T> emptyList = this.mGraph.get(t);
        if (emptyList == null) {
            emptyList = getEmptyList();
            this.mGraph.put(t, emptyList);
        }
        emptyList.add(t2);
    }

    public void addNode(@NonNull T t) {
        if (this.mGraph.containsKey(t)) {
            return;
        }
        this.mGraph.put(t, null);
    }

    public void clear() {
        int size = this.mGraph.size();
        for (int i = 0; i < size; i++) {
            ArrayList<T> arrayListValueAt = this.mGraph.valueAt(i);
            if (arrayListValueAt != null) {
                poolList(arrayListValueAt);
            }
        }
        this.mGraph.clear();
    }

    public boolean contains(@NonNull T t) {
        return this.mGraph.containsKey(t);
    }

    @Nullable
    public List getIncomingEdges(@NonNull T t) {
        return this.mGraph.get(t);
    }

    @Nullable
    public List<T> getOutgoingEdges(@NonNull T t) {
        ArrayList arrayList;
        ArrayList arrayList2 = null;
        int size = this.mGraph.size();
        int i = 0;
        while (i < size) {
            ArrayList<T> arrayListValueAt = this.mGraph.valueAt(i);
            if (arrayListValueAt == null || !arrayListValueAt.contains(t)) {
                arrayList = arrayList2;
            } else {
                arrayList = arrayList2 == null ? new ArrayList() : arrayList2;
                arrayList.add(this.mGraph.keyAt(i));
            }
            i++;
            arrayList2 = arrayList;
        }
        return arrayList2;
    }

    @NonNull
    public ArrayList<T> getSortedList() {
        this.mSortResult.clear();
        this.mSortTmpMarked.clear();
        int size = this.mGraph.size();
        for (int i = 0; i < size; i++) {
            dfs(this.mGraph.keyAt(i), this.mSortResult, this.mSortTmpMarked);
        }
        return this.mSortResult;
    }

    public boolean hasOutgoingEdges(@NonNull T t) {
        int size = this.mGraph.size();
        for (int i = 0; i < size; i++) {
            ArrayList<T> arrayListValueAt = this.mGraph.valueAt(i);
            if (arrayListValueAt != null && arrayListValueAt.contains(t)) {
                return true;
            }
        }
        return false;
    }

    int size() {
        return this.mGraph.size();
    }
}
