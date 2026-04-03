package com.google.android.gms.common.util.concurrent;

import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
public class NamedThreadFactory implements ThreadFactory {
    private final String zza;
    private final ThreadFactory zzb = Executors.defaultThreadFactory();

    public NamedThreadFactory(String str) {
        Preconditions.checkNotNull(str, NPStringFog.decode(new byte[]{121, 86, 14, 80, 18, 89, 66, 68, 23, 21, 92, 91, 67, 23, 1, 80, 18, 90, 66, 91, 15}, "77c524", 714843472L));
        this.zza = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread threadNewThread = this.zzb.newThread(new zza(runnable, 0));
        threadNewThread.setName(this.zza);
        return threadNewThread;
    }
}
