package okhttp3.internal.http2;

import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.List;
import n.NPStringFog;
import okio.AsyncTimeout;
import okio.Buffer;
import okio.BufferedSource;
import okio.Sink;
import okio.Source;
import okio.Timeout;

/* JADX INFO: loaded from: classes62.dex */
public final class Http2Stream {
    static final boolean $assertionsDisabled;
    long bytesLeftInWriteWindow;
    final Http2Connection connection;
    private boolean hasResponseHeaders;
    final int id;
    private final List<Header> requestHeaders;
    private List<Header> responseHeaders;
    final FramingSink sink;
    private final FramingSource source;
    long unacknowledgedBytesRead = 0;
    final StreamTimeout readTimeout = new StreamTimeout(this);
    final StreamTimeout writeTimeout = new StreamTimeout(this);
    ErrorCode errorCode = null;

    final class FramingSink implements Sink {
        static final boolean $assertionsDisabled;
        private static final long EMIT_BUFFER_SIZE = 16384;
        boolean closed;
        boolean finished;
        private final Buffer sendBuffer = new Buffer();
        final Http2Stream this$0;

        static {
            $assertionsDisabled = !Http2Stream.class.desiredAssertionStatus();
        }

        FramingSink(Http2Stream http2Stream) {
            this.this$0 = http2Stream;
        }

        private void emitFrame(boolean z) throws IOException {
            long jMin;
            synchronized (this.this$0) {
                this.this$0.writeTimeout.enter();
                while (this.this$0.bytesLeftInWriteWindow <= 0 && !this.finished && !this.closed && this.this$0.errorCode == null) {
                    try {
                        this.this$0.waitForIo();
                    } finally {
                    }
                }
                this.this$0.writeTimeout.exitAndThrowIfTimedOut();
                this.this$0.checkOutNotClosed();
                jMin = Math.min(this.this$0.bytesLeftInWriteWindow, this.sendBuffer.size());
                this.this$0.bytesLeftInWriteWindow -= jMin;
            }
            this.this$0.writeTimeout.enter();
            try {
                this.this$0.connection.writeData(this.this$0.id, z && jMin == this.sendBuffer.size(), this.sendBuffer, jMin);
            } finally {
            }
        }

        @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (!$assertionsDisabled && Thread.holdsLock(this.this$0)) {
                throw new AssertionError();
            }
            synchronized (this.this$0) {
                if (this.closed) {
                    return;
                }
                if (!this.this$0.sink.finished) {
                    if (this.sendBuffer.size() > 0) {
                        while (this.sendBuffer.size() > 0) {
                            emitFrame(true);
                        }
                    } else {
                        this.this$0.connection.writeData(this.this$0.id, true, null, 0L);
                    }
                }
                synchronized (this.this$0) {
                    this.closed = true;
                }
                this.this$0.connection.flush();
                this.this$0.cancelStreamIfNecessary();
            }
        }

        @Override // okio.Sink, java.io.Flushable
        public void flush() throws IOException {
            if (!$assertionsDisabled && Thread.holdsLock(this.this$0)) {
                throw new AssertionError();
            }
            synchronized (this.this$0) {
                this.this$0.checkOutNotClosed();
            }
            while (this.sendBuffer.size() > 0) {
                emitFrame(false);
                this.this$0.connection.flush();
            }
        }

        @Override // okio.Sink
        public Timeout timeout() {
            return this.this$0.writeTimeout;
        }

