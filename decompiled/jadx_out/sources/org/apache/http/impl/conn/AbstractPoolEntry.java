package org.apache.http.impl.conn;

import java.io.IOException;
import n.NPStringFog;
import org.apache.http.HttpHost;
import org.apache.http.conn.ClientConnectionOperator;
import org.apache.http.conn.OperatedClientConnection;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.conn.routing.RouteTracker;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.HttpContext;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public abstract class AbstractPoolEntry {
    protected final ClientConnectionOperator connOperator;
    protected final OperatedClientConnection connection;
    protected volatile HttpRoute route;
    protected volatile Object state;
    protected volatile RouteTracker tracker;

    protected AbstractPoolEntry(ClientConnectionOperator clientConnectionOperator, HttpRoute httpRoute) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 21, 19, 91, 25}, "eaf982", false));
    }

    public Object getState() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 67, 65, 83, 66}, "f741c5", 328741863L));
    }

    public void layerProtocol(HttpContext httpContext, HttpParams httpParams) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 21, 19, 1, 69}, "1afcdf", 25835));
    }

    public void open(HttpRoute httpRoute, HttpContext httpContext, HttpParams httpParams) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 76, 70, 4, 18}, "083f35", -2.2306526E7f));
    }

    public void setState(Object obj) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 77, 70, 7, 21}, "693e4e", 7.84797798E8d));
    }

    protected void shutdownEntry() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 69, 64, 7, 17}, "615e05", 5.36362271E8d));
    }

    public void tunnelProxy(HttpHost httpHost, boolean z, HttpParams httpParams) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 17, 64, 84, 16}, "ae5612", 1.2093386E9f));
    }

    public void tunnelTarget(boolean z, HttpParams httpParams) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 22, 66, 3, 16}, "ab7a14", false, true));
    }
}
