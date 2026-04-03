package org.apache.http.impl.conn;

import java.io.IOException;
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
public class SingleClientConnManager implements ClientConnectionManager {
    public static final String MISUSE_MESSAGE = NPStringFog.decode(new byte[]{121, 93, 70, 87, 91, 12, 84, 19, 69, 69, 82, 69, 95, 85, 16, 101, 94, 11, 87, 95, 85, 117, 91, 12, 85, 93, 68, 117, 88, 11, 94, 126, 81, 88, 86, 2, 85, 65, 10, 22, 84, 10, 94, 93, 85, 85, 67, 12, 95, 93, 16, 69, 67, 12, 92, 95, 16, 87, 91, 9, 95, 80, 81, 66, 82, 1, 30, 57, 125, 87, 92, 0, 16, 64, 69, 68, 82, 69, 68, 92, 16, 68, 82, 9, 85, 82, 67, 83, 23, 17, 88, 86, 16, 85, 88, 11, 94, 86, 83, 66, 94, 10, 94, 19, 82, 83, 81, 10, 66, 86, 16, 87, 91, 9, 95, 80, 81, 66, 94, 11, 87, 19, 81, 88, 88, 17, 88, 86, 66, 22, 88, 11, 85, 29}, "03067e", -29784);
    protected boolean alwaysShutDown;
    protected ClientConnectionOperator connOperator;
    protected long connectionExpiresTime;
    protected volatile boolean isShutDown;
    protected long lastReleaseTime;
    protected ConnAdapter managedConn;
    protected SchemeRegistry schemeRegistry;
    protected PoolEntry uniquePoolEntry;

    protected class ConnAdapter extends AbstractPooledConnAdapter {
        final SingleClientConnManager this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        protected ConnAdapter(SingleClientConnManager singleClientConnManager, PoolEntry poolEntry, HttpRoute httpRoute) {
            super((ClientConnectionManager) null, (AbstractPoolEntry) null);
            this.this$0 = singleClientConnManager;
            throw new RuntimeException(NPStringFog.decode(new byte[]{99, 16, 23, 81, 24}, "0db39c", true, false));
        }
    }

    protected class PoolEntry extends AbstractPoolEntry {
        final SingleClientConnManager this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        protected PoolEntry(SingleClientConnManager singleClientConnManager) {
            super((ClientConnectionOperator) null, (HttpRoute) null);
            this.this$0 = singleClientConnManager;
            throw new RuntimeException(NPStringFog.decode(new byte[]{106, 22, 20, 1, 68}, "9bace0", false));
        }

        protected void close() throws IOException {
            throw new RuntimeException(NPStringFog.decode(new byte[]{101, 77, 71, 84, 20}, "692651", 1605539501L));
        }

        protected void shutdown() throws IOException {
            throw new RuntimeException(NPStringFog.decode(new byte[]{54, 18, 20, 7, 16}, "efae17", 1604385631L));
        }
    }

    public SingleClientConnManager(HttpParams httpParams, SchemeRegistry schemeRegistry) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 16, 23, 7, 67}, "8dbebc", 1.681246545E9d));
    }

    protected final void assertStillUp() throws IllegalStateException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 23, 77, 83, 20}, "ac8157", false, true));
    }

    @Override // org.apache.http.conn.ClientConnectionManager
    public void closeExpiredConnections() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 76, 69, 80, 71}, "5802fa", -2004139531L));
    }

    @Override // org.apache.http.conn.ClientConnectionManager
    public void closeIdleConnections(long j, TimeUnit timeUnit) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 18, 19, 83, 20}, "cff153", false));
    }

    protected ClientConnectionOperator createConnectionOperator(SchemeRegistry schemeRegistry) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 18, 77, 1, 68}, "9f8ce2", -10204));
    }

    protected void finalize() throws Throwable {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 16, 76, 3, 71}, "1d9af3", -985231535L));
    }

    public ManagedClientConnection getConnection(HttpRoute httpRoute, Object obj) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 64, 77, 81, 21}, "e4834e", -1376958581L));
    }

    @Override // org.apache.http.conn.ClientConnectionManager
    public SchemeRegistry getSchemeRegistry() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 23, 66, 4, 69}, "3c7fdb", -1475957746L));
    }

    @Override // org.apache.http.conn.ClientConnectionManager
    public void releaseConnection(ManagedClientConnection managedClientConnection, long j, TimeUnit timeUnit) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 22, 20, 87, 67}, "0ba5bb", 1.618487E9f));
    }

    @Override // org.apache.http.conn.ClientConnectionManager
    public final ClientConnectionRequest requestConnection(HttpRoute httpRoute, Object obj) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 21, 66, 87, 67}, "aa75bf", -1473476553L));
    }

    protected void revokeConnection() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{97, 66, 70, 84, 19}, "26362e", true, false));
    }

    @Override // org.apache.http.conn.ClientConnectionManager
    public void shutdown() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{97, 16, 69, 7, 66}, "2d0ec0", 535));
    }
}
