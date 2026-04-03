package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
public final class zzab extends com.google.android.gms.internal.common.zza implements IGmsCallbacks {
    zzab(IBinder iBinder) {
        super(iBinder, NPStringFog.decode(new byte[]{85, 88, 85, 24, 3, 88, 89, 80, 84, 83, 74, 86, 88, 83, 74, 89, 13, 83, 24, 80, 85, 69, 74, 84, 89, 90, 85, 89, 10, 25, 95, 89, 76, 83, 22, 89, 87, 91, 22, 127, 35, 90, 69, 116, 89, 90, 8, 85, 87, 84, 83, 69}, "6786d7", 543316548L));
    }

    @Override // com.google.android.gms.common.internal.IGmsCallbacks
    public final void onPostInitComplete(int i, IBinder iBinder, Bundle bundle) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeInt(i);
        parcelZza.writeStrongBinder(iBinder);
        com.google.android.gms.internal.common.zzc.zzc(parcelZza, bundle);
        zzC(1, parcelZza);
    }

    @Override // com.google.android.gms.common.internal.IGmsCallbacks
    public final void zzb(int i, Bundle bundle) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.common.internal.IGmsCallbacks
    public final void zzc(int i, IBinder iBinder, zzk zzkVar) throws RemoteException {
        throw null;
    }
}
