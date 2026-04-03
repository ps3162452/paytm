package com.google.android.gms.common.moduleinstall.internal;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.moduleinstall.ModuleInstallStatusUpdate;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
public abstract class zag extends com.google.android.gms.internal.base.zab implements zah {
    public zag() {
        super(NPStringFog.decode(new byte[]{91, 10, 88, 22, 3, 10, 87, 2, 89, 93, 74, 4, 86, 1, 71, 87, 13, 1, 22, 2, 88, 75, 74, 6, 87, 8, 88, 87, 10, 75, 85, 10, 81, 77, 8, 0, 81, 11, 70, 76, 5, 9, 84, 75, 92, 86, 16, 0, 74, 11, 84, 84, 74, 44, 117, 10, 81, 77, 8, 0, 113, 11, 70, 76, 5, 9, 84, 54, 65, 89, 16, 16, 75, 41, 92, 75, 16, 0, 86, 0, 71}, "8e58de", 1.9865069E9f));
    }

    @Override // com.google.android.gms.internal.base.zab
    protected final boolean zaa(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i != 1) {
            return false;
        }
        ModuleInstallStatusUpdate moduleInstallStatusUpdate = (ModuleInstallStatusUpdate) com.google.android.gms.internal.base.zac.zaa(parcel, ModuleInstallStatusUpdate.CREATOR);
        com.google.android.gms.internal.base.zac.zab(parcel);
        zab(moduleInstallStatusUpdate);
        return true;
    }
}
