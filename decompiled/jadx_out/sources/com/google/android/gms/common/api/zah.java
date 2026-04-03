package com.google.android.gms.common.api;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.internal.BasePendingResult;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
final class zah<R extends Result> extends BasePendingResult<R> {
    public zah(GoogleApiClient googleApiClient) {
        super(googleApiClient);
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    protected final R createFailedResult(Status status) {
        throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{34, 23, 81, 0, 76, 13, 15, 2, 20, 7, 89, 13, 13, 0, 80, 65, 74, 1, 18, 16, 88, 21, 75, 68, 8, 22, 20, 15, 87, 16, 65, 22, 65, 17, 72, 11, 19, 17, 81, 5}, "ae4a8d", -28112));
    }
}
