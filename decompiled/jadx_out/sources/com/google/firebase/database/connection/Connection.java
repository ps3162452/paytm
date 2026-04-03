package com.google.firebase.database.connection;

import com.google.firebase.database.connection.WebsocketConnection;
import com.google.firebase.database.logging.LogWrapper;
import java.util.HashMap;
import java.util.Map;
import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
class Connection implements WebsocketConnection.Delegate {
    private static final String REQUEST_PAYLOAD = NPStringFog.decode(new byte[]{87}, "38650e", true);
    private static final String REQUEST_TYPE = NPStringFog.decode(new byte[]{71}, "3d1e16", true, false);
    private static final String REQUEST_TYPE_DATA = NPStringFog.decode(new byte[]{1}, "e20217", -6.13329864E8d);
    private static final String SERVER_CONTROL_MESSAGE = NPStringFog.decode(new byte[]{90}, "9967c9", -6.5064966E8f);
    private static final String SERVER_CONTROL_MESSAGE_DATA = NPStringFog.decode(new byte[]{7}, "c78bc1", 895455153L);
    private static final String SERVER_CONTROL_MESSAGE_HELLO = NPStringFog.decode(new byte[]{94}, "6c5eb0", -31498);
    private static final String SERVER_CONTROL_MESSAGE_RESET = NPStringFog.decode(new byte[]{16}, "be4770", 791922615L);
    private static final String SERVER_CONTROL_MESSAGE_SHUTDOWN = NPStringFog.decode(new byte[]{23}, "d6cbcc", 8.48043292E8d);
    private static final String SERVER_CONTROL_MESSAGE_TYPE = NPStringFog.decode(new byte[]{71}, "336766", 1.07663102E9d);
    private static final String SERVER_DATA_MESSAGE = NPStringFog.decode(new byte[]{6}, "b9aab7", -1195540564L);
    private static final String SERVER_ENVELOPE_DATA = NPStringFog.decode(new byte[]{0}, "d838cc", -10058);
    private static final String SERVER_ENVELOPE_TYPE = NPStringFog.decode(new byte[]{64}, "42537d", true, true);
    private static final String SERVER_HELLO_HOST = NPStringFog.decode(new byte[]{12}, "d9d84f", -1.773671311E9d);
    private static final String SERVER_HELLO_SESSION_ID = NPStringFog.decode(new byte[]{21}, "fe3736", -1196260319L);
    private static final String SERVER_HELLO_TIMESTAMP = NPStringFog.decode(new byte[]{65, 22}, "5e7c17", 9752);
    private static long connectionIds = 0;
    private WebsocketConnection conn;
    private Delegate delegate;
    private HostInfo hostInfo;
    private final LogWrapper logger;
    private State state;

    public interface Delegate {
        void onCacheHost(String str);

        void onDataMessage(Map<String, Object> map);

        void onDisconnect(DisconnectReason disconnectReason);

        void onKill(String str);

        void onReady(long j, String str);
    }

    public enum DisconnectReason {
        SERVER_RESET,
        OTHER
    }

    private enum State {
        REALTIME_CONNECTING,
        REALTIME_CONNECTED,
        REALTIME_DISCONNECTED
    }

    public Connection(ConnectionContext connectionContext, HostInfo hostInfo, String str, Delegate delegate, String str2) {
        long j = connectionIds;
        connectionIds = 1 + j;
        this.hostInfo = hostInfo;
        this.delegate = delegate;
        this.logger = new LogWrapper(connectionContext.getLogger(), NPStringFog.decode(new byte[]{119, 11, 87, 10, 3, 1, 64, 13, 86, 10}, "4d9dfb", 2115755356L), NPStringFog.decode(new byte[]{6, 91, 86, 89, 57}, "e487fc", false, false) + j);
        this.state = State.REALTIME_CONNECTING;
        this.conn = new WebsocketConnection(connectionContext, hostInfo, str, this, str2);
    }

    private void onConnectionReady(long j, String str) {
        if (this.logger.logsDebug()) {
            this.logger.debug(NPStringFog.decode(new byte[]{71, 85, 85, 85, 21, 12, 88, 85, 20, 90, 14, 11, 91, 85, 87, 77, 8, 10, 91, 16, 81, 74, 21, 4, 87, 92, 93, 74, 9, 0, 81}, "5049ae", true, false), new Object[0]);
        }
        this.state = State.REALTIME_CONNECTED;
        this.delegate.onReady(j, str);
    }

    private void onConnectionShutdown(String str) {
        if (this.logger.logsDebug()) {
            this.logger.debug(NPStringFog.decode(new byte[]{114, 12, 88, 88, 92, 6, 69, 10, 89, 88, 25, 22, 89, 22, 66, 82, 86, 18, 95, 67, 85, 89, 84, 8, 80, 13, 82, 22, 75, 0, 82, 6, 95, 64, 92, 1, 31, 67, 101, 94, 76, 17, 69, 10, 88, 81, 25, 1, 94, 20, 88, 24, 23, 75}, "1c669e", false, false), new Object[0]);
        }
        this.delegate.onKill(str);
        close();
    }

