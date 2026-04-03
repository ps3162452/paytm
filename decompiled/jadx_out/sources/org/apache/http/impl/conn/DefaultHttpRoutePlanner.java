package org.apache.http.impl.conn;

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
public class DefaultHttpRoutePlanner implements HttpRoutePlanner {
    protected SchemeRegistry schemeRegistry;

    public DefaultHttpRoutePlanner(SchemeRegistry schemeRegistry) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 65, 69, 3, 69}, "550ada", 2052));
    }

    @Override // org.apache.http.conn.routing.HttpRoutePlanner
    public HttpRoute determineRoute(HttpHost httpHost, HttpRequest httpRequest, HttpContext httpContext) throws HttpException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 67, 69, 85, 25}, "470782", 28128));
    }
}
