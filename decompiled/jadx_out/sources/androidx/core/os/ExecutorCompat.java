package androidx.core.os;

import android.os.Handler;
import androidx.core.util.Preconditions;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
public final class ExecutorCompat {

    private static class HandlerExecutor implements Executor {
        private final Handler mHandler;

        HandlerExecutor(Handler handler) {
            this.mHandler = (Handler) Preconditions.checkNotNull(handler);
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            if (this.mHandler.post((Runnable) Preconditions.checkNotNull(runnable))) {
                return;
            }
            throw new RejectedExecutionException(this.mHandler + NPStringFog.decode(new byte[]{65, 90, 75, 17, 22, 13, 20, 71, 76, 88, 11, 2, 65, 87, 87, 70, 11}, "a381ee", -2063678678L));
        }
    }

    private ExecutorCompat() {
    }

    public static Executor create(Handler handler) {
        return new HandlerExecutor(handler);
    }
}
