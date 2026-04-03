package org.apache.http.conn.params;

import java.net.InetAddress;
import n.NPStringFog;
import org.apache.http.HttpHost;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.params.HttpAbstractParamBean;
import org.apache.http.params.HttpParams;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class ConnRouteParamBean extends HttpAbstractParamBean {
    public ConnRouteParamBean(HttpParams httpParams) {
        super((HttpParams) null);
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 67, 19, 86, 21}, "f7f44c", -2.78364686E8d));
    }

    public void setDefaultProxy(HttpHost httpHost) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{97, 18, 22, 4, 71}, "2fcffc", -1.410848E9f));
    }

    public void setForcedRoute(HttpRoute httpRoute) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 65, 69, 82, 19}, "f50023", true, false));
    }

    public void setLocalAddress(InetAddress inetAddress) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 70, 23, 7, 68}, "42bee7", -1.96944832E8d));
    }
}
