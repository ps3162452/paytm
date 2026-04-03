package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.ResultTransform;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.TransformedResult;
import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.TimeUnit;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
public final class zacp<R extends Result> extends PendingResult<R> {
    private final Status zaa;

    public zacp(Status status) {
        Preconditions.checkNotNull(status, NPStringFog.decode(new byte[]{49, 76, 0, 69, 17, 17, 66, 85, 20, 66, 16, 66, 12, 87, 21, 17, 6, 7, 66, 86, 20, 93, 8}, "b8a1db", 29495));
        Preconditions.checkArgument(!status.isSuccess(), NPStringFog.decode(new byte[]{97, 66, 82, 77, 68, 70, 18, 91, 70, 74, 69, 21, 92, 89, 71, 25, 83, 80, 18, 69, 70, 90, 82, 80, 65, 69}, "263915", 8.779847E8f));
        this.zaa = status;
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final void addStatusListener(PendingResult.StatusListener statusListener) {
        throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{45, 69, 81, 69, 85, 23, 11, 90, 90, 23, 90, 12, 22, 21, 71, 66, 68, 19, 13, 71, 64, 82, 80, 67, 13, 91, 20, 103, 81, 13, 6, 92, 90, 80, 102, 6, 17, 64, 88, 67, 71, 67, 5, 80, 90, 82, 70, 2, 22, 80, 80, 23, 86, 26, 66, 103, 81, 68, 65, 15, 22, 97, 70, 86, 90, 16, 4, 90, 70, 90, 26, 0, 16, 80, 85, 67, 81, 37, 3, 92, 88, 82, 80, 49, 7, 70, 65, 91, 64, 75, 75}, "b5474c", -7.0193914E8f));
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final R await() {
        throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{127, 64, 3, 69, 5, 77, 89, 95, 8, 23, 10, 86, 68, 16, 21, 66, 20, 73, 95, 66, 18, 82, 0, 25, 95, 94, 70, 103, 1, 87, 84, 89, 8, 80, 54, 92, 67, 69, 10, 67, 23, 25, 87, 85, 8, 82, 22, 88, 68, 85, 2, 23, 6, 64, 16, 98, 3, 68, 17, 85, 68, 100, 20, 86, 10, 74, 86, 95, 20, 90, 74, 90, 66, 85, 7, 67, 1, 127, 81, 89, 10, 82, 0, 107, 85, 67, 19, 91, 16, 17, 25}, "00f7d9", -8.4621229E7d));
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final R await(long j, TimeUnit timeUnit) {
        throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{44, 69, 6, 64, 87, 77, 10, 90, 13, 18, 88, 86, 23, 21, 16, 71, 70, 73, 12, 71, 23, 87, 82, 25, 12, 91, 67, 98, 83, 87, 7, 92, 13, 85, 100, 92, 16, 64, 15, 70, 69, 25, 4, 80, 13, 87, 68, 88, 23, 80, 7, 18, 84, 64, 67, 103, 6, 65, 67, 85, 23, 97, 17, 83, 88, 74, 5, 90, 17, 95, 24, 90, 17, 80, 2, 70, 83, 127, 2, 92, 15, 87, 82, 107, 6, 70, 22, 94, 66, 17, 74}, "c5c269", false));
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final void cancel() {
        throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{126, 21, 4, 20, 89, 64, 88, 10, 15, 70, 86, 91, 69, 69, 18, 19, 72, 68, 94, 23, 21, 3, 92, 20, 94, 11, 65, 54, 93, 90, 85, 12, 15, 1, 106, 81, 66, 16, 13, 18, 75, 20, 86, 0, 15, 3, 74, 85, 69, 0, 5, 70, 90, 77, 17, 55, 4, 21, 77, 88, 69, 49, 19, 7, 86, 71, 87, 10, 19, 11, 22, 87, 67, 0, 0, 18, 93, 114, 80, 12, 13, 3, 92, 102, 84, 22, 20, 10, 76, 28, 24}, "1eaf84", -1.718769303E9d));
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final boolean isCanceled() {
        throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{41, 69, 4, 74, 80, 66, 15, 90, 15, 24, 95, 89, 18, 21, 18, 77, 65, 70, 9, 71, 21, 93, 85, 22, 9, 91, 65, 104, 84, 88, 2, 92, 15, 95, 99, 83, 21, 64, 13, 76, 66, 22, 1, 80, 15, 93, 67, 87, 18, 80, 5, 24, 83, 79, 70, 103, 4, 75, 68, 90, 18, 97, 19, 89, 95, 69, 0, 90, 19, 85, 31, 85, 20, 80, 0, 76, 84, 112, 7, 92, 13, 93, 85, 100, 3, 70, 20, 84, 69, 30, 79}, "f5a816", 1.462621838E9d));
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final void setResultCallback(ResultCallback<? super R> resultCallback) {
        throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{121, 70, 82, 16, 86, 66, 95, 89, 89, 66, 89, 89, 66, 22, 68, 23, 71, 70, 89, 68, 67, 7, 83, 22, 89, 88, 23, 50, 82, 88, 82, 95, 89, 5, 101, 83, 69, 67, 91, 22, 68, 22, 81, 83, 89, 7, 69, 87, 66, 83, 83, 66, 85, 79, 22, 100, 82, 17, 66, 90, 66, 98, 69, 3, 89, 69, 80, 89, 69, 15, 25, 85, 68, 83, 86, 22, 82, 112, 87, 95, 91, 7, 83, 100, 83, 69, 66, 14, 67, 30, 31}, "667b76", 1.994066581E9d));
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final void setResultCallback(ResultCallback<? super R> resultCallback, long j, TimeUnit timeUnit) {
        throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{42, 22, 93, 20, 7, 16, 12, 9, 86, 70, 8, 11, 17, 70, 75, 19, 22, 20, 10, 20, 76, 3, 2, 68, 10, 8, 24, 54, 3, 10, 1, 15, 86, 1, 52, 1, 22, 19, 84, 18, 21, 68, 2, 3, 86, 3, 20, 5, 17, 3, 92, 70, 4, 29, 69, 52, 93, 21, 19, 8, 17, 50, 74, 7, 8, 23, 3, 9, 74, 11, 72, 7, 23, 3, 89, 18, 3, 34, 4, 15, 84, 3, 2, 54, 0, 21, 77, 10, 18, 76, 76}, "ef8ffd", -1.913670053E9d));
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final <S extends Result> TransformedResult<S> then(ResultTransform<? super R, ? extends S> resultTransform) {
        throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{122, 72, 80, 74, 83, 16, 92, 87, 91, 24, 92, 11, 65, 24, 70, 77, 66, 20, 90, 74, 65, 93, 86, 68, 90, 86, 21, 104, 87, 10, 81, 81, 91, 95, 96, 1, 70, 77, 89, 76, 65, 68, 82, 93, 91, 93, 64, 5, 65, 93, 81, 24, 80, 29, 21, 106, 80, 75, 71, 8, 65, 108, 71, 89, 92, 23, 83, 87, 71, 85, 28, 7, 71, 93, 84, 76, 87, 34, 84, 81, 89, 93, 86, 54, 80, 75, 64, 84, 70, 76, 28}, "58582d", -1.1814847E9f));
    }

    final Status zaa() {
        return this.zaa;
    }
}
