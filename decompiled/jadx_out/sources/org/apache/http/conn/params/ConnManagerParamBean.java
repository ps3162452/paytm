package org.apache.http.conn.params;

import n.NPStringFog;
import org.apache.http.params.HttpAbstractParamBean;
import org.apache.http.params.HttpParams;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class ConnManagerParamBean extends HttpAbstractParamBean {
    public ConnManagerParamBean(HttpParams httpParams) {
        super((HttpParams) null);
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 66, 67, 90, 23}, "e6686f", -16689));
    }

    public void setConnectionsPerRoute(ConnPerRouteBean connPerRouteBean) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 76, 68, 83, 18}, "a81132", -2078475216L));
    }

    public void setMaxTotalConnections(int i) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 22, 16, 81, 18}, "6be335", true));
    }

    public void setTimeout(long j) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 67, 76, 91, 64}, "7799ab", 2.063592E8f));
    }
}
