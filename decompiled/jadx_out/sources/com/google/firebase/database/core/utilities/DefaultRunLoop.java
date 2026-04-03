package com.google.firebase.database.core.utilities;

import com.google.firebase.database.DatabaseException;
import com.google.firebase.database.FirebaseDatabase;
import com.google.firebase.database.core.RunLoop;
import com.google.firebase.database.core.ThreadInitializer;
import java.lang.Thread;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
public abstract class DefaultRunLoop implements RunLoop {
    private ScheduledThreadPoolExecutor executor;

    private class FirebaseThreadFactory implements ThreadFactory {
        final DefaultRunLoop this$0;

        private FirebaseThreadFactory(DefaultRunLoop defaultRunLoop) {
            this.this$0 = defaultRunLoop;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread threadNewThread = this.this$0.getThreadFactory().newThread(runnable);
            ThreadInitializer threadInitializer = this.this$0.getThreadInitializer();
            threadInitializer.setName(threadNewThread, NPStringFog.decode(new byte[]{117, 93, 20, 84, 0, 83, 64, 81, 34, 80, 22, 83, 81, 85, 21, 84, 53, 93, 65, 95, 3, 67}, "34f1b2", 4159));
            threadInitializer.setDaemon(threadNewThread, true);
            threadInitializer.setUncaughtExceptionHandler(threadNewThread, new Thread.UncaughtExceptionHandler(this) { // from class: com.google.firebase.database.core.utilities.DefaultRunLoop.FirebaseThreadFactory.1
                final FirebaseThreadFactory this$1;

                {
                    this.this$1 = this;
                }

                @Override // java.lang.Thread.UncaughtExceptionHandler
                public void uncaughtException(Thread thread, Throwable th) {
                    this.this$1.this$0.handleException(th);
                }
            });
            return threadNewThread;
        }
    }

    public DefaultRunLoop() {
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(this, 1, new FirebaseThreadFactory()) { // from class: com.google.firebase.database.core.utilities.DefaultRunLoop.1
            final DefaultRunLoop this$0;

            {
                this.this$0 = this;
            }

            @Override // java.util.concurrent.ThreadPoolExecutor
            protected void afterExecute(Runnable runnable, Throwable th) {
                super.afterExecute(runnable, th);
                if (th == null && (runnable instanceof Future)) {
                    Future future = (Future) runnable;
                    try {
                        if (future.isDone()) {
                            future.get();
                        }
                    } catch (InterruptedException e) {
                        Thread.currentThread().interrupt();
                    } catch (CancellationException e2) {
                    } catch (ExecutionException e3) {
                        th = e3.getCause();
                    }
                }
                if (th != null) {
                    this.this$0.handleException(th);
                }
            }
        };
        this.executor = scheduledThreadPoolExecutor;
        scheduledThreadPoolExecutor.setKeepAliveTime(3L, TimeUnit.SECONDS);
    }

