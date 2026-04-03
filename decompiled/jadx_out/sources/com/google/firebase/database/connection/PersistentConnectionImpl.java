package com.google.firebase.database.connection;

import com.google.firebase.database.connection.Connection;
import com.google.firebase.database.connection.ConnectionAuthTokenProvider;
import com.google.firebase.database.connection.PersistentConnection;
import com.google.firebase.database.connection.util.RetryHelper;
import com.google.firebase.database.logging.LogWrapper;
import com.google.firebase.database.util.GAuthToken;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
public class PersistentConnectionImpl implements Connection.Delegate, PersistentConnection {
    static final boolean $assertionsDisabled = false;
    private static final long IDLE_TIMEOUT = 60000;
    private static final long INVALID_AUTH_TOKEN_THRESHOLD = 3;
    private static final long SUCCESSFUL_CONNECTION_ESTABLISHED_DELAY = 30000;
    private String authToken;
    private final ConnectionAuthTokenProvider authTokenProvider;
    private String cachedHost;
    private final ConnectionContext context;
    private final PersistentConnection.Delegate delegate;
    private final ScheduledExecutorService executorService;
    private boolean forceAuthTokenRefresh;
    private boolean hasOnDisconnects;
    private final HostInfo hostInfo;
    private long lastConnectionEstablishedTime;
    private String lastSessionId;
    private long lastWriteTimestamp;
    private Map<ListenQuerySpec, OutstandingListen> listens;
    private final LogWrapper logger;
    private List<OutstandingDisconnect> onDisconnectRequestQueue;
    private Map<Long, OutstandingPut> outstandingPuts;
    private Connection realtime;
    private Map<Long, ConnectionRequestCallback> requestCBHash;
    private final RetryHelper retryHelper;
    private static final String IDLE_INTERRUPT_REASON = NPStringFog.decode(new byte[]{85, 11, 8, 93, 6, 83, 66, 13, 9, 93, 60, 89, 82, 8, 3}, "6df3c0", -1951833993L);
    private static final String REQUEST_ACTION = NPStringFog.decode(new byte[]{83}, "2431d7", -1256731263L);
    private static final String REQUEST_ACTION_AUTH = NPStringFog.decode(new byte[]{5, 77, 69, 91}, "d813c6", 5461);
    private static final String REQUEST_ACTION_GAUTH = NPStringFog.decode(new byte[]{4, 88, 64, 16, 9}, "c95da7", true);
    private static final String REQUEST_ACTION_MERGE = NPStringFog.decode(new byte[]{95}, "202fff", 1888276153L);
    private static final String REQUEST_ACTION_ONDISCONNECT_CANCEL = NPStringFog.decode(new byte[]{12, 1}, "cb6245", false);
    private static final String REQUEST_ACTION_ONDISCONNECT_MERGE = NPStringFog.decode(new byte[]{95, 90}, "075fc2", -16179);
    private static final String REQUEST_ACTION_ONDISCONNECT_PUT = NPStringFog.decode(new byte[]{13}, "bb7ceb", -1.6875233E9f);
    private static final String REQUEST_ACTION_PUT = NPStringFog.decode(new byte[]{73}, "92c1fa", 6.344837E8f);
    private static final String REQUEST_ACTION_QUERY = NPStringFog.decode(new byte[]{70}, "799cd5", 28839);
    private static final String REQUEST_ACTION_QUERY_UNLISTEN = NPStringFog.decode(new byte[]{90}, "427d21", true, false);
    private static final String REQUEST_ACTION_STATS = NPStringFog.decode(new byte[]{67}, "09a4e0", -23549);
    private static final String REQUEST_ACTION_UNAUTH = NPStringFog.decode(new byte[]{19, 86, 81, 68, 21, 81}, "f801a9", true);
    private static final String REQUEST_AUTHVAR = NPStringFog.decode(new byte[]{89, 23, 64, 92, 78, 82, 74}, "8b4483", -3934);
    private static final String REQUEST_COMPOUND_HASH = NPStringFog.decode(new byte[]{5, 10}, "fb38b5", true);
    private static final String REQUEST_COMPOUND_HASH_HASHES = NPStringFog.decode(new byte[]{94, 22}, "6e2e22", true, true);
    private static final String REQUEST_COMPOUND_HASH_PATHS = NPStringFog.decode(new byte[]{20, 21}, "df01b9", 1.533033817E9d);
    private static final String REQUEST_COUNTERS = NPStringFog.decode(new byte[]{86}, "519d57", false);
    private static final String REQUEST_CREDENTIAL = NPStringFog.decode(new byte[]{81, 17, 0, 86}, "2ce27b", 5.69716117E8d);
    private static final String REQUEST_DATA_HASH = NPStringFog.decode(new byte[]{9}, "a799f9", -861058159L);
    private static final String REQUEST_DATA_PAYLOAD = NPStringFog.decode(new byte[]{2}, "f99d84", -19601);
    private static final String REQUEST_ERROR = NPStringFog.decode(new byte[]{86, 67, 70, 12, 74}, "314c89", 13534);
    private static final String REQUEST_NUMBER = NPStringFog.decode(new byte[]{20}, "fa92a6", 4.29585029E8d);
    private static final String REQUEST_PATH = NPStringFog.decode(new byte[]{20}, "d0a7d5", true, false);
    private static final String REQUEST_PAYLOAD = NPStringFog.decode(new byte[]{91}, "98112d", 4.9982117E8d);
    private static final String REQUEST_QUERIES = NPStringFog.decode(new byte[]{20}, "e98464", false, false);
    private static final String REQUEST_STATUS = NPStringFog.decode(new byte[]{66}, "1bcba3", -1.4120552E9f);
    private static final String REQUEST_TAG = NPStringFog.decode(new byte[]{71}, "3cccdd", 6.2319565E8f);
    private static final String RESPONSE_FOR_REQUEST = NPStringFog.decode(new byte[]{83}, "177f1e", 1.6582098E9f);
    private static final String SERVER_ASYNC_ACTION = NPStringFog.decode(new byte[]{7}, "f71f26", false, true);
    private static final String SERVER_ASYNC_AUTH_REVOKED = NPStringFog.decode(new byte[]{84, 91}, "585196", -1161487747L);
    private static final String SERVER_ASYNC_DATA_MERGE = NPStringFog.decode(new byte[]{88}, "512aa7", -1887942555L);
    private static final String SERVER_ASYNC_DATA_RANGE_MERGE = NPStringFog.decode(new byte[]{75, 94}, "930789", false, false);
    private static final String SERVER_ASYNC_DATA_UPDATE = NPStringFog.decode(new byte[]{81}, "5ee17f", -3.00576904E8d);
    private static final String SERVER_ASYNC_LISTEN_CANCELLED = NPStringFog.decode(new byte[]{1}, "b37ec2", true);
    private static final String SERVER_ASYNC_PAYLOAD = NPStringFog.decode(new byte[]{90}, "866e33", -341806167L);
    private static final String SERVER_ASYNC_SECURITY_DEBUG = NPStringFog.decode(new byte[]{23, 80}, "d49a23", -14036);
    private static final String SERVER_DATA_END_PATH = NPStringFog.decode(new byte[]{92}, "9bb4a7", 941999940L);
    private static final String SERVER_DATA_RANGE_MERGE = NPStringFog.decode(new byte[]{8}, "e9f63b", -25722);
    private static final String SERVER_DATA_START_PATH = NPStringFog.decode(new byte[]{16}, "cc64a1", false, false);
    private static final String SERVER_DATA_TAG = NPStringFog.decode(new byte[]{23}, "cfeff8", -1832566674L);
    private static final String SERVER_DATA_UPDATE_BODY = NPStringFog.decode(new byte[]{92}, "85fae2", false, false);
    private static final String SERVER_DATA_UPDATE_PATH = NPStringFog.decode(new byte[]{19}, "c05bcd", 2022276365L);
    private static final String SERVER_DATA_WARNINGS = NPStringFog.decode(new byte[]{66}, "53e016", false, true);
    private static final String SERVER_KILL_INTERRUPT_REASON = NPStringFog.decode(new byte[]{64, 87, 68, 78, 93, 64, 108, 89, 95, 84, 84}, "326882", 6.9054863E8d);
    private static final String SERVER_RESPONSE_DATA = NPStringFog.decode(new byte[]{93}, "969031", false, false);
    private static final String TOKEN_REFRESH_INTERRUPT_REASON = NPStringFog.decode(new byte[]{71, 95, 92, 3, 94, 105, 65, 85, 81, 20, 85, 69, 91}, "307f06", -204130122L);
    private static long connectionIds = 0;
    private HashSet<String> interruptReasons = new HashSet<>();
    private boolean firstConnection = true;
    private ConnectionState connectionState = ConnectionState.Disconnected;
    private long writeCounter = 0;
    private long requestCounter = 0;
    private long currentGetTokenAttempt = 0;
    private int invalidAuthTokenCount = 0;
    private ScheduledFuture<?> inactivityTimer = null;

    /* JADX INFO: renamed from: com.google.firebase.database.connection.PersistentConnectionImpl$1, reason: invalid class name */
    class AnonymousClass1 implements Runnable {
        final PersistentConnectionImpl this$0;
        final boolean val$forceRefresh;

