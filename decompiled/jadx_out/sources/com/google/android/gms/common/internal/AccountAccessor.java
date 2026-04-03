package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Binder;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.IAccountAccessor;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
public class AccountAccessor extends IAccountAccessor.Stub {
    public static Account getAccountBinderSafe(IAccountAccessor iAccountAccessor) {
        Account accountZzb = null;
        if (iAccountAccessor != null) {
            long jClearCallingIdentity = Binder.clearCallingIdentity();
            try {
                try {
                    accountZzb = iAccountAccessor.zzb();
                } catch (RemoteException e) {
                    Log.w(NPStringFog.decode(new byte[]{115, 82, 90, 11, 67, 12, 70, 112, 90, 7, 83, 17, 65, 94, 75}, "219d6b", 1.107199911E9d), NPStringFog.decode(new byte[]{54, 82, 14, 11, 65, 93, 68, 86, 0, 7, 90, 77, 10, 67, 67, 5, 86, 91, 1, 68, 16, 11, 71, 24, 20, 69, 12, 6, 84, 90, 8, 78, 67, 0, 92, 93, 0}, "d7cd58", false));
                }
            } finally {
                Binder.restoreCallingIdentity(jClearCallingIdentity);
            }
        }
        return accountZzb;
    }

    public final boolean equals(Object obj) {
        throw null;
    }

    @Override // com.google.android.gms.common.internal.IAccountAccessor
    public final Account zzb() {
        throw null;
    }
}
