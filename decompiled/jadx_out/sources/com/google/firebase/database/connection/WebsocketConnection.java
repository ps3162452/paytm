package com.google.firebase.database.connection;

import com.google.firebase.database.connection.util.StringListReader;
import com.google.firebase.database.logging.LogWrapper;
import com.google.firebase.database.tubesock.WebSocket;
import com.google.firebase.database.tubesock.WebSocketEventHandler;
import com.google.firebase.database.tubesock.WebSocketException;
import com.google.firebase.database.tubesock.WebSocketMessage;
import com.google.firebase.database.util.JsonMapper;
import java.io.EOFException;
import java.io.IOException;
import java.net.URI;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
class WebsocketConnection {
    private static final long CONNECT_TIMEOUT_MS = 30000;
    private static final long KEEP_ALIVE_TIMEOUT_MS = 45000;
    private static final int MAX_FRAME_SIZE = 16384;
    private static long connectionId = 0;
    private WSClient conn;
    private ScheduledFuture<?> connectTimeout;
    private final ConnectionContext connectionContext;
    private Delegate delegate;
    private final ScheduledExecutorService executorService;
    private StringListReader frameReader;
    private ScheduledFuture<?> keepAlive;
    private final LogWrapper logger;
    private boolean everConnected = false;
    private boolean isClosed = false;
    private long totalFrames = 0;

    public interface Delegate {
        void onDisconnect(boolean z);

        void onMessage(Map<String, Object> map);
    }

    private interface WSClient {
        void close();

        void connect();

        void send(String str);
    }

    private class WSClientTubesock implements WSClient, WebSocketEventHandler {
        final WebsocketConnection this$0;
        private WebSocket ws;

        private WSClientTubesock(WebsocketConnection websocketConnection, WebSocket webSocket) {
            this.this$0 = websocketConnection;
            this.ws = webSocket;
            webSocket.setEventHandler(this);
        }

        private void shutdown() {
            this.ws.close();
            try {
                this.ws.blockClose();
            } catch (InterruptedException e) {
                this.this$0.logger.error(NPStringFog.decode(new byte[]{113, 88, 70, 84, 68, 65, 77, 70, 70, 84, 82, 19, 79, 94, 91, 93, 83, 19, 75, 94, 71, 69, 66, 90, 86, 81, 18, 85, 89, 68, 86, 22, 69, 84, 84, 64, 87, 85, 89, 84, 66, 19, 76, 94, 64, 84, 87, 87, 75}, "862163", -499964938L), e);
            }
        }

        @Override // com.google.firebase.database.connection.WebsocketConnection.WSClient
        public void close() {
            this.ws.close();
        }

        @Override // com.google.firebase.database.connection.WebsocketConnection.WSClient
        public void connect() {
            try {
                this.ws.connect();
            } catch (WebSocketException e) {
                if (this.this$0.logger.logsDebug()) {
                    this.this$0.logger.debug(NPStringFog.decode(new byte[]{38, 16, 67, 9, 65, 19, 0, 13, 95, 8, 86, 80, 23, 11, 95, 1}, "cb1f33", 31482), e, new Object[0]);
                }
                shutdown();
            }
        }

        @Override // com.google.firebase.database.tubesock.WebSocketEventHandler
        public void onClose() {
            this.this$0.executorService.execute(new Runnable(this) { // from class: com.google.firebase.database.connection.WebsocketConnection.WSClientTubesock.3
                final WSClientTubesock this$1;

                {
                    this.this$1 = this;
                }

                @Override // java.lang.Runnable
                public void run() {
                    if (this.this$1.this$0.logger.logsDebug()) {
                        this.this$1.this$0.logger.debug(NPStringFog.decode(new byte[]{5, 95, 10, 65, 7, 0}, "f3e2bd", true, true), new Object[0]);
                    }
                    this.this$1.this$0.onClosed();
                }
            });
        }

