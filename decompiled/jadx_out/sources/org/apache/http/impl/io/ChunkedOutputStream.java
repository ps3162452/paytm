package org.apache.http.impl.io;

import java.io.IOException;
import java.io.OutputStream;
import n.NPStringFog;
import org.apache.http.io.SessionOutputBuffer;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class ChunkedOutputStream extends OutputStream {
    public ChunkedOutputStream(SessionOutputBuffer sessionOutputBuffer) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 67, 64, 0, 18}, "375b3d", 1747200850L));
    }

    public ChunkedOutputStream(SessionOutputBuffer sessionOutputBuffer, int i) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 77, 69, 0, 69}, "490bd4", 11901));
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 18, 17, 85, 71}, "4fd7f2", false, true));
    }

    public void finish() throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 18, 20, 87, 22}, "7fa57e", true, false));
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 23, 17, 85, 24}, "3cd797", -9.347459E8f));
    }

    protected void flushCache() throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 16, 17, 86, 66}, "4dd4c4", false));
    }

    protected void flushCacheWithAppend(byte[] bArr, int i, int i2) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 22, 22, 3, 24}, "bbca9d", false));
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 21, 77, 0, 69}, "8a8bd5", true));
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 22, 64, 80, 64}, "0b52a3", false, true));
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 64, 22, 3, 64}, "44caa8", 1.371592195E9d));
    }

    protected void writeClosingChunk() throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 68, 76, 80, 67}, "e092bf", 14446332L));
    }
}
