package org.apache.http.impl.conn.tsccm;

import java.util.concurrent.TimeUnit;
import n.NPStringFog;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.ClientConnectionOperator;
import org.apache.http.conn.ClientConnectionRequest;
import org.apache.http.conn.ManagedClientConnection;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.params.HttpParams;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class ThreadSafeClientConnManager implements ClientConnectionManager {
    protected ClientConnectionOperator connOperator;
    protected final AbstractConnPool connectionPool;
    protected SchemeRegistry schemeRegistry;

    public ThreadSafeClientConnManager(HttpParams httpParams, SchemeRegistry schemeRegistry) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 65, 68, 81, 67}, "a513bf", -9.1023104E8f));
    }

    @Override // org.apache.http.conn.ClientConnectionManager
    public void closeExpiredConnections() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 69, 20, 82, 17}, "61a00f", 483556949L));
    }

    @Override // org.apache.http.conn.ClientConnectionManager
    public void closeIdleConnections(long j, TimeUnit timeUnit) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 23, 23, 91, 64}, "fcb9a5", -607413070L));
    }

    protected ClientConnectionOperator createConnectionOperator(SchemeRegistry schemeRegistry) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 18, 16, 0, 19}, "9feb21", -1.9432074E9f));
    }

    protected AbstractConnPool createConnectionPool(HttpParams httpParams) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 77, 19, 1, 18}, "a9fc34", 25373));
    }

    protected void finalize() throws Throwable {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 67, 16, 84, 17}, "37e606", 1.5502408E9f));
    }

    public int getConnectionsInPool() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 22, 20, 1, 69}, "dbacdf", true, true));
    }

    public int getConnectionsInPool(HttpRoute httpRoute) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 70, 77, 81, 19}, "828326", false, true));
    }

    @Override // org.apache.http.conn.ClientConnectionManager
    public SchemeRegistry getSchemeRegistry() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 76, 20, 7, 67}, "58aeb5", 31964));
    }

    @Override // org.apache.http.conn.ClientConnectionManager
    public void releaseConnection(ManagedClientConnection managedClientConnection, long j, TimeUnit timeUnit) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 65, 66, 87, 20}, "557551", false, false));
    }

    @Override // org.apache.http.conn.ClientConnectionManager
    public ClientConnectionRequest requestConnection(HttpRoute httpRoute, Object obj) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 17, 70, 82, 68}, "3e30e9", true));
    }

    @Override // org.apache.http.conn.ClientConnectionManager
    public void shutdown() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 68, 66, 84, 23}, "407664", -1.653864267E9d));
    }
}
