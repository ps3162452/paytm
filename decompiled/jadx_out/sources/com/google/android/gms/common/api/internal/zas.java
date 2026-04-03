package com.google.android.gms.common.api.internal;

/* JADX INFO: loaded from: classes59.dex */
final class zas {
    final BasePendingResult zaa;

    /* synthetic */ zas(BasePendingResult basePendingResult, zar zarVar) {
        this.zaa = basePendingResult;
    }

    protected final void finalize() throws Throwable {
        BasePendingResult.zal(this.zaa.zaj);
        super.finalize();
    }
}
