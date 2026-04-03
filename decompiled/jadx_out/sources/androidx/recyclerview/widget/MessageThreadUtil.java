package androidx.recyclerview.widget;

import android.os.AsyncTask;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import androidx.recyclerview.widget.ThreadUtil;
import androidx.recyclerview.widget.TileList;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import n.NPStringFog;

/* JADX INFO: loaded from: classes42.dex */
class MessageThreadUtil<T> implements ThreadUtil<T> {

    /* JADX INFO: renamed from: androidx.recyclerview.widget.MessageThreadUtil$1, reason: invalid class name */
    class AnonymousClass1 implements ThreadUtil.MainThreadCallback<T> {
        static final int ADD_TILE = 2;
        static final int REMOVE_TILE = 3;
        static final int UPDATE_ITEM_COUNT = 1;
        final MessageThreadUtil this$0;
        final ThreadUtil.MainThreadCallback val$callback;
        final MessageQueue mQueue = new MessageQueue();
        private final Handler mMainThreadHandler = new Handler(Looper.getMainLooper());
        private Runnable mMainThreadRunnable = new Runnable(this) { // from class: androidx.recyclerview.widget.MessageThreadUtil.1.1
            final AnonymousClass1 this$1;

            {
                this.this$1 = this;
            }

            @Override // java.lang.Runnable
            public void run() {
                SyncQueueItem next = this.this$1.mQueue.next();
                while (next != null) {
                    switch (next.what) {
                        case 1:
                            this.this$1.val$callback.updateItemCount(next.arg1, next.arg2);
                            break;
                        case 2:
                            this.this$1.val$callback.addTile(next.arg1, (TileList.Tile) next.data);
                            break;
                        case 3:
                            this.this$1.val$callback.removeTile(next.arg1, next.arg2);
                            break;
                        default:
                            Log.e(NPStringFog.decode(new byte[]{53, 9, 65, 83, 4, 84, 52, 21, 90, 90}, "aa36e0", -2.0191348E9f), NPStringFog.decode(new byte[]{99, 86, 75, 23, 71, 73, 89, 74, 76, 7, 83, 25, 91, 93, 75, 17, 86, 94, 83, 20, 24, 21, 95, 88, 66, 5}, "688b79", false) + next.what);
                            break;
                    }
                    next = this.this$1.mQueue.next();
                }
            }
        };

        AnonymousClass1(MessageThreadUtil messageThreadUtil, ThreadUtil.MainThreadCallback mainThreadCallback) {
            this.this$0 = messageThreadUtil;
            this.val$callback = mainThreadCallback;
        }

        private void sendMessage(SyncQueueItem syncQueueItem) {
            this.mQueue.sendMessage(syncQueueItem);
            this.mMainThreadHandler.post(this.mMainThreadRunnable);
        }

        @Override // androidx.recyclerview.widget.ThreadUtil.MainThreadCallback
        public void addTile(int i, TileList.Tile<T> tile) {
            sendMessage(SyncQueueItem.obtainMessage(2, i, tile));
        }

        @Override // androidx.recyclerview.widget.ThreadUtil.MainThreadCallback
        public void removeTile(int i, int i2) {
            sendMessage(SyncQueueItem.obtainMessage(3, i, i2));
        }

        @Override // androidx.recyclerview.widget.ThreadUtil.MainThreadCallback
        public void updateItemCount(int i, int i2) {
            sendMessage(SyncQueueItem.obtainMessage(1, i, i2));
        }
    }

