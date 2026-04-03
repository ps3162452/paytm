package com.google.android.gms.dynamite;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
public final class zzr extends com.google.android.gms.internal.common.zza implements IInterface {
    zzr(IBinder iBinder) {
        super(iBinder, NPStringFog.decode(new byte[]{2, 91, 84, 28, 86, 91, 14, 83, 85, 87, 31, 85, 15, 80, 75, 93, 88, 80, 79, 83, 84, 65, 31, 80, 24, 90, 88, 95, 88, 64, 4, 26, 112, 118, 72, 90, 0, 89, 80, 70, 84, 120, 14, 85, 93, 87, 67, 98, 83}, "a49214", 1052886504L));
    }

    public final IObjectWrapper zze(IObjectWrapper iObjectWrapper, String str, int i, IObjectWrapper iObjectWrapper2) throws RemoteException {
        Parcel parcelZza = zza();
        com.google.android.gms.internal.common.zzc.zze(parcelZza, iObjectWrapper);
        parcelZza.writeString(str);
        parcelZza.writeInt(i);
        com.google.android.gms.internal.common.zzc.zze(parcelZza, iObjectWrapper2);
        Parcel parcelZzB = zzB(2, parcelZza);
        IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcelZzB.readStrongBinder());
        parcelZzB.recycle();
        return iObjectWrapperAsInterface;
    }

    public final IObjectWrapper zzf(IObjectWrapper iObjectWrapper, String str, int i, IObjectWrapper iObjectWrapper2) throws RemoteException {
        Parcel parcelZza = zza();
        com.google.android.gms.internal.common.zzc.zze(parcelZza, iObjectWrapper);
        parcelZza.writeString(str);
        parcelZza.writeInt(i);
        com.google.android.gms.internal.common.zzc.zze(parcelZza, iObjectWrapper2);
        Parcel parcelZzB = zzB(3, parcelZza);
        IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcelZzB.readStrongBinder());
        parcelZzB.recycle();
        return iObjectWrapperAsInterface;
    }
}
