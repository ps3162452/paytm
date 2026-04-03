package okhttp3;

import java.net.MalformedURLException;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.Socket;
import java.net.UnknownHostException;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import n.NPStringFog;
import okhttp3.Call;
import okhttp3.EventListener;
import okhttp3.Headers;
import okhttp3.Response;
import okhttp3.WebSocket;
import okhttp3.internal.Internal;
import okhttp3.internal.Util;
import okhttp3.internal.cache.InternalCache;
import okhttp3.internal.connection.RealConnection;
import okhttp3.internal.connection.RouteDatabase;
import okhttp3.internal.connection.StreamAllocation;
import okhttp3.internal.platform.Platform;
import okhttp3.internal.tls.CertificateChainCleaner;
import okhttp3.internal.tls.OkHostnameVerifier;
import okhttp3.internal.ws.RealWebSocket;

/* JADX INFO: loaded from: classes62.dex */
public class OkHttpClient implements Cloneable, Call.Factory, WebSocket.Factory {
    final Authenticator authenticator;

    @Nullable
    final Cache cache;

    @Nullable
    final CertificateChainCleaner certificateChainCleaner;
    final CertificatePinner certificatePinner;
    final int connectTimeout;
    final ConnectionPool connectionPool;
    final List<ConnectionSpec> connectionSpecs;
    final CookieJar cookieJar;
    final Dispatcher dispatcher;
    final Dns dns;
    final EventListener.Factory eventListenerFactory;
    final boolean followRedirects;
    final boolean followSslRedirects;
    final HostnameVerifier hostnameVerifier;
    final List<Interceptor> interceptors;

    @Nullable
    final InternalCache internalCache;
    final List<Interceptor> networkInterceptors;
    final int pingInterval;
    final List<Protocol> protocols;

    @Nullable
    final Proxy proxy;
    final Authenticator proxyAuthenticator;
    final ProxySelector proxySelector;
    final int readTimeout;
    final boolean retryOnConnectionFailure;
    final SocketFactory socketFactory;

    @Nullable
    final SSLSocketFactory sslSocketFactory;
    final int writeTimeout;
    static final List<Protocol> DEFAULT_PROTOCOLS = Util.immutableList(Protocol.HTTP_2, Protocol.HTTP_1_1);
    static final List<ConnectionSpec> DEFAULT_CONNECTION_SPECS = Util.immutableList(ConnectionSpec.MODERN_TLS, ConnectionSpec.CLEARTEXT);

    public static final class Builder {
        Authenticator authenticator;

        @Nullable
        Cache cache;

        @Nullable
        CertificateChainCleaner certificateChainCleaner;
        CertificatePinner certificatePinner;
        int connectTimeout;
        ConnectionPool connectionPool;
        List<ConnectionSpec> connectionSpecs;
        CookieJar cookieJar;
        Dispatcher dispatcher;
        Dns dns;
        EventListener.Factory eventListenerFactory;
        boolean followRedirects;
        boolean followSslRedirects;
        HostnameVerifier hostnameVerifier;
        final List<Interceptor> interceptors;

        @Nullable
        InternalCache internalCache;
        final List<Interceptor> networkInterceptors;
        int pingInterval;
        List<Protocol> protocols;

        @Nullable
        Proxy proxy;
        Authenticator proxyAuthenticator;
        ProxySelector proxySelector;
        int readTimeout;
        boolean retryOnConnectionFailure;
        SocketFactory socketFactory;

        @Nullable
        SSLSocketFactory sslSocketFactory;
        int writeTimeout;

        public Builder() {
            this.interceptors = new ArrayList();
            this.networkInterceptors = new ArrayList();
            this.dispatcher = new Dispatcher();
            this.protocols = OkHttpClient.DEFAULT_PROTOCOLS;
            this.connectionSpecs = OkHttpClient.DEFAULT_CONNECTION_SPECS;
            this.eventListenerFactory = EventListener.factory(EventListener.NONE);
            this.proxySelector = ProxySelector.getDefault();
            this.cookieJar = CookieJar.NO_COOKIES;
            this.socketFactory = SocketFactory.getDefault();
            this.hostnameVerifier = OkHostnameVerifier.INSTANCE;
            this.certificatePinner = CertificatePinner.DEFAULT;
            this.proxyAuthenticator = Authenticator.NONE;
            this.authenticator = Authenticator.NONE;
            this.connectionPool = new ConnectionPool();
            this.dns = Dns.SYSTEM;
            this.followSslRedirects = true;
            this.followRedirects = true;
            this.retryOnConnectionFailure = true;
            this.connectTimeout = 10000;
            this.readTimeout = 10000;
            this.writeTimeout = 10000;
            this.pingInterval = 0;
        }

