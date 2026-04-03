package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
public interface IAccountAccessor extends IInterface {

    public static abstract class Stub extends com.google.android.gms.internal.common.zzb implements IAccountAccessor {
        public Stub() {
            super(NPStringFog.decode(new byte[]{87, 11, 8, 24, 85, 89, 91, 3, 9, 83, 28, 87, 90, 0, 23, 89, 91, 82, 26, 3, 8, 69, 28, 85, 91, 9, 8, 89, 92, 24, 93, 10, 17, 83, 64, 88, 85, 8, 75, 127, 115, 85, 87, 11, 16, 88, 70, 119, 87, 7, 0, 69, 65, 89, 70}, "4de626", true, true));
        }

        public static IAccountAccessor asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(NPStringFog.decode(new byte[]{82, 89, 11, 23, 85, 86, 94, 81, 10, 92, 28, 88, 95, 82, 20, 86, 91, 93, 31, 81, 11, 74, 28, 90, 94, 91, 11, 86, 92, 23, 88, 88, 18, 92, 64, 87, 80, 90, 72, 112, 115, 90, 82, 89, 19, 87, 70, 120, 82, 85, 3, 74, 65, 86, 67}, "16f929", true));
            return iInterfaceQueryLocalInterface instanceof IAccountAccessor ? (IAccountAccessor) iInterfaceQueryLocalInterface : new zzw(iBinder);
        }

        @Override // com.google.android.gms.internal.common.zzb
        protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i != 2) {
                return false;
            }
            Account accountZzb = zzb();
            parcel2.writeNoException();
            com.google.android.gms.internal.common.zzc.zzd(parcel2, accountZzb);
            return true;
        }
    }

    Account zzb() throws RemoteException;
}
