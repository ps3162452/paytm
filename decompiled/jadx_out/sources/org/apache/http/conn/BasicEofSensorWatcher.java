package org.apache.http.conn;

import java.io.IOException;
import java.io.InputStream;
import n.NPStringFog;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class BasicEofSensorWatcher implements EofSensorWatcher {
    protected boolean attemptReuse;
    protected ManagedClientConnection managedConn;

    public BasicEofSensorWatcher(ManagedClientConnection managedClientConnection, boolean z) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 71, 70, 6, 69}, "933dd0", -31836));
    }

    @Override // org.apache.http.conn.EofSensorWatcher
    public boolean eofDetected(InputStream inputStream) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 22, 67, 7, 23}, "db6e6e", false));
    }

    @Override // org.apache.http.conn.EofSensorWatcher
    public boolean streamAbort(InputStream inputStream) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 76, 23, 81, 71}, "98b3fd", -2123727916L));
    }

    @Override // org.apache.http.conn.EofSensorWatcher
    public boolean streamClosed(InputStream inputStream) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{97, 18, 69, 1, 23}, "2f0c69", 8.964777E8f));
    }
}
