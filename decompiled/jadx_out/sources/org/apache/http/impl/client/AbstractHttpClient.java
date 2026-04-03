package org.apache.http.impl.client;

import java.io.IOException;
import n.NPStringFog;
import org.apache.http.ConnectionReuseStrategy;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseInterceptor;
import org.apache.http.auth.AuthSchemeRegistry;
import org.apache.http.client.AuthenticationHandler;
import org.apache.http.client.CookieStore;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.client.HttpClient;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.client.RedirectHandler;
import org.apache.http.client.RequestDirector;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.UserTokenHandler;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.ConnectionKeepAliveStrategy;
import org.apache.http.conn.routing.HttpRoutePlanner;
import org.apache.http.cookie.CookieSpecRegistry;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.BasicHttpProcessor;
import org.apache.http.protocol.HttpContext;
import org.apache.http.protocol.HttpProcessor;
import org.apache.http.protocol.HttpRequestExecutor;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public abstract class AbstractHttpClient implements HttpClient {
    protected AbstractHttpClient(ClientConnectionManager clientConnectionManager, HttpParams httpParams) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 69, 76, 0, 17}, "f19b0c", -5.5091437E8f));
    }

    public void addRequestInterceptor(HttpRequestInterceptor httpRequestInterceptor) {
        synchronized (this) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{107, 23, 17, 80, 67}, "8cd2b0", 15752));
        }
    }

    public void addRequestInterceptor(HttpRequestInterceptor httpRequestInterceptor, int i) {
        synchronized (this) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{101, 18, 70, 81, 64}, "6f33ab", -6.39000863E8d));
        }
    }

    public void addResponseInterceptor(HttpResponseInterceptor httpResponseInterceptor) {
        synchronized (this) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{103, 68, 70, 80, 69}, "4032d6", 2.074104545E9d));
        }
    }

    public void addResponseInterceptor(HttpResponseInterceptor httpResponseInterceptor, int i) {
        synchronized (this) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{101, 66, 23, 1, 23}, "66bc67", -4751));
        }
    }

    public void clearRequestInterceptors() {
        synchronized (this) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{100, 76, 70, 7, 67}, "783eb0", 1.0288722E9f));
        }
    }

    public void clearResponseInterceptors() {
        synchronized (this) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{54, 18, 19, 0, 23}, "effb6e", false, false));
        }
    }

    protected abstract AuthSchemeRegistry createAuthSchemeRegistry();

    protected abstract ClientConnectionManager createClientConnectionManager();

    protected RequestDirector createClientRequestDirector(HttpRequestExecutor httpRequestExecutor, ClientConnectionManager clientConnectionManager, ConnectionReuseStrategy connectionReuseStrategy, ConnectionKeepAliveStrategy connectionKeepAliveStrategy, HttpRoutePlanner httpRoutePlanner, HttpProcessor httpProcessor, HttpRequestRetryHandler httpRequestRetryHandler, RedirectHandler redirectHandler, AuthenticationHandler authenticationHandler, AuthenticationHandler authenticationHandler2, UserTokenHandler userTokenHandler, HttpParams httpParams) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 70, 16, 83, 24}, "32e19c", false, false));
    }

    protected abstract ConnectionKeepAliveStrategy createConnectionKeepAliveStrategy();

    protected abstract ConnectionReuseStrategy createConnectionReuseStrategy();

    protected abstract CookieSpecRegistry createCookieSpecRegistry();

    protected abstract CookieStore createCookieStore();

    protected abstract CredentialsProvider createCredentialsProvider();

    protected abstract HttpContext createHttpContext();

    protected abstract HttpParams createHttpParams();

    protected abstract BasicHttpProcessor createHttpProcessor();

    protected abstract HttpRequestRetryHandler createHttpRequestRetryHandler();

    protected abstract HttpRoutePlanner createHttpRoutePlanner();

    protected abstract AuthenticationHandler createProxyAuthenticationHandler();

    protected abstract RedirectHandler createRedirectHandler();

    protected abstract HttpRequestExecutor createRequestExecutor();

    protected abstract AuthenticationHandler createTargetAuthenticationHandler();

    protected abstract UserTokenHandler createUserTokenHandler();

    protected HttpParams determineParams(HttpRequest httpRequest) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 76, 65, 7, 64}, "484eab", 1665093686L));
    }

    @Override // org.apache.http.client.HttpClient
    public <T> T execute(HttpHost httpHost, HttpRequest httpRequest, ResponseHandler<? extends T> responseHandler) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 77, 67, 80, 17}, "a96209", false, false));
    }

    @Override // org.apache.http.client.HttpClient
    public <T> T execute(HttpHost httpHost, HttpRequest httpRequest, ResponseHandler<? extends T> responseHandler, HttpContext httpContext) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 18, 17, 86, 23}, "8fd464", true, true));
    }

    @Override // org.apache.http.client.HttpClient
    public <T> T execute(HttpUriRequest httpUriRequest, ResponseHandler<? extends T> responseHandler) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 66, 22, 85, 68}, "86c7e3", 1200329529L));
    }

    @Override // org.apache.http.client.HttpClient
    public <T> T execute(HttpUriRequest httpUriRequest, ResponseHandler<? extends T> responseHandler, HttpContext httpContext) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 66, 66, 90, 64}, "f678a1", true, true));
    }

    @Override // org.apache.http.client.HttpClient
    public final HttpResponse execute(HttpHost httpHost, HttpRequest httpRequest) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 66, 22, 7, 67}, "16ceb2", -3.20716721E8d));
    }

    @Override // org.apache.http.client.HttpClient
    public final HttpResponse execute(HttpHost httpHost, HttpRequest httpRequest, HttpContext httpContext) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 65, 76, 84, 71}, "e596f5", 1.70545384E9d));
    }

    @Override // org.apache.http.client.HttpClient
    public final HttpResponse execute(HttpUriRequest httpUriRequest) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 76, 67, 85, 24}, "a86798", 493078735L));
    }

    @Override // org.apache.http.client.HttpClient
    public final HttpResponse execute(HttpUriRequest httpUriRequest, HttpContext httpContext) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 68, 70, 82, 19}, "f03023", 1636798925L));
    }

    public final AuthSchemeRegistry getAuthSchemes() {
        synchronized (this) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{98, 67, 22, 91, 16}, "17c918", 1.313401308E9d));
        }
    }

    public final ConnectionKeepAliveStrategy getConnectionKeepAliveStrategy() {
        synchronized (this) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{101, 65, 16, 81, 66}, "65e3c2", 1.2961524E9f));
        }
    }

    @Override // org.apache.http.client.HttpClient
    public final ClientConnectionManager getConnectionManager() {
        synchronized (this) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{99, 71, 65, 86, 21}, "034449", 711914668L));
        }
    }

    public final ConnectionReuseStrategy getConnectionReuseStrategy() {
        synchronized (this) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{101, 16, 22, 86, 64}, "6dc4ac", true, false));
        }
    }

    public final CookieSpecRegistry getCookieSpecs() {
        synchronized (this) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{100, 65, 68, 83, 21}, "75114b", -1006747566L));
        }
    }

    public final CookieStore getCookieStore() {
        synchronized (this) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{97, 23, 67, 86, 16}, "2c641b", false, true));
        }
    }

    public final CredentialsProvider getCredentialsProvider() {
        synchronized (this) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{55, 22, 71, 80, 67}, "db22bd", -1078698246L));
        }
    }

    protected final BasicHttpProcessor getHttpProcessor() {
        synchronized (this) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{55, 66, 22, 81, 21}, "d6c34c", true, false));
        }
    }

    public final HttpRequestRetryHandler getHttpRequestRetryHandler() {
        synchronized (this) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{103, 69, 16, 82, 19}, "41e025", -1.458658844E9d));
        }
    }

    @Override // org.apache.http.client.HttpClient
    public final HttpParams getParams() {
        synchronized (this) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{97, 66, 65, 4, 18}, "264f3b", -6228));
        }
    }

    public final AuthenticationHandler getProxyAuthenticationHandler() {
        synchronized (this) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{100, 64, 23, 0, 22}, "74bb74", 1.2137636E9f));
        }
    }

    public final RedirectHandler getRedirectHandler() {
        synchronized (this) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{54, 70, 17, 87, 66}, "e2d5c7", 1.351261263E9d));
        }
    }

    public final HttpRequestExecutor getRequestExecutor() {
        synchronized (this) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{106, 18, 19, 84, 21}, "9ff64e", 23547));
        }
    }

    public HttpRequestInterceptor getRequestInterceptor(int i) {
        synchronized (this) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{101, 66, 77, 6, 67}, "668db6", false, true));
        }
    }

    public int getRequestInterceptorCount() {
        synchronized (this) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{100, 70, 69, 91, 64}, "7209ad", -392459529L));
        }
    }

    public HttpResponseInterceptor getResponseInterceptor(int i) {
        synchronized (this) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{106, 68, 71, 91, 71}, "9029fa", -2109275236L));
        }
    }

    public int getResponseInterceptorCount() {
        synchronized (this) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{50, 68, 66, 90, 66}, "a078ce", 1265196235L));
        }
    }

    public final HttpRoutePlanner getRoutePlanner() {
        synchronized (this) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{54, 22, 68, 0, 64}, "eb1bad", 1.030388332E9d));
        }
    }

    public final AuthenticationHandler getTargetAuthenticationHandler() {
        synchronized (this) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{97, 70, 20, 90, 69}, "22a8d8", 434177136L));
        }
    }

    public final UserTokenHandler getUserTokenHandler() {
        synchronized (this) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{49, 66, 76, 87, 20}, "b69550", -22332));
        }
    }

    public void removeRequestInterceptorByClass(Class<? extends HttpRequestInterceptor> cls) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 66, 22, 85, 64}, "66c7ab", false, true));
    }

    public void removeResponseInterceptorByClass(Class<? extends HttpResponseInterceptor> cls) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 18, 66, 0, 64}, "bf7ba2", -29079));
    }

    public void setAuthSchemes(AuthSchemeRegistry authSchemeRegistry) {
        synchronized (this) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{102, 71, 19, 91, 17}, "53f906", 3.70261596E8d));
        }
    }

    public void setCookieSpecs(CookieSpecRegistry cookieSpecRegistry) {
        synchronized (this) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{99, 65, 66, 1, 22}, "057c7a", 1534328097L));
        }
    }

    public void setCookieStore(CookieStore cookieStore) {
        synchronized (this) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{96, 17, 71, 86, 20}, "3e245f", true, false));
        }
    }

    public void setCredentialsProvider(CredentialsProvider credentialsProvider) {
        synchronized (this) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{98, 16, 64, 80, 64}, "1d52a2", -10952));
        }
    }

    public void setHttpRequestRetryHandler(HttpRequestRetryHandler httpRequestRetryHandler) {
        synchronized (this) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{103, 23, 66, 85, 22}, "4c7776", -24268));
        }
    }

    public void setKeepAliveStrategy(ConnectionKeepAliveStrategy connectionKeepAliveStrategy) {
        synchronized (this) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{107, 71, 71, 0, 64}, "832ba8", -1250965831L));
        }
    }

    public void setParams(HttpParams httpParams) {
        synchronized (this) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{102, 16, 64, 0, 17}, "5d5b05", -2.128724573E9d));
        }
    }

    public void setProxyAuthenticationHandler(AuthenticationHandler authenticationHandler) {
        synchronized (this) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{98, 76, 23, 90, 17}, "18b800", false));
        }
    }

    public void setRedirectHandler(RedirectHandler redirectHandler) {
        synchronized (this) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{55, 71, 71, 81, 18}, "d32333", -1.2404544E9f));
        }
    }

    public void setReuseStrategy(ConnectionReuseStrategy connectionReuseStrategy) {
        synchronized (this) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{97, 23, 70, 80, 23}, "2c3262", 406774385L));
        }
    }

    public void setRoutePlanner(HttpRoutePlanner httpRoutePlanner) {
        synchronized (this) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{107, 17, 19, 85, 68}, "8ef7e0", 1920320463L));
        }
    }

    public void setTargetAuthenticationHandler(AuthenticationHandler authenticationHandler) {
        synchronized (this) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{100, 69, 69, 80, 66}, "7102c4", 6.270625E8f));
        }
    }

    public void setUserTokenHandler(UserTokenHandler userTokenHandler) {
        synchronized (this) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{50, 68, 17, 86, 22}, "a0d47c", true, false));
        }
    }
}
