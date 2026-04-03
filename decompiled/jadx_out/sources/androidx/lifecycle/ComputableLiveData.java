package androidx.lifecycle;

import androidx.arch.core.executor.ArchTaskExecutor;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes33.dex */
public abstract class ComputableLiveData<T> {
    final AtomicBoolean mComputing;
    final Executor mExecutor;
    final AtomicBoolean mInvalid;
    final Runnable mInvalidationRunnable;
    final LiveData<T> mLiveData;
    final Runnable mRefreshRunnable;

    public ComputableLiveData() {
        this(ArchTaskExecutor.getIOThreadExecutor());
    }

    public ComputableLiveData(Executor executor) {
        this.mInvalid = new AtomicBoolean(true);
        this.mComputing = new AtomicBoolean(false);
        this.mRefreshRunnable = new Runnable(this) { // from class: androidx.lifecycle.ComputableLiveData.2
            final ComputableLiveData this$0;

            {
                this.this$0 = this;
            }

            @Override // java.lang.Runnable
            public void run() {
                boolean z;
                do {
                    if (this.this$0.mComputing.compareAndSet(false, true)) {
                        Object objCompute = null;
                        z = false;
                        while (this.this$0.mInvalid.compareAndSet(true, false)) {
                            try {
                                objCompute = this.this$0.compute();
                                z = true;
                            } finally {
                                this.this$0.mComputing.set(false);
                            }
                        }
                        if (z) {
                            this.this$0.mLiveData.postValue((T) objCompute);
                        }
                    } else {
                        z = false;
                    }
                    if (!z) {
                        return;
                    }
                } while (this.this$0.mInvalid.get());
            }
        };
        this.mInvalidationRunnable = new Runnable(this) { // from class: androidx.lifecycle.ComputableLiveData.3
            final ComputableLiveData this$0;

            {
                this.this$0 = this;
            }

            @Override // java.lang.Runnable
            public void run() {
                boolean zHasActiveObservers = this.this$0.mLiveData.hasActiveObservers();
                if (this.this$0.mInvalid.compareAndSet(false, true) && zHasActiveObservers) {
                    this.this$0.mExecutor.execute(this.this$0.mRefreshRunnable);
                }
            }
        };
        this.mExecutor = executor;
        this.mLiveData = new LiveData<T>(this) { // from class: androidx.lifecycle.ComputableLiveData.1
            final ComputableLiveData this$0;

            {
                this.this$0 = this;
            }

            @Override // androidx.lifecycle.LiveData
            protected void onActive() {
                this.this$0.mExecutor.execute(this.this$0.mRefreshRunnable);
            }
        };
    }

    protected abstract T compute();

    public LiveData<T> getLiveData() {
        return this.mLiveData;
    }

    public void invalidate() {
        ArchTaskExecutor.getInstance().executeOnMainThread(this.mInvalidationRunnable);
    }
}