        AnonymousClass1(PersistentConnectionImpl persistentConnectionImpl, boolean z) {
            this.this$0 = persistentConnectionImpl;
            this.val$forceRefresh = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.this$0.logger.debug(NPStringFog.decode(new byte[]{101, 17, 27, 13, 11, 84, 17, 23, 13, 68, 3, 86, 69, 0, 10, 68, 4, 70, 69, 11, 66, 16, 10, 88, 84, 13}, "1cbde3", -1014881567L), new Object[0]);
            ConnectionUtils.hardAssert(this.this$0.connectionState == ConnectionState.Disconnected, NPStringFog.decode(new byte[]{125, 93, 17, 65, 8, 8, 19, 86, 12, 18, 2, 9, 93, 92, 0, 2, 21, 3, 87, 18, 22, 21, 0, 18, 86, 8, 69, 68, 18}, "32eaaf", -5.229321E8f), this.this$0.connectionState);
            this.this$0.connectionState = ConnectionState.GettingToken;
            PersistentConnectionImpl.access$608(this.this$0);
            this.this$0.authTokenProvider.getToken(this.val$forceRefresh, new ConnectionAuthTokenProvider.GetTokenCallback(this, this.this$0.currentGetTokenAttempt) { // from class: com.google.firebase.database.connection.PersistentConnectionImpl.1.1
                final AnonymousClass1 this$1;
                final long val$thisGetTokenAttempt;

                {
                    this.this$1 = this;
                    this.val$thisGetTokenAttempt = j;
                }

                @Override // com.google.firebase.database.connection.ConnectionAuthTokenProvider.GetTokenCallback
                public void onError(String str) {
                    if (this.val$thisGetTokenAttempt != this.this$1.this$0.currentGetTokenAttempt) {
                        this.this$1.this$0.logger.debug(NPStringFog.decode(new byte[]{113, 85, 89, 13, 17, 15, 86, 85, 23, 5, 6, 18, 108, 93, 92, 7, 13, 70, 93, 64, 69, 13, 17, 74, 24, 80, 82, 1, 2, 19, 75, 87, 23, 22, 11, 15, 75, 18, 64, 3, 16, 70, 86, 93, 67, 66, 23, 14, 93, 18, 91, 3, 23, 3, 75, 70, 23, 3, 23, 18, 93, 95, 71, 22, 77}, "827bcf", 1.218634345E9d), new Object[0]);
                        return;
                    }
                    this.this$1.this$0.connectionState = ConnectionState.Disconnected;
                    this.this$1.this$0.logger.debug(NPStringFog.decode(new byte[]{112, 74, 74, 91, 67, 70, 83, 93, 76, 87, 89, 15, 91, 95, 24, 64, 94, 13, 80, 86, 2, 20}, "58841f", -1.405145E9f) + str, new Object[0]);
                    this.this$1.this$0.tryScheduleReconnect();
                }

                @Override // com.google.firebase.database.connection.ConnectionAuthTokenProvider.GetTokenCallback
                public void onSuccess(String str) {
                    if (this.val$thisGetTokenAttempt != this.this$1.this$0.currentGetTokenAttempt) {
                        this.this$1.this$0.logger.debug(NPStringFog.decode(new byte[]{44, 82, 86, 95, 19, 12, 11, 82, 24, 87, 4, 17, 49, 90, 83, 85, 15, 69, 23, 80, 75, 69, 13, 17, 73, 21, 90, 85, 2, 4, 16, 70, 93, 16, 21, 13, 12, 70, 24, 71, 0, 22, 69, 91, 87, 68, 65, 17, 13, 80, 24, 92, 0, 17, 0, 70, 76, 16, 0, 17, 17, 80, 85, 64, 21, 75}, "e580ae", 24293), new Object[0]);
                    } else if (this.this$1.this$0.connectionState == ConnectionState.GettingToken) {
                        this.this$1.this$0.logger.debug(NPStringFog.decode(new byte[]{98, 17, 7, 85, 4, 74, 66, 2, 17, 90, 13, 64, 17, 2, 1, 66, 2, 81, 84, 0, 68, 66, 14, 82, 84, 10, 72, 22, 14, 73, 84, 10, 13, 88, 6, 25, 82, 11, 10, 88, 4, 90, 69, 13, 11, 88}, "1dd6a9", false), new Object[0]);
                        this.this$1.this$0.openNetworkConnection(str);
                    } else {
                        ConnectionUtils.hardAssert(this.this$1.this$0.connectionState == ConnectionState.Disconnected, NPStringFog.decode(new byte[]{39, 65, 64, 4, 91, 76, 7, 93, 16, 2, 87, 86, 12, 92, 83, 21, 81, 87, 12, 25, 67, 21, 89, 76, 7, 25, 84, 8, 75, 91, 13, 87, 94, 4, 91, 76, 7, 93, 28, 65, 90, 77, 22, 25, 71, 0, 75, 24, 71, 74}, "b90a88", -3.36722097E8d), this.this$1.this$0.connectionState);
                        this.this$1.this$0.logger.debug(NPStringFog.decode(new byte[]{47, 93, 67, 66, 10, 22, 4, 92, 94, 12, 2, 70, 2, 93, 89, 12, 0, 5, 21, 91, 88, 12, 69, 7, 7, 70, 82, 16, 69, 18, 14, 89, 82, 12, 69, 20, 4, 84, 69, 7, 22, 14, 77, 18, 85, 7, 6, 7, 20, 65, 82, 66, 6, 9, 15, 92, 82, 1, 17, 15, 14, 92, 23, 21, 4, 21, 65, 65, 82, 22, 69, 18, 14, 18, 83, 11, 22, 5, 14, 92, 89, 7, 6, 18, 4, 86}, "a27bef", false), new Object[0]);
                    }
                }
            });
        }
    }

    private interface ConnectionRequestCallback {
        void onResponse(Map<String, Object> map);
    }

    private enum ConnectionState {
        Disconnected,
        GettingToken,
        Connecting,
        Authenticating,
        Connected
    }

    private static class ListenQuerySpec {
        private final List<String> path;
        private final Map<String, Object> queryParams;

