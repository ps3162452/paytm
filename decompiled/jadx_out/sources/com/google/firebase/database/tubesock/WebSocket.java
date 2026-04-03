package com.google.firebase.database.tubesock;

import android.net.SSLCertificateSocketFactory;
import android.net.SSLSessionCache;
import com.google.firebase.database.connection.ConnectionContext;
import com.google.firebase.database.logging.LogWrapper;
import java.io.DataInputStream;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.lang.Thread;
import java.net.Socket;
import java.net.URI;
import java.net.UnknownHostException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocket;
import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
public class WebSocket {
    static final byte OPCODE_BINARY = 2;
    static final byte OPCODE_CLOSE = 8;
    static final byte OPCODE_NONE = 0;
    static final byte OPCODE_PING = 9;
    static final byte OPCODE_PONG = 10;
    static final byte OPCODE_TEXT = 1;
    private static final int SSL_HANDSHAKE_TIMEOUT_MS = 60000;
    private final int clientId;
    private WebSocketEventHandler eventHandler;
    private final WebSocketHandshake handshake;
    private final Thread innerThread;
    private final LogWrapper logger;
    private final WebSocketReceiver receiver;
    private volatile Socket socket;
    private final String sslCacheDirectory;
    private volatile State state;
    private final URI url;
    private final WebSocketWriter writer;
    private static final String THREAD_BASE_NAME = NPStringFog.decode(new byte[]{97, 64, 3, 85, 100, 13, 86, 94}, "55a07b", 18047);
    private static final AtomicInteger clientCount = new AtomicInteger(0);
    private static final Charset UTF8 = Charset.forName(NPStringFog.decode(new byte[]{103, 54, 114, 31, 91}, "2b42c5", 2.17944747E8d));
    private static ThreadFactory threadFactory = Executors.defaultThreadFactory();
    private static ThreadInitializer intializer = new ThreadInitializer() { // from class: com.google.firebase.database.tubesock.WebSocket.1
        @Override // com.google.firebase.database.tubesock.ThreadInitializer
        public void setName(Thread thread, String str) {
            thread.setName(str);
        }
    };

