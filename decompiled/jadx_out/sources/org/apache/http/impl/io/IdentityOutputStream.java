package org.apache.http.impl.io;

import java.io.IOException;
import java.io.OutputStream;
import n.NPStringFog;
import org.apache.http.io.SessionOutputBuffer;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class IdentityOutputStream extends OutputStream {
    public IdentityOutputStream(SessionOutputBuffer sessionOutputBuffer) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 17, 67, 85, 68}, "4e67e2", 1.9260897E9f));
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 68, 20, 7, 22}, "90ae74", 1858255593L));
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 65, 23, 82, 24}, "c5b099", 9.87734965E8d));
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 67, 19, 87, 24}, "87f59f", 11799));
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 16, 76, 86, 25}, "ed948c", -30676));
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{97, 16, 66, 81, 71}, "2d73f9", -8.28076606E8d));
    }
}
