package com.google.android.gms.common.internal.service;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.internal.TelemetryData;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
public final class zai extends com.google.android.gms.internal.base.zaa implements IInterface {
    zai(IBinder iBinder) {
        super(iBinder, NPStringFog.decode(new byte[]{1, 11, 92, 74, 94, 92, 13, 3, 93, 1, 23, 82, 12, 0, 67, 11, 80, 87, 76, 3, 92, 23, 23, 80, 13, 9, 92, 11, 87, 29, 11, 10, 69, 1, 75, 93, 3, 8, 31, 23, 92, 65, 20, 13, 82, 1, 23, 122, 33, 8, 88, 1, 87, 71, 54, 1, 93, 1, 84, 86, 22, 22, 72, 55, 92, 65, 20, 13, 82, 1}, "bd1d93", false));
    }

    public final void zae(TelemetryData telemetryData) throws RemoteException {
        Parcel parcelZaa = zaa();
        com.google.android.gms.internal.base.zac.zad(parcelZaa, telemetryData);
        zad(1, parcelZaa);
    }
}
