package org.apache.http.impl.conn.tsccm;

import java.util.Map;
import java.util.Queue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import n.NPStringFog;
import org.apache.http.conn.ClientConnectionOperator;
import org.apache.http.conn.ConnectionPoolTimeoutException;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.params.HttpParams;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class ConnPoolByRoute extends AbstractConnPool {
    protected Queue<BasicPoolEntry> freeConnections;
    protected final int maxTotalConnections;
    protected final ClientConnectionOperator operator;
    protected final Map<HttpRoute, RouteSpecificPool> routeToPool;
    protected Queue<WaitingThread> waitingThreads;

    public ConnPoolByRoute(ClientConnectionOperator clientConnectionOperator, HttpParams httpParams) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 67, 23, 0, 18}, "47bb3e", 422105421L));
    }

    protected BasicPoolEntry createEntry(RouteSpecificPool routeSpecificPool, ClientConnectionOperator clientConnectionOperator) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 17, 66, 1, 19}, "ce7c26", true));
    }

    protected Queue<BasicPoolEntry> createFreeConnQueue() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 69, 64, 91, 24}, "b15999", -32466));
    }

    protected Map<HttpRoute, RouteSpecificPool> createRouteToPoolMap() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 70, 76, 91, 25}, "e29986", 20120));
    }

    protected Queue<WaitingThread> createWaitingThreadQueue() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 69, 76, 83, 71}, "6191f4", 1.03343296E9f));
    }

    @Override // org.apache.http.impl.conn.tsccm.AbstractConnPool
    public void deleteClosedConnections() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 21, 23, 84, 66}, "8ab6c4", 1.267704897E9d));
    }

    protected void deleteEntry(BasicPoolEntry basicPoolEntry) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 18, 66, 81, 71}, "cf73fc", -1596293407L));
    }

    protected void deleteLeastUsedEntry() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 22, 65, 81, 64}, "eb43a8", true));
    }

    @Override // org.apache.http.impl.conn.tsccm.AbstractConnPool
    public void freeEntry(BasicPoolEntry basicPoolEntry, boolean z, long j, TimeUnit timeUnit) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 23, 23, 1, 66}, "acbccb", 1.3742093E9f));
    }

    public int getConnectionsInPool(HttpRoute httpRoute) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 68, 67, 80, 24}, "406295", 16268));
    }

    protected BasicPoolEntry getEntryBlocking(HttpRoute httpRoute, Object obj, long j, TimeUnit timeUnit, WaitingThreadAborter waitingThreadAborter) throws ConnectionPoolTimeoutException, InterruptedException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 76, 16, 85, 16}, "88e712", 27862));
    }

    protected BasicPoolEntry getFreeEntry(RouteSpecificPool routeSpecificPool, Object obj) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 22, 19, 0, 24}, "cbfb98", 3592));
    }

    protected RouteSpecificPool getRoutePool(HttpRoute httpRoute, boolean z) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 22, 71, 4, 67}, "1b2fb4", 26644));
    }

    @Override // org.apache.http.impl.conn.tsccm.AbstractConnPool
    protected void handleLostEntry(HttpRoute httpRoute) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 64, 70, 87, 68}, "7435ea", false));
    }

    protected RouteSpecificPool newRouteSpecificPool(HttpRoute httpRoute) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 66, 68, 86, 68}, "b614e3", -26329));
    }

    protected WaitingThread newWaitingThread(Condition condition, RouteSpecificPool routeSpecificPool) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 70, 76, 6, 68}, "729de3", 1.0279425E9f));
    }

    protected void notifyWaitingThread(RouteSpecificPool routeSpecificPool) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 77, 76, 6, 18}, "a99d3c", -449619276L));
    }

    @Override // org.apache.http.impl.conn.tsccm.AbstractConnPool
    public PoolEntryRequest requestPoolEntry(HttpRoute httpRoute, Object obj) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 67, 77, 86, 67}, "3784b8", true));
    }

    @Override // org.apache.http.impl.conn.tsccm.AbstractConnPool
    public void shutdown() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 17, 16, 90, 21}, "6ee841", true, true));
    }
}