        @Override // com.google.firebase.database.tubesock.WebSocketEventHandler
        public void onError(WebSocketException webSocketException) {
            this.this$0.executorService.execute(new Runnable(this, webSocketException) { // from class: com.google.firebase.database.connection.WebsocketConnection.WSClientTubesock.4
                final WSClientTubesock this$1;
                final WebSocketException val$e;

                {
                    this.this$1 = this;
                    this.val$e = webSocketException;
                }

                @Override // java.lang.Runnable
                public void run() {
                    if (this.val$e.getCause() == null || !(this.val$e.getCause() instanceof EOFException)) {
                        this.this$1.this$0.logger.debug(NPStringFog.decode(new byte[]{50, 83, 6, 53, 87, 85, 14, 83, 16, 70, 93, 68, 23, 89, 22, 72}, "e6df86", 5.944426E8f), this.val$e, new Object[0]);
                    } else {
                        this.this$1.this$0.logger.debug(NPStringFog.decode(new byte[]{111, 1, 0, 97, 12, 83, 83, 1, 22, 18, 17, 85, 89, 7, 10, 87, 7, 16, 125, 43, 36, 28}, "8db2c0", false), new Object[0]);
                    }
                    this.this$1.this$0.onClosed();
                }
            });
        }

        @Override // com.google.firebase.database.tubesock.WebSocketEventHandler
        public void onLogMessage(String str) {
            if (this.this$0.logger.logsDebug()) {
                this.this$0.logger.debug(NPStringFog.decode(new byte[]{96, 76, 3, 82, 74, 95, 87, 82, 91, 23}, "49a790", 1.8416897E9f) + str, new Object[0]);
            }
        }

        @Override // com.google.firebase.database.tubesock.WebSocketEventHandler
        public void onMessage(WebSocketMessage webSocketMessage) {
            String text = webSocketMessage.getText();
            if (this.this$0.logger.logsDebug()) {
                this.this$0.logger.debug(NPStringFog.decode(new byte[]{70, 23, 67, 12, 87, 69, 66, 5, 4, 4, 8, 22}, "1dca26", 2.095607435E9d) + text, new Object[0]);
            }
            this.this$0.executorService.execute(new Runnable(this, text) { // from class: com.google.firebase.database.connection.WebsocketConnection.WSClientTubesock.2
                final WSClientTubesock this$1;
                final String val$str;

                {
                    this.this$1 = this;
                    this.val$str = text;
                }

                @Override // java.lang.Runnable
                public void run() {
                    this.this$1.this$0.handleIncomingFrame(this.val$str);
                }
            });
        }

        @Override // com.google.firebase.database.tubesock.WebSocketEventHandler
        public void onOpen() {
            this.this$0.executorService.execute(new Runnable(this) { // from class: com.google.firebase.database.connection.WebsocketConnection.WSClientTubesock.1
                final WSClientTubesock this$1;

                {
                    this.this$1 = this;
                }

                @Override // java.lang.Runnable
                public void run() {
                    this.this$1.this$0.connectTimeout.cancel(false);
                    this.this$1.this$0.everConnected = true;
                    if (this.this$1.this$0.logger.logsDebug()) {
                        this.this$1.this$0.logger.debug(NPStringFog.decode(new byte[]{69, 84, 84, 16, 90, 2, 89, 84, 66, 67, 90, 17, 87, 95, 83, 7}, "216c5a", true, true), new Object[0]);
                    }
                    this.this$1.this$0.resetKeepAlive();
                }
            });
        }

        @Override // com.google.firebase.database.connection.WebsocketConnection.WSClient
        public void send(String str) {
            this.ws.send(str);
        }
    }

    public WebsocketConnection(ConnectionContext connectionContext, HostInfo hostInfo, String str, Delegate delegate, String str2) {
        this.connectionContext = connectionContext;
        this.executorService = connectionContext.getExecutorService();
        this.delegate = delegate;
        long j = connectionId;
        connectionId = 1 + j;
        this.logger = new LogWrapper(connectionContext.getLogger(), NPStringFog.decode(new byte[]{97, 6, 81, 97, 88, 82, 93, 6, 71}, "6c3271", true, false), NPStringFog.decode(new byte[]{20, 17, 106}, "cb530e", 207455610L) + j);
        this.conn = createConnection(hostInfo, str, str2);
    }

