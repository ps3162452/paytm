package okhttp3;

import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Deque;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import n.NPStringFog;
import okhttp3.RealCall;
import okhttp3.internal.Util;

/* JADX INFO: loaded from: classes62.dex */
public final class Dispatcher {

    @Nullable
    private ExecutorService executorService;

    @Nullable
    private Runnable idleCallback;
    private int maxRequests = 64;
    private int maxRequestsPerHost = 5;
    private final Deque<RealCall.AsyncCall> readyAsyncCalls = new ArrayDeque();
    private final Deque<RealCall.AsyncCall> runningAsyncCalls = new ArrayDeque();
    private final Deque<RealCall> runningSyncCalls = new ArrayDeque();

    public Dispatcher() {
    }

    public Dispatcher(ExecutorService executorService) {
        this.executorService = executorService;
    }

    private <T> void finished(Deque<T> deque, T t, boolean z) {
        int iRunningCallsCount;
        Runnable runnable;
        synchronized (this) {
            if (!deque.remove(t)) {
                throw new AssertionError(NPStringFog.decode(new byte[]{37, 0, 95, 94, 65, 19, 7, 18, 93, 21, 21, 68, 15, 15, 30, 84, 13, 13, 1, 9, 71, 19}, "fa32ad", -1.25911055E8d));
            }
            if (z) {
                promoteCalls();
            }
            iRunningCallsCount = runningCallsCount();
            runnable = this.idleCallback;
        }
        if (iRunningCallsCount != 0 || runnable == null) {
            return;
        }
        runnable.run();
    }

    private void promoteCalls() {
        if (this.runningAsyncCalls.size() < this.maxRequests && !this.readyAsyncCalls.isEmpty()) {
            Iterator<RealCall.AsyncCall> it = this.readyAsyncCalls.iterator();
            while (it.hasNext()) {
                RealCall.AsyncCall next = it.next();
                if (runningCallsForHost(next) < this.maxRequestsPerHost) {
                    it.remove();
                    this.runningAsyncCalls.add(next);
                    executorService().execute(next);
                }
                if (this.runningAsyncCalls.size() >= this.maxRequests) {
                    return;
                }
            }
        }
    }

    private int runningCallsForHost(RealCall.AsyncCall asyncCall) {
        Iterator<RealCall.AsyncCall> it = this.runningAsyncCalls.iterator();
        int i = 0;
        while (it.hasNext()) {
            if (it.next().host().equals(asyncCall.host())) {
                i++;
            }
        }
        return i;
    }

    public void cancelAll() {
        synchronized (this) {
            Iterator<RealCall.AsyncCall> it = this.readyAsyncCalls.iterator();
            while (it.hasNext()) {
                it.next().get().cancel();
            }
            Iterator<RealCall.AsyncCall> it2 = this.runningAsyncCalls.iterator();
            while (it2.hasNext()) {
                it2.next().get().cancel();
            }
            Iterator<RealCall> it3 = this.runningSyncCalls.iterator();
            while (it3.hasNext()) {
                it3.next().cancel();
            }
        }
    }

    void enqueue(RealCall.AsyncCall asyncCall) {
        synchronized (this) {
            if (this.runningAsyncCalls.size() >= this.maxRequests || runningCallsForHost(asyncCall) >= this.maxRequestsPerHost) {
                this.readyAsyncCalls.add(asyncCall);
            } else {
                this.runningAsyncCalls.add(asyncCall);
                executorService().execute(asyncCall);
            }
        }
    }

    void executed(RealCall realCall) {
        synchronized (this) {
            this.runningSyncCalls.add(realCall);
        }
    }

    public ExecutorService executorService() {
        ExecutorService executorService;
        synchronized (this) {
            if (this.executorService == null) {
                this.executorService = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), Util.threadFactory(NPStringFog.decode(new byte[]{123, 15, 120, 17, 64, 65, 20, 32, 89, 22, 68, 80, 64, 7, 88, 0, 70}, "4d0e41", true, false), false));
            }
            executorService = this.executorService;
        }
        return executorService;
    }

    void finished(RealCall.AsyncCall asyncCall) {
        finished(this.runningAsyncCalls, asyncCall, true);
    }

    void finished(RealCall realCall) {
        finished(this.runningSyncCalls, realCall, false);
    }

    public int getMaxRequests() {
        int i;
        synchronized (this) {
            i = this.maxRequests;
        }
        return i;
    }

    public int getMaxRequestsPerHost() {
        int i;
        synchronized (this) {
            i = this.maxRequestsPerHost;
        }
        return i;
    }

    public List<Call> queuedCalls() {
        List<Call> listUnmodifiableList;
        synchronized (this) {
            ArrayList arrayList = new ArrayList();
            Iterator<RealCall.AsyncCall> it = this.readyAsyncCalls.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().get());
            }
            listUnmodifiableList = Collections.unmodifiableList(arrayList);
        }
        return listUnmodifiableList;
    }

    public int queuedCallsCount() {
        int size;
        synchronized (this) {
            size = this.readyAsyncCalls.size();
        }
        return size;
    }

    public List<Call> runningCalls() {
        List<Call> listUnmodifiableList;
        synchronized (this) {
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(this.runningSyncCalls);
            Iterator<RealCall.AsyncCall> it = this.runningAsyncCalls.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().get());
            }
            listUnmodifiableList = Collections.unmodifiableList(arrayList);
        }
        return listUnmodifiableList;
    }

    public int runningCallsCount() {
        int size;
        int size2;
        synchronized (this) {
            size = this.runningAsyncCalls.size();
            size2 = this.runningSyncCalls.size();
        }
        return size + size2;
    }

    public void setIdleCallback(@Nullable Runnable runnable) {
        synchronized (this) {
            this.idleCallback = runnable;
        }
    }

    public void setMaxRequests(int i) {
        synchronized (this) {
            if (i < 1) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{93, 85, 73, 19, 5, 65, 1, 14, 17}, "04139a", 1.2652105E9f) + i);
            }
            this.maxRequests = i;
            promoteCalls();
        }
    }

    public void setMaxRequestsPerHost(int i) {
        synchronized (this) {
            if (i < 1) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{95, 2, 73, 67, 95, 20, 3, 89, 17}, "2c1cc4", 1.6395191E9f) + i);
            }
            this.maxRequestsPerHost = i;
            promoteCalls();
        }
    }
}
