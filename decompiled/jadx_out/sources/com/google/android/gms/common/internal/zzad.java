package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
final class zzad implements IGmsServiceBroker {
    private final IBinder zza;

    zzad(IBinder iBinder) {
        this.zza = iBinder;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.zza;
    }

    @Override // com.google.android.gms.common.internal.IGmsServiceBroker
    public final void getService(IGmsCallbacks iGmsCallbacks, GetServiceRequest getServiceRequest) throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken(NPStringFog.decode(new byte[]{82, 94, 93, 28, 1, 11, 94, 86, 92, 87, 72, 5, 95, 85, 66, 93, 15, 0, 31, 86, 93, 65, 72, 7, 94, 92, 93, 93, 8, 74, 88, 95, 68, 87, 20, 10, 80, 93, 30, 123, 33, 9, 66, 98, 85, 64, 16, 13, 82, 84, 114, 64, 9, 15, 84, 67}, "1102fd", -895942530L));
            parcelObtain.writeStrongBinder(iGmsCallbacks != null ? iGmsCallbacks.asBinder() : null);
            if (getServiceRequest != null) {
                parcelObtain.writeInt(1);
                zzn.zza(getServiceRequest, parcelObtain, 0);
            } else {
                parcelObtain.writeInt(0);
            }
            this.zza.transact(46, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }
}