    /* JADX INFO: renamed from: androidx.recyclerview.widget.MessageThreadUtil$2, reason: invalid class name */
    class AnonymousClass2 implements ThreadUtil.BackgroundCallback<T> {
        static final int LOAD_TILE = 3;
        static final int RECYCLE_TILE = 4;
        static final int REFRESH = 1;
        static final int UPDATE_RANGE = 2;
        final MessageThreadUtil this$0;
        final ThreadUtil.BackgroundCallback val$callback;
        final MessageQueue mQueue = new MessageQueue();
        private final Executor mExecutor = AsyncTask.THREAD_POOL_EXECUTOR;
        AtomicBoolean mBackgroundRunning = new AtomicBoolean(false);
        private Runnable mBackgroundRunnable = new Runnable(this) { // from class: androidx.recyclerview.widget.MessageThreadUtil.2.1
            final AnonymousClass2 this$1;

            {
                this.this$1 = this;
            }

            @Override // java.lang.Runnable
            public void run() {
                while (true) {
                    SyncQueueItem next = this.this$1.mQueue.next();
                    if (next != null) {
                        switch (next.what) {
                            case 1:
                                this.this$1.mQueue.removeMessages(1);
                                this.this$1.val$callback.refresh(next.arg1);
                                break;
                            case 2:
                                this.this$1.mQueue.removeMessages(2);
                                this.this$1.mQueue.removeMessages(3);
                                this.this$1.val$callback.updateRange(next.arg1, next.arg2, next.arg3, next.arg4, next.arg5);
                                break;
                            case 3:
                                this.this$1.val$callback.loadTile(next.arg1, next.arg2);
                                break;
                            case 4:
                                this.this$1.val$callback.recycleTile((TileList.Tile) next.data);
                                break;
                            default:
                                Log.e(NPStringFog.decode(new byte[]{97, 10, 64, 0, 85, 85, 96, 22, 91, 9}, "5b2e41", true), NPStringFog.decode(new byte[]{55, 91, 64, 67, 73, 66, 13, 71, 71, 83, 93, 18, 15, 80, 64, 69, 88, 85, 7, 25, 19, 65, 81, 83, 22, 8}, "b53692", 8.87960469E8d) + next.what);
                                break;
                        }
                    } else {
                        this.this$1.mBackgroundRunning.set(false);
                        return;
                    }
                }
            }
        };

        AnonymousClass2(MessageThreadUtil messageThreadUtil, ThreadUtil.BackgroundCallback backgroundCallback) {
            this.this$0 = messageThreadUtil;
            this.val$callback = backgroundCallback;
        }

        private void maybeExecuteBackgroundRunnable() {
            if (this.mBackgroundRunning.compareAndSet(false, true)) {
                this.mExecutor.execute(this.mBackgroundRunnable);
            }
        }

        private void sendMessage(SyncQueueItem syncQueueItem) {
            this.mQueue.sendMessage(syncQueueItem);
            maybeExecuteBackgroundRunnable();
        }

        private void sendMessageAtFrontOfQueue(SyncQueueItem syncQueueItem) {
            this.mQueue.sendMessageAtFrontOfQueue(syncQueueItem);
            maybeExecuteBackgroundRunnable();
        }

        @Override // androidx.recyclerview.widget.ThreadUtil.BackgroundCallback
        public void loadTile(int i, int i2) {
            sendMessage(SyncQueueItem.obtainMessage(3, i, i2));
        }

        @Override // androidx.recyclerview.widget.ThreadUtil.BackgroundCallback
        public void recycleTile(TileList.Tile<T> tile) {
            sendMessage(SyncQueueItem.obtainMessage(4, 0, tile));
        }

        @Override // androidx.recyclerview.widget.ThreadUtil.BackgroundCallback
        public void refresh(int i) {
            sendMessageAtFrontOfQueue(SyncQueueItem.obtainMessage(1, i, (Object) null));
        }

        @Override // androidx.recyclerview.widget.ThreadUtil.BackgroundCallback
        public void updateRange(int i, int i2, int i3, int i4, int i5) {
            sendMessageAtFrontOfQueue(SyncQueueItem.obtainMessage(2, i, i2, i3, i4, i5, null));
        }
    }

    static class MessageQueue {
        private SyncQueueItem mRoot;

        MessageQueue() {
        }

        SyncQueueItem next() {
            SyncQueueItem syncQueueItem;
            synchronized (this) {
                if (this.mRoot == null) {
                    syncQueueItem = null;
                } else {
                    syncQueueItem = this.mRoot;
                    this.mRoot = this.mRoot.next;
                }
            }
            return syncQueueItem;
        }

