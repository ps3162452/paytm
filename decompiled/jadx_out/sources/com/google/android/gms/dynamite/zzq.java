package com.google.android.gms.dynamite;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
public final class zzq extends com.google.android.gms.internal.common.zza implements IInterface {
    zzq(IBinder iBinder) {
        super(iBinder, NPStringFog.decode(new byte[]{1, 9, 90, 77, 4, 86, 13, 1, 91, 6, 77, 88, 12, 2, 69, 12, 10, 93, 76, 1, 90, 16, 77, 93, 27, 8, 86, 14, 10, 77, 7, 72, 126, 39, 26, 87, 3, 11, 94, 23, 6, 117, 13, 7, 83, 6, 17}, "bf7cc9", true));
    }

    public final int zze() throws RemoteException {
        Parcel parcelZzB = zzB(6, zza());
        int i = parcelZzB.readInt();
        parcelZzB.recycle();
        return i;
    }

    public final int zzf(IObjectWrapper iObjectWrapper, String str, boolean z) throws RemoteException {
        Parcel parcelZza = zza();
        com.google.android.gms.internal.common.zzc.zze(parcelZza, iObjectWrapper);
        parcelZza.writeString(str);
        parcelZza.writeInt(z ? 1 : 0);
        Parcel parcelZzB = zzB(3, parcelZza);
        int i = parcelZzB.readInt();
        parcelZzB.recycle();
        return i;
    }

    public final int zzg(IObjectWrapper iObjectWrapper, String str, boolean z) throws RemoteException {
        Parcel parcelZza = zza();
        com.google.android.gms.internal.common.zzc.zze(parcelZza, iObjectWrapper);
        parcelZza.writeString(str);
        parcelZza.writeInt(z ? 1 : 0);
        Parcel parcelZzB = zzB(5, parcelZza);
        int i = parcelZzB.readInt();
        parcelZzB.recycle();
        return i;
    }

    public final IObjectWrapper zzh(IObjectWrapper iObjectWrapper, String str, int i) throws RemoteException {
        Parcel parcelZza = zza();
        com.google.android.gms.internal.common.zzc.zze(parcelZza, iObjectWrapper);
        parcelZza.writeString(str);
        parcelZza.writeInt(i);
        Parcel parcelZzB = zzB(2, parcelZza);
        IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcelZzB.readStrongBinder());
        parcelZzB.recycle();
        return iObjectWrapperAsInterface;
    }

    public final IObjectWrapper zzi(IObjectWrapper iObjectWrapper, String str, int i, IObjectWrapper iObjectWrapper2) throws RemoteException {
        Parcel parcelZza = zza();
        com.google.android.gms.internal.common.zzc.zze(parcelZza, iObjectWrapper);
        parcelZza.writeString(str);
        parcelZza.writeInt(i);
        com.google.android.gms.internal.common.zzc.zze(parcelZza, iObjectWrapper2);
        Parcel parcelZzB = zzB(8, parcelZza);
        IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcelZzB.readStrongBinder());
        parcelZzB.recycle();
        return iObjectWrapperAsInterface;
    }

    public final IObjectWrapper zzj(IObjectWrapper iObjectWrapper, String str, int i) throws RemoteException {
        Parcel parcelZza = zza();
        com.google.android.gms.internal.common.zzc.zze(parcelZza, iObjectWrapper);
        parcelZza.writeString(str);
        parcelZza.writeInt(i);
        Parcel parcelZzB = zzB(4, parcelZza);
        IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcelZzB.readStrongBinder());
        parcelZzB.recycle();
        return iObjectWrapperAsInterface;
    }

    public final IObjectWrapper zzk(IObjectWrapper iObjectWrapper, String str, boolean z, long j) throws RemoteException {
        Parcel parcelZza = zza();
        com.google.android.gms.internal.common.zzc.zze(parcelZza, iObjectWrapper);
        parcelZza.writeString(str);
        parcelZza.writeInt(z ? 1 : 0);
        parcelZza.writeLong(j);
        Parcel parcelZzB = zzB(7, parcelZza);
        IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcelZzB.readStrongBinder());
        parcelZzB.recycle();
        return iObjectWrapperAsInterface;
    }
}
