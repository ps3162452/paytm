package okio;

import java.io.IOException;
import n.NPStringFog;

/* JADX INFO: loaded from: classes63.dex */
public abstract class ForwardingSink implements Sink {
    private final Sink delegate;

    public ForwardingSink(Sink sink) {
        if (sink == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{83, 82, 8, 92, 5, 86, 67, 82, 68, 4, 95, 23, 89, 66, 8, 85}, "77d9b7", -26181));
        }
        this.delegate = sink;
    }

    @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.delegate.close();
    }

    public final Sink delegate() {
        return this.delegate;
    }

    @Override // okio.Sink, java.io.Flushable
    public void flush() throws IOException {
        this.delegate.flush();
    }

    @Override // okio.Sink
    public Timeout timeout() {
        return this.delegate.timeout();
    }

    public String toString() {
        return getClass().getSimpleName() + NPStringFog.decode(new byte[]{16}, "85e157", 9.301633E8f) + this.delegate.toString() + NPStringFog.decode(new byte[]{25}, "0fe248", -1.7332476E9f);
    }

    @Override // okio.Sink
    public void write(Buffer buffer, long j) throws IOException {
        this.delegate.write(buffer, j);
    }
}
