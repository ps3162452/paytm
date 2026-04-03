package com.google.android.gms.common.api.internal;

import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.ResultTransform;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.TransformedResult;
import com.google.android.gms.common.internal.ICancelToken;
import com.google.android.gms.common.internal.Preconditions;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
public abstract class BasePendingResult<R extends Result> extends PendingResult<R> {
    static final ThreadLocal zaa = new zaq();
    public static final int zad = 0;
    private zas mResultGuardian;
    protected final CallbackHandler zab;
    protected final WeakReference zac;
    private final Object zae;
    private final CountDownLatch zaf;
    private final ArrayList zag;
    private ResultCallback zah;
    private final AtomicReference zai;
    private Result zaj;
    private Status zak;
    private volatile boolean zal;
    private boolean zam;
    private boolean zan;
    private ICancelToken zao;
    private volatile zada zap;
    private boolean zaq;

    public static class CallbackHandler<R extends Result> extends com.google.android.gms.internal.base.zau {
        public CallbackHandler() {
            super(Looper.getMainLooper());
        }

        public CallbackHandler(Looper looper) {
            super(looper);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    Pair pair = (Pair) message.obj;
                    ResultCallback resultCallback = (ResultCallback) pair.first;
                    Result result = (Result) pair.second;
                    try {
                        resultCallback.onResult(result);
                        return;
                    } catch (RuntimeException e) {
                        BasePendingResult.zal(result);
                        throw e;
                    }
                case 2:
                    ((BasePendingResult) message.obj).forceFailureUnlessReady(Status.RESULT_TIMEOUT);
                    return;
                default:
                    Log.wtf(NPStringFog.decode(new byte[]{36, 87, 21, 6, 97, 81, 8, 82, 15, 13, 86, 102, 3, 69, 19, 15, 69}, "f6fc14", -397007441L), NPStringFog.decode(new byte[]{38, 88, 10, 65, 65, 20, 9, 89, 11, 17, 21, 92, 13, 64, 68, 18, 90, 20, 10, 86, 10, 2, 89, 81, 66, 90, 1, 21, 70, 85, 5, 82, 94, 70}, "b7df54", 9.8413658E8d) + message.what, new Exception());
                    return;
            }
        }

