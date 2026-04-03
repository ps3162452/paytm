package okhttp3.internal.ws;

import androidx.core.view.PointerIconCompat;
import java.io.Closeable;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.ArrayDeque;
import java.util.Collections;
import java.util.List;
import java.util.Random;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import n.NPStringFog;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.EventListener;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.WebSocket;
import okhttp3.WebSocketListener;
import okhttp3.internal.Internal;
import okhttp3.internal.Util;
import okhttp3.internal.connection.StreamAllocation;
import okhttp3.internal.ws.WebSocketReader;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ByteString;
import okio.Okio;

/* JADX INFO: loaded from: classes62.dex */
public final class RealWebSocket implements WebSocket, WebSocketReader.FrameCallback {
    static final boolean $assertionsDisabled;
    private static final long CANCEL_AFTER_CLOSE_MILLIS = 60000;
    private static final long MAX_QUEUE_SIZE = 16777216;
    private static final List<Protocol> ONLY_HTTP1;
    private Call call;
    private ScheduledFuture<?> cancelFuture;
    private boolean enqueuedClose;
    private ScheduledExecutorService executor;
    private boolean failed;
    private final String key;
    final WebSocketListener listener;
    private final Request originalRequest;
    int pingCount;
    int pongCount;
    private long queueSize;
    private final Random random;
    private WebSocketReader reader;
    private String receivedCloseReason;
    private Streams streams;
    private WebSocketWriter writer;
    private final Runnable writerRunnable;
    private final ArrayDeque<ByteString> pongQueue = new ArrayDeque<>();
    private final ArrayDeque<Object> messageAndCloseQueue = new ArrayDeque<>();
    private int receivedCloseCode = -1;

    final class CancelRunnable implements Runnable {
        final RealWebSocket this$0;

        CancelRunnable(RealWebSocket realWebSocket) {
            this.this$0 = realWebSocket;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.this$0.cancel();
        }
    }

    static final class Close {
        final long cancelAfterCloseMillis;
        final int code;
        final ByteString reason;

        Close(int i, ByteString byteString, long j) {
            this.code = i;
            this.reason = byteString;
            this.cancelAfterCloseMillis = j;
        }
    }

    static final class Message {
        final ByteString data;
        final int formatOpcode;

        Message(int i, ByteString byteString) {
            this.formatOpcode = i;
            this.data = byteString;
        }
    }

    private final class PingRunnable implements Runnable {
        final RealWebSocket this$0;

        PingRunnable(RealWebSocket realWebSocket) {
            this.this$0 = realWebSocket;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.this$0.writePingFrame();
        }
    }

    public static abstract class Streams implements Closeable {
        public final boolean client;
        public final BufferedSink sink;
        public final BufferedSource source;

        public Streams(boolean z, BufferedSource bufferedSource, BufferedSink bufferedSink) {
            this.client = z;
            this.source = bufferedSource;
            this.sink = bufferedSink;
        }
    }

    static {
        $assertionsDisabled = !RealWebSocket.class.desiredAssertionStatus();
        ONLY_HTTP1 = Collections.singletonList(Protocol.HTTP_1_1);
    }

