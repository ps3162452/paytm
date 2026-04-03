package com.google.firebase.database.core;

import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
class ThreadPoolEventTarget implements EventTarget {
    private final ThreadPoolExecutor executor;

    public ThreadPoolEventTarget(ThreadFactory threadFactory, ThreadInitializer threadInitializer) {
        this.executor = new ThreadPoolExecutor(1, 1, 3L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadFactory(this, threadFactory, threadInitializer) { // from class: com.google.firebase.database.core.ThreadPoolEventTarget.1
            final ThreadPoolEventTarget this$0;
            final ThreadInitializer val$threadInitializer;
            final ThreadFactory val$wrappedFactory;

            {
                this.this$0 = this;
                this.val$wrappedFactory = threadFactory;
                this.val$threadInitializer = threadInitializer;
            }

            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                Thread threadNewThread = this.val$wrappedFactory.newThread(runnable);
                this.val$threadInitializer.setName(threadNewThread, NPStringFog.decode(new byte[]{118, 91, 20, 83, 3, 85, 67, 87, 34, 87, 21, 85, 82, 83, 21, 83, 36, 66, 85, 92, 18, 98, 0, 70, 87, 87, 18}, "02f6a4", true));
                this.val$threadInitializer.setDaemon(threadNewThread, true);
                return threadNewThread;
            }
        });
    }

    @Override // com.google.firebase.database.core.EventTarget
    public void postEvent(Runnable runnable) {
        this.executor.execute(runnable);
    }

    @Override // com.google.firebase.database.core.EventTarget
    public void restart() {
        this.executor.setCorePoolSize(1);
    }

    @Override // com.google.firebase.database.core.EventTarget
    public void shutdown() {
        this.executor.setCorePoolSize(0);
    }
}
