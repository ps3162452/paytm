package org.apache.http.conn.params;

import java.util.Map;
import n.NPStringFog;
import org.apache.http.conn.routing.HttpRoute;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class ConnPerRouteBean implements ConnPerRoute {
    public static final int DEFAULT_MAX_CONNECTIONS_PER_ROUTE = 2;

    public ConnPerRouteBean() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 16, 70, 80, 18}, "5d3230", 1.819876079E9d));
    }

    public ConnPerRouteBean(int i) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{97, 77, 69, 86, 24}, "290499", 3.4214804E7f));
    }

    public int getDefaultMax() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 22, 70, 87, 25}, "4b358b", 52093015L));
    }

    @Override // org.apache.http.conn.params.ConnPerRoute
    public int getMaxForRoute(HttpRoute httpRoute) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 66, 68, 7, 25}, "c61e82", false, true));
    }

    public void setDefaultMaxPerRoute(int i) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 66, 66, 83, 64}, "9671a4", false, true));
    }

    public void setMaxForRoute(HttpRoute httpRoute, int i) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 70, 17, 7, 71}, "92def7", false, true));
    }

    public void setMaxForRoutes(Map<HttpRoute, Integer> map) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 65, 22, 86, 19}, "45c42d", false, true));
    }
}
