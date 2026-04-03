package okio;

import androidx.core.location.LocationRequestCompat;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.annotation.Nullable;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import n.NPStringFog;

/* JADX INFO: loaded from: classes63.dex */
public final class Buffer implements BufferedSource, BufferedSink, Cloneable, ByteChannel {
    private static final byte[] DIGITS = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102};
    static final int REPLACEMENT_CHARACTER = 65533;

    @Nullable
    Segment head;
    long size;

    public static final class UnsafeCursor implements Closeable {
        public Buffer buffer;
        public byte[] data;
        public boolean readWrite;
        private Segment segment;
        public long offset = -1;
        public int start = -1;
        public int end = -1;

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.buffer == null) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{11, 12, 69, 17, 7, 66, 17, 2, 82, 89, 3, 82, 69, 23, 94, 17, 7, 22, 7, 22, 87, 87, 3, 68}, "ec11f6", 24478));
            }
            this.buffer = null;
            this.segment = null;
            this.offset = -1L;
            this.data = null;
            this.start = -1;
            this.end = -1;
        }

        public final long expandBuffer(int i) {
            if (i <= 0) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{14, 95, 12, 116, 26, 67, 6, 117, 13, 67, 13, 67, 67, 10, 95, 22, 83, 13, 67}, "c6b6c7", 6.74439961E8d) + i);
            }
            if (i > 8192) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{14, 15, 8, 116, 74, 23, 6, 37, 9, 67, 93, 23, 67, 88, 70, 101, 86, 4, 14, 3, 8, 66, 29, 48, 42, 60, 35, 12, 19}, "cff63c", true) + i);
            }
            if (this.buffer == null) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{93, 88, 22, 19, 86, 68, 71, 86, 1, 91, 82, 84, 19, 67, 13, 19, 86, 16, 81, 66, 4, 85, 82, 66}, "37b370", -20999));
            }
            if (!this.readWrite) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{80, 75, 69, 88, 91, 84, 119, 70, 83, 95, 80, 66, 29, 26, 21, 86, 91, 92, 76, 19, 69, 92, 71, 93, 92, 71, 65, 92, 81, 16, 83, 92, 71, 25, 71, 85, 84, 87, 26, 78, 71, 89, 65, 86, 21, 91, 64, 86, 83, 86, 71, 74}, "535950", 1382));
            }
            long j = this.buffer.size;
            Segment segmentWritableSegment = this.buffer.writableSegment(i);
            int i2 = 8192 - segmentWritableSegment.limit;
            segmentWritableSegment.limit = 8192;
            this.buffer.size = ((long) i2) + j;
            this.segment = segmentWritableSegment;
            this.offset = j;
            this.data = segmentWritableSegment.data;
            this.start = 8192 - i2;
            this.end = 8192;
            return i2;
        }

        public final int next() {
            if (this.offset == this.buffer.size) {
                throw new IllegalStateException();
            }
            return this.offset == -1 ? seek(0L) : seek(this.offset + ((long) (this.end - this.start)));
        }

        public final long resizeBuffer(long j) {
            if (this.buffer == null) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{13, 94, 17, 16, 87, 23, 23, 80, 6, 88, 83, 7, 67, 69, 10, 16, 87, 67, 1, 68, 3, 86, 83, 17}, "c1e06c", 961209720L));
            }
            if (!this.readWrite) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{74, 3, 65, 81, 66, 81, 122, 19, 84, 94, 93, 70, 16, 79, 18, 87, 86, 88, 65, 70, 66, 93, 74, 89, 81, 18, 70, 93, 92, 20, 94, 9, 64, 24, 74, 81, 89, 2, 29, 79, 74, 93, 76, 3, 18, 90, 77, 82, 94, 3, 64, 75}, "8f2884", false));
            }
            long j2 = this.buffer.size;
            if (j <= j2) {
                if (j < 0) {
                    throw new IllegalArgumentException(NPStringFog.decode(new byte[]{92, 87, 18, 96, 95, 77, 87, 18, 89, 19, 6, 13, 18}, "22e367", true) + j);
                }
                long j3 = j2 - j;
                while (true) {
                    if (j3 <= 0) {
                        break;
                    }
                    Segment segment = this.buffer.head.prev;
                    int i = segment.limit - segment.pos;
                    if (i > j3) {
                        segment.limit = (int) (((long) segment.limit) - j3);
                        break;
                    }
                    this.buffer.head = segment.pop();
                    SegmentPool.recycle(segment);
                    j3 -= (long) i;
                }
                this.segment = null;
                this.offset = j;
                this.data = null;
                this.start = -1;
                this.end = -1;
            } else if (j > j2) {
                boolean z = true;
                long j4 = j - j2;
                while (j4 > 0) {
                    Segment segmentWritableSegment = this.buffer.writableSegment(1);
                    int iMin = (int) Math.min(j4, 8192 - segmentWritableSegment.limit);
                    segmentWritableSegment.limit += iMin;
                    j4 -= (long) iMin;
                    if (z) {
                        this.segment = segmentWritableSegment;
                        this.offset = j2;
                        this.data = segmentWritableSegment.data;
                        this.start = segmentWritableSegment.limit - iMin;
                        this.end = segmentWritableSegment.limit;
                        z = false;
                    }
                }
            }
            this.buffer.size = j;
            return j2;
        }

        public final int seek(long j) {
            long j2;
            if (j < -1 || j > this.buffer.size) {
                throw new ArrayIndexOutOfBoundsException(String.format(NPStringFog.decode(new byte[]{89, 84, 95, 67, 82, 23, 11, 23, 74, 16, 9, 67, 69, 91, 67, 85, 10, 70, 69}, "62907c", true), Long.valueOf(j), Long.valueOf(this.buffer.size)));
            }
            if (j == -1 || j == this.buffer.size) {
                this.segment = null;
                this.offset = j;
                this.data = null;
                this.start = -1;
                this.end = -1;
                return -1;
            }
            long j3 = 0;
            long j4 = this.buffer.size;
            Segment segmentPush = this.buffer.head;
            Segment segment = this.buffer.head;
            if (this.segment != null) {
                j2 = this.offset - ((long) (this.start - this.segment.pos));
                if (j2 > j) {
                    segment = this.segment;
                } else {
                    segmentPush = this.segment;
                    j3 = j2;
                    j2 = j4;
                }
            } else {
                j2 = j4;
            }
            if (j2 - j > j - j3) {
                while (j >= ((long) (segmentPush.limit - segmentPush.pos)) + j3) {
                    j3 += (long) (segmentPush.limit - segmentPush.pos);
                    segmentPush = segmentPush.next;
                }
            } else {
                j3 = j2;
                segmentPush = segment;
                while (j3 > j) {
                    segmentPush = segmentPush.prev;
                    j3 -= (long) (segmentPush.limit - segmentPush.pos);
                }
            }
            if (this.readWrite && segmentPush.shared) {
                Segment segmentUnsharedCopy = segmentPush.unsharedCopy();
                if (this.buffer.head == segmentPush) {
                    this.buffer.head = segmentUnsharedCopy;
                }
                segmentPush = segmentPush.push(segmentUnsharedCopy);
                segmentPush.prev.pop();
            }
            this.segment = segmentPush;
            this.offset = j;
            this.data = segmentPush.data;
            this.start = ((int) (j - j3)) + segmentPush.pos;
            this.end = segmentPush.limit;
            return this.end - this.start;
        }
    }

    private ByteString digest(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(str);
            if (this.head != null) {
                messageDigest.update(this.head.data, this.head.pos, this.head.limit - this.head.pos);
                for (Segment segment = this.head.next; segment != this.head; segment = segment.next) {
                    messageDigest.update(segment.data, segment.pos, segment.limit - segment.pos);
                }
            }
            return ByteString.of(messageDigest.digest());
        } catch (NoSuchAlgorithmException e) {
            throw new AssertionError();
        }
    }

    private ByteString hmac(String str, ByteString byteString) {
        try {
            Mac mac = Mac.getInstance(str);
            mac.init(new SecretKeySpec(byteString.toByteArray(), str));
            if (this.head != null) {
                mac.update(this.head.data, this.head.pos, this.head.limit - this.head.pos);
                for (Segment segment = this.head.next; segment != this.head; segment = segment.next) {
                    mac.update(segment.data, segment.pos, segment.limit - segment.pos);
                }
            }
            return ByteString.of(mac.doFinal());
        } catch (InvalidKeyException e) {
            throw new IllegalArgumentException(e);
        } catch (NoSuchAlgorithmException e2) {
            throw new AssertionError();
        }
    }

    private boolean rangeEquals(Segment segment, int i, ByteString byteString, int i2, int i3) {
        int i4 = segment.limit;
        byte[] bArr = segment.data;
        int i5 = i;
        Segment segment2 = segment;
        while (i2 < i3) {
            if (i5 == i4) {
                segment2 = segment2.next;
                bArr = segment2.data;
                i5 = segment2.pos;
                i4 = segment2.limit;
            }
            if (bArr[i5] != byteString.getByte(i2)) {
                return false;
            }
            i5++;
            i2++;
        }
        return true;
    }

    private void readFrom(InputStream inputStream, long j, boolean z) throws IOException {
        if (inputStream == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{95, 94, 16, 5, 89, 20, 88, 69, 92, 84}, "6008d4", true));
        }
        while (true) {
            if (j <= 0 && !z) {
                return;
            }
            Segment segmentWritableSegment = writableSegment(1);
            int i = inputStream.read(segmentWritableSegment.data, segmentWritableSegment.limit, (int) Math.min(j, 8192 - segmentWritableSegment.limit));
            if (i == -1) {
                if (!z) {
                    throw new EOFException();
                }
                return;
            } else {
                segmentWritableSegment.limit += i;
                this.size += (long) i;
                j -= (long) i;
            }
        }
    }

    @Override // okio.BufferedSource, okio.BufferedSink
    public Buffer buffer() {
        return this;
    }

    public final void clear() {
        try {
            skip(this.size);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    public Buffer clone() {
        Buffer buffer = new Buffer();
        if (this.size != 0) {
            buffer.head = this.head.sharedCopy();
            Segment segment = buffer.head;
            Segment segment2 = buffer.head;
            Segment segment3 = buffer.head;
            segment2.prev = segment3;
            segment.next = segment3;
            for (Segment segment4 = this.head.next; segment4 != this.head; segment4 = segment4.next) {
                buffer.head.prev.push(segment4.sharedCopy());
            }
            buffer.size = this.size;
        }
        return buffer;
    }

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    public final long completeSegmentByteCount() {
        long j = this.size;
        if (j == 0) {
            return 0L;
        }
        Segment segment = this.head.prev;
        return (segment.limit >= 8192 || !segment.owner) ? j : j - ((long) (segment.limit - segment.pos));
    }

    public final Buffer copyTo(OutputStream outputStream) throws IOException {
        return copyTo(outputStream, 0L, this.size);
    }

    public final Buffer copyTo(OutputStream outputStream, long j, long j2) throws IOException {
        if (outputStream == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{11, 67, 66, 68, 88, 88, 68, 88, 67, 8, 9}, "d66dee", -1.3121851E9f));
        }
        Util.checkOffsetAndCount(this.size, j, j2);
        if (j2 != 0) {
            Segment segment = this.head;
            while (j >= segment.limit - segment.pos) {
                j -= (long) (segment.limit - segment.pos);
                segment = segment.next;
            }
            while (j2 > 0) {
                int i = (int) (((long) segment.pos) + j);
                int iMin = (int) Math.min(segment.limit - i, j2);
                outputStream.write(segment.data, i, iMin);
                j2 -= (long) iMin;
                segment = segment.next;
                j = 0;
            }
        }
        return this;
    }

    public final Buffer copyTo(Buffer buffer, long j, long j2) {
        if (buffer == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{10, 69, 67, 19, 94, 89, 69, 94, 66, 95, 15}, "e073cd", 1.629204E9f));
        }
        Util.checkOffsetAndCount(this.size, j, j2);
        if (j2 != 0) {
            buffer.size += j2;
            Segment segment = this.head;
            while (j >= segment.limit - segment.pos) {
                j -= (long) (segment.limit - segment.pos);
                segment = segment.next;
            }
            while (j2 > 0) {
                Segment segmentSharedCopy = segment.sharedCopy();
                segmentSharedCopy.pos = (int) (((long) segmentSharedCopy.pos) + j);
                segmentSharedCopy.limit = Math.min(segmentSharedCopy.pos + ((int) j2), segmentSharedCopy.limit);
                if (buffer.head == null) {
                    segmentSharedCopy.prev = segmentSharedCopy;
                    segmentSharedCopy.next = segmentSharedCopy;
                    buffer.head = segmentSharedCopy;
                } else {
                    buffer.head.prev.push(segmentSharedCopy);
                }
                j2 -= (long) (segmentSharedCopy.limit - segmentSharedCopy.pos);
                segment = segment.next;
                j = 0;
            }
        }
        return this;
    }

    @Override // okio.BufferedSink
    public BufferedSink emit() {
        return this;
    }

    @Override // okio.BufferedSink
    public Buffer emitCompleteSegments() {
        return this;
    }

    public boolean equals(Object obj) {
        long j = 0;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Buffer)) {
            return false;
        }
        Buffer buffer = (Buffer) obj;
        if (this.size != buffer.size) {
            return false;
        }
        if (this.size == 0) {
            return true;
        }
        Segment segment = this.head;
        Segment segment2 = buffer.head;
        int i = segment.pos;
        int i2 = segment2.pos;
        while (j < this.size) {
            long jMin = Math.min(segment.limit - i, segment2.limit - i2);
            int i3 = 0;
            while (i3 < jMin) {
                if (segment.data[i] != segment2.data[i2]) {
                    return false;
                }
                i3++;
                i2++;
                i++;
            }
            if (i == segment.limit) {
                segment = segment.next;
                i = segment.pos;
            }
            if (i2 == segment2.limit) {
                segment2 = segment2.next;
                i2 = segment2.pos;
            }
            j += jMin;
        }
        return true;
    }

    @Override // okio.BufferedSource
    public boolean exhausted() {
        return this.size == 0;
    }

    @Override // okio.BufferedSink, okio.Sink, java.io.Flushable
    public void flush() {
    }

    @Override // okio.BufferedSource
    public Buffer getBuffer() {
        return this;
    }

    public final byte getByte(long j) {
        Util.checkOffsetAndCount(this.size, j, 1L);
        if (this.size - j > j) {
            Segment segment = this.head;
            while (true) {
                int i = segment.limit - segment.pos;
                if (j < i) {
                    return segment.data[segment.pos + ((int) j)];
                }
                j -= (long) i;
                segment = segment.next;
            }
        } else {
            long j2 = j - this.size;
            Segment segment2 = this.head.prev;
            while (true) {
                j2 += (long) (segment2.limit - segment2.pos);
                if (j2 >= 0) {
                    return segment2.data[segment2.pos + ((int) j2)];
                }
                segment2 = segment2.prev;
            }
        }
    }

    public int hashCode() {
        Segment segment = this.head;
        if (segment == null) {
            return 0;
        }
        int i = 1;
        do {
            int i2 = segment.pos;
            int i3 = segment.limit;
            while (i2 < i3) {
                int i4 = segment.data[i2] + (i * 31);
                i2++;
                i = i4;
            }
            segment = segment.next;
        } while (segment != this.head);
        return i;
    }

    public final ByteString hmacSha1(ByteString byteString) {
        return hmac(NPStringFog.decode(new byte[]{127, 9, 3, 82, 53, 125, 118, 85}, "7db1f5", -2.5649448E7d), byteString);
    }

    public final ByteString hmacSha256(ByteString byteString) {
        return hmac(NPStringFog.decode(new byte[]{42, 9, 87, 91, 102, 44, 35, 86, 3, 14}, "bd685d", -2089818310L), byteString);
    }

    public final ByteString hmacSha512(ByteString byteString) {
        return hmac(NPStringFog.decode(new byte[]{121, 9, 85, 1, 107, 120, 112, 81, 5, 80}, "1d4b80", -1.4396984E9f), byteString);
    }

    @Override // okio.BufferedSource
    public long indexOf(byte b) {
        return indexOf(b, 0L, LocationRequestCompat.PASSIVE_INTERVAL);
    }

    @Override // okio.BufferedSource
    public long indexOf(byte b, long j) {
        return indexOf(b, j, LocationRequestCompat.PASSIVE_INTERVAL);
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x008a  */
    @Override // okio.BufferedSource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long indexOf(byte r11, long r12, long r14) {
        /*
            r10 = this;
            r0 = 0
            int r0 = (r12 > r0 ? 1 : (r12 == r0 ? 0 : -1))
            if (r0 < 0) goto La
            int r0 = (r14 > r12 ? 1 : (r14 == r12 ? 0 : -1))
            if (r0 >= 0) goto L3d
        La:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = 31
            byte[] r1 = new byte[r1]
            r1 = {x00b2: FILL_ARRAY_DATA , data: [17, 90, 78, 85, 10, 23, 17, 19, 82, 66, 88, 95, 43, 93, 80, 85, 79, 15, 71, 64, 20, 68, 88, 123, 12, 87, 81, 72, 10, 23, 17} // fill-array
            java.lang.String r2 = "b34072"
            r3 = 0
            r4 = 1
            java.lang.String r1 = n.NPStringFog.decode(r1, r2, r3, r4)
            r2 = 3
            java.lang.Object[] r2 = new java.lang.Object[r2]
            r3 = 0
            long r4 = r10.size
            java.lang.Long r4 = java.lang.Long.valueOf(r4)
            r2[r3] = r4
            r3 = 1
            java.lang.Long r4 = java.lang.Long.valueOf(r12)
            r2[r3] = r4
            r3 = 2
            java.lang.Long r4 = java.lang.Long.valueOf(r14)
            r2[r3] = r4
            java.lang.String r1 = java.lang.String.format(r1, r2)
            r0.<init>(r1)
            throw r0
        L3d:
            long r0 = r10.size
            int r0 = (r14 > r0 ? 1 : (r14 == r0 ? 0 : -1))
            if (r0 <= 0) goto L45
            long r14 = r10.size
        L45:
            int r0 = (r12 > r14 ? 1 : (r12 == r14 ? 0 : -1))
            if (r0 != 0) goto L4c
            r0 = -1
        L4b:
            return r0
        L4c:
            okio.Segment r0 = r10.head
            if (r0 != 0) goto L53
            r0 = -1
            goto L4b
        L53:
            long r2 = r10.size
            long r2 = r2 - r12
            int r1 = (r2 > r12 ? 1 : (r2 == r12 ? 0 : -1))
            if (r1 >= 0) goto L6a
            long r2 = r10.size
        L5c:
            int r1 = (r2 > r12 ? 1 : (r2 == r12 ? 0 : -1))
            if (r1 <= 0) goto L86
            okio.Segment r0 = r0.prev
            int r1 = r0.limit
            int r4 = r0.pos
            int r1 = r1 - r4
            long r4 = (long) r1
            long r2 = r2 - r4
            goto L5c
        L6a:
            r2 = 0
        L6c:
            int r1 = r0.limit
            int r4 = r0.pos
            int r1 = r1 - r4
            long r4 = (long) r1
            long r4 = r4 + r2
            int r1 = (r4 > r12 ? 1 : (r4 == r12 ? 0 : -1))
            if (r1 >= 0) goto L86
            okio.Segment r0 = r0.next
            r2 = r4
            goto L6c
        L7b:
            int r1 = r0.limit
            int r4 = r0.pos
            int r1 = r1 - r4
            long r4 = (long) r1
            long r12 = r2 + r4
            okio.Segment r0 = r0.next
            r2 = r12
        L86:
            int r1 = (r2 > r14 ? 1 : (r2 == r14 ? 0 : -1))
            if (r1 >= 0) goto Laf
            byte[] r4 = r0.data
            int r1 = r0.limit
            long r6 = (long) r1
            int r1 = r0.pos
            long r8 = (long) r1
            long r8 = r8 + r14
            long r8 = r8 - r2
            long r6 = java.lang.Math.min(r6, r8)
            int r5 = (int) r6
            int r1 = r0.pos
            long r6 = (long) r1
            long r6 = r6 + r12
            long r6 = r6 - r2
            int r1 = (int) r6
        L9f:
            if (r1 >= r5) goto L7b
            r6 = r4[r1]
            if (r6 != r11) goto Lac
            int r0 = r0.pos
            int r0 = r1 - r0
            long r0 = (long) r0
            long r0 = r0 + r2
            goto L4b
        Lac:
            int r1 = r1 + 1
            goto L9f
        Laf:
            r0 = -1
            goto L4b
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Buffer.indexOf(byte, long, long):long");
    }

    @Override // okio.BufferedSource
    public long indexOf(ByteString byteString) throws IOException {
        return indexOf(byteString, 0L);
    }

    @Override // okio.BufferedSource
    public long indexOf(ByteString byteString, long j) throws IOException {
        long j2;
        Segment segment;
        if (byteString.size() == 0) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{0, 79, 65, 83, 70, 18, 11, 69, 21, 83, 88, 66, 22, 79}, "b65652", 7.86028623E8d));
        }
        if (j < 0) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{87, 75, 92, 14, 127, 86, 85, 92, 75, 67, 10, 24, 1}, "193c68", -1184431197L));
        }
        Segment segment2 = this.head;
        if (segment2 == null) {
            return -1L;
        }
        if (this.size - j >= j) {
            j2 = 0;
            segment = segment2;
            while (true) {
                long j3 = ((long) (segment.limit - segment.pos)) + j2;
                if (j3 >= j) {
                    break;
                }
                segment = segment.next;
                j2 = j3;
            }
        } else {
            j2 = this.size;
            segment = segment2;
            while (j2 > j) {
                segment = segment.prev;
                j2 -= (long) (segment.limit - segment.pos);
            }
        }
        byte b = byteString.getByte(0);
        int size = byteString.size();
        long j4 = (this.size - ((long) size)) + 1;
        long j5 = j2;
        Segment segment3 = segment;
        while (j5 < j4) {
            byte[] bArr = segment3.data;
            int iMin = (int) Math.min(segment3.limit, (((long) segment3.pos) + j4) - j5);
            for (int i = (int) ((((long) segment3.pos) + j) - j5); i < iMin; i++) {
                if (bArr[i] == b && rangeEquals(segment3, i + 1, byteString, 1, size)) {
                    return ((long) (i - segment3.pos)) + j5;
                }
            }
            long j6 = ((long) (segment3.limit - segment3.pos)) + j5;
            segment3 = segment3.next;
            j5 = j6;
            j = j6;
        }
        return -1L;
    }

    @Override // okio.BufferedSource
    public long indexOfElement(ByteString byteString) {
        return indexOfElement(byteString, 0L);
    }

    @Override // okio.BufferedSource
    public long indexOfElement(ByteString byteString, long j) {
        long j2;
        Segment segment;
        if (j < 0) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{4, 75, 12, 90, 40, 87, 6, 92, 27, 23, 93, 25, 82}, "b9c7a9", 1983046793L));
        }
        Segment segment2 = this.head;
        if (segment2 == null) {
            return -1L;
        }
        if (this.size - j >= j) {
            j2 = 0;
            segment = segment2;
            while (true) {
                long j3 = ((long) (segment.limit - segment.pos)) + j2;
                if (j3 >= j) {
                    break;
                }
                segment = segment.next;
                j2 = j3;
            }
        } else {
            j2 = this.size;
            segment = segment2;
            while (j2 > j) {
                segment = segment.prev;
                j2 -= (long) (segment.limit - segment.pos);
            }
        }
        if (byteString.size() == 2) {
            byte b = byteString.getByte(0);
            byte b2 = byteString.getByte(1);
            while (j2 < this.size) {
                byte[] bArr = segment.data;
                int i = segment.limit;
                for (int i2 = (int) ((((long) segment.pos) + j) - j2); i2 < i; i2++) {
                    byte b3 = bArr[i2];
                    if (b3 == b || b3 == b2) {
                        return j2 + ((long) (i2 - segment.pos));
                    }
                }
                j2 += (long) (segment.limit - segment.pos);
                segment = segment.next;
                j = j2;
            }
        } else {
            byte[] bArrInternalArray = byteString.internalArray();
            while (j2 < this.size) {
                byte[] bArr2 = segment.data;
                int i3 = (int) ((((long) segment.pos) + j) - j2);
                int i4 = segment.limit;
                for (int i5 = i3; i5 < i4; i5++) {
                    byte b4 = bArr2[i5];
                    for (byte b5 : bArrInternalArray) {
                        if (b4 == b5) {
                            return j2 + ((long) (i5 - segment.pos));
                        }
                    }
                }
                j2 += (long) (segment.limit - segment.pos);
                segment = segment.next;
                j = j2;
            }
        }
        return -1L;
    }

    @Override // okio.BufferedSource
    public InputStream inputStream() {
        return new InputStream(this) { // from class: okio.Buffer.2
            final Buffer this$0;

            {
                this.this$0 = this;
            }

            @Override // java.io.InputStream
            public int available() {
                return (int) Math.min(this.this$0.size, 2147483647L);
            }

            @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
            }

            @Override // java.io.InputStream
            public int read() {
                if (this.this$0.size > 0) {
                    return this.this$0.readByte() & 255;
                }
                return -1;
            }

            @Override // java.io.InputStream
            public int read(byte[] bArr, int i, int i2) {
                return this.this$0.read(bArr, i, i2);
            }

            public String toString() {
                return this.this$0 + NPStringFog.decode(new byte[]{29, 92, 88, 20, 22, 77, 96, 65, 68, 1, 2, 84, 27, 28}, "356dc9", true, false);
            }
        };
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return true;
    }

    public final ByteString md5() {
        return digest(NPStringFog.decode(new byte[]{117, 119, 87}, "83b4b8", 10321));
    }

    @Override // okio.BufferedSink
    public OutputStream outputStream() {
        return new OutputStream(this) { // from class: okio.Buffer.1
            final Buffer this$0;

            {
                this.this$0 = this;
            }

            @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
            }

            @Override // java.io.OutputStream, java.io.Flushable
            public void flush() {
            }

            public String toString() {
                return this.this$0 + NPStringFog.decode(new byte[]{79, 88, 17, 68, 71, 19, 21, 100, 16, 66, 82, 7, 12, 31, 77}, "a7d07f", -1.107600805E9d);
            }

            @Override // java.io.OutputStream
            public void write(int i) {
                this.this$0.writeByte((int) ((byte) i));
            }

            @Override // java.io.OutputStream
            public void write(byte[] bArr, int i, int i2) {
                this.this$0.write(bArr, i, i2);
            }
        };
    }

    @Override // okio.BufferedSource
    public BufferedSource peek() {
        return Okio.buffer(new PeekSource(this));
    }

    @Override // okio.BufferedSource
    public boolean rangeEquals(long j, ByteString byteString) {
        return rangeEquals(j, byteString, 0, byteString.size());
    }

    @Override // okio.BufferedSource
    public boolean rangeEquals(long j, ByteString byteString, int i, int i2) {
        if (j < 0 || i < 0 || i2 < 0 || this.size - j < i2 || byteString.size() - i < i2) {
            return false;
        }
        for (int i3 = 0; i3 < i2; i3++) {
            if (getByte(((long) i3) + j) != byteString.getByte(i + i3)) {
                return false;
            }
        }
        return true;
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) throws IOException {
        Segment segment = this.head;
        if (segment == null) {
            return -1;
        }
        int iMin = Math.min(byteBuffer.remaining(), segment.limit - segment.pos);
        byteBuffer.put(segment.data, segment.pos, iMin);
        segment.pos += iMin;
        this.size -= (long) iMin;
        if (segment.pos != segment.limit) {
            return iMin;
        }
        this.head = segment.pop();
        SegmentPool.recycle(segment);
        return iMin;
    }

    @Override // okio.BufferedSource
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // okio.BufferedSource
    public int read(byte[] bArr, int i, int i2) {
        Util.checkOffsetAndCount(bArr.length, i, i2);
        Segment segment = this.head;
        if (segment == null) {
            return -1;
        }
        int iMin = Math.min(i2, segment.limit - segment.pos);
        System.arraycopy(segment.data, segment.pos, bArr, i, iMin);
        segment.pos += iMin;
        this.size -= (long) iMin;
        if (segment.pos != segment.limit) {
            return iMin;
        }
        this.head = segment.pop();
        SegmentPool.recycle(segment);
        return iMin;
    }

    @Override // okio.Source
    public long read(Buffer buffer, long j) {
        if (buffer == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{74, 91, 86, 8, 18, 11, 4, 18, 86, 22, 94, 90}, "928c26", false, true));
        }
        if (j < 0) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{81, 65, 17, 85, 32, 95, 70, 86, 17, 16, 95, 16, 3, 2, 69}, "38e0c0", -6.20513654E8d) + j);
        }
        if (this.size == 0) {
            return -1L;
        }
        long j2 = j > this.size ? this.size : j;
        buffer.write(this, j2);
        return j2;
    }

    @Override // okio.BufferedSource
    public long readAll(Sink sink) throws IOException {
        long j = this.size;
        if (j > 0) {
            sink.write(this, j);
        }
        return j;
    }

    public final UnsafeCursor readAndWriteUnsafe() {
        return readAndWriteUnsafe(new UnsafeCursor());
    }

    public final UnsafeCursor readAndWriteUnsafe(UnsafeCursor unsafeCursor) {
        if (unsafeCursor.buffer != null) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{83, 88, 20, 82, 83, 0, 75, 20, 7, 67, 70, 5, 81, 92, 3, 83, 18, 16, 93, 20, 7, 23, 80, 17, 84, 82, 3, 69}, "24f72d", 9.582055E8f));
        }
        unsafeCursor.buffer = this;
        unsafeCursor.readWrite = true;
        return unsafeCursor;
    }

    @Override // okio.BufferedSource
    public byte readByte() {
        if (this.size == 0) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{69, 80, 79, 83, 20, 8, 11, 25, 5}, "695645", true, false));
        }
        Segment segment = this.head;
        int i = segment.pos;
        int i2 = segment.limit;
        int i3 = i + 1;
        byte b = segment.data[i];
        this.size--;
        if (i3 == i2) {
            this.head = segment.pop();
            SegmentPool.recycle(segment);
        } else {
            segment.pos = i3;
        }
        return b;
    }

    @Override // okio.BufferedSource
    public byte[] readByteArray() {
        try {
            return readByteArray(this.size);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    @Override // okio.BufferedSource
    public byte[] readByteArray(long j) throws EOFException {
        Util.checkOffsetAndCount(this.size, 0L, j);
        if (j > 2147483647L) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{6, 73, 65, 83, 117, 88, 17, 94, 65, 22, 8, 23, 45, 94, 65, 83, 81, 82, 22, 30, 120, 119, 110, 104, 50, 113, 121, 99, 115, 13, 68}, "d05667", -2061717013L) + j);
        }
        byte[] bArr = new byte[(int) j];
        readFully(bArr);
        return bArr;
    }

    @Override // okio.BufferedSource
    public ByteString readByteString() {
        return new ByteString(readByteArray());
    }

    @Override // okio.BufferedSource
    public ByteString readByteString(long j) throws EOFException {
        return new ByteString(readByteArray(j));
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x00df  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00f2 A[EDGE_INSN: B:47:0x00f2->B:39:0x00f2 BREAK  A[LOOP:0: B:7:0x0029->B:49:?], SYNTHETIC] */
    @Override // okio.BufferedSource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long readDecimalLong() {
        /*
            Method dump skipped, instruction units count: 313
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Buffer.readDecimalLong():long");
    }

    public final Buffer readFrom(InputStream inputStream) throws IOException {
        readFrom(inputStream, LocationRequestCompat.PASSIVE_INTERVAL, true);
        return this;
    }

    public final Buffer readFrom(InputStream inputStream, long j) throws IOException {
        if (j < 0) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{3, 31, 21, 92, 38, 94, 20, 8, 21, 25, 89, 17, 81, 92, 65}, "afa9e1", 9.48785133E8d) + j);
        }
        readFrom(inputStream, j, false);
        return this;
    }

    @Override // okio.BufferedSource
    public void readFully(Buffer buffer, long j) throws EOFException {
        if (this.size < j) {
            buffer.write(this, this.size);
            throw new EOFException();
        }
        buffer.write(this, j);
    }

    @Override // okio.BufferedSource
    public void readFully(byte[] bArr) throws EOFException {
        int i = 0;
        while (i < bArr.length) {
            int i2 = read(bArr, i, bArr.length - i);
            if (i2 == -1) {
                throw new EOFException();
            }
            i += i2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00cf A[EDGE_INSN: B:43:0x00cf->B:37:0x00cf BREAK  A[LOOP:0: B:7:0x0021->B:45:?], SYNTHETIC] */
    @Override // okio.BufferedSource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long readHexadecimalUnsignedLong() {
        /*
            Method dump skipped, instruction units count: 283
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Buffer.readHexadecimalUnsignedLong():long");
    }

    @Override // okio.BufferedSource
    public int readInt() {
        if (this.size < 4) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{22, 92, 72, 0, 18, 94, 69, 1, 8, 69}, "e52e2b", true, true) + this.size);
        }
        Segment segment = this.head;
        int i = segment.pos;
        int i2 = segment.limit;
        if (i2 - i < 4) {
            return ((readByte() & 255) << 24) | ((readByte() & 255) << 16) | ((readByte() & 255) << 8) | (readByte() & 255);
        }
        byte[] bArr = segment.data;
        int i3 = i + 1;
        int i4 = i3 + 1;
        int i5 = i4 + 1;
        int i6 = i5 + 1;
        int i7 = ((bArr[i] & 255) << 24) | ((bArr[i3] & 255) << 16) | ((bArr[i4] & 255) << 8) | (bArr[i5] & 255);
        this.size -= 4;
        if (i6 != i2) {
            segment.pos = i6;
            return i7;
        }
        this.head = segment.pop();
        SegmentPool.recycle(segment);
        return i7;
    }

    @Override // okio.BufferedSource
    public int readIntLe() {
        return Util.reverseBytesInt(readInt());
    }

    @Override // okio.BufferedSource
    public long readLong() {
        if (this.size < 8) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{18, 90, 66, 83, 68, 15, 65, 11, 2, 22}, "a386d3", 1.420974725E9d) + this.size);
        }
        Segment segment = this.head;
        int i = segment.pos;
        int i2 = segment.limit;
        if (i2 - i < 8) {
            return ((((long) readInt()) & 4294967295L) << 32) | (((long) readInt()) & 4294967295L);
        }
        byte[] bArr = segment.data;
        int i3 = i + 1;
        long j = bArr[i];
        int i4 = i3 + 1;
        long j2 = bArr[i3];
        int i5 = i4 + 1;
        long j3 = bArr[i4];
        int i6 = i5 + 1;
        long j4 = bArr[i5];
        int i7 = i6 + 1;
        long j5 = bArr[i6];
        int i8 = i7 + 1;
        int i9 = i8 + 1;
        int i10 = i9 + 1;
        long j6 = (((long) bArr[i9]) & 255) | ((j2 & 255) << 48) | ((j & 255) << 56) | ((255 & j3) << 40) | ((255 & j4) << 32) | ((255 & j5) << 24) | ((255 & ((long) bArr[i7])) << 16) | ((255 & ((long) bArr[i8])) << 8);
        this.size -= 8;
        if (i10 != i2) {
            segment.pos = i10;
            return j6;
        }
        this.head = segment.pop();
        SegmentPool.recycle(segment);
        return j6;
    }

    @Override // okio.BufferedSource
    public long readLongLe() {
        return Util.reverseBytesLong(readLong());
    }

    @Override // okio.BufferedSource
    public short readShort() {
        if (this.size < 2) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{65, 88, 30, 84, 69, 95, 18, 3, 94, 17}, "21d1ec", -3099) + this.size);
        }
        Segment segment = this.head;
        int i = segment.pos;
        int i2 = segment.limit;
        if (i2 - i < 2) {
            return (short) (((readByte() & 255) << 8) | (readByte() & 255));
        }
        byte[] bArr = segment.data;
        int i3 = i + 1;
        byte b = bArr[i];
        int i4 = i3 + 1;
        byte b2 = bArr[i3];
        this.size -= 2;
        if (i4 == i2) {
            this.head = segment.pop();
            SegmentPool.recycle(segment);
        } else {
            segment.pos = i4;
        }
        return (short) (((b & 255) << 8) | (b2 & 255));
    }

    @Override // okio.BufferedSource
    public short readShortLe() {
        return Util.reverseBytesShort(readShort());
    }

    @Override // okio.BufferedSource
    public String readString(long j, Charset charset) throws EOFException {
        Util.checkOffsetAndCount(this.size, 0L, j);
        if (charset == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{86, 12, 87, 20, 71, 85, 65, 68, 11, 91, 20, 94, 64, 8, 90}, "5d6f40", -1425114133L));
        }
        if (j > 2147483647L) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{82, 77, 64, 7, 37, 94, 69, 90, 64, 66, 88, 17, 121, 90, 64, 7, 1, 84, 66, 26, 121, 35, 62, 110, 102, 117, 120, 55, 35, 11, 16}, "044bf1", false) + j);
        }
        if (j == 0) {
            return "";
        }
        Segment segment = this.head;
        if (((long) segment.pos) + j > segment.limit) {
            return new String(readByteArray(j), charset);
        }
        String str = new String(segment.data, segment.pos, (int) j, charset);
        segment.pos = (int) (((long) segment.pos) + j);
        this.size -= j;
        if (segment.pos != segment.limit) {
            return str;
        }
        this.head = segment.pop();
        SegmentPool.recycle(segment);
        return str;
    }

    @Override // okio.BufferedSource
    public String readString(Charset charset) {
        try {
            return readString(this.size, charset);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    public final UnsafeCursor readUnsafe() {
        return readUnsafe(new UnsafeCursor());
    }

    public final UnsafeCursor readUnsafe(UnsafeCursor unsafeCursor) {
        if (unsafeCursor.buffer != null) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{80, 93, 67, 0, 85, 82, 72, 17, 80, 17, 64, 87, 82, 89, 84, 1, 20, 66, 94, 17, 80, 69, 86, 67, 87, 87, 84, 23}, "111e46", 4037));
        }
        unsafeCursor.buffer = this;
        unsafeCursor.readWrite = false;
        return unsafeCursor;
    }

    @Override // okio.BufferedSource
    public String readUtf8() {
        try {
            return readString(this.size, Util.UTF_8);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    @Override // okio.BufferedSource
    public String readUtf8(long j) throws EOFException {
        return readString(j, Util.UTF_8);
    }

    @Override // okio.BufferedSource
    public int readUtf8CodePoint() throws EOFException {
        int i;
        int i2;
        int i3;
        if (this.size == 0) {
            throw new EOFException();
        }
        byte b = getByte(0L);
        if ((b & 128) == 0) {
            i2 = 1;
            i = b & 127;
            i3 = 0;
        } else if ((b & 224) == 192) {
            i2 = 2;
            i = b & 31;
            i3 = 128;
        } else if ((b & 240) == 224) {
            i = b & 15;
            i2 = 3;
            i3 = 2048;
        } else {
            if ((b & 248) != 240) {
                skip(1L);
                return REPLACEMENT_CHARACTER;
            }
            i = b & 7;
            i2 = 4;
            i3 = 65536;
        }
        if (this.size < i2) {
            throw new EOFException(NPStringFog.decode(new byte[]{21, 13, 66, 85, 17, 10, 70}, "fd8016", false, true) + i2 + NPStringFog.decode(new byte[]{13, 65}, "7ab896", true, true) + this.size + NPStringFog.decode(new byte[]{16, 26, 17, 13, 67, 69, 85, 83, 1, 66, 0, 88, 84, 87, 69, 18, 12, 94, 94, 70, 69, 18, 17, 82, 86, 91, 29, 7, 7, 23, 0, 74}, "02ebc7", true) + Integer.toHexString(b) + NPStringFog.decode(new byte[]{16}, "9df6bf", true));
        }
        int i4 = i;
        for (int i5 = 1; i5 < i2; i5++) {
            byte b2 = getByte(i5);
            if ((b2 & 192) != 128) {
                skip(i5);
                return REPLACEMENT_CHARACTER;
            }
            i4 = (i4 << 6) | (b2 & 63);
        }
        skip(i2);
        if (i4 > 1114111) {
            return REPLACEMENT_CHARACTER;
        }
        if ((i4 < 55296 || i4 > 57343) && i4 >= i3) {
            return i4;
        }
        return REPLACEMENT_CHARACTER;
    }

    @Override // okio.BufferedSource
    @Nullable
    public String readUtf8Line() throws EOFException {
        long jIndexOf = indexOf((byte) 10);
        if (jIndexOf != -1) {
            return readUtf8Line(jIndexOf);
        }
        if (this.size != 0) {
            return readUtf8(this.size);
        }
        return null;
    }

    String readUtf8Line(long j) throws EOFException {
        if (j <= 0 || getByte(j - 1) != 13) {
            String utf8 = readUtf8(j);
            skip(1L);
            return utf8;
        }
        String utf82 = readUtf8(j - 1);
        skip(2L);
        return utf82;
    }

    @Override // okio.BufferedSource
    public String readUtf8LineStrict() throws EOFException {
        return readUtf8LineStrict(LocationRequestCompat.PASSIVE_INTERVAL);
    }

    @Override // okio.BufferedSource
    public String readUtf8LineStrict(long j) throws EOFException {
        long j2 = LocationRequestCompat.PASSIVE_INTERVAL;
        if (j < 0) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{15, 81, 89, 81, 77, 19, 95, 24, 4, 2, 25}, "c84893", -1.0450898E7d) + j);
        }
        if (j != LocationRequestCompat.PASSIVE_INTERVAL) {
            j2 = j + 1;
        }
        long jIndexOf = indexOf((byte) 10, 0L, j2);
        if (jIndexOf != -1) {
            return readUtf8Line(jIndexOf);
        }
        if (j2 < size() && getByte(j2 - 1) == 13 && getByte(j2) == 10) {
            return readUtf8Line(j2);
        }
        Buffer buffer = new Buffer();
        copyTo(buffer, 0L, Math.min(32L, size()));
        throw new EOFException(NPStringFog.decode(new byte[]{101, 91, 19, 88, 87, 67, 25, 83, 92, 67, 86, 83, 3, 21, 95, 95, 85, 94, 77, 8}, "953687", -9.205651E8f) + Math.min(size(), j) + NPStringFog.decode(new byte[]{20, 7, 10, 90, 66, 0, 90, 16, 88}, "4de46e", true) + buffer.readByteString().hex() + (char) 8230);
    }

    @Override // okio.BufferedSource
    public boolean request(long j) {
        return this.size >= j;
    }

    @Override // okio.BufferedSource
    public void require(long j) throws EOFException {
        if (this.size < j) {
            throw new EOFException();
        }
    }

    List<Integer> segmentSizes() {
        if (this.head == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(Integer.valueOf(this.head.limit - this.head.pos));
        for (Segment segment = this.head.next; segment != this.head; segment = segment.next) {
            arrayList.add(Integer.valueOf(segment.limit - segment.pos));
        }
        return arrayList;
    }

    @Override // okio.BufferedSource
    public int select(Options options) {
        int iSelectPrefix = selectPrefix(options, false);
        if (iSelectPrefix == -1) {
            return -1;
        }
        try {
            skip(options.byteStrings[iSelectPrefix].size());
            return iSelectPrefix;
        } catch (EOFException e) {
            throw new AssertionError();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0028, code lost:
    
        if (r16 == false) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x002a, code lost:
    
        return -2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:?, code lost:
    
        return r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    int selectPrefix(okio.Options r15, boolean r16) {
        /*
            r14 = this;
            okio.Segment r6 = r14.head
            if (r6 != 0) goto Lf
            if (r16 == 0) goto L8
            r0 = -2
        L7:
            return r0
        L8:
            okio.ByteString r0 = okio.ByteString.EMPTY
            int r0 = r15.indexOf(r0)
            goto L7
        Lf:
            byte[] r3 = r6.data
            int r4 = r6.pos
            int r2 = r6.limit
            int[] r10 = r15.trie
            r1 = 0
            r0 = -1
            r5 = r6
        L1a:
            int r8 = r1 + 1
            r11 = r10[r1]
            int r7 = r8 + 1
            r1 = r10[r8]
            r8 = -1
            if (r1 == r8) goto L26
            r0 = r1
        L26:
            if (r5 != 0) goto L2c
        L28:
            if (r16 == 0) goto L7
            r0 = -2
            goto L7
        L2c:
            if (r11 >= 0) goto L69
            r1 = r7
            r13 = r2
            r2 = r4
            r4 = r3
            r3 = r13
        L33:
            int r8 = r2 + 1
            r9 = r4[r2]
            int r2 = r1 + 1
            r9 = r9 & 255(0xff, float:3.57E-43)
            r1 = r10[r1]
            if (r9 != r1) goto L7
            int r1 = r11 * (-1)
            int r1 = r1 + r7
            if (r2 != r1) goto L60
            r1 = 1
            r9 = r1
        L46:
            if (r8 != r3) goto L90
            okio.Segment r5 = r5.next
            int r4 = r5.pos
            byte[] r3 = r5.data
            int r1 = r5.limit
            if (r5 != r6) goto L55
            if (r9 == 0) goto L28
            r5 = 0
        L55:
            if (r9 == 0) goto L63
            r2 = r10[r2]
            r13 = r2
            r2 = r1
            r1 = r13
        L5c:
            if (r1 < 0) goto L8c
            r0 = r1
            goto L7
        L60:
            r1 = 0
            r9 = r1
            goto L46
        L63:
            r13 = r2
            r2 = r4
            r4 = r3
            r3 = r1
            r1 = r13
            goto L33
        L69:
            int r8 = r4 + 1
            r4 = r3[r4]
            r1 = r7
        L6e:
            int r9 = r7 + r11
            if (r1 == r9) goto L7
            r9 = r4 & 255(0xff, float:3.57E-43)
            r12 = r10[r1]
            if (r9 != r12) goto L89
            int r1 = r1 + r11
            r1 = r10[r1]
            if (r8 != r2) goto L8e
            okio.Segment r5 = r5.next
            int r4 = r5.pos
            byte[] r3 = r5.data
            int r2 = r5.limit
            if (r5 != r6) goto L5c
            r5 = 0
            goto L5c
        L89:
            int r1 = r1 + 1
            goto L6e
        L8c:
            int r1 = -r1
            goto L1a
        L8e:
            r4 = r8
            goto L5c
        L90:
            r1 = r3
            r3 = r4
            r4 = r8
            goto L55
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Buffer.selectPrefix(okio.Options, boolean):int");
    }

    public final ByteString sha1() {
        return digest(NPStringFog.decode(new byte[]{96, 44, 114, 78, 3}, "3d3c26", 4.43703154E8d));
    }

    public final ByteString sha256() {
        return digest(NPStringFog.decode(new byte[]{96, 45, 36, 21, 11, 81, 5}, "3ee89d", 5.451533E8f));
    }

    public final ByteString sha512() {
        return digest(NPStringFog.decode(new byte[]{99, 126, 114, 30, 81, 1, 2}, "0633d0", 31277));
    }

    public final long size() {
        return this.size;
    }

    @Override // okio.BufferedSource
    public void skip(long j) throws EOFException {
        while (j > 0) {
            if (this.head == null) {
                throw new EOFException();
            }
            int iMin = (int) Math.min(j, this.head.limit - this.head.pos);
            this.size -= (long) iMin;
            j -= (long) iMin;
            Segment segment = this.head;
            segment.pos = iMin + segment.pos;
            if (this.head.pos == this.head.limit) {
                Segment segment2 = this.head;
                this.head = segment2.pop();
                SegmentPool.recycle(segment2);
            }
        }
    }

    public final ByteString snapshot() {
        if (this.size > 2147483647L) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{67, 11, 79, 87, 24, 91, 16, 43, 91, 70, 93, 2, 85, 16, 27, 127, 121, 61, 111, 52, 116, 126, 109, 32, 10, 66}, "0b528e", -1934651428L) + this.size);
        }
        return snapshot((int) this.size);
    }

    public final ByteString snapshot(int i) {
        return i == 0 ? ByteString.EMPTY : new SegmentedByteString(this, i);
    }

    @Override // okio.Source
    public Timeout timeout() {
        return Timeout.NONE;
    }

    public String toString() {
        return snapshot().toString();
    }

    Segment writableSegment(int i) {
        if (i < 1 || i > 8192) {
            throw new IllegalArgumentException();
        }
        if (this.head != null) {
            Segment segment = this.head.prev;
            return (segment.limit + i > 8192 || !segment.owner) ? segment.push(SegmentPool.take()) : segment;
        }
        this.head = SegmentPool.take();
        Segment segment2 = this.head;
        Segment segment3 = this.head;
        Segment segment4 = this.head;
        segment3.prev = segment4;
        segment2.next = segment4;
        return segment4;
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{66, 9, 76, 74, 81, 83, 17, 91, 4, 24, 92, 67, 93, 10}, "1f9826", -1936413815L));
        }
        int iRemaining = byteBuffer.remaining();
        int i = iRemaining;
        while (i > 0) {
            Segment segmentWritableSegment = writableSegment(1);
            int iMin = Math.min(i, 8192 - segmentWritableSegment.limit);
            byteBuffer.get(segmentWritableSegment.data, segmentWritableSegment.limit, iMin);
            i -= iMin;
            segmentWritableSegment.limit = iMin + segmentWritableSegment.limit;
        }
        this.size += (long) iRemaining;
        return iRemaining;
    }

    @Override // okio.BufferedSink
    public Buffer write(ByteString byteString) {
        if (byteString == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{6, 79, 67, 7, 53, 71, 22, 95, 89, 5, 70, 14, 89, 22, 89, 23, 10, 95}, "d67bf3", false));
        }
        byteString.write(this);
        return this;
    }

    @Override // okio.BufferedSink
    public Buffer write(byte[] bArr) {
        if (bArr == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{66, 87, 16, 74, 81, 80, 17, 5, 88, 24, 92, 64, 93, 84}, "18e825", 1852389905L));
        }
        return write(bArr, 0, bArr.length);
    }

    @Override // okio.BufferedSink
    public Buffer write(byte[] bArr, int i, int i2) {
        if (bArr == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{65, 95, 19, 71, 86, 7, 18, 13, 91, 21, 91, 23, 94, 92}, "20f55b", 7026));
        }
        Util.checkOffsetAndCount(bArr.length, i, i2);
        int i3 = i + i2;
        while (i < i3) {
            Segment segmentWritableSegment = writableSegment(1);
            int iMin = Math.min(i3 - i, 8192 - segmentWritableSegment.limit);
            System.arraycopy(bArr, i, segmentWritableSegment.data, segmentWritableSegment.limit, iMin);
            i += iMin;
            segmentWritableSegment.limit = iMin + segmentWritableSegment.limit;
        }
        this.size += (long) i2;
        return this;
    }

    @Override // okio.BufferedSink
    public BufferedSink write(Source source, long j) throws IOException {
        while (j > 0) {
            long j2 = source.read(this, j);
            if (j2 == -1) {
                throw new EOFException();
            }
            j -= j2;
        }
        return this;
    }

    @Override // okio.Sink
    public void write(Buffer buffer, long j) {
        if (buffer == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{65, 89, 19, 19, 87, 80, 18, 11, 91, 65, 90, 64, 94, 90}, "26fa45", 1332708027L));
        }
        if (buffer == this) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{16, 94, 20, 71, 0, 6, 67, 12, 92, 21, 23, 11, 10, 66}, "c1a5cc", 1.451587E9f));
        }
        Util.checkOffsetAndCount(buffer.size, 0L, j);
        while (j > 0) {
            if (j < buffer.head.limit - buffer.head.pos) {
                Segment segment = this.head != null ? this.head.prev : null;
                if (segment != null && segment.owner) {
                    if ((((long) segment.limit) + j) - ((long) (segment.shared ? 0 : segment.pos)) <= 8192) {
                        buffer.head.writeTo(segment, (int) j);
                        buffer.size -= j;
                        this.size += j;
                        return;
                    }
                }
                buffer.head = buffer.head.split((int) j);
            }
            Segment segment2 = buffer.head;
            long j2 = segment2.limit - segment2.pos;
            buffer.head = segment2.pop();
            if (this.head == null) {
                this.head = segment2;
                Segment segment3 = this.head;
                Segment segment4 = this.head;
                Segment segment5 = this.head;
                segment4.prev = segment5;
                segment3.next = segment5;
            } else {
                this.head.prev.push(segment2).compact();
            }
            buffer.size -= j2;
            this.size += j2;
            j -= j2;
        }
    }

    @Override // okio.BufferedSink
    public long writeAll(Source source) throws IOException {
        if (source == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{16, 86, 76, 68, 2, 87, 67, 4, 4, 22, 15, 71, 15, 85}, "c996a2", -7.3270694E8f));
        }
        long j = 0;
        while (true) {
            long j2 = source.read(this, 8192L);
            if (j2 == -1) {
                return j;
            }
            j += j2;
        }
    }

    @Override // okio.BufferedSink
    public Buffer writeByte(int i) {
        Segment segmentWritableSegment = writableSegment(1);
        byte[] bArr = segmentWritableSegment.data;
        int i2 = segmentWritableSegment.limit;
        segmentWritableSegment.limit = i2 + 1;
        bArr[i2] = (byte) i;
        this.size++;
        return this;
    }

    @Override // okio.BufferedSink
    public Buffer writeDecimalLong(long j) {
        long j2;
        boolean z;
        if (j == 0) {
            return writeByte(48);
        }
        if (j < 0) {
            j2 = -j;
            if (j2 < 0) {
                return writeUtf8(NPStringFog.decode(new byte[]{76, 0, 3, 11, 86, 85, 86, 11, 1, 10, 83, 94, 84, 13, 6, 14, 80, 94, 81, 1}, "a919ef", true, true));
            }
            z = true;
        } else {
            j2 = j;
            z = false;
        }
        int i = j2 < 100000000 ? j2 < 10000 ? j2 < 100 ? j2 < 10 ? 1 : 2 : j2 < 1000 ? 3 : 4 : j2 < 1000000 ? j2 < 100000 ? 5 : 6 : j2 < 10000000 ? 7 : 8 : j2 < 1000000000000L ? j2 < 10000000000L ? j2 < 1000000000 ? 9 : 10 : j2 < 100000000000L ? 11 : 12 : j2 < 1000000000000000L ? j2 < 10000000000000L ? 13 : j2 < 100000000000000L ? 14 : 15 : j2 < 100000000000000000L ? j2 < 10000000000000000L ? 16 : 17 : j2 < 1000000000000000000L ? 18 : 19;
        if (z) {
            i++;
        }
        Segment segmentWritableSegment = writableSegment(i);
        byte[] bArr = segmentWritableSegment.data;
        int i2 = segmentWritableSegment.limit + i;
        while (j2 != 0) {
            i2--;
            bArr[i2] = DIGITS[(int) (j2 % 10)];
            j2 /= 10;
        }
        if (z) {
            bArr[i2 - 1] = (byte) 45;
        }
        segmentWritableSegment.limit += i;
        this.size = ((long) i) + this.size;
        return this;
    }

    @Override // okio.BufferedSink
    public Buffer writeHexadecimalUnsignedLong(long j) {
        if (j == 0) {
            return writeByte(48);
        }
        int iNumberOfTrailingZeros = (Long.numberOfTrailingZeros(Long.highestOneBit(j)) / 4) + 1;
        Segment segmentWritableSegment = writableSegment(iNumberOfTrailingZeros);
        byte[] bArr = segmentWritableSegment.data;
        int i = segmentWritableSegment.limit;
        for (int i2 = (segmentWritableSegment.limit + iNumberOfTrailingZeros) - 1; i2 >= i; i2--) {
            bArr[i2] = DIGITS[(int) (15 & j)];
            j >>>= 4;
        }
        segmentWritableSegment.limit += iNumberOfTrailingZeros;
        this.size = ((long) iNumberOfTrailingZeros) + this.size;
        return this;
    }

    @Override // okio.BufferedSink
    public Buffer writeInt(int i) {
        Segment segmentWritableSegment = writableSegment(4);
        byte[] bArr = segmentWritableSegment.data;
        int i2 = segmentWritableSegment.limit;
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((i >>> 24) & 255);
        int i4 = i3 + 1;
        bArr[i3] = (byte) ((i >>> 16) & 255);
        int i5 = i4 + 1;
        bArr[i4] = (byte) ((i >>> 8) & 255);
        bArr[i5] = (byte) (i & 255);
        segmentWritableSegment.limit = i5 + 1;
        this.size += 4;
        return this;
    }

    @Override // okio.BufferedSink
    public Buffer writeIntLe(int i) {
        return writeInt(Util.reverseBytesInt(i));
    }

    @Override // okio.BufferedSink
    public Buffer writeLong(long j) {
        Segment segmentWritableSegment = writableSegment(8);
        byte[] bArr = segmentWritableSegment.data;
        int i = segmentWritableSegment.limit;
        int i2 = i + 1;
        bArr[i] = (byte) ((j >>> 56) & 255);
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((j >>> 48) & 255);
        int i4 = i3 + 1;
        bArr[i3] = (byte) ((j >>> 40) & 255);
        int i5 = i4 + 1;
        bArr[i4] = (byte) ((j >>> 32) & 255);
        int i6 = i5 + 1;
        bArr[i5] = (byte) ((j >>> 24) & 255);
        int i7 = i6 + 1;
        bArr[i6] = (byte) ((j >>> 16) & 255);
        int i8 = i7 + 1;
        bArr[i7] = (byte) ((j >>> 8) & 255);
        bArr[i8] = (byte) (j & 255);
        segmentWritableSegment.limit = i8 + 1;
        this.size += 8;
        return this;
    }

    @Override // okio.BufferedSink
    public Buffer writeLongLe(long j) {
        return writeLong(Util.reverseBytesLong(j));
    }

    @Override // okio.BufferedSink
    public Buffer writeShort(int i) {
        Segment segmentWritableSegment = writableSegment(2);
        byte[] bArr = segmentWritableSegment.data;
        int i2 = segmentWritableSegment.limit;
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((i >>> 8) & 255);
        bArr[i3] = (byte) (i & 255);
        segmentWritableSegment.limit = i3 + 1;
        this.size += 2;
        return this;
    }

    @Override // okio.BufferedSink
    public Buffer writeShortLe(int i) {
        return writeShort((int) Util.reverseBytesShort((short) i));
    }

    @Override // okio.BufferedSink
    public Buffer writeString(String str, int i, int i2, Charset charset) {
        if (str == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{22, 65, 17, 94, 12, 82, 69, 8, 94, 23, 12, 64, 9, 89}, "e5c7b5", 1084000798L));
        }
        if (i < 0) {
            throw new IllegalAccessError(NPStringFog.decode(new byte[]{87, 84, 86, 90, 86, 42, 91, 85, 84, 75, 24, 95, 21, 1, 11, 19}, "51138c", -1.0811462E9f) + i);
        }
        if (i2 < i) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{85, 12, 82, 40, 8, 0, 85, 26, 22, 93, 70, 6, 85, 5, 95, 15, 47, 10, 84, 7, 78, 91, 70}, "0b6afd", 19591) + i2 + NPStringFog.decode(new byte[]{19, 14, 69}, "32e887", false, true) + i);
        }
        if (i2 > str.length()) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{7, 92, 82, 47, 92, 7, 7, 74, 22, 88, 18, 16, 22, 64, 95, 8, 85, 77, 14, 87, 88, 1, 70, 11, 88, 18}, "b26f2c", false) + i2 + NPStringFog.decode(new byte[]{69, 91, 67}, "eecdc8", false) + str.length());
        }
        if (charset == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{83, 95, 86, 17, 21, 93, 68, 23, 10, 94, 70, 86, 69, 91, 91}, "077cf8", false));
        }
        if (charset.equals(Util.UTF_8)) {
            return writeUtf8(str, i, i2);
        }
        byte[] bytes = str.substring(i, i2).getBytes(charset);
        return write(bytes, 0, bytes.length);
    }

    @Override // okio.BufferedSink
    public Buffer writeString(String str, Charset charset) {
        return writeString(str, 0, str.length(), charset);
    }

    public final Buffer writeTo(OutputStream outputStream) throws IOException {
        return writeTo(outputStream, this.size);
    }

    public final Buffer writeTo(OutputStream outputStream, long j) throws IOException {
        if (outputStream == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{11, 68, 17, 69, 91, 89, 68, 95, 16, 9, 10}, "d1eefd", true));
        }
        Util.checkOffsetAndCount(this.size, 0L, j);
        Segment segment = this.head;
        while (j > 0) {
            int iMin = (int) Math.min(j, segment.limit - segment.pos);
            outputStream.write(segment.data, segment.pos, iMin);
            segment.pos += iMin;
            this.size -= (long) iMin;
            j -= (long) iMin;
            if (segment.pos == segment.limit) {
                Segment segmentPop = segment.pop();
                this.head = segmentPop;
                SegmentPool.recycle(segment);
                segment = segmentPop;
            }
        }
        return this;
    }

    @Override // okio.BufferedSink
    public Buffer writeUtf8(String str) {
        return writeUtf8(str, 0, str.length());
    }

    @Override // okio.BufferedSink
    public Buffer writeUtf8(String str, int i, int i2) {
        int i3;
        if (str == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{23, 64, 20, 81, 12, 83, 68, 9, 91, 24, 12, 65, 8, 88}, "d4f8b4", -1.473167793E9d));
        }
        if (i < 0) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{1, 93, 1, 94, 87, 120, 13, 92, 3, 79, 25, 13, 67, 8, 92, 23}, "c8f791", -2106494612L) + i);
        }
        if (i2 < i) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{82, 93, 87, 122, 87, 86, 82, 75, 19, 15, 25, 80, 82, 84, 90, 93, 112, 92, 83, 86, 75, 9, 25}, "733392", false, true) + i2 + NPStringFog.decode(new byte[]{70, 90, 70}, "fff05b", -9.82076067E8d) + i);
        }
        if (i2 > str.length()) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{87, 92, 85, 40, 15, 2, 87, 74, 17, 95, 65, 21, 70, 64, 88, 15, 6, 72, 94, 87, 95, 6, 21, 14, 8, 18}, "221aaf", -1.7309898E9f) + i2 + NPStringFog.decode(new byte[]{24, 92, 22}, "8b61ba", 16443) + str.length());
        }
        while (i < i2) {
            char cCharAt = str.charAt(i);
            if (cCharAt < 128) {
                Segment segmentWritableSegment = writableSegment(1);
                byte[] bArr = segmentWritableSegment.data;
                int i4 = segmentWritableSegment.limit - i;
                int iMin = Math.min(i2, 8192 - i4);
                bArr[i4 + i] = (byte) cCharAt;
                i3 = i + 1;
                while (i3 < iMin) {
                    if (str.charAt(i3) >= 128) {
                        break;
                    }
                    bArr[i4 + i3] = (byte) r2;
                    i3++;
                }
                int i5 = (i3 + i4) - segmentWritableSegment.limit;
                segmentWritableSegment.limit += i5;
                this.size = ((long) i5) + this.size;
            } else if (cCharAt < 2048) {
                writeByte((cCharAt >> 6) | 192);
                writeByte((cCharAt & '?') | 128);
                i3 = i + 1;
            } else if (cCharAt < 55296 || cCharAt > 57343) {
                writeByte((cCharAt >> '\f') | 224);
                writeByte(((cCharAt >> 6) & 63) | 128);
                writeByte((cCharAt & '?') | 128);
                i3 = i + 1;
            } else {
                char cCharAt2 = i + 1 < i2 ? str.charAt(i + 1) : (char) 0;
                if (cCharAt > 56319 || cCharAt2 < 56320 || cCharAt2 > 57343) {
                    writeByte(63);
                    i++;
                } else {
                    int i6 = ((cCharAt2 & 9215) | ((cCharAt & 10239) << 10)) + 65536;
                    writeByte((i6 >> 18) | 240);
                    writeByte(((i6 >> 12) & 63) | 128);
                    writeByte(((i6 >> 6) & 63) | 128);
                    writeByte((i6 & 63) | 128);
                    i3 = i + 2;
                }
            }
            i = i3;
        }
        return this;
    }

    @Override // okio.BufferedSink
    public Buffer writeUtf8CodePoint(int i) {
        if (i < 128) {
            writeByte(i);
        } else if (i < 2048) {
            writeByte((i >> 6) | 192);
            writeByte((i & 63) | 128);
        } else if (i < 65536) {
            if (i < 55296 || i > 57343) {
                writeByte((i >> 12) | 224);
                writeByte(((i >> 6) & 63) | 128);
                writeByte((i & 63) | 128);
            } else {
                writeByte(63);
            }
        } else {
            if (i > 1114111) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{49, 11, 6, 78, 70, 81, 7, 17, 6, 82, 22, 87, 11, 1, 6, 22, 70, 91, 13, 11, 23, 12, 22}, "dec664", 8.096731E8f) + Integer.toHexString(i));
            }
            writeByte((i >> 18) | 240);
            writeByte(((i >> 12) & 63) | 128);
            writeByte(((i >> 6) & 63) | 128);
            writeByte((i & 63) | 128);
        }
        return this;
    }
}
