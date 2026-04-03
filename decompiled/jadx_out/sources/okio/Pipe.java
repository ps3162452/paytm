package okio;

import java.io.IOException;
import javax.annotation.Nullable;
import n.NPStringFog;

/* JADX INFO: loaded from: classes63.dex */
public final class Pipe {

    @Nullable
    private Sink foldedSink;
    final long maxBufferSize;
    boolean sinkClosed;
    boolean sourceClosed;
    final Buffer buffer = new Buffer();
    private final Sink sink = new PipeSink(this);
    private final Source source = new PipeSource(this);

    final class PipeSink implements Sink {
        final Pipe this$0;
        final PushableTimeout timeout = new PushableTimeout();

        PipeSink(Pipe pipe) {
            this.this$0 = pipe;
        }

        @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            Sink sink = null;
            synchronized (this.this$0.buffer) {
                if (this.this$0.sinkClosed) {
                    return;
                }
                if (this.this$0.foldedSink != null) {
                    sink = this.this$0.foldedSink;
                } else {
                    if (this.this$0.sourceClosed && this.this$0.buffer.size() > 0) {
                        throw new IOException(NPStringFog.decode(new byte[]{23, 94, 70, 22, 7, 0, 68, 88, 64, 68, 7, 9, 11, 66, 86, 0}, "d13dde", -9439));
                    }
                    this.this$0.sinkClosed = true;
                    this.this$0.buffer.notifyAll();
                }
                if (sink != null) {
                    this.timeout.push(sink.timeout());
                    try {
                        sink.close();
                    } finally {
                        this.timeout.pop();
                    }
                }
            }
        }

        @Override // okio.Sink, java.io.Flushable
        public void flush() throws IOException {
            Sink sink = null;
            synchronized (this.this$0.buffer) {
                if (this.this$0.sinkClosed) {
                    throw new IllegalStateException(NPStringFog.decode(new byte[]{83, 92, 95, 70, 0, 86}, "0005e2", 8614));
                }
                if (this.this$0.foldedSink != null) {
                    sink = this.this$0.foldedSink;
                } else if (this.this$0.sourceClosed && this.this$0.buffer.size() > 0) {
                    throw new IOException(NPStringFog.decode(new byte[]{67, 13, 70, 20, 81, 4, 16, 11, 64, 70, 81, 13, 95, 17, 86, 2}, "0b3f2a", false, true));
                }
            }
            if (sink != null) {
                this.timeout.push(sink.timeout());
                try {
                    sink.flush();
                } finally {
                    this.timeout.pop();
                }
            }
        }

        @Override // okio.Sink
        public Timeout timeout() {
            return this.timeout;
        }

        @Override // okio.Sink
        public void write(Buffer buffer, long j) throws IOException {
            Sink sink = null;
            synchronized (this.this$0.buffer) {
                if (this.this$0.sinkClosed) {
                    throw new IllegalStateException(NPStringFog.decode(new byte[]{5, 8, 11, 69, 86, 83}, "fdd637", 594725197L));
                }
                while (true) {
                    if (j <= 0) {
                        break;
                    }
                    if (this.this$0.foldedSink != null) {
                        sink = this.this$0.foldedSink;
                        break;
                    }
                    if (this.this$0.sourceClosed) {
                        throw new IOException(NPStringFog.decode(new byte[]{17, 14, 65, 74, 0, 87, 66, 8, 71, 24, 0, 94, 13, 18, 81, 92}, "ba48c2", false));
                    }
                    long size = this.this$0.maxBufferSize - this.this$0.buffer.size();
                    if (size == 0) {
                        this.timeout.waitUntilNotified(this.this$0.buffer);
                    } else {
                        long jMin = Math.min(size, j);
                        this.this$0.buffer.write(buffer, jMin);
                        j -= jMin;
                        this.this$0.buffer.notifyAll();
                    }
                }
            }
            if (sink != null) {
                this.timeout.push(sink.timeout());
                try {
                    sink.write(buffer, j);
                } finally {
                    this.timeout.pop();
                }
            }
        }
    }

    final class PipeSource implements Source {
        final Pipe this$0;
        final Timeout timeout = new Timeout();

        PipeSource(Pipe pipe) {
            this.this$0 = pipe;
        }

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            synchronized (this.this$0.buffer) {
                this.this$0.sourceClosed = true;
                this.this$0.buffer.notifyAll();
            }
        }

        @Override // okio.Source
        public long read(Buffer buffer, long j) throws IOException {
            long j2;
            synchronized (this.this$0.buffer) {
                if (this.this$0.sourceClosed) {
                    throw new IllegalStateException(NPStringFog.decode(new byte[]{90, 89, 9, 68, 7, 82}, "95f7b6", 9.72120744E8d));
                }
                while (true) {
                    if (this.this$0.buffer.size() != 0) {
                        j2 = this.this$0.buffer.read(buffer, j);
                        this.this$0.buffer.notifyAll();
                        break;
                    }
                    if (this.this$0.sinkClosed) {
                        j2 = -1;
                        break;
                    }
                    this.timeout.waitUntilNotified(this.this$0.buffer);
                }
                return j2;
            }
        }

        @Override // okio.Source
        public Timeout timeout() {
            return this.timeout;
        }
    }

    public Pipe(long j) {
        if (j < 1) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{89, 89, 78, 116, 16, 2, 82, 93, 68, 101, 12, 30, 81, 24, 10, 22, 84, 94, 20}, "4866ed", false) + j);
        }
        this.maxBufferSize = j;
    }

    public void fold(Sink sink) throws IOException {
        boolean z;
        Buffer buffer;
        while (true) {
            synchronized (this.buffer) {
                if (this.foldedSink != null) {
                    throw new IllegalStateException(NPStringFog.decode(new byte[]{70, 92, 13, 13, 22, 4, 89, 71, 6, 7, 82, 28, 21, 83, 12, 10, 82, 0, 81}, "55cf6e", false, false));
                }
                if (this.buffer.exhausted()) {
                    this.sourceClosed = true;
                    this.foldedSink = sink;
                    return;
                } else {
                    z = this.sinkClosed;
                    buffer = new Buffer();
                    buffer.write(this.buffer, this.buffer.size);
                    this.buffer.notifyAll();
                }
            }
            try {
                sink.write(buffer, buffer.size);
                if (z) {
                    sink.close();
                } else {
                    sink.flush();
                }
            } catch (Throwable th) {
                synchronized (this.buffer) {
                    this.sourceClosed = true;
                    this.buffer.notifyAll();
                    throw th;
                }
            }
        }
    }

    public final Sink sink() {
        return this.sink;
    }

    public final Source source() {
        return this.source;
    }
}
