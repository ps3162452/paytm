package com.google.android.gms.common.moduleinstall.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.internal.IStatusCallback;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
public final class zaf extends com.google.android.gms.internal.base.zaa implements IInterface {
    zaf(IBinder iBinder) {
        super(iBinder, NPStringFog.decode(new byte[]{87, 88, 14, 29, 2, 12, 91, 80, 15, 86, 75, 2, 90, 83, 17, 92, 12, 7, 26, 80, 14, 64, 75, 0, 91, 90, 14, 92, 11, 77, 89, 88, 7, 70, 9, 6, 93, 89, 16, 71, 4, 15, 88, 25, 10, 93, 17, 6, 70, 89, 2, 95, 75, 42, 121, 88, 7, 70, 9, 6, 125, 89, 16, 71, 4, 15, 88, 100, 6, 65, 19, 10, 87, 82}, "47c3ec", -13094));
    }

    public final void zae(zae zaeVar, ApiFeatureRequest apiFeatureRequest) throws RemoteException {
        Parcel parcelZaa = zaa();
        com.google.android.gms.internal.base.zac.zae(parcelZaa, zaeVar);
        com.google.android.gms.internal.base.zac.zad(parcelZaa, apiFeatureRequest);
        zac(1, parcelZaa);
    }

    public final void zaf(zae zaeVar, ApiFeatureRequest apiFeatureRequest) throws RemoteException {
        Parcel parcelZaa = zaa();
        com.google.android.gms.internal.base.zac.zae(parcelZaa, zaeVar);
        com.google.android.gms.internal.base.zac.zad(parcelZaa, apiFeatureRequest);
        zac(3, parcelZaa);
    }

    public final void zag(zae zaeVar, ApiFeatureRequest apiFeatureRequest, zah zahVar) throws RemoteException {
        Parcel parcelZaa = zaa();
        com.google.android.gms.internal.base.zac.zae(parcelZaa, zaeVar);
        com.google.android.gms.internal.base.zac.zad(parcelZaa, apiFeatureRequest);
        com.google.android.gms.internal.base.zac.zae(parcelZaa, zahVar);
        zac(2, parcelZaa);
    }

    public final void zah(IStatusCallback iStatusCallback, ApiFeatureRequest apiFeatureRequest) throws RemoteException {
        Parcel parcelZaa = zaa();
        com.google.android.gms.internal.base.zac.zae(parcelZaa, iStatusCallback);
        com.google.android.gms.internal.base.zac.zad(parcelZaa, apiFeatureRequest);
        zac(4, parcelZaa);
    }

    public final void zai(IStatusCallback iStatusCallback, zah zahVar) throws RemoteException {
        Parcel parcelZaa = zaa();
        com.google.android.gms.internal.base.zac.zae(parcelZaa, iStatusCallback);
        com.google.android.gms.internal.base.zac.zae(parcelZaa, zahVar);
        zac(6, parcelZaa);
    }
}
