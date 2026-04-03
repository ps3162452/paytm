package com.google.android.gms.common.api.internal;

import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
final class zaj implements GoogleApiClient.OnConnectionFailedListener {
    public final int zaa;
    public final GoogleApiClient zab;
    public final GoogleApiClient.OnConnectionFailedListener zac;
    final zak zad;

    public zaj(zak zakVar, int i, GoogleApiClient googleApiClient, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        this.zad = zakVar;
        this.zaa = i;
        this.zab = googleApiClient;
        this.zac = onConnectionFailedListener;
    }

    @Override // com.google.android.gms.common.api.internal.OnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        Log.d(NPStringFog.decode(new byte[]{113, 19, 71, 9, 125, 86, 94, 7, 84, 3, 120, 82, 92, 22, 86, 20}, "0f3f07", 1450298275L), NPStringFog.decode(new byte[]{80, 85, 1, 11, 95, 36, 83, 89, 10, 23, 67, 7, 96, 85, 21, 13, 93, 23, 70, 89, 9, 12, 17, 4, 93, 66, 70}, "20fb1b", -7791).concat(String.valueOf(String.valueOf(connectionResult))));
        this.zad.zah(connectionResult, this.zaa);
    }
}
