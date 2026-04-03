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
import okio.BufferedSource;
import okio.ByteString;
import okio.Source;
import okio.Timeout;

/* JADX INFO: loaded from: classes62.dex */
final class Http2Reader implements Closeable {
    static final Logger logger = Logger.getLogger(Http2.class.getName());
    private final boolean client;
    private final ContinuationSource continuation;
    final Hpack.Reader hpackReader;
    private final BufferedSource source;

    static final class ContinuationSource implements Source {
        byte flags;
        int left;
        int length;
        short padding;
        private final BufferedSource source;
        int streamId;

        ContinuationSource(BufferedSource bufferedSource) {
            this.source = bufferedSource;
        }

        private void readContinuationHeader() throws IOException {
            int i = this.streamId;
            int medium = Http2Reader.readMedium(this.source);
            this.left = medium;
            this.length = medium;
            byte b = (byte) (this.source.readByte() & 255);
            this.flags = (byte) (this.source.readByte() & 255);
            if (Http2Reader.logger.isLoggable(Level.FINE)) {
                Http2Reader.logger.fine(Http2.frameLog(true, this.streamId, this.length, b, this.flags));
            }
            this.streamId = this.source.readInt() & Integer.MAX_VALUE;
            if (b != 9) {
                throw Http2.ioException(NPStringFog.decode(new byte[]{68, 21, 68, 64, 13, 17, 53, 63, 52, 36, 111, 114, 46, 40, 48, 40, 126, 100, 32, 50, 45, 46, 126}, "afda01", 5.10494723E8d), Byte.valueOf(b));
            }
            if (this.streamId != i) {
                throw Http2.ioException(NPStringFog.decode(new byte[]{101, 108, 52, 32, 61, 117, 126, 123, 48, 44, 44, 99, 112, 97, 45, 42, 44, 22, 66, 65, 22, 0, 3, 91, 120, 81, 68, 6, 10, 87, 95, 82, 1, 1}, "15deb6", -7.261738E8f), new Object[0]);
            }
        }

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
        }

        @Override // okio.Source
        public long read(Buffer buffer, long j) throws IOException {
            while (this.left == 0) {
                this.source.skip(this.padding);
                this.padding = (short) 0;
                if ((this.flags & 4) != 0) {
                    return -1L;
                }
                readContinuationHeader();
            }
            long j2 = this.source.read(buffer, Math.min(j, this.left));
            if (j2 == -1) {
                return -1L;
            }
            this.left = (int) (((long) this.left) - j2);
            return j2;
        }

