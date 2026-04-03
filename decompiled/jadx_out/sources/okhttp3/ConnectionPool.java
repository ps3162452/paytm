package okhttp3;

import java.lang.ref.Reference;
import java.net.Socket;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Deque;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import n.NPStringFog;
import okhttp3.internal.Util;
import okhttp3.internal.connection.RealConnection;
import okhttp3.internal.connection.RouteDatabase;
import okhttp3.internal.connection.StreamAllocation;
import okhttp3.internal.platform.Platform;

/* JADX INFO: loaded from: classes62.dex */
public final class ConnectionPool {
    static final boolean $assertionsDisabled;
    private static final Executor executor;
    private final Runnable cleanupRunnable;
    boolean cleanupRunning;
    private final Deque<RealConnection> connections;
    private final long keepAliveDurationNs;
    private final int maxIdleConnections;
    final RouteDatabase routeDatabase;

    static {
        $assertionsDisabled = !ConnectionPool.class.desiredAssertionStatus();
        executor = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), Util.threadFactory(NPStringFog.decode(new byte[]{125, 15, 44, 71, 23, 69, 18, 39, 11, 93, 13, 80, 81, 16, 13, 92, 13, 101, 93, 11, 8}, "2dd3c5", 1725900476L), true));
    }

    public ConnectionPool() {
        this(5, 5L, TimeUnit.MINUTES);
    }

    public ConnectionPool(int i, long j, TimeUnit timeUnit) {
        this.cleanupRunnable = new Runnable(this) { // from class: okhttp3.ConnectionPool.1
            final ConnectionPool this$0;

            {
                this.this$0 = this;
            }

            @Override // java.lang.Runnable
            public void run() {
                while (true) {
                    long jCleanup = this.this$0.cleanup(System.nanoTime());
                    if (jCleanup == -1) {
                        return;
                    }
                    if (jCleanup > 0) {
                        long j2 = jCleanup / 1000000;
                        synchronized (this.this$0) {
                            try {
                                this.this$0.wait(j2, (int) (jCleanup - (j2 * 1000000)));
                            } catch (InterruptedException e) {
                            }
                        }
                    }
                }
            }
        };
        this.connections = new ArrayDeque();
        this.routeDatabase = new RouteDatabase();
        this.maxIdleConnections = i;
        this.keepAliveDurationNs = timeUnit.toNanos(j);
        if (j <= 0) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{83, 6, 93, 64, 117, 15, 81, 21, 93, 116, 65, 17, 89, 23, 81, 95, 90, 67, 4, 94, 24, 0, 14, 67}, "8c804c", true) + j);
        }
    }

    private int pruneAndGetAllocationCount(RealConnection realConnection, long j) {
        List<Reference<StreamAllocation>> list = realConnection.allocations;
        int i = 0;
        while (i < list.size()) {
            Reference<StreamAllocation> reference = list.get(i);
            if (reference.get() != null) {
                i++;
            } else {
                Platform.get().logCloseableLeak(NPStringFog.decode(new byte[]{114, 23, 85, 90, 90, 88, 86, 84, 66, 92, 91, 88, 19, 67, 89, 21}, "376546", -2.0454566E9f) + realConnection.route().address().url() + NPStringFog.decode(new byte[]{21, 19, 86, 66, 70, 85, 80, 5, 92, 84, 2, 23, 21, 32, 94, 85, 70, 64, 90, 17, 23, 87, 9, 75, 82, 1, 67, 17, 18, 86, 21, 7, 91, 94, 21, 92, 21, 5, 23, 67, 3, 74, 69, 11, 89, 66, 3, 25, 87, 11, 83, 72, 89}, "5d71f9", -21915), ((StreamAllocation.StreamAllocationReference) reference).callStackTrace);
                list.remove(i);
                realConnection.noNewStreams = true;
                if (list.isEmpty()) {
                    realConnection.idleAtNanos = j - this.keepAliveDurationNs;
                    return 0;
                }
            }
        }
        return list.size();
    }

    long cleanup(long j) {
        synchronized (this) {
            int i = 0;
            int i2 = 0;
            RealConnection realConnection = null;
            long j2 = Long.MIN_VALUE;
            for (RealConnection realConnection2 : this.connections) {
                if (pruneAndGetAllocationCount(realConnection2, j) > 0) {
                    i2++;
                } else {
                    int i3 = i + 1;
                    long j3 = j - realConnection2.idleAtNanos;
                    if (j3 > j2) {
                        j2 = j3;
                        realConnection = realConnection2;
                        i = i3;
                    } else {
                        i = i3;
                    }
                }
            }
            if (j2 >= this.keepAliveDurationNs || i > this.maxIdleConnections) {
                this.connections.remove(realConnection);
                Util.closeQuietly(realConnection.socket());
                return 0L;
            }
            if (i > 0) {
                return this.keepAliveDurationNs - j2;
            }
            if (i2 > 0) {
                return this.keepAliveDurationNs;
            }
            this.cleanupRunning = false;
            return -1L;
        }
    }

    boolean connectionBecameIdle(RealConnection realConnection) {
        if (!$assertionsDisabled && !Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        if (realConnection.noNewStreams || this.maxIdleConnections == 0) {
            this.connections.remove(realConnection);
            return true;
        }
        notifyAll();
        return false;
    }

    public int connectionCount() {
        int size;
        synchronized (this) {
            size = this.connections.size();
        }
        return size;
    }

    @Nullable
    Socket deduplicate(Address address, StreamAllocation streamAllocation) {
        if (!$assertionsDisabled && !Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        for (RealConnection realConnection : this.connections) {
            if (realConnection.isEligible(address, null) && realConnection.isMultiplexed() && realConnection != streamAllocation.connection()) {
                return streamAllocation.releaseAndAcquire(realConnection);
            }
        }
        return null;
    }

    public void evictAll() {
        ArrayList arrayList = new ArrayList();
        synchronized (this) {
            Iterator<RealConnection> it = this.connections.iterator();
            while (it.hasNext()) {
                RealConnection next = it.next();
                if (next.allocations.isEmpty()) {
                    next.noNewStreams = true;
                    arrayList.add(next);
                    it.remove();
                }
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            Util.closeQuietly(((RealConnection) it2.next()).socket());
        }
    }

    @Nullable
    RealConnection get(Address address, StreamAllocation streamAllocation, Route route) {
        if (!$assertionsDisabled && !Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        for (RealConnection realConnection : this.connections) {
            if (realConnection.isEligible(address, route)) {
                streamAllocation.acquire(realConnection, true);
                return realConnection;
            }
        }
        return null;
    }

    public int idleConnectionCount() {
        int i;
        synchronized (this) {
            Iterator<RealConnection> it = this.connections.iterator();
            i = 0;
            while (it.hasNext()) {
                if (it.next().allocations.isEmpty()) {
                    i++;
                }
            }
        }
        return i;
    }

    void put(RealConnection realConnection) {
        if (!$assertionsDisabled && !Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        if (!this.cleanupRunning) {
            this.cleanupRunning = true;
            executor.execute(this.cleanupRunnable);
        }
        this.connections.add(realConnection);
    }
}
