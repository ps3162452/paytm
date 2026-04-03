package okhttp3.internal.http2;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import n.NPStringFog;
import okhttp3.Headers;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.Internal;
import okhttp3.internal.Util;
import okhttp3.internal.connection.StreamAllocation;
import okhttp3.internal.http.HttpCodec;
import okhttp3.internal.http.HttpHeaders;
import okhttp3.internal.http.RealResponseBody;
import okhttp3.internal.http.RequestLine;
import okio.Buffer;
import okio.ByteString;
import okio.ForwardingSource;
import okio.Okio;
import okio.Sink;
import okio.Source;

/* JADX INFO: loaded from: classes62.dex */
public final class Http2Codec implements HttpCodec {
    private final Interceptor.Chain chain;
    private final OkHttpClient client;
    private final Http2Connection connection;
    private Http2Stream stream;
    final StreamAllocation streamAllocation;
    private static final ByteString CONNECTION = ByteString.encodeUtf8(NPStringFog.decode(new byte[]{6, 89, 15, 86, 0, 7, 17, 95, 14, 86}, "e6a8ed", -29167));
    private static final ByteString HOST = ByteString.encodeUtf8(NPStringFog.decode(new byte[]{92, 13, 17, 66}, "4bb6ac", -1129618525L));
    private static final ByteString KEEP_ALIVE = ByteString.encodeUtf8(NPStringFog.decode(new byte[]{91, 82, 83, 67, 20, 83, 92, 94, 64, 86}, "076392", true, false));
    private static final ByteString PROXY_CONNECTION = ByteString.encodeUtf8(NPStringFog.decode(new byte[]{18, 71, 14, 65, 72, 73, 1, 90, 15, 87, 84, 7, 22, 92, 14, 87}, "b5a91d", -1.063938428E9d));
    private static final ByteString TRANSFER_ENCODING = ByteString.encodeUtf8(NPStringFog.decode(new byte[]{22, 75, 4, 88, 71, 95, 7, 75, 72, 83, 90, 90, 13, 93, 12, 88, 83}, "b9e649", true));
    private static final ByteString TE = ByteString.encodeUtf8(NPStringFog.decode(new byte[]{65, 0}, "5e48e0", -1.0265056E9f));
    private static final ByteString ENCODING = ByteString.encodeUtf8(NPStringFog.decode(new byte[]{3, 95, 87, 95, 92, 13, 8, 86}, "f1408d", false));
    private static final ByteString UPGRADE = ByteString.encodeUtf8(NPStringFog.decode(new byte[]{67, 20, 6, 74, 88, 92, 83}, "6da898", false));
    private static final List<ByteString> HTTP_2_SKIPPED_REQUEST_HEADERS = Util.immutableList(CONNECTION, HOST, KEEP_ALIVE, PROXY_CONNECTION, TE, TRANSFER_ENCODING, ENCODING, UPGRADE, Header.TARGET_METHOD, Header.TARGET_PATH, Header.TARGET_SCHEME, Header.TARGET_AUTHORITY);
    private static final List<ByteString> HTTP_2_SKIPPED_RESPONSE_HEADERS = Util.immutableList(CONNECTION, HOST, KEEP_ALIVE, PROXY_CONNECTION, TE, TRANSFER_ENCODING, ENCODING, UPGRADE);

    class StreamFinishingSource extends ForwardingSource {
        long bytesRead;
        boolean completed;
        final Http2Codec this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        StreamFinishingSource(Http2Codec http2Codec, Source source) {
            super(source);
            this.this$0 = http2Codec;
            this.completed = false;
            this.bytesRead = 0L;
        }

        private void endOfInput(IOException iOException) {
            if (this.completed) {
                return;
            }
            this.completed = true;
            this.this$0.streamAllocation.streamFinished(false, this.this$0, this.bytesRead, iOException);
        }

        @Override // okio.ForwardingSource, okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            super.close();
            endOfInput(null);
        }

