package com.airbnb.lottie;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import com.airbnb.lottie.utils.Logger;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;
import n.NPStringFog;

/* JADX INFO: loaded from: classes64.dex */
public class LottieTask<T> {
    public static Executor EXECUTOR = Executors.newCachedThreadPool();
    private final Set<LottieListener<Throwable>> failureListeners;
    private final Handler handler;

    @Nullable
    private volatile LottieResult<T> result;
    private final Set<LottieListener<T>> successListeners;

    private class LottieFutureTask extends FutureTask<LottieResult<T>> {
        final LottieTask this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        LottieFutureTask(LottieTask lottieTask, Callable<LottieResult<T>> callable) {
            super(callable);
            this.this$0 = lottieTask;
        }

        @Override // java.util.concurrent.FutureTask
        protected void done() {
            if (isCancelled()) {
                return;
            }
            try {
                this.this$0.setResult(get());
            } catch (InterruptedException | ExecutionException e) {
                this.this$0.setResult(new LottieResult(e));
            }
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public LottieTask(Callable<LottieResult<T>> callable) {
        this(callable, false);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    LottieTask(Callable<LottieResult<T>> callable, boolean z) {
        this.successListeners = new LinkedHashSet(1);
        this.failureListeners = new LinkedHashSet(1);
        this.handler = new Handler(Looper.getMainLooper());
        this.result = null;
        if (!z) {
            EXECUTOR.execute(new LottieFutureTask(this, callable));
            return;
        }
        try {
            setResult(callable.call());
        } catch (Throwable th) {
            setResult(new LottieResult<>(th));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyFailureListeners(Throwable th) {
        synchronized (this) {
            ArrayList arrayList = new ArrayList(this.failureListeners);
            if (arrayList.isEmpty()) {
                Logger.warning(NPStringFog.decode(new byte[]{121, 87, 18, 65, 80, 82, 21, 93, 8, 86, 86, 66, 91, 76, 3, 71, 92, 83, 21, 89, 8, 21, 92, 69, 71, 87, 20, 21, 91, 66, 65, 24, 8, 90, 25, 81, 84, 81, 10, 64, 75, 82, 21, 84, 15, 70, 77, 82, 91, 93, 20, 21, 78, 86, 70, 24, 7, 81, 93, 82, 81, 2}, "58f597", 1457135951L), th);
            } else {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((LottieListener) it.next()).onResult(th);
                }
            }
        }
    }

    private void notifyListeners() {
        this.handler.post(new Runnable(this) { // from class: com.airbnb.lottie.LottieTask.1
            final LottieTask this$0;

            {
                this.this$0 = this;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (this.this$0.result == null) {
                    return;
                }
                LottieResult lottieResult = this.this$0.result;
                if (lottieResult.getValue() != null) {
                    this.this$0.notifySuccessListeners(lottieResult.getValue());
                } else {
                    this.this$0.notifyFailureListeners(lottieResult.getException());
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifySuccessListeners(T t) {
        synchronized (this) {
            Iterator it = new ArrayList(this.successListeners).iterator();
            while (it.hasNext()) {
                ((LottieListener) it.next()).onResult(t);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setResult(@Nullable LottieResult<T> lottieResult) {
        if (this.result != null) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{115, 16, 77, 86, 65, 14, 18, 93, 88, 78, 18, 10, 92, 92, 64, 23, 80, 0, 18, 67, 92, 67, 18, 10, 92, 83, 92, 25}, "20972e", -25482));
        }
        this.result = lottieResult;
        notifyListeners();
    }

    public LottieTask<T> addFailureListener(LottieListener<Throwable> lottieListener) {
        synchronized (this) {
            if (this.result != null && this.result.getException() != null) {
                lottieListener.onResult(this.result.getException());
            }
            this.failureListeners.add(lottieListener);
        }
        return this;
    }

    public LottieTask<T> addListener(LottieListener<T> lottieListener) {
        synchronized (this) {
            if (this.result != null && this.result.getValue() != null) {
                lottieListener.onResult(this.result.getValue());
            }
            this.successListeners.add(lottieListener);
        }
        return this;
    }

    public LottieTask<T> removeFailureListener(LottieListener<Throwable> lottieListener) {
        synchronized (this) {
            this.failureListeners.remove(lottieListener);
        }
        return this;
    }

    public LottieTask<T> removeListener(LottieListener<T> lottieListener) {
        synchronized (this) {
            this.successListeners.remove(lottieListener);
        }
        return this;
    }
}
