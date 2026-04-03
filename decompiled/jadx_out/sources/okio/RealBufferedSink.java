package okio;

import java.io.EOFException;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import n.NPStringFog;

/* JADX INFO: loaded from: classes63.dex */
final class RealBufferedSink implements BufferedSink {
    public final Buffer buffer = new Buffer();
    boolean closed;
    public final Sink sink;

    RealBufferedSink(Sink sink) {
        if (sink == null) {
            throw new NullPointerException(NPStringFog.decode(new byte[]{70, 11, 87, 93, 18, 91, 8, 66, 87, 67, 94, 10}, "5b962f", false, false));
        }
        this.sink = sink;
    }

    @Override // okio.BufferedSink
    public Buffer buffer() {
        return this.buffer;
    }

    @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws Throwable {
        if (this.closed) {
            return;
        }
        Throwable th = null;
        try {
            if (this.buffer.size > 0) {
                this.sink.write(this.buffer, this.buffer.size);
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            this.sink.close();
        } catch (Throwable th3) {
            if (th == null) {
                th = th3;
            }
        }
        this.closed = true;
        if (th != null) {
            Util.sneakyRethrow(th);
        }
    }

    @Override // okio.BufferedSink
    public BufferedSink emit() throws IOException {
        if (this.closed) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{90, 15, 12, 18, 6, 2}, "9ccacf", -8613));
        }
        long size = this.buffer.size();
        if (size > 0) {
            this.sink.write(this.buffer, size);
        }
        return this;
    }

    @Override // okio.BufferedSink
    public BufferedSink emitCompleteSegments() throws IOException {
        if (this.closed) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{2, 14, 10, 16, 87, 80}, "abec24", 88875005L));
        }
        long jCompleteSegmentByteCount = this.buffer.completeSegmentByteCount();
        if (jCompleteSegmentByteCount > 0) {
            this.sink.write(this.buffer, jCompleteSegmentByteCount);
        }
        return this;
    }

    @Override // okio.BufferedSink, okio.Sink, java.io.Flushable
    public void flush() throws IOException {
        if (this.closed) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{5, 93, 91, 18, 85, 92}, "f14a08", -1.945219238E9d));
        }
        if (this.buffer.size > 0) {
            this.sink.write(this.buffer, this.buffer.size);
        }
        this.sink.flush();
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.closed;
    }

    @Override // okio.BufferedSink
    public OutputStream outputStream() {
        return new OutputStream(this) { // from class: okio.RealBufferedSink.1
            final RealBufferedSink this$0;

            {
                this.this$0 = this;
            }

            @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws Throwable {
                this.this$0.close();
            }

            @Override // java.io.OutputStream, java.io.Flushable
            public void flush() throws IOException {
                if (this.this$0.closed) {
                    return;
                }
                this.this$0.flush();
            }

            public String toString() {
                return this.this$0 + NPStringFog.decode(new byte[]{24, 90, 76, 18, 17, 65, 66, 102, 77, 20, 4, 85, 91, 29, 16}, "659fa4", -21719);
            }

            @Override // java.io.OutputStream
            public void write(int i) throws IOException {
                if (this.this$0.closed) {
                    throw new IOException(NPStringFog.decode(new byte[]{5, 10, 95, 22, 7, 83}, "ff0eb7", -4.31353135E8d));
                }
                this.this$0.buffer.writeByte((int) ((byte) i));
                this.this$0.emitCompleteSegments();
            }

            @Override // java.io.OutputStream
            public void write(byte[] bArr, int i, int i2) throws IOException {
                if (this.this$0.closed) {
                    throw new IOException(NPStringFog.decode(new byte[]{0, 8, 92, 68, 81, 81}, "cd3745", false, false));
                }
                this.this$0.buffer.write(bArr, i, i2);
                this.this$0.emitCompleteSegments();
            }
        };
    }

    @Override // okio.Sink
    public Timeout timeout() {
        return this.sink.timeout();
    }

    public String toString() {
        return NPStringFog.decode(new byte[]{80, 67, 82, 87, 92, 69, 26}, "264197", -5.12017309E8d) + this.sink + NPStringFog.decode(new byte[]{25}, "0a07d6", -1.1721358E9f);
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) throws IOException {
        if (this.closed) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{84, 91, 12, 22, 85, 82}, "77ce06", 2.018336398E9d));
        }
        int iWrite = this.buffer.write(byteBuffer);
        emitCompleteSegments();
        return iWrite;
    }

    @Override // okio.BufferedSink
    public BufferedSink write(ByteString byteString) throws IOException {
        if (this.closed) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{82, 13, 94, 23, 80, 86}, "1a1d52", 32209));
        }
        this.buffer.write(byteString);
        return emitCompleteSegments();
    }

    @Override // okio.BufferedSink
    public BufferedSink write(Source source, long j) throws IOException {
        while (j > 0) {
            long j2 = source.read(this.buffer, j);
            if (j2 == -1) {
                throw new EOFException();
            }
            j -= j2;
            emitCompleteSegments();
        }
        return this;
    }

    @Override // okio.BufferedSink
    public BufferedSink write(byte[] bArr) throws IOException {
        if (this.closed) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{6, 89, 9, 67, 86, 1}, "e5f03e", 4.79363662E8d));
        }
        this.buffer.write(bArr);
        return emitCompleteSegments();
    }

    @Override // okio.BufferedSink
    public BufferedSink write(byte[] bArr, int i, int i2) throws IOException {
        if (this.closed) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{83, 92, 10, 71, 86, 7}, "00e43c", false));
        }
        this.buffer.write(bArr, i, i2);
        return emitCompleteSegments();
    }

    @Override // okio.Sink
    public void write(Buffer buffer, long j) throws IOException {
        if (this.closed) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{6, 14, 11, 17, 0, 6}, "ebdbeb", 25830));
        }
        this.buffer.write(buffer, j);
        emitCompleteSegments();
    }

    @Override // okio.BufferedSink
    public long writeAll(Source source) throws IOException {
        if (source == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{23, 87, 71, 65, 81, 7, 68, 5, 15, 19, 92, 23, 8, 84}, "d8232b", true));
        }
        long j = 0;
        while (true) {
            long j2 = source.read(this.buffer, 8192L);
            if (j2 == -1) {
                return j;
            }
            j += j2;
            emitCompleteSegments();
        }
    }

    @Override // okio.BufferedSink
    public BufferedSink writeByte(int i) throws IOException {
        if (this.closed) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{1, 10, 11, 64, 1, 82}, "bfd3d6", 1.6591479E9f));
        }
        this.buffer.writeByte(i);
        return emitCompleteSegments();
    }

    @Override // okio.BufferedSink
    public BufferedSink writeDecimalLong(long j) throws IOException {
        if (this.closed) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{81, 92, 88, 71, 83, 80}, "207464", true, false));
        }
        this.buffer.writeDecimalLong(j);
        return emitCompleteSegments();
    }

    @Override // okio.BufferedSink
    public BufferedSink writeHexadecimalUnsignedLong(long j) throws IOException {
        if (this.closed) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{83, 15, 86, 74, 84, 82}, "0c9916", 520121412L));
        }
        this.buffer.writeHexadecimalUnsignedLong(j);
        return emitCompleteSegments();
    }

    @Override // okio.BufferedSink
    public BufferedSink writeInt(int i) throws IOException {
        if (this.closed) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{1, 85, 13, 64, 92, 1}, "b9b39e", 16693));
        }
        this.buffer.writeInt(i);
        return emitCompleteSegments();
    }

    @Override // okio.BufferedSink
    public BufferedSink writeIntLe(int i) throws IOException {
        if (this.closed) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{0, 91, 11, 64, 82, 84}, "c7d370", 20717));
        }
        this.buffer.writeIntLe(i);
        return emitCompleteSegments();
    }

    @Override // okio.BufferedSink
    public BufferedSink writeLong(long j) throws IOException {
        if (this.closed) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{90, 13, 89, 17, 93, 6}, "9a6b8b", 1.586921454E9d));
        }
        this.buffer.writeLong(j);
        return emitCompleteSegments();
    }

    @Override // okio.BufferedSink
    public BufferedSink writeLongLe(long j) throws IOException {
        if (this.closed) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{82, 85, 95, 21, 82, 82}, "190f76", 4128));
        }
        this.buffer.writeLongLe(j);
        return emitCompleteSegments();
    }

    @Override // okio.BufferedSink
    public BufferedSink writeShort(int i) throws IOException {
        if (this.closed) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{87, 8, 87, 67, 3, 82}, "4d80f6", -1.183680172E9d));
        }
        this.buffer.writeShort(i);
        return emitCompleteSegments();
    }

    @Override // okio.BufferedSink
    public BufferedSink writeShortLe(int i) throws IOException {
        if (this.closed) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{6, 85, 10, 23, 82, 2}, "e9ed7f", 615729067L));
        }
        this.buffer.writeShortLe(i);
        return emitCompleteSegments();
    }

    @Override // okio.BufferedSink
    public BufferedSink writeString(String str, int i, int i2, Charset charset) throws IOException {
        if (this.closed) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{1, 88, 14, 71, 86, 83}, "b4a437", true));
        }
        this.buffer.writeString(str, i, i2, charset);
        return emitCompleteSegments();
    }

    @Override // okio.BufferedSink
    public BufferedSink writeString(String str, Charset charset) throws IOException {
        if (this.closed) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{5, 9, 12, 21, 3, 86}, "fecff2", -3.95837112E8d));
        }
        this.buffer.writeString(str, charset);
        return emitCompleteSegments();
    }

    @Override // okio.BufferedSink
    public BufferedSink writeUtf8(String str) throws IOException {
        if (this.closed) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{7, 84, 86, 74, 0, 5}, "d899ea", 1.5743133E9f));
        }
        this.buffer.writeUtf8(str);
        return emitCompleteSegments();
    }

    @Override // okio.BufferedSink
    public BufferedSink writeUtf8(String str, int i, int i2) throws IOException {
        if (this.closed) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{87, 93, 13, 64, 84, 1}, "41b31e", -20938));
        }
        this.buffer.writeUtf8(str, i, i2);
        return emitCompleteSegments();
    }

    @Override // okio.BufferedSink
    public BufferedSink writeUtf8CodePoint(int i) throws IOException {
        if (this.closed) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{7, 8, 89, 65, 87, 92}, "dd6228", true));
        }
        this.buffer.writeUtf8CodePoint(i);
        return emitCompleteSegments();
    }
}
