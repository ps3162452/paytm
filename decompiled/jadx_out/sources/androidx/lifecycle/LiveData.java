package androidx.lifecycle;

import androidx.arch.core.executor.ArchTaskExecutor;
import androidx.arch.core.internal.SafeIterableMap;
import androidx.lifecycle.Lifecycle;
import java.util.Map;
import n.NPStringFog;

/* JADX INFO: loaded from: classes18.dex */
public abstract class LiveData<T> {
    static final Object NOT_SET = new Object();
    static final int START_VERSION = -1;
    int mActiveCount;
    private boolean mChangingActiveState;
    private volatile Object mData;
    final Object mDataLock;
    private boolean mDispatchInvalidated;
    private boolean mDispatchingValue;
    private SafeIterableMap<Observer<? super T>, LiveData<T>.ObserverWrapper> mObservers;
    volatile Object mPendingData;
    private final Runnable mPostValueRunnable;
    private int mVersion;

    private class AlwaysActiveObserver extends LiveData<T>.ObserverWrapper {
        final LiveData this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AlwaysActiveObserver(LiveData liveData, Observer<? super T> observer) {
            super(liveData, observer);
            this.this$0 = liveData;
        }

        @Override // androidx.lifecycle.LiveData.ObserverWrapper
        boolean shouldBeActive() {
            return true;
        }
    }

    class LifecycleBoundObserver extends LiveData<T>.ObserverWrapper implements LifecycleEventObserver {
        final LifecycleOwner mOwner;
        final LiveData this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        LifecycleBoundObserver(LiveData liveData, LifecycleOwner lifecycleOwner, Observer<? super T> observer) {
            super(liveData, observer);
            this.this$0 = liveData;
            this.mOwner = lifecycleOwner;
        }

        @Override // androidx.lifecycle.LiveData.ObserverWrapper
        void detachObserver() {
            this.mOwner.getLifecycle().removeObserver(this);
        }

        @Override // androidx.lifecycle.LiveData.ObserverWrapper
        boolean isAttachedTo(LifecycleOwner lifecycleOwner) {
            return this.mOwner == lifecycleOwner;
        }

        @Override // androidx.lifecycle.LifecycleEventObserver
        public void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
            Lifecycle.State currentState = this.mOwner.getLifecycle().getCurrentState();
            if (currentState == Lifecycle.State.DESTROYED) {
                this.this$0.removeObserver(this.mObserver);
                return;
            }
            Lifecycle.State state = null;
            while (state != currentState) {
                activeStateChanged(shouldBeActive());
                Lifecycle.State state2 = currentState;
                currentState = this.mOwner.getLifecycle().getCurrentState();
                state = state2;
            }
        }

