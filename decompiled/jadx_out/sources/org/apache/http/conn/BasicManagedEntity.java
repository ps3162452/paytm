package org.apache.http.conn;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import n.NPStringFog;
import org.apache.http.HttpEntity;
import org.apache.http.entity.HttpEntityWrapper;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class BasicManagedEntity extends HttpEntityWrapper implements ConnectionReleaseTrigger, EofSensorWatcher {
    protected final boolean attemptReuse;
    protected ManagedClientConnection managedConn;

    public BasicManagedEntity(HttpEntity httpEntity, ManagedClientConnection managedClientConnection, boolean z) {
        super((HttpEntity) null);
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 76, 68, 82, 64}, "e810a1", true));
    }

    @Override // org.apache.http.conn.ConnectionReleaseTrigger
    public void abortConnection() throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 16, 64, 6, 69}, "bd5dde", -2.03343393E9d));
    }

    @Override // org.apache.http.entity.HttpEntityWrapper, org.apache.http.HttpEntity
    public void consumeContent() throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 16, 69, 85, 67}, "ad07b2", true));
    }

    @Override // org.apache.http.conn.EofSensorWatcher
    public boolean eofDetected(InputStream inputStream) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 69, 67, 4, 69}, "016fdf", false));
    }

    @Override // org.apache.http.entity.HttpEntityWrapper, org.apache.http.HttpEntity
    public InputStream getContent() throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 65, 76, 82, 22}, "f59074", false, false));
    }

    @Override // org.apache.http.entity.HttpEntityWrapper, org.apache.http.HttpEntity
    public boolean isRepeatable() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 65, 70, 83, 22}, "15317c", false, true));
    }

    @Override // org.apache.http.conn.ConnectionReleaseTrigger
    public void releaseConnection() throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{97, 65, 23, 83, 23}, "25b161", -4.1447027E8f));
    }

    protected void releaseManagedConnection() throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 70, 76, 80, 16}, "929215", 1.0156344E9f));
    }

    @Override // org.apache.http.conn.EofSensorWatcher
    public boolean streamAbort(InputStream inputStream) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 23, 70, 84, 17}, "5c3603", true, true));
    }

    @Override // org.apache.http.conn.EofSensorWatcher
    public boolean streamClosed(InputStream inputStream) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 67, 19, 81, 21}, "47f342", true));
    }

    @Override // org.apache.http.entity.HttpEntityWrapper, org.apache.http.HttpEntity
    public void writeTo(OutputStream outputStream) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 68, 64, 81, 18}, "b05337", 1.02253094E8d));
    }
}
