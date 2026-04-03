package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
public final class zzy extends com.google.android.gms.internal.common.zza implements zzaa {
    zzy(IBinder iBinder) {
        super(iBinder, NPStringFog.decode(new byte[]{90, 95, 84, 75, 82, 14, 86, 87, 85, 0, 27, 0, 87, 84, 75, 10, 92, 5, 23, 87, 84, 22, 27, 2, 86, 93, 84, 10, 91, 79, 80, 94, 77, 0, 71, 15, 88, 92, 23, 44, 118, 4, 75, 68, 125, 4, 65, 0}, "909e5a", false, false));
    }

    @Override // com.google.android.gms.common.internal.zzaa
    public final int zzc() throws RemoteException {
        Parcel parcelZzB = zzB(2, zza());
        int i = parcelZzB.readInt();
        parcelZzB.recycle();
        return i;
    }

    @Override // com.google.android.gms.common.internal.zzaa
    public final IObjectWrapper zzd() throws RemoteException {
        Parcel parcelZzB = zzB(1, zza());
        IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcelZzB.readStrongBinder());
        parcelZzB.recycle();
        return iObjectWrapperAsInterface;
    }
}
