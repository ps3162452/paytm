package org.apache.http.impl.conn.tsccm;

import java.lang.ref.ReferenceQueue;
import n.NPStringFog;
import org.apache.http.conn.ClientConnectionOperator;
import org.apache.http.conn.OperatedClientConnection;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.impl.conn.AbstractPoolEntry;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class BasicPoolEntry extends AbstractPoolEntry {
    public BasicPoolEntry(ClientConnectionOperator clientConnectionOperator, HttpRoute httpRoute, ReferenceQueue<Object> referenceQueue) {
        super((ClientConnectionOperator) null, (HttpRoute) null);
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 23, 20, 3, 16}, "9caa17", 1.847834146E9d));
    }

    protected final OperatedClientConnection getConnection() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 21, 77, 7, 17}, "1a8e0b", false));
    }

    protected final HttpRoute getPlannedRoute() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 23, 69, 0, 67}, "4c0bba", -1796296756L));
    }

    protected final BasicPoolEntryRef getWeakRef() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 23, 70, 4, 21}, "1c3f48", true));
    }
}