        public ListenQuerySpec(List<String> list, Map<String, Object> map) {
            this.path = list;
            this.queryParams = map;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ListenQuerySpec)) {
                return false;
            }
            ListenQuerySpec listenQuerySpec = (ListenQuerySpec) obj;
            if (this.path.equals(listenQuerySpec.path)) {
                return this.queryParams.equals(listenQuerySpec.queryParams);
            }
            return false;
        }

        public int hashCode() {
            return (this.path.hashCode() * 31) + this.queryParams.hashCode();
        }

        public String toString() {
            return ConnectionUtils.pathToString(this.path) + NPStringFog.decode(new byte[]{25, 25, 20, 84, 16, 84, 84, 66, 94, 21}, "91d5b5", false) + this.queryParams + NPStringFog.decode(new byte[]{17}, "8cfc3d", 1.8888891E9f);
        }
    }

    private static class OutstandingDisconnect {
        private final String action;
        private final Object data;
        private final RequestResultCallback onComplete;
        private final List<String> path;

        private OutstandingDisconnect(String str, List<String> list, Object obj, RequestResultCallback requestResultCallback) {
            this.action = str;
            this.path = list;
            this.data = obj;
            this.onComplete = requestResultCallback;
        }

        /* synthetic */ OutstandingDisconnect(String str, List list, Object obj, RequestResultCallback requestResultCallback, AnonymousClass1 anonymousClass1) {
            this(str, list, obj, requestResultCallback);
        }

        public String getAction() {
            return this.action;
        }

        public Object getData() {
            return this.data;
        }

        public RequestResultCallback getOnComplete() {
            return this.onComplete;
        }

        public List<String> getPath() {
            return this.path;
        }
    }

    private static class OutstandingListen {
        private final ListenHashProvider hashFunction;
        private final ListenQuerySpec query;
        private final RequestResultCallback resultCallback;
        private final Long tag;

        private OutstandingListen(RequestResultCallback requestResultCallback, ListenQuerySpec listenQuerySpec, Long l, ListenHashProvider listenHashProvider) {
            this.resultCallback = requestResultCallback;
            this.query = listenQuerySpec;
            this.hashFunction = listenHashProvider;
            this.tag = l;
        }

        /* synthetic */ OutstandingListen(RequestResultCallback requestResultCallback, ListenQuerySpec listenQuerySpec, Long l, ListenHashProvider listenHashProvider, AnonymousClass1 anonymousClass1) {
            this(requestResultCallback, listenQuerySpec, l, listenHashProvider);
        }

        public ListenHashProvider getHashFunction() {
            return this.hashFunction;
        }

        public ListenQuerySpec getQuery() {
            return this.query;
        }

        public Long getTag() {
            return this.tag;
        }

        public String toString() {
            return this.query.toString() + NPStringFog.decode(new byte[]{19, 30, 53, 7, 5, 13, 19}, "36afb7", -1.8239707E9f) + this.tag + NPStringFog.decode(new byte[]{16}, "9560d7", -1851838910L);
        }
    }

    private static class OutstandingPut {
        private String action;
        private RequestResultCallback onComplete;
        private Map<String, Object> request;
        private boolean sent;

        private OutstandingPut(String str, Map<String, Object> map, RequestResultCallback requestResultCallback) {
            this.action = str;
            this.request = map;
            this.onComplete = requestResultCallback;
        }

        /* synthetic */ OutstandingPut(String str, Map map, RequestResultCallback requestResultCallback, AnonymousClass1 anonymousClass1) {
            this(str, map, requestResultCallback);
        }

        public String getAction() {
            return this.action;
        }

        public RequestResultCallback getOnComplete() {
            return this.onComplete;
        }

        public Map<String, Object> getRequest() {
            return this.request;
        }

        public void markSent() {
            this.sent = true;
        }

        public boolean wasSent() {
            return this.sent;
        }
    }

    public PersistentConnectionImpl(ConnectionContext connectionContext, HostInfo hostInfo, PersistentConnection.Delegate delegate) {
        this.delegate = delegate;
        this.context = connectionContext;
        ScheduledExecutorService executorService = connectionContext.getExecutorService();
        this.executorService = executorService;
        this.authTokenProvider = connectionContext.getAuthTokenProvider();
        this.hostInfo = hostInfo;
        this.listens = new HashMap();
        this.requestCBHash = new HashMap();
        this.outstandingPuts = new HashMap();
        this.onDisconnectRequestQueue = new ArrayList();
        this.retryHelper = new RetryHelper.Builder(executorService, connectionContext.getLogger(), NPStringFog.decode(new byte[]{39, 9, 8, 90, 4, 81, 16, 15, 9, 90, 51, 87, 16, 20, 31, 124, 4, 94, 20, 3, 20}, "dff4a2", 8.01732936E8d)).withMinDelayAfterFailure(1000L).withRetryExponent(1.3d).withMaxDelay(SUCCESSFUL_CONNECTION_ESTABLISHED_DELAY).withJitterFactor(0.7d).build();
        long j = connectionIds;
        connectionIds = 1 + j;
        this.logger = new LogWrapper(connectionContext.getLogger(), NPStringFog.decode(new byte[]{50, 93, 66, 69, 12, 22, 22, 93, 94, 66, 38, 10, 12, 86, 85, 85, 17, 12, 13, 86}, "b806ee", -1.8107672E9f), NPStringFog.decode(new byte[]{64, 87, 108}, "04372d", false, true) + j);
        this.lastSessionId = null;
        doIdleCheck();
    }

    static /* synthetic */ int access$1308(PersistentConnectionImpl persistentConnectionImpl) {
        int i = persistentConnectionImpl.invalidAuthTokenCount;
        persistentConnectionImpl.invalidAuthTokenCount = i + 1;
        return i;
    }

    static /* synthetic */ long access$608(PersistentConnectionImpl persistentConnectionImpl) {
        long j = persistentConnectionImpl.currentGetTokenAttempt;
        persistentConnectionImpl.currentGetTokenAttempt = 1 + j;
        return j;
    }

    private boolean canSendWrites() {
        return this.connectionState == ConnectionState.Connected;
    }

    private void cancelSentTransactions() {
        ArrayList arrayList = new ArrayList();
        Iterator<Map.Entry<Long, OutstandingPut>> it = this.outstandingPuts.entrySet().iterator();
        while (it.hasNext()) {
            OutstandingPut value = it.next().getValue();
            if (value.getRequest().containsKey(REQUEST_DATA_HASH) && value.wasSent()) {
                arrayList.add(value);
                it.remove();
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            ((OutstandingPut) it2.next()).getOnComplete().onRequestResult(NPStringFog.decode(new byte[]{81, 12, 18, 2, 9, 8, 91, 0, 2, 21, 3, 2}, "5eaaff", false), null);
        }
    }

    private boolean connected() {
        return this.connectionState == ConnectionState.Authenticating || this.connectionState == ConnectionState.Connected;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doIdleCheck() {
        if (isIdle()) {
            ScheduledFuture<?> scheduledFuture = this.inactivityTimer;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(false);
            }
            this.inactivityTimer = this.executorService.schedule(new Runnable(this) { // from class: com.google.firebase.database.connection.PersistentConnectionImpl.7
                final PersistentConnectionImpl this$0;

                {
                    this.this$0 = this;
                }

                @Override // java.lang.Runnable
                public void run() {
                    this.this$0.inactivityTimer = null;
                    if (this.this$0.idleHasTimedOut()) {
                        this.this$0.interrupt(NPStringFog.decode(new byte[]{7, 91, 90, 15, 83, 2, 16, 93, 91, 15, 105, 8, 0, 88, 81}, "d44a6a", 327334269L));
                    } else {
                        this.this$0.doIdleCheck();
                    }
                }
            }, IDLE_TIMEOUT, TimeUnit.MILLISECONDS);
            return;
        }
        if (isInterrupted(IDLE_INTERRUPT_REASON)) {
            ConnectionUtils.hardAssert(!isIdle());
            resume(IDLE_INTERRUPT_REASON);
        }
    }

    private Map<String, Object> getPutObject(List<String> list, Object obj, String str) {
        HashMap map = new HashMap();
        map.put(REQUEST_ACTION_PUT, ConnectionUtils.pathToString(list));
        map.put(REQUEST_DATA_PAYLOAD, obj);
        if (str != null) {
            map.put(REQUEST_DATA_HASH, str);
        }
        return map;
    }

    private void handleTimestamp(long j) {
        if (this.logger.logsDebug()) {
            this.logger.debug(NPStringFog.decode(new byte[]{12, 81, 15, 0, 94, 15, 10, 87, 65, 16, 91, 11, 1, 67, 21, 5, 95, 22}, "d0ad2f", false), new Object[0]);
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        HashMap map = new HashMap();
        map.put(NPStringFog.decode(new byte[]{70, 84, 75, 70, 6, 68, 97, 88, 84, 85, 44, 80, 83, 66, 92, 68}, "5190c6", 728246349L), Long.valueOf(j - jCurrentTimeMillis));
        this.delegate.onServerInfoUpdate(map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean idleHasTimedOut() {
        return isIdle() && System.currentTimeMillis() > this.lastWriteTimestamp + IDLE_TIMEOUT;
    }

    private boolean isIdle() {
        return this.listens.isEmpty() && this.requestCBHash.isEmpty() && !this.hasOnDisconnects && this.outstandingPuts.isEmpty();
    }

    private long nextRequestNumber() {
        long j = this.requestCounter;
        this.requestCounter = 1 + j;
        return j;
    }

    private void onAuthRevoked(String str, String str2) {
        this.logger.debug(NPStringFog.decode(new byte[]{115, 64, 16, 80, 24, 21, 93, 94, 1, 86, 24, 19, 87, 67, 11, 83, 93, 5, 8, 21}, "25d88a", false, true) + str + NPStringFog.decode(new byte[]{21, 29}, "555f4c", 9.102427E8f) + str2 + NPStringFog.decode(new byte[]{77}, "dcf063", true, false), new Object[0]);
        this.authToken = null;
        this.forceAuthTokenRefresh = true;
        this.delegate.onAuthStatus(false);
        this.realtime.close();
    }

    private void onDataPush(String str, Map<String, Object> map) {
        if (this.logger.logsDebug()) {
            this.logger.debug(NPStringFog.decode(new byte[]{12, 84, 15, 82, 88, 3, 55, 80, 19, 64, 81, 20, 41, 80, 18, 69, 85, 1, 1, 15, 65}, "d5a64f", 21212) + str + " " + map, new Object[0]);
        }
        if (str.equals(REQUEST_DATA_PAYLOAD) || str.equals(REQUEST_ACTION_MERGE)) {
            boolean zEquals = str.equals(REQUEST_ACTION_MERGE);
            String str2 = (String) map.get(REQUEST_ACTION_PUT);
            Object obj = map.get(REQUEST_DATA_PAYLOAD);
            Long lLongFromObject = ConnectionUtils.longFromObject(map.get(REQUEST_TAG));
            if (!zEquals || !(obj instanceof Map) || ((Map) obj).size() != 0) {
                this.delegate.onDataUpdate(ConnectionUtils.stringToPath(str2), obj, zEquals, lLongFromObject);
                return;
            } else {
                if (this.logger.logsDebug()) {
                    this.logger.debug(NPStringFog.decode(new byte[]{90, 81, 88, 94, 23, 88, 93, 81, 22, 84, 8, 65, 71, 79, 22, 92, 0, 67, 84, 83, 22, 87, 10, 67, 19, 70, 87, 69, 13, 17}, "3661e1", 2788) + str2, new Object[0]);
                    return;
                }
                return;
            }
        }
        if (!str.equals(SERVER_ASYNC_DATA_RANGE_MERGE)) {
            if (str.equals(REQUEST_COUNTERS)) {
                onListenRevoked(ConnectionUtils.stringToPath((String) map.get(REQUEST_ACTION_PUT)));
                return;
            }
            if (str.equals(SERVER_ASYNC_AUTH_REVOKED)) {
                onAuthRevoked((String) map.get(REQUEST_ACTION_STATS), (String) map.get(REQUEST_DATA_PAYLOAD));
                return;
            } else if (str.equals(SERVER_ASYNC_SECURITY_DEBUG)) {
                onSecurityDebugPacket(map);
                return;
            } else {
                if (this.logger.logsDebug()) {
                    this.logger.debug(NPStringFog.decode(new byte[]{97, 12, 22, 86, 90, 95, 83, 12, 13, 73, 92, 84, 20, 3, 7, 71, 80, 95, 90, 66, 2, 65, 86, 93, 20, 17, 1, 65, 79, 85, 70, 88, 68}, "4bd390", 9389) + str, new Object[0]);
                    return;
                }
                return;
            }
        }
        String str3 = (String) map.get(REQUEST_ACTION_PUT);
        List<String> listStringToPath = ConnectionUtils.stringToPath(str3);
        Object obj2 = map.get(REQUEST_DATA_PAYLOAD);
        Long lLongFromObject2 = ConnectionUtils.longFromObject(map.get(REQUEST_TAG));
        ArrayList arrayList = new ArrayList();
        for (Map map2 : (List) obj2) {
            String str4 = (String) map2.get(REQUEST_ACTION_STATS);
            String str5 = (String) map2.get(SERVER_DATA_END_PATH);
            arrayList.add(new RangeMerge(str4 != null ? ConnectionUtils.stringToPath(str4) : null, str5 != null ? ConnectionUtils.stringToPath(str5) : null, map2.get(REQUEST_ACTION_MERGE)));
        }
        if (!arrayList.isEmpty()) {
            this.delegate.onRangeMergeUpdate(listStringToPath, arrayList, lLongFromObject2);
        } else if (this.logger.logsDebug()) {
            this.logger.debug(NPStringFog.decode(new byte[]{122, 82, 11, 14, 19, 15, 93, 82, 69, 4, 12, 22, 71, 76, 69, 19, 0, 8, 84, 80, 69, 12, 4, 20, 84, 80, 69, 7, 14, 20, 19, 69, 4, 21, 9, 70}, "35eaaf", -1.415638632E9d) + str3, new Object[0]);
        }
    }

    private void onListenRevoked(List<String> list) {
        Collection<OutstandingListen> collectionRemoveListens = removeListens(list);
        if (collectionRemoveListens != null) {
            Iterator<OutstandingListen> it = collectionRemoveListens.iterator();
            while (it.hasNext()) {
                it.next().resultCallback.onRequestResult(NPStringFog.decode(new byte[]{67, 93, 64, 89, 8, 66, 64, 81, 93, 90, 62, 85, 86, 86, 91, 81, 5}, "3824a1", 1.4862935E9f), null);
            }
        }
    }

    private void onSecurityDebugPacket(Map<String, Object> map) {
        this.logger.info((String) map.get(NPStringFog.decode(new byte[]{15, 23, 82}, "bd5990", -9.088637E8f)));
    }

    private void putInternal(String str, List<String> list, Object obj, String str2, RequestResultCallback requestResultCallback) {
        Map<String, Object> putObject = getPutObject(list, obj, str2);
        long j = this.writeCounter;
        this.writeCounter = 1 + j;
        this.outstandingPuts.put(Long.valueOf(j), new OutstandingPut(str, putObject, requestResultCallback, null));
        if (canSendWrites()) {
            sendPut(j);
        }
        this.lastWriteTimestamp = System.currentTimeMillis();
        doIdleCheck();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public OutstandingListen removeListen(ListenQuerySpec listenQuerySpec) {
        if (this.logger.logsDebug()) {
            this.logger.debug(NPStringFog.decode(new byte[]{19, 1, 9, 90, 21, 80, 15, 3, 68, 68, 22, 92, 19, 29, 68}, "add5c9", false) + listenQuerySpec, new Object[0]);
        }
        if (!this.listens.containsKey(listenQuerySpec)) {
            if (this.logger.logsDebug()) {
                this.logger.debug(NPStringFog.decode(new byte[]{109, 20, 27, 93, 93, 84, 25, 18, 13, 20, 65, 86, 84, 9, 20, 81, 19, 95, 80, 21, 22, 81, 93, 86, 75, 70, 4, 91, 65, 19, 104, 19, 7, 70, 74, 96, 73, 3, 1, 20}, "9fb433", false) + listenQuerySpec + NPStringFog.decode(new byte[]{70, 91, 17, 66, 17, 15, 9, 25, 8, 95, 66, 21, 3, 87, 1, 68, 17, 4, 30, 80, 23, 66, 66, 79}, "f9d61a", false), new Object[0]);
            }
            return null;
        }
        OutstandingListen outstandingListen = this.listens.get(listenQuerySpec);
        this.listens.remove(listenQuerySpec);
        doIdleCheck();
        return outstandingListen;
    }

    private Collection<OutstandingListen> removeListens(List<String> list) {
        if (this.logger.logsDebug()) {
            this.logger.debug(NPStringFog.decode(new byte[]{69, 4, 91, 90, 18, 89, 89, 6, 22, 84, 8, 92, 23, 13, 95, 70, 16, 85, 89, 18, 22, 84, 16, 16, 71, 0, 66, 93, 68}, "7a65d0", -1.458881622E9d) + list, new Object[0]);
        }
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<ListenQuerySpec, OutstandingListen> entry : this.listens.entrySet()) {
            ListenQuerySpec key = entry.getKey();
            OutstandingListen value = entry.getValue();
            if (key.path.equals(list)) {
                arrayList.add(value);
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            this.listens.remove(((OutstandingListen) it.next()).getQuery());
        }
        doIdleCheck();
        return arrayList;
    }

    private void restoreAuth() {
        if (this.logger.logsDebug()) {
            this.logger.debug(NPStringFog.decode(new byte[]{84, 88, 89, 85, 12, 95, 80, 25, 71, 92, 22, 69, 88, 75, 80, 25, 22, 69, 86, 77, 80}, "7959e1", true, false), new Object[0]);
        }
        ConnectionUtils.hardAssert(this.connectionState == ConnectionState.Connecting, NPStringFog.decode(new byte[]{52, 3, 88, 65, 1, 7, 67, 22, 89, 21, 22, 6, 16, 22, 89, 71, 1, 67, 2, 23, 66, 93, 72, 67, 1, 23, 66, 21, 19, 2, 16, 66, 95, 91, 68, 20, 17, 13, 88, 82, 68, 16, 23, 3, 66, 80, 94, 67, 70, 17}, "cb65dc", -27893), this.connectionState);
        if (this.authToken == null) {
            if (this.logger.logsDebug()) {
                this.logger.debug(NPStringFog.decode(new byte[]{124, 10, 71, 66, 75, 4, 65, 17, 92, 16, 80, 15, 85, 69, 82, 23, 77, 9, 18, 7, 86, 1, 88, 20, 65, 0, 19, 22, 86, 10, 87, 11, 19, 11, 74, 65, 92, 16, 95, 14, 23}, "2e3b9a", true, true), new Object[0]);
            }
            this.connectionState = ConnectionState.Connected;
            restoreState();
            return;
        }
        if (this.logger.logsDebug()) {
            this.logger.debug(NPStringFog.decode(new byte[]{96, 6, 69, 22, 12, 19, 91, 13, 81, 66, 2, 20, 70, 11, 24}, "2c6bca", 8.53274357E8d), new Object[0]);
        }
        this.connectionState = ConnectionState.Authenticating;
        sendAuthAndRestoreState();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void restoreState() {
        ConnectionUtils.hardAssert(this.connectionState == ConnectionState.Connected, NPStringFog.decode(new byte[]{99, 11, 95, 23, 90, 93, 16, 1, 85, 66, 85, 86, 94, 13, 85, 1, 66, 92, 84, 67, 89, 4, 22, 78, 85, 68, 66, 7, 22, 75, 85, 16, 68, 13, 68, 80, 94, 4, 16, 17, 66, 88, 68, 6, 28, 66, 84, 76, 68, 67, 71, 7, 22, 88, 66, 6, 10, 66, 19, 74}, "0c0b69", true), this.connectionState);
        if (this.logger.logsDebug()) {
            this.logger.debug(NPStringFog.decode(new byte[]{54, 7, 74, 68, 13, 19, 13, 12, 94, 16, 13, 20, 16, 17, 77, 81, 12, 5, 13, 12, 94, 16, 14, 8, 23, 22, 92, 94, 17}, "db90ba", true), new Object[0]);
        }
        for (OutstandingListen outstandingListen : this.listens.values()) {
            if (this.logger.logsDebug()) {
                this.logger.debug(NPStringFog.decode(new byte[]{107, 80, 69, 70, 12, 65, 80, 91, 81, 18, 15, 90, 74, 65, 83, 92, 67}, "9562c3", -1889) + outstandingListen.getQuery(), new Object[0]);
            }
            sendListen(outstandingListen);
        }
        if (this.logger.logsDebug()) {
            this.logger.debug(NPStringFog.decode(new byte[]{96, 0, 22, 16, 95, 23, 91, 11, 2, 68, 71, 23, 91, 17, 0, 23, 30}, "2eed0e", 427919671L), new Object[0]);
        }
        ArrayList arrayList = new ArrayList(this.outstandingPuts.keySet());
        Collections.sort(arrayList);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            sendPut(((Long) it.next()).longValue());
        }
        for (OutstandingDisconnect outstandingDisconnect : this.onDisconnectRequestQueue) {
            sendOnDisconnect(outstandingDisconnect.getAction(), outstandingDisconnect.getPath(), outstandingDisconnect.getData(), outstandingDisconnect.getOnComplete());
        }
        this.onDisconnectRequestQueue.clear();
    }

    private void sendAction(String str, Map<String, Object> map, ConnectionRequestCallback connectionRequestCallback) {
        sendSensitive(str, false, map, connectionRequestCallback);
    }

    private void sendAuthAndRestoreState() {
        sendAuthHelper(true);
    }

    private void sendAuthHelper(boolean z) {
        ConnectionUtils.hardAssert(connected(), NPStringFog.decode(new byte[]{43, 69, 67, 18, 22, 1, 3, 16, 83, 9, 88, 13, 3, 83, 68, 3, 82, 67, 18, 95, 16, 21, 83, 13, 2, 16, 81, 19, 66, 11, 74, 16, 82, 19, 66, 67, 17, 81, 67, 92, 22, 70, 21}, "f00f6c", -7.71186709E8d), this.connectionState);
        ConnectionUtils.hardAssert(this.authToken != null, NPStringFog.decode(new byte[]{37, 64, 23, 14, 16, 21, 11, 94, 6, 8, 16, 12, 17, 70, 23, 70, 82, 4, 68, 70, 6, 18, 16, 21, 11, 21, 2, 19, 68, 9, 1, 91, 23, 15, 83, 0, 16, 80, 66}, "d5cf0a", -18988), new Object[0]);
        ConnectionRequestCallback connectionRequestCallback = new ConnectionRequestCallback(this, z) { // from class: com.google.firebase.database.connection.PersistentConnectionImpl.3
            final PersistentConnectionImpl this$0;
            final boolean val$restoreStateAfterComplete;

            {
                this.this$0 = this;
                this.val$restoreStateAfterComplete = z;
            }

            @Override // com.google.firebase.database.connection.PersistentConnectionImpl.ConnectionRequestCallback
            public void onResponse(Map<String, Object> map) {
                this.this$0.connectionState = ConnectionState.Connected;
                String str = (String) map.get(NPStringFog.decode(new byte[]{22}, "e3678c", -9.8185705E7d));
                if (str.equals(NPStringFog.decode(new byte[]{14, 14}, "ae0bfc", -7.50842153E8d))) {
                    this.this$0.invalidAuthTokenCount = 0;
                    this.this$0.delegate.onAuthStatus(true);
                    if (this.val$restoreStateAfterComplete) {
                        this.this$0.restoreState();
                        return;
                    }
                    return;
                }
                this.this$0.authToken = null;
                this.this$0.forceAuthTokenRefresh = true;
                this.this$0.delegate.onAuthStatus(false);
                this.this$0.logger.debug(NPStringFog.decode(new byte[]{116, 20, 18, 95, 87, 92, 65, 8, 5, 86, 70, 91, 90, 15, 70, 81, 83, 91, 89, 4, 2, 13, 18}, "5af722", -1.0781869E9f) + str + NPStringFog.decode(new byte[]{70, 78}, "ffbb1a", 25394) + ((String) map.get(NPStringFog.decode(new byte[]{5}, "a82c9d", 21161))) + NPStringFog.decode(new byte[]{29}, "448ce6", -1.6205254E9f), new Object[0]);
                this.this$0.realtime.close();
                if (str.equals(NPStringFog.decode(new byte[]{8, 10, 23, 84, 15, 91, 5, 59, 21, 90, 8, 87, 15}, "ada5c2", 11393))) {
                    PersistentConnectionImpl.access$1308(this.this$0);
                    if (this.this$0.invalidAuthTokenCount >= PersistentConnectionImpl.INVALID_AUTH_TOKEN_THRESHOLD) {
                        this.this$0.retryHelper.setMaxDelay();
                        this.this$0.logger.warn(NPStringFog.decode(new byte[]{100, 20, 95, 67, 10, 83, 81, 2, 16, 84, 22, 67, 92, 3, 94, 65, 10, 84, 85, 18, 89, 90, 13, 23, 87, 20, 85, 81, 6, 89, 64, 15, 81, 89, 16, 23, 85, 20, 85, 21, 10, 89, 66, 7, 92, 92, 7, 25, 20, 50, 88, 92, 16, 23, 65, 21, 69, 84, 15, 91, 77, 70, 89, 91, 7, 94, 87, 7, 68, 80, 16, 23, 77, 9, 69, 71, 67, 113, 93, 20, 85, 87, 2, 68, 81, 39, 64, 69, 67, 94, 90, 21, 68, 84, 13, 84, 81, 70, 71, 84, 16, 23, 90, 9, 68, 21, 10, 89, 93, 18, 89, 84, 15, 94, 78, 3, 84, 21, 0, 88, 70, 20, 85, 86, 23, 91, 77, 72, 16, 120, 2, 92, 81, 70, 67, 64, 17, 82, 20, 31, 95, 64, 17, 23, 83, 9, 95, 82, 15, 82, 25, 21, 85, 71, 21, 94, 87, 3, 67, 27, 9, 68, 91, 8, 16, 83, 10, 91, 81, 70, 88, 84, 16, 23, 64, 14, 85, 21, 0, 88, 70, 20, 85, 86, 23, 23, 82, 15, 66, 80, 1, 86, 71, 3, 111, 64, 17, 91, 20, 7, 94, 81, 67, 86, 68, 15, 111, 94, 6, 78, 26, 70, 105, 90, 22, 23, 87, 7, 94, 21, 17, 82, 25, 2, 95, 66, 13, 91, 91, 7, 84, 21, 4, 88, 91, 1, 92, 80, 78, 68, 81, 20, 70, 92, 0, 82, 71, 72, 90, 70, 12, 89, 20, 0, 66, 90, 14, 23, 92, 18, 68, 69, 16, 13, 27, 73, 83, 90, 13, 68, 91, 10, 85, 27, 5, 94, 70, 3, 82, 84, 16, 82, 26, 1, 95, 90, 4, 91, 81, 72, 83, 90, 14, 24, 26}, "4f05c7", -922496978L));
                    }
                }
            }
        };
        HashMap map = new HashMap();
        GAuthToken gAuthTokenTryParseFromString = GAuthToken.tryParseFromString(this.authToken);
        if (gAuthTokenTryParseFromString == null) {
            map.put(REQUEST_CREDENTIAL, this.authToken);
            sendSensitive(REQUEST_ACTION_AUTH, true, map, connectionRequestCallback);
        } else {
            map.put(REQUEST_CREDENTIAL, gAuthTokenTryParseFromString.getToken());
            if (gAuthTokenTryParseFromString.getAuth() != null) {
                map.put(REQUEST_AUTHVAR, gAuthTokenTryParseFromString.getAuth());
            }
            sendSensitive(REQUEST_ACTION_GAUTH, true, map, connectionRequestCallback);
        }
    }

    private void sendConnectStats() {
        HashMap map = new HashMap();
        if (this.context.isPersistenceEnabled()) {
            map.put(NPStringFog.decode(new byte[]{64, 84, 65, 65, 90, 69, 68, 84, 93, 81, 86, 24, 81, 95, 87, 64, 92, 95, 84, 31, 86, 92, 82, 84, 92, 84, 87}, "013236", false), 1);
        }
        map.put(NPStringFog.decode(new byte[]{70, 7, 94, 75, 2, 95, 81, 17, 90, 12, 7, 31}, "5c5ec1", -23668) + this.context.getClientSdkVersion().replace('.', '-'), 1);
        if (this.logger.logsDebug()) {
            this.logger.debug(NPStringFog.decode(new byte[]{98, 86, 13, 2, 12, 95, 86, 19, 5, 15, 23, 66, 69, 19, 0, 9, 11, 95, 84, 80, 23, 15, 10, 95, 17, 64, 23, 7, 17, 66}, "13cfe1", -491505019L), new Object[0]);
        }
        sendStats(map);
    }

    private void sendListen(OutstandingListen outstandingListen) {
        Map<String, Object> map = new HashMap<>();
        map.put(REQUEST_ACTION_PUT, ConnectionUtils.pathToString(outstandingListen.getQuery().path));
        Object tag = outstandingListen.getTag();
        if (tag != null) {
            map.put(REQUEST_ACTION_QUERY, outstandingListen.query.queryParams);
            map.put(REQUEST_TAG, tag);
        }
        ListenHashProvider hashFunction = outstandingListen.getHashFunction();
        map.put(REQUEST_DATA_HASH, hashFunction.getSimpleHash());
        if (hashFunction.shouldIncludeCompoundHash()) {
            CompoundHash compoundHash = hashFunction.getCompoundHash();
            ArrayList arrayList = new ArrayList();
            Iterator<List<String>> it = compoundHash.getPosts().iterator();
            while (it.hasNext()) {
                arrayList.add(ConnectionUtils.pathToString(it.next()));
            }
            HashMap map2 = new HashMap();
            map2.put(REQUEST_COMPOUND_HASH_HASHES, compoundHash.getHashes());
            map2.put(REQUEST_COMPOUND_HASH_PATHS, arrayList);
            map.put(REQUEST_COMPOUND_HASH, map2);
        }
        sendAction(REQUEST_ACTION_QUERY, map, new ConnectionRequestCallback(this, outstandingListen) { // from class: com.google.firebase.database.connection.PersistentConnectionImpl.5
            final PersistentConnectionImpl this$0;
            final OutstandingListen val$listen;

            {
                this.this$0 = this;
                this.val$listen = outstandingListen;
            }

            @Override // com.google.firebase.database.connection.PersistentConnectionImpl.ConnectionRequestCallback
            public void onResponse(Map<String, Object> map3) {
                String str = (String) map3.get(NPStringFog.decode(new byte[]{69}, "649a4b", -1.2259525E9f));
                if (str.equals(NPStringFog.decode(new byte[]{87, 94}, "85ae68", true, false))) {
                    Map map4 = (Map) map3.get(NPStringFog.decode(new byte[]{1}, "e009a3", -6.3832416E8f));
                    if (map4.containsKey(NPStringFog.decode(new byte[]{18}, "eb5057", -1.2210262E9d))) {
                        this.this$0.warnOnListenerWarnings((List) map4.get(NPStringFog.decode(new byte[]{66}, "5b46ac", 5458)), this.val$listen.query);
                    }
                }
                if (((OutstandingListen) this.this$0.listens.get(this.val$listen.getQuery())) == this.val$listen) {
                    if (str.equals(NPStringFog.decode(new byte[]{9, 83}, "f8919a", -12229))) {
                        this.val$listen.resultCallback.onRequestResult(null, null);
                    } else {
                        this.this$0.removeListen(this.val$listen.getQuery());
                        this.val$listen.resultCallback.onRequestResult(str, (String) map3.get(NPStringFog.decode(new byte[]{87}, "3837de", true, false)));
                    }
                }
            }
        });
    }

    private void sendOnDisconnect(String str, List<String> list, Object obj, RequestResultCallback requestResultCallback) {
        HashMap map = new HashMap();
        map.put(REQUEST_ACTION_PUT, ConnectionUtils.pathToString(list));
        map.put(REQUEST_DATA_PAYLOAD, obj);
        sendAction(str, map, new ConnectionRequestCallback(this, requestResultCallback) { // from class: com.google.firebase.database.connection.PersistentConnectionImpl.2
            final PersistentConnectionImpl this$0;
            final RequestResultCallback val$onComplete;

            {
                this.this$0 = this;
                this.val$onComplete = requestResultCallback;
            }

            @Override // com.google.firebase.database.connection.PersistentConnectionImpl.ConnectionRequestCallback
            public void onResponse(Map<String, Object> map2) {
                String str2 = null;
                String str3 = (String) map2.get(NPStringFog.decode(new byte[]{69}, "6a8011", false));
                if (str3.equals(NPStringFog.decode(new byte[]{92, 9}, "3b4b24", 1896549838L))) {
                    str3 = null;
                } else {
                    str2 = (String) map2.get(NPStringFog.decode(new byte[]{2}, "fa5d2d", -1583672671L));
                }
                RequestResultCallback requestResultCallback2 = this.val$onComplete;
                if (requestResultCallback2 != null) {
                    requestResultCallback2.onRequestResult(str3, str2);
                }
            }
        });
    }

    private void sendPut(long j) {
        OutstandingPut outstandingPut = this.outstandingPuts.get(Long.valueOf(j));
        RequestResultCallback onComplete = outstandingPut.getOnComplete();
        String action = outstandingPut.getAction();
        outstandingPut.markSent();
        sendAction(action, outstandingPut.getRequest(), new ConnectionRequestCallback(this, action, j, outstandingPut, onComplete) { // from class: com.google.firebase.database.connection.PersistentConnectionImpl.4
            final PersistentConnectionImpl this$0;
            final String val$action;
            final RequestResultCallback val$onComplete;
            final OutstandingPut val$put;
            final long val$putId;

            {
                this.this$0 = this;
                this.val$action = action;
                this.val$putId = j;
                this.val$put = outstandingPut;
                this.val$onComplete = onComplete;
            }

            @Override // com.google.firebase.database.connection.PersistentConnectionImpl.ConnectionRequestCallback
            public void onResponse(Map<String, Object> map) {
                if (this.this$0.logger.logsDebug()) {
                    this.this$0.logger.debug(this.val$action + NPStringFog.decode(new byte[]{65, 65, 83, 23, 65, 94, 15, 64, 83, 94, 17}, "a36d11", true) + map, new Object[0]);
                }
                if (((OutstandingPut) this.this$0.outstandingPuts.get(Long.valueOf(this.val$putId))) == this.val$put) {
                    this.this$0.outstandingPuts.remove(Long.valueOf(this.val$putId));
                    if (this.val$onComplete != null) {
                        String str = (String) map.get(NPStringFog.decode(new byte[]{17}, "b0e87d", 1.73169601E9d));
                        if (str.equals(NPStringFog.decode(new byte[]{88, 95}, "746aaf", 15555))) {
                            this.val$onComplete.onRequestResult(null, null);
                        } else {
                            this.val$onComplete.onRequestResult(str, (String) map.get(NPStringFog.decode(new byte[]{1}, "e74a9d", -2340869.0d)));
                        }
                    }
                } else if (this.this$0.logger.logsDebug()) {
                    this.this$0.logger.debug(NPStringFog.decode(new byte[]{122, 3, 12, 89, 69, 94, 93, 3, 66, 89, 89, 23, 80, 11, 15, 70, 91, 82, 71, 1, 66, 80, 88, 69, 19, 20, 23, 66, 23}, "3db677", -22937) + this.val$putId + NPStringFog.decode(new byte[]{21, 80, 86, 91, 86, 69, 70, 87, 19, 81, 67, 16, 66, 83, 64, 24, 69, 85, 88, 93, 69, 93, 83, 16, 84, 94, 65, 93, 86, 84, 76, 28}, "523870", false, false), new Object[0]);
                }
                this.this$0.doIdleCheck();
            }
        });
    }

    private void sendSensitive(String str, boolean z, Map<String, Object> map, ConnectionRequestCallback connectionRequestCallback) {
        long jNextRequestNumber = nextRequestNumber();
        HashMap map2 = new HashMap();
        map2.put(REQUEST_NUMBER, Long.valueOf(jNextRequestNumber));
        map2.put(REQUEST_ACTION, str);
        map2.put(REQUEST_PAYLOAD, map);
        this.realtime.sendRequest(map2, z);
        this.requestCBHash.put(Long.valueOf(jNextRequestNumber), connectionRequestCallback);
    }

    private void sendStats(Map<String, Integer> map) {
        if (map.isEmpty()) {
            if (this.logger.logsDebug()) {
                this.logger.debug(NPStringFog.decode(new byte[]{47, 10, 76, 24, 16, 87, 15, 1, 81, 86, 4, 18, 18, 17, 89, 76, 16, 18, 3, 0, 91, 89, 22, 65, 4, 69, 75, 76, 2, 70, 18, 69, 89, 74, 6, 18, 4, 8, 72, 76, 26}, "ae88c2", -7.96256964E8d), new Object[0]);
            }
        } else {
            HashMap map2 = new HashMap();
            map2.put(REQUEST_COUNTERS, map);
            sendAction(REQUEST_ACTION_STATS, map2, new ConnectionRequestCallback(this) { // from class: com.google.firebase.database.connection.PersistentConnectionImpl.6
                final PersistentConnectionImpl this$0;

                {
                    this.this$0 = this;
                }

                @Override // com.google.firebase.database.connection.PersistentConnectionImpl.ConnectionRequestCallback
                public void onResponse(Map<String, Object> map3) {
                    String str = (String) map3.get(NPStringFog.decode(new byte[]{67}, "0d68fc", false));
                    if (str.equals(NPStringFog.decode(new byte[]{86, 89}, "92a13d", true))) {
                        return;
                    }
                    String str2 = (String) map3.get(NPStringFog.decode(new byte[]{84}, "06fa8e", -3.7088675E8f));
                    if (this.this$0.logger.logsDebug()) {
                        this.this$0.logger.debug(NPStringFog.decode(new byte[]{118, 83, 12, 85, 3, 2, 16, 70, 10, 25, 21, 3, 94, 86, 69, 74, 18, 7, 68, 65, 95, 25}, "02e9ff", -1.24439944E8f) + str + NPStringFog.decode(new byte[]{22, 76, 84, 83, 64, 65, 87, 3, 92, 12, 19}, "6d9632", false, true) + str2 + NPStringFog.decode(new byte[]{27}, "27e39e", -7.858368E8f), new Object[0]);
                    }
                }
            });
        }
    }

    private void sendUnauth() {
        ConnectionUtils.hardAssert(connected(), NPStringFog.decode(new byte[]{41, 23, 66, 18, 17, 83, 1, 66, 82, 9, 95, 95, 1, 1, 69, 3, 85, 17, 16, 13, 17, 21, 84, 95, 0, 66, 68, 8, 80, 68, 16, 10, 31}, "db1f11", 1.109241274E9d), new Object[0]);
        ConnectionUtils.hardAssert(this.authToken == null, NPStringFog.decode(new byte[]{116, 66, 18, 88, 18, 23, 90, 92, 3, 94, 18, 14, 64, 68, 18, 16, 92, 12, 65, 23, 4, 85, 18, 16, 80, 67, 72}, "57f02c", 1.7085965E9f), new Object[0]);
        sendAction(REQUEST_ACTION_UNAUTH, Collections.emptyMap(), null);
    }

    private void sendUnlisten(OutstandingListen outstandingListen) {
        HashMap map = new HashMap();
        map.put(REQUEST_ACTION_PUT, ConnectionUtils.pathToString(outstandingListen.query.path));
        Long tag = outstandingListen.getTag();
        if (tag != null) {
            map.put(REQUEST_ACTION_QUERY, outstandingListen.getQuery().queryParams);
            map.put(REQUEST_TAG, tag);
        }
        sendAction(REQUEST_ACTION_QUERY_UNLISTEN, map, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tryScheduleReconnect() {
        if (shouldReconnect()) {
            ConnectionUtils.hardAssert(this.connectionState == ConnectionState.Disconnected, NPStringFog.decode(new byte[]{124, 86, 68, 17, 88, 88, 18, 93, 89, 66, 82, 89, 92, 87, 85, 82, 69, 83, 86, 25, 67, 69, 80, 66, 87, 3, 16, 20, 66}, "290116", 1.1936867E9f), this.connectionState);
            boolean z = this.forceAuthTokenRefresh;
            this.logger.debug(NPStringFog.decode(new byte[]{55, 91, 90, 86, 86, 70, 8, 81, 92, 84, 18, 80, 11, 86, 92, 86, 81, 71, 13, 87, 92, 19, 83, 71, 16, 93, 95, 67, 70}, "d82323", true), new Object[0]);
            this.forceAuthTokenRefresh = false;
            this.retryHelper.retry(new AnonymousClass1(this, z));
        }
    }

    private void upgradeAuth() {
        sendAuthHelper(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void warnOnListenerWarnings(List<String> list, ListenQuerySpec listenQuerySpec) {
        if (list.contains(NPStringFog.decode(new byte[]{90, 14, 108, 94, 10, 81, 81, 25}, "4a37d5", 1.4641376E9f))) {
            this.logger.warn(NPStringFog.decode(new byte[]{52, 21, 89, 89, 85, 25, 0, 8, 16, 66, 92, 74, 17, 3, 83, 94, 84, 80, 4, 2, 16, 94, 92, 93, 4, 30, 30, 23, 107, 86, 20, 20, 16, 83, 83, 77, 0, 70, 71, 94, 94, 85, 65, 4, 85, 23, 86, 86, 22, 8, 92, 88, 83, 93, 4, 2, 16, 86, 92, 93, 65, 0, 89, 91, 70, 92, 19, 3, 84, 23, 93, 87, 65, 18, 88, 82, 18, 90, 13, 15, 85, 89, 70, 23, 65, 37, 95, 89, 65, 80, 5, 3, 66, 23, 83, 93, 5, 15, 94, 80, 18, 30}, "af0729", 1.143204464E9d) + (NPStringFog.decode(new byte[]{21, 77, 15, 91, 1, 93, 79, 44, 8, 23, 95, 24, 21}, "7cf5e8", 2.72537613E8d) + listenQuerySpec.queryParams.get(NPStringFog.decode(new byte[]{11}, "b49e99", 2100203395L)) + '\"') + NPStringFog.decode(new byte[]{68, 70, 83, 67, 16}, "cf2706", 5.29997035E8d) + ConnectionUtils.pathToString(listenQuerySpec.path) + NPStringFog.decode(new byte[]{23, 69, 88, 19, 79, 10, 66, 67, 23, 64, 83, 6, 66, 67, 94, 71, 79, 69, 86, 95, 83, 19, 112, 12, 69, 84, 85, 82, 69, 0, 23, 117, 86, 71, 87, 7, 86, 66, 82, 19, 68, 16, 91, 84, 68, 19, 80, 10, 69, 17, 85, 86, 66, 17, 82, 67, 23, 67, 83, 23, 81, 94, 69, 94, 87, 11, 84, 84}, "71736e", -22232));
        }
    }

    @Override // com.google.firebase.database.connection.PersistentConnection
    public void compareAndPut(List<String> list, Object obj, String str, RequestResultCallback requestResultCallback) {
        putInternal(REQUEST_ACTION_PUT, list, obj, str, requestResultCallback);
    }

    @Override // com.google.firebase.database.connection.PersistentConnection
    public void initialize() {
        tryScheduleReconnect();
    }

    public void injectConnectionFailure() {
        Connection connection = this.realtime;
        if (connection != null) {
            connection.injectConnectionFailure();
        }
    }

    @Override // com.google.firebase.database.connection.PersistentConnection
    public void interrupt(String str) {
        if (this.logger.logsDebug()) {
            this.logger.debug(NPStringFog.decode(new byte[]{33, 87, 93, 94, 92, 1, 22, 81, 92, 94, 25, 11, 12, 76, 86, 66, 75, 23, 18, 76, 86, 84, 25, 4, 13, 74, 9, 16}, "b8309b", -11298) + str, new Object[0]);
        }
        this.interruptReasons.add(str);
        Connection connection = this.realtime;
        if (connection != null) {
            connection.close();
            this.realtime = null;
        } else {
            this.retryHelper.cancel();
            this.connectionState = ConnectionState.Disconnected;
        }
        this.retryHelper.signalSuccess();
    }

    @Override // com.google.firebase.database.connection.PersistentConnection
    public boolean isInterrupted(String str) {
        return this.interruptReasons.contains(str);
    }

    @Override // com.google.firebase.database.connection.PersistentConnection
    public void listen(List<String> list, Map<String, Object> map, ListenHashProvider listenHashProvider, Long l, RequestResultCallback requestResultCallback) {
        ListenQuerySpec listenQuerySpec = new ListenQuerySpec(list, map);
        if (this.logger.logsDebug()) {
            this.logger.debug(NPStringFog.decode(new byte[]{125, 81, 71, 17, 87, 10, 88, 86, 83, 69, 93, 10, 17}, "184e2d", false, true) + listenQuerySpec, new Object[0]);
        }
        ConnectionUtils.hardAssert(!this.listens.containsKey(listenQuerySpec), NPStringFog.decode(new byte[]{85, 95, 22, 77, 3, 88, 17, 31, 69, 90, 7, 90, 85, 83, 1, 25, 18, 65, 80, 85, 0, 25, 0, 89, 75, 22, 22, 88, 11, 83, 25, 103, 16, 92, 20, 79, 106, 70, 0, 90, 72}, "96e9f6", 1559048296L), new Object[0]);
        if (this.logger.logsDebug()) {
            this.logger.debug(NPStringFog.decode(new byte[]{32, 7, 80, 11, 10, 83, 65, 15, 93, 17, 16, 81, 15, 67, 69, 23, 1, 70, 24, 89, 20}, "ac4bd4", 31080) + listenQuerySpec, new Object[0]);
        }
        OutstandingListen outstandingListen = new OutstandingListen(requestResultCallback, listenQuerySpec, l, listenHashProvider, null);
        this.listens.put(listenQuerySpec, outstandingListen);
        if (connected()) {
            sendListen(outstandingListen);
        }
        doIdleCheck();
    }

    @Override // com.google.firebase.database.connection.PersistentConnection
    public void merge(List<String> list, Map<String, Object> map, RequestResultCallback requestResultCallback) {
        putInternal(REQUEST_ACTION_MERGE, list, map, null, requestResultCallback);
    }

    @Override // com.google.firebase.database.connection.Connection.Delegate
    public void onCacheHost(String str) {
        this.cachedHost = str;
    }

    @Override // com.google.firebase.database.connection.Connection.Delegate
    public void onDataMessage(Map<String, Object> map) {
        if (map.containsKey(REQUEST_NUMBER)) {
            ConnectionRequestCallback connectionRequestCallbackRemove = this.requestCBHash.remove(Long.valueOf(((Integer) map.get(REQUEST_NUMBER)).intValue()));
            if (connectionRequestCallbackRemove != null) {
                connectionRequestCallbackRemove.onResponse((Map) map.get(REQUEST_PAYLOAD));
                return;
            }
            return;
        }
        if (map.containsKey(REQUEST_ERROR)) {
            return;
        }
        if (map.containsKey(REQUEST_ACTION)) {
            onDataPush((String) map.get(REQUEST_ACTION), (Map) map.get(REQUEST_PAYLOAD));
        } else if (this.logger.logsDebug()) {
            this.logger.debug(NPStringFog.decode(new byte[]{112, 4, 92, 91, 74, 91, 87, 4, 18, 65, 86, 89, 87, 12, 69, 90, 24, 95, 92, 16, 65, 85, 95, 87, 3, 67}, "9c2482", 1.6491593E9f) + map, new Object[0]);
        }
    }

    @Override // com.google.firebase.database.connection.Connection.Delegate
    public void onDisconnect(Connection.DisconnectReason disconnectReason) {
        boolean z = false;
        if (this.logger.logsDebug()) {
            this.logger.debug(NPStringFog.decode(new byte[]{118, 88, 22, 69, 90, 93, 17, 83, 11, 22, 86, 92, 95, 89, 7, 6, 65, 19, 85, 66, 7, 69, 65, 92, 17}, "17be53", -17773) + disconnectReason.name(), new Object[0]);
        }
        this.connectionState = ConnectionState.Disconnected;
        this.realtime = null;
        this.hasOnDisconnects = false;
        this.requestCBHash.clear();
        cancelSentTransactions();
        if (shouldReconnect()) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            long j = this.lastConnectionEstablishedTime;
            if (j > 0 && jCurrentTimeMillis - j > SUCCESSFUL_CONNECTION_ESTABLISHED_DELAY) {
                z = true;
            }
            if (disconnectReason == Connection.DisconnectReason.SERVER_RESET || z) {
                this.retryHelper.signalSuccess();
            }
            tryScheduleReconnect();
        }
        this.lastConnectionEstablishedTime = 0L;
        this.delegate.onDisconnect();
    }

    @Override // com.google.firebase.database.connection.PersistentConnection
    public void onDisconnectCancel(List<String> list, RequestResultCallback requestResultCallback) {
        AnonymousClass1 anonymousClass1 = null;
        if (canSendWrites()) {
            sendOnDisconnect(REQUEST_ACTION_ONDISCONNECT_CANCEL, list, null, requestResultCallback);
        } else {
            this.onDisconnectRequestQueue.add(new OutstandingDisconnect(REQUEST_ACTION_ONDISCONNECT_CANCEL, list, anonymousClass1, requestResultCallback, anonymousClass1));
        }
        doIdleCheck();
    }

    @Override // com.google.firebase.database.connection.PersistentConnection
    public void onDisconnectMerge(List<String> list, Map<String, Object> map, RequestResultCallback requestResultCallback) {
        this.hasOnDisconnects = true;
        if (canSendWrites()) {
            sendOnDisconnect(REQUEST_ACTION_ONDISCONNECT_MERGE, list, map, requestResultCallback);
        } else {
            this.onDisconnectRequestQueue.add(new OutstandingDisconnect(REQUEST_ACTION_ONDISCONNECT_MERGE, list, map, requestResultCallback, null));
        }
        doIdleCheck();
    }

    @Override // com.google.firebase.database.connection.PersistentConnection
    public void onDisconnectPut(List<String> list, Object obj, RequestResultCallback requestResultCallback) {
        this.hasOnDisconnects = true;
        if (canSendWrites()) {
            sendOnDisconnect(REQUEST_ACTION_ONDISCONNECT_PUT, list, obj, requestResultCallback);
        } else {
            this.onDisconnectRequestQueue.add(new OutstandingDisconnect(REQUEST_ACTION_ONDISCONNECT_PUT, list, obj, requestResultCallback, null));
        }
        doIdleCheck();
    }

    @Override // com.google.firebase.database.connection.Connection.Delegate
    public void onKill(String str) {
        if (this.logger.logsDebug()) {
            this.logger.debug(NPStringFog.decode(new byte[]{39, 10, 20, 3, 87, 0, 18, 6, 70, 34, 84, 21, 0, 1, 7, 21, 80, 65, 2, 12, 8, 8, 80, 2, 21, 10, 9, 8, 21, 22, 0, 16, 70, 0, 90, 19, 2, 6, 0, 19, 89, 13, 24, 67, 13, 15, 89, 13, 4, 7, 70, 4, 76, 65, 21, 11, 3, 70, 70, 4, 19, 21, 3, 20, 27, 65, 54, 10, 10, 10, 21, 15, 14, 23, 70, 7, 65, 21, 4, 14, 22, 18, 21, 19, 4, 0, 9, 8, 91, 4, 2, 23, 72, 70, 103, 4, 0, 16, 9, 8, 15, 65}, "acff5a", 22555) + str, new Object[0]);
        }
        interrupt(SERVER_KILL_INTERRUPT_REASON);
    }

    @Override // com.google.firebase.database.connection.Connection.Delegate
    public void onReady(long j, String str) {
        if (this.logger.logsDebug()) {
            this.logger.debug(NPStringFog.decode(new byte[]{14, 95, 103, 4, 88, 2, 24}, "a15a9f", 1.066144349E9d), new Object[0]);
        }
        this.lastConnectionEstablishedTime = System.currentTimeMillis();
        handleTimestamp(j);
        if (this.firstConnection) {
            sendConnectStats();
        }
        restoreAuth();
        this.firstConnection = false;
        this.lastSessionId = str;
        this.delegate.onConnect();
    }

    public void openNetworkConnection(String str) {
        ConnectionUtils.hardAssert(this.connectionState == ConnectionState.GettingToken, NPStringFog.decode(new byte[]{50, 17, 73, 92, 95, 81, 70, 23, 95, 21, 94, 70, 3, 13, 16, 91, 84, 66, 17, 12, 66, 94, 17, 85, 9, 13, 94, 80, 82, 66, 15, 12, 94, 21, 70, 94, 15, 15, 85, 21, 88, 88, 70, 23, 88, 80, 17, 65, 20, 12, 94, 82, 17, 69, 18, 2, 68, 80, 11, 22, 67, 16}, "fc0516", -3196), this.connectionState);
        if (str == null) {
            this.delegate.onAuthStatus(false);
        }
        this.authToken = str;
        this.connectionState = ConnectionState.Connecting;
        Connection connection = new Connection(this.context, this.hostInfo, this.cachedHost, this, this.lastSessionId);
        this.realtime = connection;
        connection.open();
    }

    @Override // com.google.firebase.database.connection.PersistentConnection
    public void purgeOutstandingWrites() {
        for (OutstandingPut outstandingPut : this.outstandingPuts.values()) {
            if (outstandingPut.onComplete != null) {
                outstandingPut.onComplete.onRequestResult(NPStringFog.decode(new byte[]{68, 64, 92, 67, 1, 61, 80, 83, 91, 84, 1, 14, 86, 86}, "3257db", false, true), null);
            }
        }
        for (OutstandingDisconnect outstandingDisconnect : this.onDisconnectRequestQueue) {
            if (outstandingDisconnect.onComplete != null) {
                outstandingDisconnect.onComplete.onRequestResult(NPStringFog.decode(new byte[]{18, 69, 13, 17, 80, 105, 6, 86, 10, 6, 80, 90, 0, 83}, "e7de56", -1102432727L), null);
            }
        }
        this.outstandingPuts.clear();
        this.onDisconnectRequestQueue.clear();
        if (!connected()) {
            this.hasOnDisconnects = false;
        }
        doIdleCheck();
    }

    @Override // com.google.firebase.database.connection.PersistentConnection
    public void put(List<String> list, Object obj, RequestResultCallback requestResultCallback) {
        putInternal(REQUEST_ACTION_PUT, list, obj, null, requestResultCallback);
    }

    @Override // com.google.firebase.database.connection.PersistentConnection
    public void refreshAuthToken() {
        this.logger.debug(NPStringFog.decode(new byte[]{37, 65, 21, 92, 69, 76, 11, 95, 4, 90, 69, 74, 1, 82, 19, 81, 22, 80, 68, 70, 4, 69, 16, 93, 23, 64, 4, 80}, "d4a4e8", 26830), new Object[0]);
        interrupt(TOKEN_REFRESH_INTERRUPT_REASON);
        resume(TOKEN_REFRESH_INTERRUPT_REASON);
    }

    @Override // com.google.firebase.database.connection.PersistentConnection
    public void refreshAuthToken(String str) {
        this.logger.debug(NPStringFog.decode(new byte[]{35, 69, 17, 10, 65, 71, 13, 91, 0, 12, 65, 65, 7, 86, 23, 7, 18, 91, 7, 84, 75}, "b0eba3", 22159), new Object[0]);
        this.authToken = str;
        if (connected()) {
            if (str != null) {
                upgradeAuth();
            } else {
                sendUnauth();
            }
        }
    }

    @Override // com.google.firebase.database.connection.PersistentConnection
    public void resume(String str) {
        if (this.logger.logsDebug()) {
            this.logger.debug(NPStringFog.decode(new byte[]{38, 10, 95, 88, 7, 85, 17, 12, 94, 88, 66, 88, 10, 69, 93, 89, 12, 81, 0, 23, 17, 95, 12, 66, 0, 23, 67, 67, 18, 66, 0, 1, 17, 80, 13, 68, 95, 69}, "ee16b6", false, false) + str, new Object[0]);
        }
        this.interruptReasons.remove(str);
        if (shouldReconnect() && this.connectionState == ConnectionState.Disconnected) {
            tryScheduleReconnect();
        }
    }

    boolean shouldReconnect() {
        return this.interruptReasons.size() == 0;
    }

    @Override // com.google.firebase.database.connection.PersistentConnection
    public void shutdown() {
        interrupt(NPStringFog.decode(new byte[]{65, 12, 19, 65, 80, 90, 69, 10}, "2df545", -2.1280376E9f));
    }

    @Override // com.google.firebase.database.connection.PersistentConnection
    public void unlisten(List<String> list, Map<String, Object> map) {
        ListenQuerySpec listenQuerySpec = new ListenQuerySpec(list, map);
        if (this.logger.logsDebug()) {
            this.logger.debug(NPStringFog.decode(new byte[]{16, 90, 88, 10, 74, 68, 0, 90, 93, 13, 94, 16, 10, 90, 20}, "e44c90", -4.40735988E8d) + listenQuerySpec, new Object[0]);
        }
        OutstandingListen outstandingListenRemoveListen = removeListen(listenQuerySpec);
        if (outstandingListenRemoveListen != null && connected()) {
            sendUnlisten(outstandingListenRemoveListen);
        }
        doIdleCheck();
    }
}
