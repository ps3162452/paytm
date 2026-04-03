package okhttp3.internal.http2;

import androidx.core.internal.view.SupportMenu;
import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import n.NPStringFog;
import okhttp3.Protocol;
import okhttp3.internal.NamedRunnable;
import okhttp3.internal.Util;
import okhttp3.internal.http2.Http2Reader;
import okhttp3.internal.platform.Platform;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ByteString;
import okio.Okio;

/* JADX INFO: loaded from: classes62.dex */
public final class Http2Connection implements Closeable {
    static final boolean $assertionsDisabled;
    private static final int OKHTTP_CLIENT_WINDOW_SIZE = 16777216;
    static final ExecutorService executor;
    long bytesLeftInWriteWindow;
    final boolean client;
    final String hostname;
    int lastGoodStreamId;
    final Listener listener;
    private int nextPingId;
    int nextStreamId;
    private Map<Integer, Ping> pings;
    private final ExecutorService pushExecutor;
    final PushObserver pushObserver;
    final ReaderRunnable readerRunnable;
    boolean shutdown;
    final Socket socket;
    final Http2Writer writer;
    final Map<Integer, Http2Stream> streams = new LinkedHashMap();
    long unacknowledgedBytesRead = 0;
    Settings okHttpSettings = new Settings();
    final Settings peerSettings = new Settings();
    boolean receivedInitialPeerSettings = false;
    final Set<Integer> currentPushRequests = new LinkedHashSet();

    public static class Builder {
        boolean client;
        String hostname;
        Listener listener = Listener.REFUSE_INCOMING_STREAMS;
        PushObserver pushObserver = PushObserver.CANCEL;
        BufferedSink sink;
        Socket socket;
        BufferedSource source;

        public Builder(boolean z) {
            this.client = z;
        }

        public Http2Connection build() {
            return new Http2Connection(this);
        }

        public Builder listener(Listener listener) {
            this.listener = listener;
            return this;
        }

        public Builder pushObserver(PushObserver pushObserver) {
            this.pushObserver = pushObserver;
            return this;
        }

        public Builder socket(Socket socket) throws IOException {
            return socket(socket, ((InetSocketAddress) socket.getRemoteSocketAddress()).getHostName(), Okio.buffer(Okio.source(socket)), Okio.buffer(Okio.sink(socket)));
        }

        public Builder socket(Socket socket, String str, BufferedSource bufferedSource, BufferedSink bufferedSink) {
            this.socket = socket;
            this.hostname = str;
            this.source = bufferedSource;
            this.sink = bufferedSink;
            return this;
        }
    }

    public static abstract class Listener {
        public static final Listener REFUSE_INCOMING_STREAMS = new Listener() { // from class: okhttp3.internal.http2.Http2Connection.Listener.1
            @Override // okhttp3.internal.http2.Http2Connection.Listener
            public void onStream(Http2Stream http2Stream) throws IOException {
                http2Stream.close(ErrorCode.REFUSED_STREAM);
            }
        };

        public void onSettings(Http2Connection http2Connection) {
        }

        public abstract void onStream(Http2Stream http2Stream) throws IOException;
    }

    class ReaderRunnable extends NamedRunnable implements Http2Reader.Handler {
        final Http2Reader reader;
        final Http2Connection this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        ReaderRunnable(Http2Connection http2Connection, Http2Reader http2Reader) {
            super(NPStringFog.decode(new byte[]{41, 15, 113, 70, 68, 18, 70, 65, 74}, "fd920b", false, false), http2Connection.hostname);
            this.this$0 = http2Connection;
            this.reader = http2Reader;
        }

