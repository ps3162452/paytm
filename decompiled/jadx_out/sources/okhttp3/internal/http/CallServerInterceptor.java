package okhttp3.internal.http;

import java.io.IOException;
import java.net.ProtocolException;
import n.NPStringFog;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.Util;
import okhttp3.internal.connection.RealConnection;
import okhttp3.internal.connection.StreamAllocation;
import okio.Buffer;
import okio.BufferedSink;
import okio.ForwardingSink;
import okio.Okio;
import okio.Sink;

/* JADX INFO: loaded from: classes62.dex */
public final class CallServerInterceptor implements Interceptor {
    private final boolean forWebSocket;

    static final class CountingSink extends ForwardingSink {
        long successfulCount;

        CountingSink(Sink sink) {
            super(sink);
        }

        @Override // okio.ForwardingSink, okio.Sink
        public void write(Buffer buffer, long j) throws IOException {
            super.write(buffer, j);
            this.successfulCount += j;
        }
    }

    public CallServerInterceptor(boolean z) {
        this.forWebSocket = z;
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        Response.Builder responseHeaders;
        Response.Builder responseHeaders2;
        RealInterceptorChain realInterceptorChain = (RealInterceptorChain) chain;
        HttpCodec httpCodecHttpStream = realInterceptorChain.httpStream();
        StreamAllocation streamAllocation = realInterceptorChain.streamAllocation();
        RealConnection realConnection = (RealConnection) realInterceptorChain.connection();
        Request request = realInterceptorChain.request();
        long jCurrentTimeMillis = System.currentTimeMillis();
        realInterceptorChain.eventListener().requestHeadersStart(realInterceptorChain.call());
        httpCodecHttpStream.writeRequestHeaders(request);
        realInterceptorChain.eventListener().requestHeadersEnd(realInterceptorChain.call(), request);
        if (!HttpMethod.permitsRequestBody(request.method()) || request.body() == null) {
            responseHeaders = null;
        } else {
            if (NPStringFog.decode(new byte[]{9, 2, 82, 75, 6, 10, 86, 70, 11, 8, 16, 0}, "82bfee", -5.50407732E8d).equalsIgnoreCase(request.header(NPStringFog.decode(new byte[]{125, 25, 21, 6, 5, 67}, "8aecf7", false)))) {
                httpCodecHttpStream.flushRequest();
                realInterceptorChain.eventListener().responseHeadersStart(realInterceptorChain.call());
                responseHeaders2 = httpCodecHttpStream.readResponseHeaders(true);
            } else {
                responseHeaders2 = null;
            }
            if (responseHeaders2 == null) {
                realInterceptorChain.eventListener().requestBodyStart(realInterceptorChain.call());
                CountingSink countingSink = new CountingSink(httpCodecHttpStream.createRequestBody(request, request.body().contentLength()));
                BufferedSink bufferedSinkBuffer = Okio.buffer(countingSink);
                request.body().writeTo(bufferedSinkBuffer);
                bufferedSinkBuffer.close();
                realInterceptorChain.eventListener().requestBodyEnd(realInterceptorChain.call(), countingSink.successfulCount);
                responseHeaders = responseHeaders2;
            } else if (realConnection.isMultiplexed()) {
                responseHeaders = responseHeaders2;
            } else {
                streamAllocation.noNewStreams();
                responseHeaders = responseHeaders2;
            }
        }
        httpCodecHttpStream.finishRequest();
        if (responseHeaders == null) {
            realInterceptorChain.eventListener().responseHeadersStart(realInterceptorChain.call());
            responseHeaders = httpCodecHttpStream.readResponseHeaders(false);
        }
        Response responseBuild = responseHeaders.request(request).handshake(streamAllocation.connection().handshake()).sentRequestAtMillis(jCurrentTimeMillis).receivedResponseAtMillis(System.currentTimeMillis()).build();
        realInterceptorChain.eventListener().responseHeadersEnd(realInterceptorChain.call(), responseBuild);
        int iCode = responseBuild.code();
        Response responseBuild2 = (this.forWebSocket && iCode == 101) ? responseBuild.newBuilder().body(Util.EMPTY_RESPONSE).build() : responseBuild.newBuilder().body(httpCodecHttpStream.openResponseBody(responseBuild)).build();
        if (NPStringFog.decode(new byte[]{80, 85, 94, 66, 3}, "3911fb", false).equalsIgnoreCase(responseBuild2.request().header(NPStringFog.decode(new byte[]{119, 89, 8, 90, 81, 82, 64, 95, 9, 90}, "46f441", 24779))) || NPStringFog.decode(new byte[]{85, 90, 90, 75, 82}, "665875", 1.9470856E9f).equalsIgnoreCase(responseBuild2.header(NPStringFog.decode(new byte[]{122, 12, 95, 95, 87, 84, 77, 10, 94, 95}, "9c1127", true, true)))) {
            streamAllocation.noNewStreams();
        }
        if ((iCode == 204 || iCode == 205) && responseBuild2.body().contentLength() > 0) {
            throw new ProtocolException(NPStringFog.decode(new byte[]{112, 101, 48, 103, 65}, "81d7aa", -16435) + iCode + NPStringFog.decode(new byte[]{25, 91, 86, 86, 17, 91, 86, 93, 26, 72, 84, 71, 86, 19, 116, 93, 95, 65, 92, 93, 67, 31, 125, 80, 87, 84, 67, 90, 11, 21}, "937215", true) + responseBuild2.body().contentLength());
        }
        return responseBuild2;
    }
}