        @Override // androidx.lifecycle.LiveData.ObserverWrapper
        boolean shouldBeActive() {
            return this.mOwner.getLifecycle().getCurrentState().isAtLeast(Lifecycle.State.STARTED);
        }
    }

    private abstract class ObserverWrapper {
        boolean mActive;
        int mLastVersion = -1;
        final Observer<? super T> mObserver;
        final LiveData this$0;

        ObserverWrapper(LiveData liveData, Observer<? super T> observer) {
            this.this$0 = liveData;
            this.mObserver = observer;
        }

        void activeStateChanged(boolean z) {
            if (z == this.mActive) {
                return;
            }
            this.mActive = z;
            this.this$0.changeActiveCounter(z ? 1 : -1);
            if (this.mActive) {
                this.this$0.dispatchingValue(this);
            }
        }

        void detachObserver() {
        }

        boolean isAttachedTo(LifecycleOwner lifecycleOwner) {
            return false;
        }

        abstract boolean shouldBeActive();
    }

    public LiveData() {
        this.mDataLock = new Object();
        this.mObservers = new SafeIterableMap<>();
        this.mActiveCount = 0;
        Object obj = NOT_SET;
        this.mPendingData = obj;
        this.mPostValueRunnable = new Runnable(this) { // from class: androidx.lifecycle.LiveData.1
            final LiveData this$0;

            {
                this.this$0 = this;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public void run() {
                Object obj2;
                synchronized (this.this$0.mDataLock) {
                    obj2 = this.this$0.mPendingData;
                    this.this$0.mPendingData = LiveData.NOT_SET;
                }
                this.this$0.setValue(obj2);
            }
        };
        this.mData = obj;
        this.mVersion = -1;
    }

    public LiveData(T t) {
        this.mDataLock = new Object();
        this.mObservers = new SafeIterableMap<>();
        this.mActiveCount = 0;
        this.mPendingData = NOT_SET;
        this.mPostValueRunnable = new Runnable(this) { // from class: androidx.lifecycle.LiveData.1
            final LiveData this$0;

            {
                this.this$0 = this;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public void run() {
                Object obj2;
                synchronized (this.this$0.mDataLock) {
                    obj2 = this.this$0.mPendingData;
                    this.this$0.mPendingData = LiveData.NOT_SET;
                }
                this.this$0.setValue(obj2);
            }
        };
        this.mData = t;
        this.mVersion = 0;
    }

    static void assertMainThread(String str) {
        if (ArchTaskExecutor.getInstance().isMainThread()) {
            return;
        }
        throw new IllegalStateException(NPStringFog.decode(new byte[]{33, 7, 88, 86, 92, 22, 66, 15, 88, 78, 92, 9, 7, 70}, "bf683b", 1778348539L) + str + NPStringFog.decode(new byte[]{69, 94, 11, 16, 89, 20, 7, 80, 6, 91, 95, 70, 10, 68, 11, 84, 24, 64, 13, 67, 0, 81, 92}, "e1e084", -2.0415171E8f));
    }

    private void considerNotify(LiveData<T>.ObserverWrapper observerWrapper) {
        if (observerWrapper.mActive) {
            if (!observerWrapper.shouldBeActive()) {
                observerWrapper.activeStateChanged(false);
                return;
            }
            int i = observerWrapper.mLastVersion;
            int i2 = this.mVersion;
            if (i < i2) {
                observerWrapper.mLastVersion = i2;
                observerWrapper.mObserver.onChanged((Object) this.mData);
            }
        }
    }

    void changeActiveCounter(int i) {
        int i2 = this.mActiveCount;
        this.mActiveCount += i;
        if (this.mChangingActiveState) {
            return;
        }
        this.mChangingActiveState = true;
        while (true) {
            try {
                int i3 = this.mActiveCount;
                if (i2 == i3) {
                    return;
                }
                boolean z = i2 == 0 && i3 > 0;
                boolean z2 = i2 > 0 && i3 == 0;
                if (z) {
                    onActive();
                } else if (z2) {
                    onInactive();
                }
                i2 = i3;
            } finally {
                this.mChangingActiveState = false;
            }
        }
    }

    void dispatchingValue(LiveData<T>.ObserverWrapper observerWrapper) {
        if (this.mDispatchingValue) {
            this.mDispatchInvalidated = true;
            return;
        }
        this.mDispatchingValue = true;
        do {
            this.mDispatchInvalidated = false;
            if (observerWrapper != null) {
                considerNotify(observerWrapper);
                observerWrapper = null;
            } else {
                SafeIterableMap<Observer<? super T>, LiveData<T>.ObserverWrapper>.IteratorWithAdditions iteratorWithAdditions = this.mObservers.iteratorWithAdditions();
                while (iteratorWithAdditions.hasNext()) {
                    considerNotify((ObserverWrapper) iteratorWithAdditions.next().getValue());
                    if (this.mDispatchInvalidated) {
                        break;
                    }
                }
            }
        } while (this.mDispatchInvalidated);
        this.mDispatchingValue = false;
    }

    public T getValue() {
        T t = (T) this.mData;
        if (t != NOT_SET) {
            return t;
        }
        return null;
    }

    int getVersion() {
        return this.mVersion;
    }

    public boolean hasActiveObservers() {
        return this.mActiveCount > 0;
    }

    public boolean hasObservers() {
        return this.mObservers.size() > 0;
    }

    public void observe(LifecycleOwner lifecycleOwner, Observer<? super T> observer) {
        assertMainThread(NPStringFog.decode(new byte[]{9, 87, 18, 92, 22, 20, 3}, "f5a9db", false, true));
        if (lifecycleOwner.getLifecycle().getCurrentState() == Lifecycle.State.DESTROYED) {
            return;
        }
        LifecycleBoundObserver lifecycleBoundObserver = new LifecycleBoundObserver(this, lifecycleOwner, observer);
        LiveData<T>.ObserverWrapper observerWrapperPutIfAbsent = this.mObservers.putIfAbsent(observer, lifecycleBoundObserver);
        if (observerWrapperPutIfAbsent != null && !observerWrapperPutIfAbsent.isAttachedTo(lifecycleOwner)) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{115, 81, 88, 88, 92, 70, 16, 81, 82, 82, 19, 70, 88, 85, 22, 69, 82, 95, 85, 16, 89, 84, 64, 87, 66, 70, 83, 68, 19, 69, 89, 68, 94, 22, 87, 91, 86, 86, 83, 68, 86, 92, 68, 16, 90, 95, 85, 87, 83, 73, 85, 90, 86, 65}, "006632", 23347));
        }
        if (observerWrapperPutIfAbsent == null) {
            lifecycleOwner.getLifecycle().addObserver(lifecycleBoundObserver);
        }
    }

    public void observeForever(Observer<? super T> observer) {
        assertMainThread(NPStringFog.decode(new byte[]{88, 91, 23, 3, 70, 65, 82, 127, 11, 20, 81, 65, 82, 75}, "79df47", true, false));
        AlwaysActiveObserver alwaysActiveObserver = new AlwaysActiveObserver(this, observer);
        LiveData<T>.ObserverWrapper observerWrapperPutIfAbsent = this.mObservers.putIfAbsent(observer, alwaysActiveObserver);
        if (observerWrapperPutIfAbsent instanceof LifecycleBoundObserver) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{123, 4, 88, 90, 91, 64, 24, 4, 82, 80, 20, 64, 80, 0, 22, 71, 85, 89, 93, 69, 89, 86, 71, 81, 74, 19, 83, 70, 20, 67, 81, 17, 94, 20, 80, 93, 94, 3, 83, 70, 81, 90, 76, 69, 90, 93, 82, 81, 91, 28, 85, 88, 81, 71}, "8e6444", -1166563062L));
        }
        if (observerWrapperPutIfAbsent != null) {
            return;
        }
        alwaysActiveObserver.activeStateChanged(true);
    }

    protected void onActive() {
    }

    protected void onInactive() {
    }

    protected void postValue(T t) {
        boolean z;
        synchronized (this.mDataLock) {
            z = this.mPendingData == NOT_SET;
            this.mPendingData = t;
        }
        if (z) {
            ArchTaskExecutor.getInstance().postToMainThread(this.mPostValueRunnable);
        }
    }

    public void removeObserver(Observer<? super T> observer) {
        assertMainThread(NPStringFog.decode(new byte[]{70, 3, 14, 90, 79, 87, 123, 4, 16, 80, 75, 68, 81, 20}, "4fc592", true));
        LiveData<T>.ObserverWrapper observerWrapperRemove = this.mObservers.remove(observer);
        if (observerWrapperRemove == null) {
            return;
        }
        observerWrapperRemove.detachObserver();
        observerWrapperRemove.activeStateChanged(false);
    }

    public void removeObservers(LifecycleOwner lifecycleOwner) {
        assertMainThread(NPStringFog.decode(new byte[]{22, 87, 12, 95, 79, 81, 43, 80, 18, 85, 75, 66, 1, 64, 18}, "d2a094", true, true));
        for (Map.Entry<Observer<? super T>, LiveData<T>.ObserverWrapper> entry : this.mObservers) {
            if (entry.getValue().isAttachedTo(lifecycleOwner)) {
                removeObserver(entry.getKey());
            }
        }
    }

    protected void setValue(T t) {
        assertMainThread(NPStringFog.decode(new byte[]{21, 80, 18, 99, 5, 14, 19, 80}, "f5f5db", false, true));
        this.mVersion++;
        this.mData = t;
        dispatchingValue(null);
    }
}
