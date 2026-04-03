package okio;

import java.io.IOException;
import n.NPStringFog;

/* JADX INFO: loaded from: classes63.dex */
final class PeekSource implements Source {
    private final Buffer buffer;
    private boolean closed;
    private int expectedPos;
    private Segment expectedSegment;
    private long pos;
    private final BufferedSource upstream;

    PeekSource(BufferedSource bufferedSource) {
        this.upstream = bufferedSource;
        this.buffer = bufferedSource.buffer();
        this.expectedSegment = this.buffer.head;
        this.expectedPos = this.expectedSegment != null ? this.expectedSegment.pos : -1;
    }

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.closed = true;
    }

    @Override // okio.Source
    public long read(Buffer buffer, long j) throws IOException {
        if (j < 0) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{86, 79, 69, 84, 119, 93, 65, 88, 69, 17, 8, 18, 4, 12, 17}, "461142", -1.932025424E9d) + j);
        }
        if (this.closed) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{0, 93, 12, 69, 7, 87}, "c1c6b3", 5.411935E8f));
        }
        if (this.expectedSegment != null && (this.expectedSegment != this.buffer.head || this.expectedPos != this.buffer.head.pos)) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{51, 6, 84, 14, 21, 18, 12, 22, 67, 6, 80, 65, 10, 16, 17, 12, 91, 23, 2, 15, 88, 1, 21, 3, 6, 0, 80, 16, 70, 4, 67, 22, 65, 22, 65, 19, 6, 2, 92, 69, 70, 14, 22, 17, 82, 0, 21, 22, 2, 16, 17, 16, 70, 4, 7}, "cc1e5a", 1325));
        }
        if (j == 0) {
            return 0L;
        }
        if (!this.upstream.request(this.pos + 1)) {
            return -1L;
        }
        if (this.expectedSegment == null && this.buffer.head != null) {
            this.expectedSegment = this.buffer.head;
            this.expectedPos = this.buffer.head.pos;
        }
        long jMin = Math.min(j, this.buffer.size - this.pos);
        this.buffer.copyTo(buffer, this.pos, jMin);
        this.pos += jMin;
        return jMin;
    }

    @Override // okio.Source
    public Timeout timeout() {
        return this.upstream.timeout();
    }
}
