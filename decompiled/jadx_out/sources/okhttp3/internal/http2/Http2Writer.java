package okhttp3.internal.http2;

import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import n.NPStringFog;
import okhttp3.internal.Util;
import okhttp3.internal.http2.Hpack;
import okio.Buffer;
import okio.BufferedSink;

/* JADX INFO: loaded from: classes62.dex */
final class Http2Writer implements Closeable {
    private static final Logger logger = Logger.getLogger(Http2.class.getName());
    private final boolean client;
    private boolean closed;
    private final Buffer hpackBuffer = new Buffer();
    final Hpack.Writer hpackWriter = new Hpack.Writer(this.hpackBuffer);
    private int maxFrameSize = 16384;
    private final BufferedSink sink;

    Http2Writer(BufferedSink bufferedSink, boolean z) {
        this.sink = bufferedSink;
        this.client = z;
    }

    private void writeContinuationFrames(int i, long j) throws IOException {
        while (j > 0) {
            int iMin = (int) Math.min(this.maxFrameSize, j);
            j -= (long) iMin;
            frameHeader(i, iMin, (byte) 9, j == 0 ? (byte) 4 : (byte) 0);
            this.sink.write(this.hpackBuffer, iMin);
        }
    }

    private static void writeMedium(BufferedSink bufferedSink, int i) throws IOException {
        bufferedSink.writeByte((i >>> 16) & 255);
        bufferedSink.writeByte((i >>> 8) & 255);
        bufferedSink.writeByte(i & 255);
    }