        Builder(OkHttpClient okHttpClient) {
            this.interceptors = new ArrayList();
            this.networkInterceptors = new ArrayList();
            this.dispatcher = okHttpClient.dispatcher;
            this.proxy = okHttpClient.proxy;
            this.protocols = okHttpClient.protocols;
            this.connectionSpecs = okHttpClient.connectionSpecs;
            this.interceptors.addAll(okHttpClient.interceptors);
            this.networkInterceptors.addAll(okHttpClient.networkInterceptors);
            this.eventListenerFactory = okHttpClient.eventListenerFactory;
            this.proxySelector = okHttpClient.proxySelector;
            this.cookieJar = okHttpClient.cookieJar;
            this.internalCache = okHttpClient.internalCache;
            this.cache = okHttpClient.cache;
            this.socketFactory = okHttpClient.socketFactory;
            this.sslSocketFactory = okHttpClient.sslSocketFactory;
            this.certificateChainCleaner = okHttpClient.certificateChainCleaner;
            this.hostnameVerifier = okHttpClient.hostnameVerifier;
            this.certificatePinner = okHttpClient.certificatePinner;
            this.proxyAuthenticator = okHttpClient.proxyAuthenticator;
            this.authenticator = okHttpClient.authenticator;
            this.connectionPool = okHttpClient.connectionPool;
            this.dns = okHttpClient.dns;
            this.followSslRedirects = okHttpClient.followSslRedirects;
            this.followRedirects = okHttpClient.followRedirects;
            this.retryOnConnectionFailure = okHttpClient.retryOnConnectionFailure;
            this.connectTimeout = okHttpClient.connectTimeout;
            this.readTimeout = okHttpClient.readTimeout;
            this.writeTimeout = okHttpClient.writeTimeout;
            this.pingInterval = okHttpClient.pingInterval;
        }

