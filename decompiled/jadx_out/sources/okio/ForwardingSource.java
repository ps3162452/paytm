package okio;

import java.io.IOException;
import n.NPStringFog;

/* JADX INFO: loaded from: classes63.dex */
public abstract class ForwardingSource implements Source {
    private final Source delegate;

    public ForwardingSource(Source source) {
        if (source == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{84, 81, 15, 87, 80, 89, 68, 81, 67, 15, 10, 24, 94, 65, 15, 94}, "04c278", -3.04498113E8d));
        }
        this.delegate = source;
    }

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.delegate.close();
    }

    public final Source delegate() {
        return this.delegate;
    }

    @Override // okio.Source
    public long read(Buffer buffer, long j) throws IOException {
        return this.delegate.read(buffer, j);
    }

    @Override // okio.Source
    public Timeout timeout() {
        return this.delegate.timeout();
    }

    public String toString() {
        return getClass().getSimpleName() + NPStringFog.decode(new byte[]{76}, "d90133", false) + this.delegate.toString() + NPStringFog.decode(new byte[]{79}, "f6f3ca", 12400);
    }
}
