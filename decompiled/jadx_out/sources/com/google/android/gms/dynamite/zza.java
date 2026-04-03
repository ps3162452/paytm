package com.google.android.gms.dynamite;

import android.os.Process;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
final class zza extends Thread {
    zza(ThreadGroup threadGroup, String str) {
        super(threadGroup, NPStringFog.decode(new byte[]{112, 90, 69, 39, 76, 94, 86, 90, 95, 23, 80}, "776c50", 4.5871795E8f));
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(19);
        synchronized (this) {
            while (true) {
                try {
                    wait();
                } catch (InterruptedException e) {
                    return;
                }
            }
        }
    }
}
