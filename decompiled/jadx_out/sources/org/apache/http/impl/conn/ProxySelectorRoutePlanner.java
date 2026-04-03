package org.apache.http.impl.conn;

import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.ProxySelector;
import java.util.List;
import n.NPStringFog;
import org.apache.http.HttpException;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.conn.routing.HttpRoutePlanner;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.protocol.HttpContext;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class ProxySelectorRoutePlanner implements HttpRoutePlanner {
    protected ProxySelector proxySelector;
    protected SchemeRegistry schemeRegistry;

    public ProxySelectorRoutePlanner(SchemeRegistry schemeRegistry, ProxySelector proxySelector) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 22, 17, 83, 23}, "4bd166", true, false));
    }

    protected Proxy chooseProxy(List<Proxy> list, HttpHost httpHost, HttpRequest httpRequest, HttpContext httpContext) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 17, 20, 81, 64}, "eea3a9", 11819));
    }

    protected HttpHost determineProxy(HttpHost httpHost, HttpRequest httpRequest, HttpContext httpContext) throws HttpException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 67, 22, 80, 25}, "b7c28f", 1.846272789E9d));
    }

    @Override // org.apache.http.conn.routing.HttpRoutePlanner
    public HttpRoute determineRoute(HttpHost httpHost, HttpRequest httpRequest, HttpContext httpContext) throws HttpException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 17, 68, 87, 17}, "5e150c", true, true));
    }

    protected String getHost(InetSocketAddress inetSocketAddress) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 67, 76, 90, 20}, "97985c", 11338));
    }

    public ProxySelector getProxySelector() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 76, 70, 3, 64}, "183aac", -1654284115L));
    }

    public void setProxySelector(ProxySelector proxySelector) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 67, 64, 3, 23}, "175a6a", false));
    }
}
