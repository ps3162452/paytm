package org.apache.http.impl.conn.tsccm;

import java.util.LinkedList;
import java.util.Queue;
import n.NPStringFog;
import org.apache.http.conn.routing.HttpRoute;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class RouteSpecificPool {
    protected final LinkedList<BasicPoolEntry> freeEntries;
    protected final int maxEntries;
    protected int numEntries;
    protected final HttpRoute route;
    protected final Queue<WaitingThread> waitingThreads;

    public RouteSpecificPool(HttpRoute httpRoute, int i) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{97, 66, 66, 80, 19}, "26722d", true));
    }

    public BasicPoolEntry allocEntry(Object obj) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 64, 71, 7, 20}, "f42e51", 1409516780L));
    }

    public void createdEntry(BasicPoolEntry basicPoolEntry) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 71, 17, 91, 67}, "43d9b8", true, false));
    }

    public boolean deleteEntry(BasicPoolEntry basicPoolEntry) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 67, 77, 91, 69}, "7789d6", 20792));
    }

    public void dropEntry() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{97, 16, 66, 91, 25}, "2d7982", true, true));
    }

    public void freeEntry(BasicPoolEntry basicPoolEntry) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 69, 22, 3, 71}, "71cafc", -20971));
    }

    public int getCapacity() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 17, 69, 6, 18}, "9e0d3e", false, true));
    }

    public final int getEntryCount() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 71, 20, 82, 21}, "c3a04b", 1.246357015E9d));
    }

    public final int getMaxEntries() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 76, 77, 84, 20}, "f8865b", -1.721439556E9d));
    }

    public final HttpRoute getRoute() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 76, 64, 83, 17}, "685107", true, true));
    }

    public boolean hasThread() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 70, 70, 85, 22}, "123778", false, true));
    }

    public boolean isUnused() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 76, 20, 7, 20}, "08ae59", true, true));
    }

    public WaitingThread nextThread() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 64, 71, 81, 21}, "14234f", false));
    }

    public void queueThread(WaitingThread waitingThread) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 16, 70, 3, 17}, "7d3a05", -2.033093061E9d));
    }

    public void removeThread(WaitingThread waitingThread) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 21, 22, 7, 25}, "0ace8e", true));
    }
}
