package com.google.android.gms.common.util.concurrent;

import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
public class NumberedThreadFactory implements ThreadFactory {
    private final String zza;
    private final AtomicInteger zzb = new AtomicInteger();
    private final ThreadFactory zzc = Executors.defaultThreadFactory();

    public NumberedThreadFactory(String str) {
        Preconditions.checkNotNull(str, NPStringFog.decode(new byte[]{122, 4, 12, 7, 17, 95, 65, 22, 21, 66, 95, 93, 64, 69, 3, 7, 17, 92, 65, 9, 13}, "4eab12", false));
        this.zza = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread threadNewThread = this.zzc.newThread(new zza(runnable, 0));
        threadNewThread.setName(this.zza + NPStringFog.decode(new byte[]{61}, "f83152", false) + this.zzb.getAndIncrement() + NPStringFog.decode(new byte[]{106}, "7166ad", 1290));
        return threadNewThread;
    }
}
