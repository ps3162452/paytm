package com.google.android.gms.common.api.internal;

import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.IAccountAccessor;
import java.util.Set;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
final class zabu implements BaseGmsClient.ConnectionProgressReportCallbacks, zacs {
    final GoogleApiManager zaa;
    private final Api.Client zab;
    private final ApiKey zac;
    private IAccountAccessor zad = null;
    private Set zae = null;
    private boolean zaf = false;

    public zabu(GoogleApiManager googleApiManager, Api.Client client, ApiKey apiKey) {
        this.zaa = googleApiManager;
        this.zab = client;
        this.zac = apiKey;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zag() {
        IAccountAccessor iAccountAccessor;
        if (!this.zaf || (iAccountAccessor = this.zad) == null) {
            return;
        }
        this.zab.getRemoteService(iAccountAccessor, this.zae);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.ConnectionProgressReportCallbacks
    public final void onReportServiceBinding(ConnectionResult connectionResult) {
        this.zaa.zar.post(new zabt(this, connectionResult));
    }

    @Override // com.google.android.gms.common.api.internal.zacs
    public final void zae(ConnectionResult connectionResult) {
        zabq zabqVar = (zabq) this.zaa.zan.get(this.zac);
        if (zabqVar != null) {
            zabqVar.zas(connectionResult);
        }
    }

    @Override // com.google.android.gms.common.api.internal.zacs
    public final void zaf(IAccountAccessor iAccountAccessor, Set set) {
        if (iAccountAccessor == null || set == null) {
            Log.wtf(NPStringFog.decode(new byte[]{116, 94, 14, 4, 15, 4, 114, 65, 8, 46, 2, 15, 82, 86, 4, 17}, "31acca", 1742800367L), NPStringFog.decode(new byte[]{101, 0, 82, 0, 93, 16, 82, 1, 17, 11, 65, 10, 91, 69, 67, 0, 71, 22, 88, 11, 66, 0, 20, 0, 69, 10, 92, 69, 91, 8, 100, 12, 86, 11, 125, 8, 100, 16, 82, 6, 81, 21, 68}, "7e1e4f", false), new Exception());
            zae(new ConnectionResult(4));
        } else {
            this.zad = iAccountAccessor;
            this.zae = set;
            zag();
        }
    }
}
