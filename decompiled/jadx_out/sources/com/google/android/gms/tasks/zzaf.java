package com.google.android.gms.tasks;

import java.util.concurrent.ExecutionException;
import n.NPStringFog;

/* JADX INFO: loaded from: classes56.dex */
final class zzaf<T> implements zzae<T> {
    private final Object zza = new Object();
    private final int zzb;
    private final zzw zzc;
    private int zzd;
    private int zze;
    private int zzf;
    private Exception zzg;
    private boolean zzh;

    public zzaf(int i, zzw zzwVar) {
        this.zzb = i;
        this.zzc = zzwVar;
    }

    private final void zza() {
        if (this.zzd + this.zze + this.zzf == this.zzb) {
            if (this.zzg == null) {
                if (this.zzh) {
                    this.zzc.zzc();
                    return;
                } else {
                    this.zzc.zzb(null);
                    return;
                }
            }
            this.zzc.zza(new ExecutionException(this.zze + NPStringFog.decode(new byte[]{65, 86, 23, 22, 65, 11, 7, 25}, "a9bbad", true, true) + this.zzb + NPStringFog.decode(new byte[]{68, 76, 95, 86, 4, 66, 8, 64, 88, 92, 6, 16, 16, 88, 66, 89, 18, 16, 2, 88, 88, 94, 4, 84}, "d912a0", false, false), this.zzg));
        }
    }

    @Override // com.google.android.gms.tasks.OnCanceledListener
    public final void onCanceled() {
        synchronized (this.zza) {
            this.zzf++;
            this.zzh = true;
            zza();
        }
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    public final void onFailure(Exception exc) {
        synchronized (this.zza) {
            this.zze++;
            this.zzg = exc;
            zza();
        }
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public final void onSuccess(T t) {
        synchronized (this.zza) {
            this.zzd++;
            zza();
        }
    }
}
