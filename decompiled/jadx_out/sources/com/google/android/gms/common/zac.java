package com.google.android.gms.common;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.DialogInterface;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.IntentSenderRequest;

/* JADX INFO: loaded from: classes59.dex */
final class zac implements DialogInterface.OnClickListener {
    final Activity zaa;
    final int zab;
    final ActivityResultLauncher zac;
    final GoogleApiAvailability zad;

    zac(GoogleApiAvailability googleApiAvailability, Activity activity, int i, ActivityResultLauncher activityResultLauncher) {
        this.zad = googleApiAvailability;
        this.zaa = activity;
        this.zab = i;
        this.zac = activityResultLauncher;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        PendingIntent errorResolutionPendingIntent = this.zad.getErrorResolutionPendingIntent(this.zaa, this.zab, 0);
        if (errorResolutionPendingIntent == null) {
            return;
        }
        this.zac.launch(new IntentSenderRequest.Builder(errorResolutionPendingIntent.getIntentSender()).build());
    }
}