    /* JADX INFO: renamed from: com.google.firebase.database.tubesock.WebSocket$3, reason: invalid class name */
    static /* synthetic */ class AnonymousClass3 {
        static final int[] $SwitchMap$com$google$firebase$database$tubesock$WebSocket$State;

        static {
            int[] iArr = new int[State.values().length];
            $SwitchMap$com$google$firebase$database$tubesock$WebSocket$State = iArr;
            try {
                iArr[State.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$google$firebase$database$tubesock$WebSocket$State[State.CONNECTING.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$google$firebase$database$tubesock$WebSocket$State[State.CONNECTED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$google$firebase$database$tubesock$WebSocket$State[State.DISCONNECTING.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$google$firebase$database$tubesock$WebSocket$State[State.DISCONNECTED.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    private enum State {
        NONE,
        CONNECTING,
        CONNECTED,
        DISCONNECTING,
        DISCONNECTED
    }

    public WebSocket(ConnectionContext connectionContext, URI uri) {
        this(connectionContext, uri, null);
    }

    public WebSocket(ConnectionContext connectionContext, URI uri, String str) {
        this(connectionContext, uri, str, null);
    }

    public WebSocket(ConnectionContext connectionContext, URI uri, String str, Map<String, String> map) {
        this.state = State.NONE;
        this.socket = null;
        this.eventHandler = null;
        int iIncrementAndGet = clientCount.incrementAndGet();
        this.clientId = iIncrementAndGet;
        this.innerThread = getThreadFactory().newThread(new Runnable(this) { // from class: com.google.firebase.database.tubesock.WebSocket.2
            final WebSocket this$0;

            {
                this.this$0 = this;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.this$0.runReader();
            }
        });
        this.url = uri;
        this.sslCacheDirectory = connectionContext.getSslCacheDirectory();
        this.logger = new LogWrapper(connectionContext.getLogger(), NPStringFog.decode(new byte[]{52, 80, 82, 99, 95, 5, OPCODE_CLOSE, 80, 68}, "c5000f", false), NPStringFog.decode(new byte[]{22, 82, 110}, "e91cd7", -8.89081466E8d) + iIncrementAndGet);
        this.handshake = new WebSocketHandshake(uri, str, map);
        this.receiver = new WebSocketReceiver(this);
        this.writer = new WebSocketWriter(this, NPStringFog.decode(new byte[]{99, 70, 85, 93, 107, OPCODE_PING, 84, 88}, "73788f", true), iIncrementAndGet);
    }

    private void closeSocket() {
        synchronized (this) {
            if (this.state == State.DISCONNECTED) {
                return;
            }
            this.receiver.stopit();
            this.writer.stopIt();
            if (this.socket != null) {
                try {
                    this.socket.close();
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
            this.state = State.DISCONNECTED;
            this.eventHandler.onClose();
        }
    }

    private Socket createSocket() {
        SSLSessionCache sSLSessionCache;
        String scheme = this.url.getScheme();
        String host = this.url.getHost();
        int port = this.url.getPort();
        if (scheme != null && scheme.equals(NPStringFog.decode(new byte[]{21, 67}, "b0a03a", false))) {
            try {
                return new Socket(host, port == -1 ? 80 : port);
            } catch (UnknownHostException e) {
                throw new WebSocketException(NPStringFog.decode(new byte[]{16, 91, 82, OPCODE_PONG, 91, 17, 11, 21, 81, 11, 71, 18, 95, 21}, "e59d4f", -1.159439659E9d) + host, e);
            } catch (IOException e2) {
                throw new WebSocketException(NPStringFog.decode(new byte[]{85, 68, 68, 87, 70, 21, 71, 94, 95, 84, 81, 21, 83, 68, 83, 89, 64, 92, 94, 81, 22, 75, 91, 86, 91, 83, 66, 24, 64, 90, 16}, "066845", -1189114557L) + this.url, e2);
            }
        }
        if (scheme == null || !scheme.equals(NPStringFog.decode(new byte[]{18, 21, 67}, "ef0b60", 1.022689753E9d))) {
            throw new WebSocketException(NPStringFog.decode(new byte[]{76, 86, 66, 67, 69, 70, 86, 74, 69, 83, 81, 22, 73, 74, 94, 66, 90, 85, 86, 84, 11, 22}, "981656", -2117481891L) + scheme);
        }
        if (port == -1) {
            port = 443;
        }
        try {
            sSLSessionCache = this.sslCacheDirectory != null ? new SSLSessionCache(new File(this.sslCacheDirectory)) : null;
        } catch (IOException e3) {
            this.logger.debug(NPStringFog.decode(new byte[]{35, 3, OPCODE_CLOSE, OPCODE_CLOSE, 4, 80, 69, 22, 14, 68, OPCODE_CLOSE, 90, 12, 22, OPCODE_CLOSE, 5, 13, 93, 31, 7, 65, 55, 50, 120, 69, 17, 4, 23, 18, 93, OPCODE_PONG, 12, 65, 7, OPCODE_NONE, 87, 13, 7}, "ebada4", -9.2235654E8f), e3, new Object[0]);
            sSLSessionCache = null;
        }
        try {
            SSLSocket sSLSocket = (SSLSocket) SSLCertificateSocketFactory.getDefault(SSL_HANDSHAKE_TIMEOUT_MS, sSLSessionCache).createSocket(host, port);
            if (HttpsURLConnection.getDefaultHostnameVerifier().verify(host, sSLSocket.getSession())) {
                return sSLSocket;
            }
            throw new WebSocketException(NPStringFog.decode(new byte[]{113, 67, 22, OPCODE_PONG, 65, 66, 67, 89, 13, OPCODE_PING, 86, 66, 66, 84, 22, 12, 85, 27, 93, 95, 3, 69, 64, 7, 87, 68, 22, OPCODE_NONE, 19, 17, 91, 82, 15, OPCODE_NONE, 71, 66, 64, 94, 68}, "41de3b", -31709) + this.url);
        } catch (UnknownHostException e4) {
            throw new WebSocketException(NPStringFog.decode(new byte[]{20, OPCODE_CLOSE, 91, 12, 93, 71, 15, 70, 88, 13, 65, 68, 91, 70}, "af0b20", false) + host, e4);
        } catch (IOException e5) {
            throw new WebSocketException(NPStringFog.decode(new byte[]{OPCODE_NONE, 16, 68, 95, 74, 25, 18, OPCODE_PONG, 95, 92, 93, 25, 6, 16, 83, 81, 76, 80, 11, 5, 22, 67, 93, 90, 16, 16, 83, 16, 75, 86, 6, OPCODE_PING, 83, 68, 24, 77, OPCODE_PONG, 66}, "eb6089", -4.06549717E8d) + this.url, e5);
        }
    }

    static ThreadInitializer getIntializer() {
        return intializer;
    }

    static ThreadFactory getThreadFactory() {
        return threadFactory;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void runReader() {
        Socket socketCreateSocket;
        boolean z;
        try {
            try {
                socketCreateSocket = createSocket();
            } finally {
                close();
            }
        } catch (WebSocketException e) {
            this.eventHandler.onError(e);
        } catch (Throwable th) {
            this.eventHandler.onError(new WebSocketException(NPStringFog.decode(new byte[]{OPCODE_TEXT, 23, 66, 88, 66, 17, 19, 13, 89, 91, 85, 17, 7, OPCODE_PONG, 94, 89, 85, 82, 16, 12, 94, 80, OPCODE_PONG, 17}, "de0701", 1680423556L) + th.getMessage(), th));
        }
        synchronized (this) {
            this.socket = socketCreateSocket;
            if (this.state == State.DISCONNECTED) {
                try {
                    this.socket.close();
                    this.socket = null;
                    return;
                } catch (IOException e2) {
                    throw new RuntimeException(e2);
                }
            }
            DataInputStream dataInputStream = new DataInputStream(socketCreateSocket.getInputStream());
            OutputStream outputStream = socketCreateSocket.getOutputStream();
            outputStream.write(this.handshake.getHandshake());
            byte[] bArr = new byte[1000];
            ArrayList arrayList = new ArrayList();
            int i = 0;
            boolean z2 = false;
            while (!z2) {
                if (dataInputStream.read() == -1) {
                    throw new WebSocketException(NPStringFog.decode(new byte[]{118, 89, 92, 95, 3, 5, 65, 95, 93, 95, 70, 5, 89, 89, 65, 84, OPCODE_BINARY, 70, 87, 83, 84, 94, 20, 3, 21, 94, 83, 95, OPCODE_BINARY, 21, 93, 87, 89, 84, 70, 17, 84, 69, 18, 82, OPCODE_PING, 11, 69, 90, 87, 69, 3}, "5621ff", -1.74016041E8d));
                }
                bArr[i] = (byte) r8;
                i++;
                if (bArr[i - 1] == 10 && bArr[i - 2] == 13) {
                    String str = new String(bArr, UTF8);
                    if (str.trim().equals("")) {
                        z = true;
                    } else {
                        arrayList.add(str.trim());
                        z = z2;
                    }
                    bArr = new byte[1000];
                    z2 = z;
                    i = 0;
                } else if (i == 1000) {
                    throw new WebSocketException(NPStringFog.decode(new byte[]{99, 11, OPCODE_NONE, 79, 67, 82, 85, 17, OPCODE_NONE, 83, 19, 91, 89, 11, OPCODE_BINARY, 23, 95, 94, 88, OPCODE_NONE, 69, 94, 93, 23, 94, 4, 11, 83, 64, 95, 87, 14, OPCODE_NONE, 13, 19}, "6ee737", -2.125714501E9d) + new String(bArr, UTF8));
                }
            }
            this.handshake.verifyServerStatusLine((String) arrayList.get(0));
            arrayList.remove(0);
            HashMap<String, String> map = new HashMap<>();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                String[] strArrSplit = ((String) it.next()).split(NPStringFog.decode(new byte[]{92, 67}, "fc4b7c", false, false), 2);
                map.put(strArrSplit[0].toLowerCase(Locale.US), strArrSplit[1].toLowerCase(Locale.US));
            }
            this.handshake.verifyServerHandshakeHeaders(map);
            this.writer.setOutput(outputStream);
            this.receiver.setInput(dataInputStream);
            this.state = State.CONNECTED;
            this.writer.getInnerThread().start();
            this.eventHandler.onOpen();
            this.receiver.run();
        }
    }

    private void send(byte b, byte[] bArr) {
        synchronized (this) {
            if (this.state != State.CONNECTED) {
                this.eventHandler.onError(new WebSocketException(NPStringFog.decode(new byte[]{80, 66, 17, 86, 22, 19, 66, 88, OPCODE_PONG, 85, OPCODE_TEXT, 19, 70, 85, 13, 93, 13, 93, 82, 16, 7, 88, 16, 82, 15, 16, 13, 86, 16, 19, 86, 95, 13, 87, OPCODE_TEXT, 80, 65, 85, 7}, "50c9d3", true)));
            } else {
                try {
                    this.writer.send(b, true, bArr);
                } catch (IOException e) {
                    this.eventHandler.onError(new WebSocketException(NPStringFog.decode(new byte[]{117, 81, 94, 93, 4, 87, 19, 68, 88, 17, 18, 86, 93, 84, 23, 87, 19, 82, 94, 85}, "3071a3", -130931663L), e));
                    close();
                }
            }
        }
    }

    private void sendCloseHandshake() {
        try {
            this.state = State.DISCONNECTING;
            this.writer.stopIt();
            this.writer.send(OPCODE_CLOSE, true, new byte[0]);
        } catch (IOException e) {
            this.eventHandler.onError(new WebSocketException(NPStringFog.decode(new byte[]{39, 86, 80, 94, 3, 85, 65, 67, 86, 18, 21, 84, 15, 83, 25, 81, OPCODE_PONG, 94, 18, 82, 25, 84, 20, 80, 12, 82}, "a792f1", false, false), e));
        }
    }

    public static void setThreadFactory(ThreadFactory threadFactory2, ThreadInitializer threadInitializer) {
        threadFactory = threadFactory2;
        intializer = threadInitializer;
    }

    public void blockClose() throws InterruptedException {
        if (this.writer.getInnerThread().getState() != Thread.State.NEW) {
            this.writer.getInnerThread().join();
        }
        getInnerThread().join();
    }

    public void close() {
        synchronized (this) {
            switch (AnonymousClass3.$SwitchMap$com$google$firebase$database$tubesock$WebSocket$State[this.state.ordinal()]) {
                case 1:
                    this.state = State.DISCONNECTED;
                    return;
                case 2:
                    closeSocket();
                    return;
                case 3:
                    sendCloseHandshake();
                    return;
                case 4:
                    return;
                case 5:
                    return;
                default:
                    return;
            }
        }
    }

    public void connect() {
        synchronized (this) {
            if (this.state != State.NONE) {
                this.eventHandler.onError(new WebSocketException(NPStringFog.decode(new byte[]{6, 93, 94, 11, 6, 80, 17, 26, 25, 69, OPCODE_BINARY, 95, 23, 87, 81, OPCODE_TEXT, 26, 19, 6, 83, 92, OPCODE_PING, 6, 87}, "e20ec3", 1.060725142E9d)));
                close();
            } else {
                getIntializer().setName(getInnerThread(), NPStringFog.decode(new byte[]{109, 19, 83, 87, 55, 95, 90, 13, 99, 87, 5, 84, 92, 20, 28}, "9f12d0", 1476) + this.clientId);
                this.state = State.CONNECTING;
                getInnerThread().start();
            }
        }
    }

    WebSocketEventHandler getEventHandler() {
        return this.eventHandler;
    }

    Thread getInnerThread() {
        return this.innerThread;
    }

    void handleReceiverError(WebSocketException webSocketException) {
        this.eventHandler.onError(webSocketException);
        if (this.state == State.CONNECTED) {
            close();
        }
        closeSocket();
    }

    void onCloseOpReceived() {
        closeSocket();
    }

    void pong(byte[] bArr) {
        synchronized (this) {
            send(OPCODE_PONG, bArr);
        }
    }

    public void send(String str) {
        synchronized (this) {
            send(OPCODE_TEXT, str.getBytes(UTF8));
        }
    }

    public void send(byte[] bArr) {
        synchronized (this) {
            send(OPCODE_BINARY, bArr);
        }
    }

    public void setEventHandler(WebSocketEventHandler webSocketEventHandler) {
        this.eventHandler = webSocketEventHandler;
    }
}
