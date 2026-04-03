package okio;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import n.NPStringFog;

/* JADX INFO: loaded from: classes63.dex */
public class AsyncTimeout extends Timeout {
    private static final long IDLE_TIMEOUT_MILLIS = TimeUnit.SECONDS.toMillis(60);
    private static final long IDLE_TIMEOUT_NANOS = TimeUnit.MILLISECONDS.toNanos(IDLE_TIMEOUT_MILLIS);
    private static final int TIMEOUT_WRITE_SIZE = 65536;

    @Nullable
    static AsyncTimeout head;
    private boolean inQueue;

    @Nullable
    private AsyncTimeout next;
    private long timeoutAt;

    private static final class Watchdog extends Thread {
        Watchdog() {
            super(NPStringFog.decode(new byte[]{118, 82, 8, 11, 66, 99, 88, 77, 2, 12, 6, 91, 94}, "99adb4", -798237068L));
            setDaemon(true);
        }

        /* JADX WARN: Code restructure failed: missing block: B:22:0x0022, code lost:
        
            r0.timedOut();
         */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                r2 = this;
            L0:
                java.lang.Class<okio.AsyncTimeout> r0 = okio.AsyncTimeout.class
                monitor-enter(r0)     // Catch: java.lang.InterruptedException -> L12
                okio.AsyncTimeout r0 = okio.AsyncTimeout.awaitTimeout()     // Catch: java.lang.Throwable -> Ld
                if (r0 != 0) goto L14
                java.lang.Class<okio.AsyncTimeout> r0 = okio.AsyncTimeout.class
                monitor-exit(r0)     // Catch: java.lang.Throwable -> Ld
                goto L0
            Ld:
                r0 = move-exception
                java.lang.Class<okio.AsyncTimeout> r1 = okio.AsyncTimeout.class
                monitor-exit(r1)     // Catch: java.lang.Throwable -> Ld
                throw r0     // Catch: java.lang.InterruptedException -> L12
            L12:
                r0 = move-exception
                goto L0
            L14:
                okio.AsyncTimeout r1 = okio.AsyncTimeout.head     // Catch: java.lang.Throwable -> Ld
                if (r0 != r1) goto L1f
                r0 = 0
                okio.AsyncTimeout.head = r0     // Catch: java.lang.Throwable -> Ld
                java.lang.Class<okio.AsyncTimeout> r0 = okio.AsyncTimeout.class
                monitor-exit(r0)     // Catch: java.lang.Throwable -> Ld
                return
            L1f:
                java.lang.Class<okio.AsyncTimeout> r1 = okio.AsyncTimeout.class
                monitor-exit(r1)     // Catch: java.lang.Throwable -> Ld
                r0.timedOut()     // Catch: java.lang.InterruptedException -> L12
                goto L0
            */
            throw new UnsupportedOperationException("Method not decompiled: okio.AsyncTimeout.Watchdog.run():void");
        }
    }

    @Nullable
    static AsyncTimeout awaitTimeout() throws InterruptedException {
        AsyncTimeout asyncTimeout = head.next;
        if (asyncTimeout == null) {
            long jNanoTime = System.nanoTime();
            AsyncTimeout.class.wait(IDLE_TIMEOUT_MILLIS);
            if (head.next != null || System.nanoTime() - jNanoTime < IDLE_TIMEOUT_NANOS) {
                return null;
            }
            return head;
        }
        long jRemainingNanos = asyncTimeout.remainingNanos(System.nanoTime());
        if (jRemainingNanos > 0) {
            long j = jRemainingNanos / 1000000;
            AsyncTimeout.class.wait(j, (int) (jRemainingNanos - (1000000 * j)));
            return null;
        }
        head.next = asyncTimeout.next;
        asyncTimeout.next = null;
        return asyncTimeout;
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x000b, code lost:
    
        r0.next = r2.next;
        r2.next = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0012, code lost:
    
        r0 = false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean cancelScheduledTimeout(okio.AsyncTimeout r2) {
        /*
            java.lang.Class<okio.AsyncTimeout> r0 = okio.AsyncTimeout.class
            monitor-enter(r0)
            okio.AsyncTimeout r0 = okio.AsyncTimeout.head     // Catch: java.lang.Throwable -> L1c
        L5:
            if (r0 == 0) goto L1a
            okio.AsyncTimeout r1 = r0.next     // Catch: java.lang.Throwable -> L1c
            if (r1 != r2) goto L17
            okio.AsyncTimeout r1 = r2.next     // Catch: java.lang.Throwable -> L1c
            r0.next = r1     // Catch: java.lang.Throwable -> L1c
            r0 = 0
            r2.next = r0     // Catch: java.lang.Throwable -> L1c
            r0 = 0
        L13:
            java.lang.Class<okio.AsyncTimeout> r1 = okio.AsyncTimeout.class
            monitor-exit(r1)
            return r0
        L17:
            okio.AsyncTimeout r0 = r0.next     // Catch: java.lang.Throwable -> L1c
            goto L5
        L1a:
            r0 = 1
            goto L13
        L1c:
            r0 = move-exception
            java.lang.Class<okio.AsyncTimeout> r1 = okio.AsyncTimeout.class
            monitor-exit(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.AsyncTimeout.cancelScheduledTimeout(okio.AsyncTimeout):boolean");
    }

    private long remainingNanos(long j) {
        return this.timeoutAt - j;
    }

    private static void scheduleTimeout(AsyncTimeout asyncTimeout, long j, boolean z) {
        synchronized (AsyncTimeout.class) {
            try {
                if (head == null) {
                    head = new AsyncTimeout();
                    new Watchdog().start();
                }
                long jNanoTime = System.nanoTime();
                if (j != 0 && z) {
                    asyncTimeout.timeoutAt = Math.min(j, asyncTimeout.deadlineNanoTime() - jNanoTime) + jNanoTime;
                } else if (j != 0) {
                    asyncTimeout.timeoutAt = jNanoTime + j;
                } else {
                    if (!z) {
                        throw new AssertionError();
                    }
                    asyncTimeout.timeoutAt = asyncTimeout.deadlineNanoTime();
                }
                long jRemainingNanos = asyncTimeout.remainingNanos(jNanoTime);
                AsyncTimeout asyncTimeout2 = head;
                while (asyncTimeout2.next != null && jRemainingNanos >= asyncTimeout2.next.remainingNanos(jNanoTime)) {
                    asyncTimeout2 = asyncTimeout2.next;
                }
                asyncTimeout.next = asyncTimeout2.next;
                asyncTimeout2.next = asyncTimeout;
                if (asyncTimeout2 == head) {
                    AsyncTimeout.class.notify();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void enter() {
        if (this.inQueue) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{49, 91, 7, 83, 9, 89, 10, 86, 0, 86, 69, 93, 10, 65, 0, 64, 74, 93, 28, 92, 17}, "d5e2e8", -18350));
        }
        long jTimeoutNanos = timeoutNanos();
        boolean zHasDeadline = hasDeadline();
        if (jTimeoutNanos != 0 || zHasDeadline) {
            this.inQueue = true;
            scheduleTimeout(this, jTimeoutNanos, zHasDeadline);
        }
    }

    final IOException exit(IOException iOException) throws IOException {
        return !exit() ? iOException : newTimeoutException(iOException);
    }

    final void exit(boolean z) throws IOException {
        if (exit() && z) {
            throw newTimeoutException(null);
        }
    }

    public final boolean exit() {
        if (!this.inQueue) {
            return false;
        }
        this.inQueue = false;
        return cancelScheduledTimeout(this);
    }

    protected IOException newTimeoutException(@Nullable IOException iOException) {
        InterruptedIOException interruptedIOException = new InterruptedIOException(NPStringFog.decode(new byte[]{64, 12, 92, 92, 11, 20, 64}, "4e19da", true));
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    public final Sink sink(Sink sink) {
        return new Sink(this, sink) { // from class: okio.AsyncTimeout.1
            final AsyncTimeout this$0;
            final Sink val$sink;

            {
                this.this$0 = this;
                this.val$sink = sink;
            }

            @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                this.this$0.enter();
                try {
                    try {
                        this.val$sink.close();
                        this.this$0.exit(true);
                    } catch (IOException e) {
                        throw this.this$0.exit(e);
                    }
                } catch (Throwable th) {
                    this.this$0.exit(false);
                    throw th;
                }
            }

            @Override // okio.Sink, java.io.Flushable
            public void flush() throws IOException {
                this.this$0.enter();
                try {
                    try {
                        this.val$sink.flush();
                        this.this$0.exit(true);
                    } catch (IOException e) {
                        throw this.this$0.exit(e);
                    }
                } catch (Throwable th) {
                    this.this$0.exit(false);
                    throw th;
                }
            }

            @Override // okio.Sink
            public Timeout timeout() {
                return this.this$0;
            }

            public String toString() {
                return NPStringFog.decode(new byte[]{113, 23, 74, 92, 87, 101, 89, 9, 86, 93, 65, 69, 30, 23, 90, 92, 95, 25}, "0d3241", -1.4429468E9f) + this.val$sink + NPStringFog.decode(new byte[]{27}, "28a2ce", 8728);
            }

            @Override // okio.Sink
            public void write(Buffer buffer, long j) throws IOException {
                Util.checkOffsetAndCount(buffer.size, 0L, j);
                long j2 = j;
                while (j2 > 0) {
                    Segment segment = buffer.head;
                    long j3 = 0;
                    while (true) {
                        if (j3 >= 65536) {
                            break;
                        }
                        long j4 = ((long) (segment.limit - segment.pos)) + j3;
                        if (j4 >= j2) {
                            j3 = j2;
                            break;
                        } else {
                            segment = segment.next;
                            j3 = j4;
                        }
                    }
                    this.this$0.enter();
                    try {
                        try {
                            this.val$sink.write(buffer, j3);
                            j2 -= j3;
                            this.this$0.exit(true);
                        } catch (IOException e) {
                            throw this.this$0.exit(e);
                        }
                    } catch (Throwable th) {
                        this.this$0.exit(false);
                        throw th;
                    }
                }
            }
        };
    }

    public final Source source(Source source) {
        return new Source(this, source) { // from class: okio.AsyncTimeout.2
            final AsyncTimeout this$0;
            final Source val$source;

            {
                this.this$0 = this;
                this.val$source = source;
            }

            @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                this.this$0.enter();
                try {
                    try {
                        this.val$source.close();
                        this.this$0.exit(true);
                    } catch (IOException e) {
                        throw this.this$0.exit(e);
                    }
                } catch (Throwable th) {
                    this.this$0.exit(false);
                    throw th;
                }
            }

            @Override // okio.Source
            public long read(Buffer buffer, long j) throws IOException {
                this.this$0.enter();
                try {
                    try {
                        long j2 = this.val$source.read(buffer, j);
                        this.this$0.exit(true);
                        return j2;
                    } catch (IOException e) {
                        throw this.this$0.exit(e);
                    }
                } catch (Throwable th) {
                    this.this$0.exit(false);
                    throw th;
                }
            }

            @Override // okio.Source
            public Timeout timeout() {
                return this.this$0;
            }

            public String toString() {
                return NPStringFog.decode(new byte[]{35, 70, 26, 88, 0, 101, 11, 88, 6, 89, 22, 69, 76, 70, 12, 67, 17, 82, 7, 29}, "b5c6c1", 7.0353754E8f) + this.val$source + NPStringFog.decode(new byte[]{27}, "2bdcdb", false, false);
            }
        };
    }

    protected void timedOut() {
    }
}
