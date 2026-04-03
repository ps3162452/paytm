package org.apache.http.impl.conn.tsccm;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import n.NPStringFog;
import org.apache.http.conn.routing.HttpRoute;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class BasicPoolEntryRef extends WeakReference<BasicPoolEntry> {
    public BasicPoolEntryRef(BasicPoolEntry basicPoolEntry, ReferenceQueue<Object> referenceQueue) {
        super(null, (ReferenceQueue) null);
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 76, 70, 3, 66}, "883ac2", false, true));
    }

    public final HttpRoute getRoute() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 69, 68, 1, 69}, "011cdf", 1208588804L));
    }
}
