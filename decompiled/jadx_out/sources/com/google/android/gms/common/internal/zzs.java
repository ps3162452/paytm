package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.common.stats.ConnectionTracker;
import java.util.HashMap;
import java.util.concurrent.Executor;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
final class zzs extends GmsClientSupervisor {
    private final HashMap zzb = new HashMap();
    private final Context zzc;
    private volatile Handler zzd;
    private final zzr zze;
    private final ConnectionTracker zzf;
    private final long zzg;
    private final long zzh;
    private volatile Executor zzi;

    zzs(Context context, Looper looper, Executor executor) {
        zzr zzrVar = new zzr(this, null);
        this.zze = zzrVar;
        this.zzc = context.getApplicationContext();
        this.zzd = new com.google.android.gms.internal.common.zzi(looper, zzrVar);
        this.zzf = ConnectionTracker.getInstance();
        this.zzg = 5000L;
        this.zzh = 300000L;
        this.zzi = executor;
    }

    @Override // com.google.android.gms.common.internal.GmsClientSupervisor
    protected final void zza(zzo zzoVar, ServiceConnection serviceConnection, String str) {
        Preconditions.checkNotNull(serviceConnection, NPStringFog.decode(new byte[]{97, 1, 16, 68, 91, 0, 87, 39, 13, 92, 92, 6, 81, 16, 11, 93, 92, 67, 95, 17, 17, 70, 18, 13, 93, 16, 66, 80, 87, 67, 92, 17, 14, 94}, "2db22c", 5.34148822E8d));
        synchronized (this.zzb) {
            zzp zzpVar = (zzp) this.zzb.get(zzoVar);
            if (zzpVar == null) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{44, 94, 88, 0, 27, 92, 17, 69, 83, 11, 23, 21, 1, 94, 88, 11, 6, 86, 22, 88, 89, 11, 67, 70, 22, 80, 66, 16, 16, 21, 4, 94, 68, 69, 16, 80, 16, 71, 95, 6, 6, 21, 1, 94, 88, 3, 10, 82, 88, 17}, "b16ec5", 5303) + zzoVar.toString());
            }
            if (!zzpVar.zzh(serviceConnection)) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{109, 65, 65, 89, 95, 1, 25, 71, 87, 16, 68, 8, 91, 90, 86, 84, 17, 7, 25, 116, 85, 67, 98, 3, 75, 69, 81, 83, 84, 37, 86, 93, 86, 85, 82, 18, 80, 92, 86, 16, 17, 18, 81, 82, 76, 16, 70, 7, 74, 19, 86, 95, 69, 70, 91, 92, 77, 94, 85, 70, 91, 86, 94, 95, 67, 3, 23, 19, 24, 83, 94, 8, 95, 90, 95, 13}, "93801f", -13076) + zzoVar.toString());
            }
            zzpVar.zzf(serviceConnection, str);
            if (zzpVar.zzi()) {
                this.zzd.sendMessageDelayed(this.zzd.obtainMessage(0, zzoVar), this.zzg);
            }
        }
    }

    @Override // com.google.android.gms.common.internal.GmsClientSupervisor
    protected final boolean zzc(zzo zzoVar, ServiceConnection serviceConnection, String str, Executor executor) {
        boolean zZzj;
        Preconditions.checkNotNull(serviceConnection, NPStringFog.decode(new byte[]{103, 6, 71, 19, 89, 2, 81, 32, 90, 11, 94, 4, 87, 23, 92, 10, 94, 65, 89, 22, 70, 17, 16, 15, 91, 23, 21, 7, 85, 65, 90, 22, 89, 9}, "4c5e0a", 1.935314E9f));
        synchronized (this.zzb) {
            zzp zzpVar = (zzp) this.zzb.get(zzoVar);
            if (executor == null) {
                executor = this.zzi;
            }
            if (zzpVar == null) {
                zzpVar = new zzp(this, zzoVar);
                zzpVar.zzd(serviceConnection, serviceConnection, str);
                zzpVar.zze(str, executor);
                this.zzb.put(zzoVar, zzpVar);
            } else {
                this.zzd.removeMessages(0, zzoVar);
                if (!zzpVar.zzh(serviceConnection)) {
                    zzpVar.zzd(serviceConnection, serviceConnection, str);
                    switch (zzpVar.zza()) {
                        case 1:
                            serviceConnection.onServiceConnected(zzpVar.zzb(), zzpVar.zzc());
                            break;
                        case 2:
                            zzpVar.zze(str, executor);
                            break;
                    }
                } else {
                    throw new IllegalStateException(NPStringFog.decode(new byte[]{49, 65, 27, 89, 94, 1, 69, 71, 13, 16, 82, 15, 11, 87, 66, 81, 16, 33, 8, 64, 49, 85, 66, 16, 12, 80, 7, 115, 95, 8, 11, 86, 1, 68, 89, 9, 11, 19, 22, 88, 81, 18, 69, 68, 3, 67, 16, 7, 9, 65, 7, 81, 84, 31, 69, 80, 13, 94, 94, 3, 6, 71, 7, 84, 16, 4, 0, 85, 13, 66, 85, 72, 69, 19, 1, 95, 94, 0, 12, 84, 95}, "e3b00f", 4.44458952E8d) + zzoVar.toString());
                }
            }
            zZzj = zzpVar.zzj();
        }
        return zZzj;
    }

    final void zzi(Executor executor) {
        synchronized (this.zzb) {
            this.zzi = executor;
        }
    }

    final void zzj(Looper looper) {
        synchronized (this.zzb) {
            this.zzd = new com.google.android.gms.internal.common.zzi(looper, this.zze);
        }
    }
}
