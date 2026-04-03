package okhttp3.internal.http1;

import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;
import n.NPStringFog;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.Internal;
import okhttp3.internal.Util;
import okhttp3.internal.connection.RealConnection;
import okhttp3.internal.connection.StreamAllocation;
import okhttp3.internal.http.HttpCodec;
import okhttp3.internal.http.HttpHeaders;
import okhttp3.internal.http.RealResponseBody;
import okhttp3.internal.http.RequestLine;
import okhttp3.internal.http.StatusLine;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ForwardingTimeout;
import okio.Okio;
import okio.Sink;
import okio.Source;
import okio.Timeout;

/* JADX INFO: loaded from: classes62.dex */
public final class Http1Codec implements HttpCodec {
    private static final int HEADER_LIMIT = 262144;
    private static final int STATE_CLOSED = 6;
    private static final int STATE_IDLE = 0;
    private static final int STATE_OPEN_REQUEST_BODY = 1;
    private static final int STATE_OPEN_RESPONSE_BODY = 4;
    private static final int STATE_READING_RESPONSE_BODY = 5;
    private static final int STATE_READ_RESPONSE_HEADERS = 3;
    private static final int STATE_WRITING_REQUEST_BODY = 2;
    final OkHttpClient client;
    final BufferedSink sink;
    final BufferedSource source;
    final StreamAllocation streamAllocation;
    int state = 0;
    private long headerLimit = 262144;

    private abstract class AbstractSource implements Source {
        protected long bytesRead;
        protected boolean closed;
        final Http1Codec this$0;
        protected final ForwardingTimeout timeout;

        private AbstractSource(Http1Codec http1Codec) {
            this.this$0 = http1Codec;
            this.timeout = new ForwardingTimeout(this.this$0.source.timeout());
            this.bytesRead = 0L;
        }