        void removeMessages(int i) {
            synchronized (this) {
                while (this.mRoot != null && this.mRoot.what == i) {
                    SyncQueueItem syncQueueItem = this.mRoot;
                    this.mRoot = this.mRoot.next;
                    syncQueueItem.recycle();
                }
                if (this.mRoot != null) {
                    SyncQueueItem syncQueueItem2 = this.mRoot;
                    SyncQueueItem syncQueueItem3 = syncQueueItem2.next;
                    while (syncQueueItem3 != null) {
                        SyncQueueItem syncQueueItem4 = syncQueueItem3.next;
                        if (syncQueueItem3.what == i) {
                            syncQueueItem2.next = syncQueueItem4;
                            syncQueueItem3.recycle();
                        } else {
                            syncQueueItem2 = syncQueueItem3;
                        }
                        syncQueueItem3 = syncQueueItem4;
                    }
                }
            }
        }

        void sendMessage(SyncQueueItem syncQueueItem) {
            synchronized (this) {
                if (this.mRoot == null) {
                    this.mRoot = syncQueueItem;
                } else {
                    SyncQueueItem syncQueueItem2 = this.mRoot;
                    while (syncQueueItem2.next != null) {
                        syncQueueItem2 = syncQueueItem2.next;
                    }
                    syncQueueItem2.next = syncQueueItem;
                }
            }
        }

        void sendMessageAtFrontOfQueue(SyncQueueItem syncQueueItem) {
            synchronized (this) {
                syncQueueItem.next = this.mRoot;
                this.mRoot = syncQueueItem;
            }
        }
    }

    static class SyncQueueItem {
        private static SyncQueueItem sPool;
        private static final Object sPoolLock = new Object();
        public int arg1;
        public int arg2;
        public int arg3;
        public int arg4;
        public int arg5;
        public Object data;
        SyncQueueItem next;
        public int what;

        SyncQueueItem() {
        }

        static SyncQueueItem obtainMessage(int i, int i2, int i3) {
            return obtainMessage(i, i2, i3, 0, 0, 0, null);
        }

        static SyncQueueItem obtainMessage(int i, int i2, int i3, int i4, int i5, int i6, Object obj) {
            SyncQueueItem syncQueueItem;
            synchronized (sPoolLock) {
                if (sPool == null) {
                    syncQueueItem = new SyncQueueItem();
                } else {
                    syncQueueItem = sPool;
                    sPool = sPool.next;
                    syncQueueItem.next = null;
                }
                syncQueueItem.what = i;
                syncQueueItem.arg1 = i2;
                syncQueueItem.arg2 = i3;
                syncQueueItem.arg3 = i4;
                syncQueueItem.arg4 = i5;
                syncQueueItem.arg5 = i6;
                syncQueueItem.data = obj;
            }
            return syncQueueItem;
        }

        static SyncQueueItem obtainMessage(int i, int i2, Object obj) {
            return obtainMessage(i, i2, 0, 0, 0, 0, obj);
        }

        void recycle() {
            this.next = null;
            this.arg5 = 0;
            this.arg4 = 0;
            this.arg3 = 0;
            this.arg2 = 0;
            this.arg1 = 0;
            this.what = 0;
            this.data = null;
            synchronized (sPoolLock) {
                if (sPool != null) {
                    this.next = sPool;
                }
                sPool = this;
            }
        }
    }

    MessageThreadUtil() {
    }

    @Override // androidx.recyclerview.widget.ThreadUtil
    public ThreadUtil.BackgroundCallback<T> getBackgroundProxy(ThreadUtil.BackgroundCallback<T> backgroundCallback) {
        return new AnonymousClass2(this, backgroundCallback);
    }

    @Override // androidx.recyclerview.widget.ThreadUtil
    public ThreadUtil.MainThreadCallback<T> getMainThreadProxy(ThreadUtil.MainThreadCallback<T> mainThreadCallback) {
        return new AnonymousClass1(this, mainThreadCallback);
    }
}
