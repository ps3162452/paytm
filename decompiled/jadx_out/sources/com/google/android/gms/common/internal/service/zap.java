package com.google.android.gms.common.internal.service;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.budiyev.android.codescanner.BarcodeUtils;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.internal.ConnectionCallbacks;
import com.google.android.gms.common.api.internal.OnConnectionFailedListener;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.GmsClient;
import com.google.android.gms.common.internal.TelemetryLoggingOptions;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
public final class zap extends GmsClient {
    private final TelemetryLoggingOptions zaa;

    public zap(Context context, Looper looper, ClientSettings clientSettings, TelemetryLoggingOptions telemetryLoggingOptions, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, BarcodeUtils.ROTATION_270, clientSettings, connectionCallbacks, onConnectionFailedListener);
        this.zaa = telemetryLoggingOptions;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected final /* synthetic */ IInterface createServiceInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(NPStringFog.decode(new byte[]{2, 12, 11, 74, 3, 88, 14, 4, 10, 1, 74, 86, 15, 7, 20, 11, 13, 83, 79, 4, 11, 23, 74, 84, 14, 14, 11, 11, 10, 25, 8, 13, 18, 1, 22, 89, 0, 15, 72, 23, 1, 69, 23, 10, 5, 1, 74, 126, 34, 15, 15, 1, 10, 67, 53, 6, 10, 1, 9, 82, 21, 17, 31, 55, 1, 69, 23, 10, 5, 1}, "acfdd7", false));
        return iInterfaceQueryLocalInterface instanceof zai ? (zai) iInterfaceQueryLocalInterface : new zai(iBinder);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final Feature[] getApiFeatures() {
        return com.google.android.gms.internal.base.zaf.zab;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected final Bundle getGetServiceRequestExtraArgs() {
        return this.zaa.zaa();
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.Api.Client
    public final int getMinApkVersion() {
        return 203400000;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected final String getServiceDescriptor() {
        return NPStringFog.decode(new byte[]{82, 95, 90, 26, 83, 95, 94, 87, 91, 81, 26, 81, 95, 84, 69, 91, 93, 84, 31, 87, 90, 71, 26, 83, 94, 93, 90, 91, 90, 30, 88, 94, 67, 81, 70, 94, 80, 92, 25, 71, 81, 66, 71, 89, 84, 81, 26, 121, 114, 92, 94, 81, 90, 68, 101, 85, 91, 81, 89, 85, 69, 66, 78, 103, 81, 66, 71, 89, 84, 81}, "107440", 6.400652E7f);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected final String getStartServiceAction() {
        return NPStringFog.decode(new byte[]{83, 87, 90, 25, 94, 87, 95, 95, 91, 82, 23, 89, 94, 92, 69, 88, 80, 92, 30, 95, 90, 68, 23, 91, 95, 85, 90, 88, 87, 22, 68, 93, 91, 82, 84, 93, 68, 74, 78, 25, 74, 93, 66, 78, 94, 84, 92, 22, 99, 108, 118, 101, 109}, "087798", false, true);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected final boolean getUseDynamicLookup() {
        return true;
    }
}
