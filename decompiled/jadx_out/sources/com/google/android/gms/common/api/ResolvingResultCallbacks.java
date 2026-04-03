package com.google.android.gms.common.api;

import android.app.Activity;
import android.content.IntentSender;
import android.util.Log;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.internal.Preconditions;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
public abstract class ResolvingResultCallbacks<R extends Result> extends ResultCallbacks<R> {
    private final Activity zza;
    private final int zzb;

    protected ResolvingResultCallbacks(Activity activity, int i) {
        Preconditions.checkNotNull(activity, NPStringFog.decode(new byte[]{118, 90, 16, 93, 68, 91, 67, 64, 68, 89, 71, 65, 67, 25, 10, 91, 70, 18, 85, 92, 68, 90, 71, 94, 91}, "79d422", -2.9218845E8f));
        this.zza = activity;
        this.zzb = i;
    }

    @Override // com.google.android.gms.common.api.ResultCallbacks
    public final void onFailure(Status status) {
        if (!status.hasResolution()) {
            onUnresolvableFailure(status);
            return;
        }
        try {
            status.startResolutionForResult(this.zza, this.zzb);
        } catch (IntentSender.SendIntentException e) {
            Log.e(NPStringFog.decode(new byte[]{103, 83, 74, 10, 10, 23, 92, 88, 94, 55, 3, 18, 64, 90, 77, 38, 7, 13, 89, 84, 88, 6, 13}, "569efa", false, true), NPStringFog.decode(new byte[]{112, 85, 15, 84, 0, 86, 22, 64, 9, 24, 22, 70, 87, 70, 18, 24, 23, 87, 69, 91, 10, 77, 17, 91, 89, 90}, "64f8e2", false), e);
            onUnresolvableFailure(new Status(8));
        }
    }

    @Override // com.google.android.gms.common.api.ResultCallbacks
    public abstract void onSuccess(R r);

    public abstract void onUnresolvableFailure(Status status);
}
