package okhttp3.internal.connection;

import androidx.core.location.LocationRequestCompat;
import java.io.IOException;
import java.lang.ref.Reference;
import java.net.ConnectException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.Socket;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.UnknownServiceException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocket;
import n.NPStringFog;
import okhttp3.Address;
import okhttp3.Call;
import okhttp3.CertificatePinner;
import okhttp3.Connection;
import okhttp3.ConnectionPool;
import okhttp3.ConnectionSpec;
import okhttp3.EventListener;
import okhttp3.Handshake;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Route;
import okhttp3.internal.Internal;
import okhttp3.internal.Util;
import okhttp3.internal.Version;
import okhttp3.internal.http.HttpCodec;
import okhttp3.internal.http1.Http1Codec;
import okhttp3.internal.http2.ErrorCode;
import okhttp3.internal.http2.Http2Codec;
import okhttp3.internal.http2.Http2Connection;
import okhttp3.internal.http2.Http2Stream;
import okhttp3.internal.platform.Platform;
import okhttp3.internal.tls.OkHostnameVerifier;
import okhttp3.internal.ws.RealWebSocket;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.Okio;

/* JADX INFO: loaded from: classes62.dex */
public final class RealConnection extends Http2Connection.Listener implements Connection {
    private static final int MAX_TUNNEL_ATTEMPTS = 21;
    private static final String NPE_THROW_WITH_NULL = NPStringFog.decode(new byte[]{67, 81, 65, 87, 17, 19, 64, 80, 71, 80, 70, 93, 66, 85, 95, 24, 3, 75, 84, 92, 67, 76, 15, 92, 89}, "7938f3", -2.1135085E8f);
    private final ConnectionPool connectionPool;
    private Handshake handshake;
    private Http2Connection http2Connection;
    public boolean noNewStreams;
    private Protocol protocol;
    private Socket rawSocket;
    private final Route route;
    private BufferedSink sink;
    private Socket socket;
    private BufferedSource source;
    public int successCount;
    public int allocationLimit = 1;
    public final List<Reference<StreamAllocation>> allocations = new ArrayList();
    public long idleAtNanos = LocationRequestCompat.PASSIVE_INTERVAL;

    public RealConnection(ConnectionPool connectionPool, Route route) {
        this.connectionPool = connectionPool;
        this.route = route;
    }

    private void connectSocket(int i, int i2, Call call, EventListener eventListener) throws IOException {
        Proxy proxy = this.route.proxy();
        this.rawSocket = (proxy.type() == Proxy.Type.DIRECT || proxy.type() == Proxy.Type.HTTP) ? this.route.address().socketFactory().createSocket() : new Socket(proxy);
        eventListener.connectStart(call, this.route.socketAddress(), proxy);
        this.rawSocket.setSoTimeout(i2);
        try {
            Platform.get().connectSocket(this.rawSocket, this.route.socketAddress(), i);
            try {
                this.source = Okio.buffer(Okio.source(this.rawSocket));
                this.sink = Okio.buffer(Okio.sink(this.rawSocket));
            } catch (NullPointerException e) {
                if (NPE_THROW_WITH_NULL.equals(e.getMessage())) {
                    throw new IOException(e);
                }
            }
        } catch (ConnectException e2) {
            ConnectException connectException = new ConnectException(NPStringFog.decode(new byte[]{39, 3, 13, 84, 1, 6, 65, 22, 11, 24, 7, 13, 15, 12, 1, 91, 16, 66, 21, 13, 68}, "abd8db", false) + this.route.socketAddress());
            connectException.initCause(e2);
            throw connectException;
        }
    }

