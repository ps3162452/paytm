package org.apache.http.impl.client;

import n.NPStringFog;
import org.apache.http.HttpResponse;
import org.apache.http.conn.ConnectionKeepAliveStrategy;
import org.apache.http.protocol.HttpContext;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class DefaultConnectionKeepAliveStrategy implements ConnectionKeepAliveStrategy {
    public DefaultConnectionKeepAliveStrategy() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 70, 17, 86, 23}, "f2d463", false, true));
    }

    @Override // org.apache.http.conn.ConnectionKeepAliveStrategy
    public long getKeepAliveDuration(HttpResponse httpResponse, HttpContext httpContext) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 18, 66, 83, 17}, "7f7109", true));
    }
}
