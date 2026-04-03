package androidx.concurrent.futures;

import com.google.common.util.concurrent.ListenableFuture;
import java.lang.ref.WeakReference;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import n.NPStringFog;

/* JADX INFO: loaded from: classes8.dex */
public final class CallbackToFutureAdapter {

    public static final class Completer<T> {
        private boolean attemptedSetting;
        private ResolvableFuture<Void> cancellationFuture = ResolvableFuture.create();
        SafeFuture<T> future;
        Object tag;

        Completer() {
        }

        private void setCompletedNormally() {
            this.tag = null;
            this.future = null;
            this.cancellationFuture = null;
        }

        public void addCancellationListener(Runnable runnable, Executor executor) {
            ResolvableFuture<Void> resolvableFuture = this.cancellationFuture;
            if (resolvableFuture != null) {
                resolvableFuture.addListener(runnable, executor);
            }
        }

        protected void finalize() {
            ResolvableFuture<Void> resolvableFuture;
            SafeFuture<T> safeFuture = this.future;
            if (safeFuture != null && !safeFuture.isDone()) {
                safeFuture.setException(new FutureGarbageCollectedException(NPStringFog.decode(new byte[]{108, 90, 0, 65, 91, 93, 85, 66, 9, 4, 76, 87, 74, 18, 10, 3, 82, 87, 91, 70, 69, 22, 89, 65, 24, 85, 4, 19, 90, 83, 95, 87, 69, 2, 87, 94, 84, 87, 6, 21, 93, 86, 24, 31, 69, 21, 80, 91, 75, 18, 3, 20, 76, 71, 74, 87, 69, 22, 87, 71, 84, 86, 69, 14, 76, 90, 93, 64, 18, 8, 75, 87, 24, 92, 0, 23, 93, 64, 24, 81, 10, 12, 72, 94, 93, 70, 0, 79, 24, 102, 80, 87, 69, 21, 89, 85, 24, 69, 4, 18, 2, 18}, "82ea82", 4.2560342E8f) + this.tag));
            }
            if (this.attemptedSetting || (resolvableFuture = this.cancellationFuture) == null) {
                return;
            }
            resolvableFuture.set(null);
        }

        void fireCancellationListeners() {
            this.tag = null;
            this.future = null;
            this.cancellationFuture.set(null);
        }

        public boolean set(T t) {
            this.attemptedSetting = true;
            SafeFuture<T> safeFuture = this.future;
            boolean z = safeFuture != null && safeFuture.set(t);
            if (z) {
                setCompletedNormally();
            }
            return z;
        }

        public boolean setCancelled() {
            this.attemptedSetting = true;
            SafeFuture<T> safeFuture = this.future;
            boolean z = safeFuture != null && safeFuture.cancelWithoutNotifyingCompleter(true);
            if (z) {
                setCompletedNormally();
            }
            return z;
        }

        public boolean setException(Throwable th) {
            this.attemptedSetting = true;
            SafeFuture<T> safeFuture = this.future;
            boolean z = safeFuture != null && safeFuture.setException(th);
            if (z) {
                setCompletedNormally();
            }
            return z;
        }
    }

    static final class FutureGarbageCollectedException extends Throwable {
        FutureGarbageCollectedException(String str) {
            super(str);
        }

        @Override // java.lang.Throwable
        public Throwable fillInStackTrace() {
            synchronized (this) {
            }
            return this;
        }
    }

    public interface Resolver<T> {
        Object attachCompleter(Completer<T> completer) throws Exception;
    }

    private static final class SafeFuture<T> implements ListenableFuture<T> {
        final WeakReference<Completer<T>> completerWeakReference;
        private final AbstractResolvableFuture<T> delegate = new AbstractResolvableFuture<T>(this) { // from class: androidx.concurrent.futures.CallbackToFutureAdapter.SafeFuture.1
            final SafeFuture this$0;

            {
                this.this$0 = this;
            }

            @Override // androidx.concurrent.futures.AbstractResolvableFuture
            protected String pendingToString() {
                Completer<T> completer = this.this$0.completerWeakReference.get();
                if (completer == null) {
                    return NPStringFog.decode(new byte[]{122, 14, 94, 18, 89, 7, 77, 4, 65, 66, 90, 0, 83, 4, 80, 22, 21, 10, 88, 18, 19, 0, 80, 7, 87, 65, 84, 3, 71, 0, 88, 6, 86, 66, 86, 13, 85, 13, 86, 1, 65, 7, 93, 77, 19, 4, 64, 22, 76, 19, 86, 66, 66, 11, 85, 13, 19, 4, 84, 11, 85, 65, 64, 13, 90, 12}, "9a3b5b", -6.460704E8f);
                }
                return NPStringFog.decode(new byte[]{23, 84, 83, 5, 57}, "c548b8", 1.698760288E9d) + completer.tag + NPStringFog.decode(new byte[]{110}, "3bf2e1", -1.16054904E8f);
            }
        };

        SafeFuture(Completer<T> completer) {
            this.completerWeakReference = new WeakReference<>(completer);
        }

        @Override // com.google.common.util.concurrent.ListenableFuture
        public void addListener(Runnable runnable, Executor executor) {
            this.delegate.addListener(runnable, executor);
        }

        @Override // java.util.concurrent.Future
        public boolean cancel(boolean z) {
            Completer<T> completer = this.completerWeakReference.get();
            boolean zCancel = this.delegate.cancel(z);
            if (zCancel && completer != null) {
                completer.fireCancellationListeners();
            }
            return zCancel;
        }

        boolean cancelWithoutNotifyingCompleter(boolean z) {
            return this.delegate.cancel(z);
        }

        @Override // java.util.concurrent.Future
        public T get() throws ExecutionException, InterruptedException {
            return this.delegate.get();
        }

        @Override // java.util.concurrent.Future
        public T get(long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
            return this.delegate.get(j, timeUnit);
        }

        @Override // java.util.concurrent.Future
        public boolean isCancelled() {
            return this.delegate.isCancelled();
        }

        @Override // java.util.concurrent.Future
        public boolean isDone() {
            return this.delegate.isDone();
        }

        boolean set(T t) {
            return this.delegate.set(t);
        }

        boolean setException(Throwable th) {
            return this.delegate.setException(th);
        }

        public String toString() {
            return this.delegate.toString();
        }
    }

    private CallbackToFutureAdapter() {
    }

    public static <T> ListenableFuture<T> getFuture(Resolver<T> resolver) {
        Completer<T> completer = new Completer<>();
        SafeFuture<T> safeFuture = new SafeFuture<>(completer);
        completer.future = safeFuture;
        completer.tag = resolver.getClass();
        try {
            Object objAttachCompleter = resolver.attachCompleter(completer);
            if (objAttachCompleter != null) {
                completer.tag = objAttachCompleter;
            }
        } catch (Exception e) {
            safeFuture.setException(e);
        }
        return safeFuture;
    }
}