        @Override // okio.Source
        public Timeout timeout() {
            return this.source.timeout();
        }
    }

    interface Handler {
        void ackSettings();

        void alternateService(int i, String str, ByteString byteString, String str2, int i2, long j);

        void data(boolean z, int i, BufferedSource bufferedSource, int i2) throws IOException;

        void goAway(int i, ErrorCode errorCode, ByteString byteString);

        void headers(boolean z, int i, int i2, List<Header> list);

        void ping(boolean z, int i, int i2);

        void priority(int i, int i2, int i3, boolean z);

        void pushPromise(int i, int i2, List<Header> list) throws IOException;

        void rstStream(int i, ErrorCode errorCode);

        void settings(boolean z, Settings settings);

        void windowUpdate(int i, long j);
    }

    Http2Reader(BufferedSource bufferedSource, boolean z) {
        this.source = bufferedSource;
        this.client = z;
        this.continuation = new ContinuationSource(this.source);
        this.hpackReader = new Hpack.Reader(4096, this.continuation);
    }

    static int lengthWithoutPadding(int i, byte b, short s) throws IOException {
        if ((b & 8) != 0) {
            i--;
        }
        if (s > i) {
            throw Http2.ioException(NPStringFog.decode(new byte[]{49, 54, 120, 109, 124, 123, 46, 40, 104, 124, 97, 106, 46, 54, 23, 73, 82, 92, 5, 13, 89, 94, 19, 29, 18, 68, 9, 25, 65, 93, 12, 5, 94, 87, 90, 86, 6, 68, 91, 92, 93, 95, 21, 12, 23, 28, 64}, "ad7938", -2.054475193E9d), Short.valueOf(s), Integer.valueOf(i));
        }
        return (short) (i - s);
    }

    private void readData(Handler handler, int i, byte b, int i2) throws IOException {
        if (i2 == 0) {
            throw Http2.ioException(NPStringFog.decode(new byte[]{50, 52, 126, 48, 124, 114, 45, 42, 110, 33, 97, 99, 45, 52, 11, 68, 103, 104, 50, 35, 110, 32, 114, 101, 35, 70, 66, 16, 65, 84, 3, 11, 120, 0, 19, 12, 95, 70, 1}, "bf1d31", true), new Object[0]);
        }
        boolean z = (b & 1) != 0;
        if ((b & 32) != 0) {
            throw Http2.ioException(NPStringFog.decode(new byte[]{98, 107, 121, 109, 42, 114, 125, 117, 105, 124, 55, 99, 125, 107, 12, 25, 35, 125, 115, 126, 105, 122, 42, 124, 98, 107, 115, 106, 54, 116, 118, 25, 65, 80, 17, 89, 93, 76, 66, 25, 54, 116, 102, 109, 127, 119, 34, 98, 109, 122, 121, 116, 53, 99, 119, 106, 101, 102, 33, 112, 102, 120}, "2969e1", -1.763209E9f), new Object[0]);
        }
        short s = (b & 8) != 0 ? (short) (this.source.readByte() & 255) : (short) 0;
        handler.data(z, i2, this.source, lengthWithoutPadding(i, b, s));
        this.source.skip(s);
    }

    private void readGoAway(Handler handler, int i, byte b, int i2) throws IOException {
        if (i < 8) {
            throw Http2.ioException(NPStringFog.decode(new byte[]{100, 105, 105, 32, 57, 117, 127, 113, 110, 36, 63, 18, 92, 85, 87, 2, 18, 90, 16, 12, 25, 93, 92, 18, 21, 67}, "009ef2", 26827), Integer.valueOf(i));
        }
        if (i2 != 0) {
            throw Http2.ioException(NPStringFog.decode(new byte[]{50, 109, 53, 113, 61, 37, 41, 117, 50, 117, 59, 66, 21, 64, 23, 81, 3, 15, 47, 80, 69, 21, 95, 66, 86}, "f4e4bb", -1.18939958E9d), new Object[0]);
        }
        int i3 = this.source.readInt();
        int i4 = this.source.readInt();
        int i5 = i - 8;
        ErrorCode errorCodeFromHttp2 = ErrorCode.fromHttp2(i4);
        if (errorCodeFromHttp2 == null) {
            throw Http2.ioException(NPStringFog.decode(new byte[]{101, 56, 53, 38, 111, 35, 126, 32, 50, 34, 105, 68, 68, 15, 0, 27, 64, 1, 82, 21, 0, 7, 16, 1, 67, 19, 10, 17, 16, 7, 94, 5, 0, 89, 16, 65, 85}, "1aec0d", -12401), Integer.valueOf(i4));
        }
        ByteString byteString = ByteString.EMPTY;
        if (i5 > 0) {
            byteString = this.source.readByteString(i5);
        }
        handler.goAway(i3, errorCodeFromHttp2, byteString);
    }

    private List<Header> readHeaderBlock(int i, short s, byte b, int i2) throws IOException {
        ContinuationSource continuationSource = this.continuation;
        this.continuation.left = i;
        continuationSource.length = i;
        this.continuation.padding = s;
        this.continuation.flags = b;
        this.continuation.streamId = i2;
        this.hpackReader.readHeaders();
        return this.hpackReader.getAndResetHeaderList();
    }

    private void readHeaders(Handler handler, int i, byte b, int i2) throws IOException {
        if (i2 == 0) {
            throw Http2.ioException(NPStringFog.decode(new byte[]{99, 100, 123, 109, 45, 116, 124, 122, 107, 124, 48, 101, 124, 100, 14, 25, 54, 110, 99, 115, 107, 113, 39, 118, 119, 115, 102, 106, 66, 68, 71, 68, 81, 88, 15, 126, 87, 22, 9, 4, 66, 7}, "3649b7", false), new Object[0]);
        }
        boolean z = (b & 1) != 0;
        short s = (b & 8) != 0 ? (short) (this.source.readByte() & 255) : (short) 0;
        if ((b & 32) != 0) {
            readPriority(handler, i2);
            i -= 5;
        }
        handler.headers(z, i2, -1, readHeaderBlock(lengthWithoutPadding(i, b, s), s, b, i2));
    }

    static int readMedium(BufferedSource bufferedSource) throws IOException {
        return ((bufferedSource.readByte() & 255) << 16) | ((bufferedSource.readByte() & 255) << 8) | (bufferedSource.readByte() & 255);
    }

    private void readPing(Handler handler, int i, byte b, int i2) throws IOException {
        if (i != 8) {
            throw Http2.ioException(NPStringFog.decode(new byte[]{98, 108, 97, 119, 61, 101, 127, 123, 118, 18, 14, 80, 88, 82, 69, 90, 66, 20, 11, 21, 9, 8, 66, 16, 69}, "6512b5", -1.204246314E9d), Integer.valueOf(i));
        }
        if (i2 != 0) {
            throw Http2.ioException(NPStringFog.decode(new byte[]{54, 61, 100, 124, 109, 51, 43, 42, 115, 25, 65, 23, 16, 1, 85, 84, 123, 7, 66, 69, 9, 25, 2}, "bd492c", 1.189210894E9d), new Object[0]);
        }
        handler.ping((b & 1) != 0, this.source.readInt(), this.source.readInt());
    }

    private void readPriority(Handler handler, int i) throws IOException {
        int i2 = this.source.readInt();
        handler.priority(i, i2 & Integer.MAX_VALUE, (this.source.readByte() & 255) + 1, (Integer.MIN_VALUE & i2) != 0);
    }

    private void readPriority(Handler handler, int i, byte b, int i2) throws IOException {
        if (i != 5) {
            throw Http2.ioException(NPStringFog.decode(new byte[]{103, 109, 100, 116, 58, 102, 97, 125, 123, 99, 44, 98, 106, 20, 88, 84, 11, 81, 71, 92, 14, 17, 64, 82, 19, 21, 9, 17, 80}, "3441e6", false, false), Integer.valueOf(i));
        }
        if (i2 == 0) {
            throw Http2.ioException(NPStringFog.decode(new byte[]{102, 56, 101, 115, 110, 53, 96, 40, 122, 100, 120, 49, 107, 65, 70, 66, 67, 0, 83, 12, 124, 82, 17, 88, 15, 65, 5}, "2a561e", 1.579771868E9d), new Object[0]);
        }
        readPriority(handler, i2);
    }

    private void readPushPromise(Handler handler, int i, byte b, int i2) throws IOException {
        if (i2 == 0) {
            throw Http2.ioException(NPStringFog.decode(new byte[]{54, 97, 126, 103, 41, 117, 41, 127, 110, 118, 52, 100, 41, 97, 11, 19, 50, 111, 54, 118, 110, 99, 51, 101, 46, 108, 97, 97, 41, 123, 47, 96, 116, 19, 21, 66, 20, 86, 80, 94, 47, 82, 70, 14, 12, 19, 86}, "f313f6", 9.96694887E8d), new Object[0]);
        }
        short s = (b & 8) != 0 ? (short) (this.source.readByte() & 255) : (short) 0;
        handler.pushPromise(i2, this.source.readInt() & Integer.MAX_VALUE, readHeaderBlock(lengthWithoutPadding(i - 4, b, s), s, b, i2));
    }

    private void readRstStream(Handler handler, int i, byte b, int i2) throws IOException {
        if (i != 4) {
            throw Http2.ioException(NPStringFog.decode(new byte[]{98, 60, 101, 117, 57, 101, 101, 49, 106, 99, 50, 101, 115, 36, 120, 16, 10, 82, 88, 2, 65, 88, 92, 23, 19, 1, 21, 17, 91, 23, 2}, "6e50f7", true), Integer.valueOf(i));
        }
        if (i2 == 0) {
            throw Http2.ioException(NPStringFog.decode(new byte[]{50, 105, 97, 38, 57, 102, 53, 100, 110, 48, 50, 102, 35, 113, 124, 67, 21, 64, 20, 85, 80, 14, 47, 80, 70, 13, 12, 67, 86}, "f01cf4", 8.65108695E8d), new Object[0]);
        }
        int i3 = this.source.readInt();
        ErrorCode errorCodeFromHttp2 = ErrorCode.fromHttp2(i3);
        if (errorCodeFromHttp2 == null) {
            throw Http2.ioException(NPStringFog.decode(new byte[]{50, 108, 50, 115, 102, 55, 53, 97, 61, 101, 109, 55, 35, 116, 47, 22, 76, 11, 3, 77, 18, 83, 90, 17, 3, 81, 66, 83, 75, 23, 9, 71, 66, 85, 86, 1, 3, 15, 66, 19, 93}, "f5b69e", -12176), Integer.valueOf(i3));
        }
        handler.rstStream(i2, errorCodeFromHttp2);
    }

    private void readSettings(Handler handler, int i, byte b, int i2) throws IOException {
        if (i2 != 0) {
            throw Http2.ioException(NPStringFog.decode(new byte[]{55, 107, 105, 114, 107, 50, 38, 102, 109, 126, 122, 38, 48, 18, 74, 67, 70, 4, 2, 95, 112, 83, 20, 64, 94, 18, 9}, "c2974a", true), new Object[0]);
        }
        if ((b & 1) != 0) {
            if (i != 0) {
                throw Http2.ioException(NPStringFog.decode(new byte[]{118, 103, 32, 40, 33, 59, 99, 124, 59, 32, 59, 33, 98, 103, 46, 55, 68, 5, 83, 94, 65, 3, 22, 5, 93, 80, 65, 22, 12, 11, 69, 89, 5, 69, 6, 1, 16, 80, 12, 21, 16, 29, 17}, "05aedd", 22427), new Object[0]);
            }
            handler.ackSettings();
            return;
        }
        if (i % 6 != 0) {
            throw Http2.ioException(NPStringFog.decode(new byte[]{53, 61, 96, 33, 110, 96, 36, 48, 100, 45, 127, 116, 50, 68, 92, 1, 95, 84, 21, 12, 16, 65, 20, 19, 87, 68, 17, 89, 17, 3, 91, 68, 21, 23}, "ad0d13", true), Integer.valueOf(i));
        }
        Settings settings = new Settings();
        for (int i3 = 0; i3 < i; i3 += 6) {
            short s = this.source.readShort();
            int i4 = this.source.readInt();
            switch (s) {
                case 2:
                    if (i4 != 0 && i4 != 1) {
                        throw Http2.ioException(NPStringFog.decode(new byte[]{97, 101, 125, 102, 41, 113, 126, 123, 109, 119, 52, 96, 126, 101, 18, 97, 35, 102, 101, 126, 124, 117, 53, 109, 116, 121, 115, 112, 42, 119, 110, 103, 103, 97, 46, 18, 16, 10, 18, 2, 70, 93, 67, 23, 3}, "1722f2", true, false), new Object[0]);
                    }
                    break;
                    break;
                case 3:
                    s = 4;
                    break;
                case 4:
                    s = 7;
                    if (i4 < 0) {
                        throw Http2.ioException(NPStringFog.decode(new byte[]{96, 98, 121, 96, 119, 119, 127, 124, 105, 113, 106, 102, 127, 98, 22, 103, 125, 96, 100, 121, 120, 115, 107, 107, 121, 126, 127, 96, 113, 117, 124, 111, 97, 125, 118, 112, 127, 103, 105, 103, 113, 110, 117, 16, 8, 20, 10, 106, 3, 1, 22, 25, 24, 5}, "006484", 1729403140L), new Object[0]);
                    }
                    break;
                    break;
                case 5:
                    if (i4 < 16384 || i4 > 16777215) {
                        throw Http2.ioException(NPStringFog.decode(new byte[]{98, 106, 44, 108, 126, 37, 125, 116, 60, 125, 99, 52, 125, 106, 67, 107, 116, 50, 102, 113, 45, 127, 98, 57, 127, 121, 59, 103, 119, 52, 115, 117, 38, 103, 98, 47, 104, 125, 89, 24, 20, 21}, "28c81f", -937444333L), Integer.valueOf(i4));
                    }
                    break;
                    break;
            }
            settings.set(s, i4);
        }
        handler.settings(false, settings);
    }

    private void readWindowUpdate(Handler handler, int i, byte b, int i2) throws IOException {
        if (i != 4) {
            throw Http2.ioException(NPStringFog.decode(new byte[]{50, 58, 53, 117, 108, 99, 47, 45, 33, 127, 100, 107, 51, 51, 33, 113, 103, 113, 70, 15, 0, 94, 84, 64, 14, 67, 68, 13, 7, 14, 70, 70, 22}, "fce034", false, true), Integer.valueOf(i));
        }
        long j = ((long) this.source.readInt()) & 2147483647L;
        if (j == 0) {
            throw Http2.ioException(NPStringFog.decode(new byte[]{68, 93, 86, 82, 95, 65, 96, 93, 66, 83, 121, 88, 80, 70, 93, 91, 85, 88, 71, 20, 79, 87, 67, 22, 3}, "348606", true), Long.valueOf(j));
        }
        handler.windowUpdate(i2, j);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.source.close();
    }

    public boolean nextFrame(boolean z, Handler handler) throws IOException {
        try {
            this.source.require(9L);
            int medium = readMedium(this.source);
            if (medium < 0 || medium > 16384) {
                throw Http2.ioException(NPStringFog.decode(new byte[]{37, 98, 34, 123, 113, 104, 48, 121, 57, 115, 107, 114, 49, 98, 44, 100, 14, 23, 70, 67}, "c0c647", 944844497L), Integer.valueOf(medium));
            }
            byte b = (byte) (this.source.readByte() & 255);
            if (z && b != 4) {
                throw Http2.ioException(NPStringFog.decode(new byte[]{36, 75, 18, 93, 85, 70, 4, 87, 66, 89, 22, 97, 36, 103, 54, 113, 120, 117, 50, 19, 4, 74, 87, 95, 4, 19, 0, 77, 66, 18, 22, 82, 17, 24, 19, 65}, "a3b862", 2.053184113E9d), Byte.valueOf(b));
            }
            byte b2 = (byte) (this.source.readByte() & 255);
            int i = this.source.readInt() & Integer.MAX_VALUE;
            if (logger.isLoggable(Level.FINE)) {
                logger.fine(Http2.frameLog(true, i, medium, b, b2));
            }
            switch (b) {
                case 0:
                    readData(handler, medium, b2, i);
                    return true;
                case 1:
                    readHeaders(handler, medium, b2, i);
                    return true;
                case 2:
                    readPriority(handler, medium, b2, i);
                    return true;
                case 3:
                    readRstStream(handler, medium, b2, i);
                    return true;
                case 4:
                    readSettings(handler, medium, b2, i);
                    return true;
                case 5:
                    readPushPromise(handler, medium, b2, i);
                    return true;
                case 6:
                    readPing(handler, medium, b2, i);
                    return true;
                case 7:
                    readGoAway(handler, medium, b2, i);
                    return true;
                case 8:
                    readWindowUpdate(handler, medium, b2, i);
                    return true;
                default:
                    this.source.skip(medium);
                    return true;
            }
        } catch (IOException e) {
            return false;
        }
    }

    public void readConnectionPreface(Handler handler) throws IOException {
        if (this.client) {
            if (!nextFrame(true, handler)) {
                throw Http2.ioException(NPStringFog.decode(new byte[]{99, 84, 65, 71, 88, 67, 84, 85, 16, 97, 116, 101, 101, 120, 126, 117, 98, 17, 65, 67, 85, 84, 80, 82, 84, 17, 94, 93, 69, 17, 67, 84, 83, 87, 88, 71, 84, 85}, "110211", 1.691149133E9d), new Object[0]);
            }
            return;
        }
        ByteString byteString = this.source.readByteString(Http2.CONNECTION_PREFACE.size());
        if (logger.isLoggable(Level.FINE)) {
            logger.fine(Util.format(NPStringFog.decode(new byte[]{88, 11, 67, 38, 118, 127, 42, 114, 32, 49, 112, 126, 42, 23, 70, 22}, "d7ce91", 1380248143L), byteString.hex()));
        }
        if (!Http2.CONNECTION_PREFACE.equals(byteString)) {
            throw Http2.ioException(NPStringFog.decode(new byte[]{118, 27, 73, 92, 80, 69, 86, 7, 25, 88, 19, 82, 92, 13, 87, 92, 80, 69, 90, 12, 87, 25, 91, 84, 82, 7, 92, 75, 19, 83, 70, 23, 25, 78, 82, 66, 19, 70, 74}, "3c9931", 2.88338002E8d), byteString.utf8());
        }
    }
}
