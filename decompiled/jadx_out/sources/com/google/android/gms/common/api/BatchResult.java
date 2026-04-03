package com.google.android.gms.common.api;

import com.google.android.gms.common.internal.Preconditions;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;
import java.util.concurrent.TimeUnit;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
public final class BatchResult implements Result {
    private final Status zaa;
    private final PendingResult[] zab;

    BatchResult(Status status, PendingResult[] pendingResultArr) {
        this.zaa = status;
        this.zab = pendingResultArr;
    }

    @Override // com.google.android.gms.common.api.Result
    public Status getStatus() {
        return this.zaa;
    }

    @ResultIgnorabilityUnspecified
    public <R extends Result> R take(BatchResultToken<R> batchResultToken) {
        Preconditions.checkArgument(batchResultToken.mId < this.zab.length, NPStringFog.decode(new byte[]{109, 81, 1, 18, 75, 80, 74, 76, 8, 70, 25, 65, 86, 82, 1, 92, 25, 81, 86, 92, 23, 18, 87, 90, 77, 25, 6, 87, 85, 90, 87, 94, 68, 70, 86, 21, 77, 81, 13, 65, 25, 87, 88, 77, 7, 90}, "99d295", false, true));
        return (R) this.zab[batchResultToken.mId].await(0L, TimeUnit.MILLISECONDS);
    }
}
