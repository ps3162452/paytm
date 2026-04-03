package com.google.android.gms.common.api.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
public interface IStatusCallback extends IInterface {

    public static abstract class Stub extends com.google.android.gms.internal.base.zab implements IStatusCallback {
        public Stub() {
            super(NPStringFog.decode(new byte[]{81, 89, 12, 30, 6, 88, 93, 81, 13, 85, 79, 86, 92, 82, 19, 95, 8, 83, 28, 81, 12, 67, 79, 84, 93, 91, 12, 95, 15, 25, 83, 70, 8, 30, 8, 89, 70, 83, 19, 94, 0, 91, 28, 127, 50, 68, 0, 67, 71, 69, 34, 81, 13, 91, 80, 87, 2, 91}, "26a0a7", 1.8126226E9f));
        }

        public static IStatusCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(NPStringFog.decode(new byte[]{87, 9, 95, 24, 80, 91, 91, 1, 94, 83, 25, 85, 90, 2, 64, 89, 94, 80, 26, 1, 95, 69, 25, 87, 91, 11, 95, 89, 89, 26, 85, 22, 91, 24, 94, 90, 64, 3, 64, 88, 86, 88, 26, 47, 97, 66, 86, 64, 65, 21, 113, 87, 91, 88, 86, 7, 81, 93}, "4f2674", -6731));
            return iInterfaceQueryLocalInterface instanceof IStatusCallback ? (IStatusCallback) iInterfaceQueryLocalInterface : new zaby(iBinder);
        }

        @Override // com.google.android.gms.internal.base.zab
        protected final boolean zaa(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i != 1) {
                return false;
            }
            Status status = (Status) com.google.android.gms.internal.base.zac.zaa(parcel, Status.CREATOR);
            com.google.android.gms.internal.base.zac.zab(parcel);
            onResult(status);
            return true;
        }
    }

    void onResult(Status status) throws RemoteException;
}