    private void connectTls(ConnectionSpecSelector connectionSpecSelector) throws Throwable {
        SSLSocket sSLSocket;
        SSLSocket sSLSocket2 = null;
        Address address = this.route.address();
        try {
            try {
                sSLSocket = (SSLSocket) address.sslSocketFactory().createSocket(this.rawSocket, address.url().host(), address.url().port(), true);
            } catch (Throwable th) {
                th = th;
            }
        } catch (AssertionError e) {
            e = e;
        }
        try {
            ConnectionSpec connectionSpecConfigureSecureSocket = connectionSpecSelector.configureSecureSocket(sSLSocket);
            if (connectionSpecConfigureSecureSocket.supportsTlsExtensions()) {
                Platform.get().configureTlsExtensions(sSLSocket, address.url().host(), address.protocols());
            }
            sSLSocket.startHandshake();
            Handshake handshake = Handshake.get(sSLSocket.getSession());
            if (!address.hostnameVerifier().verify(address.url().host(), sSLSocket.getSession())) {
                X509Certificate x509Certificate = (X509Certificate) handshake.peerCertificates().get(0);
                throw new SSLPeerUnverifiedException(NPStringFog.decode(new byte[]{121, 88, 67, 21, 94, 85, 92, 82, 16}, "170a04", 4604) + address.url().host() + NPStringFog.decode(new byte[]{68, 90, 95, 68, 18, 18, 1, 70, 89, 86, 91, 1, 0, 14, 58, 16, 18, 68, 68, 87, 85, 66, 70, 13, 2, 93, 83, 81, 70, 1, 94, 20}, "d4002d", false, true) + CertificatePinner.pin(x509Certificate) + NPStringFog.decode(new byte[]{51, 16, 68, 23, 17, 118, 119, 10, 68}, "90d712", true, false) + x509Certificate.getSubjectDN().getName() + NPStringFog.decode(new byte[]{58, 65, 68, 18, 17, 68, 69, 3, 14, 87, 82, 67, 113, 13, 16, 124, 80, 90, 85, 18, 94, 18}, "0ad217", -1580740288L) + OkHostnameVerifier.allSubjectAltNames(x509Certificate));
            }
            address.certificatePinner().check(address.url().host(), handshake.peerCertificates());
            String selectedProtocol = connectionSpecConfigureSecureSocket.supportsTlsExtensions() ? Platform.get().getSelectedProtocol(sSLSocket) : null;
            this.socket = sSLSocket;
            this.source = Okio.buffer(Okio.source(this.socket));
            this.sink = Okio.buffer(Okio.sink(this.socket));
            this.handshake = handshake;
            this.protocol = selectedProtocol != null ? Protocol.get(selectedProtocol) : Protocol.HTTP_1_1;
            if (sSLSocket != null) {
                Platform.get().afterHandshake(sSLSocket);
            }
        } catch (AssertionError e2) {
            e = e2;
            if (!Util.isAndroidGetsocknameError(e)) {
                throw e;
            }
            throw new IOException(e);
        } catch (Throwable th2) {
            sSLSocket2 = sSLSocket;
            th = th2;
            if (sSLSocket2 != null) {
                Platform.get().afterHandshake(sSLSocket2);
            }
            Util.closeQuietly((Socket) sSLSocket2);
            throw th;
        }
    }

