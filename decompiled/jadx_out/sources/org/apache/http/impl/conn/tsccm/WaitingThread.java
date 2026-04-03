package org.apache.http.impl.conn.tsccm;

import java.util.Date;
import java.util.concurrent.locks.Condition;
import n.NPStringFog;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class WaitingThread {
    public WaitingThread(Condition condition, RouteSpecificPool routeSpecificPool) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 22, 67, 3, 17}, "7b6a00", -2.050696347E9d));
    }

    public boolean await(Date date) throws InterruptedException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 66, 64, 1, 64}, "165cae", 1.044427636E9d));
    }

    public final Condition getCondition() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 65, 68, 7, 68}, "851ee8", true));
    }

    public final RouteSpecificPool getPool() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 76, 77, 0, 21}, "088b43", true, false));
    }

    public final Thread getThread() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 70, 17, 80, 18}, "d2d239", true));
    }

    public void interrupt() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 65, 71, 7, 64}, "c52eaf", 25945));
    }

    public void wakeup() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 22, 70, 7, 69}, "fb3edf", -32159));
    }
}
