package com.google.android.gms.common.providers;

import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes55.dex */
@Deprecated
public class PooledExecutorsProvider {
    private static PooledExecutorFactory zza;

    public interface PooledExecutorFactory {
        @Deprecated
        ScheduledExecutorService newSingleThreadScheduledExecutor();
    }

    private PooledExecutorsProvider() {
    }

    @Deprecated
    public static PooledExecutorFactory getInstance() {
        PooledExecutorFactory pooledExecutorFactory;
        synchronized (PooledExecutorsProvider.class) {
            try {
                if (zza == null) {
                    zza = new zza();
                }
                pooledExecutorFactory = zza;
            } catch (Throwable th) {
                throw th;
            }
        }
        return pooledExecutorFactory;
    }
}
