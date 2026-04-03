package com.google.android.gms.common.api.internal;

/* JADX INFO: loaded from: classes59.dex */
final class zabn implements Runnable {
    final int zaa;
    final zabq zab;

    zabn(zabq zabqVar, int i) {
        this.zab = zabqVar;
        this.zaa = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zab.zaH(this.zaa);
    }
}
