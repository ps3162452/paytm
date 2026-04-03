package org.apache.http.impl.conn;

import java.io.IOException;
import n.NPStringFog;
import org.apache.http.io.HttpTransportMetrics;
import org.apache.http.io.SessionInputBuffer;
import org.apache.http.util.CharArrayBuffer;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class LoggingSessionInputBuffer implements SessionInputBuffer {
    public LoggingSessionInputBuffer(SessionInputBuffer sessionInputBuffer, Wire wire) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 16, 22, 86, 18}, "5dc43f", -2.78406722E8d));
    }

    @Override // org.apache.http.io.SessionInputBuffer
    public HttpTransportMetrics getMetrics() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 23, 66, 6, 68}, "ec7de7", false));
    }

    @Override // org.apache.http.io.SessionInputBuffer
    public boolean isDataAvailable(int i) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 17, 77, 83, 16}, "be8116", false));
    }

    @Override // org.apache.http.io.SessionInputBuffer
    public int read() throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 77, 20, 91, 23}, "39a960", true));
    }

    @Override // org.apache.http.io.SessionInputBuffer
    public int read(byte[] bArr) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 70, 76, 4, 17}, "b29f00", true));
    }

    @Override // org.apache.http.io.SessionInputBuffer
    public int read(byte[] bArr, int i, int i2) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 68, 68, 6, 71}, "d01df6", true));
    }

    @Override // org.apache.http.io.SessionInputBuffer
    public int readLine(CharArrayBuffer charArrayBuffer) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 69, 77, 87, 20}, "d18558", true, true));
    }

    @Override // org.apache.http.io.SessionInputBuffer
    public String readLine() throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{97, 21, 77, 81, 66}, "2a83c8", 2.09608347E9d));
    }
}
