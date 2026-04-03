package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
public final class zzw extends com.google.android.gms.internal.common.zza implements IAccountAccessor {
    zzw(IBinder iBinder) {
        super(iBinder, NPStringFog.decode(new byte[]{85, 95, 94, 77, 87, 88, 89, 87, 95, 6, 30, 86, 88, 84, 65, 12, 89, 83, 24, 87, 94, 16, 30, 84, 89, 93, 94, 12, 94, 25, 95, 94, 71, 6, 66, 89, 87, 92, 29, 42, 113, 84, 85, 95, 70, 13, 68, 118, 85, 83, 86, 16, 67, 88, 68}, "603c07", true, true));
    }

    @Override // com.google.android.gms.common.internal.IAccountAccessor
    public final Account zzb() throws RemoteException {
        Parcel parcelZzB = zzB(2, zza());
        Account account = (Account) com.google.android.gms.internal.common.zzc.zza(parcelZzB, Account.CREATOR);
        parcelZzB.recycle();
        return account;
    }
}
