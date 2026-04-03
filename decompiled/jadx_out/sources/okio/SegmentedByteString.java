package okio;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Arrays;
import n.NPStringFog;

/* JADX INFO: loaded from: classes63.dex */
final class SegmentedByteString extends ByteString {
    final transient int[] directory;
    final transient byte[][] segments;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SegmentedByteString(Buffer buffer, int i) {
        super(null);
        int i2 = 0;
        Util.checkOffsetAndCount(buffer.size, 0L, i);
        Segment segment = buffer.head;
        int i3 = 0;
        int i4 = 0;
        while (i4 < i) {
            if (segment.limit == segment.pos) {
                throw new AssertionError(NPStringFog.decode(new byte[]{66, 79, 8, 94, 92, 88, 69, 65, 89, 10, 17, 66, 31, 17, 11, 68}, "1ad711", 426560040L));
            }
            i4 += segment.limit - segment.pos;
            i3++;
            segment = segment.next;
        }
        this.segments = new byte[i3][];
        this.directory = new int[i3 * 2];
        Segment segment2 = buffer.head;
        int i5 = 0;
        while (i5 < i) {
            this.segments[i2] = segment2.data;
            i5 += segment2.limit - segment2.pos;
            if (i5 > i) {
                i5 = i;
            }
            this.directory[i2] = i5;
            this.directory[this.segments.length + i2] = segment2.pos;
            segment2.shared = true;
            i2++;
            segment2 = segment2.next;
        }
    }

    private int segment(int i) {
        int iBinarySearch = Arrays.binarySearch(this.directory, 0, this.segments.length, i + 1);
        return iBinarySearch >= 0 ? iBinarySearch : iBinarySearch ^ (-1);
    }

    private ByteString toByteString() {
        return new ByteString(toByteArray());
    }

    private Object writeReplace() {
        return toByteString();
    }

    @Override // okio.ByteString
    public ByteBuffer asByteBuffer() {
        return ByteBuffer.wrap(toByteArray()).asReadOnlyBuffer();
    }

    @Override // okio.ByteString
    public String base64() {
        return toByteString().base64();
    }

    @Override // okio.ByteString
    public String base64Url() {
        return toByteString().base64Url();
    }

