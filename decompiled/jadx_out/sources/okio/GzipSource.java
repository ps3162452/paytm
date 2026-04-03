package okio;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.Inflater;
import n.NPStringFog;

/* JADX INFO: loaded from: classes63.dex */
public final class GzipSource implements Source {
    private static final byte FCOMMENT = 4;
    private static final byte FEXTRA = 2;
    private static final byte FHCRC = 1;
    private static final byte FNAME = 3;
    private static final byte SECTION_BODY = 1;
    private static final byte SECTION_DONE = 3;
    private static final byte SECTION_HEADER = 0;
    private static final byte SECTION_TRAILER = 2;
    private final Inflater inflater;
    private final InflaterSource inflaterSource;
    private final BufferedSource source;
    private int section = 0;
    private final CRC32 crc = new CRC32();

    public GzipSource(Source source) {
        if (source == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{16, 94, 22, 67, 82, 93, 67, 12, 94, 17, 95, 77, 15, 93}, "c1c118", -2.001899522E9d));
        }
        this.inflater = new Inflater(true);
        this.source = Okio.buffer(source);
        this.inflaterSource = new InflaterSource(this.source, this.inflater);
    }

    private void checkEqual(String str, int i, int i2) throws IOException {
        if (i2 != i) {
            throw new IOException(String.format(NPStringFog.decode(new byte[]{71, 16, 2, 65, 84, 6, 22, 22, 89, 13, 21, 85, 26, 70, 8, 89, 77, 69, 67, 94, 24, FCOMMENT, 77, 21, 7, SECTION_HEADER, 76, FCOMMENT, 81, 69, 82, 27, 29, 81, 13, 29}, "bc8a5e", 8.57832593E8d), str, Integer.valueOf(i2), Integer.valueOf(i)));
        }
    }

    private void consumeHeader() throws IOException {
        this.source.require(10L);
        byte b = this.source.buffer().getByte(3L);
        boolean z = ((b >> 1) & 1) == 1;
        if (z) {
            updateCrc(this.source.buffer(), 0L, 10L);
        }
        checkEqual(NPStringFog.decode(new byte[]{42, 119, 83, 45, 37, 11}, "c3bda9", 1.013971583E9d), 8075, this.source.readShort());
        this.source.skip(8L);
        if (((b >> 2) & 1) == 1) {
            this.source.require(2L);
            if (z) {
                updateCrc(this.source.buffer(), 0L, 2L);
            }
            short shortLe = this.source.buffer().readShortLe();
            this.source.require(shortLe);
            if (z) {
                updateCrc(this.source.buffer(), 0L, shortLe);
            }
            this.source.skip(shortLe);
        }
        if (((b >> 3) & 1) == 1) {
            long jIndexOf = this.source.indexOf(SECTION_HEADER);
            if (jIndexOf == -1) {
                throw new EOFException();
            }
            if (z) {
                updateCrc(this.source.buffer(), 0L, 1 + jIndexOf);
            }
            this.source.skip(1 + jIndexOf);
        }
        if (((b >> FCOMMENT) & 1) == 1) {
            long jIndexOf2 = this.source.indexOf(SECTION_HEADER);
            if (jIndexOf2 == -1) {
                throw new EOFException();
            }
            if (z) {
                updateCrc(this.source.buffer(), 0L, 1 + jIndexOf2);
            }
            this.source.skip(1 + jIndexOf2);
        }
        if (z) {
            checkEqual(NPStringFog.decode(new byte[]{118, 127, 37, 55, 114}, "07fe18", false, false), this.source.readShortLe(), (short) this.crc.getValue());
            this.crc.reset();
        }
    }

    private void consumeTrailer() throws IOException {
        checkEqual(NPStringFog.decode(new byte[]{39, 52, 123}, "df88eb", -7.3409363E8f), this.source.readIntLe(), (int) this.crc.getValue());
        checkEqual(NPStringFog.decode(new byte[]{123, 53, 121, 98, 115}, "2f086a", -484057038L), this.source.readIntLe(), (int) this.inflater.getBytesWritten());
    }

    private void updateCrc(Buffer buffer, long j, long j2) {
        Segment segment = buffer.head;
        while (j >= segment.limit - segment.pos) {
            j -= (long) (segment.limit - segment.pos);
            segment = segment.next;
        }
        while (j2 > 0) {
            int i = (int) (((long) segment.pos) + j);
            int iMin = (int) Math.min(segment.limit - i, j2);
            this.crc.update(segment.data, i, iMin);
            j2 -= (long) iMin;
            segment = segment.next;
            j = 0;
        }
    }

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.inflaterSource.close();
    }

    @Override // okio.Source
    public long read(Buffer buffer, long j) throws IOException {
        if (j < 0) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{81, 73, 65, 1, 118, 94, 70, 94, 65, 68, 9, 17, 3, 10, 21}, "305d51", 5.192419E8f) + j);
        }
        if (j == 0) {
            return 0L;
        }
        if (this.section == 0) {
            consumeHeader();
            this.section = 1;
        }
        if (this.section == 1) {
            long j2 = buffer.size;
            long j3 = this.inflaterSource.read(buffer, j);
            if (j3 != -1) {
                updateCrc(buffer, j2, j3);
                return j3;
            }
            this.section = 2;
        }
        if (this.section == 2) {
            consumeTrailer();
            this.section = 3;
            if (!this.source.exhausted()) {
                throw new IOException(NPStringFog.decode(new byte[]{2, 79, 90, 66, 67, 5, 12, 91, 90, 65, 11, 6, 1, 21, 68, 91, 23, 11, 10, 64, 71, 18, 6, 27, 13, 84, 70, 65, 23, 10, 11, 82, 19, 65, 12, 22, 23, 86, 86}, "e532cc", false, true));
            }
        }
        return -1L;
    }

    @Override // okio.Source
    public Timeout timeout() {
        return this.source.timeout();
    }
}
