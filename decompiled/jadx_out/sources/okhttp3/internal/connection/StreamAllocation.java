package okhttp3.internal.connection;

import java.io.IOException;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.net.Socket;
import n.NPStringFog;
import okhttp3.Address;
import okhttp3.Call;
import okhttp3.ConnectionPool;
import okhttp3.EventListener;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Route;
import okhttp3.internal.Internal;
import okhttp3.internal.Util;
import okhttp3.internal.connection.RouteSelector;
import okhttp3.internal.http.HttpCodec;

/* JADX INFO: loaded from: classes62.dex */
public final class StreamAllocation {
    static final boolean $assertionsDisabled;
    public final Address address;
    public final Call call;
    private final Object callStackTrace;
    private boolean canceled;
    private HttpCodec codec;
    private RealConnection connection;
    private final ConnectionPool connectionPool;
    public final EventListener eventListener;
    private int refusedStreamCount;
    private boolean released;
    private boolean reportedAcquired;
    private Route route;
    private RouteSelector.Selection routeSelection;
    private final RouteSelector routeSelector;

    public static final class StreamAllocationReference extends WeakReference<StreamAllocation> {
        public final Object callStackTrace;

        StreamAllocationReference(StreamAllocation streamAllocation, Object obj) {
            super(streamAllocation);
            this.callStackTrace = obj;
        }
    }

    static {
        $assertionsDisabled = !StreamAllocation.class.desiredAssertionStatus();
    }