    private void connectTunnel(int i, int i2, int i3, Call call, EventListener eventListener) throws IOException {
        Request requestCreateTunnelRequest = createTunnelRequest();
        HttpUrl httpUrlUrl = requestCreateTunnelRequest.url();
        for (int i4 = 0; i4 < 21; i4++) {
            connectSocket(i, i2, call, eventListener);
            requestCreateTunnelRequest = createTunnel(i2, i3, requestCreateTunnelRequest, httpUrlUrl);
            if (requestCreateTunnelRequest == null) {
                return;
            }
            Util.closeQuietly(this.rawSocket);
            this.rawSocket = null;
            this.sink = null;
            this.source = null;
            eventListener.connectEnd(call, this.route.socketAddress(), this.route.proxy(), null);
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Failed to find switch 'out' block (already processed)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.calcSwitchOut(SwitchRegionMaker.java:217)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.process(SwitchRegionMaker.java:68)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:112)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:104)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeMthRegion(RegionMaker.java:48)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:25)
        */
    private okhttp3.Request createTunnel(int r10, int r11, okhttp3.Request r12, okhttp3.HttpUrl r13) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 429
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.connection.RealConnection.createTunnel(int, int, okhttp3.Request, okhttp3.HttpUrl):okhttp3.Request");
    }

    private Request createTunnelRequest() {
        return new Request.Builder().url(this.route.address().url()).header(NPStringFog.decode(new byte[]{122, 93, 70, 71}, "225311", 2100845079L), Util.hostHeader(this.route.address().url(), true)).header(NPStringFog.decode(new byte[]{96, 69, 94, 76, 79, 76, 115, 88, 95, 90, 83, 2, 68, 94, 94, 90}, "07146a", false, false), NPStringFog.decode(new byte[]{126, 6, 84, 72, 24, 117, 89, 10, 71, 93}, "5c1854", 29196)).header(NPStringFog.decode(new byte[]{100, 65, 4, 68, 79, 113, 86, 87, 15, 66}, "12a6b0", 1.5914496E9f), Version.userAgent()).build();
    }

    private void establishProtocol(ConnectionSpecSelector connectionSpecSelector, Call call, EventListener eventListener) throws Throwable {
        if (this.route.address().sslSocketFactory() == null) {
            this.protocol = Protocol.HTTP_1_1;
            this.socket = this.rawSocket;
            return;
        }
        eventListener.secureConnectStart(call);
        connectTls(connectionSpecSelector);
        eventListener.secureConnectEnd(call, this.handshake);
        if (this.protocol == Protocol.HTTP_2) {
            this.socket.setSoTimeout(0);
            this.http2Connection = new Http2Connection.Builder(true).socket(this.socket, this.route.address().url().host(), this.source, this.sink).listener(this).build();
            this.http2Connection.start();
        }
    }

    public static RealConnection testConnection(ConnectionPool connectionPool, Route route, Socket socket, long j) {
        RealConnection realConnection = new RealConnection(connectionPool, route);
        realConnection.socket = socket;
        realConnection.idleAtNanos = j;
        return realConnection;
    }

    public void cancel() {
        Util.closeQuietly(this.rawSocket);
    }

    public void connect(int i, int i2, int i3, boolean z, Call call, EventListener eventListener) throws Throwable {
        RouteException routeException;
        if (this.protocol != null) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{86, 8, 17, 81, 85, 85, 78, 68, 0, 91, 90, 95, 82, 7, 23, 81, 80}, "7dc441", 1269580900L));
        }
        RouteException routeException2 = null;
        List<ConnectionSpec> listConnectionSpecs = this.route.address().connectionSpecs();
        ConnectionSpecSelector connectionSpecSelector = new ConnectionSpecSelector(listConnectionSpecs);
        if (this.route.address().sslSocketFactory() == null) {
            if (!listConnectionSpecs.contains(ConnectionSpec.CLEARTEXT)) {
                throw new RouteException(new UnknownServiceException(NPStringFog.decode(new byte[]{117, 120, 116, 112, 55, 49, 115, 108, 101, 17, 6, 10, 91, 89, 68, 95, 12, 6, 87, 64, 88, 94, 11, 69, 88, 91, 69, 17, 0, 11, 87, 86, 93, 84, 1, 69, 80, 91, 67, 17, 6, 9, 95, 81, 95, 69}, "6411ee", 1.8364768E9f)));
            }
            String strHost = this.route.address().url().host();
            if (!Platform.get().isCleartextTrafficPermitted(strHost)) {
                throw new RouteException(new UnknownServiceException(NPStringFog.decode(new byte[]{34, 116, 32, 115, 103, 55, 36, 96, 49, 18, 86, 12, 12, 85, 16, 92, 92, 0, 0, 76, 12, 93, 91, 67, 21, 87, 69}, "a8e25c", 6.32343508E8d) + strHost + NPStringFog.decode(new byte[]{25, 87, 88, 66, 68, 68, 92, 75, 90, 95, 16, 64, 92, 93, 23, 84, 29, 20, 87, 92, 67, 65, 11, 70, 82, 25, 68, 83, 7, 65, 75, 80, 67, 79, 68, 68, 86, 85, 94, 85, 29}, "9976d4", -30280)));
            }
        }
        while (true) {
            try {
                if (this.route.requiresTunnel()) {
                    connectTunnel(i, i2, i3, call, eventListener);
                    if (this.rawSocket != null) {
                        break;
                        break;
                    }
                    break;
                }
                connectSocket(i, i2, call, eventListener);
                establishProtocol(connectionSpecSelector, call, eventListener);
                eventListener.connectEnd(call, this.route.socketAddress(), this.route.proxy(), this.protocol);
                break;
            } catch (IOException e) {
                Util.closeQuietly(this.socket);
                Util.closeQuietly(this.rawSocket);
                this.socket = null;
                this.rawSocket = null;
                this.source = null;
                this.sink = null;
                this.handshake = null;
                this.protocol = null;
                this.http2Connection = null;
                eventListener.connectFailed(call, this.route.socketAddress(), this.route.proxy(), null, e);
                if (routeException2 == null) {
                    routeException = new RouteException(e);
                } else {
                    routeException2.addConnectException(e);
                    routeException = routeException2;
                }
                if (!z) {
                    throw routeException;
                }
                if (!connectionSpecSelector.connectionFailed(e)) {
                    throw routeException;
                }
                routeException2 = routeException;
            }
        }
        if (this.route.requiresTunnel() && this.rawSocket == null) {
            throw new RouteException(new ProtocolException(NPStringFog.decode(new byte[]{99, 95, 92, 17, 89, 84, 89, 73, 19, 69, 65, 91, 89, 85, 95, 17, 87, 90, 89, 94, 86, 82, 64, 92, 88, 94, 64, 17, 85, 65, 67, 85, 94, 65, 64, 80, 83, 10, 19, 3, 5}, "703145", false, true)));
        }
        if (this.http2Connection != null) {
            synchronized (this.connectionPool) {
                this.allocationLimit = this.http2Connection.maxConcurrentStreams();
            }
        }
    }

    @Override // okhttp3.Connection
    public Handshake handshake() {
        return this.handshake;
    }

    public boolean isEligible(Address address, @Nullable Route route) {
        if (this.allocations.size() >= this.allocationLimit || this.noNewStreams || !Internal.instance.equalsNonHost(this.route.address(), address)) {
            return false;
        }
        if (address.url().host().equals(route().address().url().host())) {
            return true;
        }
        if (this.http2Connection == null || route == null || route.proxy().type() != Proxy.Type.DIRECT || this.route.proxy().type() != Proxy.Type.DIRECT || !this.route.socketAddress().equals(route.socketAddress()) || route.address().hostnameVerifier() != OkHostnameVerifier.INSTANCE || !supportsUrl(address.url())) {
            return false;
        }
        try {
            address.certificatePinner().check(address.url().host(), handshake().peerCertificates());
            return true;
        } catch (SSLPeerUnverifiedException e) {
            return false;
        }
    }

    public boolean isHealthy(boolean z) {
        if (this.socket.isClosed() || this.socket.isInputShutdown() || this.socket.isOutputShutdown()) {
            return false;
        }
        if (this.http2Connection != null) {
            if (this.http2Connection.isShutdown()) {
                return false;
            }
        } else if (z) {
            try {
                int soTimeout = this.socket.getSoTimeout();
                try {
                    this.socket.setSoTimeout(1);
                    if (this.source.exhausted()) {
                        this.socket.setSoTimeout(soTimeout);
                        return false;
                    }
                    this.socket.setSoTimeout(soTimeout);
                    return true;
                } catch (Throwable th) {
                    this.socket.setSoTimeout(soTimeout);
                    throw th;
                }
            } catch (SocketTimeoutException e) {
                return true;
            } catch (IOException e2) {
                return false;
            }
        }
        return true;
    }

    public boolean isMultiplexed() {
        return this.http2Connection != null;
    }

    public HttpCodec newCodec(OkHttpClient okHttpClient, Interceptor.Chain chain, StreamAllocation streamAllocation) throws SocketException {
        if (this.http2Connection != null) {
            return new Http2Codec(okHttpClient, chain, streamAllocation, this.http2Connection);
        }
        this.socket.setSoTimeout(chain.readTimeoutMillis());
        this.source.timeout().timeout(chain.readTimeoutMillis(), TimeUnit.MILLISECONDS);
        this.sink.timeout().timeout(chain.writeTimeoutMillis(), TimeUnit.MILLISECONDS);
        return new Http1Codec(okHttpClient, streamAllocation, this.source, this.sink);
    }

    public RealWebSocket.Streams newWebSocketStreams(StreamAllocation streamAllocation) {
        return new RealWebSocket.Streams(this, true, this.source, this.sink, streamAllocation) { // from class: okhttp3.internal.connection.RealConnection.1
            final RealConnection this$0;
            final StreamAllocation val$streamAllocation;

            {
                this.this$0 = this;
                this.val$streamAllocation = streamAllocation;
            }

            @Override // java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                this.val$streamAllocation.streamFinished(true, this.val$streamAllocation.codec(), -1L, null);
            }
        };
    }

    @Override // okhttp3.internal.http2.Http2Connection.Listener
    public void onSettings(Http2Connection http2Connection) {
        synchronized (this.connectionPool) {
            this.allocationLimit = http2Connection.maxConcurrentStreams();
        }
    }

    @Override // okhttp3.internal.http2.Http2Connection.Listener
    public void onStream(Http2Stream http2Stream) throws IOException {
        http2Stream.close(ErrorCode.REFUSED_STREAM);
    }

    @Override // okhttp3.Connection
    public Protocol protocol() {
        return this.protocol;
    }

    @Override // okhttp3.Connection
    public Route route() {
        return this.route;
    }

    @Override // okhttp3.Connection
    public Socket socket() {
        return this.socket;
    }

    public boolean supportsUrl(HttpUrl httpUrl) {
        if (httpUrl.port() != this.route.address().url().port()) {
            return false;
        }
        if (httpUrl.host().equals(this.route.address().url().host())) {
            return true;
        }
        return this.handshake != null && OkHostnameVerifier.INSTANCE.verify(httpUrl.host(), (X509Certificate) this.handshake.peerCertificates().get(0));
    }

    public String toString() {
        return NPStringFog.decode(new byte[]{112, 13, 92, 12, 86, 87, 71, 11, 93, 12, 72}, "3b2b34", false) + this.route.address().url().host() + NPStringFog.decode(new byte[]{14}, "418a7f", -1.595352626E9d) + this.route.address().url().port() + NPStringFog.decode(new byte[]{20, 24, 64, 19, 86, 27, 65, 5}, "880a9c", 1.4129023E9f) + this.route.proxy() + NPStringFog.decode(new byte[]{66, 92, 95, 16, 23, 37, 6, 80, 66, 6, 16, 23, 95}, "b40ccd", true, false) + this.route.socketAddress() + NPStringFog.decode(new byte[]{68, 82, 89, 69, 95, 7, 22, 98, 69, 92, 67, 7, 89}, "d1057b", true) + (this.handshake != null ? this.handshake.cipherSuite() : NPStringFog.decode(new byte[]{8, 12, 15, 80}, "fca5e3", -1.2783963E9f)) + NPStringFog.decode(new byte[]{24, 73, 19, 12, 68, 92, 91, 86, 13, 94}, "89ac03", -1.6702428E9f) + this.protocol + '}';
    }
}
