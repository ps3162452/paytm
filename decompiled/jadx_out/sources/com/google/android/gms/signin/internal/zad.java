package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.RemoteException;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
public abstract class zad extends com.google.android.gms.internal.base.zab implements zae {
    public zad() {
        super(NPStringFog.decode(new byte[]{5, 95, 11, 31, 85, 14, 9, 87, 10, 84, 28, 0, 8, 84, 20, 94, 91, 5, 72, 87, 11, 66, 28, 18, 15, 87, 8, 88, 92, 79, 15, 94, 18, 84, 64, 15, 7, 92, 72, 120, 97, 8, 1, 94, 47, 95, 113, 0, 10, 92, 4, 80, 81, 10, 21}, "f0f12a", true, false));
    }

    @Override // com.google.android.gms.internal.base.zab
    protected final boolean zaa(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 3:
                com.google.android.gms.internal.base.zac.zab(parcel);
                break;
            case 4:
                com.google.android.gms.internal.base.zac.zab(parcel);
                break;
            case 5:
            default:
                return false;
            case 6:
                com.google.android.gms.internal.base.zac.zab(parcel);
                break;
            case 7:
                com.google.android.gms.internal.base.zac.zab(parcel);
                break;
            case 8:
                zak zakVar = (zak) com.google.android.gms.internal.base.zac.zaa(parcel, zak.CREATOR);
                com.google.android.gms.internal.base.zac.zab(parcel);
                zab(zakVar);
                break;
            case 9:
                com.google.android.gms.internal.base.zac.zab(parcel);
                break;
        }
        parcel2.writeNoException();
        return true;
    }
}
