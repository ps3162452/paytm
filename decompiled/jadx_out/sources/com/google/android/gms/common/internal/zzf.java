package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
public final class zzf extends zza {
    public final IBinder zze;
    final BaseGmsClient zzf;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzf(BaseGmsClient baseGmsClient, int i, IBinder iBinder, Bundle bundle) {
        super(baseGmsClient, i, bundle);
        this.zzf = baseGmsClient;
        this.zze = iBinder;
    }

    @Override // com.google.android.gms.common.internal.zza
    protected final void zzb(ConnectionResult connectionResult) {
        if (this.zzf.zzx != null) {
            this.zzf.zzx.onConnectionFailed(connectionResult);
        }
        this.zzf.onConnectionFailed(connectionResult);
    }

    @Override // com.google.android.gms.common.internal.zza
    protected final boolean zzd() {
        try {
            IBinder iBinder = this.zze;
            Preconditions.checkNotNull(iBinder);
            String interfaceDescriptor = iBinder.getInterfaceDescriptor();
            if (!this.zzf.getServiceDescriptor().equals(interfaceDescriptor)) {
                Log.w(NPStringFog.decode(new byte[]{113, 85, 67, 112, 9, 92, 83, 86, 68}, "6803e5", false, true), NPStringFog.decode(new byte[]{66, 80, 68, 71, 89, 82, 84, 21, 82, 84, 67, 82, 67, 92, 70, 69, 95, 67, 17, 88, 95, 66, 93, 80, 69, 86, 94, 11, 16}, "156101", false, true) + this.zzf.getServiceDescriptor() + NPStringFog.decode(new byte[]{16, 78, 21, 28, 22}, "08f26f", true, false) + interfaceDescriptor);
                return false;
            }
            IInterface iInterfaceCreateServiceInterface = this.zzf.createServiceInterface(this.zze);
            if (iInterfaceCreateServiceInterface == null) {
                return false;
            }
            if (!BaseGmsClient.zzn(this.zzf, 2, 4, iInterfaceCreateServiceInterface) && !BaseGmsClient.zzn(this.zzf, 3, 4, iInterfaceCreateServiceInterface)) {
                return false;
            }
            this.zzf.zzB = null;
            Bundle connectionHint = this.zzf.getConnectionHint();
            BaseGmsClient baseGmsClient = this.zzf;
            if (baseGmsClient.zzw != null) {
                baseGmsClient.zzw.onConnected(connectionHint);
            }
            return true;
        } catch (RemoteException e) {
            Log.w(NPStringFog.decode(new byte[]{119, 8, 75, 123, 14, 81, 85, 11, 76}, "0e88b8", true), NPStringFog.decode(new byte[]{22, 0, 71, 78, 92, 1, 0, 69, 69, 74, 90, 0, 4, 7, 89, 65, 21, 6, 12, 0, 81}, "ee585b", true, false));
            return false;
        }
    }
}
