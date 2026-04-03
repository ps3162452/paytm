package org.apache.http.conn.params;

import java.net.InetAddress;
import n.NPStringFog;
import org.apache.http.HttpHost;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.params.HttpParams;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class ConnRouteParams implements ConnRoutePNames {
    public static final HttpHost NO_HOST = null;
    public static final HttpRoute NO_ROUTE = null;

    ConnRouteParams() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 68, 68, 87, 66}, "e015c8", true));
    }

    public static HttpHost getDefaultProxy(HttpParams httpParams) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 65, 70, 81, 16}, "95331b", true));
    }

    public static HttpRoute getForcedRoute(HttpParams httpParams) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 65, 22, 90, 21}, "65c841", true, false));
    }

    public static InetAddress getLocalAddress(HttpParams httpParams) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 23, 76, 1, 22}, "9c9c7c", false, true));
    }

    public static void setDefaultProxy(HttpParams httpParams, HttpHost httpHost) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 69, 65, 3, 18}, "b14a3c", false, false));
    }

    public static void setForcedRoute(HttpParams httpParams, HttpRoute httpRoute) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 68, 67, 80, 67}, "3062ba", -9.98251632E8d));
    }

    public static void setLocalAddress(HttpParams httpParams, InetAddress inetAddress) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 76, 67, 82, 21}, "38604c", false, false));
    }
}