    public void applyAndAckSettings(Settings settings) throws IOException {
        synchronized (this) {
            if (this.closed) {
                throw new IOException(NPStringFog.decode(new byte[]{91, 94, 90, 65, 87, 81}, "825225", false));
            }
            this.maxFrameSize = settings.getMaxFrameSize(this.maxFrameSize);
            if (settings.getHeaderTableSize() != -1) {
                this.hpackWriter.setHeaderTableSizeSetting(settings.getHeaderTableSize());
            }
            frameHeader(0, 0, (byte) 4, (byte) 1);
            this.sink.flush();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        synchronized (this) {
            this.closed = true;
            this.sink.close();
        }
    }

    public void connectionPreface() throws IOException {
        synchronized (this) {
            if (this.closed) {
                throw new IOException(NPStringFog.decode(new byte[]{86, 15, 89, 23, 3, 86}, "5c6df2", -1.8115205E9f));
            }
            if (this.client) {
                if (logger.isLoggable(Level.FINE)) {
                    logger.fine(Util.format(NPStringFog.decode(new byte[]{15, 91, 18, 119, 124, 124, 127, 32, 113, 96, 122, 125, 127, 69, 23, 71}, "1e2432", 787), Http2.CONNECTION_PREFACE.hex()));
                }
                this.sink.write(Http2.CONNECTION_PREFACE.toByteArray());
                this.sink.flush();
            }
        }
    }

    public void data(boolean z, int i, Buffer buffer, int i2) throws IOException {
        synchronized (this) {
            if (this.closed) {
                throw new IOException(NPStringFog.decode(new byte[]{91, 89, 14, 74, 80, 86}, "85a952", true, true));
            }
            dataFrame(i, z ? (byte) 1 : (byte) 0, buffer, i2);
        }
    }

    void dataFrame(int i, byte b, Buffer buffer, int i2) throws IOException {
        frameHeader(i, i2, (byte) 0, b);
        if (i2 > 0) {
            this.sink.write(buffer, i2);
        }
    }

    public void flush() throws IOException {
        synchronized (this) {
            if (this.closed) {
                throw new IOException(NPStringFog.decode(new byte[]{90, 89, 89, 75, 93, 82}, "956886", -1132231706L));
            }
            this.sink.flush();
        }
    }

    public void frameHeader(int i, int i2, byte b, byte b2) throws IOException {
        if (logger.isLoggable(Level.FINE)) {
            logger.fine(Http2.frameLog(false, i, i2, b, b2));
        }
        if (i2 > this.maxFrameSize) {
            throw Http2.illegalArgument(NPStringFog.decode(new byte[]{126, 106, 116, 47, 113, 105, 107, 113, 111, 39, 107, 115, 106, 106, 122, 48, 20, 90, 93, 86, 82, 22, 92, 22, 6, 24, 16, 6, 14, 22, 29, 92}, "885b46", -2.3274904E8f), Integer.valueOf(this.maxFrameSize), Integer.valueOf(i2));
        }
        if ((Integer.MIN_VALUE & i) != 0) {
            throw Http2.illegalArgument(NPStringFog.decode(new byte[]{19, 81, 16, 87, 23, 65, 4, 80, 67, 80, 12, 67, 65, 71, 6, 70, 95, 23, 68, 71}, "a4c2e7", -24747), Integer.valueOf(i));
        }
        writeMedium(this.sink, i2);
        this.sink.writeByte(b & 255);
        this.sink.writeByte(b2 & 255);
        this.sink.writeInt(Integer.MAX_VALUE & i);
    }

    public void goAway(int i, ErrorCode errorCode, byte[] bArr) throws IOException {
        synchronized (this) {
            if (this.closed) {
                throw new IOException(NPStringFog.decode(new byte[]{90, 90, 94, 23, 7, 2}, "961dbf", true));
            }
            if (errorCode.httpCode == -1) {
                throw Http2.illegalArgument(NPStringFog.decode(new byte[]{93, 74, 74, 93, 20, 123, 87, 92, 93, 28, 14, 76, 76, 72, 123, 93, 2, 93, 24, 5, 5, 18, 75, 9}, "8882f8", false), new Object[0]);
            }
            frameHeader(0, bArr.length + 8, (byte) 7, (byte) 0);
            this.sink.writeInt(i);
            this.sink.writeInt(errorCode.httpCode);
            if (bArr.length > 0) {
                this.sink.write(bArr);
            }
            this.sink.flush();
        }
    }

    public void headers(int i, List<Header> list) throws IOException {
        synchronized (this) {
            if (this.closed) {
                throw new IOException(NPStringFog.decode(new byte[]{5, 15, 86, 71, 93, 84}, "fc9480", true, true));
            }
            headers(false, i, list);
        }
    }

    void headers(boolean z, int i, List<Header> list) throws IOException {
        if (this.closed) {
            throw new IOException(NPStringFog.decode(new byte[]{7, 85, 95, 23, 7, 81}, "d90db5", -1.1463028E9f));
        }
        this.hpackWriter.writeHeaders(list);
        long size = this.hpackBuffer.size();
        int iMin = (int) Math.min(this.maxFrameSize, size);
        byte b = size == ((long) iMin) ? (byte) 4 : (byte) 0;
        if (z) {
            b = (byte) (b | 1);
        }
        frameHeader(i, iMin, (byte) 1, b);
        this.sink.write(this.hpackBuffer, iMin);
        if (size > iMin) {
            writeContinuationFrames(i, size - ((long) iMin));
        }
    }

    public int maxDataLength() {
        return this.maxFrameSize;
    }

    public void ping(boolean z, int i, int i2) throws IOException {
        synchronized (this) {
            if (this.closed) {
                throw new IOException(NPStringFog.decode(new byte[]{80, 13, 86, 71, 0, 6}, "3a94eb", false, false));
            }
            frameHeader(0, 8, (byte) 6, z ? (byte) 1 : (byte) 0);
            this.sink.writeInt(i);
            this.sink.writeInt(i2);
            this.sink.flush();
        }
    }

    public void pushPromise(int i, int i2, List<Header> list) throws IOException {
        synchronized (this) {
            if (this.closed) {
                throw new IOException(NPStringFog.decode(new byte[]{90, 95, 90, 22, 84, 92}, "935e18", 2133335381L));
            }
            this.hpackWriter.writeHeaders(list);
            long size = this.hpackBuffer.size();
            int iMin = (int) Math.min(this.maxFrameSize - 4, size);
            frameHeader(i, iMin + 4, (byte) 5, size == ((long) iMin) ? (byte) 4 : (byte) 0);
            this.sink.writeInt(Integer.MAX_VALUE & i2);
            this.sink.write(this.hpackBuffer, iMin);
            if (size > iMin) {
                writeContinuationFrames(i, size - ((long) iMin));
            }
        }
    }

    public void rstStream(int i, ErrorCode errorCode) throws IOException {
        synchronized (this) {
            if (this.closed) {
                throw new IOException(NPStringFog.decode(new byte[]{6, 8, 11, 22, 7, 0}, "eddebd", 1.6808064E9f));
            }
            if (errorCode.httpCode == -1) {
                throw new IllegalArgumentException();
            }
            frameHeader(i, 4, (byte) 3, (byte) 0);
            this.sink.writeInt(errorCode.httpCode);
            this.sink.flush();
        }
    }

    public void settings(Settings settings) throws IOException {
        int i = 0;
        synchronized (this) {
            if (this.closed) {
                throw new IOException(NPStringFog.decode(new byte[]{86, 89, 89, 68, 0, 1}, "5567ee", -29281));
            }
            frameHeader(0, settings.size() * 6, (byte) 4, (byte) 0);
            while (i < 10) {
                if (settings.isSet(i)) {
                    this.sink.writeShort(i == 4 ? 3 : i == 7 ? 4 : i);
                    this.sink.writeInt(settings.get(i));
                }
                i++;
            }
            this.sink.flush();
        }
    }

    public void synReply(boolean z, int i, List<Header> list) throws IOException {
        synchronized (this) {
            if (this.closed) {
                throw new IOException(NPStringFog.decode(new byte[]{0, 94, 90, 71, 7, 85}, "c254b1", -1.718537423E9d));
            }
            headers(z, i, list);
        }
    }

    public void synStream(boolean z, int i, int i2, List<Header> list) throws IOException {
        synchronized (this) {
            if (this.closed) {
                throw new IOException(NPStringFog.decode(new byte[]{82, 88, 93, 75, 93, 87}, "142883", -29018));
            }
            headers(z, i, list);
        }
    }

    public void windowUpdate(int i, long j) throws IOException {
        synchronized (this) {
            if (this.closed) {
                throw new IOException(NPStringFog.decode(new byte[]{7, 94, 95, 23, 82, 92}, "d20d78", 1.352214812E9d));
            }
            if (j == 0 || j > 2147483647L) {
                throw Http2.illegalArgument(NPStringFog.decode(new byte[]{68, 81, 89, 84, 14, 65, 96, 81, 77, 85, 40, 88, 80, 74, 82, 93, 4, 88, 71, 24, 10, 13, 65, 6, 19, 68, 75, 16, 22, 95, 93, 92, 88, 71, 50, 95, 73, 93, 126, 94, 2, 68, 86, 85, 82, 94, 21, 22, 13, 24, 7, 72, 86, 80, 85, 94, 81, 86, 7, 80, 127, 2, 23, 21, 18}, "3870a6", 2.129177E9f), Long.valueOf(j));
            }
            frameHeader(i, 4, (byte) 8, (byte) 0);
            this.sink.writeInt((int) j);
            this.sink.flush();
        }
    }
}
