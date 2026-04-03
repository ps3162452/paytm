package com.google.android.gms.tasks;

import n.NPStringFog;

/* JADX INFO: loaded from: classes56.dex */
final class zze implements Runnable {
    final Task zza;
    final zzf zzb;

    zze(zzf zzfVar, Task task) {
        this.zzb = zzfVar;
        this.zza = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            Task task = (Task) this.zzb.zzb.then(this.zza);
            if (task == null) {
                this.zzb.onFailure(new NullPointerException(NPStringFog.decode(new byte[]{123, 9, 87, 67, 93, 87, 77, 7, 77, 94, 91, 87, 24, 20, 92, 67, 65, 75, 86, 3, 93, 23, 90, 76, 84, 10}, "8f9749", -3.149328E8f)));
                return;
            }
            task.addOnSuccessListener(TaskExecutors.zza, this.zzb);
            task.addOnFailureListener(TaskExecutors.zza, this.zzb);
            task.addOnCanceledListener(TaskExecutors.zza, this.zzb);
        } catch (RuntimeExecutionException e) {
            if (e.getCause() instanceof Exception) {
                this.zzb.zzc.zza((Exception) e.getCause());
            } else {
                this.zzb.zzc.zza(e);
            }
        } catch (Exception e2) {
            this.zzb.zzc.zza(e2);
        }
    }
}
