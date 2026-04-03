package org.apache.http.impl.client;

import n.NPStringFog;
import org.apache.http.ConnectionReuseStrategy;
import org.apache.http.auth.AuthSchemeRegistry;
import org.apache.http.client.AuthenticationHandler;
import org.apache.http.client.CookieStore;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.client.RedirectHandler;
import org.apache.http.client.UserTokenHandler;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.ConnectionKeepAliveStrategy;
import org.apache.http.conn.routing.HttpRoutePlanner;
import org.apache.http.cookie.CookieSpecRegistry;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.BasicHttpProcessor;
import org.apache.http.protocol.HttpContext;
import org.apache.http.protocol.HttpRequestExecutor;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class DefaultHttpClient extends AbstractHttpClient {
    public DefaultHttpClient() {
        super((ClientConnectionManager) null, (HttpParams) null);
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 16, 64, 0, 21}, "fd5b41", -19046));
    }

    public DefaultHttpClient(ClientConnectionManager clientConnectionManager, HttpParams httpParams) {
        super((ClientConnectionManager) null, (HttpParams) null);
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 77, 16, 3, 68}, "49eae1", 1167672757L));
    }

    public DefaultHttpClient(HttpParams httpParams) {
        super((ClientConnectionManager) null, (HttpParams) null);
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 64, 77, 7, 67}, "b48ebe", 1043823625L));
    }

    @Override // org.apache.http.impl.client.AbstractHttpClient
    protected AuthSchemeRegistry createAuthSchemeRegistry() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 23, 76, 80, 17}, "fc920c", -1.5677491E9f));
    }

    @Override // org.apache.http.impl.client.AbstractHttpClient
    protected ClientConnectionManager createClientConnectionManager() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 76, 66, 83, 16}, "687115", 1.899603373E9d));
    }

    @Override // org.apache.http.impl.client.AbstractHttpClient
    protected ConnectionKeepAliveStrategy createConnectionKeepAliveStrategy() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 67, 22, 81, 66}, "77c3c0", false));
    }

    @Override // org.apache.http.impl.client.AbstractHttpClient
    protected ConnectionReuseStrategy createConnectionReuseStrategy() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 70, 77, 81, 18}, "128338", 1.373888051E9d));
    }

    @Override // org.apache.http.impl.client.AbstractHttpClient
    protected CookieSpecRegistry createCookieSpecRegistry() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 22, 70, 7, 18}, "6b3e31", 1.0405855E9f));
    }

    @Override // org.apache.http.impl.client.AbstractHttpClient
    protected CookieStore createCookieStore() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{97, 77, 69, 80, 18}, "290237", 15845));
    }

    @Override // org.apache.http.impl.client.AbstractHttpClient
    protected CredentialsProvider createCredentialsProvider() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 70, 23, 1, 16}, "a2bc15", -2.97466205E8d));
    }

    @Override // org.apache.http.impl.client.AbstractHttpClient
    protected HttpContext createHttpContext() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 67, 19, 85, 20}, "77f75d", -29336));
    }

    @Override // org.apache.http.impl.client.AbstractHttpClient
    protected HttpParams createHttpParams() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{97, 22, 20, 81, 16}, "2ba319", -826136886L));
    }

    @Override // org.apache.http.impl.client.AbstractHttpClient
    protected BasicHttpProcessor createHttpProcessor() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 17, 65, 84, 24}, "be4694", false));
    }

    @Override // org.apache.http.impl.client.AbstractHttpClient
    protected HttpRequestRetryHandler createHttpRequestRetryHandler() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 70, 70, 86, 64}, "5234af", false));
    }

    @Override // org.apache.http.impl.client.AbstractHttpClient
    protected HttpRoutePlanner createHttpRoutePlanner() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 21, 17, 82, 71}, "ead0ff", 4.907976E7f));
    }

    @Override // org.apache.http.impl.client.AbstractHttpClient
    protected AuthenticationHandler createProxyAuthenticationHandler() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 71, 23, 81, 22}, "f3b377", false));
    }

    @Override // org.apache.http.impl.client.AbstractHttpClient
    protected RedirectHandler createRedirectHandler() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 17, 64, 91, 19}, "de5924", -17109));
    }

    @Override // org.apache.http.impl.client.AbstractHttpClient
    protected HttpRequestExecutor createRequestExecutor() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 16, 70, 0, 24}, "7d3b93", -889751667L));
    }

    @Override // org.apache.http.impl.client.AbstractHttpClient
    protected AuthenticationHandler createTargetAuthenticationHandler() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 64, 76, 91, 23}, "649960", -1289730307L));
    }

    @Override // org.apache.http.impl.client.AbstractHttpClient
    protected UserTokenHandler createUserTokenHandler() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 18, 23, 83, 64}, "cfb1a8", false, false));
    }
}