    private void appendFrame(String str) {
        this.frameReader.addString(str);
        long j = this.totalFrames - 1;
        this.totalFrames = j;
        if (j == 0) {
            try {
                this.frameReader.freeze();
                Map<String, Object> json = JsonMapper.parseJson(this.frameReader.toString());
                this.frameReader = null;
                if (this.logger.logsDebug()) {
                    this.logger.debug(NPStringFog.decode(new byte[]{81, 5, 13, 2, 13, 87, 112, 10, 0, 9, 12, 91, 87, 3, 37, 20, 0, 95, 92, 68, 0, 9, 12, 66, 85, 1, 23, 3, 65, 84, 75, 5, 14, 3, 91, 18}, "9dcfa2", false, true) + json, new Object[0]);
                }
                this.delegate.onMessage(json);
            } catch (IOException e) {
                this.logger.error(NPStringFog.decode(new byte[]{115, 19, 20, 93, 75, 67, 70, 0, 20, 65, 80, 13, 81, 65, 0, 64, 88, 14, 83, 91, 70}, "6af29c", -5.63460445E8d) + this.frameReader.toString(), e);
                close();
                shutdown();
            } catch (ClassCastException e2) {
                this.logger.error(NPStringFog.decode(new byte[]{116, 67, 70, 13, 22, 25, 65, 80, 70, 17, 13, 87, 86, 17, 82, 16, 5, 84, 84, 17, 28, 1, 5, 74, 69, 17, 81, 16, 22, 86, 67, 24, 14, 66}, "114bd9", 5.1692374E7d) + this.frameReader.toString(), e2);
                close();
                shutdown();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void closeIfNeverConnected() {
        if (this.everConnected || this.isClosed) {
            return;
        }
        if (this.logger.logsDebug()) {
            this.logger.debug(NPStringFog.decode(new byte[]{65, 11, 15, 87, 86, 21, 90, 23, 22, 18, 93, 91, 21, 1, 13, 92, 92, 80, 86, 22}, "5bb225", false), new Object[0]);
        }
        this.conn.close();
    }

    private WSClient createConnection(HostInfo hostInfo, String str, String str2) {
        if (str == null) {
            str = hostInfo.getHost();
        }
        URI connectionUrl = HostInfo.getConnectionUrl(str, hostInfo.isSecure(), hostInfo.getNamespace(), str2);
        HashMap map = new HashMap();
        map.put(NPStringFog.decode(new byte[]{49, 74, 1, 22, 73, 116, 3, 92, 10, 16}, "d9ddd5", -1301447433L), this.connectionContext.getUserAgent());
        map.put(NPStringFog.decode(new byte[]{57, 21, 119, 88, 70, 0, 3, 89, 66, 84, 25, 34, 44, 104, 120, 117}, "a8114e", true), this.connectionContext.getApplicationId());
        return new WSClientTubesock(new WebSocket(this.connectionContext, connectionUrl, null, map));
    }

    private String extractFrameCount(String str) {
        if (str.length() <= 6) {
            try {
                int i = Integer.parseInt(str);
                if (i > 0) {
                    handleNewFrameCount(i);
                }
                return null;
            } catch (NumberFormatException e) {
            }
        }
        handleNewFrameCount(1);
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleIncomingFrame(String str) {
        if (this.isClosed) {
            return;
        }
        resetKeepAlive();
        if (isBuffering()) {
            appendFrame(str);
            return;
        }
        String strExtractFrameCount = extractFrameCount(str);
        if (strExtractFrameCount != null) {
            appendFrame(strExtractFrameCount);
        }
    }

    private void handleNewFrameCount(int i) {
        this.totalFrames = i;
        this.frameReader = new StringListReader();
        if (this.logger.logsDebug()) {
            this.logger.debug(NPStringFog.decode(new byte[]{44, 3, 86, 0, 84, 82, 42, 7, 79, 34, 74, 86, 9, 7, 123, 11, 77, 89, 16, 88, 24}, "db8d87", -285948548L) + this.totalFrames, new Object[0]);
        }
    }

    private boolean isBuffering() {
        return this.frameReader != null;
    }

    private Runnable nop() {
        return new Runnable(this) { // from class: com.google.firebase.database.connection.WebsocketConnection.2
            final WebsocketConnection this$0;

            {
                this.this$0 = this;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (this.this$0.conn != null) {
                    this.this$0.conn.send(NPStringFog.decode(new byte[]{85}, "e7607f", -4.5451588E7f));
                    this.this$0.resetKeepAlive();
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onClosed() {
        if (!this.isClosed) {
            if (this.logger.logsDebug()) {
                this.logger.debug(NPStringFog.decode(new byte[]{80, 14, 88, 17, 80, 92, 84, 66, 94, 22, 74, 87, 95, 4}, "3b7b92", 1.107259635E9d), new Object[0]);
            }
            shutdown();
        }
        this.conn = null;
        ScheduledFuture<?> scheduledFuture = this.keepAlive;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetKeepAlive() {
        if (this.isClosed) {
            return;
        }
        ScheduledFuture<?> scheduledFuture = this.keepAlive;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
            if (this.logger.logsDebug()) {
                this.logger.debug(NPStringFog.decode(new byte[]{52, 3, 64, 82, 64, 67, 13, 3, 86, 71, 117, 15, 15, 16, 86, 25, 20, 49, 3, 11, 82, 94, 90, 10, 8, 1, 9, 23}, "ff374c", true) + this.keepAlive.getDelay(TimeUnit.MILLISECONDS), new Object[0]);
            }
        } else if (this.logger.logsDebug()) {
            this.logger.debug(NPStringFog.decode(new byte[]{100, 86, 22, 80, 77, 22, 93, 86, 0, 69, 120, 90, 95, 69, 0}, "63e596", true, false), new Object[0]);
        }
        this.keepAlive = this.executorService.schedule(nop(), KEEP_ALIVE_TIMEOUT_MS, TimeUnit.MILLISECONDS);
    }

    private void shutdown() {
        this.isClosed = true;
        this.delegate.onDisconnect(this.everConnected);
    }

    private static String[] splitIntoFrames(String str, int i) {
        int i2 = 0;
        if (str.length() <= i) {
            return new String[]{str};
        }
        ArrayList arrayList = new ArrayList();
        while (i2 < str.length()) {
            arrayList.add(str.substring(i2, Math.min(i2 + i, str.length())));
            i2 += i;
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public void close() {
        if (this.logger.logsDebug()) {
            this.logger.debug(NPStringFog.decode(new byte[]{71, 83, 85, 23, 88, 81, 91, 83, 67, 68, 94, 65, 16, 84, 82, 13, 89, 85, 16, 85, 91, 11, 68, 87, 84}, "067d72", 5.9054589E8d), new Object[0]);
        }
        this.isClosed = true;
        this.conn.close();
        ScheduledFuture<?> scheduledFuture = this.connectTimeout;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
        ScheduledFuture<?> scheduledFuture2 = this.keepAlive;
        if (scheduledFuture2 != null) {
            scheduledFuture2.cancel(true);
        }
    }

    public void open() {
        this.conn.connect();
        this.connectTimeout = this.executorService.schedule(new Runnable(this) { // from class: com.google.firebase.database.connection.WebsocketConnection.1
            final WebsocketConnection this$0;

            {
                this.this$0 = this;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.this$0.closeIfNeverConnected();
            }
        }, CONNECT_TIMEOUT_MS, TimeUnit.MILLISECONDS);
    }

    public void send(Map<String, Object> map) {
        resetKeepAlive();
        try {
            String[] strArrSplitIntoFrames = splitIntoFrames(JsonMapper.serializeJson(map), 16384);
            if (strArrSplitIntoFrames.length > 1) {
                this.conn.send("" + strArrSplitIntoFrames.length);
            }
            for (String str : strArrSplitIntoFrames) {
                this.conn.send(str);
            }
        } catch (IOException e) {
            this.logger.error(NPStringFog.decode(new byte[]{37, 87, 92, 88, 92, 87, 67, 66, 90, 20, 74, 86, 17, 95, 84, 88, 80, 73, 6, 22, 88, 81, 74, 64, 2, 81, 80, 14, 25}, "c65493", 8.730305E8f) + map.toString(), e);
            shutdown();
        }
    }

    public void start() {
    }
}
