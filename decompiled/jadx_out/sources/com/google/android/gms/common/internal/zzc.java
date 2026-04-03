package com.google.android.gms.common.internal;

import android.util.Log;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
public abstract class zzc {
    private Object zza;
    private boolean zzb = false;
    final BaseGmsClient zzd;

    public zzc(BaseGmsClient baseGmsClient, Object obj) {
        this.zzd = baseGmsClient;
        this.zza = obj;
    }

    protected abstract void zza(Object obj);

    protected abstract void zzc();

    public final void zze() {
        Object obj;
        synchronized (this) {
            obj = this.zza;
            if (this.zzb) {
                Log.w(NPStringFog.decode(new byte[]{34, 12, 64, 32, 93, 8, 0, 15, 71}, "ea3c1a", false), NPStringFog.decode(new byte[]{114, 85, 89, 84, 83, 85, 82, 95, 21, 72, 67, 91, 73, 77, 21}, "145814", -1.6431252E9f) + toString() + NPStringFog.decode(new byte[]{70, 91, 87, 11, 8, 95, 70, 75, 87, 23, 21, 93, 2, 23, 18, 54, 14, 81, 21, 25, 91, 17, 70, 86, 9, 77, 18, 17, 7, 94, 3, 23}, "f92bf8", true, true));
            }
        }
        if (obj != null) {
            try {
                zza(obj);
            } catch (RuntimeException e) {
                throw e;
            }
        }
        synchronized (this) {
            this.zzb = true;
        }
        zzg();
    }

    public final void zzf() {
        synchronized (this) {
            this.zza = null;
        }
    }

    public final void zzg() {
        zzf();
        synchronized (this.zzd.zzt) {
            this.zzd.zzt.remove(this);
        }
    }
}
