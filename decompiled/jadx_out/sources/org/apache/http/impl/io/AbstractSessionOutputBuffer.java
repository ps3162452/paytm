package org.apache.http.impl.io;

import java.io.IOException;
import java.io.OutputStream;
import n.NPStringFog;
import org.apache.http.io.HttpTransportMetrics;
import org.apache.http.io.SessionOutputBuffer;
import org.apache.http.params.HttpParams;
import org.apache.http.util.CharArrayBuffer;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public abstract class AbstractSessionOutputBuffer implements SessionOutputBuffer {
    public AbstractSessionOutputBuffer() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 68, 68, 83, 25}, "001187", false));
    }

    @Override // org.apache.http.io.SessionOutputBuffer
    public void flush() throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 22, 17, 82, 24}, "8bd09c", 4.5567942E8f));
    }

    protected void flushBuffer() throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 65, 67, 87, 24}, "c56591", false, false));
    }

    @Override // org.apache.http.io.SessionOutputBuffer
    public HttpTransportMetrics getMetrics() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 67, 77, 82, 21}, "778042", 9.538594E7f));
    }

    protected void init(OutputStream outputStream, int i, HttpParams httpParams) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 16, 67, 6, 24}, "4d6d9f", true));
    }

    @Override // org.apache.http.io.SessionOutputBuffer
    public void write(int i) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 18, 70, 85, 19}, "1f3726", 14805));
    }

    @Override // org.apache.http.io.SessionOutputBuffer
    public void write(byte[] bArr) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 70, 66, 4, 25}, "d27f81", -1.342562E8f));
    }

    @Override // org.apache.http.io.SessionOutputBuffer
    public void write(byte[] bArr, int i, int i2) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 67, 70, 83, 20}, "c73154", -8.9106081E8d));
    }

    @Override // org.apache.http.io.SessionOutputBuffer
    public void writeLine(String str) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 64, 64, 81, 69}, "8453d1", false));
    }

    @Override // org.apache.http.io.SessionOutputBuffer
    public void writeLine(CharArrayBuffer charArrayBuffer) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{97, 16, 68, 80, 69}, "2d12d1", 549028042L));
    }
}
