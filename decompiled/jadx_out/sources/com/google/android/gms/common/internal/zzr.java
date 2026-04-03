package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
final class zzr implements Handler.Callback {
    final zzs zza;

    /* synthetic */ zzr(zzs zzsVar, zzq zzqVar) {
        this.zza = zzsVar;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        ComponentName componentName;
        switch (message.what) {
            case 0:
                synchronized (this.zza.zzb) {
                    zzo zzoVar = (zzo) message.obj;
                    zzp zzpVar = (zzp) this.zza.zzb.get(zzoVar);
                    if (zzpVar != null && zzpVar.zzi()) {
                        if (zzpVar.zzj()) {
                            zzpVar.zzg(NPStringFog.decode(new byte[]{119, 88, 64, 37, 93, 13, 85, 91, 71, 53, 68, 20, 85, 71, 69, 15, 66, 11, 66}, "053f1d", 1.2179082E9f));
                        }
                        this.zza.zzb.remove(zzoVar);
                    }
                    break;
                }
                return true;
            case 1:
                synchronized (this.zza.zzb) {
                    zzo zzoVar2 = (zzo) message.obj;
                    zzp zzpVar2 = (zzp) this.zza.zzb.get(zzoVar2);
                    if (zzpVar2 != null && zzpVar2.zza() == 3) {
                        Log.e(NPStringFog.decode(new byte[]{116, 90, 17, 113, 88, 94, 86, 89, 22, 97, 65, 71, 86, 69, 20, 91, 71, 88, 65}, "37b247", 7.26341413E8d), NPStringFog.decode(new byte[]{96, 89, 91, 6, 11, 69, 64, 16, 65, 2, 13, 68, 93, 94, 81, 67, 2, 95, 70, 16, 101, 6, 22, 70, 93, 83, 83, 32, 11, 94, 90, 85, 85, 23, 13, 95, 90, 16, 85, 2, 8, 92, 86, 81, 85, 8, 68}, "406cd0", -7541) + String.valueOf(zzoVar2), new Exception());
                        ComponentName componentNameZzb = zzpVar2.zzb();
                        if (componentNameZzb == null) {
                            componentNameZzb = zzoVar2.zza();
                        }
                        if (componentNameZzb == null) {
                            String strZzc = zzoVar2.zzc();
                            Preconditions.checkNotNull(strZzc);
                            componentName = new ComponentName(strZzc, NPStringFog.decode(new byte[]{68, 86, 94, 10, 14, 67, 95}, "185da4", -362838752L));
                        } else {
                            componentName = componentNameZzb;
                        }
                        zzpVar2.onServiceDisconnected(componentName);
                    }
                    break;
                }
                return true;
            default:
                return false;
        }
    }
}
