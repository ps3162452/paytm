package okio;

import java.io.IOException;
import java.util.concurrent.TimeUnit;
import n.NPStringFog;

/* JADX INFO: loaded from: classes63.dex */
public class ForwardingTimeout extends Timeout {
    private Timeout delegate;

    public ForwardingTimeout(Timeout timeout) {
        if (timeout == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{84, 92, 9, 93, 84, 85, 68, 92, 69, 5, 14, 20, 94, 76, 9, 84}, "09e834", -11106));
        }
        this.delegate = timeout;
    }

    @Override // okio.Timeout
    public Timeout clearDeadline() {
        return this.delegate.clearDeadline();
    }

    @Override // okio.Timeout
    public Timeout clearTimeout() {
        return this.delegate.clearTimeout();
    }

    @Override // okio.Timeout
    public long deadlineNanoTime() {
        return this.delegate.deadlineNanoTime();
    }

    @Override // okio.Timeout
    public Timeout deadlineNanoTime(long j) {
        return this.delegate.deadlineNanoTime(j);
    }

    public final Timeout delegate() {
        return this.delegate;
    }

    @Override // okio.Timeout
    public boolean hasDeadline() {
        return this.delegate.hasDeadline();
    }

    public final ForwardingTimeout setDelegate(Timeout timeout) {
        if (timeout == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{1, 82, 14, 81, 81, 88, 17, 82, 66, 9, 11, 25, 11, 66, 14, 88}, "e7b469", 2.48834E8d));
        }
        this.delegate = timeout;
        return this;
    }

    @Override // okio.Timeout
    public void throwIfReached() throws IOException {
        this.delegate.throwIfReached();
    }

    @Override // okio.Timeout
    public Timeout timeout(long j, TimeUnit timeUnit) {
        return this.delegate.timeout(j, timeUnit);
    }

    @Override // okio.Timeout
    public long timeoutNanos() {
        return this.delegate.timeoutNanos();
    }
}