    public StreamAllocation(ConnectionPool connectionPool, Address address, Call call, EventListener eventListener, Object obj) {
        this.connectionPool = connectionPool;
        this.address = address;
        this.call = call;
        this.eventListener = eventListener;
        this.routeSelector = new RouteSelector(address, routeDatabase(), call, eventListener);
        this.callStackTrace = obj;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0061  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.net.Socket deallocate(boolean r5, boolean r6, boolean r7) {
        /*
            r4 = this;
            r2 = 1
            r1 = 0
            boolean r0 = okhttp3.internal.connection.StreamAllocation.$assertionsDisabled
            if (r0 != 0) goto L14
            okhttp3.ConnectionPool r0 = r4.connectionPool
            boolean r0 = java.lang.Thread.holdsLock(r0)
            if (r0 != 0) goto L14
            java.lang.AssertionError r0 = new java.lang.AssertionError
            r0.<init>()
            throw r0
        L14:
            if (r7 == 0) goto L18
            r4.codec = r1
        L18:
            if (r6 == 0) goto L1c
            r4.released = r2
        L1c:
            okhttp3.internal.connection.RealConnection r0 = r4.connection
            if (r0 == 0) goto L60
            if (r5 == 0) goto L26
            okhttp3.internal.connection.RealConnection r0 = r4.connection
            r0.noNewStreams = r2
        L26:
            okhttp3.internal.http.HttpCodec r0 = r4.codec
            if (r0 != 0) goto L60
            boolean r0 = r4.released
            if (r0 != 0) goto L34
            okhttp3.internal.connection.RealConnection r0 = r4.connection
            boolean r0 = r0.noNewStreams
            if (r0 == 0) goto L60
        L34:
            okhttp3.internal.connection.RealConnection r0 = r4.connection
            r4.release(r0)
            okhttp3.internal.connection.RealConnection r0 = r4.connection
            java.util.List<java.lang.ref.Reference<okhttp3.internal.connection.StreamAllocation>> r0 = r0.allocations
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L61
            okhttp3.internal.connection.RealConnection r0 = r4.connection
            long r2 = java.lang.System.nanoTime()
            r0.idleAtNanos = r2
            okhttp3.internal.Internal r0 = okhttp3.internal.Internal.instance
            okhttp3.ConnectionPool r2 = r4.connectionPool
            okhttp3.internal.connection.RealConnection r3 = r4.connection
            boolean r0 = r0.connectionBecameIdle(r2, r3)
            if (r0 == 0) goto L61
            okhttp3.internal.connection.RealConnection r0 = r4.connection
            java.net.Socket r0 = r0.socket()
        L5d:
            r4.connection = r1
            r1 = r0
        L60:
            return r1
        L61:
            r0 = r1
            goto L5d
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.connection.StreamAllocation.deallocate(boolean, boolean, boolean):java.net.Socket");
    }

    /* JADX WARN: Removed duplicated region for block: B:64:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0123  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private okhttp3.internal.connection.RealConnection findConnection(int r12, int r13, int r14, boolean r15) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 404
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.connection.StreamAllocation.findConnection(int, int, int, boolean):okhttp3.internal.connection.RealConnection");
    }

    private RealConnection findHealthyConnection(int i, int i2, int i3, boolean z, boolean z2) throws Throwable {
        RealConnection realConnectionFindConnection;
        while (true) {
            realConnectionFindConnection = findConnection(i, i2, i3, z);
            synchronized (this.connectionPool) {
                if (realConnectionFindConnection.successCount != 0) {
                    if (realConnectionFindConnection.isHealthy(z2)) {
                        break;
                    }
                    noNewStreams();
                } else {
                    break;
                }
            }
        }
        return realConnectionFindConnection;
    }

    private void release(RealConnection realConnection) {
        int size = realConnection.allocations.size();
        for (int i = 0; i < size; i++) {
            if (realConnection.allocations.get(i).get() == this) {
                realConnection.allocations.remove(i);
                return;
            }
        }
        throw new IllegalStateException();
    }

    private Socket releaseIfNoNewStreams() {
        if (!$assertionsDisabled && !Thread.holdsLock(this.connectionPool)) {
            throw new AssertionError();
        }
        RealConnection realConnection = this.connection;
        if (realConnection == null || !realConnection.noNewStreams) {
            return null;
        }
        return deallocate(false, false, true);
    }

    private RouteDatabase routeDatabase() {
        return Internal.instance.routeDatabase(this.connectionPool);
    }

    public void acquire(RealConnection realConnection, boolean z) {
        if (!$assertionsDisabled && !Thread.holdsLock(this.connectionPool)) {
            throw new AssertionError();
        }
        if (this.connection != null) {
            throw new IllegalStateException();
        }
        this.connection = realConnection;
        this.reportedAcquired = z;
        realConnection.allocations.add(new StreamAllocationReference(this, this.callStackTrace));
    }

    public void cancel() {
        HttpCodec httpCodec;
        RealConnection realConnection;
        synchronized (this.connectionPool) {
            this.canceled = true;
            httpCodec = this.codec;
            realConnection = this.connection;
        }
        if (httpCodec != null) {
            httpCodec.cancel();
        } else if (realConnection != null) {
            realConnection.cancel();
        }
    }

    public HttpCodec codec() {
        HttpCodec httpCodec;
        synchronized (this.connectionPool) {
            httpCodec = this.codec;
        }
        return httpCodec;
    }

    public RealConnection connection() {
        RealConnection realConnection;
        synchronized (this) {
            realConnection = this.connection;
        }
        return realConnection;
    }

    public boolean hasMoreRoutes() {
        return this.route != null || (this.routeSelection != null && this.routeSelection.hasNext()) || this.routeSelector.hasNext();
    }

    public HttpCodec newStream(OkHttpClient okHttpClient, Interceptor.Chain chain, boolean z) {
        try {
            HttpCodec httpCodecNewCodec = findHealthyConnection(chain.connectTimeoutMillis(), chain.readTimeoutMillis(), chain.writeTimeoutMillis(), okHttpClient.retryOnConnectionFailure(), z).newCodec(okHttpClient, chain, this);
            synchronized (this.connectionPool) {
                this.codec = httpCodecNewCodec;
            }
            return httpCodecNewCodec;
        } catch (IOException e) {
            throw new RouteException(e);
        }
    }

    public void noNewStreams() {
        RealConnection realConnection;
        Socket socketDeallocate;
        synchronized (this.connectionPool) {
            realConnection = this.connection;
            socketDeallocate = deallocate(true, false, false);
            if (this.connection != null) {
                realConnection = null;
            }
        }
        Util.closeQuietly(socketDeallocate);
        if (realConnection != null) {
            this.eventListener.connectionReleased(this.call, realConnection);
        }
    }

    public void release() {
        RealConnection realConnection;
        Socket socketDeallocate;
        synchronized (this.connectionPool) {
            realConnection = this.connection;
            socketDeallocate = deallocate(false, true, false);
            if (this.connection != null) {
                realConnection = null;
            }
        }
        Util.closeQuietly(socketDeallocate);
        if (realConnection != null) {
            this.eventListener.connectionReleased(this.call, realConnection);
        }
    }

    public Socket releaseAndAcquire(RealConnection realConnection) {
        if (!$assertionsDisabled && !Thread.holdsLock(this.connectionPool)) {
            throw new AssertionError();
        }
        if (this.codec != null || this.connection.allocations.size() != 1) {
            throw new IllegalStateException();
        }
        Reference<StreamAllocation> reference = this.connection.allocations.get(0);
        Socket socketDeallocate = deallocate(true, false, false);
        this.connection = realConnection;
        realConnection.allocations.add(reference);
        return socketDeallocate;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0036  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void streamFailed(java.io.IOException r7) {
        /*
            r6 = this;
            r0 = 0
            r2 = 0
            r1 = 1
            okhttp3.ConnectionPool r3 = r6.connectionPool
            monitor-enter(r3)
            boolean r4 = r7 instanceof okhttp3.internal.http2.StreamResetException     // Catch: java.lang.Throwable -> L6d
            if (r4 == 0) goto L45
            okhttp3.internal.http2.StreamResetException r7 = (okhttp3.internal.http2.StreamResetException) r7     // Catch: java.lang.Throwable -> L6d
            okhttp3.internal.http2.ErrorCode r4 = r7.errorCode     // Catch: java.lang.Throwable -> L6d
            okhttp3.internal.http2.ErrorCode r5 = okhttp3.internal.http2.ErrorCode.REFUSED_STREAM     // Catch: java.lang.Throwable -> L6d
            if (r4 != r5) goto L18
            int r4 = r6.refusedStreamCount     // Catch: java.lang.Throwable -> L6d
            int r4 = r4 + 1
            r6.refusedStreamCount = r4     // Catch: java.lang.Throwable -> L6d
        L18:
            okhttp3.internal.http2.ErrorCode r4 = r7.errorCode     // Catch: java.lang.Throwable -> L6d
            okhttp3.internal.http2.ErrorCode r5 = okhttp3.internal.http2.ErrorCode.REFUSED_STREAM     // Catch: java.lang.Throwable -> L6d
            if (r4 != r5) goto L22
            int r4 = r6.refusedStreamCount     // Catch: java.lang.Throwable -> L6d
            if (r4 <= r1) goto L26
        L22:
            r0 = 0
            r6.route = r0     // Catch: java.lang.Throwable -> L6d
        L25:
            r0 = r1
        L26:
            okhttp3.internal.connection.RealConnection r1 = r6.connection     // Catch: java.lang.Throwable -> L6d
            r4 = 0
            r5 = 1
            java.net.Socket r4 = r6.deallocate(r0, r4, r5)     // Catch: java.lang.Throwable -> L6d
            okhttp3.internal.connection.RealConnection r0 = r6.connection     // Catch: java.lang.Throwable -> L6d
            if (r0 != 0) goto L36
            boolean r0 = r6.reportedAcquired     // Catch: java.lang.Throwable -> L6d
            if (r0 != 0) goto L70
        L36:
            r0 = r2
        L37:
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L6d
            okhttp3.internal.Util.closeQuietly(r4)
            if (r0 == 0) goto L44
            okhttp3.EventListener r1 = r6.eventListener
            okhttp3.Call r2 = r6.call
            r1.connectionReleased(r2, r0)
        L44:
            return
        L45:
            okhttp3.internal.connection.RealConnection r4 = r6.connection     // Catch: java.lang.Throwable -> L6d
            if (r4 == 0) goto L26
            okhttp3.internal.connection.RealConnection r4 = r6.connection     // Catch: java.lang.Throwable -> L6d
            boolean r4 = r4.isMultiplexed()     // Catch: java.lang.Throwable -> L6d
            if (r4 == 0) goto L55
            boolean r4 = r7 instanceof okhttp3.internal.http2.ConnectionShutdownException     // Catch: java.lang.Throwable -> L6d
            if (r4 == 0) goto L26
        L55:
            okhttp3.internal.connection.RealConnection r0 = r6.connection     // Catch: java.lang.Throwable -> L6d
            int r0 = r0.successCount     // Catch: java.lang.Throwable -> L6d
            if (r0 != 0) goto L25
            okhttp3.Route r0 = r6.route     // Catch: java.lang.Throwable -> L6d
            if (r0 == 0) goto L68
            if (r7 == 0) goto L68
            okhttp3.internal.connection.RouteSelector r0 = r6.routeSelector     // Catch: java.lang.Throwable -> L6d
            okhttp3.Route r4 = r6.route     // Catch: java.lang.Throwable -> L6d
            r0.connectFailed(r4, r7)     // Catch: java.lang.Throwable -> L6d
        L68:
            r0 = 0
            r6.route = r0     // Catch: java.lang.Throwable -> L6d
            r0 = r1
            goto L26
        L6d:
            r0 = move-exception
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L6d
            throw r0
        L70:
            r0 = r1
            goto L37
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.connection.StreamAllocation.streamFailed(java.io.IOException):void");
    }

    public void streamFinished(boolean z, HttpCodec httpCodec, long j, IOException iOException) {
        RealConnection realConnection;
        Socket socketDeallocate;
        boolean z2;
        this.eventListener.responseBodyEnd(this.call, j);
        synchronized (this.connectionPool) {
            if (httpCodec != null) {
                if (httpCodec == this.codec) {
                    if (!z) {
                        this.connection.successCount++;
                    }
                    realConnection = this.connection;
                    socketDeallocate = deallocate(z, false, true);
                    if (this.connection != null) {
                        realConnection = null;
                    }
                    z2 = this.released;
                }
            }
            throw new IllegalStateException(NPStringFog.decode(new byte[]{84, 26, 72, 93, 81, 16, 84, 6, 24}, "1b882d", 1.0355155E9f) + this.codec + NPStringFog.decode(new byte[]{23, 4, 23, 77, 25, 20, 86, 21, 66}, "7fb99c", false) + httpCodec);
        }
        Util.closeQuietly(socketDeallocate);
        if (realConnection != null) {
            this.eventListener.connectionReleased(this.call, realConnection);
        }
        if (iOException != null) {
            this.eventListener.callFailed(this.call, iOException);
        } else if (z2) {
            this.eventListener.callEnd(this.call);
        }
    }

    public String toString() {
        RealConnection realConnectionConnection = connection();
        return realConnectionConnection != null ? realConnectionConnection.toString() : this.address.toString();
    }
}
