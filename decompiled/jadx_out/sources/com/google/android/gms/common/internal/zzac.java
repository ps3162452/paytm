package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
public abstract class zzac extends com.google.android.gms.internal.common.zzb implements IGmsCallbacks {
    public zzac() {
        super(NPStringFog.decode(new byte[]{84, 93, 91, 72, 84, 9, 88, 85, 90, 3, 29, 7, 89, 86, 68, 9, 90, 2, 25, 85, 91, 21, 29, 5, 88, 95, 91, 9, 93, 72, 94, 92, 66, 3, 65, 8, 86, 94, 24, 47, 116, 11, 68, 113, 87, 10, 95, 4, 86, 81, 93, 21}, "726f3f", false, false));
    }

    @Override // com.google.android.gms.internal.common.zzb
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 1:
                int i3 = parcel.readInt();
                IBinder strongBinder = parcel.readStrongBinder();
                Bundle bundle = (Bundle) com.google.android.gms.internal.common.zzc.zza(parcel, Bundle.CREATOR);
                com.google.android.gms.internal.common.zzc.zzb(parcel);
                onPostInitComplete(i3, strongBinder, bundle);
                break;
            case 2:
                int i4 = parcel.readInt();
                Bundle bundle2 = (Bundle) com.google.android.gms.internal.common.zzc.zza(parcel, Bundle.CREATOR);
                com.google.android.gms.internal.common.zzc.zzb(parcel);
                zzb(i4, bundle2);
                break;
            case 3:
                int i5 = parcel.readInt();
                IBinder strongBinder2 = parcel.readStrongBinder();
                zzk zzkVar = (zzk) com.google.android.gms.internal.common.zzc.zza(parcel, zzk.CREATOR);
                com.google.android.gms.internal.common.zzc.zzb(parcel);
                zzc(i5, strongBinder2, zzkVar);
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
