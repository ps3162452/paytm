package com.google.android.gms.common.api.internal;

import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
final class zabt implements Runnable {
    final ConnectionResult zaa;
    final zabu zab;

    zabt(zabu zabuVar, ConnectionResult connectionResult) {
        this.zab = zabuVar;
        this.zaa = connectionResult;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zabu zabuVar = this.zab;
        zabq zabqVar = (zabq) zabuVar.zaa.zan.get(zabuVar.zac);
        if (zabqVar == null) {
            return;
        }
        if (!this.zaa.isSuccess()) {
            zabqVar.zar(this.zaa, null);
            return;
        }
        this.zab.zaf = true;
        if (this.zab.zab.requiresSignIn()) {
            this.zab.zag();
            return;
        }
        try {
            zabu zabuVar2 = this.zab;
            zabuVar2.zab.getRemoteService(null, zabuVar2.zab.getScopesForConnectionlessNonSignIn());
        } catch (SecurityException e) {
            Log.e(NPStringFog.decode(new byte[]{36, 90, 9, 4, 95, 80, 34, 69, 15, 46, 82, 91, 2, 82, 3, 17}, "c5fc35", -27380), NPStringFog.decode(new byte[]{37, 89, 10, 95, 0, 86, 67, 76, 12, 19, 2, 87, 23, 24, 16, 86, 23, 68, 10, 91, 6, 19, 3, 64, 12, 85, 67, 81, 23, 93, 8, 93, 17, 29, 69}, "c8c3e2", 1.2654765E7d), e);
            this.zab.zab.disconnect(NPStringFog.decode(new byte[]{119, 2, 91, 8, 1, 85, 17, 23, 93, 68, 3, 84, 69, 67, 65, 1, 22, 71, 88, 0, 87, 68, 2, 67, 94, 14, 18, 6, 22, 94, 90, 6, 64, 74}, "1c2dd1", -1.067173E9f));
            zabqVar.zar(new ConnectionResult(10), null);
        }
    }
}
