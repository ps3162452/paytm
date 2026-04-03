package com.google.android.gms.common.api;

import android.os.Looper;
import com.google.android.gms.common.api.internal.OptionalPendingResultImpl;
import com.google.android.gms.common.api.internal.StatusPendingResult;
import com.google.android.gms.common.internal.Preconditions;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
public final class PendingResults {
    private PendingResults() {
    }

    public static PendingResult<Status> canceledPendingResult() {
        StatusPendingResult statusPendingResult = new StatusPendingResult(Looper.getMainLooper());
        statusPendingResult.cancel();
        return statusPendingResult;
    }

    public static <R extends Result> PendingResult<R> canceledPendingResult(R r) {
        Preconditions.checkNotNull(r, NPStringFog.decode(new byte[]{101, 87, 70, 69, 8, 76, 23, 95, 64, 67, 16, 24, 89, 93, 65, 16, 6, 93, 23, 92, 64, 92, 8}, "7250d8", false, true));
        Preconditions.checkArgument(r.getStatus().getStatusCode() == 16, NPStringFog.decode(new byte[]{50, 70, 5, 66, 66, 74, 65, 81, 11, 82, 82, 25, 12, 71, 23, 66, 23, 91, 4, 18, 39, 89, 90, 84, 14, 92, 55, 66, 86, 77, 20, 65, 39, 89, 83, 92, 18, 28, 39, 119, 121, 122, 36, 126, 33, 114}, "a2d679", false, true));
        zaf zafVar = new zaf(r);
        zafVar.cancel();
        return zafVar;
    }

    public static <R extends Result> PendingResult<R> immediateFailedResult(R r, GoogleApiClient googleApiClient) {
        Preconditions.checkNotNull(r, NPStringFog.decode(new byte[]{52, 80, 69, 67, 92, 18, 70, 88, 67, 69, 68, 70, 8, 90, 66, 22, 82, 3, 70, 91, 67, 90, 92}, "f5660f", -14135));
        Preconditions.checkArgument(!r.getStatus().isSuccess(), NPStringFog.decode(new byte[]{49, 16, 7, 22, 23, 18, 66, 7, 9, 6, 7, 65, 15, 17, 21, 22, 66, 15, 13, 16, 70, 0, 7, 65, 49, 49, 37, 33, 39, 50, 49}, "bdfbba", false, false));
        zag zagVar = new zag(googleApiClient, r);
        zagVar.setResult(r);
        return zagVar;
    }

    public static <R extends Result> OptionalPendingResult<R> immediatePendingResult(R r) {
        Preconditions.checkNotNull(r, NPStringFog.decode(new byte[]{107, 84, 22, 20, 9, 18, 25, 92, 16, 18, 17, 70, 87, 94, 17, 65, 7, 3, 25, 95, 16, 13, 9}, "91eaef", true));
        zah zahVar = new zah(null);
        zahVar.setResult(r);
        return new OptionalPendingResultImpl(zahVar);
    }

    public static <R extends Result> OptionalPendingResult<R> immediatePendingResult(R r, GoogleApiClient googleApiClient) {
        Preconditions.checkNotNull(r, NPStringFog.decode(new byte[]{96, 93, 75, 19, 92, 76, 18, 85, 77, 21, 68, 24, 92, 87, 76, 70, 82, 93, 18, 86, 77, 10, 92}, "288f08", -1.076751707E9d));
        zah zahVar = new zah(googleApiClient);
        zahVar.setResult(r);
        return new OptionalPendingResultImpl(zahVar);
    }

    public static PendingResult<Status> immediatePendingResult(Status status) {
        Preconditions.checkNotNull(status, NPStringFog.decode(new byte[]{107, 7, 71, 20, 13, 17, 25, 15, 65, 18, 21, 69, 87, 13, 64, 65, 3, 0, 25, 12, 65, 13, 13}, "9b4aae", -4.17027519E8d));
        StatusPendingResult statusPendingResult = new StatusPendingResult(Looper.getMainLooper());
        statusPendingResult.setResult(status);
        return statusPendingResult;
    }

    public static PendingResult<Status> immediatePendingResult(Status status, GoogleApiClient googleApiClient) {
        Preconditions.checkNotNull(status, NPStringFog.decode(new byte[]{102, 1, 69, 17, 8, 64, 20, 9, 67, 23, 16, 20, 90, 11, 66, 68, 6, 81, 20, 10, 67, 8, 8}, "4d6dd4", 1.615588684E9d));
        StatusPendingResult statusPendingResult = new StatusPendingResult(googleApiClient);
        statusPendingResult.setResult(status);
        return statusPendingResult;
    }
}