        @Override // okio.ForwardingSource, okio.Source
        public long read(Buffer buffer, long j) throws IOException {
            try {
                long j2 = delegate().read(buffer, j);
                if (j2 > 0) {
                    this.bytesRead += j2;
                }
                return j2;
            } catch (IOException e) {
                endOfInput(e);
                throw e;
            }
        }
    }

    public Http2Codec(OkHttpClient okHttpClient, Interceptor.Chain chain, StreamAllocation streamAllocation, Http2Connection http2Connection) {
        this.client = okHttpClient;
        this.chain = chain;
        this.streamAllocation = streamAllocation;
        this.connection = http2Connection;
    }

    public static List<Header> http2HeadersList(Request request) {
        Headers headers = request.headers();
        ArrayList arrayList = new ArrayList(headers.size() + 4);
        arrayList.add(new Header(Header.TARGET_METHOD, request.method()));
        arrayList.add(new Header(Header.TARGET_PATH, RequestLine.requestPath(request.url())));
        String strHeader = request.header(NPStringFog.decode(new byte[]{113, 95, 66, 16}, "901db1", -1919188401L));
        if (strHeader != null) {
            arrayList.add(new Header(Header.TARGET_AUTHORITY, strHeader));
        }
        arrayList.add(new Header(Header.TARGET_SCHEME, request.url().scheme()));
        int size = headers.size();
        for (int i = 0; i < size; i++) {
            ByteString byteStringEncodeUtf8 = ByteString.encodeUtf8(headers.name(i).toLowerCase(Locale.US));
            if (!HTTP_2_SKIPPED_REQUEST_HEADERS.contains(byteStringEncodeUtf8)) {
                arrayList.add(new Header(byteStringEncodeUtf8, headers.value(i)));
            }
        }
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x00b0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static okhttp3.Response.Builder readHttp2HeadersList(java.util.List<okhttp3.internal.http2.Header> r11) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 213
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.Http2Codec.readHttp2HeadersList(java.util.List):okhttp3.Response$Builder");
    }

    @Override // okhttp3.internal.http.HttpCodec
    public void cancel() {
        if (this.stream != null) {
            this.stream.closeLater(ErrorCode.CANCEL);
        }
    }

    @Override // okhttp3.internal.http.HttpCodec
    public Sink createRequestBody(Request request, long j) {
        return this.stream.getSink();
    }

    @Override // okhttp3.internal.http.HttpCodec
    public void finishRequest() throws IOException {
        this.stream.getSink().close();
    }

    @Override // okhttp3.internal.http.HttpCodec
    public void flushRequest() throws IOException {
        this.connection.flush();
    }

    @Override // okhttp3.internal.http.HttpCodec
    public ResponseBody openResponseBody(Response response) throws IOException {
        this.streamAllocation.eventListener.responseBodyStart(this.streamAllocation.call);
        return new RealResponseBody(response.header(NPStringFog.decode(new byte[]{39, 11, 8, 71, 93, 12, 16, 73, 50, 74, 72, 7}, "ddf38b", 422741053L)), HttpHeaders.contentLength(response), Okio.buffer(new StreamFinishingSource(this, this.stream.getSource())));
    }

    @Override // okhttp3.internal.http.HttpCodec
    public Response.Builder readResponseHeaders(boolean z) throws IOException {
        Response.Builder http2HeadersList = readHttp2HeadersList(this.stream.takeResponseHeaders());
        if (z && Internal.instance.code(http2HeadersList) == 100) {
            return null;
        }
        return http2HeadersList;
    }

    @Override // okhttp3.internal.http.HttpCodec
    public void writeRequestHeaders(Request request) throws IOException {
        if (this.stream != null) {
            return;
        }
        this.stream = this.connection.newStream(http2HeadersList(request), request.body() != null);
        this.stream.readTimeout().timeout(this.chain.readTimeoutMillis(), TimeUnit.MILLISECONDS);
        this.stream.writeTimeout().timeout(this.chain.writeTimeoutMillis(), TimeUnit.MILLISECONDS);
    }
}
