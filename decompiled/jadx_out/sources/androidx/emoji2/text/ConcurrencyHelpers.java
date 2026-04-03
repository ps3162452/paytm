package androidx.emoji2.text;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes27.dex */
class ConcurrencyHelpers {
    private static final int FONT_LOAD_TIMEOUT_SECONDS = 15;

    static class Handler28Impl {
        private Handler28Impl() {
        }

        public static Handler createAsync(Looper looper) {
            return Handler.createAsync(looper);
        }
    }

    private ConcurrencyHelpers() {
    }

    @Deprecated
    static Executor convertHandlerToExecutor(final Handler handler) {
        handler.getClass();
        return new Executor(handler) { // from class: androidx.emoji2.text.ConcurrencyHelpers$$ExternalSyntheticLambda1
            public final Handler f$0;

            {
                this.f$0 = handler;
            }

            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                this.f$0.post(runnable);
            }
        };
    }

    static ThreadPoolExecutor createBackgroundPriorityExecutor(final String str) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 15L, TimeUnit.SECONDS, new LinkedBlockingDeque(), new ThreadFactory(str) { // from class: androidx.emoji2.text.ConcurrencyHelpers$$ExternalSyntheticLambda0
            public final String f$0;

            {
                this.f$0 = str;
            }

            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                return ConcurrencyHelpers.lambda$createBackgroundPriorityExecutor$0(this.f$0, runnable);
            }
        });
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        return threadPoolExecutor;
    }

    static /* synthetic */ Thread lambda$createBackgroundPriorityExecutor$0(String str, Runnable runnable) {
        Thread thread = new Thread(runnable, str);
        thread.setPriority(10);
        return thread;
    }

    static Handler mainHandlerAsync() {
        return Build.VERSION.SDK_INT >= 28 ? Handler28Impl.createAsync(Looper.getMainLooper()) : new Handler(Looper.getMainLooper());
    }
}
