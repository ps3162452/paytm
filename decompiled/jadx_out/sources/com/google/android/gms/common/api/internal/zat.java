package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.Preconditions;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
public final class zat implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener {
    public final Api zaa;
    private final boolean zab;
    private zau zac;

    public zat(Api api, boolean z) {
        this.zaa = api;
        this.zab = z;
    }

    private final zau zab() {
        Preconditions.checkNotNull(this.zac, NPStringFog.decode(new byte[]{33, 85, 84, 13, 85, 85, 1, 95, 75, 65, 90, 65, 17, 64, 24, 3, 82, 20, 3, 64, 76, 0, 84, 92, 7, 80, 24, 21, 88, 20, 3, 20, 123, 13, 94, 81, 12, 64, 123, 14, 89, 90, 7, 87, 76, 8, 88, 90, 42, 81, 84, 17, 82, 70, 66, 93, 86, 18, 67, 85, 12, 87, 93, 65, 85, 81, 4, 91, 74, 4, 23, 87, 13, 90, 86, 4, 84, 64, 11, 90, 95, 65, 67, 92, 7, 20, 91, 13, 94, 81, 12, 64, 22}, "b48a74", 1.443329466E9d));
        return this.zac;
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        zab().onConnected(bundle);
    }

    @Override // com.google.android.gms.common.api.internal.OnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        zab().zaa(connectionResult, this.zaa, this.zab);
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        zab().onConnectionSuspended(i);
    }

    public final void zaa(zau zauVar) {
        this.zac = zauVar;
    }
}
