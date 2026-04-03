package org.apache.http.impl.io;

import java.io.IOException;
import java.io.InputStream;
import n.NPStringFog;
import org.apache.http.Header;
import org.apache.http.io.SessionInputBuffer;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class ChunkedInputStream extends InputStream {
    public ChunkedInputStream(SessionInputBuffer sessionInputBuffer) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 70, 19, 90, 22}, "e2f874", 3.98047494E8d));
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 67, 20, 82, 22}, "17a07a", true, true));
    }

    public Header[] getFooters() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 18, 17, 6, 17}, "3fdd00", -1503243654L));
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 16, 17, 85, 18}, "1dd73c", -1994489774L));
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 66, 76, 83, 16}, "66911a", 28531));
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 65, 65, 7, 22}, "d54e70", false, true));
    }
}