    public static String messageForException(Throwable th) {
        return th instanceof OutOfMemoryError ? NPStringFog.decode(new byte[]{119, 80, 23, 82, 82, 84, 66, 92, 69, 115, 81, 65, 80, 91, 4, 68, 85, 21, 84, 87, 6, 88, 69, 91, 69, 92, 23, 82, 84, 21, 80, 87, 69, 120, 69, 65, 126, 95, 40, 82, 93, 90, 67, 64, 32, 69, 66, 90, 67, 23, 69, 110, 95, 64, 17, 84, 4, 78, 16, 91, 84, 92, 1, 23, 68, 90, 17, 75, 0, 83, 69, 86, 84, 25, 17, 95, 85, 21, 80, 84, 10, 66, 94, 65, 17, 86, 3, 23, 84, 84, 69, 88, 69, 78, 95, 64, 17, 88, 23, 82, 16, 70, 72, 87, 6, 94, 94, 82, 17, 77, 10, 23, 68, 93, 84, 25, 6, 91, 89, 80, 95, 77, 69, 31, 85, 27, 86, 23, 69, 85, 73, 21, 68, 74, 12, 89, 87, 21, 64, 76, 0, 69, 89, 80, 66, 25, 10, 69, 16, 70, 72, 87, 6, 94, 94, 82, 17, 88, 69, 83, 85, 80, 65, 92, 23, 23, 64, 84, 69, 81, 76, 25, 16, 102, 84, 92, 69, 95, 68, 65, 65, 74, 95, 24, 31, 83, 88, 75, 0, 85, 81, 70, 84, 23, 2, 88, 95, 82, 93, 92, 75, 84, 95, 88, 30, 93, 10, 84, 67, 26, 85, 88, 17, 86, 82, 84, 66, 92, 74, 94, 95, 70, 30, 74, 17, 69, 69, 86, 69, 76, 23, 82, 29, 81, 80, 77, 4, 20, 82, 80, 66, 77, 58, 71, 66, 84, 82, 77, 12, 84, 85, 70, 110, 95, 10, 69, 111, 81, 80, 77, 4, 104, 67, 65, 67, 76, 6, 67, 69, 71, 84, 25, 4, 89, 84, 21, 89, 77, 17, 71, 67, 15, 30, 22, 3, 94, 66, 80, 83, 88, 22, 82, 30, 82, 94, 86, 2, 91, 85, 27, 82, 86, 8, 24, 84, 90, 82, 74, 74, 83, 81, 65, 80, 91, 4, 68, 85, 26, 80, 87, 1, 69, 95, 92, 85, 22, 23, 82, 68, 71, 88, 92, 19, 82, 29, 81, 80, 77, 4, 20, 86, 92, 93, 77, 0, 69, 89, 91, 86, 102, 1, 86, 68, 84}, "19e705", false) : th instanceof NoClassDefFoundError ? NPStringFog.decode(new byte[]{115, 68, 66, 76, 88, 85, 93, 8, 17, 65, 93, 86, 70, 68, 69, 93, 80, 23, 116, 13, 67, 80, 87, 86, 65, 1, 17, 113, 84, 67, 83, 6, 80, 70, 80, 23, 97, 32, 122, 21, 81, 82, 66, 1, 95, 81, 70, 23, 93, 10, 17, 83, 84, 94, 94, 1, 85, 21, 65, 88, 18, 8, 94, 84, 81, 25, 18, 48, 89, 92, 70, 23, 71, 23, 68, 84, 89, 91, 75, 68, 88, 91, 81, 94, 81, 5, 69, 80, 70, 23, 70, 12, 80, 65, 21, 78, 93, 17, 67, 21, 69, 69, 93, 14, 84, 86, 65, 23, 91, 10, 82, 89, 64, 83, 87, 23, 17, 84, 91, 23, 91, 10, 82, 90, 88, 71, 83, 16, 88, 87, 89, 82, 18, 18, 84, 71, 70, 94, 93, 10, 17, 90, 83, 23, 83, 10, 94, 65, 93, 82, 64, 68, 119, 92, 71, 82, 80, 5, 66, 80, 21, 83, 87, 20, 84, 91, 81, 82, 92, 7, 72, 27, 21, 126, 84, 68, 68, 69, 81, 86, 70, 13, 95, 82, 21, 78, 93, 17, 67, 21, 81, 82, 66, 1, 95, 81, 80, 89, 81, 13, 84, 70, 21, 67, 93, 68, 69, 93, 80, 23, 94, 5, 69, 80, 70, 67, 18, 18, 84, 71, 70, 94, 93, 10, 17, 81, 90, 82, 65, 68, 95, 90, 65, 23, 64, 1, 66, 90, 89, 65, 87, 68, 69, 93, 92, 68, 18, 13, 66, 70, 64, 82, 30, 68, 65, 89, 80, 86, 65, 1, 17, 83, 92, 91, 87, 68, 80, 21, 71, 82, 66, 11, 67, 65, 21, 86, 70, 68, 89, 65, 65, 71, 65, 94, 30, 26, 82, 94, 70, 12, 68, 87, 27, 84, 93, 9, 30, 83, 92, 69, 87, 6, 80, 70, 80, 24, 84, 13, 67, 80, 87, 86, 65, 1, 28, 84, 91, 83, 64, 11, 88, 81, 24, 68, 86, 15}, "2d1557", true, true) : th instanceof DatabaseException ? "" : NPStringFog.decode(new byte[]{101, 92, 86, 83, 65, 81, 88, 70, 21, 87, 76, 85, 85, 66, 65, 91, 91, 88, 16, 91, 91, 18, 114, 95, 66, 87, 87, 83, 71, 83, 16, 118, 84, 70, 85, 84, 81, 65, 80, 18, 70, 67, 94, 94, 90, 93, 68, 22, 24}, "025246", false) + FirebaseDatabase.getSdkVersion() + NPStringFog.decode(new byte[]{27, 75, 18, 125, 84, 20, 75, 10, 71, 20, 83, 70, 87, 69, 92, 91, 70, 20, 83, 9, 64, 81, 83, 80, 75, 69, 93, 90, 18, 64, 90, 0, 18, 88, 83, 64, 87, 22, 70, 20, 68, 81, 64, 22, 91, 91, 92, 20, 93, 3, 18, 64, 90, 81, 18, 35, 91, 70, 87, 86, 83, 22, 87, 20, 97, 112, 121, 22, 30, 20, 70, 70, 75, 69, 71, 68, 86, 85, 70, 12, 92, 83, 18, 77, 93, 16, 64, 20, 86, 81, 66, 0, 92, 80, 87, 90, 81, 12, 87, 71, 28, 20, 97, 13, 93, 65, 94, 80, 18, 17, 90, 93, 65, 20, 66, 23, 93, 86, 94, 81, 95, 69, 66, 81, 64, 71, 91, 22, 70, 24, 18, 68, 94, 0, 83, 71, 87, 20, 84, 12, 94, 81, 18, 85, 18, 23, 87, 68, 93, 70, 70, 69, 83, 64, 18, 92, 70, 17, 66, 71, 8, 27, 29, 2, 91, 64, 90, 65, 80, 75, 81, 91, 95, 27, 84, 12, 64, 81, 80, 85, 65, 0, 29, 82, 91, 70, 87, 7, 83, 71, 87, 25, 83, 11, 86, 70, 93, 93, 86, 72, 65, 80, 89}, "2e2424", false);
    }

    public ScheduledExecutorService getExecutorService() {
        return this.executor;
    }

    protected ThreadFactory getThreadFactory() {
        return Executors.defaultThreadFactory();
    }

    protected ThreadInitializer getThreadInitializer() {
        return ThreadInitializer.defaultInstance;
    }

    public abstract void handleException(Throwable th);

    @Override // com.google.firebase.database.core.RunLoop
    public void restart() {
        this.executor.setCorePoolSize(1);
    }

    @Override // com.google.firebase.database.core.RunLoop
    public ScheduledFuture schedule(Runnable runnable, long j) {
        return this.executor.schedule(runnable, j, TimeUnit.MILLISECONDS);
    }

    @Override // com.google.firebase.database.core.RunLoop
    public void scheduleNow(Runnable runnable) {
        this.executor.execute(runnable);
    }

    @Override // com.google.firebase.database.core.RunLoop
    public void shutdown() {
        this.executor.setCorePoolSize(0);
    }
}
