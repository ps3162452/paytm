package org.apache.http.conn;

import java.io.IOException;
import java.io.InputStream;
import n.NPStringFog;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class EofSensorInputStream extends InputStream implements ConnectionReleaseTrigger {
    protected InputStream wrappedStream;

    public EofSensorInputStream(InputStream inputStream, EofSensorWatcher eofSensorWatcher) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 76, 71, 83, 17}, "38210d", true, true));
    }

    @Override // org.apache.http.conn.ConnectionReleaseTrigger
    public void abortConnection() throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 17, 64, 81, 18}, "fe5335", false));
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 16, 64, 82, 25}, "4d5082", false));
    }

    protected void checkAbort() throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 21, 22, 81, 67}, "4ac3b6", -1.5137428E9f));
    }

    protected void checkClose() throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 17, 76, 80, 24}, "6e929c", false, true));
    }

    protected void checkEOF(int i) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 66, 17, 0, 22}, "06db7e", true));
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 76, 64, 7, 67}, "d85eb6", true));
    }

    protected boolean isReadAllowed() throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 64, 64, 1, 64}, "f45ca8", true));
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 23, 77, 83, 69}, "5c81d9", 1.5478538E9f));
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 18, 20, 90, 69}, "afa8da", true, false));
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 17, 70, 1, 18}, "ae3c3e", -1.284398409E9d));
    }

    @Override // org.apache.http.conn.ConnectionReleaseTrigger
    public void releaseConnection() throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 68, 17, 83, 64}, "60d1ab", -25214));
    }
}
