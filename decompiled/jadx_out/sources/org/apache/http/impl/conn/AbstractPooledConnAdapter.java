package org.apache.http.impl.conn;

import java.io.IOException;
import n.NPStringFog;
import org.apache.http.HttpHost;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.OperatedClientConnection;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.HttpContext;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public abstract class AbstractPooledConnAdapter extends AbstractClientConnAdapter {
    protected volatile AbstractPoolEntry poolEntry;

    protected AbstractPooledConnAdapter(ClientConnectionManager clientConnectionManager, AbstractPoolEntry abstractPoolEntry) {
        super((ClientConnectionManager) null, (OperatedClientConnection) null);
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 65, 68, 84, 71}, "5516f9", 3.99480957E8d));
    }

    protected final void assertAttached() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 22, 23, 84, 19}, "0bb628", true, false));
    }

    @Override // org.apache.http.HttpConnection
    public void close() throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 16, 69, 83, 22}, "ed0175", -252514456L));
    }

    @Override // org.apache.http.impl.conn.AbstractClientConnAdapter
    protected void detach() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 21, 22, 83, 68}, "fac1e0", -1.306346414E9d));
    }

    @Override // org.apache.http.conn.ManagedClientConnection
    public HttpRoute getRoute() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 66, 65, 80, 22}, "46427b", 2128564930L));
    }

    @Override // org.apache.http.conn.ManagedClientConnection
    public Object getState() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 69, 17, 82, 20}, "81d054", -1.450685918E9d));
    }

    @Override // org.apache.http.conn.ManagedClientConnection
    public void layerProtocol(HttpContext httpContext, HttpParams httpParams) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 65, 66, 4, 71}, "657ff3", -5.24706337E8d));
    }

    @Override // org.apache.http.conn.ManagedClientConnection
    public void open(HttpRoute httpRoute, HttpContext httpContext, HttpParams httpParams) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 66, 16, 1, 66}, "e6ecc8", true));
    }

    @Override // org.apache.http.conn.ManagedClientConnection
    public void setState(Object obj) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 69, 66, 90, 16}, "41781a", true));
    }

    @Override // org.apache.http.HttpConnection
    public void shutdown() throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 64, 66, 1, 71}, "647cff", -569403069L));
    }

    @Override // org.apache.http.conn.ManagedClientConnection
    public void tunnelProxy(HttpHost httpHost, boolean z, HttpParams httpParams) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{97, 66, 77, 90, 20}, "268853", false, true));
    }

    @Override // org.apache.http.conn.ManagedClientConnection
    public void tunnelTarget(boolean z, HttpParams httpParams) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 70, 77, 87, 17}, "a2850d", 1.269491E9f));
    }
}
