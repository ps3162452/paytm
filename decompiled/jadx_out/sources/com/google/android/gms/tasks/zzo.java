package com.google.android.gms.tasks;

import java.util.concurrent.CancellationException;
import n.NPStringFog;

/* JADX INFO: loaded from: classes56.dex */
final class zzo implements Runnable {
    final Task zza;
    final zzp zzb;

    zzo(zzp zzpVar, Task task) {
        this.zzb = zzpVar;
        this.zza = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            Task taskThen = this.zzb.zzb.then(this.zza.getResult());
            if (taskThen == null) {
                this.zzb.onFailure(new NullPointerException(NPStringFog.decode(new byte[]{114, 14, 92, 76, 91, 12, 68, 0, 70, 81, 93, 12, 17, 19, 87, 76, 71, 16, 95, 4, 86, 24, 92, 23, 93, 13}, "1a282b", -2.5481856E8f)));
                return;
            }
            taskThen.addOnSuccessListener(TaskExecutors.zza, this.zzb);
            taskThen.addOnFailureListener(TaskExecutors.zza, this.zzb);
            taskThen.addOnCanceledListener(TaskExecutors.zza, this.zzb);
        } catch (RuntimeExecutionException e) {
            if (e.getCause() instanceof Exception) {
                this.zzb.onFailure((Exception) e.getCause());
            } else {
                this.zzb.onFailure(e);
            }
        } catch (CancellationException e2) {
            this.zzb.onCanceled();
        } catch (Exception e3) {
            this.zzb.onFailure(e3);
        }
    }
}