        @Override // okio.Sink
        public void write(Buffer buffer, long j) throws IOException {
            if (!$assertionsDisabled && Thread.holdsLock(this.this$0)) {
                throw new AssertionError();
            }
            this.sendBuffer.write(buffer, j);
            while (this.sendBuffer.size() >= EMIT_BUFFER_SIZE) {
                emitFrame(false);
            }
        }
    }

    private final class FramingSource implements Source {
        static final boolean $assertionsDisabled;
        boolean closed;
        boolean finished;
        private final long maxByteCount;
        final Http2Stream this$0;
        private final Buffer receiveBuffer = new Buffer();
        private final Buffer readBuffer = new Buffer();

        static {
            $assertionsDisabled = !Http2Stream.class.desiredAssertionStatus();
        }

        FramingSource(Http2Stream http2Stream, long j) {
            this.this$0 = http2Stream;
            this.maxByteCount = j;
        }

        private void checkNotClosed() throws IOException {
            if (this.closed) {
                throw new IOException(NPStringFog.decode(new byte[]{18, 70, 70, 1, 81, 11, 65, 81, 88, 11, 67, 3, 5}, "a24d0f", 2.954388E8f));
            }
            if (this.this$0.errorCode != null) {
                throw new StreamResetException(this.this$0.errorCode);
            }
        }

        private void waitUntilReadable() throws IOException {
            this.this$0.readTimeout.enter();
            while (this.readBuffer.size() == 0 && !this.finished && !this.closed && this.this$0.errorCode == null) {
                try {
                    this.this$0.waitForIo();
                } finally {
                    this.this$0.readTimeout.exitAndThrowIfTimedOut();
                }
            }
        }

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            synchronized (this.this$0) {
                this.closed = true;
                this.readBuffer.clear();
                this.this$0.notifyAll();
            }
            this.this$0.cancelStreamIfNecessary();
        }

        @Override // okio.Source
        public long read(Buffer buffer, long j) throws IOException {
            long j2;
            if (j < 0) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{4, 73, 71, 87, 37, 88, 19, 94, 71, 18, 90, 23, 86, 10, 19}, "f032f7", 725629805L) + j);
            }
            synchronized (this.this$0) {
                waitUntilReadable();
                checkNotClosed();
                if (this.readBuffer.size() == 0) {
                    j2 = -1;
                } else {
                    j2 = this.readBuffer.read(buffer, Math.min(j, this.readBuffer.size()));
                    this.this$0.unacknowledgedBytesRead += j2;
                    if (this.this$0.unacknowledgedBytesRead >= this.this$0.connection.okHttpSettings.getInitialWindowSize() / 2) {
                        this.this$0.connection.writeWindowUpdateLater(this.this$0.id, this.this$0.unacknowledgedBytesRead);
                        this.this$0.unacknowledgedBytesRead = 0L;
                    }
                    synchronized (this.this$0.connection) {
                        this.this$0.connection.unacknowledgedBytesRead += j2;
                        if (this.this$0.connection.unacknowledgedBytesRead >= this.this$0.connection.okHttpSettings.getInitialWindowSize() / 2) {
                            this.this$0.connection.writeWindowUpdateLater(0, this.this$0.connection.unacknowledgedBytesRead);
                            this.this$0.connection.unacknowledgedBytesRead = 0L;
                        }
                    }
                }
            }
            return j2;
        }

        void receive(BufferedSource bufferedSource, long j) throws IOException {
            boolean z;
            boolean z2;
            if (!$assertionsDisabled && Thread.holdsLock(this.this$0)) {
                throw new AssertionError();
            }
            while (j > 0) {
                synchronized (this.this$0) {
                    z = this.finished;
                    z2 = this.readBuffer.size() + j > this.maxByteCount;
                }
                if (z2) {
                    bufferedSource.skip(j);
                    this.this$0.closeLater(ErrorCode.FLOW_CONTROL_ERROR);
                    return;
                }
                if (z) {
                    bufferedSource.skip(j);
                    return;
                }
                long j2 = bufferedSource.read(this.receiveBuffer, j);
                if (j2 == -1) {
                    throw new EOFException();
                }
                j -= j2;
                synchronized (this.this$0) {
                    boolean z3 = this.readBuffer.size() == 0;
                    this.readBuffer.writeAll(this.receiveBuffer);
                    if (z3) {
                        this.this$0.notifyAll();
                    }
                }
            }
        }

        @Override // okio.Source
        public Timeout timeout() {
            return this.this$0.readTimeout;
        }
    }

    class StreamTimeout extends AsyncTimeout {
        final Http2Stream this$0;

        StreamTimeout(Http2Stream http2Stream) {
            this.this$0 = http2Stream;
        }

        public void exitAndThrowIfTimedOut() throws IOException {
            if (exit()) {
                throw newTimeoutException(null);
            }
        }

        @Override // okio.AsyncTimeout
        protected IOException newTimeoutException(IOException iOException) {
            SocketTimeoutException socketTimeoutException = new SocketTimeoutException(NPStringFog.decode(new byte[]{18, 13, 90, 84, 12, 64, 18}, "fd71c5", false));
            if (iOException != null) {
                socketTimeoutException.initCause(iOException);
            }
            return socketTimeoutException;
        }

        @Override // okio.AsyncTimeout
        protected void timedOut() {
            this.this$0.closeLater(ErrorCode.CANCEL);
        }
    }

    static {
        $assertionsDisabled = !Http2Stream.class.desiredAssertionStatus();
    }

    Http2Stream(int i, Http2Connection http2Connection, boolean z, boolean z2, List<Header> list) {
        if (http2Connection == null) {
            throw new NullPointerException(NPStringFog.decode(new byte[]{87, 94, 11, 91, 93, 90, 64, 88, 10, 91, 24, 4, 9, 17, 11, 64, 84, 85}, "41e589", -1364506851L));
        }
        if (list == null) {
            throw new NullPointerException(NPStringFog.decode(new byte[]{69, 93, 71, 19, 85, 69, 67, 112, 83, 7, 84, 83, 69, 75, 22, 91, 13, 22, 89, 77, 90, 10}, "786f06", -587608104L));
        }
        this.id = i;
        this.connection = http2Connection;
        this.bytesLeftInWriteWindow = http2Connection.peerSettings.getInitialWindowSize();
        this.source = new FramingSource(this, http2Connection.okHttpSettings.getInitialWindowSize());
        this.sink = new FramingSink(this);
        this.source.finished = z2;
        this.sink.finished = z;
        this.requestHeaders = list;
    }

    private boolean closeInternal(ErrorCode errorCode) {
        if (!$assertionsDisabled && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        synchronized (this) {
            if (this.errorCode != null) {
                return false;
            }
            if (this.source.finished && this.sink.finished) {
                return false;
            }
            this.errorCode = errorCode;
            notifyAll();
            this.connection.removeStream(this.id);
            return true;
        }
    }

    void addBytesToWriteWindow(long j) {
        this.bytesLeftInWriteWindow += j;
        if (j > 0) {
            notifyAll();
        }
    }

    void cancelStreamIfNecessary() throws IOException {
        boolean z;
        boolean zIsOpen;
        if (!$assertionsDisabled && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        synchronized (this) {
            z = !this.source.finished && this.source.closed && (this.sink.finished || this.sink.closed);
            zIsOpen = isOpen();
        }
        if (z) {
            close(ErrorCode.CANCEL);
        } else {
            if (zIsOpen) {
                return;
            }
            this.connection.removeStream(this.id);
        }
    }

    void checkOutNotClosed() throws IOException {
        if (this.sink.closed) {
            throw new IOException(NPStringFog.decode(new byte[]{17, 17, 23, 84, 4, 8, 66, 6, 9, 94, 22, 0, 6}, "bee1ee", false, true));
        }
        if (this.sink.finished) {
            throw new IOException(NPStringFog.decode(new byte[]{71, 21, 19, 93, 2, 14, 20, 7, 8, 86, 10, 16, 92, 4, 5}, "4aa8cc", -1.619687921E9d));
        }
        if (this.errorCode != null) {
            throw new StreamResetException(this.errorCode);
        }
    }

    public void close(ErrorCode errorCode) throws IOException {
        if (closeInternal(errorCode)) {
            this.connection.writeSynReset(this.id, errorCode);
        }
    }

    public void closeLater(ErrorCode errorCode) {
        if (closeInternal(errorCode)) {
            this.connection.writeSynResetLater(this.id, errorCode);
        }
    }

    public Http2Connection getConnection() {
        return this.connection;
    }

    public ErrorCode getErrorCode() {
        ErrorCode errorCode;
        synchronized (this) {
            errorCode = this.errorCode;
        }
        return errorCode;
    }

    public int getId() {
        return this.id;
    }

    public List<Header> getRequestHeaders() {
        return this.requestHeaders;
    }

    public Sink getSink() {
        synchronized (this) {
            if (!this.hasResponseHeaders && !isLocallyInitiated()) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{66, 7, 17, 90, 77, 25, 82, 7, 7, 89, 70, 92, 16, 16, 4, 71, 65, 92, 67, 22, 8, 88, 83, 25, 68, 10, 4, 22, 71, 80, 94, 9}, "0ba649", true));
            }
        }
        return this.sink;
    }

    public Source getSource() {
        return this.source;
    }

    public boolean isLocallyInitiated() {
        return this.connection.client == ((this.id & 1) == 1);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean isOpen() {
        /*
            r2 = this;
            r0 = 0
            monitor-enter(r2)
            okhttp3.internal.http2.ErrorCode r1 = r2.errorCode     // Catch: java.lang.Throwable -> L26
            if (r1 == 0) goto L8
        L6:
            monitor-exit(r2)
            return r0
        L8:
            okhttp3.internal.http2.Http2Stream$FramingSource r1 = r2.source     // Catch: java.lang.Throwable -> L26
            boolean r1 = r1.finished     // Catch: java.lang.Throwable -> L26
            if (r1 != 0) goto L14
            okhttp3.internal.http2.Http2Stream$FramingSource r1 = r2.source     // Catch: java.lang.Throwable -> L26
            boolean r1 = r1.closed     // Catch: java.lang.Throwable -> L26
            if (r1 == 0) goto L24
        L14:
            okhttp3.internal.http2.Http2Stream$FramingSink r1 = r2.sink     // Catch: java.lang.Throwable -> L26
            boolean r1 = r1.finished     // Catch: java.lang.Throwable -> L26
            if (r1 != 0) goto L20
            okhttp3.internal.http2.Http2Stream$FramingSink r1 = r2.sink     // Catch: java.lang.Throwable -> L26
            boolean r1 = r1.closed     // Catch: java.lang.Throwable -> L26
            if (r1 == 0) goto L24
        L20:
            boolean r1 = r2.hasResponseHeaders     // Catch: java.lang.Throwable -> L26
            if (r1 != 0) goto L6
        L24:
            r0 = 1
            goto L6
        L26:
            r0 = move-exception
            monitor-exit(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.Http2Stream.isOpen():boolean");
    }

    public Timeout readTimeout() {
        return this.readTimeout;
    }

    void receiveData(BufferedSource bufferedSource, int i) throws IOException {
        if (!$assertionsDisabled && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        this.source.receive(bufferedSource, i);
    }

    void receiveFin() {
        boolean zIsOpen;
        if (!$assertionsDisabled && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        synchronized (this) {
            this.source.finished = true;
            zIsOpen = isOpen();
            notifyAll();
        }
        if (zIsOpen) {
            return;
        }
        this.connection.removeStream(this.id);
    }

    void receiveHeaders(List<Header> list) {
        boolean zIsOpen = true;
        if (!$assertionsDisabled && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        synchronized (this) {
            this.hasResponseHeaders = true;
            if (this.responseHeaders == null) {
                this.responseHeaders = list;
                zIsOpen = isOpen();
                notifyAll();
            } else {
                ArrayList arrayList = new ArrayList();
                arrayList.addAll(this.responseHeaders);
                arrayList.add(null);
                arrayList.addAll(list);
                this.responseHeaders = arrayList;
            }
        }
        if (zIsOpen) {
            return;
        }
        this.connection.removeStream(this.id);
    }

    void receiveRstStream(ErrorCode errorCode) {
        synchronized (this) {
            if (this.errorCode == null) {
                this.errorCode = errorCode;
                notifyAll();
            }
        }
    }

    public void sendResponseHeaders(List<Header> list, boolean z) throws IOException {
        boolean z2 = true;
        if (!$assertionsDisabled && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        if (list == null) {
            throw new NullPointerException(NPStringFog.decode(new byte[]{16, 80, 17, 64, 93, 91, 17, 80, 42, 85, 83, 81, 7, 71, 17, 16, 15, 8, 66, 91, 23, 92, 94}, "b5b025", 1504));
        }
        synchronized (this) {
            this.hasResponseHeaders = true;
            if (z) {
                z2 = false;
            } else {
                this.sink.finished = true;
            }
        }
        this.connection.writeSynReply(this.id, z2, list);
        if (z2) {
            this.connection.flush();
        }
    }

    public List<Header> takeResponseHeaders() throws IOException {
        List<Header> list;
        synchronized (this) {
            if (!isLocallyInitiated()) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{64, 85, 69, 66, 83, 75, 64, 16, 84, 85, 88, 87, 92, 68, 23, 70, 83, 88, 87, 16, 69, 81, 69, 73, 92, 94, 68, 81, 22, 81, 86, 81, 83, 81, 68, 74}, "307469", 1.382669054E9d));
            }
            this.readTimeout.enter();
            while (this.responseHeaders == null && this.errorCode == null) {
                try {
                    waitForIo();
                } catch (Throwable th) {
                    this.readTimeout.exitAndThrowIfTimedOut();
                    throw th;
                }
            }
            this.readTimeout.exitAndThrowIfTimedOut();
            list = this.responseHeaders;
            if (list == null) {
                throw new StreamResetException(this.errorCode);
            }
            this.responseHeaders = null;
        }
        return list;
    }

    void waitForIo() throws InterruptedIOException {
        try {
            wait();
        } catch (InterruptedException e) {
            throw new InterruptedIOException();
        }
    }

    public Timeout writeTimeout() {
        return this.writeTimeout;
    }
}
