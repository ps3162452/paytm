package okio;

import java.io.IOException;
import java.util.zip.Deflater;
import n.NPStringFog;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;

/* JADX INFO: loaded from: classes63.dex */
public final class DeflaterSink implements Sink {
    private boolean closed;
    private final Deflater deflater;
    private final BufferedSink sink;

    DeflaterSink(BufferedSink bufferedSink, Deflater deflater) {
        if (bufferedSink == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{70, 94, 23, 71, 81, 1, 21, 12, 95, 21, 92, 17, 89, 93}, "51b52d", true, true));
        }
        if (deflater == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{93, 13, 5, 10, 86, 22, 81, 17, 67, 91, 10, 66, 90, 22, 15, 10}, "4ccf7b", -2.113020967E9d));
        }
        this.sink = bufferedSink;
        this.deflater = deflater;
    }

    public DeflaterSink(Sink sink, Deflater deflater) {
        this(Okio.buffer(sink), deflater);
    }

    @IgnoreJRERequirement
    private void deflate(boolean z) throws IOException {
        Segment segmentWritableSegment;
        Buffer buffer = this.sink.buffer();
        while (true) {
            segmentWritableSegment = buffer.writableSegment(1);
            int iDeflate = z ? this.deflater.deflate(segmentWritableSegment.data, segmentWritableSegment.limit, 8192 - segmentWritableSegment.limit, 2) : this.deflater.deflate(segmentWritableSegment.data, segmentWritableSegment.limit, 8192 - segmentWritableSegment.limit);
            if (iDeflate > 0) {
                segmentWritableSegment.limit += iDeflate;
                buffer.size += (long) iDeflate;
                this.sink.emitCompleteSegments();
            } else if (this.deflater.needsInput()) {
                break;
            }
        }
        if (segmentWritableSegment.pos == segmentWritableSegment.limit) {
            buffer.head = segmentWritableSegment.pop();
            SegmentPool.recycle(segmentWritableSegment);
        }
    }

    @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws Throwable {
        if (this.closed) {
            return;
        }
        Throwable th = null;
        try {
            finishDeflate();
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            this.deflater.end();
            th = th;
        } catch (Throwable th3) {
            th = th3;
            if (th != null) {
                th = th;
            }
        }
        try {
            this.sink.close();
        } catch (Throwable th4) {
            if (th == null) {
                th = th4;
            }
        }
        this.closed = true;
        if (th != null) {
            Util.sneakyRethrow(th);
        }
    }

    void finishDeflate() throws IOException {
        this.deflater.finish();
        deflate(false);
    }

    @Override // okio.Sink, java.io.Flushable
    public void flush() throws IOException {
        deflate(true);
        this.sink.flush();
    }

    @Override // okio.Sink
    public Timeout timeout() {
        return this.sink.timeout();
    }

    public String toString() {
        return NPStringFog.decode(new byte[]{112, 81, 0, 91, 85, 65, 81, 70, 53, 94, 90, 94, 28}, "44f745", 1.22909063E9d) + this.sink + NPStringFog.decode(new byte[]{75}, "b3bea6", 1.592632005E9d);
    }

    @Override // okio.Sink
    public void write(Buffer buffer, long j) throws IOException {
        Util.checkOffsetAndCount(buffer.size, 0L, j);
        while (j > 0) {
            Segment segment = buffer.head;
            int iMin = (int) Math.min(j, segment.limit - segment.pos);
            this.deflater.setInput(segment.data, segment.pos, iMin);
            deflate(false);
            buffer.size -= (long) iMin;
            segment.pos += iMin;
            if (segment.pos == segment.limit) {
                buffer.head = segment.pop();
                SegmentPool.recycle(segment);
            }
            j -= (long) iMin;
        }
    }
}
