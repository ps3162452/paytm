package org.apache.http.impl.client;

import java.io.IOException;
import n.NPStringFog;
import org.apache.http.ConnectionReuseStrategy;
import org.apache.http.HttpException;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.ProtocolException;
import org.apache.http.client.AuthenticationHandler;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.client.RedirectHandler;
import org.apache.http.client.RequestDirector;
import org.apache.http.client.UserTokenHandler;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.ConnectionKeepAliveStrategy;
import org.apache.http.conn.ManagedClientConnection;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.conn.routing.HttpRoutePlanner;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.HttpContext;
import org.apache.http.protocol.HttpProcessor;
import org.apache.http.protocol.HttpRequestExecutor;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class DefaultRequestDirector implements RequestDirector {
    protected final ClientConnectionManager connManager;
    protected final HttpProcessor httpProcessor;
    protected final ConnectionKeepAliveStrategy keepAliveStrategy;
    protected ManagedClientConnection managedConn;
    protected final HttpParams params;
    protected final RedirectHandler redirectHandler;
    protected final HttpRequestExecutor requestExec;
    protected final HttpRequestRetryHandler retryHandler;
    protected final ConnectionReuseStrategy reuseStrategy;
    protected final HttpRoutePlanner routePlanner;

    public DefaultRequestDirector(HttpRequestExecutor httpRequestExecutor, ClientConnectionManager clientConnectionManager, ConnectionReuseStrategy connectionReuseStrategy, ConnectionKeepAliveStrategy connectionKeepAliveStrategy, HttpRoutePlanner httpRoutePlanner, HttpProcessor httpProcessor, HttpRequestRetryHandler httpRequestRetryHandler, RedirectHandler redirectHandler, AuthenticationHandler authenticationHandler, AuthenticationHandler authenticationHandler2, UserTokenHandler userTokenHandler, HttpParams httpParams) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{97, 17, 71, 0, 25}, "2e2b8f", -4.1052278E8f));
    }

    protected HttpRequest createConnectRequest(HttpRoute httpRoute, HttpContext httpContext) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 22, 65, 85, 21}, "9b4743", true, false));
    }

    protected boolean createTunnelToProxy(HttpRoute httpRoute, int i, HttpContext httpContext) throws HttpException, IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{97, 67, 17, 6, 22}, "27dd7b", -12147));
    }

    protected boolean createTunnelToTarget(HttpRoute httpRoute, HttpContext httpContext) throws HttpException, IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 68, 68, 82, 67}, "a010bd", -3.89242686E8d));
    }

    protected HttpRoute determineRoute(HttpHost httpHost, HttpRequest httpRequest, HttpContext httpContext) throws HttpException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 71, 22, 85, 71}, "d3c7ff", -1612153075L));
    }

    protected void establishRoute(HttpRoute httpRoute, HttpContext httpContext) throws HttpException, IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 71, 77, 83, 67}, "c381b1", false, false));
    }

    @Override // org.apache.http.client.RequestDirector
    public HttpResponse execute(HttpHost httpHost, HttpRequest httpRequest, HttpContext httpContext) throws HttpException, IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 16, 76, 86, 20}, "ad945b", 1.5975284E9f));
    }

    protected RoutedRequest handleResponse(RoutedRequest routedRequest, HttpResponse httpResponse, HttpContext httpContext) throws HttpException, IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 64, 68, 3, 16}, "f41a1a", -87522945L));
    }

    protected void releaseConnection() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 69, 16, 80, 66}, "51e2ca", -1554985087L));
    }

    protected void rewriteRequestURI(RequestWrapper requestWrapper, HttpRoute httpRoute) throws ProtocolException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 68, 65, 0, 22}, "304b72", 2.7942294E8f));
    }
}
