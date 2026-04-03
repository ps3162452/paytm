package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
public final class zam extends com.google.android.gms.internal.base.zaa implements IInterface {
    zam(IBinder iBinder) {
        super(iBinder, NPStringFog.decode(new byte[]{82, 10, 15, 24, 87, 95, 94, 2, 14, 83, 30, 81, 95, 1, 16, 89, 89, 84, 31, 2, 15, 69, 30, 83, 94, 8, 15, 89, 94, 30, 88, 11, 22, 83, 66, 94, 80, 9, 76, 127, 99, 89, 86, 11, 43, 88, 114, 69, 69, 17, 13, 88, 115, 66, 84, 4, 22, 89, 66}, "1eb600", 1898937688L));
    }

    public final IObjectWrapper zae(IObjectWrapper iObjectWrapper, zax zaxVar) throws RemoteException {
        Parcel parcelZaa = zaa();
        com.google.android.gms.internal.base.zac.zae(parcelZaa, iObjectWrapper);
        com.google.android.gms.internal.base.zac.zad(parcelZaa, zaxVar);
        Parcel parcelZab = zab(2, parcelZaa);
        IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcelZab.readStrongBinder());
        parcelZab.recycle();
        return iObjectWrapperAsInterface;
    }
}
