package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
public abstract class zzz extends com.google.android.gms.internal.common.zzb implements zzaa {
    public zzz() {
        super(NPStringFog.decode(new byte[]{7, 89, 89, 74, 83, 89, 11, 81, 88, 1, 26, 87, 10, 82, 70, 11, 93, 82, 74, 81, 89, 23, 26, 85, 11, 91, 89, 11, 90, 24, 13, 88, 64, 1, 70, 88, 5, 90, 26, 45, 119, 83, 22, 66, 112, 5, 64, 87}, "d64d46", -2015945670L));
    }

    public static zzaa zzg(IBinder iBinder) {
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(NPStringFog.decode(new byte[]{5, 86, 9, 30, 1, 95, 9, 94, 8, 85, 72, 81, 8, 93, 22, 95, 15, 84, 72, 94, 9, 67, 72, 83, 9, 84, 9, 95, 8, 30, 15, 87, 16, 85, 20, 94, 7, 85, 74, 121, 37, 85, 20, 77, 32, 81, 18, 81}, "f9d0f0", 18133));
        return iInterfaceQueryLocalInterface instanceof zzaa ? (zzaa) iInterfaceQueryLocalInterface : new zzy(iBinder);
    }

    @Override // com.google.android.gms.internal.common.zzb
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 1:
                IObjectWrapper iObjectWrapperZzd = zzd();
                parcel2.writeNoException();
                com.google.android.gms.internal.common.zzc.zze(parcel2, iObjectWrapperZzd);
                return true;
            case 2:
                int iZzc = zzc();
                parcel2.writeNoException();
                parcel2.writeInt(iZzc);
                return true;
            default:
                return false;
        }
    }
}