        public Builder addInterceptor(Interceptor interceptor) {
            if (interceptor == null) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{15, 94, 70, 87, 67, 0, 3, 64, 70, 93, 67, 67, 91, 13, 18, 92, 68, 15, 10}, "f0221c", -1.4423638E9f));
            }
            this.interceptors.add(interceptor);
            return this;
        }

        public Builder addNetworkInterceptor(Interceptor interceptor) {
            if (interceptor == null) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{80, 92, 66, 80, 67, 84, 92, 66, 66, 90, 67, 23, 4, 15, 22, 91, 68, 91, 85}, "926517", 1.2514871E9f));
            }
            this.networkInterceptors.add(interceptor);
            return this;
        }

        public Builder authenticator(Authenticator authenticator) {
            if (authenticator == null) {
                throw new NullPointerException(NPStringFog.decode(new byte[]{89, 20, 68, 10, 83, 89, 76, 8, 83, 3, 66, 88, 74, 65, 13, 95, 22, 89, 77, 13, 92}, "8a0b67", true, false));
            }
            this.authenticator = authenticator;
            return this;
        }

        public OkHttpClient build() {
            return new OkHttpClient(this);
        }

        public Builder cache(@Nullable Cache cache) {
            this.cache = cache;
            this.internalCache = null;
            return this;
        }

        public Builder certificatePinner(CertificatePinner certificatePinner) {
            if (certificatePinner == null) {
                throw new NullPointerException(NPStringFog.decode(new byte[]{7, 0, 71, 77, 13, 5, 13, 6, 84, 77, 1, 51, 13, 11, 91, 92, 22, 67, 89, 88, 21, 87, 17, 15, 8}, "de59dc", 1.68602517E8d));
            }
            this.certificatePinner = certificatePinner;
            return this;
        }

        public Builder connectTimeout(long j, TimeUnit timeUnit) {
            this.connectTimeout = Util.checkDuration(NPStringFog.decode(new byte[]{70, 10, 11, 86, 10, 77, 70}, "2cf3e8", 1642096530L), j, timeUnit);
            return this;
        }

        public Builder connectionPool(ConnectionPool connectionPool) {
            if (connectionPool == null) {
                throw new NullPointerException(NPStringFog.decode(new byte[]{7, 11, 90, 95, 3, 84, 16, 13, 91, 95, 54, 88, 11, 8, 20, 12, 91, 23, 10, 17, 88, 93}, "dd41f7", -5.541244E8f));
            }
            this.connectionPool = connectionPool;
            return this;
        }

        public Builder connectionSpecs(List<ConnectionSpec> list) {
            this.connectionSpecs = Util.immutableList(list);
            return this;
        }

        public Builder cookieJar(CookieJar cookieJar) {
            if (cookieJar == null) {
                throw new NullPointerException(NPStringFog.decode(new byte[]{81, 94, 14, 94, 10, 84, 120, 80, 19, 21, 94, 12, 18, 95, 20, 89, 15}, "21a5c1", -1782));
            }
            this.cookieJar = cookieJar;
            return this;
        }

        public Builder dispatcher(Dispatcher dispatcher) {
            if (dispatcher == null) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{0, 11, 18, 66, 85, 67, 7, 10, 4, 64, 20, 10, 89, 66, 15, 71, 88, 91}, "dba247", true, false));
            }
            this.dispatcher = dispatcher;
            return this;
        }

        public Builder dns(Dns dns) {
            if (dns == null) {
                throw new NullPointerException(NPStringFog.decode(new byte[]{82, 8, 65, 16, 5, 5, 22, 8, 71, 92, 84}, "6f2088", -16639));
            }
            this.dns = dns;
            return this;
        }

        public Builder eventListener(EventListener eventListener) {
            if (eventListener == null) {
                throw new NullPointerException(NPStringFog.decode(new byte[]{7, 70, 86, 86, 77, 46, 11, 67, 71, 93, 87, 7, 16, 16, 14, 5, 25, 12, 23, 92, 95}, "b0389b", -43512711L));
            }
            this.eventListenerFactory = EventListener.factory(eventListener);
            return this;
        }

        public Builder eventListenerFactory(EventListener.Factory factory) {
            if (factory == null) {
                throw new NullPointerException(NPStringFog.decode(new byte[]{87, 70, 7, 15, 18, 125, 91, 67, 22, 4, 8, 84, 64, 118, 3, 2, 18, 94, 64, 73, 66, 92, 91, 17, 92, 69, 14, 13}, "20baf1", -7.36078578E8d));
            }
            this.eventListenerFactory = factory;
            return this;
        }

        public Builder followRedirects(boolean z) {
            this.followRedirects = z;
            return this;
        }

        public Builder followSslRedirects(boolean z) {
            this.followSslRedirects = z;
            return this;
        }

        public Builder hostnameVerifier(HostnameVerifier hostnameVerifier) {
            if (hostnameVerifier == null) {
                throw new NullPointerException(NPStringFog.decode(new byte[]{12, 91, 23, 67, 8, 88, 9, 81, 50, 82, 20, 80, 2, 93, 1, 69, 70, 4, 89, 20, 10, 66, 10, 85}, "d4d7f9", 1.215893E9d));
            }
            this.hostnameVerifier = hostnameVerifier;
            return this;
        }

        public List<Interceptor> interceptors() {
            return this.interceptors;
        }

        public List<Interceptor> networkInterceptors() {
            return this.networkInterceptors;
        }

        public Builder pingInterval(long j, TimeUnit timeUnit) {
            this.pingInterval = Util.checkDuration(NPStringFog.decode(new byte[]{90, 11, 21, 82, 67, 78, 82, 9}, "3ea718", false, true), j, timeUnit);
            return this;
        }

        public Builder protocols(List<Protocol> list) {
            ArrayList arrayList = new ArrayList(list);
            if (!arrayList.contains(Protocol.HTTP_1_1)) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{21, 69, 88, 67, 10, 80, 10, 91, 68, 23, 1, 92, 0, 68, 89, 16, 17, 19, 6, 88, 89, 67, 4, 90, 11, 23, 95, 67, 17, 67, 74, 6, 25, 6, 95, 19}, "e777e3", 1.079660828E9d) + arrayList);
            }
            if (arrayList.contains(Protocol.HTTP_1_0)) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{65, 17, 9, 76, 87, 90, 94, 15, 21, 24, 85, 76, 66, 23, 70, 86, 87, 77, 17, 0, 9, 86, 76, 88, 88, 13, 70, 80, 76, 77, 65, 76, 87, 22, 8, 3, 17}, "1cf889", false) + arrayList);
            }
            if (arrayList.contains(null)) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{73, 75, 87, 67, 9, 85, 86, 85, 75, 23, 11, 67, 74, 77, 24, 89, 9, 66, 25, 90, 87, 89, 18, 87, 80, 87, 24, 89, 19, 90, 85}, "9987f6", -1022802684L));
            }
            arrayList.remove(Protocol.SPDY_3);
            this.protocols = Collections.unmodifiableList(arrayList);
            return this;
        }

        public Builder proxy(@Nullable Proxy proxy) {
            this.proxy = proxy;
            return this;
        }

        public Builder proxyAuthenticator(Authenticator authenticator) {
            if (authenticator == null) {
                throw new NullPointerException(NPStringFog.decode(new byte[]{18, 23, 90, 74, 72, 35, 23, 17, 93, 87, 95, 22, 11, 6, 84, 70, 94, 16, 66, 88, 8, 18, 95, 23, 14, 9}, "be521b", -1.853802E8f));
            }
            this.proxyAuthenticator = authenticator;
            return this;
        }

        public Builder proxySelector(ProxySelector proxySelector) {
            this.proxySelector = proxySelector;
            return this;
        }

        public Builder readTimeout(long j, TimeUnit timeUnit) {
            this.readTimeout = Util.checkDuration(NPStringFog.decode(new byte[]{22, 95, 85, 85, 13, 68, 22}, "b680b1", -1.524795129E9d), j, timeUnit);
            return this;
        }

        public Builder retryOnConnectionFailure(boolean z) {
            this.retryOnConnectionFailure = z;
            return this;
        }

        void setInternalCache(@Nullable InternalCache internalCache) {
            this.internalCache = internalCache;
            this.cache = null;
        }

        public Builder socketFactory(SocketFactory socketFactory) {
            if (socketFactory == null) {
                throw new NullPointerException(NPStringFog.decode(new byte[]{18, 92, 84, 95, 82, 66, 39, 82, 84, 64, 88, 68, 24, 19, 10, 9, 23, 88, 20, 95, 91}, "a37476", false, false));
            }
            this.socketFactory = socketFactory;
            return this;
        }

        public Builder sslSocketFactory(SSLSocketFactory sSLSocketFactory) {
            if (sSLSocketFactory == null) {
                throw new NullPointerException(NPStringFog.decode(new byte[]{65, 22, 89, 48, 10, 85, 89, 0, 65, 37, 4, 85, 70, 10, 71, 26, 69, 11, 15, 69, 91, 22, 9, 90}, "2e5ce6", -20779));
            }
            this.sslSocketFactory = sSLSocketFactory;
            this.certificateChainCleaner = Platform.get().buildCertificateChainCleaner(sSLSocketFactory);
            return this;
        }

        public Builder sslSocketFactory(SSLSocketFactory sSLSocketFactory, X509TrustManager x509TrustManager) {
            if (sSLSocketFactory == null) {
                throw new NullPointerException(NPStringFog.decode(new byte[]{75, 18, 94, 55, 9, 85, 83, 4, 70, 34, 7, 85, 76, 14, 64, 29, 70, 11, 5, 65, 92, 17, 10, 90}, "8a2df6", false, true));
            }
            if (x509TrustManager == null) {
                throw new NullPointerException(NPStringFog.decode(new byte[]{65, 19, 70, 16, 69, 121, 84, 15, 82, 4, 84, 70, 21, 92, 14, 67, 95, 65, 89, 13}, "5a3c14", 27032));
            }
            this.sslSocketFactory = sSLSocketFactory;
            this.certificateChainCleaner = CertificateChainCleaner.get(x509TrustManager);
            return this;
        }

        public Builder writeTimeout(long j, TimeUnit timeUnit) {
            this.writeTimeout = Util.checkDuration(NPStringFog.decode(new byte[]{64, 90, 11, 0, 88, 23, 64}, "43fe7b", 8471), j, timeUnit);
            return this;
        }
    }

    static {
        Internal.instance = new Internal() { // from class: okhttp3.OkHttpClient.1
            @Override // okhttp3.internal.Internal
            public void addLenient(Headers.Builder builder, String str) {
                builder.addLenient(str);
            }

            @Override // okhttp3.internal.Internal
            public void addLenient(Headers.Builder builder, String str, String str2) {
                builder.addLenient(str, str2);
            }

            @Override // okhttp3.internal.Internal
            public void apply(ConnectionSpec connectionSpec, SSLSocket sSLSocket, boolean z) {
                connectionSpec.apply(sSLSocket, z);
            }

            @Override // okhttp3.internal.Internal
            public int code(Response.Builder builder) {
                return builder.code;
            }

            @Override // okhttp3.internal.Internal
            public boolean connectionBecameIdle(ConnectionPool connectionPool, RealConnection realConnection) {
                return connectionPool.connectionBecameIdle(realConnection);
            }

            @Override // okhttp3.internal.Internal
            public Socket deduplicate(ConnectionPool connectionPool, Address address, StreamAllocation streamAllocation) {
                return connectionPool.deduplicate(address, streamAllocation);
            }

            @Override // okhttp3.internal.Internal
            public boolean equalsNonHost(Address address, Address address2) {
                return address.equalsNonHost(address2);
            }

            @Override // okhttp3.internal.Internal
            public RealConnection get(ConnectionPool connectionPool, Address address, StreamAllocation streamAllocation, Route route) {
                return connectionPool.get(address, streamAllocation, route);
            }

            @Override // okhttp3.internal.Internal
            public HttpUrl getHttpUrlChecked(String str) throws MalformedURLException, UnknownHostException {
                return HttpUrl.getChecked(str);
            }

            @Override // okhttp3.internal.Internal
            public Call newWebSocketCall(OkHttpClient okHttpClient, Request request) {
                return RealCall.newRealCall(okHttpClient, request, true);
            }

            @Override // okhttp3.internal.Internal
            public void put(ConnectionPool connectionPool, RealConnection realConnection) {
                connectionPool.put(realConnection);
            }

            @Override // okhttp3.internal.Internal
            public RouteDatabase routeDatabase(ConnectionPool connectionPool) {
                return connectionPool.routeDatabase;
            }

            @Override // okhttp3.internal.Internal
            public void setCache(Builder builder, InternalCache internalCache) {
                builder.setInternalCache(internalCache);
            }

            @Override // okhttp3.internal.Internal
            public StreamAllocation streamAllocation(Call call) {
                return ((RealCall) call).streamAllocation();
            }
        };
    }

    public OkHttpClient() {
        this(new Builder());
    }

    OkHttpClient(Builder builder) {
        this.dispatcher = builder.dispatcher;
        this.proxy = builder.proxy;
        this.protocols = builder.protocols;
        this.connectionSpecs = builder.connectionSpecs;
        this.interceptors = Util.immutableList(builder.interceptors);
        this.networkInterceptors = Util.immutableList(builder.networkInterceptors);
        this.eventListenerFactory = builder.eventListenerFactory;
        this.proxySelector = builder.proxySelector;
        this.cookieJar = builder.cookieJar;
        this.cache = builder.cache;
        this.internalCache = builder.internalCache;
        this.socketFactory = builder.socketFactory;
        Iterator<ConnectionSpec> it = this.connectionSpecs.iterator();
        boolean z = false;
        while (it.hasNext()) {
            z = z || it.next().isTls();
        }
        if (builder.sslSocketFactory == null && z) {
            X509TrustManager x509TrustManagerSystemDefaultTrustManager = systemDefaultTrustManager();
            this.sslSocketFactory = systemDefaultSslSocketFactory(x509TrustManagerSystemDefaultTrustManager);
            this.certificateChainCleaner = CertificateChainCleaner.get(x509TrustManagerSystemDefaultTrustManager);
        } else {
            this.sslSocketFactory = builder.sslSocketFactory;
            this.certificateChainCleaner = builder.certificateChainCleaner;
        }
        this.hostnameVerifier = builder.hostnameVerifier;
        this.certificatePinner = builder.certificatePinner.withCertificateChainCleaner(this.certificateChainCleaner);
        this.proxyAuthenticator = builder.proxyAuthenticator;
        this.authenticator = builder.authenticator;
        this.connectionPool = builder.connectionPool;
        this.dns = builder.dns;
        this.followSslRedirects = builder.followSslRedirects;
        this.followRedirects = builder.followRedirects;
        this.retryOnConnectionFailure = builder.retryOnConnectionFailure;
        this.connectTimeout = builder.connectTimeout;
        this.readTimeout = builder.readTimeout;
        this.writeTimeout = builder.writeTimeout;
        this.pingInterval = builder.pingInterval;
        if (this.interceptors.contains(null)) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{43, 19, 84, 10, 22, 93, 11, 18, 93, 20, 85, 81, 21, 18, 87, 20, 12, 20}, "ef8f64", true, true) + this.interceptors);
        }
        if (this.networkInterceptors.contains(null)) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{126, 19, 88, 84, 68, 13, 85, 18, 67, 87, 22, 8, 16, 15, 90, 76, 1, 17, 83, 3, 68, 76, 11, 17, 10, 70}, "0f48dc", 28695) + this.networkInterceptors);
        }
    }

    private SSLSocketFactory systemDefaultSslSocketFactory(X509TrustManager x509TrustManager) {
        try {
            SSLContext sSLContext = SSLContext.getInstance(NPStringFog.decode(new byte[]{53, 45, 96}, "aa363a", true, true));
            sSLContext.init(null, new TrustManager[]{x509TrustManager}, null);
            return sSLContext.getSocketFactory();
        } catch (GeneralSecurityException e) {
            throw Util.assertionError(NPStringFog.decode(new byte[]{120, 92, 20, 53, 74, 18, 66, 86, 89, 70, 103, 45, 101}, "634f3a", false, false), e);
        }
    }

    private X509TrustManager systemDefaultTrustManager() {
        try {
            TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
            trustManagerFactory.init((KeyStore) null);
            TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
            if (trustManagers.length == 1 && (trustManagers[0] instanceof X509TrustManager)) {
                return (X509TrustManager) trustManagers[0];
            }
            throw new IllegalStateException(NPStringFog.decode(new byte[]{101, 87, 6, 72, 64, 84, 83, 77, 6, 84, 16, 85, 85, 95, 2, 69, 92, 69, 16, 77, 17, 69, 67, 69, 16, 84, 2, 94, 81, 86, 85, 75, 16, 10}, "09c001", true, true) + Arrays.toString(trustManagers));
        } catch (GeneralSecurityException e) {
            throw Util.assertionError(NPStringFog.decode(new byte[]{120, 9, 67, 100, 79, 67, 66, 3, 14, 23, 98, 124, 101}, "6fc760", -1330185705L), e);
        }
    }

    public Authenticator authenticator() {
        return this.authenticator;
    }

    public Cache cache() {
        return this.cache;
    }

    public CertificatePinner certificatePinner() {
        return this.certificatePinner;
    }

    public int connectTimeoutMillis() {
        return this.connectTimeout;
    }

    public ConnectionPool connectionPool() {
        return this.connectionPool;
    }

    public List<ConnectionSpec> connectionSpecs() {
        return this.connectionSpecs;
    }

    public CookieJar cookieJar() {
        return this.cookieJar;
    }

    public Dispatcher dispatcher() {
        return this.dispatcher;
    }

    public Dns dns() {
        return this.dns;
    }

    public EventListener.Factory eventListenerFactory() {
        return this.eventListenerFactory;
    }

    public boolean followRedirects() {
        return this.followRedirects;
    }

    public boolean followSslRedirects() {
        return this.followSslRedirects;
    }

    public HostnameVerifier hostnameVerifier() {
        return this.hostnameVerifier;
    }

    public List<Interceptor> interceptors() {
        return this.interceptors;
    }

    InternalCache internalCache() {
        return this.cache != null ? this.cache.internalCache : this.internalCache;
    }

    public List<Interceptor> networkInterceptors() {
        return this.networkInterceptors;
    }

    public Builder newBuilder() {
        return new Builder(this);
    }

    @Override // okhttp3.Call.Factory
    public Call newCall(Request request) {
        return RealCall.newRealCall(this, request, false);
    }

    @Override // okhttp3.WebSocket.Factory
    public WebSocket newWebSocket(Request request, WebSocketListener webSocketListener) {
        RealWebSocket realWebSocket = new RealWebSocket(request, webSocketListener, new Random());
        realWebSocket.connect(this);
        return realWebSocket;
    }

    public int pingIntervalMillis() {
        return this.pingInterval;
    }

    public List<Protocol> protocols() {
        return this.protocols;
    }

    public Proxy proxy() {
        return this.proxy;
    }

    public Authenticator proxyAuthenticator() {
        return this.proxyAuthenticator;
    }

    public ProxySelector proxySelector() {
        return this.proxySelector;
    }

    public int readTimeoutMillis() {
        return this.readTimeout;
    }

    public boolean retryOnConnectionFailure() {
        return this.retryOnConnectionFailure;
    }

    public SocketFactory socketFactory() {
        return this.socketFactory;
    }

    public SSLSocketFactory sslSocketFactory() {
        return this.sslSocketFactory;
    }

    public int writeTimeoutMillis() {
        return this.writeTimeout;
    }
}
