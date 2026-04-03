package com.google.android.gms.common.internal.service;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.GmsClient;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
public final class zah extends GmsClient<zal> {
    public zah(Context context, Looper looper, ClientSettings clientSettings, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 39, clientSettings, connectionCallbacks, onConnectionFailedListener);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected final /* synthetic */ IInterface createServiceInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(NPStringFog.decode(new byte[]{91, 89, 14, 27, 81, 86, 87, 81, 15, 80, 24, 88, 86, 82, 17, 90, 95, 93, 22, 81, 14, 70, 24, 90, 87, 91, 14, 90, 88, 23, 81, 88, 23, 80, 68, 87, 89, 90, 77, 70, 83, 75, 78, 95, 0, 80, 24, 112, 123, 89, 14, 88, 89, 87, 107, 83, 17, 67, 95, 90, 93}, "86c569", -1.176261542E9d));
        return iInterfaceQueryLocalInterface instanceof zal ? (zal) iInterfaceQueryLocalInterface : new zal(iBinder);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected final String getServiceDescriptor() {
        return NPStringFog.decode(new byte[]{90, 95, 14, 79, 82, 93, 86, 87, 15, 4, 27, 83, 87, 84, 17, 14, 92, 86, 23, 87, 14, 18, 27, 81, 86, 93, 14, 14, 91, 28, 80, 94, 23, 4, 71, 92, 88, 92, 77, 18, 80, 64, 79, 89, 0, 4, 27, 123, 122, 95, 14, 12, 90, 92, 106, 85, 17, 23, 92, 81, 92}, "90ca52", -1.735172E8f);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final String getStartServiceAction() {
        return NPStringFog.decode(new byte[]{82, 11, 14, 22, 2, 89, 94, 3, 15, 93, 75, 87, 95, 0, 17, 87, 12, 82, 31, 3, 14, 75, 75, 85, 94, 9, 14, 87, 11, 24, 66, 1, 17, 78, 12, 85, 84, 74, 48, 108, 36, 100, 101}, "1dc8e6", 845878303L);
    }
}
