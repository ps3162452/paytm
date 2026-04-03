package okio;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
import n.NPStringFog;

/* JADX INFO: loaded from: classes63.dex */
public final class InflaterSource implements Source {
    private int bufferBytesHeldByInflater;
    private boolean closed;
    private final Inflater inflater;
    private final BufferedSource source;

    InflaterSource(BufferedSource bufferedSource, Inflater inflater) {
        if (bufferedSource == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{65, 11, 65, 65, 91, 7, 18, 89, 9, 19, 86, 23, 94, 8}, "2d438b", -1.457764746E9d));
        }
        if (inflater == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{8, 8, 84, 89, 7, 77, 4, 20, 18, 8, 91, 25, 15, 19, 94, 89}, "af25f9", 29382));
        }
        this.source = bufferedSource;
        this.inflater = inflater;
    }

    public InflaterSource(Source source, Inflater inflater) {
        this(Okio.buffer(source), inflater);
    }

    private void releaseInflatedBytes() throws IOException {
        if (this.bufferBytesHeldByInflater == 0) {
            return;
        }
        int remaining = this.bufferBytesHeldByInflater - this.inflater.getRemaining();
        this.bufferBytesHeldByInflater -= remaining;
        this.source.skip(remaining);
    }

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.closed) {
            return;
        }
        this.inflater.end();
        this.closed = true;
        this.source.close();
    }

    @Override // okio.Source
    public long read(Buffer buffer, long j) throws IOException {
        boolean zRefill;
        if (j < 0) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{80, 27, 76, 7, 39, 95, 71, 12, 76, 66, 88, 16, 2, 88, 24}, "2b8bd0", -1384395774L) + j);
        }
        if (this.closed) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{80, 14, 94, 17, 87, 93}, "3b1b29", -22106));
        }
        if (j == 0) {
            return 0L;
        }
        do {
            zRefill = refill();
            try {
                Segment segmentWritableSegment = buffer.writableSegment(1);
                int iInflate = this.inflater.inflate(segmentWritableSegment.data, segmentWritableSegment.limit, (int) Math.min(j, 8192 - segmentWritableSegment.limit));
                if (iInflate > 0) {
                    segmentWritableSegment.limit += iInflate;
                    buffer.size += (long) iInflate;
                    return iInflate;
                }
                if (this.inflater.finished() || this.inflater.needsDictionary()) {
                    releaseInflatedBytes();
                    if (segmentWritableSegment.pos == segmentWritableSegment.limit) {
                        buffer.head = segmentWritableSegment.pop();
                        SegmentPool.recycle(segmentWritableSegment);
                    }
                    return -1L;
                }
            } catch (DataFormatException e) {
                throw new IOException(e);
            }
        } while (!zRefill);
        throw new EOFException(NPStringFog.decode(new byte[]{70, 10, 66, 69, 81, 0, 21, 0, 79, 95, 83, 16, 70, 17, 82, 83, 18, 21, 71, 0, 90, 86, 70, 16, 71, 0, 91, 78}, "5e772e", -159));
    }

    public final boolean refill() throws IOException {
        if (!this.inflater.needsInput()) {
            return false;
        }
        releaseInflatedBytes();
        if (this.inflater.getRemaining() != 0) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{14}, "1eaa07", 2116321566L));
        }
        if (this.source.exhausted()) {
            return true;
        }
        Segment segment = this.source.buffer().head;
        this.bufferBytesHeldByInflater = segment.limit - segment.pos;
        this.inflater.setInput(segment.data, segment.pos, this.bufferBytesHeldByInflater);
        return false;
    }

    @Override // okio.Source
    public Timeout timeout() {
        return this.source.timeout();
    }
}
