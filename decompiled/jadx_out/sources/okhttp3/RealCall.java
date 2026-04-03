package okhttp3;

import java.io.IOException;
import java.util.ArrayList;
import n.NPStringFog;
import okhttp3.internal.NamedRunnable;
import okhttp3.internal.cache.CacheInterceptor;
import okhttp3.internal.connection.ConnectInterceptor;
import okhttp3.internal.connection.StreamAllocation;
import okhttp3.internal.http.BridgeInterceptor;
import okhttp3.internal.http.CallServerInterceptor;
import okhttp3.internal.http.RealInterceptorChain;
import okhttp3.internal.http.RetryAndFollowUpInterceptor;
import okhttp3.internal.platform.Platform;

/* JADX INFO: loaded from: classes62.dex */
final class RealCall implements Call {
    final OkHttpClient client;
    private EventListener eventListener;
    private boolean executed;
    final boolean forWebSocket;
    final Request originalRequest;
    final RetryAndFollowUpInterceptor retryAndFollowUpInterceptor;

    final class AsyncCall extends NamedRunnable {
        private final Callback responseCallback;
        final RealCall this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AsyncCall(RealCall realCall, Callback callback) {
            super(NPStringFog.decode(new byte[]{46, 88, 124, 21, 77, 71, 65, 22, 71}, "a34a97", -1581552020L), realCall.redactedUrl());
            this.this$0 = realCall;
            this.responseCallback = callback;
        }

        @Override // okhttp3.internal.NamedRunnable
        protected void execute() {
            boolean z = true;
            try {
                try {
                    Response responseWithInterceptorChain = this.this$0.getResponseWithInterceptorChain();
                    try {
                        if (this.this$0.retryAndFollowUpInterceptor.isCanceled()) {
                            this.responseCallback.onFailure(this.this$0, new IOException(NPStringFog.decode(new byte[]{38, 88, 94, 90, 6, 91, 0, 93}, "e909c7", -21348)));
                        } else {
                            this.responseCallback.onResponse(this.this$0, responseWithInterceptorChain);
                        }
                    } catch (IOException e) {
                        e = e;
                        if (z) {
                            Platform.get().log(4, NPStringFog.decode(new byte[]{113, 81, 94, 89, 80, 3, 81, 91, 18, 83, 83, 11, 94, 69, 64, 80, 18, 4, 93, 66, 18}, "20252b", -5.2571187E8f) + this.this$0.toLoggableString(), e);
                        } else {
                            this.this$0.eventListener.callFailed(this.this$0, e);
                            this.responseCallback.onFailure(this.this$0, e);
                        }
                    }
                } finally {
                    this.this$0.client.dispatcher().finished(this);
                }
            } catch (IOException e2) {
                e = e2;
                z = false;
            }
        }

        RealCall get() {
            return this.this$0;
        }

        String host() {
            return this.this$0.originalRequest.url().host();
        }

        Request request() {
            return this.this$0.originalRequest;
        }
    }

    private RealCall(OkHttpClient okHttpClient, Request request, boolean z) {
        this.client = okHttpClient;
        this.originalRequest = request;
        this.forWebSocket = z;
        this.retryAndFollowUpInterceptor = new RetryAndFollowUpInterceptor(okHttpClient, z);
    }

    private void captureCallStackTrace() {
        this.retryAndFollowUpInterceptor.setCallStackTrace(Platform.get().getStackTraceForCloseable(NPStringFog.decode(new byte[]{16, 0, 21, 69, 9, 95, 17, 0, 72, 87, 9, 85, 27, 77, 79, 27, 5, 93, 13, 22, 3, 29, 79}, "bef5f1", 10991)));
    }

    static RealCall newRealCall(OkHttpClient okHttpClient, Request request, boolean z) {
        RealCall realCall = new RealCall(okHttpClient, request, z);
        realCall.eventListener = okHttpClient.eventListenerFactory().create(realCall);
        return realCall;
    }

    @Override // okhttp3.Call
    public void cancel() {
        this.retryAndFollowUpInterceptor.cancel();
    }

    @Override // okhttp3.Call
    public RealCall clone() {
        return newRealCall(this.client, this.originalRequest, this.forWebSocket);
    }

    @Override // okhttp3.Call
    public void enqueue(Callback callback) {
        synchronized (this) {
            if (this.executed) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{113, 15, 70, 0, 5, 0, 73, 67, 113, 29, 1, 7, 69, 23, 81, 1}, "0c4edd", 1.0645633E9f));
            }
            this.executed = true;
        }
        captureCallStackTrace();
        this.eventListener.callStart(this);
        this.client.dispatcher().enqueue(new AsyncCall(this, callback));
    }

    @Override // okhttp3.Call
    public Response execute() throws IOException {
        synchronized (this) {
            if (this.executed) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{118, 8, 22, 7, 4, 6, 78, 68, 33, 26, 0, 1, 66, 16, 1, 6}, "7ddbeb", -1.02526962E8d));
            }
            this.executed = true;
        }
        captureCallStackTrace();
        this.eventListener.callStart(this);
        try {
            try {
                this.client.dispatcher().executed(this);
                Response responseWithInterceptorChain = getResponseWithInterceptorChain();
                if (responseWithInterceptorChain == null) {
                    throw new IOException(NPStringFog.decode(new byte[]{39, 82, 15, 83, 86, 8, 1, 87}, "d3a03d", 8.79829996E8d));
                }
                return responseWithInterceptorChain;
            } catch (IOException e) {
                this.eventListener.callFailed(this, e);
                throw e;
            }
        } finally {
            this.client.dispatcher().finished(this);
        }
        this.client.dispatcher().finished(this);
    }

    Response getResponseWithInterceptorChain() throws IOException {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.client.interceptors());
        arrayList.add(this.retryAndFollowUpInterceptor);
        arrayList.add(new BridgeInterceptor(this.client.cookieJar()));
        arrayList.add(new CacheInterceptor(this.client.internalCache()));
        arrayList.add(new ConnectInterceptor(this.client));
        if (!this.forWebSocket) {
            arrayList.addAll(this.client.networkInterceptors());
        }
        arrayList.add(new CallServerInterceptor(this.forWebSocket));
        return new RealInterceptorChain(arrayList, null, null, null, 0, this.originalRequest, this, this.eventListener, this.client.connectTimeoutMillis(), this.client.readTimeoutMillis(), this.client.writeTimeoutMillis()).proceed(this.originalRequest);
    }

    @Override // okhttp3.Call
    public boolean isCanceled() {
        return this.retryAndFollowUpInterceptor.isCanceled();
    }

    @Override // okhttp3.Call
    public boolean isExecuted() {
        boolean z;
        synchronized (this) {
            z = this.executed;
        }
        return z;
    }

    String redactedUrl() {
        return this.originalRequest.url().redact();
    }

    @Override // okhttp3.Call
    public Request request() {
        return this.originalRequest;
    }

    StreamAllocation streamAllocation() {
        return this.retryAndFollowUpInterceptor.streamAllocation();
    }

    String toLoggableString() {
        return (isCanceled() ? NPStringFog.decode(new byte[]{91, 7, 91, 82, 86, 88, 93, 2, 21}, "8f5134", -23275) : "") + (this.forWebSocket ? NPStringFog.decode(new byte[]{66, 93, 91, 19, 16, 92, 86, 83, 92, 71}, "5893c3", -1345626543L) : NPStringFog.decode(new byte[]{81, 80, 13, 90}, "21a62e", -7.26503493E8d)) + NPStringFog.decode(new byte[]{67, 71, 14, 16}, "c3a041", 14702) + redactedUrl();
    }
}
