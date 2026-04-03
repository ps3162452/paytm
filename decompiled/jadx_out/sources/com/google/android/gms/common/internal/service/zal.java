package com.google.android.gms.common.internal.service;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
public final class zal extends com.google.android.gms.internal.base.zaa implements IInterface {
    zal(IBinder iBinder) {
        super(iBinder, NPStringFog.decode(new byte[]{85, 95, 92, 26, 4, 95, 89, 87, 93, 81, 77, 81, 88, 84, 67, 91, 10, 84, 24, 87, 92, 71, 77, 83, 89, 93, 92, 91, 13, 30, 95, 94, 69, 81, 17, 94, 87, 92, 31, 71, 6, 66, 64, 89, 82, 81, 77, 121, 117, 95, 92, 89, 12, 94, 101, 85, 67, 66, 10, 83, 83}, "6014c0", false, true));
    }

    public final void zae(zak zakVar) throws RemoteException {
        Parcel parcelZaa = zaa();
        com.google.android.gms.internal.base.zac.zae(parcelZaa, zakVar);
        zad(1, parcelZaa);
    }
}
