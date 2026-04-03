package com.google.android.gms.common.api.internal;

import java.util.concurrent.locks.Lock;

/* JADX INFO: loaded from: classes59.dex */
abstract class zaav implements Runnable {
    final zaaw zab;

    @Override // java.lang.Runnable
    public final void run() {
        Lock lock;
        this.zab.zab.lock();
        try {
            try {
                if (Thread.interrupted()) {
                    lock = this.zab.zab;
                } else {
                    zaa();
                    lock = this.zab.zab;
                }
            } catch (RuntimeException e) {
                this.zab.zaa.zam(e);
                lock = this.zab.zab;
            }
            lock.unlock();
        } catch (Throwable th) {
            this.zab.zab.unlock();
            throw th;
        }
    }

    protected abstract void zaa();
}