        protected final void endOfInput(boolean z, IOException iOException) throws IOException {
            if (this.this$0.state == 6) {
                return;
            }
            if (this.this$0.state != 5) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{70, 64, 4, 22, 84, 15, 21}, "54eb15", true) + this.this$0.state);
            }
            this.this$0.detachTimeout(this.timeout);
            this.this$0.state = 6;
            if (this.this$0.streamAllocation != null) {
                this.this$0.streamAllocation.streamFinished(z ? false : true, this.this$0, this.bytesRead, iOException);
            }
        }

        @Override // okio.Source
        public long read(Buffer buffer, long j) throws IOException {
            try {
                long j2 = this.this$0.source.read(buffer, j);
                if (j2 > 0) {
                    this.bytesRead += j2;
                }
                return j2;
            } catch (IOException e) {
                endOfInput(false, e);
                throw e;
            }
        }

        @Override // okio.Source
        public Timeout timeout() {
            return this.timeout;
        }
    }

    private final class ChunkedSink implements Sink {
        private boolean closed;
        final Http1Codec this$0;
        private final ForwardingTimeout timeout;

        ChunkedSink(Http1Codec http1Codec) {
            this.this$0 = http1Codec;
            this.timeout = new ForwardingTimeout(this.this$0.sink.timeout());
        }

        @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            synchronized (this) {
                if (!this.closed) {
                    this.closed = true;
                    this.this$0.sink.writeUtf8(NPStringFog.decode(new byte[]{83, 104, 108, 59, 56}, "cef62e", 1.0350906E9f));
                    this.this$0.detachTimeout(this.timeout);
                    this.this$0.state = 3;
                }
            }
        }

        @Override // okio.Sink, java.io.Flushable
        public void flush() throws IOException {
            synchronized (this) {
                if (!this.closed) {
                    this.this$0.sink.flush();
                }
            }
        }

        @Override // okio.Sink
        public Timeout timeout() {
            return this.timeout;
        }

        @Override // okio.Sink
        public void write(Buffer buffer, long j) throws IOException {
            if (this.closed) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{2, 8, 11, 17, 82, 81}, "addb75", true));
            }
            if (j == 0) {
                return;
            }
            this.this$0.sink.writeHexadecimalUnsignedLong(j);
            this.this$0.sink.writeUtf8("\r\n");
            this.this$0.sink.write(buffer, j);
            this.this$0.sink.writeUtf8("\r\n");
        }
    }

    private class ChunkedSource extends AbstractSource {
        private static final long NO_CHUNK_YET = -1;
        private long bytesRemainingInChunk;
        private boolean hasMoreChunks;
        final Http1Codec this$0;
        private final HttpUrl url;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        ChunkedSource(Http1Codec http1Codec, HttpUrl httpUrl) {
            super();
            this.this$0 = http1Codec;
            this.bytesRemainingInChunk = -1L;
            this.hasMoreChunks = true;
            this.url = httpUrl;
        }

        private void readChunkSize() throws IOException {
            if (this.bytesRemainingInChunk != -1) {
                this.this$0.source.readUtf8LineStrict();
            }
            try {
                this.bytesRemainingInChunk = this.this$0.source.readHexadecimalUnsignedLong();
                String strTrim = this.this$0.source.readUtf8LineStrict().trim();
                if (this.bytesRemainingInChunk < 0 || !(strTrim.isEmpty() || strTrim.startsWith(NPStringFog.decode(new byte[]{95}, "dcf679", false, true)))) {
                    throw new ProtocolException(NPStringFog.decode(new byte[]{1, 25, 18, 0, 86, 16, 1, 5, 66, 6, 93, 17, 10, 10, 66, 22, 92, 30, 1, 65, 3, 11, 81, 68, 11, 17, 22, 12, 90, 10, 5, 13, 66, 0, 77, 16, 1, 15, 17, 12, 90, 10, 23, 65, 0, 16, 65, 68, 19, 0, 17, 69, 23}, "dabe5d", -1023734198L) + this.bytesRemainingInChunk + strTrim + NPStringFog.decode(new byte[]{17}, "362b41", false, true));
                }
                if (this.bytesRemainingInChunk == 0) {
                    this.hasMoreChunks = false;
                    HttpHeaders.receiveHeaders(this.this$0.client.cookieJar(), this.url, this.this$0.readHeaders());
                    endOfInput(true, null);
                }
            } catch (NumberFormatException e) {
                throw new ProtocolException(e.getMessage());
            }
        }

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.closed) {
                return;
            }
            if (this.hasMoreChunks && !Util.discard(this, 100, TimeUnit.MILLISECONDS)) {
                endOfInput(false, null);
            }
            this.closed = true;
        }

        @Override // okhttp3.internal.http1.Http1Codec.AbstractSource, okio.Source
        public long read(Buffer buffer, long j) throws IOException {
            if (j < 0) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{82, 31, 70, 7, 122, 14, 69, 8, 70, 66, 5, 65, 0, 92, 18}, "0f2b9a", 9.65685365E8d) + j);
            }
            if (this.closed) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{84, 84, 91, 70, 83, 6}, "78456b", 14597));
            }
            if (!this.hasMoreChunks) {
                return -1L;
            }
            if (this.bytesRemainingInChunk == 0 || this.bytesRemainingInChunk == -1) {
                readChunkSize();
                if (!this.hasMoreChunks) {
                    return -1L;
                }
            }
            long j2 = super.read(buffer, Math.min(j, this.bytesRemainingInChunk));
            if (j2 != -1) {
                this.bytesRemainingInChunk -= j2;
                return j2;
            }
            ProtocolException protocolException = new ProtocolException(NPStringFog.decode(new byte[]{67, 10, 86, 75, 70, 0, 85, 16, 86, 87, 22, 0, 88, 0, 19, 92, 80, 69, 69, 16, 65, 86, 87, 8}, "6d336e", 1941848620L));
            endOfInput(false, protocolException);
            throw protocolException;
        }
    }

    private final class FixedLengthSink implements Sink {
        private long bytesRemaining;
        private boolean closed;
        final Http1Codec this$0;
        private final ForwardingTimeout timeout;

        FixedLengthSink(Http1Codec http1Codec, long j) {
            this.this$0 = http1Codec;
            this.timeout = new ForwardingTimeout(this.this$0.sink.timeout());
            this.bytesRemaining = j;
        }

        @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.closed) {
                return;
            }
            this.closed = true;
            if (this.bytesRemaining > 0) {
                throw new ProtocolException(NPStringFog.decode(new byte[]{16, 12, 87, 65, 71, 4, 6, 22, 87, 93, 23, 4, 11, 6, 18, 86, 81, 65, 22, 22, 64, 92, 86, 12}, "eb297a", -1.634890221E9d));
            }
            this.this$0.detachTimeout(this.timeout);
            this.this$0.state = 3;
        }

        @Override // okio.Sink, java.io.Flushable
        public void flush() throws IOException {
            if (this.closed) {
                return;
            }
            this.this$0.sink.flush();
        }

        @Override // okio.Sink
        public Timeout timeout() {
            return this.timeout;
        }

        @Override // okio.Sink
        public void write(Buffer buffer, long j) throws IOException {
            if (this.closed) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{82, 94, 91, 21, 4, 86}, "124fa2", -7.751972E7f));
            }
            Util.checkOffsetAndCount(buffer.size(), 0L, j);
            if (j > this.bytesRemaining) {
                throw new ProtocolException(NPStringFog.decode(new byte[]{84, 25, 68, 1, 90, 69, 84, 5, 20}, "1a4d91", -5.4215546E8f) + this.bytesRemaining + NPStringFog.decode(new byte[]{20, 1, 76, 21, 82, 67, 20, 1, 64, 21, 23, 66, 81, 0, 80, 8, 65, 85, 80, 67}, "4c5a70", 8.07268E8f) + j);
            }
            this.this$0.sink.write(buffer, j);
            this.bytesRemaining -= j;
        }
    }

    private class FixedLengthSource extends AbstractSource {
        private long bytesRemaining;
        final Http1Codec this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        FixedLengthSource(Http1Codec http1Codec, long j) throws IOException {
            super();
            this.this$0 = http1Codec;
            this.bytesRemaining = j;
            if (this.bytesRemaining == 0) {
                endOfInput(true, null);
            }
        }

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.closed) {
                return;
            }
            if (this.bytesRemaining != 0 && !Util.discard(this, 100, TimeUnit.MILLISECONDS)) {
                endOfInput(false, null);
            }
            this.closed = true;
        }

        @Override // okhttp3.internal.http1.Http1Codec.AbstractSource, okio.Source
        public long read(Buffer buffer, long j) throws IOException {
            if (j < 0) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{85, 76, 65, 92, 122, 86, 66, 91, 65, 25, 5, 25, 7, 15, 21}, "755999", true) + j);
            }
            if (this.closed) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{6, 84, 10, 22, 4, 81}, "e8eea5", true));
            }
            if (this.bytesRemaining == 0) {
                return -1L;
            }
            long j2 = super.read(buffer, Math.min(this.bytesRemaining, j));
            if (j2 == -1) {
                ProtocolException protocolException = new ProtocolException(NPStringFog.decode(new byte[]{76, 11, 85, 74, 67, 0, 90, 17, 85, 86, 19, 0, 87, 1, 16, 93, 85, 69, 74, 17, 66, 87, 82, 8}, "9e023e", 1318987524L));
                endOfInput(false, protocolException);
                throw protocolException;
            }
            this.bytesRemaining -= j2;
            if (this.bytesRemaining != 0) {
                return j2;
            }
            endOfInput(true, null);
            return j2;
        }
    }

    private class UnknownLengthSource extends AbstractSource {
        private boolean inputExhausted;
        final Http1Codec this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        UnknownLengthSource(Http1Codec http1Codec) {
            super();
            this.this$0 = http1Codec;
        }

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.closed) {
                return;
            }
            if (!this.inputExhausted) {
                endOfInput(false, null);
            }
            this.closed = true;
        }

        @Override // okhttp3.internal.http1.Http1Codec.AbstractSource, okio.Source
        public long read(Buffer buffer, long j) throws IOException {
            if (j < 0) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{3, 74, 22, 86, 112, 87, 20, 93, 22, 19, 15, 24, 81, 9, 66}, "a3b338", false, true) + j);
            }
            if (this.closed) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{91, 90, 14, 17, 83, 83}, "86ab67", -18489));
            }
            if (this.inputExhausted) {
                return -1L;
            }
            long j2 = super.read(buffer, j);
            if (j2 != -1) {
                return j2;
            }
            this.inputExhausted = true;
            endOfInput(true, null);
            return -1L;
        }
    }

    public Http1Codec(OkHttpClient okHttpClient, StreamAllocation streamAllocation, BufferedSource bufferedSource, BufferedSink bufferedSink) {
        this.client = okHttpClient;
        this.streamAllocation = streamAllocation;
        this.source = bufferedSource;
        this.sink = bufferedSink;
    }

    private String readHeaderLine() throws IOException {
        String utf8LineStrict = this.source.readUtf8LineStrict(this.headerLimit);
        this.headerLimit -= (long) utf8LineStrict.length();
        return utf8LineStrict;
    }

    @Override // okhttp3.internal.http.HttpCodec
    public void cancel() {
        RealConnection realConnectionConnection = this.streamAllocation.connection();
        if (realConnectionConnection != null) {
            realConnectionConnection.cancel();
        }
    }

    @Override // okhttp3.internal.http.HttpCodec
    public Sink createRequestBody(Request request, long j) {
        if (NPStringFog.decode(new byte[]{80, 92, 16, 86, 13, 4, 87}, "34e8fa", -1504664898L).equalsIgnoreCase(request.header(NPStringFog.decode(new byte[]{100, 20, 0, 93, 23, 95, 85, 20, 76, 118, 10, 90, 95, 2, 8, 93, 3}, "0fa3d9", false, false)))) {
            return newChunkedSink();
        }
        if (j != -1) {
            return newFixedLengthSink(j);
        }
        throw new IllegalStateException(NPStringFog.decode(new byte[]{113, 5, 88, 93, 92, 68, 18, 23, 66, 65, 86, 81, 95, 68, 87, 19, 65, 85, 67, 17, 83, 64, 71, 16, 80, 11, 82, 74, 19, 71, 91, 16, 94, 92, 70, 68, 18, 7, 94, 70, 93, 91, 87, 0, 22, 86, 93, 83, 93, 0, 95, 93, 84, 16, 93, 22, 22, 82, 19, 91, 92, 11, 65, 93, 19, 83, 93, 10, 66, 86, 93, 68, 18, 8, 83, 93, 84, 68, 90, 69}, "2d6330", -950308821L));
    }

    void detachTimeout(ForwardingTimeout forwardingTimeout) {
        Timeout timeoutDelegate = forwardingTimeout.delegate();
        forwardingTimeout.setDelegate(Timeout.NONE);
        timeoutDelegate.clearDeadline();
        timeoutDelegate.clearTimeout();
    }

    @Override // okhttp3.internal.http.HttpCodec
    public void finishRequest() throws IOException {
        this.sink.flush();
    }

    @Override // okhttp3.internal.http.HttpCodec
    public void flushRequest() throws IOException {
        this.sink.flush();
    }

    public boolean isClosed() {
        return this.state == 6;
    }

    public Sink newChunkedSink() {
        if (this.state != 1) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{68, 22, 83, 67, 83, 92, 23}, "7b276f", -1.556910429E9d) + this.state);
        }
        this.state = 2;
        return new ChunkedSink(this);
    }

    public Source newChunkedSource(HttpUrl httpUrl) throws IOException {
        if (this.state != 4) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{16, 64, 3, 77, 0, 10, 67}, "c4b9e0", true) + this.state);
        }
        this.state = 5;
        return new ChunkedSource(this, httpUrl);
    }

    public Sink newFixedLengthSink(long j) {
        if (this.state != 1) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{64, 23, 0, 69, 1, 14, 19}, "3ca1d4", -1319921979L) + this.state);
        }
        this.state = 2;
        return new FixedLengthSink(this, j);
    }

    public Source newFixedLengthSource(long j) throws IOException {
        if (this.state != 4) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{16, 17, 5, 69, 93, 12, 67}, "ced186", -1559249696L) + this.state);
        }
        this.state = 5;
        return new FixedLengthSource(this, j);
    }

    public Source newUnknownLengthSource() throws IOException {
        if (this.state != 4) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{69, 71, 86, 77, 80, 94, 22}, "63795d", true, true) + this.state);
        }
        if (this.streamAllocation == null) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{65, 21, 68, 3, 4, 94, 115, 13, 90, 9, 6, 82, 70, 8, 89, 8, 69, 14, 15, 65, 88, 19, 9, 95}, "2a6fe3", -1918618512L));
        }
        this.state = 5;
        this.streamAllocation.noNewStreams();
        return new UnknownLengthSource(this);
    }

    @Override // okhttp3.internal.http.HttpCodec
    public ResponseBody openResponseBody(Response response) throws IOException {
        this.streamAllocation.eventListener.responseBodyStart(this.streamAllocation.call);
        String strHeader = response.header(NPStringFog.decode(new byte[]{37, 93, 8, 23, 86, 88, 18, 31, 50, 26, 67, 83}, "f2fc36", -16024));
        if (!HttpHeaders.hasBody(response)) {
            return new RealResponseBody(strHeader, 0L, Okio.buffer(newFixedLengthSource(0L)));
        }
        if (NPStringFog.decode(new byte[]{1, 95, 22, 15, 90, 92, 6}, "b7ca19", -6422).equalsIgnoreCase(response.header(NPStringFog.decode(new byte[]{108, 67, 87, 13, 22, 94, 93, 67, 27, 38, 11, 91, 87, 85, 95, 13, 2}, "816ce8", -752629223L)))) {
            return new RealResponseBody(strHeader, -1L, Okio.buffer(newChunkedSource(response.request().url())));
        }
        long jContentLength = HttpHeaders.contentLength(response);
        return jContentLength != -1 ? new RealResponseBody(strHeader, jContentLength, Okio.buffer(newFixedLengthSource(jContentLength))) : new RealResponseBody(strHeader, -1L, Okio.buffer(newUnknownLengthSource()));
    }

    public Headers readHeaders() throws IOException {
        Headers.Builder builder = new Headers.Builder();
        while (true) {
            String headerLine = readHeaderLine();
            if (headerLine.length() == 0) {
                return builder.build();
            }
            Internal.instance.addLenient(builder, headerLine);
        }
    }

    @Override // okhttp3.internal.http.HttpCodec
    public Response.Builder readResponseHeaders(boolean z) throws IOException {
        if (this.state != 1 && this.state != 3) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{64, 77, 7, 65, 80, 88, 19}, "39f55b", -20040) + this.state);
        }
        try {
            StatusLine statusLine = StatusLine.parse(readHeaderLine());
            Response.Builder builderHeaders = new Response.Builder().protocol(statusLine.protocol).code(statusLine.code).message(statusLine.message).headers(readHeaders());
            if (z && statusLine.code == 100) {
                return null;
            }
            this.state = 4;
            return builderHeaders;
        } catch (EOFException e) {
            IOException iOException = new IOException(NPStringFog.decode(new byte[]{64, 13, 85, 72, 68, 92, 86, 23, 85, 84, 20, 92, 91, 7, 16, 95, 82, 25, 70, 23, 66, 85, 85, 84, 21, 12, 94, 16}, "5c0049", -9.398162E8f) + this.streamAllocation);
            iOException.initCause(e);
            throw iOException;
        }
    }

    public void writeRequest(Headers headers, String str) throws IOException {
        if (this.state != 0) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{74, 22, 82, 69, 82, 91, 25}, "9b317a", 1.38765819E8d) + this.state);
        }
        this.sink.writeUtf8(str).writeUtf8("\r\n");
        int size = headers.size();
        for (int i = 0; i < size; i++) {
            this.sink.writeUtf8(headers.name(i)).writeUtf8(NPStringFog.decode(new byte[]{8, 19}, "238b06", -1.159499029E9d)).writeUtf8(headers.value(i)).writeUtf8("\r\n");
        }
        this.sink.writeUtf8("\r\n");
        this.state = 1;
    }

    @Override // okhttp3.internal.http.HttpCodec
    public void writeRequestHeaders(Request request) throws IOException {
        writeRequest(request.headers(), RequestLine.get(request, this.streamAllocation.connection().route().proxy().type()));
    }
}