    public RealWebSocket(Request request, WebSocketListener webSocketListener, Random random) {
        if (!NPStringFog.decode(new byte[]{34, 125, 100}, "e801b3", -1.228198E9f).equals(request.method())) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{96, 1, 67, 76, 4, 22, 70, 68, 95, 76, 18, 17, 18, 6, 87, 25, 38, 32, 102, 94, 18}, "2d29ae", -1706828797L) + request.method());
        }
        this.originalRequest = request;
        this.listener = webSocketListener;
        this.random = random;
        byte[] bArr = new byte[16];
        random.nextBytes(bArr);
        this.key = ByteString.of(bArr).base64();
        this.writerRunnable = new Runnable(this) { // from class: okhttp3.internal.ws.RealWebSocket.1
            final RealWebSocket this$0;

            {
                this.this$0 = this;
            }

            @Override // java.lang.Runnable
            public void run() {
                do {
                    try {
                    } catch (IOException e) {
                        this.this$0.failWebSocket(e, null);
                        return;
                    }
                } while (this.this$0.writeOneFrame());
            }
        };
    }

    private void runWriter() {
        if (!$assertionsDisabled && !Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        if (this.executor != null) {
            this.executor.execute(this.writerRunnable);
        }
    }

    private boolean send(ByteString byteString, int i) {
        boolean z = false;
        synchronized (this) {
            if (!this.failed && !this.enqueuedClose) {
                if (this.queueSize + ((long) byteString.size()) > MAX_QUEUE_SIZE) {
                    close(PointerIconCompat.TYPE_CONTEXT_MENU, null);
                } else {
                    this.queueSize += (long) byteString.size();
                    this.messageAndCloseQueue.add(new Message(i, byteString));
                    runWriter();
                    z = true;
                }
            }
        }
        return z;
    }

    void awaitTermination(int i, TimeUnit timeUnit) throws InterruptedException {
        this.executor.awaitTermination(i, timeUnit);
    }

    @Override // okhttp3.WebSocket
    public void cancel() {
        this.call.cancel();
    }

    void checkResponse(Response response) throws ProtocolException {
        if (response.code() != 101) {
            throw new ProtocolException(NPStringFog.decode(new byte[]{124, 73, 73, 85, 84, 65, 92, 85, 25, 120, 99, 97, 105, 17, 8, 0, 6, 21, 75, 84, 74, 64, 88, 91, 74, 84, 25, 82, 66, 65, 25, 70, 88, 67, 23, 18}, "919075", -30652) + response.code() + " " + response.message() + NPStringFog.decode(new byte[]{67}, "dfbb3a", -6.706145E8f));
        }
        String strHeader = response.header(NPStringFog.decode(new byte[]{37, 95, 94, 87, 1, 5, 18, 89, 95, 87}, "f009df", 23639));
        if (!NPStringFog.decode(new byte[]{97, 73, 3, 74, 89, 92, 81}, "49d888", 31961).equalsIgnoreCase(strHeader)) {
            throw new ProtocolException(NPStringFog.decode(new byte[]{33, 29, 64, 86, 81, 65, 1, 1, 16, 20, 113, 90, 10, 11, 85, 80, 70, 92, 11, 11, 23, 19, 90, 80, 5, 1, 85, 65, 18, 67, 5, 9, 69, 86, 18, 18, 49, 21, 87, 65, 83, 81, 1, 66, 16, 81, 71, 65, 68, 18, 81, 64, 18, 18}, "de0325", false) + strHeader + NPStringFog.decode(new byte[]{22}, "13dd0b", -1295917147L));
        }
        String strHeader2 = response.header(NPStringFog.decode(new byte[]{48, 71, 95, 19, 84, 2, 0}, "e78a5f", true));
        if (!NPStringFog.decode(new byte[]{71, 87, 0, 23, 9, 1, 91, 87, 22}, "02bdfb", 1.356764E8f).equalsIgnoreCase(strHeader2)) {
            throw new ProtocolException(NPStringFog.decode(new byte[]{35, 27, 73, 6, 81, 65, 3, 7, 25, 68, 103, 69, 1, 17, 88, 7, 87, 18, 70, 11, 92, 2, 86, 80, 20, 67, 79, 2, 94, 64, 3, 67, 30, 20, 87, 87, 21, 12, 90, 8, 87, 65, 65, 67, 91, 22, 70, 21, 17, 2, 74, 67, 21}, "fc9c25", -11931303L) + strHeader2 + NPStringFog.decode(new byte[]{31}, "81bc5a", 2.7103974E8f));
        }
        String strHeader3 = response.header(NPStringFog.decode(new byte[]{97, 80, 2, 29, 110, 0, 80, 102, 14, 83, 82, 0, 70, 24, 32, 83, 90, 0, 66, 65}, "25a09e", 8.46321022E8d));
        String strBase64 = ByteString.encodeUtf8(this.key + NPStringFog.decode(new byte[]{87, 83, 92, 114, 119, 32, 36, 83, 73, 114, 15, 87, 81, 75, 80, 0, 114, 39, 72, 95, 81, 116, 119, 75, 38, 83, 37, 117, 6, 34, 38, 94, 81, 117, 7, 87}, "efd76f", -2936)).sha1().base64();
        if (!strBase64.equals(strHeader3)) {
            throw new ProtocolException(NPStringFog.decode(new byte[]{39, 26, 19, 1, 83, 66, 7, 6, 67, 67, 99, 83, 1, 79, 52, 1, 82, 101, 13, 1, 8, 1, 68, 27, 35, 1, 0, 1, 64, 66, 69, 66, 11, 1, 81, 82, 7, 16, 67, 18, 81, 90, 23, 7, 67, 67}, "bbcd06", -23952) + strBase64 + NPStringFog.decode(new byte[]{70, 65, 81, 66, 64, 24, 22, 0, 64, 23, 19}, "aa3748", 15577) + strHeader3 + NPStringFog.decode(new byte[]{65}, "f8c276", -2.0919343E9f));
        }
    }

    @Override // okhttp3.WebSocket
    public boolean close(int i, String str) {
        return close(i, str, CANCEL_AFTER_CLOSE_MILLIS);
    }

    boolean close(int i, String str, long j) {
        boolean z = true;
        synchronized (this) {
            WebSocketProtocol.validateCloseCode(i);
            ByteString byteStringEncodeUtf8 = null;
            if (str != null) {
                byteStringEncodeUtf8 = ByteString.encodeUtf8(str);
                if (byteStringEncodeUtf8.size() > 123) {
                    throw new IllegalArgumentException(NPStringFog.decode(new byte[]{66, 86, 88, 75, 11, 89, 30, 64, 80, 66, 1, 31, 25, 19, 7, 24, 85, 5, 3, 9, 25}, "0398d7", -7416) + str);
                }
            }
            if (this.failed || this.enqueuedClose) {
                z = false;
            } else {
                this.enqueuedClose = true;
                this.messageAndCloseQueue.add(new Close(i, byteStringEncodeUtf8, j));
                runWriter();
            }
        }
        return z;
    }

    public void connect(OkHttpClient okHttpClient) {
        OkHttpClient okHttpClientBuild = okHttpClient.newBuilder().eventListener(EventListener.NONE).protocols(ONLY_HTTP1).build();
        int iPingIntervalMillis = okHttpClientBuild.pingIntervalMillis();
        Request requestBuild = this.originalRequest.newBuilder().header(NPStringFog.decode(new byte[]{102, 65, 4, 69, 86, 84, 86}, "31c770", -851027957L), NPStringFog.decode(new byte[]{65, 81, 4, 67, 13, 82, 93, 81, 18}, "64f0b1", 2036527031L)).header(NPStringFog.decode(new byte[]{37, 12, 86, 90, 81, 0, 18, 10, 87, 90}, "fc844c", -6.9606589E7d), NPStringFog.decode(new byte[]{108, 72, 84, 65, 7, 1, 92}, "9833fe", true, true)).header(NPStringFog.decode(new byte[]{98, 1, 87, 72, 54, 4, 83, 55, 91, 6, 10, 4, 69, 73, 127, 0, 24}, "1d4eaa", false, true), this.key).header(NPStringFog.decode(new byte[]{96, 87, 87, 20, 52, 3, 81, 97, 91, 90, 8, 3, 71, 31, 98, 92, 17, 21, 90, 93, 90}, "3249cf", -1.7564334E9f), NPStringFog.decode(new byte[]{85, 87}, "ddb0a6", 1.400821155E9d)).build();
        this.call = Internal.instance.newWebSocketCall(okHttpClientBuild, requestBuild);
        this.call.enqueue(new Callback(this, requestBuild, iPingIntervalMillis) { // from class: okhttp3.internal.ws.RealWebSocket.2
            final RealWebSocket this$0;
            final int val$pingIntervalMillis;
            final Request val$request;

            {
                this.this$0 = this;
                this.val$request = requestBuild;
                this.val$pingIntervalMillis = iPingIntervalMillis;
            }

            @Override // okhttp3.Callback
            public void onFailure(Call call, IOException iOException) {
                this.this$0.failWebSocket(iOException, null);
            }

            @Override // okhttp3.Callback
            public void onResponse(Call call, Response response) {
                try {
                    this.this$0.checkResponse(response);
                    StreamAllocation streamAllocation = Internal.instance.streamAllocation(call);
                    streamAllocation.noNewStreams();
                    Streams streamsNewWebSocketStreams = streamAllocation.connection().newWebSocketStreams(streamAllocation);
                    try {
                        this.this$0.listener.onOpen(this.this$0, response);
                        this.this$0.initReaderAndWriter(NPStringFog.decode(new byte[]{41, 92, 122, 71, 68, 69, 70, 96, 87, 81, 99, 90, 5, 92, 87, 71, 16}, "f72305", 1.58633488E8d) + this.val$request.url().redact(), this.val$pingIntervalMillis, streamsNewWebSocketStreams);
                        streamAllocation.connection().socket().setSoTimeout(0);
                        this.this$0.loopReader();
                    } catch (Exception e) {
                        this.this$0.failWebSocket(e, null);
                    }
                } catch (ProtocolException e2) {
                    this.this$0.failWebSocket(e2, response);
                    Util.closeQuietly(response);
                }
            }
        });
    }

    public void failWebSocket(Exception exc, @Nullable Response response) {
        synchronized (this) {
            if (this.failed) {
                return;
            }
            this.failed = true;
            Streams streams = this.streams;
            this.streams = null;
            if (this.cancelFuture != null) {
                this.cancelFuture.cancel(false);
            }
            if (this.executor != null) {
                this.executor.shutdown();
            }
            try {
                this.listener.onFailure(this, exc, response);
            } finally {
                Util.closeQuietly(streams);
            }
        }
    }

    public void initReaderAndWriter(String str, long j, Streams streams) throws IOException {
        synchronized (this) {
            this.streams = streams;
            this.writer = new WebSocketWriter(streams.client, streams.sink, this.random);
            this.executor = new ScheduledThreadPoolExecutor(1, Util.threadFactory(str, false));
            if (j != 0) {
                this.executor.scheduleAtFixedRate(new PingRunnable(this), j, j, TimeUnit.MILLISECONDS);
            }
            if (!this.messageAndCloseQueue.isEmpty()) {
                runWriter();
            }
        }
        this.reader = new WebSocketReader(streams.client, streams.source, this);
    }

    public void loopReader() throws IOException {
        while (this.receivedCloseCode == -1) {
            this.reader.processNextFrame();
        }
    }

    @Override // okhttp3.internal.ws.WebSocketReader.FrameCallback
    public void onReadClose(int i, String str) {
        Streams streams;
        if (i == -1) {
            throw new IllegalArgumentException();
        }
        synchronized (this) {
            if (this.receivedCloseCode != -1) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{81, 85, 71, 80, 85, 92, 73, 25, 86, 89, 91, 75, 85, 93}, "095548", -1.917095E9f));
            }
            this.receivedCloseCode = i;
            this.receivedCloseReason = str;
            if (this.enqueuedClose && this.messageAndCloseQueue.isEmpty()) {
                Streams streams2 = this.streams;
                this.streams = null;
                if (this.cancelFuture != null) {
                    this.cancelFuture.cancel(false);
                }
                this.executor.shutdown();
                streams = streams2;
            } else {
                streams = null;
            }
        }
        try {
            this.listener.onClosing(this, i, str);
            if (streams != null) {
                this.listener.onClosed(this, i, str);
            }
        } finally {
            Util.closeQuietly(streams);
        }
    }

    @Override // okhttp3.internal.ws.WebSocketReader.FrameCallback
    public void onReadMessage(String str) throws IOException {
        this.listener.onMessage(this, str);
    }

    @Override // okhttp3.internal.ws.WebSocketReader.FrameCallback
    public void onReadMessage(ByteString byteString) throws IOException {
        this.listener.onMessage(this, byteString);
    }

    @Override // okhttp3.internal.ws.WebSocketReader.FrameCallback
    public void onReadPing(ByteString byteString) {
        synchronized (this) {
            if (!this.failed && (!this.enqueuedClose || !this.messageAndCloseQueue.isEmpty())) {
                this.pongQueue.add(byteString);
                runWriter();
                this.pingCount++;
            }
        }
    }

    @Override // okhttp3.internal.ws.WebSocketReader.FrameCallback
    public void onReadPong(ByteString byteString) {
        synchronized (this) {
            this.pongCount++;
        }
    }

    int pingCount() {
        int i;
        synchronized (this) {
            i = this.pingCount;
        }
        return i;
    }

    boolean pong(ByteString byteString) {
        boolean z;
        synchronized (this) {
            if (this.failed || (this.enqueuedClose && this.messageAndCloseQueue.isEmpty())) {
                z = false;
            } else {
                this.pongQueue.add(byteString);
                runWriter();
                z = true;
            }
        }
        return z;
    }

    int pongCount() {
        int i;
        synchronized (this) {
            i = this.pongCount;
        }
        return i;
    }

    boolean processNextFrame() throws IOException {
        try {
            this.reader.processNextFrame();
            return this.receivedCloseCode == -1;
        } catch (Exception e) {
            failWebSocket(e, null);
            return false;
        }
    }

    @Override // okhttp3.WebSocket
    public long queueSize() {
        long j;
        synchronized (this) {
            j = this.queueSize;
        }
        return j;
    }

    @Override // okhttp3.WebSocket
    public Request request() {
        return this.originalRequest;
    }

    @Override // okhttp3.WebSocket
    public boolean send(String str) {
        if (str == null) {
            throw new NullPointerException(NPStringFog.decode(new byte[]{65, 86, 78, 16, 16, 91, 8, 19, 88, 17, 92, 10}, "536d0f", 1.724385E9f));
        }
        return send(ByteString.encodeUtf8(str), 1);
    }

    @Override // okhttp3.WebSocket
    public boolean send(ByteString byteString) {
        if (byteString == null) {
            throw new NullPointerException(NPStringFog.decode(new byte[]{6, 74, 16, 92, 23, 22, 89, 14, 68, 87, 17, 90, 8}, "d3d9d6", 1.864606983E9d));
        }
        return send(byteString, 2);
    }

    void tearDown() throws InterruptedException {
        if (this.cancelFuture != null) {
            this.cancelFuture.cancel(false);
        }
        this.executor.shutdown();
        this.executor.awaitTermination(10L, TimeUnit.SECONDS);
    }

    boolean writeOneFrame() throws IOException {
        Streams streams;
        int i;
        Object obj;
        String str = null;
        synchronized (this) {
            if (this.failed) {
                return false;
            }
            WebSocketWriter webSocketWriter = this.writer;
            ByteString byteStringPoll = this.pongQueue.poll();
            if (byteStringPoll == null) {
                Object objPoll = this.messageAndCloseQueue.poll();
                if (objPoll instanceof Close) {
                    int i2 = this.receivedCloseCode;
                    String str2 = this.receivedCloseReason;
                    if (i2 != -1) {
                        Streams streams2 = this.streams;
                        this.streams = null;
                        this.executor.shutdown();
                        str = str2;
                        i = i2;
                        obj = objPoll;
                        streams = streams2;
                    } else {
                        this.cancelFuture = this.executor.schedule(new CancelRunnable(this), ((Close) objPoll).cancelAfterCloseMillis, TimeUnit.MILLISECONDS);
                        obj = objPoll;
                        streams = null;
                        str = str2;
                        i = i2;
                    }
                } else {
                    if (objPoll == null) {
                        return false;
                    }
                    i = -1;
                    obj = objPoll;
                    streams = null;
                }
            } else {
                streams = null;
                i = -1;
                obj = null;
            }
            try {
                if (byteStringPoll != null) {
                    webSocketWriter.writePong(byteStringPoll);
                } else if (obj instanceof Message) {
                    ByteString byteString = ((Message) obj).data;
                    BufferedSink bufferedSinkBuffer = Okio.buffer(webSocketWriter.newMessageSink(((Message) obj).formatOpcode, byteString.size()));
                    bufferedSinkBuffer.write(byteString);
                    bufferedSinkBuffer.close();
                    synchronized (this) {
                        this.queueSize -= (long) byteString.size();
                    }
                } else {
                    if (!(obj instanceof Close)) {
                        throw new AssertionError();
                    }
                    Close close = (Close) obj;
                    webSocketWriter.writeClose(close.code, close.reason);
                    if (streams != null) {
                        this.listener.onClosed(this, i, str);
                    }
                }
                return true;
            } finally {
                Util.closeQuietly(streams);
            }
        }
    }

    void writePingFrame() {
        synchronized (this) {
            if (this.failed) {
                return;
            }
            WebSocketWriter webSocketWriter = this.writer;
            try {
                webSocketWriter.writePing(ByteString.EMPTY);
            } catch (IOException e) {
                failWebSocket(e, null);
            }
        }
    }
}
