package okio;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
import n.NPStringFog;

/* JADX INFO: loaded from: classes63.dex */
public class Timeout {
    public static final Timeout NONE = new Timeout() { // from class: okio.Timeout.1
        @Override // okio.Timeout
        public Timeout deadlineNanoTime(long j) {
            return this;
        }

        @Override // okio.Timeout
        public void throwIfReached() throws IOException {
        }

        @Override // okio.Timeout
        public Timeout timeout(long j, TimeUnit timeUnit) {
            return this;
        }
    };
    private long deadlineNanoTime;
    private boolean hasDeadline;
    private long timeoutNanos;

    static long minTimeout(long j, long j2) {
        return j == 0 ? j2 : (j2 != 0 && j >= j2) ? j2 : j;
    }

    public Timeout clearDeadline() {
        this.hasDeadline = false;
        return this;
    }

    public Timeout clearTimeout() {
        this.timeoutNanos = 0L;
        return this;
    }

    public final Timeout deadline(long j, TimeUnit timeUnit) {
        if (j <= 0) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{86, 20, 74, 84, 18, 89, 93, 15, 24, 9, 91, 16, 2, 91, 24}, "2a85f0", false, true) + j);
        }
        if (timeUnit == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{17, 89, 95, 22, 25, 9, 89, 23, 88, 23, 85, 88}, "d76b94", -2.00860786E9d));
        }
        return deadlineNanoTime(System.nanoTime() + timeUnit.toNanos(j));
    }

    public long deadlineNanoTime() {
        if (this.hasDeadline) {
            return this.deadlineNanoTime;
        }
        throw new IllegalStateException(NPStringFog.decode(new byte[]{123, 88, 68, 83, 93, 5, 81, 91, 13, 89, 93}, "57d78d", false));
    }

    public Timeout deadlineNanoTime(long j) {
        this.hasDeadline = true;
        this.deadlineNanoTime = j;
        return this;
    }

    public boolean hasDeadline() {
        return this.hasDeadline;
    }

    public void throwIfReached() throws IOException {
        if (Thread.interrupted()) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException(NPStringFog.decode(new byte[]{95, 94, 21, 1, 20, 74, 67, 64, 21, 1, 2}, "60adf8", -2.5928669E7d));
        }
        if (this.hasDeadline && this.deadlineNanoTime - System.nanoTime() <= 0) {
            throw new InterruptedIOException(NPStringFog.decode(new byte[]{81, 4, 87, 5, 9, 95, 91, 4, 22, 19, 0, 87, 86, 9, 83, 5}, "5a6ae6", -9.48193732E8d));
        }
    }

    public Timeout timeout(long j, TimeUnit timeUnit) {
        if (j < 0) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{76, 89, 15, 7, 9, 77, 76, 16, 94, 66, 86, 2, 24}, "80bbf8", false, true) + j);
        }
        if (timeUnit == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{68, 89, 81, 18, 22, 89, 12, 23, 86, 19, 90, 8}, "178f6d", 1078932009L));
        }
        this.timeoutNanos = timeUnit.toNanos(j);
        return this;
    }

    public long timeoutNanos() {
        return this.timeoutNanos;
    }

    public final void waitUntilNotified(Object obj) throws InterruptedIOException {
        long jNanoTime = 0;
        try {
            boolean zHasDeadline = hasDeadline();
            long jTimeoutNanos = timeoutNanos();
            if (!zHasDeadline && jTimeoutNanos == 0) {
                obj.wait();
                return;
            }
            long jNanoTime2 = System.nanoTime();
            if (zHasDeadline && jTimeoutNanos != 0) {
                jTimeoutNanos = Math.min(jTimeoutNanos, deadlineNanoTime() - jNanoTime2);
            } else if (zHasDeadline) {
                jTimeoutNanos = deadlineNanoTime() - jNanoTime2;
            }
            if (jTimeoutNanos > 0) {
                long j = jTimeoutNanos / 1000000;
                obj.wait(j, (int) (jTimeoutNanos - (1000000 * j)));
                jNanoTime = System.nanoTime() - jNanoTime2;
            }
            if (jNanoTime >= jTimeoutNanos) {
                throw new InterruptedIOException(NPStringFog.decode(new byte[]{76, 80, 92, 82, 95, 16, 76}, "89170e", false, false));
            }
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException(NPStringFog.decode(new byte[]{13, 13, 17, 86, 66, 70, 17, 19, 17, 86, 84}, "dce304", -1335646047L));
        }
    }
}