    private void onControlMessage(Map<String, Object> map) {
        if (this.logger.logsDebug()) {
            this.logger.debug(NPStringFog.decode(new byte[]{127, 14, 18, 24, 87, 11, 86, 21, 20, 87, 88, 68, 85, 4, 21, 75, 85, 3, 93, 91, 70}, "8af84d", -5105) + map.toString(), new Object[0]);
        }
        try {
            String str = (String) map.get(REQUEST_TYPE);
            if (str == null) {
                if (this.logger.logsDebug()) {
                    this.logger.debug(NPStringFog.decode(new byte[]{35, 94, 68, 68, 80, 8, 18, 80, 92, 13, 93, 70, 7, 94, 94, 16, 75, 9, 8, 17, 93, 1, 74, 21, 5, 86, 85, 94, 25}, "d10d9f", 18303) + map.toString(), new Object[0]);
                }
                close();
            } else {
                if (str.equals(SERVER_CONTROL_MESSAGE_SHUTDOWN)) {
                    onConnectionShutdown((String) map.get(REQUEST_PAYLOAD));
                    return;
                }
                if (str.equals(SERVER_CONTROL_MESSAGE_RESET)) {
                    onReset((String) map.get(REQUEST_PAYLOAD));
                } else if (str.equals(SERVER_CONTROL_MESSAGE_HELLO)) {
                    onHandshake((Map) map.get(REQUEST_PAYLOAD));
                } else if (this.logger.logsDebug()) {
                    this.logger.debug(NPStringFog.decode(new byte[]{122, 5, 10, 11, 23, 93, 93, 5, 68, 17, 11, 95, 93, 13, 19, 10, 69, 87, 92, 12, 16, 22, 10, 88, 19, 15, 1, 23, 22, 85, 84, 7, 94, 68}, "3bdde4", -1.05075166E9d) + str, new Object[0]);
                }
            }
        } catch (ClassCastException e) {
            if (this.logger.logsDebug()) {
                this.logger.debug(NPStringFog.decode(new byte[]{117, 2, 13, 8, 6, 85, 19, 23, 11, 68, 19, 80, 65, 16, 1, 68, 0, 94, 93, 23, 22, 11, 15, 17, 94, 6, 23, 23, 2, 86, 86, 89, 68}, "3cddc1", -3.0018052E7f) + e.toString(), new Object[0]);
            }
            close();
        }
    }

    private void onDataMessage(Map<String, Object> map) {
        if (this.logger.logsDebug()) {
            this.logger.debug(NPStringFog.decode(new byte[]{70, 0, 91, 6, 92, 68, 81, 1, 24, 7, 84, 70, 85, 69, 85, 6, 70, 65, 85, 2, 93, 89, 21}, "4e8c52", false) + map.toString(), new Object[0]);
        }
        this.delegate.onDataMessage(map);
    }

    private void onHandshake(Map<String, Object> map) {
        long jLongValue = ((Long) map.get(SERVER_HELLO_TIMESTAMP)).longValue();
        this.delegate.onCacheHost((String) map.get(SERVER_CONTROL_MESSAGE_HELLO));
        String str = (String) map.get(SERVER_CONTROL_MESSAGE_SHUTDOWN);
        if (this.state == State.REALTIME_CONNECTING) {
            this.conn.start();
            onConnectionReady(jLongValue, str);
        }
    }

    private void onReset(String str) {
        if (this.logger.logsDebug()) {
            this.logger.debug(NPStringFog.decode(new byte[]{114, 13, 22, 66, 85, 17, 71, 7, 17, 7, 64, 10, 21, 9, 11, 14, 88, 88, 91, 5, 66, 1, 91, 95, 91, 7, 1, 22, 93, 94, 91, 66, 22, 13, 20}, "5bbb41", -1.620626822E9d) + this.hostInfo.getHost() + NPStringFog.decode(new byte[]{13, 21, 103, 19, 86, 89, 66, 92, 92, 4, 18, 81, 88, 65, 87, 17, 92, 89, 90, 125, 93, 16, 70, 24, 66, 90, 18}, "652c28", -11789) + str, new Object[0]);
        }
        this.delegate.onCacheHost(str);
        close(DisconnectReason.SERVER_RESET);
    }

    private void sendData(Map<String, Object> map, boolean z) {
        if (this.state != State.REALTIME_CONNECTED) {
            this.logger.debug(NPStringFog.decode(new byte[]{49, 22, 10, 93, 83, 23, 17, 11, 67, 75, 82, 89, 1, 68, 12, 86, 23, 86, 11, 68, 22, 86, 84, 88, 11, 10, 6, 91, 67, 82, 1, 68, 0, 87, 89, 89, 0, 7, 23, 81, 88, 89}, "edc877", true, false), new Object[0]);
            return;
        }
        if (z) {
            this.logger.debug(NPStringFog.decode(new byte[]{102, 4, 86, 84, 89, 12, 82, 65, 92, 81, 68, 3, 21, 73, 91, 95, 94, 22, 80, 15, 76, 67, 16, 10, 92, 5, 92, 85, 94, 75}, "5a800b", true, true), new Object[0]);
        } else {
            this.logger.debug(NPStringFog.decode(new byte[]{99, 92, 11, 86, 93, 93, 87, 25, 1, 83, 64, 82, 10, 25, 64, 65}, "09e243", true), map);
        }
        this.conn.send(map);
    }

