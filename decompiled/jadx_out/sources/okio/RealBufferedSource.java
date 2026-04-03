package okio;

import androidx.core.location.LocationRequestCompat;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import javax.annotation.Nullable;
import n.NPStringFog;

/* JADX INFO: loaded from: classes63.dex */
final class RealBufferedSource implements BufferedSource {
    public final Buffer buffer = new Buffer();
    boolean closed;
    public final Source source;

    RealBufferedSource(Source source) {
        if (source == null) {
            throw new NullPointerException(NPStringFog.decode(new byte[]{66, 91, 65, 74, 5, 80, 17, 9, 9, 24, 8, 64, 93, 88}, "1448f5", true));
        }
        this.source = source;
    }

    @Override // okio.BufferedSource, okio.BufferedSink
    public Buffer buffer() {
        return this.buffer;
    }

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.closed) {
            return;
        }
        this.closed = true;
        this.source.close();
        this.buffer.clear();
    }

    @Override // okio.BufferedSource
    public boolean exhausted() throws IOException {
        if (this.closed) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{86, 94, 89, 75, 3, 1}, "5268fe", 1.195890017E9d));
        }
        return this.buffer.exhausted() && this.source.read(this.buffer, 8192L) == -1;
    }

    @Override // okio.BufferedSource
    public Buffer getBuffer() {
        return this.buffer;
    }

    @Override // okio.BufferedSource
    public long indexOf(byte b) throws IOException {
        return indexOf(b, 0L, LocationRequestCompat.PASSIVE_INTERVAL);
    }

    @Override // okio.BufferedSource
    public long indexOf(byte b, long j) throws IOException {
        return indexOf(b, j, LocationRequestCompat.PASSIVE_INTERVAL);
    }

    @Override // okio.BufferedSource
    public long indexOf(byte b, long j, long j2) throws IOException {
        if (this.closed) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{86, 84, 11, 17, 81, 80}, "58db44", false, true));
        }
        if (j < 0 || j2 < j) {
            throw new IllegalArgumentException(String.format(NPStringFog.decode(new byte[]{83, 68, 94, 11, 123, 91, 81, 83, 73, 91, 23, 70, 21, 66, 94, 47, 92, 81, 80, 78, 12, 67, 65}, "561f25", -1.2061174E9f), Long.valueOf(j), Long.valueOf(j2)));
        }
        long jMax = j;
        while (jMax < j2) {
            long jIndexOf = this.buffer.indexOf(b, jMax, j2);
            if (jIndexOf != -1) {
                return jIndexOf;
            }
            long j3 = this.buffer.size;
            if (j3 >= j2 || this.source.read(this.buffer, 8192L) == -1) {
                return -1L;
            }
            jMax = Math.max(jMax, j3);
        }
        return -1L;
    }

    @Override // okio.BufferedSource
    public long indexOf(ByteString byteString) throws IOException {
        return indexOf(byteString, 0L);
    }

    @Override // okio.BufferedSource
    public long indexOf(ByteString byteString, long j) throws IOException {
        if (this.closed) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{91, 10, 91, 23, 86, 81}, "8f4d35", -2.82328581E8d));
        }
        while (true) {
            long jIndexOf = this.buffer.indexOf(byteString, j);
            if (jIndexOf != -1) {
                return jIndexOf;
            }
            long j2 = this.buffer.size;
            if (this.source.read(this.buffer, 8192L) == -1) {
                return -1L;
            }
            j = Math.max(j, (j2 - ((long) byteString.size())) + 1);
        }
    }

    @Override // okio.BufferedSource
    public long indexOfElement(ByteString byteString) throws IOException {
        return indexOfElement(byteString, 0L);
    }

    @Override // okio.BufferedSource
    public long indexOfElement(ByteString byteString, long j) throws IOException {
        if (this.closed) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{83, 84, 90, 23, 80, 83}, "085d57", 17590));
        }
        while (true) {
            long jIndexOfElement = this.buffer.indexOfElement(byteString, j);
            if (jIndexOfElement != -1) {
                return jIndexOfElement;
            }
            long j2 = this.buffer.size;
            if (this.source.read(this.buffer, 8192L) == -1) {
                return -1L;
            }
            j = Math.max(j, j2);
        }
    }

    @Override // okio.BufferedSource
    public InputStream inputStream() {
        return new InputStream(this) { // from class: okio.RealBufferedSource.1
            final RealBufferedSource this$0;

            {
                this.this$0 = this;
            }

            @Override // java.io.InputStream
            public int available() throws IOException {
                if (this.this$0.closed) {
                    throw new IOException(NPStringFog.decode(new byte[]{86, 92, 14, 16, 86, 93}, "50ac39", 1759864495L));
                }
                return (int) Math.min(this.this$0.buffer.size, 2147483647L);
            }

            @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                this.this$0.close();
            }

            @Override // java.io.InputStream
            public int read() throws IOException {
                if (this.this$0.closed) {
                    throw new IOException(NPStringFog.decode(new byte[]{84, 15, 93, 74, 6, 84}, "7c29c0", 4.243589E7f));
                }
                if (this.this$0.buffer.size == 0 && this.this$0.source.read(this.this$0.buffer, 8192L) == -1) {
                    return -1;
                }
                return this.this$0.buffer.readByte() & 255;
            }

            @Override // java.io.InputStream
            public int read(byte[] bArr, int i, int i2) throws IOException {
                if (this.this$0.closed) {
                    throw new IOException(NPStringFog.decode(new byte[]{1, 84, 88, 65, 1, 82}, "b872d6", false));
                }
                Util.checkOffsetAndCount(bArr.length, i, i2);
                if (this.this$0.buffer.size == 0 && this.this$0.source.read(this.this$0.buffer, 8192L) == -1) {
                    return -1;
                }
                return this.this$0.buffer.read(bArr, i, i2);
            }

            public String toString() {
                return this.this$0 + NPStringFog.decode(new byte[]{28, 88, 10, 18, 23, 64, 97, 69, 22, 7, 3, 89, 26, 24}, "21dbb4", -1501256616L);
            }
        };
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.closed;
    }

    @Override // okio.BufferedSource
    public BufferedSource peek() {
        return Okio.buffer(new PeekSource(this));
    }

    @Override // okio.BufferedSource
    public boolean rangeEquals(long j, ByteString byteString) throws IOException {
        return rangeEquals(j, byteString, 0, byteString.size());
    }

    @Override // okio.BufferedSource
    public boolean rangeEquals(long j, ByteString byteString, int i, int i2) throws IOException {
        if (this.closed) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{0, 13, 89, 65, 4, 2}, "ca62af", false, false));
        }
        if (j < 0 || i < 0 || i2 < 0 || byteString.size() - i < i2) {
            return false;
        }
        for (int i3 = 0; i3 < i2; i3++) {
            long j2 = ((long) i3) + j;
            if (!request(1 + j2) || this.buffer.getByte(j2) != byteString.getByte(i + i3)) {
                return false;
            }
        }
        return true;
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) throws IOException {
        if (this.buffer.size == 0 && this.source.read(this.buffer, 8192L) == -1) {
            return -1;
        }
        return this.buffer.read(byteBuffer);
    }

    @Override // okio.BufferedSource
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // okio.BufferedSource
    public int read(byte[] bArr, int i, int i2) throws IOException {
        Util.checkOffsetAndCount(bArr.length, i, i2);
        if (this.buffer.size == 0 && this.source.read(this.buffer, 8192L) == -1) {
            return -1;
        }
        return this.buffer.read(bArr, i, (int) Math.min(i2, this.buffer.size));
    }

    @Override // okio.Source
    public long read(Buffer buffer, long j) throws IOException {
        if (buffer == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{17, 11, 13, 15, 25, 11, 95, 66, 13, 17, 85, 90}, "bbcd96", 1.277099045E9d));
        }
        if (j < 0) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{82, 78, 21, 81, 119, 90, 69, 89, 21, 20, 8, 21, 0, 13, 65}, "07a445", -1.1747631E9f) + j);
        }
        if (this.closed) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{86, 9, 10, 69, 92, 92}, "5ee698", 1.8510131E9f));
        }
        if (this.buffer.size == 0 && this.source.read(this.buffer, 8192L) == -1) {
            return -1L;
        }
        return this.buffer.read(buffer, Math.min(j, this.buffer.size));
    }

    @Override // okio.BufferedSource
    public long readAll(Sink sink) throws IOException {
        if (sink == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{74, 92, 12, 14, 19, 94, 4, 21, 12, 16, 95, 15}, "95be3c", -2.72148569E8d));
        }
        long j = 0;
        while (this.source.read(this.buffer, 8192L) != -1) {
            long jCompleteSegmentByteCount = this.buffer.completeSegmentByteCount();
            if (jCompleteSegmentByteCount > 0) {
                j += jCompleteSegmentByteCount;
                sink.write(this.buffer, jCompleteSegmentByteCount);
            }
        }
        if (this.buffer.size() <= 0) {
            return j;
        }
        long size = j + this.buffer.size();
        sink.write(this.buffer, this.buffer.size());
        return size;
    }

    @Override // okio.BufferedSource
    public byte readByte() throws IOException {
        require(1L);
        return this.buffer.readByte();
    }

    @Override // okio.BufferedSource
    public byte[] readByteArray() throws IOException {
        this.buffer.writeAll(this.source);
        return this.buffer.readByteArray();
    }

    @Override // okio.BufferedSource
    public byte[] readByteArray(long j) throws IOException {
        require(j);
        return this.buffer.readByteArray(j);
    }

    @Override // okio.BufferedSource
    public ByteString readByteString() throws IOException {
        this.buffer.writeAll(this.source);
        return this.buffer.readByteString();
    }

    @Override // okio.BufferedSource
    public ByteString readByteString(long j) throws IOException {
        require(j);
        return this.buffer.readByteString(j);
    }

    @Override // okio.BufferedSource
    public long readDecimalLong() throws IOException {
        require(1L);
        for (int i = 0; request(i + 1); i++) {
            byte b = this.buffer.getByte(i);
            if ((b < 48 || b > 57) && !(i == 0 && b == 45)) {
                if (i == 0) {
                    throw new NumberFormatException(String.format(NPStringFog.decode(new byte[]{35, 79, 66, 4, 87, 69, 3, 83, 18, 13, 81, 80, 2, 94, 92, 6, 20, 106, 86, 26, 11, 60, 20, 94, 20, 23, 21, 76, 19, 17, 5, 95, 83, 19, 85, 82, 18, 82, 64, 65, 86, 68, 18, 23, 69, 0, 71, 17, 67, 20, 74}, "f72a41", true, true), Byte.valueOf(b)));
                }
                return this.buffer.readDecimalLong();
            }
        }
        return this.buffer.readDecimalLong();
    }

    @Override // okio.BufferedSource
    public void readFully(Buffer buffer, long j) throws IOException {
        try {
            require(j);
            this.buffer.readFully(buffer, j);
        } catch (EOFException e) {
            buffer.writeAll(this.buffer);
            throw e;
        }
    }

    @Override // okio.BufferedSource
    public void readFully(byte[] bArr) throws IOException {
        try {
            require(bArr.length);
            this.buffer.readFully(bArr);
        } catch (EOFException e) {
            int i = 0;
            while (this.buffer.size > 0) {
                int i2 = this.buffer.read(bArr, i, (int) this.buffer.size);
                if (i2 == -1) {
                    throw new AssertionError();
                }
                i += i2;
            }
            throw e;
        }
    }

    @Override // okio.BufferedSource
    public long readHexadecimalUnsignedLong() throws IOException {
        require(1L);
        for (int i = 0; request(i + 1); i++) {
            byte b = this.buffer.getByte(i);
            if ((b < 48 || b > 57) && ((b < 97 || b > 102) && (b < 65 || b > 70))) {
                if (i == 0) {
                    throw new NumberFormatException(String.format(NPStringFog.decode(new byte[]{38, 73, 19, 80, 86, 71, 6, 85, 67, 89, 80, 82, 7, 88, 13, 82, 21, 104, 83, 28, 90, 84, 24, 85, 34, 28, 37, 104, 21, 80, 11, 80, 17, 84, 86, 71, 6, 67, 67, 87, 64, 71, 67, 70, 2, 70, 21, 22, 64, 73}, "c1c553", -5.01600027E8d), Byte.valueOf(b)));
                }
                return this.buffer.readHexadecimalUnsignedLong();
            }
        }
        return this.buffer.readHexadecimalUnsignedLong();
    }

    @Override // okio.BufferedSource
    public int readInt() throws IOException {
        require(4L);
        return this.buffer.readInt();
    }

    @Override // okio.BufferedSource
    public int readIntLe() throws IOException {
        require(4L);
        return this.buffer.readIntLe();
    }

    @Override // okio.BufferedSource
    public long readLong() throws IOException {
        require(8L);
        return this.buffer.readLong();
    }

    @Override // okio.BufferedSource
    public long readLongLe() throws IOException {
        require(8L);
        return this.buffer.readLongLe();
    }

    @Override // okio.BufferedSource
    public short readShort() throws IOException {
        require(2L);
        return this.buffer.readShort();
    }

    @Override // okio.BufferedSource
    public short readShortLe() throws IOException {
        require(2L);
        return this.buffer.readShortLe();
    }

    @Override // okio.BufferedSource
    public String readString(long j, Charset charset) throws IOException {
        require(j);
        if (charset == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{86, 92, 82, 20, 22, 93, 65, 20, 14, 91, 69, 86, 64, 88, 95}, "543fe8", -3.082886E8f));
        }
        return this.buffer.readString(j, charset);
    }

    @Override // okio.BufferedSource
    public String readString(Charset charset) throws IOException {
        if (charset == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{87, 10, 80, 64, 74, 0, 64, 66, 12, 15, 25, 11, 65, 14, 93}, "4b129e", 2.1711525E7d));
        }
        this.buffer.writeAll(this.source);
        return this.buffer.readString(charset);
    }

    @Override // okio.BufferedSource
    public String readUtf8() throws IOException {
        this.buffer.writeAll(this.source);
        return this.buffer.readUtf8();
    }

    @Override // okio.BufferedSource
    public String readUtf8(long j) throws IOException {
        require(j);
        return this.buffer.readUtf8(j);
    }

    @Override // okio.BufferedSource
    public int readUtf8CodePoint() throws IOException {
        require(1L);
        byte b = this.buffer.getByte(0L);
        if ((b & 224) == 192) {
            require(2L);
        } else if ((b & 240) == 224) {
            require(3L);
        } else if ((b & 248) == 240) {
            require(4L);
        }
        return this.buffer.readUtf8CodePoint();
    }

    @Override // okio.BufferedSource
    @Nullable
    public String readUtf8Line() throws IOException {
        long jIndexOf = indexOf((byte) 10);
        if (jIndexOf != -1) {
            return this.buffer.readUtf8Line(jIndexOf);
        }
        if (this.buffer.size != 0) {
            return readUtf8(this.buffer.size);
        }
        return null;
    }

    @Override // okio.BufferedSource
    public String readUtf8LineStrict() throws IOException {
        return readUtf8LineStrict(LocationRequestCompat.PASSIVE_INTERVAL);
    }

    @Override // okio.BufferedSource
    public String readUtf8LineStrict(long j) throws IOException {
        if (j < 0) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{8, 10, 88, 12, 65, 68, 88, 67, 5, 95, 21}, "dc5e5d", 9224) + j);
        }
        long j2 = j == LocationRequestCompat.PASSIVE_INTERVAL ? LocationRequestCompat.PASSIVE_INTERVAL : j + 1;
        long jIndexOf = indexOf((byte) 10, 0L, j2);
        if (jIndexOf != -1) {
            return this.buffer.readUtf8Line(jIndexOf);
        }
        if (j2 < LocationRequestCompat.PASSIVE_INTERVAL && request(j2) && this.buffer.getByte(j2 - 1) == 13 && request(1 + j2) && this.buffer.getByte(j2) == 10) {
            return this.buffer.readUtf8Line(j2);
        }
        Buffer buffer = new Buffer();
        this.buffer.copyTo(buffer, 0L, Math.min(32L, this.buffer.size()));
        throw new EOFException(NPStringFog.decode(new byte[]{107, 8, 69, 15, 91, 23, 23, 0, 10, 20, 90, 7, 13, 70, 9, 8, 89, 10, 67, 91}, "7fea4c", 5.1895766E8f) + Math.min(this.buffer.size(), j) + NPStringFog.decode(new byte[]{66, 5, 95, 87, 23, 0, 12, 18, 13}, "bf09ce", true) + buffer.readByteString().hex() + (char) 8230);
    }

    @Override // okio.BufferedSource
    public boolean request(long j) throws IOException {
        if (j < 0) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{91, 72, 65, 93, 112, 9, 76, 95, 65, 24, 15, 70, 9, 11, 21}, "91583f", true) + j);
        }
        if (this.closed) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{5, 9, 11, 66, 3, 0}, "fed1fd", -1.416571461E9d));
        }
        while (this.buffer.size < j) {
            if (this.source.read(this.buffer, 8192L) == -1) {
                return false;
            }
        }
        return true;
    }

    @Override // okio.BufferedSource
    public void require(long j) throws IOException {
        if (!request(j)) {
            throw new EOFException();
        }
    }

    @Override // okio.BufferedSource
    public int select(Options options) throws IOException {
        if (this.closed) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{80, 8, 9, 70, 82, 83}, "3df577", true, false));
        }
        do {
            int iSelectPrefix = this.buffer.selectPrefix(options, true);
            if (iSelectPrefix == -1) {
                return -1;
            }
            if (iSelectPrefix != -2) {
                this.buffer.skip(options.byteStrings[iSelectPrefix].size());
                return iSelectPrefix;
            }
        } while (this.source.read(this.buffer, 8192L) != -1);
        return -1;
    }

    @Override // okio.BufferedSource
    public void skip(long j) throws IOException {
        if (this.closed) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{82, 93, 14, 74, 85, 87}, "11a903", false));
        }
        while (j > 0) {
            if (this.buffer.size == 0 && this.source.read(this.buffer, 8192L) == -1) {
                throw new EOFException();
            }
            long jMin = Math.min(j, this.buffer.size());
            this.buffer.skip(jMin);
            j -= jMin;
        }
    }

    @Override // okio.Source
    public Timeout timeout() {
        return this.source.timeout();
    }

    public String toString() {
        return NPStringFog.decode(new byte[]{91, 20, 4, 4, 81, 66, 17}, "9abb40", 1.3052842E9f) + this.source + NPStringFog.decode(new byte[]{24}, "1e1bbc", -2110);
    }
}
