package androidx.loader.content;

import android.os.Binder;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import android.util.Log;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicBoolean;
import n.NPStringFog;

/* JADX INFO: loaded from: classes32.dex */
abstract class ModernAsyncTask<Result> {
    private static final String LOG_TAG = NPStringFog.decode(new byte[]{112, 67, 24, 11, 90, 54, 80, 67, 10}, "10ae9b", false, false);
    private static Handler sHandler;
    private volatile Status mStatus = Status.PENDING;
    final AtomicBoolean mCancelled = new AtomicBoolean();
    final AtomicBoolean mTaskInvoked = new AtomicBoolean();
    private final FutureTask<Result> mFuture = new FutureTask<Result>(this, new Callable<Result>(this) { // from class: androidx.loader.content.ModernAsyncTask.1
        final ModernAsyncTask this$0;

        {
            this.this$0 = this;
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        @Override // java.util.concurrent.Callable
        public Result call() {
            this.this$0.mTaskInvoked.set(true);
            Result result = null;
            try {
                Process.setThreadPriority(10);
                result = (Result) this.this$0.doInBackground();
                Binder.flushPendingCommands();
                return result;
            } finally {
            }
        }
    }) { // from class: androidx.loader.content.ModernAsyncTask.2
        final ModernAsyncTask this$0;

        {
            this.this$0 = this;
        }

        @Override // java.util.concurrent.FutureTask
        protected void done() {
            try {
                this.this$0.postResultIfNotInvoked(get());
            } catch (InterruptedException e) {
                Log.w(NPStringFog.decode(new byte[]{32, 23, 73, 93, 91, 54, 0, 23, 91}, "ad038b", 9630), e);
            } catch (CancellationException e2) {
                this.this$0.postResultIfNotInvoked(null);
            } catch (ExecutionException e3) {
                throw new RuntimeException(NPStringFog.decode(new byte[]{116, 13, 17, 4, 65, 70, 90, 17, 17, 14, 80, 87, 64, 17, 67, 4, 87, 20, 66, 11, 88, 13, 86, 20, 80, 27, 84, 2, 70, 64, 92, 13, 86, 65, 87, 91, 124, 13, 115, 0, 80, 95, 82, 17, 94, 20, 93, 80, 29, 74}, "5c1a34", 1.0512159E9f), e3.getCause());
            } catch (Throwable th) {
                throw new RuntimeException(NPStringFog.decode(new byte[]{117, 86, 70, 1, 16, 68, 91, 74, 70, 11, 1, 85, 65, 74, 20, 1, 6, 22, 67, 80, 15, 8, 7, 22, 81, 64, 3, 7, 23, 66, 93, 86, 1, 68, 6, 89, 125, 86, 36, 5, 1, 93, 83, 74, 9, 17, 12, 82, 28, 17}, "48fdb6", 3.3023085E8f), th);
            }
        }
    };

    /* JADX INFO: renamed from: androidx.loader.content.ModernAsyncTask$4, reason: invalid class name */
    static /* synthetic */ class AnonymousClass4 {
        static final int[] $SwitchMap$androidx$loader$content$ModernAsyncTask$Status;

        static {
            int[] iArr = new int[Status.values().length];
            $SwitchMap$androidx$loader$content$ModernAsyncTask$Status = iArr;
            try {
                iArr[Status.RUNNING.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$androidx$loader$content$ModernAsyncTask$Status[Status.FINISHED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    public enum Status {
        PENDING,
        RUNNING,
        FINISHED
    }

    ModernAsyncTask() {
    }

    private static Handler getHandler() {
        Handler handler;
        synchronized (ModernAsyncTask.class) {
            try {
                if (sHandler == null) {
                    sHandler = new Handler(Looper.getMainLooper());
                }
                handler = sHandler;
            } catch (Throwable th) {
                throw th;
            }
        }
        return handler;
    }

    public final boolean cancel(boolean z) {
        this.mCancelled.set(true);
        return this.mFuture.cancel(z);
    }

    protected abstract Result doInBackground();

    public final void executeOnExecutor(Executor executor) {
        if (this.mStatus == Status.PENDING) {
            this.mStatus = Status.RUNNING;
            executor.execute(this.mFuture);
        } else {
            switch (AnonymousClass4.$SwitchMap$androidx$loader$content$ModernAsyncTask$Status[this.mStatus.ordinal()]) {
                case 1:
                    throw new IllegalStateException(NPStringFog.decode(new byte[]{113, 7, 13, 92, 89, 76, 18, 3, 27, 87, 85, 77, 70, 3, 67, 70, 87, 75, 89, 92, 67, 70, 94, 93, 18, 18, 2, 65, 93, 24, 91, 21, 67, 83, 90, 74, 87, 7, 7, 75, 22, 74, 71, 8, 13, 91, 88, 95, 28}, "2fc268", 25307));
                case 2:
                    throw new IllegalStateException(NPStringFog.decode(new byte[]{34, 85, 93, 89, 13, 66, 65, 81, 75, 82, 1, 67, 21, 81, 19, 67, 3, 69, 10, 14, 19, 67, 10, 83, 65, 64, 82, 68, 9, 22, 9, 85, 64, 23, 3, 90, 19, 81, 82, 83, 27, 22, 3, 81, 86, 89, 66, 83, 25, 81, 80, 66, 22, 83, 5, 20, 27, 86, 66, 66, 0, 71, 88, 23, 1, 87, 15, 20, 81, 82, 66, 83, 25, 81, 80, 66, 22, 83, 5, 20, 92, 89, 14, 79, 65, 91, 93, 84, 7, 31}, "a437b6", 8.5464366E8d));
                default:
                    throw new IllegalStateException(NPStringFog.decode(new byte[]{98, 84, 17, 64, 94, 9, 64, 93, 85, 19, 88, 3, 67, 84, 67, 19, 68, 3, 84, 82, 89, 19, 66, 14, 92, 66, 17, 64, 66, 7, 65, 84}, "51136f", 1.1494291E9f));
            }
        }
    }

    void finish(Result result) {
        if (isCancelled()) {
            onCancelled(result);
        } else {
            onPostExecute(result);
        }
        this.mStatus = Status.FINISHED;
    }

    public final boolean isCancelled() {
        return this.mCancelled.get();
    }

    protected void onCancelled(Result result) {
    }

    protected void onPostExecute(Result result) {
    }

    void postResult(Result result) {
        getHandler().post(new Runnable(this, result) { // from class: androidx.loader.content.ModernAsyncTask.3
            final ModernAsyncTask this$0;
            final Object val$result;

            {
                this.this$0 = this;
                this.val$result = result;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public void run() {
                this.this$0.finish(this.val$result);
            }
        });
    }

    void postResultIfNotInvoked(Result result) {
        if (this.mTaskInvoked.get()) {
            return;
        }
        postResult(result);
    }
}
