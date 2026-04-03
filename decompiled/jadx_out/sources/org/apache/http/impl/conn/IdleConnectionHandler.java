package org.apache.http.impl.conn;

import java.util.concurrent.TimeUnit;
import n.NPStringFog;
import org.apache.http.HttpConnection;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class IdleConnectionHandler {
    public IdleConnectionHandler() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 68, 68, 6, 23}, "901d6f", false, true));
    }

    public void add(HttpConnection httpConnection, long j, TimeUnit timeUnit) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 67, 64, 6, 68}, "a75de5", true, true));
    }

    public void closeExpiredConnections() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 23, 66, 85, 71}, "dc77fc", 30146));
    }

    public void closeIdleConnections(long j) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 71, 64, 81, 25}, "e35389", -6684));
    }

    public boolean remove(HttpConnection httpConnection) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 70, 70, 3, 25}, "323a81", -566913111L));
    }

    public void removeAll() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 70, 17, 3, 69}, "02dada", -1.9628264E9f));
    }
}
