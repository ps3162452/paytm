package com.google.android.gms.common.api.internal;

import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.Preconditions;
import java.lang.ref.WeakReference;
import java.util.concurrent.locks.Lock;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
final class zaal implements BaseGmsClient.ConnectionProgressReportCallbacks {
    private final WeakReference zaa;
    private final Api zab;
    private final boolean zac;

    public zaal(zaaw zaawVar, Api api, boolean z) {
        this.zaa = new WeakReference(zaawVar);
        this.zab = api;
        this.zac = z;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.ConnectionProgressReportCallbacks
    public final void onReportServiceBinding(ConnectionResult connectionResult) {
        Lock lock;
        zaaw zaawVar = (zaaw) this.zaa.get();
        if (zaawVar == null) {
            return;
        }
        Preconditions.checkState(Looper.myLooper() == zaawVar.zaa.zag.getLooper(), NPStringFog.decode(new byte[]{90, 87, 102, 1, 18, 95, 71, 77, 103, 1, 16, 70, 92, 90, 81, 38, 11, 94, 81, 80, 90, 3, 66, 93, 64, 74, 64, 68, 0, 85, 21, 90, 85, 8, 14, 85, 81, 25, 91, 10, 66, 68, 93, 92, 20, 35, 13, 95, 82, 85, 81, 37, 18, 89, 118, 85, 93, 1, 12, 68, 21, 81, 85, 10, 6, 92, 80, 75, 20, 16, 10, 66, 80, 88, 80}, "594db0", -1.094053749E9d));
        zaawVar.zab.lock();
        try {
            if (zaawVar.zaG(0)) {
                if (!connectionResult.isSuccess()) {
                    zaawVar.zaE(connectionResult, this.zab, this.zac);
                }
                if (zaawVar.zaH()) {
                    zaawVar.zaF();
                }
                lock = zaawVar.zab;
            } else {
                lock = zaawVar.zab;
            }
            lock.unlock();
        } catch (Throwable th) {
            zaawVar.zab.unlock();
            throw th;
        }
    }
}
