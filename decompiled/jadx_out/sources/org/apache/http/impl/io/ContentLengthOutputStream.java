package org.apache.http.impl.io;

import java.io.IOException;
import java.io.OutputStream;
import n.NPStringFog;
import org.apache.http.io.SessionOutputBuffer;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class ContentLengthOutputStream extends OutputStream {
    public ContentLengthOutputStream(SessionOutputBuffer sessionOutputBuffer, long j) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 76, 69, 83, 20}, "08015b", 22268));
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 77, 77, 84, 66}, "a986c8", -7.31176699E8d));
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 77, 67, 91, 21}, "d9694a", -1389059061L));
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 64, 69, 90, 22}, "140871", -1.322596909E9d));
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 71, 23, 90, 21}, "93b84b", true));
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 23, 20, 6, 19}, "fcad2b", 12014));
    }
}
