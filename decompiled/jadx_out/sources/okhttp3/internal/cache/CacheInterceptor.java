package okhttp3.internal.cache;

import java.io.IOException;
import java.util.concurrent.TimeUnit;
import n.NPStringFog;
import okhttp3.Headers;
import okhttp3.Interceptor;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.Internal;
import okhttp3.internal.Util;
import okhttp3.internal.cache.CacheStrategy;
import okhttp3.internal.http.HttpHeaders;
import okhttp3.internal.http.HttpMethod;
import okhttp3.internal.http.RealResponseBody;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.Okio;
import okio.Sink;
import okio.Source;
import okio.Timeout;

/* JADX INFO: loaded from: classes62.dex */
public final class CacheInterceptor implements Interceptor {
    final InternalCache cache;

    public CacheInterceptor(InternalCache internalCache) {
        this.cache = internalCache;
    }

    private Response cacheWritingResponse(CacheRequest cacheRequest, Response response) throws IOException {
        Sink sinkBody;
        if (cacheRequest == null || (sinkBody = cacheRequest.body()) == null) {
            return response;
        }
        return response.newBuilder().body(new RealResponseBody(response.header(NPStringFog.decode(new byte[]{113, 86, 10, 67, 85, 8, 70, 20, 48, 78, 64, 3}, "29d70f", true, true)), response.body().contentLength(), Okio.buffer(new Source(this, response.body().source(), cacheRequest, Okio.buffer(sinkBody)) { // from class: okhttp3.internal.cache.CacheInterceptor.1
            boolean cacheRequestClosed;
            final CacheInterceptor this$0;
            final BufferedSink val$cacheBody;
            final CacheRequest val$cacheRequest;
            final BufferedSource val$source;

            {
                this.this$0 = this;
                this.val$source = bufferedSource;
                this.val$cacheRequest = cacheRequest;
                this.val$cacheBody = bufferedSink;
            }

            @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                if (!this.cacheRequestClosed && !Util.discard(this, 100, TimeUnit.MILLISECONDS)) {
                    this.cacheRequestClosed = true;
                    this.val$cacheRequest.abort();
                }
                this.val$source.close();
            }

            @Override // okio.Source
            public long read(Buffer buffer, long j) throws IOException {
                try {
                    long j2 = this.val$source.read(buffer, j);
                    if (j2 != -1) {
                        buffer.copyTo(this.val$cacheBody.buffer(), buffer.size() - j2, j2);
                        this.val$cacheBody.emitCompleteSegments();
                        return j2;
                    }
                    if (!this.cacheRequestClosed) {
                        this.cacheRequestClosed = true;
                        this.val$cacheBody.close();
                    }
                    return -1L;
                } catch (IOException e) {
                    if (!this.cacheRequestClosed) {
                        this.cacheRequestClosed = true;
                        this.val$cacheRequest.abort();
                    }
                    throw e;
                }
            }

            @Override // okio.Source
            public Timeout timeout() {
                return this.val$source.timeout();
            }
        }))).build();
    }

    private static Headers combine(Headers headers, Headers headers2) {
        Headers.Builder builder = new Headers.Builder();
        int size = headers.size();
        for (int i = 0; i < size; i++) {
            String strName = headers.name(i);
            String strValue = headers.value(i);
            if ((!NPStringFog.decode(new byte[]{49, 80, 22, 91, 13, 89, 1}, "f1d5d7", -6.88256348E8d).equalsIgnoreCase(strName) || !strValue.startsWith(NPStringFog.decode(new byte[]{5}, "4aa0c1", false))) && (!isEndToEnd(strName) || headers2.get(strName) == null)) {
                Internal.instance.addLenient(builder, strName, strValue);
            }
        }
        int size2 = headers2.size();
        for (int i2 = 0; i2 < size2; i2++) {
            String strName2 = headers2.name(i2);
            if (!NPStringFog.decode(new byte[]{115, 90, 95, 17, 87, 89, 68, 24, 125, 0, 92, 80, 68, 93}, "051e27", -1.7338593E9f).equalsIgnoreCase(strName2) && isEndToEnd(strName2)) {
                Internal.instance.addLenient(builder, strName2, headers2.value(i2));
            }
        }
        return builder.build();
    }

    static boolean isEndToEnd(String str) {
        return (NPStringFog.decode(new byte[]{123, 88, 11, 92, 85, 7, 76, 94, 10, 92}, "87e20d", 712).equalsIgnoreCase(str) || NPStringFog.decode(new byte[]{115, 83, 3, 65, 75, 120, 84, 95, 16, 84}, "86f1f9", true).equalsIgnoreCase(str) || NPStringFog.decode(new byte[]{99, 64, 90, 28, 29, 72, 114, 71, 65, 12, 1, 11, 71, 91, 86, 5, 16, 0}, "325dde", 1.1798807E9f).equalsIgnoreCase(str) || NPStringFog.decode(new byte[]{51, 70, 95, 65, 73, 75, 34, 65, 68, 81, 95, 20, 10, 78, 81, 77, 89, 9, 13}, "c4090f", 4.20377679E8d).equalsIgnoreCase(str) || NPStringFog.decode(new byte[]{48, 112}, "d535d4", false).equalsIgnoreCase(str) || NPStringFog.decode(new byte[]{97, 66, 80, 93, 89, 92, 71, 67}, "501459", -611504523L).equalsIgnoreCase(str) || NPStringFog.decode(new byte[]{100, 74, 2, 10, 75, 83, 85, 74, 78, 33, 86, 86, 95, 92, 10, 10, 95}, "08cd85", 4.3244006E8f).equalsIgnoreCase(str) || NPStringFog.decode(new byte[]{102, 18, 83, 69, 82, 93, 86}, "3b4739", -2.138434E9f).equalsIgnoreCase(str)) ? false : true;
    }

    private static Response stripBody(Response response) {
        return (response == null || response.body() == null) ? response : response.newBuilder().body(null).build();
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        Response response = this.cache != null ? this.cache.get(chain.request()) : null;
        CacheStrategy cacheStrategy = new CacheStrategy.Factory(System.currentTimeMillis(), chain.request(), response).get();
        Request request = cacheStrategy.networkRequest;
        Response response2 = cacheStrategy.cacheResponse;
        if (this.cache != null) {
            this.cache.trackResponse(cacheStrategy);
        }
        if (response != null && response2 == null) {
            Util.closeQuietly(response.body());
        }
        if (request == null && response2 == null) {
            return new Response.Builder().request(chain.request()).protocol(Protocol.HTTP_1_1).code(504).message(NPStringFog.decode(new byte[]{100, 88, 23, 80, 18, 80, 66, 80, 13, 80, 4, 85, 84, 22, 54, 84, 23, 76, 84, 69, 16, 17, 78, 86, 95, 90, 29, 28, 15, 95, 28, 85, 5, 82, 14, 92, 85, 31}, "16d1f9", 30167)).body(Util.EMPTY_RESPONSE).sentRequestAtMillis(-1L).receivedResponseAtMillis(System.currentTimeMillis()).build();
        }
        if (request == null) {
            return response2.newBuilder().cacheResponse(stripBody(response2)).build();
        }
        try {
            Response responseProceed = chain.proceed(request);
            if (responseProceed == null && response != null) {
            }
            if (response2 != null) {
                if (responseProceed.code() == 304) {
                    Response responseBuild = response2.newBuilder().headers(combine(response2.headers(), responseProceed.headers())).sentRequestAtMillis(responseProceed.sentRequestAtMillis()).receivedResponseAtMillis(responseProceed.receivedResponseAtMillis()).cacheResponse(stripBody(response2)).networkResponse(stripBody(responseProceed)).build();
                    responseProceed.body().close();
                    this.cache.trackConditionalCacheHit();
                    this.cache.update(response2, responseBuild);
                    return responseBuild;
                }
                Util.closeQuietly(response2.body());
            }
            Response responseBuild2 = responseProceed.newBuilder().cacheResponse(stripBody(response2)).networkResponse(stripBody(responseProceed)).build();
            if (this.cache == null) {
                return responseBuild2;
            }
            if (HttpHeaders.hasBody(responseBuild2) && CacheStrategy.isCacheable(responseBuild2, request)) {
                return cacheWritingResponse(this.cache.put(responseBuild2), responseBuild2);
            }
            if (!HttpMethod.invalidatesCache(request.method())) {
                return responseBuild2;
            }
            try {
                this.cache.remove(request);
                return responseBuild2;
            } catch (IOException e) {
                return responseBuild2;
            }
        } finally {
            if (response != null) {
                Util.closeQuietly(response.body());
            }
        }
    }
}
