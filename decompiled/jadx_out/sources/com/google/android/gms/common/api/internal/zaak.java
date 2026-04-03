package com.google.android.gms.common.api.internal;

/* JADX INFO: loaded from: classes59.dex */
final class zaak implements Runnable {
    final zaaw zaa;

    zaak(zaaw zaawVar) {
        this.zaa = zaawVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zaaw zaawVar = this.zaa;
        zaawVar.zad.cancelAvailabilityErrorNotifications(zaawVar.zac);
    }
}
