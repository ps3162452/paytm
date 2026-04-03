package com.google.android.gms.common.api;

import android.util.Log;
import com.google.android.gms.common.api.Result;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
public abstract class ResultCallbacks<R extends Result> implements ResultCallback<R> {
    public abstract void onFailure(Status status);

    @Override // com.google.android.gms.common.api.ResultCallback
    public final void onResult(R r) {
        Status status = r.getStatus();
        if (status.isSuccess()) {
            onSuccess(r);
            return;
        }
        onFailure(status);
        if (r instanceof Releasable) {
            try {
                ((Releasable) r).release();
            } catch (RuntimeException e) {
                Log.w(NPStringFog.decode(new byte[]{100, 3, 74, 77, 84, 66, 117, 7, 85, 84, 90, 87, 85, 13, 74}, "6f9886", -12457), NPStringFog.decode(new byte[]{97, 88, 81, 80, 85, 93, 20, 66, 95, 18, 75, 93, 88, 83, 81, 65, 92, 24}, "460298", -2.012420017E9d).concat(String.valueOf(String.valueOf(r))), e);
            }
        }
    }

    public abstract void onSuccess(R r);
}
