package org.apache.http.impl.io;

import java.io.IOException;
import java.io.InputStream;
import n.NPStringFog;
import org.apache.http.io.HttpTransportMetrics;
import org.apache.http.io.SessionInputBuffer;
import org.apache.http.params.HttpParams;
import org.apache.http.util.CharArrayBuffer;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public abstract class AbstractSessionInputBuffer implements SessionInputBuffer {
    public AbstractSessionInputBuffer() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 70, 71, 83, 67}, "7221b7", 1032921546L));
    }

    protected int fillBuffer() throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 76, 76, 85, 18}, "a89736", true, false));
    }

    @Override // org.apache.http.io.SessionInputBuffer
    public HttpTransportMetrics getMetrics() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 66, 66, 82, 16}, "d67018", -662903153L));
    }

    protected boolean hasBufferedData() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 16, 66, 81, 17}, "bd730e", 1.90847038E9d));
    }

    protected void init(InputStream inputStream, int i, HttpParams httpParams) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 16, 16, 7, 67}, "3deeb1", -6.3253005E8f));
    }

    @Override // org.apache.http.io.SessionInputBuffer
    public int read() throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 23, 20, 83, 17}, "8ca10e", -1.734888587E9d));
    }

    @Override // org.apache.http.io.SessionInputBuffer
    public int read(byte[] bArr) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 18, 17, 85, 68}, "8fd7e0", true, false));
    }

    @Override // org.apache.http.io.SessionInputBuffer
    public int read(byte[] bArr, int i, int i2) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 23, 19, 86, 16}, "dcf411", 5.3346464E8f));
    }

    @Override // org.apache.http.io.SessionInputBuffer
    public int readLine(CharArrayBuffer charArrayBuffer) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{97, 66, 77, 6, 69}, "268dde", -17495));
    }

    @Override // org.apache.http.io.SessionInputBuffer
    public String readLine() throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 17, 70, 83, 21}, "9e314e", -4.115285E8f));
    }
}
