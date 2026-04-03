package com.google.android.gms.common.internal.service;

import android.os.Parcel;
import android.os.RemoteException;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
public abstract class zaj extends com.google.android.gms.internal.base.zab implements zak {
    public zaj() {
        super(NPStringFog.decode(new byte[]{0, 88, 94, 25, 86, 14, 12, 80, 95, 82, 31, 0, 13, 83, 65, 88, 88, 5, 77, 80, 94, 68, 31, 2, 12, 90, 94, 88, 95, 79, 10, 89, 71, 82, 67, 15, 2, 91, 29, 68, 84, 19, 21, 94, 80, 82, 31, 40, 32, 88, 94, 90, 94, 15, 32, 86, 95, 91, 83, 0, 0, 92, 64}, "c7371a", 9.73762983E8d));
    }

    @Override // com.google.android.gms.internal.base.zab
    protected final boolean zaa(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i != 1) {
            return false;
        }
        int i3 = parcel.readInt();
        com.google.android.gms.internal.base.zac.zab(parcel);
        zab(i3);
        return true;
    }
}
