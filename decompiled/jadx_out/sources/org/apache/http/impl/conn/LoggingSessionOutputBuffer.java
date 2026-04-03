package org.apache.http.impl.conn;

import java.io.IOException;
import n.NPStringFog;
import org.apache.http.io.HttpTransportMetrics;
import org.apache.http.io.SessionOutputBuffer;
import org.apache.http.util.CharArrayBuffer;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class LoggingSessionOutputBuffer implements SessionOutputBuffer {
    public LoggingSessionOutputBuffer(SessionOutputBuffer sessionOutputBuffer, Wire wire) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 21, 17, 91, 24}, "6ad999", 1966724094L));
    }

    @Override // org.apache.http.io.SessionOutputBuffer
    public void flush() throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 71, 76, 85, 17}, "83970b", 1939406912L));
    }

    @Override // org.apache.http.io.SessionOutputBuffer
    public HttpTransportMetrics getMetrics() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 65, 22, 1, 17}, "05cc02", false));
    }

    @Override // org.apache.http.io.SessionOutputBuffer
    public void write(int i) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 76, 77, 84, 68}, "d886e2", 6476));
    }

    @Override // org.apache.http.io.SessionOutputBuffer
    public void write(byte[] bArr) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 17, 65, 87, 66}, "8e45c2", false, false));
    }

    @Override // org.apache.http.io.SessionOutputBuffer
    public void write(byte[] bArr, int i, int i2) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 22, 71, 6, 19}, "6b2d29", -1913));
    }

    @Override // org.apache.http.io.SessionOutputBuffer
    public void writeLine(String str) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 66, 16, 80, 71}, "a6e2f6", -19565));
    }

    @Override // org.apache.http.io.SessionOutputBuffer
    public void writeLine(CharArrayBuffer charArrayBuffer) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 16, 64, 90, 71}, "fd58f1", 1.127578E9f));
    }
}
