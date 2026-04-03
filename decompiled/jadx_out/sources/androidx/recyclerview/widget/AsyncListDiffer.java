package androidx.recyclerview.widget;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.AsyncDifferConfig;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes42.dex */
public class AsyncListDiffer<T> {
    private static final Executor sMainThreadExecutor = new MainThreadExecutor();
    final AsyncDifferConfig<T> mConfig;

    @Nullable
    private List<T> mList;
    private final List<ListListener<T>> mListeners;
    Executor mMainThreadExecutor;
    int mMaxScheduledGeneration;

    @NonNull
    private List<T> mReadOnlyList;
    private final ListUpdateCallback mUpdateCallback;

    /* JADX INFO: renamed from: androidx.recyclerview.widget.AsyncListDiffer$1, reason: invalid class name */
    class AnonymousClass1 implements Runnable {
        final AsyncListDiffer this$0;
        final Runnable val$commitCallback;
        final List val$newList;
        final List val$oldList;
        final int val$runGeneration;

        AnonymousClass1(AsyncListDiffer asyncListDiffer, List list, List list2, int i, Runnable runnable) {
            this.this$0 = asyncListDiffer;
            this.val$oldList = list;
            this.val$newList = list2;
            this.val$runGeneration = i;
            this.val$commitCallback = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.this$0.mMainThreadExecutor.execute(new Runnable(this, DiffUtil.calculateDiff(new DiffUtil.Callback(this) { // from class: androidx.recyclerview.widget.AsyncListDiffer.1.1
                final AnonymousClass1 this$1;

                {
                    this.this$1 = this;
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override // androidx.recyclerview.widget.DiffUtil.Callback
                public boolean areContentsTheSame(int i, int i2) {
                    Object obj = this.this$1.val$oldList.get(i);
                    Object obj2 = this.this$1.val$newList.get(i2);
                    if (obj != null && obj2 != null) {
                        return this.this$1.this$0.mConfig.getDiffCallback().areContentsTheSame(obj, obj2);
                    }
                    if (obj == null && obj2 == null) {
                        return true;
                    }
                    throw new AssertionError();
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override // androidx.recyclerview.widget.DiffUtil.Callback
                public boolean areItemsTheSame(int i, int i2) {
                    Object obj = this.this$1.val$oldList.get(i);
                    Object obj2 = this.this$1.val$newList.get(i2);
                    return (obj == null || obj2 == null) ? obj == null && obj2 == null : this.this$1.this$0.mConfig.getDiffCallback().areItemsTheSame(obj, obj2);
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override // androidx.recyclerview.widget.DiffUtil.Callback
                @Nullable
                public Object getChangePayload(int i, int i2) {
                    Object obj = this.this$1.val$oldList.get(i);
                    Object obj2 = this.this$1.val$newList.get(i2);
                    if (obj == null || obj2 == null) {
                        throw new AssertionError();
                    }
                    return this.this$1.this$0.mConfig.getDiffCallback().getChangePayload(obj, obj2);
                }

                @Override // androidx.recyclerview.widget.DiffUtil.Callback
                public int getNewListSize() {
                    return this.this$1.val$newList.size();
                }

                @Override // androidx.recyclerview.widget.DiffUtil.Callback
                public int getOldListSize() {
                    return this.this$1.val$oldList.size();
                }
            })) { // from class: androidx.recyclerview.widget.AsyncListDiffer.1.2
                final AnonymousClass1 this$1;
                final DiffUtil.DiffResult val$result;

                {
                    this.this$1 = this;
                    this.val$result = diffResult;
                }

                @Override // java.lang.Runnable
                public void run() {
                    if (this.this$1.this$0.mMaxScheduledGeneration == this.this$1.val$runGeneration) {
                        this.this$1.this$0.latchList(this.this$1.val$newList, this.val$result, this.this$1.val$commitCallback);
                    }
                }
            });
        }
    }

    public interface ListListener<T> {
        void onCurrentListChanged(@NonNull List<T> list, @NonNull List<T> list2);
    }

    private static class MainThreadExecutor implements Executor {
        final Handler mHandler = new Handler(Looper.getMainLooper());

        MainThreadExecutor() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(@NonNull Runnable runnable) {
            this.mHandler.post(runnable);
        }
    }

    public AsyncListDiffer(@NonNull ListUpdateCallback listUpdateCallback, @NonNull AsyncDifferConfig<T> asyncDifferConfig) {
        this.mListeners = new CopyOnWriteArrayList();
        this.mReadOnlyList = Collections.emptyList();
        this.mUpdateCallback = listUpdateCallback;
        this.mConfig = asyncDifferConfig;
        if (asyncDifferConfig.getMainThreadExecutor() != null) {
            this.mMainThreadExecutor = asyncDifferConfig.getMainThreadExecutor();
        } else {
            this.mMainThreadExecutor = sMainThreadExecutor;
        }
    }

    public AsyncListDiffer(@NonNull RecyclerView.Adapter adapter, @NonNull DiffUtil.ItemCallback<T> itemCallback) {
        this(new AdapterListUpdateCallback(adapter), new AsyncDifferConfig.Builder(itemCallback).build());
    }

    private void onCurrentListChanged(@NonNull List<T> list, @Nullable Runnable runnable) {
        Iterator<ListListener<T>> it = this.mListeners.iterator();
        while (it.hasNext()) {
            it.next().onCurrentListChanged(list, this.mReadOnlyList);
        }
        if (runnable != null) {
            runnable.run();
        }
    }

    public void addListListener(@NonNull ListListener<T> listListener) {
        this.mListeners.add(listListener);
    }

    @NonNull
    public List<T> getCurrentList() {
        return this.mReadOnlyList;
    }

    void latchList(@NonNull List<T> list, @NonNull DiffUtil.DiffResult diffResult, @Nullable Runnable runnable) {
        List<T> list2 = this.mReadOnlyList;
        this.mList = list;
        this.mReadOnlyList = Collections.unmodifiableList(list);
        diffResult.dispatchUpdatesTo(this.mUpdateCallback);
        onCurrentListChanged(list2, runnable);
    }

    public void removeListListener(@NonNull ListListener<T> listListener) {
        this.mListeners.remove(listListener);
    }

    public void submitList(@Nullable List<T> list) {
        submitList(list, null);
    }

    public void submitList(@Nullable List<T> list, @Nullable Runnable runnable) {
        int i = this.mMaxScheduledGeneration + 1;
        this.mMaxScheduledGeneration = i;
        if (list == this.mList) {
            if (runnable != null) {
                runnable.run();
                return;
            }
            return;
        }
        List<T> list2 = this.mReadOnlyList;
        if (list == null) {
            int size = this.mList.size();
            this.mList = null;
            this.mReadOnlyList = Collections.emptyList();
            this.mUpdateCallback.onRemoved(0, size);
            onCurrentListChanged(list2, runnable);
            return;
        }
        if (this.mList != null) {
            this.mConfig.getBackgroundThreadExecutor().execute(new AnonymousClass1(this, this.mList, list, i, runnable));
        } else {
            this.mList = list;
            this.mReadOnlyList = Collections.unmodifiableList(list);
            this.mUpdateCallback.onInserted(0, list.size());
            onCurrentListChanged(list2, runnable);
        }
    }
}
