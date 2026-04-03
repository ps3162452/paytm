package com.google.android.gms.common.moduleinstall.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.internal.ConnectionCallbacks;
import com.google.android.gms.common.api.internal.OnConnectionFailedListener;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.GmsClient;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
public final class zaz extends GmsClient {
    protected zaz(Context context, Looper looper, ClientSettings clientSettings, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 308, clientSettings, connectionCallbacks, onConnectionFailedListener);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected final /* synthetic */ IInterface createServiceInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(NPStringFog.decode(new byte[]{86, 95, 93, 28, 81, 12, 90, 87, 92, 87, 24, 2, 91, 84, 66, 93, 95, 7, 27, 87, 93, 65, 24, 0, 90, 93, 93, 93, 88, 77, 88, 95, 84, 71, 90, 6, 92, 94, 67, 70, 87, 15, 89, 30, 89, 92, 66, 6, 71, 94, 81, 94, 24, 42, 120, 95, 84, 71, 90, 6, 124, 94, 67, 70, 87, 15, 89, 99, 85, 64, 64, 10, 86, 85}, "50026c", -24202));
        return iInterfaceQueryLocalInterface instanceof zaf ? (zaf) iInterfaceQueryLocalInterface : new zaf(iBinder);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final Feature[] getApiFeatures() {
        return com.google.android.gms.internal.base.zav.zab;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.Api.Client
    public final int getMinApkVersion() {
        return 17895000;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected final String getServiceDescriptor() {
        return NPStringFog.decode(new byte[]{80, 94, 89, 24, 80, 90, 92, 86, 88, 83, 25, 84, 93, 85, 70, 89, 94, 81, 29, 86, 89, 69, 25, 86, 92, 92, 89, 89, 89, 27, 94, 94, 80, 67, 91, 80, 90, 95, 71, 66, 86, 89, 95, 31, 93, 88, 67, 80, 65, 95, 85, 90, 25, 124, 126, 94, 80, 67, 91, 80, 122, 95, 71, 66, 86, 89, 95, 98, 81, 68, 65, 92, 80, 84}, "314675", -19725);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected final String getStartServiceAction() {
        return NPStringFog.decode(new byte[]{6, 9, 14, 30, 80, 90, 10, 1, 15, 85, 25, 84, 11, 2, 17, 95, 94, 81, 75, 1, 14, 67, 25, 86, 13, 15, 14, 85, 69, 84, 75, 5, 12, 94, 67, 84, 12, 8, 6, 66, 25, 88, 10, 2, 22, 92, 82, 92, 11, 21, 23, 81, 91, 89, 75, 43, 12, 84, 66, 89, 0, 47, 13, 67, 67, 84, 9, 10, 48, 85, 69, 67, 12, 5, 6, 30, 100, 97, 36, 52, 55}, "efc075", -1.46720997E9d);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected final boolean getUseDynamicLookup() {
        return true;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final boolean usesClientTelemetry() {
        return true;
    }
}
