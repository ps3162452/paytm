package com.google.android.gms.signin.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.internal.IAccountAccessor;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
public final class zaf extends com.google.android.gms.internal.base.zaa implements IInterface {
    zaf(IBinder iBinder) {
        super(iBinder, NPStringFog.decode(new byte[]{84, 88, 92, 75, 84, 12, 88, 80, 93, 0, 29, 2, 89, 83, 67, 10, 90, 7, 25, 80, 92, 22, 29, 16, 94, 80, 95, 12, 93, 77, 94, 89, 69, 0, 65, 13, 86, 91, 31, 44, 96, 10, 80, 89, 120, 11, 96, 6, 69, 65, 88, 6, 86}, "771e3c", -1078585514L));
    }

    public final void zae(int i) throws RemoteException {
        Parcel parcelZaa = zaa();
        parcelZaa.writeInt(i);
        zac(7, parcelZaa);
    }

    public final void zaf(IAccountAccessor iAccountAccessor, int i, boolean z) throws RemoteException {
        Parcel parcelZaa = zaa();
        com.google.android.gms.internal.base.zac.zae(parcelZaa, iAccountAccessor);
        parcelZaa.writeInt(i);
        com.google.android.gms.internal.base.zac.zac(parcelZaa, z);
        zac(9, parcelZaa);
    }

    public final void zag(zai zaiVar, zae zaeVar) throws RemoteException {
        Parcel parcelZaa = zaa();
        com.google.android.gms.internal.base.zac.zad(parcelZaa, zaiVar);
        com.google.android.gms.internal.base.zac.zae(parcelZaa, zaeVar);
        zac(12, parcelZaa);
    }
}
