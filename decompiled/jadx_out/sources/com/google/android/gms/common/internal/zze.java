package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
public final class zze implements ServiceConnection {
    final BaseGmsClient zza;
    private final int zzb;

    public zze(BaseGmsClient baseGmsClient, int i) {
        this.zza = baseGmsClient;
        this.zzb = i;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        BaseGmsClient baseGmsClient = this.zza;
        if (iBinder == null) {
            BaseGmsClient.zzk(baseGmsClient, 16);
            return;
        }
        synchronized (baseGmsClient.zzq) {
            BaseGmsClient baseGmsClient2 = this.zza;
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(NPStringFog.decode(new byte[]{82, 89, 12, 30, 3, 9, 94, 81, 13, 85, 74, 7, 95, 82, 19, 95, 13, 2, 31, 81, 12, 67, 74, 5, 94, 91, 12, 95, 10, 72, 88, 88, 21, 85, 22, 8, 80, 90, 79, 121, 35, 11, 66, 101, 4, 66, 18, 15, 82, 83, 35, 66, 11, 13, 84, 68}, "16a0df", false));
            baseGmsClient2.zzr = (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IGmsServiceBroker)) ? new zzad(iBinder) : (IGmsServiceBroker) iInterfaceQueryLocalInterface;
        }
        this.zza.zzl(0, null, this.zzb);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        synchronized (this.zza.zzq) {
            this.zza.zzr = null;
        }
        Handler handler = this.zza.zzb;
        handler.sendMessage(handler.obtainMessage(6, this.zzb, 1));
    }
}
