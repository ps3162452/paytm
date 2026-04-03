package com.google.android.gms.common.api;

import android.os.Looper;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.internal.BasePendingResult;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
final class zaf<R extends Result> extends BasePendingResult<R> {
    private final Result zae;

    public zaf(Result result) {
        super(Looper.getMainLooper());
        this.zae = result;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    protected final R createFailedResult(Status status) {
        if (status.getStatusCode() == this.zae.getStatus().getStatusCode()) {
            return (R) this.zae;
        }
        throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{112, 75, 6, 83, 68, 8, 93, 94, 67, 84, 81, 8, 95, 92, 7, 18, 66, 4, 64, 76, 15, 70, 67, 65, 90, 74, 67, 92, 95, 21, 19, 74, 22, 66, 64, 14, 65, 77, 6, 86}, "39c20a", 1.5295515E9f));
    }
}