    @Override // okio.ByteString
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof ByteString) && ((ByteString) obj).size() == size() && rangeEquals(0, (ByteString) obj, 0, size());
    }

    @Override // okio.ByteString
    public byte getByte(int i) {
        Util.checkOffsetAndCount(this.directory[this.segments.length - 1], i, 1L);
        int iSegment = segment(i);
        return this.segments[iSegment][(i - (iSegment == 0 ? 0 : this.directory[iSegment - 1])) + this.directory[this.segments.length + iSegment]];
    }

    @Override // okio.ByteString
    public int hashCode() {
        int i = this.hashCode;
        if (i == 0) {
            i = 1;
            int length = this.segments.length;
            int i2 = 0;
            int i3 = 0;
            while (i2 < length) {
                byte[] bArr = this.segments[i2];
                int i4 = this.directory[length + i2];
                int i5 = this.directory[i2];
                int i6 = i;
                for (int i7 = i4; i7 < (i5 - i3) + i4; i7++) {
                    i6 = (i6 * 31) + bArr[i7];
                }
                i2++;
                i3 = i5;
                i = i6;
            }
            this.hashCode = i;
        }
        return i;
    }

    @Override // okio.ByteString
    public String hex() {
        return toByteString().hex();
    }

    @Override // okio.ByteString
    public ByteString hmacSha1(ByteString byteString) {
        return toByteString().hmacSha1(byteString);
    }

    @Override // okio.ByteString
    public ByteString hmacSha256(ByteString byteString) {
        return toByteString().hmacSha256(byteString);
    }

    @Override // okio.ByteString
    public int indexOf(byte[] bArr, int i) {
        return toByteString().indexOf(bArr, i);
    }

    @Override // okio.ByteString
    byte[] internalArray() {
        return toByteArray();
    }

    @Override // okio.ByteString
    public int lastIndexOf(byte[] bArr, int i) {
        return toByteString().lastIndexOf(bArr, i);
    }

    @Override // okio.ByteString
    public ByteString md5() {
        return toByteString().md5();
    }

    @Override // okio.ByteString
    public boolean rangeEquals(int i, ByteString byteString, int i2, int i3) {
        if (i < 0 || i > size() - i3) {
            return false;
        }
        int iSegment = segment(i);
        while (i3 > 0) {
            int i4 = iSegment == 0 ? 0 : this.directory[iSegment - 1];
            int iMin = Math.min(i3, ((this.directory[iSegment] - i4) + i4) - i);
            if (!byteString.rangeEquals(i2, this.segments[iSegment], (i - i4) + this.directory[this.segments.length + iSegment], iMin)) {
                return false;
            }
            i += iMin;
            i2 += iMin;
            i3 -= iMin;
            iSegment++;
        }
        return true;
    }

    @Override // okio.ByteString
    public boolean rangeEquals(int i, byte[] bArr, int i2, int i3) {
        if (i < 0 || i > size() - i3 || i2 < 0 || i2 > bArr.length - i3) {
            return false;
        }
        int iSegment = segment(i);
        while (i3 > 0) {
            int i4 = iSegment == 0 ? 0 : this.directory[iSegment - 1];
            int iMin = Math.min(i3, ((this.directory[iSegment] - i4) + i4) - i);
            if (!Util.arrayRangeEquals(this.segments[iSegment], (i - i4) + this.directory[this.segments.length + iSegment], bArr, i2, iMin)) {
                return false;
            }
            i += iMin;
            i2 += iMin;
            i3 -= iMin;
            iSegment++;
        }
        return true;
    }

    @Override // okio.ByteString
    public ByteString sha1() {
        return toByteString().sha1();
    }

    @Override // okio.ByteString
    public ByteString sha256() {
        return toByteString().sha256();
    }

    @Override // okio.ByteString
    public int size() {
        return this.directory[this.segments.length - 1];
    }

    @Override // okio.ByteString
    public String string(Charset charset) {
        return toByteString().string(charset);
    }

    @Override // okio.ByteString
    public ByteString substring(int i) {
        return toByteString().substring(i);
    }

    @Override // okio.ByteString
    public ByteString substring(int i, int i2) {
        return toByteString().substring(i, i2);
    }

    @Override // okio.ByteString
    public ByteString toAsciiLowercase() {
        return toByteString().toAsciiLowercase();
    }

    @Override // okio.ByteString
    public ByteString toAsciiUppercase() {
        return toByteString().toAsciiUppercase();
    }

    @Override // okio.ByteString
    public byte[] toByteArray() {
        int i = 0;
        byte[] bArr = new byte[this.directory[this.segments.length - 1]];
        int length = this.segments.length;
        int i2 = 0;
        while (i < length) {
            int i3 = this.directory[length + i];
            int i4 = this.directory[i];
            System.arraycopy(this.segments[i], i3, bArr, i2, i4 - i2);
            i++;
            i2 = i4;
        }
        return bArr;
    }

    @Override // okio.ByteString
    public String toString() {
        return toByteString().toString();
    }

    @Override // okio.ByteString
    public String utf8() {
        return toByteString().utf8();
    }

    @Override // okio.ByteString
    public void write(OutputStream outputStream) throws IOException {
        int i = 0;
        if (outputStream == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{91, 70, 69, 18, 94, 94, 20, 93, 68, 94, 15}, "4312cc", 711153166L));
        }
        int length = this.segments.length;
        int i2 = 0;
        while (i < length) {
            int i3 = this.directory[length + i];
            int i4 = this.directory[i];
            outputStream.write(this.segments[i], i3, i4 - i2);
            i++;
            i2 = i4;
        }
    }

    @Override // okio.ByteString
    void write(Buffer buffer) {
        int length = this.segments.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int i3 = this.directory[length + i];
            int i4 = this.directory[i];
            Segment segment = new Segment(this.segments[i], i3, (i3 + i4) - i2, true, false);
            if (buffer.head == null) {
                segment.prev = segment;
                segment.next = segment;
                buffer.head = segment;
            } else {
                buffer.head.prev.push(segment);
            }
            i++;
            i2 = i4;
        }
        buffer.size += (long) i2;
    }
}
