package com.google.android.gms.common.api.internal;

import android.os.Looper;
import android.util.Log;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.ResultCallbacks;
import com.google.android.gms.common.api.ResultTransform;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.TransformedResult;
import com.google.android.gms.common.internal.Preconditions;
import java.lang.ref.WeakReference;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
public final class zada<R extends Result> extends TransformedResult<R> implements ResultCallback<R> {
    private final WeakReference zag;
    private final zacz zah;
    private ResultTransform zaa = null;
    private zada zab = null;
    private volatile ResultCallbacks zac = null;
    private PendingResult zad = null;
    private final Object zae = new Object();
    private Status zaf = null;
    private boolean zai = false;

    public zada(WeakReference weakReference) {
        Preconditions.checkNotNull(weakReference, NPStringFog.decode(new byte[]{119, 13, 88, 94, 85, 0, 113, 18, 94, 122, 85, 12, 85, 12, 67, 25, 75, 0, 86, 7, 69, 92, 87, 6, 85, 66, 90, 76, 74, 17, 16, 12, 88, 77, 25, 7, 85, 66, 89, 76, 85, 9}, "0b799e", true, false));
        this.zag = weakReference;
        GoogleApiClient googleApiClient = (GoogleApiClient) weakReference.get();
        this.zah = new zacz(this, googleApiClient != null ? googleApiClient.getLooper() : Looper.getMainLooper());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zaj(Status status) {
        synchronized (this.zae) {
            this.zaf = status;
            zal(status);
        }
    }

    private final void zak() {
        if (this.zaa == null && this.zac == null) {
            return;
        }
        GoogleApiClient googleApiClient = (GoogleApiClient) this.zag.get();
        if (!this.zai && this.zaa != null && googleApiClient != null) {
            googleApiClient.zao(this);
            this.zai = true;
        }
        Status status = this.zaf;
        if (status != null) {
            zal(status);
            return;
        }
        PendingResult pendingResult = this.zad;
        if (pendingResult != null) {
            pendingResult.setResultCallback(this);
        }
    }

    private final void zal(Status status) {
        synchronized (this.zae) {
            ResultTransform resultTransform = this.zaa;
            if (resultTransform != null) {
                ((zada) Preconditions.checkNotNull(this.zab)).zaj((Status) Preconditions.checkNotNull(resultTransform.onFailure(status), NPStringFog.decode(new byte[]{86, 91, 32, 83, 90, 84, 76, 71, 3, 18, 94, 77, 74, 65, 70, 92, 92, 76, 25, 71, 3, 70, 70, 74, 87, 21, 8, 71, 95, 84}, "95f238", false, false)));
            } else if (zam()) {
                ((ResultCallbacks) Preconditions.checkNotNull(this.zac)).onFailure(status);
            }
        }
    }

    private final boolean zam() {
        return (this.zac == null || ((GoogleApiClient) this.zag.get()) == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void zan(Result result) {
        if (result instanceof Releasable) {
            try {
                ((Releasable) result).release();
            } catch (RuntimeException e) {
                Log.w(NPStringFog.decode(new byte[]{54, 71, 84, 89, 66, 87, 13, 71, 88, 82, 85, 99, 7, 70, 64, 91, 69, 120, 15, 69, 89}, "b55711", 23033), NPStringFog.decode(new byte[]{108, 10, 83, 4, 94, 86, 25, 16, 93, 70, 64, 86, 85, 1, 83, 21, 87, 19}, "9d2f23", -16255).concat(String.valueOf(String.valueOf(result))), e);
            }
        }
    }

    @Override // com.google.android.gms.common.api.TransformedResult
    public final void andFinally(ResultCallbacks<? super R> resultCallbacks) {
        synchronized (this.zae) {
            Preconditions.checkState(this.zac == null, NPStringFog.decode(new byte[]{119, 5, 11, 8, 10, 67, 20, 7, 4, 10, 9, 23, 85, 10, 1, 32, 12, 89, 85, 8, 9, 31, 77, 30, 20, 16, 18, 15, 6, 82, 26}, "4defe7", true));
            Preconditions.checkState(this.zaa == null, NPStringFog.decode(new byte[]{34, 3, 90, 13, 91, 64, 65, 1, 85, 15, 88, 20, 21, 10, 81, 13, 28, 29, 65, 3, 90, 7, 20, 85, 15, 6, 114, 10, 90, 85, 13, 14, 77, 75, 29, 20, 14, 12, 20, 23, 92, 81, 65, 17, 85, 14, 81, 20, 53, 16, 85, 13, 71, 82, 14, 16, 89, 6, 80, 102, 4, 17, 65, 15, 64, 26}, "ab4c44", -15911));
            this.zac = resultCallbacks;
            zak();
        }
    }

    @Override // com.google.android.gms.common.api.ResultCallback
    public final void onResult(Result result) {
        synchronized (this.zae) {
            if (!result.getStatus().isSuccess()) {
                zaj(result.getStatus());
                zan(result);
            } else if (this.zaa != null) {
                zaco.zaa().submit(new zacy(this, result));
            } else if (zam()) {
                ((ResultCallbacks) Preconditions.checkNotNull(this.zac)).onSuccess(result);
            }
        }
    }

    @Override // com.google.android.gms.common.api.TransformedResult
    public final <S extends Result> TransformedResult<S> then(ResultTransform<? super R, ? extends S> resultTransform) {
        zada zadaVar;
        synchronized (this.zae) {
            Preconditions.checkState(this.zaa == null, NPStringFog.decode(new byte[]{116, 4, 90, 11, 9, 22, 23, 6, 85, 9, 10, 66, 67, 13, 81, 11, 78, 75, 23, 17, 67, 12, 5, 7, 25}, "7e4efb", 5276));
            Preconditions.checkState(this.zac == null, NPStringFog.decode(new byte[]{118, 81, 12, 91, 86, 76, 21, 83, 3, 89, 85, 24, 65, 88, 7, 91, 17, 17, 21, 81, 12, 81, 25, 89, 91, 84, 36, 92, 87, 89, 89, 92, 27, 29, 16, 24, 90, 94, 66, 65, 81, 93, 21, 67, 3, 88, 92, 24, 97, 66, 3, 91, 74, 94, 90, 66, 15, 80, 93, 106, 80, 67, 23, 89, 77, 22}, "50b598", -260748206L));
            this.zaa = resultTransform;
            zadaVar = new zada(this.zag);
            this.zab = zadaVar;
            zak();
        }
        return zadaVar;
    }

    final void zah() {
        this.zac = null;
    }

    public final void zai(PendingResult pendingResult) {
        synchronized (this.zae) {
            this.zad = pendingResult;
            zak();
        }
    }
}
