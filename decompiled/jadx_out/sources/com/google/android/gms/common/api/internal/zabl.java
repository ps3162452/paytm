package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.internal.BackgroundDetector;

/* JADX INFO: loaded from: classes59.dex */
final class zabl implements BackgroundDetector.BackgroundStateChangeListener {
    final GoogleApiManager zaa;

    zabl(GoogleApiManager googleApiManager) {
        this.zaa = googleApiManager;
    }

    @Override // com.google.android.gms.common.api.internal.BackgroundDetector.BackgroundStateChangeListener
    public final void onBackgroundStateChanged(boolean z) {
        GoogleApiManager googleApiManager = this.zaa;
        googleApiManager.zar.sendMessage(googleApiManager.zar.obtainMessage(1, Boolean.valueOf(z)));
    }
}
