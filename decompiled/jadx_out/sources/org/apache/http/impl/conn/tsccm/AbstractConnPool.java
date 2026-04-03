package org.apache.http.impl.conn.tsccm;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Lock;
import n.NPStringFog;
import org.apache.http.conn.ConnectionPoolTimeoutException;
import org.apache.http.conn.OperatedClientConnection;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.impl.conn.IdleConnectionHandler;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public abstract class AbstractConnPool implements RefQueueHandler {
    protected IdleConnectionHandler idleConnHandler;
    protected volatile boolean isShutDown;
    protected Set<BasicPoolEntryRef> issuedConnections;
    protected int numConnections;
    protected final Lock poolLock;
    protected ReferenceQueue<Object> refQueue;

    protected AbstractConnPool() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 66, 20, 85, 68}, "a6a7e6", false));
    }

    protected void closeConnection(OperatedClientConnection operatedClientConnection) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 68, 17, 81, 20}, "d0d35c", true, false));
    }

    public void closeExpiredConnections() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 76, 16, 91, 64}, "18e9a4", 11257130L));
    }

    public void closeIdleConnections(long j, TimeUnit timeUnit) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 76, 22, 6, 25}, "98cd80", false, false));
    }

    public abstract void deleteClosedConnections();

    public void enableConnectionGC() throws IllegalStateException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 76, 19, 1, 68}, "e8fcef", -1.1292541E9f));
    }

    public abstract void freeEntry(BasicPoolEntry basicPoolEntry, boolean z, long j, TimeUnit timeUnit);

    public final BasicPoolEntry getEntry(HttpRoute httpRoute, Object obj, long j, TimeUnit timeUnit) throws ConnectionPoolTimeoutException, InterruptedException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 71, 67, 82, 18}, "336039", false));
    }

    protected abstract void handleLostEntry(HttpRoute httpRoute);

    @Override // org.apache.http.impl.conn.tsccm.RefQueueHandler
    public void handleReference(Reference reference) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 17, 68, 82, 71}, "de10f0", 1829202838L));
    }

    public abstract PoolEntryRequest requestPoolEntry(HttpRoute httpRoute, Object obj);

    public void shutdown() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 18, 69, 91, 23}, "5f0962", -1.142477372E9d));
    }
}