        private void applyAndAckSettings(Settings settings) {
            Http2Connection.executor.execute(new NamedRunnable(this, NPStringFog.decode(new byte[]{120, 89, 124, 68, 70, 21, 23, 23, 71, 16, 115, 38, 124, 18, 103, 85, 70, 17, 94, 92, 83, 67}, "72402e", false, true), new Object[]{this.this$0.hostname}, settings) { // from class: okhttp3.internal.http2.Http2Connection.ReaderRunnable.3
                final ReaderRunnable this$1;
                final Settings val$peerSettings;

                {
                    this.this$1 = this;
                    this.val$peerSettings = settings;
                }

                @Override // okhttp3.internal.NamedRunnable
                public void execute() {
                    try {
                        this.this$1.this$0.writer.applyAndAckSettings(this.val$peerSettings);
                    } catch (IOException e) {
                    }
                }
            });
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void ackSettings() {
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void alternateService(int i, String str, ByteString byteString, String str2, int i2, long j) {
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void data(boolean z, int i, BufferedSource bufferedSource, int i2) throws IOException {
            if (this.this$0.pushedStream(i)) {
                this.this$0.pushDataLater(i, bufferedSource, i2, z);
                return;
            }
            Http2Stream stream = this.this$0.getStream(i);
            if (stream == null) {
                this.this$0.writeSynResetLater(i, ErrorCode.PROTOCOL_ERROR);
                bufferedSource.skip(i2);
            } else {
                stream.receiveData(bufferedSource, i2);
                if (z) {
                    stream.receiveFin();
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [okhttp3.internal.http2.ErrorCode] */
        /* JADX WARN: Type inference failed for: r0v12 */
        /* JADX WARN: Type inference failed for: r0v13 */
        /* JADX WARN: Type inference failed for: r0v6 */
        /* JADX WARN: Type inference failed for: r0v8 */
        /* JADX WARN: Type inference failed for: r0v9, types: [okhttp3.internal.http2.ErrorCode] */
        /* JADX WARN: Type inference failed for: r1v1, types: [okhttp3.internal.http2.ErrorCode] */
        /* JADX WARN: Type inference failed for: r1v2, types: [okhttp3.internal.http2.ErrorCode] */
        /* JADX WARN: Type inference failed for: r1v6 */
        /* JADX WARN: Type inference failed for: r2v0, types: [okhttp3.internal.http2.ErrorCode] */
        /* JADX WARN: Type inference failed for: r2v1 */
        /* JADX WARN: Type inference failed for: r2v10 */
        /* JADX WARN: Type inference failed for: r2v11 */
        /* JADX WARN: Type inference failed for: r2v2 */
        /* JADX WARN: Type inference failed for: r2v3, types: [okhttp3.internal.http2.Http2Connection] */
        /* JADX WARN: Type inference failed for: r2v4, types: [okhttp3.internal.http2.ErrorCode] */
        /* JADX WARN: Type inference failed for: r2v5 */
        /* JADX WARN: Type inference failed for: r2v6 */
        /* JADX WARN: Type inference failed for: r2v7 */
        /* JADX WARN: Type inference failed for: r2v8 */
        /* JADX WARN: Type inference failed for: r2v9, types: [okhttp3.internal.http2.Http2Connection] */
        /* JADX WARN: Type inference failed for: r3v0, types: [okhttp3.internal.http2.Http2Connection] */
        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        @Override // okhttp3.internal.NamedRunnable
        protected void execute() throws Throwable {
            ?? r1;
            ?? r0 = ErrorCode.INTERNAL_ERROR;
            ?? r2 = ErrorCode.INTERNAL_ERROR;
            try {
                try {
                    this.reader.readConnectionPreface(this);
                    while (this.reader.nextFrame(false, this)) {
                    }
                    r0 = ErrorCode.NO_ERROR;
                    ErrorCode errorCode = ErrorCode.CANCEL;
                    try {
                        r2 = this.this$0;
                        r2.close(r0, errorCode);
                    } catch (IOException e) {
                    }
                    Http2Reader http2Reader = this.reader;
                    Util.closeQuietly(http2Reader);
                    r0 = http2Reader;
                    r2 = r2;
                } catch (Throwable th) {
                    r1 = r0;
                    th = th;
                    try {
                        this.this$0.close(r1, r2);
                    } catch (IOException e2) {
                    }
                    Util.closeQuietly(this.reader);
                    throw th;
                }
            } catch (IOException e3) {
                r1 = ErrorCode.PROTOCOL_ERROR;
                try {
                    ErrorCode errorCode2 = ErrorCode.PROTOCOL_ERROR;
                    try {
                        r2 = this.this$0;
                        r2.close(r1, errorCode2);
                    } catch (IOException e4) {
                    }
                    Http2Reader http2Reader2 = this.reader;
                    Util.closeQuietly(http2Reader2);
                    r0 = http2Reader2;
                    r2 = r2;
                } catch (Throwable th2) {
                    th = th2;
                    this.this$0.close(r1, r2);
                    Util.closeQuietly(this.reader);
                    throw th;
                }
            }
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void goAway(int i, ErrorCode errorCode, ByteString byteString) {
            Http2Stream[] http2StreamArr;
            if (byteString.size() > 0) {
            }
            synchronized (this.this$0) {
                http2StreamArr = (Http2Stream[]) this.this$0.streams.values().toArray(new Http2Stream[this.this$0.streams.size()]);
                this.this$0.shutdown = true;
            }
            for (Http2Stream http2Stream : http2StreamArr) {
                if (http2Stream.getId() > i && http2Stream.isLocallyInitiated()) {
                    http2Stream.receiveRstStream(ErrorCode.REFUSED_STREAM);
                    this.this$0.removeStream(http2Stream.getId());
                }
            }
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void headers(boolean z, int i, int i2, List<Header> list) {
            if (this.this$0.pushedStream(i)) {
                this.this$0.pushHeadersLater(i, list, z);
                return;
            }
            synchronized (this.this$0) {
                Http2Stream stream = this.this$0.getStream(i);
                if (stream != null) {
                    stream.receiveHeaders(list);
                    if (z) {
                        stream.receiveFin();
                    }
                } else if (!this.this$0.shutdown) {
                    if (i > this.this$0.lastGoodStreamId) {
                        if (i % 2 != this.this$0.nextStreamId % 2) {
                            Http2Stream http2Stream = new Http2Stream(i, this.this$0, false, z, list);
                            this.this$0.lastGoodStreamId = i;
                            this.this$0.streams.put(Integer.valueOf(i), http2Stream);
                            Http2Connection.executor.execute(new NamedRunnable(this, NPStringFog.decode(new byte[]{43, 90, 41, 76, 76, 18, 68, 20, 18, 24, 75, 22, 22, 84, 0, 85, 24, 71, 0}, "d1a88b", 11352), new Object[]{this.this$0.hostname, Integer.valueOf(i)}, http2Stream) { // from class: okhttp3.internal.http2.Http2Connection.ReaderRunnable.1
                                final ReaderRunnable this$1;
                                final Http2Stream val$newStream;

                                {
                                    this.this$1 = this;
                                    this.val$newStream = http2Stream;
                                }

                                @Override // okhttp3.internal.NamedRunnable
                                public void execute() {
                                    try {
                                        this.this$1.this$0.listener.onStream(this.val$newStream);
                                    } catch (IOException e) {
                                        Platform.get().log(4, NPStringFog.decode(new byte[]{43, 16, 71, 22, 5, 34, 12, 10, 93, 3, 84, 21, 10, 11, 93, 72, 123, 8, 16, 16, 86, 8, 82, 19, 67, 2, 82, 15, 91, 20, 17, 1, 19, 0, 88, 19, 67}, "cd3f7a", false) + this.this$1.this$0.hostname, e);
                                        try {
                                            this.val$newStream.close(ErrorCode.PROTOCOL_ERROR);
                                        } catch (IOException e2) {
                                        }
                                    }
                                }
                            });
                        }
                    }
                }
            }
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void ping(boolean z, int i, int i2) {
            if (!z) {
                this.this$0.writePingLater(true, i, i2, null);
                return;
            }
            Ping pingRemovePing = this.this$0.removePing(i);
            if (pingRemovePing != null) {
                pingRemovePing.receive();
            }
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void priority(int i, int i2, int i3, boolean z) {
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void pushPromise(int i, int i2, List<Header> list) {
            this.this$0.pushRequestLater(i2, list);
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void rstStream(int i, ErrorCode errorCode) {
            if (this.this$0.pushedStream(i)) {
                this.this$0.pushResetLater(i, errorCode);
                return;
            }
            Http2Stream http2StreamRemoveStream = this.this$0.removeStream(i);
            if (http2StreamRemoveStream != null) {
                http2StreamRemoveStream.receiveRstStream(errorCode);
            }
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void settings(boolean z, Settings settings) {
            long j;
            Http2Stream[] http2StreamArr;
            synchronized (this.this$0) {
                int initialWindowSize = this.this$0.peerSettings.getInitialWindowSize();
                if (z) {
                    this.this$0.peerSettings.clear();
                }
                this.this$0.peerSettings.merge(settings);
                applyAndAckSettings(settings);
                int initialWindowSize2 = this.this$0.peerSettings.getInitialWindowSize();
                if (initialWindowSize2 == -1 || initialWindowSize2 == initialWindowSize) {
                    j = 0;
                    http2StreamArr = null;
                } else {
                    j = initialWindowSize2 - initialWindowSize;
                    if (!this.this$0.receivedInitialPeerSettings) {
                        this.this$0.addBytesToWriteWindow(j);
                        this.this$0.receivedInitialPeerSettings = true;
                    }
                    http2StreamArr = !this.this$0.streams.isEmpty() ? (Http2Stream[]) this.this$0.streams.values().toArray(new Http2Stream[this.this$0.streams.size()]) : null;
                }
                Http2Connection.executor.execute(new NamedRunnable(this, NPStringFog.decode(new byte[]{127, 89, 121, 69, 69, 18, 16, 23, 66, 17, 66, 7, 68, 70, 88, 95, 86, 17}, "02111b", -1.504586502E9d), this.this$0.hostname) { // from class: okhttp3.internal.http2.Http2Connection.ReaderRunnable.2
                    final ReaderRunnable this$1;

                    {
                        this.this$1 = this;
                    }

                    @Override // okhttp3.internal.NamedRunnable
                    public void execute() {
                        this.this$1.this$0.listener.onSettings(this.this$1.this$0);
                    }
                });
            }
            if (http2StreamArr == null || j == 0) {
                return;
            }
            for (Http2Stream http2Stream : http2StreamArr) {
                synchronized (http2Stream) {
                    http2Stream.addBytesToWriteWindow(j);
                }
            }
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void windowUpdate(int i, long j) {
            if (i == 0) {
                synchronized (this.this$0) {
                    this.this$0.bytesLeftInWriteWindow += j;
                    this.this$0.notifyAll();
                }
                return;
            }
            Http2Stream stream = this.this$0.getStream(i);
            if (stream != null) {
                synchronized (stream) {
                    stream.addBytesToWriteWindow(j);
                }
            }
        }
    }

    static {
        $assertionsDisabled = !Http2Connection.class.desiredAssertionStatus();
        executor = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), Util.threadFactory(NPStringFog.decode(new byte[]{127, 92, 42, 18, 77, 19, 16, 127, 22, 18, 73, 81, 115, 88, 12, 8, 92, 0, 68, 94, 13, 8}, "07bf9c", true), true));
    }

    Http2Connection(Builder builder) {
        this.pushObserver = builder.pushObserver;
        this.client = builder.client;
        this.listener = builder.listener;
        this.nextStreamId = builder.client ? 1 : 2;
        if (builder.client) {
            this.nextStreamId += 2;
        }
        this.nextPingId = builder.client ? 1 : 2;
        if (builder.client) {
            this.okHttpSettings.set(7, 16777216);
        }
        this.hostname = builder.hostname;
        this.pushExecutor = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), Util.threadFactory(Util.format(NPStringFog.decode(new byte[]{46, 14, 44, 76, 65, 21, 65, 64, 23, 24, 101, 16, 18, 13, 68, 119, 87, 22, 4, 23, 18, 93, 71}, "aed85e", true), this.hostname), true));
        this.peerSettings.set(7, SupportMenu.USER_MASK);
        this.peerSettings.set(5, 16384);
        this.bytesLeftInWriteWindow = this.peerSettings.getInitialWindowSize();
        this.socket = builder.socket;
        this.writer = new Http2Writer(builder.sink, this.client);
        this.readerRunnable = new ReaderRunnable(this, new Http2Reader(builder.source, this.client));
    }

    private Http2Stream newStream(int i, List<Header> list, boolean z) throws IOException {
        int i2;
        Http2Stream http2Stream;
        boolean z2;
        boolean z3 = !z;
        synchronized (this.writer) {
            synchronized (this) {
                if (this.shutdown) {
                    throw new ConnectionShutdownException();
                }
                i2 = this.nextStreamId;
                this.nextStreamId += 2;
                http2Stream = new Http2Stream(i2, this, z3, false, list);
                z2 = !z || this.bytesLeftInWriteWindow == 0 || http2Stream.bytesLeftInWriteWindow == 0;
                if (http2Stream.isOpen()) {
                    this.streams.put(Integer.valueOf(i2), http2Stream);
                }
            }
            if (i == 0) {
                this.writer.synStream(z3, i2, i, list);
            } else {
                if (this.client) {
                    throw new IllegalArgumentException(NPStringFog.decode(new byte[]{87, 94, 94, 3, 87, 69, 20, 65, 67, 20, 92, 80, 89, 65, 23, 21, 81, 94, 65, 94, 83, 8, 30, 69, 20, 90, 86, 16, 92, 17, 85, 65, 68, 9, 90, 88, 85, 70, 82, 2, 25, 66, 64, 64, 82, 7, 84, 17, 125, 118, 68}, "427f91", -2.4864973E8f));
                }
                this.writer.pushPromise(i, i2, list);
            }
        }
        if (z2) {
            this.writer.flush();
        }
        return http2Stream;
    }

    void addBytesToWriteWindow(long j) {
        this.bytesLeftInWriteWindow += j;
        if (j > 0) {
            notifyAll();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        close(ErrorCode.NO_ERROR, ErrorCode.CANCEL);
    }

    void close(ErrorCode errorCode, ErrorCode errorCode2) throws IOException {
        IOException iOException;
        Http2Stream[] http2StreamArr;
        Ping[] pingArr;
        if (!$assertionsDisabled && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        try {
            shutdown(errorCode);
            iOException = null;
        } catch (IOException e) {
            iOException = e;
        }
        synchronized (this) {
            if (this.streams.isEmpty()) {
                http2StreamArr = null;
            } else {
                Http2Stream[] http2StreamArr2 = (Http2Stream[]) this.streams.values().toArray(new Http2Stream[this.streams.size()]);
                this.streams.clear();
                http2StreamArr = http2StreamArr2;
            }
            if (this.pings != null) {
                Ping[] pingArr2 = (Ping[]) this.pings.values().toArray(new Ping[this.pings.size()]);
                this.pings = null;
                pingArr = pingArr2;
            } else {
                pingArr = null;
            }
        }
        if (http2StreamArr != null) {
            IOException iOException2 = iOException;
            for (Http2Stream http2Stream : http2StreamArr) {
                try {
                    http2Stream.close(errorCode2);
                } catch (IOException e2) {
                    if (iOException2 != null) {
                        iOException2 = e2;
                    }
                }
            }
            iOException = iOException2;
        }
        if (pingArr != null) {
            for (Ping ping : pingArr) {
                ping.cancel();
            }
        }
        try {
            this.writer.close();
            e = iOException;
        } catch (IOException e3) {
            e = e3;
            if (iOException != null) {
                e = iOException;
            }
        }
        try {
            this.socket.close();
        } catch (IOException e4) {
            e = e4;
        }
        if (e != null) {
            throw e;
        }
    }

    public void flush() throws IOException {
        this.writer.flush();
    }

    public Protocol getProtocol() {
        return Protocol.HTTP_2;
    }

    Http2Stream getStream(int i) {
        Http2Stream http2Stream;
        synchronized (this) {
            http2Stream = this.streams.get(Integer.valueOf(i));
        }
        return http2Stream;
    }

    public boolean isShutdown() {
        boolean z;
        synchronized (this) {
            z = this.shutdown;
        }
        return z;
    }

    public int maxConcurrentStreams() {
        int maxConcurrentStreams;
        synchronized (this) {
            maxConcurrentStreams = this.peerSettings.getMaxConcurrentStreams(Integer.MAX_VALUE);
        }
        return maxConcurrentStreams;
    }

    public Http2Stream newStream(List<Header> list, boolean z) throws IOException {
        return newStream(0, list, z);
    }

    public int openStreamCount() {
        int size;
        synchronized (this) {
            size = this.streams.size();
        }
        return size;
    }

    public Ping ping() throws IOException {
        int i;
        Ping ping = new Ping();
        synchronized (this) {
            if (this.shutdown) {
                throw new ConnectionShutdownException();
            }
            i = this.nextPingId;
            this.nextPingId += 2;
            if (this.pings == null) {
                this.pings = new LinkedHashMap();
            }
            this.pings.put(Integer.valueOf(i), ping);
        }
        writePing(false, i, 1330343787, ping);
        return ping;
    }

    void pushDataLater(int i, BufferedSource bufferedSource, int i2, boolean z) throws IOException {
        Buffer buffer = new Buffer();
        bufferedSource.require(i2);
        bufferedSource.read(buffer, i2);
        if (buffer.size() != i2) {
            throw new IOException(buffer.size() + NPStringFog.decode(new byte[]{24, 24, 5, 20}, "8984a9", -213485584L) + i2);
        }
        this.pushExecutor.execute(new NamedRunnable(this, NPStringFog.decode(new byte[]{41, 88, 121, 65, 70, 18, 70, 22, 66, 21, 98, 23, 21, 91, 17, 113, 83, 22, 7, 104, 20, 70, 111}, "f3152b", 1.8653855E9f), new Object[]{this.hostname, Integer.valueOf(i)}, i, buffer, i2, z) { // from class: okhttp3.internal.http2.Http2Connection.6
            final Http2Connection this$0;
            final Buffer val$buffer;
            final int val$byteCount;
            final boolean val$inFinished;
            final int val$streamId;

            {
                this.this$0 = this;
                this.val$streamId = i;
                this.val$buffer = buffer;
                this.val$byteCount = i2;
                this.val$inFinished = z;
            }

            @Override // okhttp3.internal.NamedRunnable
            public void execute() {
                try {
                    boolean zOnData = this.this$0.pushObserver.onData(this.val$streamId, this.val$buffer, this.val$byteCount, this.val$inFinished);
                    if (zOnData) {
                        this.this$0.writer.rstStream(this.val$streamId, ErrorCode.CANCEL);
                    }
                    if (zOnData || this.val$inFinished) {
                        synchronized (this.this$0) {
                            this.this$0.currentPushRequests.remove(Integer.valueOf(this.val$streamId));
                        }
                    }
                } catch (IOException e) {
                }
            }
        });
    }

    void pushHeadersLater(int i, List<Header> list, boolean z) {
        this.pushExecutor.execute(new NamedRunnable(this, NPStringFog.decode(new byte[]{41, 15, 43, 21, 67, 65, 70, 65, 16, 65, 103, 68, 21, 12, 67, 41, 82, 80, 2, 1, 17, 18, 108, 20, 21, 57}, "fdca71", true, false), new Object[]{this.hostname, Integer.valueOf(i)}, i, list, z) { // from class: okhttp3.internal.http2.Http2Connection.5
            final Http2Connection this$0;
            final boolean val$inFinished;
            final List val$requestHeaders;
            final int val$streamId;

            {
                this.this$0 = this;
                this.val$streamId = i;
                this.val$requestHeaders = list;
                this.val$inFinished = z;
            }

            @Override // okhttp3.internal.NamedRunnable
            public void execute() {
                boolean zOnHeaders = this.this$0.pushObserver.onHeaders(this.val$streamId, this.val$requestHeaders, this.val$inFinished);
                if (zOnHeaders) {
                    try {
                        this.this$0.writer.rstStream(this.val$streamId, ErrorCode.CANCEL);
                    } catch (IOException e) {
                        return;
                    }
                }
                if (zOnHeaders || this.val$inFinished) {
                    synchronized (this.this$0) {
                        this.this$0.currentPushRequests.remove(Integer.valueOf(this.val$streamId));
                    }
                }
            }
        });
    }

    void pushRequestLater(int i, List<Header> list) {
        synchronized (this) {
            if (this.currentPushRequests.contains(Integer.valueOf(i))) {
                writeSynResetLater(i, ErrorCode.PROTOCOL_ERROR);
            } else {
                this.currentPushRequests.add(Integer.valueOf(i));
                this.pushExecutor.execute(new NamedRunnable(this, NPStringFog.decode(new byte[]{122, 15, 46, 71, 65, 67, 21, 65, 21, 19, 101, 70, 70, 12, 70, 97, 80, 66, 64, 1, 21, 71, 110, 22, 70, 57}, "5df353", false, false), new Object[]{this.hostname, Integer.valueOf(i)}, i, list) { // from class: okhttp3.internal.http2.Http2Connection.4
                    final Http2Connection this$0;
                    final List val$requestHeaders;
                    final int val$streamId;

                    {
                        this.this$0 = this;
                        this.val$streamId = i;
                        this.val$requestHeaders = list;
                    }

                    @Override // okhttp3.internal.NamedRunnable
                    public void execute() {
                        if (this.this$0.pushObserver.onRequest(this.val$streamId, this.val$requestHeaders)) {
                            try {
                                this.this$0.writer.rstStream(this.val$streamId, ErrorCode.CANCEL);
                                synchronized (this.this$0) {
                                    this.this$0.currentPushRequests.remove(Integer.valueOf(this.val$streamId));
                                }
                            } catch (IOException e) {
                            }
                        }
                    }
                });
            }
        }
    }

    void pushResetLater(int i, ErrorCode errorCode) {
        this.pushExecutor.execute(new NamedRunnable(this, NPStringFog.decode(new byte[]{122, 14, 112, 18, 64, 20, 21, 64, 75, 70, 100, 17, 70, 13, 24, 52, 81, 23, 80, 17, 99, 67, 71, 57}, "5e8f4d", -1.4262754E8f), new Object[]{this.hostname, Integer.valueOf(i)}, i, errorCode) { // from class: okhttp3.internal.http2.Http2Connection.7
            final Http2Connection this$0;
            final ErrorCode val$errorCode;
            final int val$streamId;

            {
                this.this$0 = this;
                this.val$streamId = i;
                this.val$errorCode = errorCode;
            }

            @Override // okhttp3.internal.NamedRunnable
            public void execute() {
                this.this$0.pushObserver.onReset(this.val$streamId, this.val$errorCode);
                synchronized (this.this$0) {
                    this.this$0.currentPushRequests.remove(Integer.valueOf(this.val$streamId));
                }
            }
        });
    }

    public Http2Stream pushStream(int i, List<Header> list, boolean z) throws IOException {
        if (this.client) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{115, 14, 12, 82, 90, 64, 16, 1, 4, 89, 90, 91, 68, 66, 21, 66, 71, 92, 16, 16, 0, 70, 65, 81, 67, 22, 22, 25}, "0be744", true));
        }
        return newStream(i, list, z);
    }

    boolean pushedStream(int i) {
        return i != 0 && (i & 1) == 0;
    }

    Ping removePing(int i) {
        Ping pingRemove;
        synchronized (this) {
            pingRemove = this.pings != null ? this.pings.remove(Integer.valueOf(i)) : null;
        }
        return pingRemove;
    }

    Http2Stream removeStream(int i) {
        Http2Stream http2StreamRemove;
        synchronized (this) {
            http2StreamRemove = this.streams.remove(Integer.valueOf(i));
            notifyAll();
        }
        return http2StreamRemove;
    }

    public void setSettings(Settings settings) throws IOException {
        synchronized (this.writer) {
            synchronized (this) {
                if (this.shutdown) {
                    throw new ConnectionShutdownException();
                }
                this.okHttpSettings.merge(settings);
                this.writer.settings(settings);
            }
        }
    }

    public void shutdown(ErrorCode errorCode) throws IOException {
        synchronized (this.writer) {
            synchronized (this) {
                if (this.shutdown) {
                    return;
                }
                this.shutdown = true;
                this.writer.goAway(this.lastGoodStreamId, errorCode, Util.EMPTY_BYTE_ARRAY);
            }
        }
    }

    public void start() throws IOException {
        start(true);
    }

    void start(boolean z) throws IOException {
        if (z) {
            this.writer.connectionPreface();
            this.writer.settings(this.okHttpSettings);
            if (this.okHttpSettings.getInitialWindowSize() != 65535) {
                this.writer.windowUpdate(0, r0 - SupportMenu.USER_MASK);
            }
        }
        new Thread(this.readerRunnable).start();
    }

    public void writeData(int i, boolean z, Buffer buffer, long j) throws IOException {
        int iMin;
        if (j == 0) {
            this.writer.data(z, i, buffer, 0);
            return;
        }
        while (j > 0) {
            synchronized (this) {
                while (this.bytesLeftInWriteWindow <= 0) {
                    try {
                        if (!this.streams.containsKey(Integer.valueOf(i))) {
                            throw new IOException(NPStringFog.decode(new byte[]{16, 21, 17, 87, 81, 92, 67, 2, 15, 93, 67, 84, 7}, "cac201", true));
                        }
                        wait();
                    } catch (InterruptedException e) {
                        throw new InterruptedIOException();
                    }
                }
                iMin = Math.min((int) Math.min(j, this.bytesLeftInWriteWindow), this.writer.maxDataLength());
                this.bytesLeftInWriteWindow -= (long) iMin;
            }
            j -= (long) iMin;
            this.writer.data(z && j == 0, i, buffer, iMin);
        }
    }

    void writePing(boolean z, int i, int i2, Ping ping) throws IOException {
        synchronized (this.writer) {
            if (ping != null) {
                ping.send();
                this.writer.ping(z, i, i2);
            } else {
                this.writer.ping(z, i, i2);
            }
        }
    }

    void writePingLater(boolean z, int i, int i2, Ping ping) {
        executor.execute(new NamedRunnable(this, NPStringFog.decode(new byte[]{118, 10, 121, 70, 70, 73, 25, 68, 66, 18, 66, 80, 87, 6, 17, 23, 2, 1, 65, 68, 1, 10, 74}, "9a1229", -344990305L), new Object[]{this.hostname, Integer.valueOf(i), Integer.valueOf(i2)}, z, i, i2, ping) { // from class: okhttp3.internal.http2.Http2Connection.3
            final Http2Connection this$0;
            final int val$payload1;
            final int val$payload2;
            final Ping val$ping;
            final boolean val$reply;

            {
                this.this$0 = this;
                this.val$reply = z;
                this.val$payload1 = i;
                this.val$payload2 = i2;
                this.val$ping = ping;
            }

            @Override // okhttp3.internal.NamedRunnable
            public void execute() {
                try {
                    this.this$0.writePing(this.val$reply, this.val$payload1, this.val$payload2, this.val$ping);
                } catch (IOException e) {
                }
            }
        });
    }

    void writeSynReply(int i, boolean z, List<Header> list) throws IOException {
        this.writer.synReply(z, i, list);
    }

    void writeSynReset(int i, ErrorCode errorCode) throws IOException {
        this.writer.rstStream(i, errorCode);
    }

    void writeSynResetLater(int i, ErrorCode errorCode) {
        executor.execute(new NamedRunnable(this, NPStringFog.decode(new byte[]{122, 82, 113, 21, 21, 72, 21, 28, 74, 65, 18, 76, 71, 92, 88, 12, 65, 29, 81}, "599aa8", -4878), new Object[]{this.hostname, Integer.valueOf(i)}, i, errorCode) { // from class: okhttp3.internal.http2.Http2Connection.1
            final Http2Connection this$0;
            final ErrorCode val$errorCode;
            final int val$streamId;

            {
                this.this$0 = this;
                this.val$streamId = i;
                this.val$errorCode = errorCode;
            }

            @Override // okhttp3.internal.NamedRunnable
            public void execute() {
                try {
                    this.this$0.writeSynReset(this.val$streamId, this.val$errorCode);
                } catch (IOException e) {
                }
            }
        });
    }

    void writeWindowUpdateLater(int i, long j) {
        executor.execute(new NamedRunnable(this, NPStringFog.decode(new byte[]{118, 91, 125, 23, 22, 65, 25, 103, 92, 13, 6, 94, 78, 16, 96, 19, 6, 80, 77, 85, 21, 70, 17, 17, 74, 68, 71, 6, 3, 92, 25, 21, 81}, "905cb1", true), new Object[]{this.hostname, Integer.valueOf(i)}, i, j) { // from class: okhttp3.internal.http2.Http2Connection.2
            final Http2Connection this$0;
            final int val$streamId;
            final long val$unacknowledgedBytesRead;

            {
                this.this$0 = this;
                this.val$streamId = i;
                this.val$unacknowledgedBytesRead = j;
            }

            @Override // okhttp3.internal.NamedRunnable
            public void execute() {
                try {
                    this.this$0.writer.windowUpdate(this.val$streamId, this.val$unacknowledgedBytesRead);
                } catch (IOException e) {
                }
            }
        });
    }
}
