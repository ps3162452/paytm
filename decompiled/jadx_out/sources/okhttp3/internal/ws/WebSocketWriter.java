package okhttp3.internal.ws;

import java.io.IOException;
import java.util.Random;
import n.NPStringFog;
import okio.Buffer;
import okio.BufferedSink;
import okio.ByteString;
import okio.Sink;
import okio.Timeout;

/* JADX INFO: loaded from: classes62.dex */
final class WebSocketWriter {
    boolean activeWriter;
    final Buffer buffer = new Buffer();
    final FrameSink frameSink = new FrameSink(this);
    final boolean isClient;
    final byte[] maskBuffer;
    final byte[] maskKey;
    final Random random;
    final BufferedSink sink;
    boolean writerClosed;

    final class FrameSink implements Sink {
        boolean closed;
        long contentLength;
        int formatOpcode;
        boolean isFirstFrame;
        final WebSocketWriter this$0;

        FrameSink(WebSocketWriter webSocketWriter) {
            this.this$0 = webSocketWriter;
        }

        @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.closed) {
                throw new IOException(NPStringFog.decode(new byte[]{5, 92, 93, 23, 81, 1}, "f02d4e", -26500));
            }
            this.this$0.writeMessageFrame(this.formatOpcode, this.this$0.buffer.size(), this.isFirstFrame, true);
            this.closed = true;
            this.this$0.activeWriter = false;
        }

        @Override // okio.Sink, java.io.Flushable
        public void flush() throws IOException {
            if (this.closed) {
                throw new IOException(NPStringFog.decode(new byte[]{5, 10, 93, 69, 1, 80}, "ff26d4", -1.965705062E9d));
            }
            this.this$0.writeMessageFrame(this.formatOpcode, this.this$0.buffer.size(), this.isFirstFrame, false);
            this.isFirstFrame = false;
        }

        @Override // okio.Sink
        public Timeout timeout() {
            return this.this$0.sink.timeout();
        }

        @Override // okio.Sink
        public void write(Buffer buffer, long j) throws IOException {
            if (this.closed) {
                throw new IOException(NPStringFog.decode(new byte[]{85, 93, 93, 75, 92, 6}, "61289b", -7739));
            }
            this.this$0.buffer.write(buffer, j);
            boolean z = this.isFirstFrame && this.contentLength != -1 && this.this$0.buffer.size() > this.contentLength - 8192;
            long jCompleteSegmentByteCount = this.this$0.buffer.completeSegmentByteCount();
            if (jCompleteSegmentByteCount <= 0 || z) {
                return;
            }
            this.this$0.writeMessageFrame(this.formatOpcode, jCompleteSegmentByteCount, this.isFirstFrame, false);
            this.isFirstFrame = false;
        }
    }

    WebSocketWriter(boolean z, BufferedSink bufferedSink, Random random) {
        if (bufferedSink == null) {
            throw new NullPointerException(NPStringFog.decode(new byte[]{69, 11, 8, 94, 20, 14, 11, 66, 8, 64, 88, 95}, "6bf543", true, false));
        }
        if (random == null) {
            throw new NullPointerException(NPStringFog.decode(new byte[]{64, 7, 10, 85, 11, 93, 18, 91, 89, 17, 10, 69, 94, 10}, "2fd1d0", false, true));
        }
        this.isClient = z;
        this.sink = bufferedSink;
        this.random = random;
        this.maskKey = z ? new byte[4] : null;
        this.maskBuffer = z ? new byte[8192] : null;
    }

    private void writeControlFrame(int i, ByteString byteString) throws IOException {
        if (this.writerClosed) {
            throw new IOException(NPStringFog.decode(new byte[]{91, 92, 14, 65, 1, 84}, "80a2d0", -1.1325019E9f));
        }
        int size = byteString.size();
        if (size > 125) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{103, 84, 31, 90, 11, 7, 83, 21, 21, 95, 30, 3, 23, 88, 19, 69, 16, 70, 85, 80, 70, 90, 1, 21, 68, 21, 18, 94, 5, 8, 23, 90, 20, 22, 1, 23, 66, 84, 10, 22, 16, 9, 23, 4, 84, 3}, "75f6df", 619288433L));
        }
        this.sink.writeByte(i | 128);
        if (this.isClient) {
            this.sink.writeByte(size | 128);
            this.random.nextBytes(this.maskKey);
            this.sink.write(this.maskKey);
            byte[] byteArray = byteString.toByteArray();
            WebSocketProtocol.toggleMask(byteArray, byteArray.length, this.maskKey, 0L);
            this.sink.write(byteArray);
        } else {
            this.sink.writeByte(size);
            this.sink.write(byteString);
        }
        this.sink.flush();
    }

    Sink newMessageSink(int i, long j) {
        if (this.activeWriter) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{116, 86, 89, 23, 89, 82, 71, 24, 91, 6, 66, 68, 84, 95, 83, 67, 70, 69, 92, 76, 83, 17, 17, 94, 70, 24, 87, 0, 69, 94, 67, 93, 24, 67, 117, 94, 81, 24, 79, 12, 68, 23, 86, 89, 90, 15, 17, 84, 89, 87, 69, 6, 25, 30, 10}, "586c17", 1.913319452E9d));
        }
        this.activeWriter = true;
        this.frameSink.formatOpcode = i;
        this.frameSink.contentLength = j;
        this.frameSink.isFirstFrame = true;
        this.frameSink.closed = false;
        return this.frameSink;
    }

    void writeClose(int i, ByteString byteString) throws IOException {
        ByteString byteString2 = ByteString.EMPTY;
        if (i != 0 || byteString != null) {
            if (i != 0) {
                WebSocketProtocol.validateCloseCode(i);
            }
            Buffer buffer = new Buffer();
            buffer.writeShort(i);
            if (byteString != null) {
                buffer.write(byteString);
            }
            byteString2 = buffer.readByteString();
        }
        try {
            writeControlFrame(8, byteString2);
        } finally {
            this.writerClosed = true;
        }
    }

    void writeMessageFrame(int i, long j, boolean z, boolean z2) throws IOException {
        if (this.writerClosed) {
            throw new IOException(NPStringFog.decode(new byte[]{2, 84, 93, 16, 3, 5}, "a82cfa", -1.8990755E9f));
        }
        int i2 = z ? i : 0;
        if (z2) {
            i2 |= 128;
        }
        this.sink.writeByte(i2);
        int i3 = this.isClient ? 128 : 0;
        if (j <= 125) {
            this.sink.writeByte(i3 | ((int) j));
        } else if (j <= 65535) {
            this.sink.writeByte(i3 | 126);
            this.sink.writeShort((int) j);
        } else {
            this.sink.writeByte(i3 | 127);
            this.sink.writeLong(j);
        }
        if (this.isClient) {
            this.random.nextBytes(this.maskKey);
            this.sink.write(this.maskKey);
            long j2 = 0;
            while (j2 < j) {
                int i4 = this.buffer.read(this.maskBuffer, 0, (int) Math.min(j, this.maskBuffer.length));
                if (i4 == -1) {
                    throw new AssertionError();
                }
                WebSocketProtocol.toggleMask(this.maskBuffer, i4, this.maskKey, j2);
                this.sink.write(this.maskBuffer, 0, i4);
                j2 += (long) i4;
            }
        } else {
            this.sink.write(this.buffer, j);
        }
        this.sink.emit();
    }

    void writePing(ByteString byteString) throws IOException {
        writeControlFrame(9, byteString);
    }

    void writePong(ByteString byteString) throws IOException {
        writeControlFrame(10, byteString);
    }
}
