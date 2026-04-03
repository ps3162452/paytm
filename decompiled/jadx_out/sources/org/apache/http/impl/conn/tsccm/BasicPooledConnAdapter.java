package org.apache.http.impl.conn.tsccm;

import n.NPStringFog;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.impl.conn.AbstractPoolEntry;
import org.apache.http.impl.conn.AbstractPooledConnAdapter;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class BasicPooledConnAdapter extends AbstractPooledConnAdapter {
    protected BasicPooledConnAdapter(ThreadSafeClientConnManager threadSafeClientConnManager, AbstractPoolEntry abstractPoolEntry) {
        super((ClientConnectionManager) null, (AbstractPoolEntry) null);
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 69, 68, 81, 71}, "c113f2", -1.712300039E9d));
    }

    @Override // org.apache.http.impl.conn.AbstractPooledConnAdapter, org.apache.http.impl.conn.AbstractClientConnAdapter
    protected void detach() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 71, 64, 87, 69}, "d355d8", 998045080L));
    }

    @Override // org.apache.http.impl.conn.AbstractClientConnAdapter
    protected ClientConnectionManager getManager() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 66, 68, 0, 67}, "f61bb8", 7340));
    }

    protected AbstractPoolEntry getPoolEntry() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 68, 77, 87, 18}, "10853c", 7459));
    }
}