    public void close() {
        close(DisconnectReason.OTHER);
    }

    public void close(DisconnectReason disconnectReason) {
        if (this.state != State.REALTIME_DISCONNECTED) {
            if (this.logger.logsDebug()) {
                this.logger.debug(NPStringFog.decode(new byte[]{1, 85, 12, 66, 81, 13, 5, 25, 17, 84, 89, 15, 22, 80, 14, 84, 24, 0, 13, 87, 13, 84, 91, 23, 11, 86, 13}, "b9c18c", -808049696L), new Object[0]);
            }
            this.state = State.REALTIME_DISCONNECTED;
            WebsocketConnection websocketConnection = this.conn;
            if (websocketConnection != null) {
                websocketConnection.close();
                this.conn = null;
            }
            this.delegate.onDisconnect(disconnectReason);
        }
    }

    public void injectConnectionFailure() {
        close();
    }

    @Override // com.google.firebase.database.connection.WebsocketConnection.Delegate
    public void onDisconnect(boolean z) {
        this.conn = null;
        if (z || this.state != State.REALTIME_CONNECTING) {
            if (this.logger.logsDebug()) {
                this.logger.debug(NPStringFog.decode(new byte[]{49, 83, 86, 9, 18, 81, 14, 83, 23, 6, 9, 86, 13, 83, 84, 17, 15, 87, 13, 22, 91, 10, 21, 76}, "c67ef8", -1882832551L), new Object[0]);
            }
        } else if (this.logger.logsDebug()) {
            this.logger.debug(NPStringFog.decode(new byte[]{106, 3, 5, 89, 76, 92, 85, 3, 68, 86, 87, 91, 86, 3, 7, 65, 81, 90, 86, 70, 2, 84, 81, 89, 93, 2}, "8fd585", -26230), new Object[0]);
        }
        close();
    }

    @Override // com.google.firebase.database.connection.WebsocketConnection.Delegate
    public void onMessage(Map<String, Object> map) {
        try {
            String str = (String) map.get(REQUEST_TYPE);
            if (str == null) {
                if (this.logger.logsDebug()) {
                    this.logger.debug(NPStringFog.decode(new byte[]{35, 5, 8, 85, 81, 93, 69, 16, 14, 25, 68, 88, 23, 23, 4, 25, 71, 92, 23, 18, 4, 75, 20, 84, 0, 23, 18, 88, 83, 92, 95, 68, 12, 80, 71, 74, 12, 10, 6, 25, 89, 92, 22, 23, 0, 94, 81, 25, 17, 29, 17, 92, 14}, "eda949", true) + map.toString(), new Object[0]);
                }
                close();
            } else if (str.equals(REQUEST_PAYLOAD)) {
                onDataMessage((Map) map.get(REQUEST_PAYLOAD));
            } else if (str.equals(SERVER_CONTROL_MESSAGE)) {
                onControlMessage((Map) map.get(REQUEST_PAYLOAD));
            } else if (this.logger.logsDebug()) {
                this.logger.debug(NPStringFog.decode(new byte[]{127, 82, 87, 92, 71, 95, 88, 82, 25, 70, 91, 93, 88, 90, 78, 93, 21, 69, 83, 71, 79, 86, 71, 22, 91, 80, 74, 64, 84, 81, 83, 21, 77, 74, 69, 83, 12, 21}, "659356", true) + str, new Object[0]);
            }
        } catch (ClassCastException e) {
            if (this.logger.logsDebug()) {
                this.logger.debug(NPStringFog.decode(new byte[]{113, 84, 80, 91, 7, 6, 23, 65, 86, 23, 18, 3, 69, 70, 92, 23, 17, 7, 69, 67, 92, 69, 66, 15, 82, 70, 74, 86, 5, 7, 13, 21}, "7597bb", true, true) + e.toString(), new Object[0]);
            }
            close();
        }
    }

    public void open() {
        if (this.logger.logsDebug()) {
            this.logger.debug(NPStringFog.decode(new byte[]{121, 21, 86, 88, 81, 87, 81, 69, 82, 22, 91, 86, 88, 11, 86, 85, 76, 80, 89, 11}, "6e3689", 1.8858218E9f), new Object[0]);
        }
        this.conn.open();
    }

    public void sendRequest(Map<String, Object> map, boolean z) {
        HashMap map2 = new HashMap();
        map2.put(REQUEST_TYPE, REQUEST_PAYLOAD);
        map2.put(REQUEST_PAYLOAD, map);
        sendData(map2, z);
    }
}
