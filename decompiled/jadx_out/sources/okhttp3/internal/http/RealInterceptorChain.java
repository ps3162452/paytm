package okhttp3.internal.http;

import java.io.IOException;
import java.util.List;
import java.util.concurrent.TimeUnit;
import n.NPStringFog;
import okhttp3.Call;
import okhttp3.Connection;
import okhttp3.EventListener;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.Util;
import okhttp3.internal.connection.RealConnection;
import okhttp3.internal.connection.StreamAllocation;

/* JADX INFO: loaded from: classes62.dex */
public final class RealInterceptorChain implements Interceptor.Chain {
    private final Call call;
    private int calls;
    private final int connectTimeout;
    private final RealConnection connection;
    private final EventListener eventListener;
    private final HttpCodec httpCodec;
    private final int index;
    private final List<Interceptor> interceptors;
    private final int readTimeout;
    private final Request request;
    private final StreamAllocation streamAllocation;
    private final int writeTimeout;

    public RealInterceptorChain(List<Interceptor> list, StreamAllocation streamAllocation, HttpCodec httpCodec, RealConnection realConnection, int i, Request request, Call call, EventListener eventListener, int i2, int i3, int i4) {
        this.interceptors = list;
        this.connection = realConnection;
        this.streamAllocation = streamAllocation;
        this.httpCodec = httpCodec;
        this.index = i;
        this.request = request;
        this.call = call;
        this.eventListener = eventListener;
        this.connectTimeout = i2;
        this.readTimeout = i3;
        this.writeTimeout = i4;
    }

    @Override // okhttp3.Interceptor.Chain
    public Call call() {
        return this.call;
    }

    @Override // okhttp3.Interceptor.Chain
    public int connectTimeoutMillis() {
        return this.connectTimeout;
    }

    @Override // okhttp3.Interceptor.Chain
    public Connection connection() {
        return this.connection;
    }

    public EventListener eventListener() {
        return this.eventListener;
    }

    public HttpCodec httpStream() {
        return this.httpCodec;
    }

    @Override // okhttp3.Interceptor.Chain
    public Response proceed(Request request) throws IOException {
        return proceed(request, this.streamAllocation, this.httpCodec, this.connection);
    }

    public Response proceed(Request request, StreamAllocation streamAllocation, HttpCodec httpCodec, RealConnection realConnection) throws IOException {
        if (this.index >= this.interceptors.size()) {
            throw new AssertionError();
        }
        this.calls++;
        if (this.httpCodec != null && !this.connection.supportsUrl(request.url())) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{92, 6, 18, 68, 88, 68, 89, 67, 15, 93, 67, 83, 64, 0, 3, 67, 67, 89, 64, 67}, "2cf376", 1.95502961E9d) + this.interceptors.get(this.index - 1) + NPStringFog.decode(new byte[]{70, 95, 69, 17, 77, 65, 20, 87, 68, 3, 80, 15, 70, 70, 88, 7, 25, 18, 7, 95, 85, 66, 81, 14, 21, 70, 16, 3, 87, 5, 70, 66, 95, 16, 77}, "f20b9a", -2.0038196E9f));
        }
        if (this.httpCodec != null && this.calls > 1) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{94, 4, 18, 17, 11, 20, 91, 65, 15, 8, 16, 3, 66, 2, 3, 22, 16, 9, 66, 65}, "0affdf", true) + this.interceptors.get(this.index - 1) + NPStringFog.decode(new byte[]{66, 15, 22, 65, 65, 67, 1, 3, 15, 94, 21, 19, 16, 13, 0, 87, 80, 7, 74, 75, 67, 87, 77, 2, 1, 22, 15, 75, 21, 12, 12, 1, 6}, "bbc25c", true, false));
        }
        RealInterceptorChain realInterceptorChain = new RealInterceptorChain(this.interceptors, streamAllocation, httpCodec, realConnection, this.index + 1, request, this.call, this.eventListener, this.connectTimeout, this.readTimeout, this.writeTimeout);
        Interceptor interceptor = this.interceptors.get(this.index);
        Response responseIntercept = interceptor.intercept(realInterceptorChain);
        if (httpCodec != null && this.index + 1 < this.interceptors.size() && realInterceptorChain.calls != 1) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{15, 86, 71, 70, 13, 17, 10, 19, 90, 95, 22, 6, 19, 80, 86, 65, 22, 12, 19, 19}, "a331bc", 767495232L) + interceptor + NPStringFog.decode(new byte[]{18, 8, 64, 66, 70, 16, 81, 4, 89, 93, 18, 64, 64, 10, 86, 84, 87, 84, 26, 76, 21, 84, 74, 81, 81, 17, 89, 72, 18, 95, 92, 6, 80}, "2e5120", -1.315232574E9d));
        }
        if (responseIntercept == null) {
            throw new NullPointerException(NPStringFog.decode(new byte[]{12, 12, 76, 81, 74, 6, 0, 18, 76, 91, 74, 69}, "eb848e", false, true) + interceptor + NPStringFog.decode(new byte[]{65, 68, 87, 70, 71, 66, 15, 83, 86, 18, 92, 69, 13, 90}, "a62220", 1.9234461E9f));
        }
        if (responseIntercept.body() == null) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{81, 92, 69, 82, 22, 85, 93, 66, 69, 88, 22, 22}, "8217d6", -29453) + interceptor + NPStringFog.decode(new byte[]{19, 66, 7, 16, 64, 75, 93, 85, 6, 68, 84, 25, 65, 85, 17, 20, 90, 87, 64, 85, 66, 19, 92, 77, 91, 16, 12, 11, 21, 91, 92, 84, 27}, "30bd59", true, false));
        }
        return responseIntercept;
    }

    @Override // okhttp3.Interceptor.Chain
    public int readTimeoutMillis() {
        return this.readTimeout;
    }

    @Override // okhttp3.Interceptor.Chain
    public Request request() {
        return this.request;
    }

    public StreamAllocation streamAllocation() {
        return this.streamAllocation;
    }

    @Override // okhttp3.Interceptor.Chain
    public Interceptor.Chain withConnectTimeout(int i, TimeUnit timeUnit) {
        return new RealInterceptorChain(this.interceptors, this.streamAllocation, this.httpCodec, this.connection, this.index, this.request, this.call, this.eventListener, Util.checkDuration(NPStringFog.decode(new byte[]{71, 93, 91, 87, 9, 66, 71}, "3462f7", true), i, timeUnit), this.readTimeout, this.writeTimeout);
    }

    @Override // okhttp3.Interceptor.Chain
    public Interceptor.Chain withReadTimeout(int i, TimeUnit timeUnit) {
        return new RealInterceptorChain(this.interceptors, this.streamAllocation, this.httpCodec, this.connection, this.index, this.request, this.call, this.eventListener, this.connectTimeout, Util.checkDuration(NPStringFog.decode(new byte[]{70, 89, 88, 86, 12, 16, 70}, "2053ce", false), i, timeUnit), this.writeTimeout);
    }

    @Override // okhttp3.Interceptor.Chain
    public Interceptor.Chain withWriteTimeout(int i, TimeUnit timeUnit) {
        return new RealInterceptorChain(this.interceptors, this.streamAllocation, this.httpCodec, this.connection, this.index, this.request, this.call, this.eventListener, this.connectTimeout, this.readTimeout, Util.checkDuration(NPStringFog.decode(new byte[]{68, 80, 8, 93, 86, 71, 68}, "09e892", -4.1093824E8f), i, timeUnit));
    }

    @Override // okhttp3.Interceptor.Chain
    public int writeTimeoutMillis() {
        return this.writeTimeout;
    }
}