        public final void zaa(ResultCallback resultCallback, Result result) {
            int i = BasePendingResult.zad;
            sendMessage(obtainMessage(1, new Pair((ResultCallback) Preconditions.checkNotNull(resultCallback), result)));
        }
    }

    @Deprecated
    BasePendingResult() {
        this.zae = new Object();
        this.zaf = new CountDownLatch(1);
        this.zag = new ArrayList();
        this.zai = new AtomicReference();
        this.zaq = false;
        this.zab = new CallbackHandler(Looper.getMainLooper());
        this.zac = new WeakReference(null);
    }

    @Deprecated
    protected BasePendingResult(Looper looper) {
        this.zae = new Object();
        this.zaf = new CountDownLatch(1);
        this.zag = new ArrayList();
        this.zai = new AtomicReference();
        this.zaq = false;
        this.zab = new CallbackHandler(looper);
        this.zac = new WeakReference(null);
    }

    protected BasePendingResult(GoogleApiClient googleApiClient) {
        this.zae = new Object();
        this.zaf = new CountDownLatch(1);
        this.zag = new ArrayList();
        this.zai = new AtomicReference();
        this.zaq = false;
        this.zab = new CallbackHandler(googleApiClient != null ? googleApiClient.getLooper() : Looper.getMainLooper());
        this.zac = new WeakReference(googleApiClient);
    }

    protected BasePendingResult(CallbackHandler<R> callbackHandler) {
        this.zae = new Object();
        this.zaf = new CountDownLatch(1);
        this.zag = new ArrayList();
        this.zai = new AtomicReference();
        this.zaq = false;
        this.zab = (CallbackHandler) Preconditions.checkNotNull(callbackHandler, NPStringFog.decode(new byte[]{122, 7, 89, 89, 1, 4, 90, 13, 125, 84, 13, 1, 85, 3, 71, 21, 14, 16, 74, 18, 21, 91, 12, 17, 25, 4, 80, 21, 13, 16, 85, 10}, "9f55ce", -15433));
        this.zac = new WeakReference(null);
    }

    private final Result zaa() {
        Result result;
        synchronized (this.zae) {
            Preconditions.checkState(!this.zal, NPStringFog.decode(new byte[]{102, 6, 68, 23, 95, 65, 20, 11, 86, 17, 19, 84, 88, 17, 82, 3, 87, 76, 20, 1, 82, 7, 93, 21, 87, 12, 89, 17, 70, 88, 81, 7, 25}, "4c7b35", -126077315L));
            Preconditions.checkState(isReady(), NPStringFog.decode(new byte[]{101, 85, 71, 19, 94, 65, 23, 89, 71, 70, 92, 90, 67, 16, 70, 3, 83, 81, 78, 30}, "704f25", 9315));
            result = this.zaj;
            this.zaj = null;
            this.zah = null;
            this.zal = true;
        }
        zadb zadbVar = (zadb) this.zai.getAndSet(null);
        if (zadbVar != null) {
            zadbVar.zaa.zab.remove(this);
        }
        return (Result) Preconditions.checkNotNull(result);
    }

    private final void zab(Result result) {
        zar zarVar = null;
        this.zaj = result;
        this.zak = result.getStatus();
        this.zao = null;
        this.zaf.countDown();
        if (this.zam) {
            this.zah = null;
        } else {
            ResultCallback resultCallback = this.zah;
            if (resultCallback != null) {
                this.zab.removeMessages(2);
                this.zab.zaa(resultCallback, zaa());
            } else if (this.zaj instanceof Releasable) {
                this.mResultGuardian = new zas(this, zarVar);
            }
        }
        ArrayList arrayList = this.zag;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((PendingResult.StatusListener) arrayList.get(i)).onComplete(this.zak);
        }
        this.zag.clear();
    }

    public static void zal(Result result) {
        if (result instanceof Releasable) {
            try {
                ((Releasable) result).release();
            } catch (RuntimeException e) {
                Log.w(NPStringFog.decode(new byte[]{115, 87, 68, 4, 97, 80, 95, 82, 94, 15, 86, 103, 84, 69, 66, 13, 69}, "167a15", false), NPStringFog.decode(new byte[]{96, 15, 87, 7, 92, 92, 21, 21, 89, 69, 66, 92, 89, 4, 87, 22, 85, 25}, "5a6e09", true).concat(String.valueOf(String.valueOf(result))), e);
            }
        }
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final void addStatusListener(PendingResult.StatusListener statusListener) {
        Preconditions.checkArgument(statusListener != null, NPStringFog.decode(new byte[]{113, 3, 8, 15, 81, 87, 81, 9, 68, 0, 82, 88, 92, 13, 16, 67, 81, 83, 18, 12, 17, 15, 95, 24}, "2bdc36", 17423));
        synchronized (this.zae) {
            if (isReady()) {
                statusListener.onComplete(this.zak);
            } else {
                this.zag.add(statusListener);
            }
        }
    }

    @Override // com.google.android.gms.common.api.PendingResult
    @ResultIgnorabilityUnspecified
    public final R await() {
        Preconditions.checkNotMainThread(NPStringFog.decode(new byte[]{3, 21, 87, 94, 23, 65, 15, 23, 69, 67, 67, 15, 13, 22, 22, 85, 6, 65, 1, 3, 90, 91, 6, 5, 66, 13, 88, 23, 23, 9, 7, 66, 99, 126, 67, 21, 10, 16, 83, 86, 7}, "bb67ca", 373256214L));
        Preconditions.checkState(!this.zal, NPStringFog.decode(new byte[]{51, 0, 74, 69, 93, 18, 65, 13, 88, 67, 17, 7, 13, 23, 92, 81, 85, 31, 65, 7, 92, 85, 95, 70, 2, 10, 87, 67, 68, 11, 4, 1}, "ae901f", -238));
        Preconditions.checkState(this.zap == null, NPStringFog.decode(new byte[]{119, 4, 87, 12, 11, 21, 20, 4, 78, 3, 13, 21, 20, 12, 95, 66, 16, 9, 81, 11, 17, 75, 68, 9, 85, 22, 25, 0, 1, 4, 90, 69, 90, 3, 8, 13, 81, 1, 23}, "4e9bda", -1.1885408E9f));
        try {
            this.zaf.await();
        } catch (InterruptedException e) {
            forceFailureUnlessReady(Status.RESULT_INTERRUPTED);
        }
        Preconditions.checkState(isReady(), NPStringFog.decode(new byte[]{51, 92, 16, 65, 94, 76, 65, 80, 16, 20, 92, 87, 21, 25, 17, 81, 83, 92, 24, 23}, "a9c428", -471273748L));
        return (R) zaa();
    }

    @Override // com.google.android.gms.common.api.PendingResult
    @ResultIgnorabilityUnspecified
    public final R await(long j, TimeUnit timeUnit) {
        if (j > 0) {
            Preconditions.checkNotMainThread(NPStringFog.decode(new byte[]{81, 64, 7, 11, 21, 17, 93, 66, 21, 22, 65, 95, 95, 67, 70, 0, 4, 17, 83, 86, 10, 14, 4, 85, 16, 88, 8, 66, 21, 89, 85, 23, 51, 43, 65, 69, 88, 69, 3, 3, 5, 17, 71, 95, 3, 12, 65, 69, 89, 90, 3, 66, 8, 66, 16, 80, 20, 7, 0, 69, 85, 69, 70, 22, 9, 80, 94, 23, 28, 7, 19, 94, 30}, "07fba1", true, false));
        }
        Preconditions.checkState(!this.zal, NPStringFog.decode(new byte[]{107, 92, 65, 19, 84, 16, 25, 81, 83, 21, 24, 5, 85, 75, 87, 7, 92, 29, 25, 91, 87, 3, 86, 68, 90, 86, 92, 21, 77, 9, 92, 93, 28}, "992f8d", -1.800927028E9d));
        Preconditions.checkState(this.zap == null, NPStringFog.decode(new byte[]{34, 82, 86, 91, 91, 21, 65, 82, 79, 84, 93, 21, 65, 90, 94, 21, 64, 9, 4, 93, 16, 28, 20, 9, 0, 64, 24, 87, 81, 4, 15, 19, 91, 84, 88, 13, 4, 87, 22}, "a3854a", -924906211L));
        try {
            if (!this.zaf.await(j, timeUnit)) {
                forceFailureUnlessReady(Status.RESULT_TIMEOUT);
            }
        } catch (InterruptedException e) {
            forceFailureUnlessReady(Status.RESULT_INTERRUPTED);
        }
        Preconditions.checkState(isReady(), NPStringFog.decode(new byte[]{107, 92, 68, 66, 14, 68, 25, 80, 68, 23, 12, 95, 77, 25, 69, 82, 3, 84, 64, 23}, "9977b0", true));
        return (R) zaa();
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public void cancel() {
        synchronized (this.zae) {
            if (this.zam || this.zal) {
                return;
            }
            ICancelToken iCancelToken = this.zao;
            if (iCancelToken != null) {
                try {
                    iCancelToken.cancel();
                } catch (RemoteException e) {
                }
            }
            zal(this.zaj);
            this.zam = true;
            zab(createFailedResult(Status.RESULT_CANCELED));
        }
    }

    protected abstract R createFailedResult(Status status);

    @Deprecated
    public final void forceFailureUnlessReady(Status status) {
        synchronized (this.zae) {
            if (!isReady()) {
                setResult(createFailedResult(status));
                this.zan = true;
            }
        }
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final boolean isCanceled() {
        boolean z;
        synchronized (this.zae) {
            z = this.zam;
        }
        return z;
    }

    public final boolean isReady() {
        return this.zaf.getCount() == 0;
    }

    protected final void setCancelToken(ICancelToken iCancelToken) {
        synchronized (this.zae) {
            this.zao = iCancelToken;
        }
    }

    public final void setResult(R r) {
        synchronized (this.zae) {
            if (this.zan || this.zam) {
                zal(r);
                return;
            }
            isReady();
            Preconditions.checkState(!isReady(), NPStringFog.decode(new byte[]{107, 86, 71, 65, 85, 69, 74, 19, 92, 85, 79, 84, 25, 82, 88, 70, 92, 80, 93, 74, 20, 86, 92, 84, 87, 19, 71, 81, 77}, "934491", false));
            Preconditions.checkState(!this.zal, NPStringFog.decode(new byte[]{99, 85, 65, 76, 14, 16, 17, 88, 83, 74, 66, 5, 93, 66, 87, 88, 6, 29, 17, 82, 87, 92, 12, 68, 82, 95, 92, 74, 23, 9, 84, 84}, "1029bd", 31512));
            zab(r);
        }
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final void setResultCallback(ResultCallback<? super R> resultCallback) {
        synchronized (this.zae) {
            if (resultCallback == null) {
                this.zah = null;
                return;
            }
            Preconditions.checkState(!this.zal, NPStringFog.decode(new byte[]{107, 0, 69, 69, 90, 70, 25, 13, 87, 67, 22, 83, 85, 23, 83, 81, 82, 75, 25, 7, 83, 85, 88, 18, 90, 10, 88, 67, 67, 95, 92, 1, 24}, "9e6062", false));
            Preconditions.checkState(this.zap == null, NPStringFog.decode(new byte[]{119, 2, 95, 13, 12, 22, 20, 16, 84, 23, 67, 1, 85, 15, 93, 1, 2, 1, 95, 16, 17, 10, 5, 66, 64, 11, 84, 13, 75, 75, 20, 11, 80, 16, 67, 0, 81, 6, 95, 67, 0, 3, 88, 15, 84, 7, 77}, "4c1ccb", 30352));
            if (isCanceled()) {
                return;
            }
            if (isReady()) {
                this.zab.zaa(resultCallback, zaa());
            } else {
                this.zah = resultCallback;
            }
        }
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final void setResultCallback(ResultCallback<? super R> resultCallback, long j, TimeUnit timeUnit) {
        synchronized (this.zae) {
            if (resultCallback == null) {
                this.zah = null;
                return;
            }
            Preconditions.checkState(!this.zal, NPStringFog.decode(new byte[]{103, 92, 16, 67, 94, 69, 21, 81, 2, 69, 18, 80, 89, 75, 6, 87, 86, 72, 21, 91, 6, 83, 92, 17, 86, 86, 13, 69, 71, 92, 80, 93, 77}, "59c621", -1.581724044E9d));
            Preconditions.checkState(this.zap == null, NPStringFog.decode(new byte[]{112, 86, 13, 88, 12, 23, 19, 68, 6, 66, 67, 0, 82, 91, 15, 84, 2, 0, 88, 68, 67, 95, 5, 67, 71, 95, 6, 88, 75, 74, 19, 95, 2, 69, 67, 1, 86, 82, 13, 22, 0, 2, 95, 91, 6, 82, 77}, "37c6cc", true));
            if (isCanceled()) {
                return;
            }
            if (isReady()) {
                this.zab.zaa(resultCallback, zaa());
            } else {
                this.zah = resultCallback;
                CallbackHandler callbackHandler = this.zab;
                callbackHandler.sendMessageDelayed(callbackHandler.obtainMessage(2, this), timeUnit.toMillis(j));
            }
        }
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final <S extends Result> TransformedResult<S> then(ResultTransform<? super R, ? extends S> resultTransform) {
        TransformedResult<S> transformedResultThen;
        Preconditions.checkState(!this.zal, NPStringFog.decode(new byte[]{103, 6, 17, 71, 85, 77, 21, 11, 3, 65, 25, 88, 89, 17, 7, 83, 93, 64, 21, 1, 7, 87, 87, 25, 86, 12, 12, 65, 76, 84, 80, 7, 76}, "5cb299", false, false));
        synchronized (this.zae) {
            Preconditions.checkState(this.zap == null, NPStringFog.decode(new byte[]{32, 3, 92, 86, 10, 76, 67, 1, 83, 84, 9, 24, 23, 10, 87, 86, 77, 17, 67, 22, 69, 81, 6, 93, 77}, "cb28e8", 10286869L));
            Preconditions.checkState(this.zah == null, NPStringFog.decode(new byte[]{113, 80, 88, 92, 93, 23, 18, 82, 87, 94, 94, 67, 70, 89, 83, 92, 26, 74, 18, 88, 80, 18, 81, 2, 94, 93, 84, 83, 81, 8, 65, 17, 87, 64, 87, 67, 65, 84, 66, 28}, "21622c", 7.957569E8f));
            Preconditions.checkState(!this.zam, NPStringFog.decode(new byte[]{38, 81, 11, 90, 95, 64, 69, 83, 4, 88, 92, 20, 17, 88, 0, 90, 24, 29, 69, 89, 3, 20, 66, 81, 22, 69, 9, 64, 16, 67, 4, 67, 69, 87, 81, 90, 6, 85, 9, 81, 84, 26}, "e0e404", 29468));
            this.zaq = true;
            this.zap = new zada(this.zac);
            transformedResultThen = this.zap.then(resultTransform);
            if (isReady()) {
                this.zab.zaa(this.zap, zaa());
            } else {
                this.zah = this.zap;
            }
        }
        return transformedResultThen;
    }

    public final void zak() {
        boolean z = this.zaq || ((Boolean) zaa.get()).booleanValue();
        this.zaq = z;
    }

    public final boolean zam() {
        boolean zIsCanceled;
        synchronized (this.zae) {
            if (((GoogleApiClient) this.zac.get()) == null || !this.zaq) {
                cancel();
            }
            zIsCanceled = isCanceled();
        }
        return zIsCanceled;
    }

    public final void zan(zadb zadbVar) {
        this.zai.set(zadbVar);
    }
}
