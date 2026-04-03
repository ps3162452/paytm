package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
public interface ICancelToken extends IInterface {

    public static abstract class Stub extends com.google.android.gms.internal.common.zzb implements ICancelToken {
        public Stub() {
            super(NPStringFog.decode(new byte[]{7, 12, 94, 30, 85, 11, 11, 4, 95, 85, 28, 5, 10, 7, 65, 95, 91, 0, 74, 4, 94, 67, 28, 7, 11, 14, 94, 95, 92, 74, 13, 13, 71, 85, 64, 10, 5, 15, 29, 121, 113, 5, 10, 0, 86, 92, 102, 11, 15, 6, 93}, "dc302d", 2.924716E8f));
        }

        public static ICancelToken asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(NPStringFog.decode(new byte[]{91, 95, 89, 23, 1, 89, 87, 87, 88, 92, 72, 87, 86, 84, 70, 86, 15, 82, 22, 87, 89, 74, 72, 85, 87, 93, 89, 86, 8, 24, 81, 94, 64, 92, 20, 88, 89, 92, 26, 112, 37, 87, 86, 83, 81, 85, 50, 89, 83, 85, 90}, "8049f6", 4.9624E8f));
            return iInterfaceQueryLocalInterface instanceof ICancelToken ? (ICancelToken) iInterfaceQueryLocalInterface : new zzx(iBinder);
        }

        @Override // com.google.android.gms.internal.common.zzb
        protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i != 2) {
                return false;
            }
            cancel();
            return true;
        }
    }

    void cancel() throws RemoteException;
}
