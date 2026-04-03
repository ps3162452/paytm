package com.google.android.gms.common.internal;

import android.content.Intent;
import androidx.fragment.app.Fragment;

/* JADX INFO: loaded from: classes59.dex */
final class zae extends zag {
    final Intent zaa;
    final Fragment zab;
    final int zac;

    zae(Intent intent, Fragment fragment, int i) {
        this.zaa = intent;
        this.zab = fragment;
        this.zac = i;
    }

    @Override // com.google.android.gms.common.internal.zag
    public final void zaa() {
        Intent intent = this.zaa;
        if (intent != null) {
            this.zab.startActivityForResult(intent, this.zac);
        }
    }
}
