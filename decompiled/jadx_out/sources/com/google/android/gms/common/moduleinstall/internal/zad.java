package com.google.android.gms.common.moduleinstall.internal;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.moduleinstall.ModuleAvailabilityResponse;
import com.google.android.gms.common.moduleinstall.ModuleInstallIntentResponse;
import com.google.android.gms.common.moduleinstall.ModuleInstallResponse;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
public abstract class zad extends com.google.android.gms.internal.base.zab implements zae {
    public zad() {
        super(NPStringFog.decode(new byte[]{87, 88, 15, 26, 5, 95, 91, 80, 14, 81, 76, 81, 90, 83, 16, 91, 11, 84, 26, 80, 15, 71, 76, 83, 91, 90, 15, 91, 12, 30, 89, 88, 6, 65, 14, 85, 93, 89, 17, 64, 3, 92, 88, 25, 11, 90, 22, 85, 70, 89, 3, 88, 76, 121, 121, 88, 6, 65, 14, 85, 125, 89, 17, 64, 3, 92, 88, 116, 3, 88, 14, 82, 85, 84, 9, 71}, "47b4b0", false));
    }

    @Override // com.google.android.gms.internal.base.zab
    protected final boolean zaa(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 1:
                Status status = (Status) com.google.android.gms.internal.base.zac.zaa(parcel, Status.CREATOR);
                ModuleAvailabilityResponse moduleAvailabilityResponse = (ModuleAvailabilityResponse) com.google.android.gms.internal.base.zac.zaa(parcel, ModuleAvailabilityResponse.CREATOR);
                com.google.android.gms.internal.base.zac.zab(parcel);
                zae(status, moduleAvailabilityResponse);
                return true;
            case 2:
                Status status2 = (Status) com.google.android.gms.internal.base.zac.zaa(parcel, Status.CREATOR);
                ModuleInstallResponse moduleInstallResponse = (ModuleInstallResponse) com.google.android.gms.internal.base.zac.zaa(parcel, ModuleInstallResponse.CREATOR);
                com.google.android.gms.internal.base.zac.zab(parcel);
                zad(status2, moduleInstallResponse);
                return true;
            case 3:
                Status status3 = (Status) com.google.android.gms.internal.base.zac.zaa(parcel, Status.CREATOR);
                ModuleInstallIntentResponse moduleInstallIntentResponse = (ModuleInstallIntentResponse) com.google.android.gms.internal.base.zac.zaa(parcel, ModuleInstallIntentResponse.CREATOR);
                com.google.android.gms.internal.base.zac.zab(parcel);
                zac(status3, moduleInstallIntentResponse);
                return true;
            case 4:
                Status status4 = (Status) com.google.android.gms.internal.base.zac.zaa(parcel, Status.CREATOR);
                com.google.android.gms.internal.base.zac.zab(parcel);
                zab(status4);
                return true;
            default:
                return false;
        }
    }
}
