package org.apache.http.impl;

import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import n.NPStringFog;
import org.apache.http.HttpInetConnection;
import org.apache.http.io.SessionInputBuffer;
import org.apache.http.io.SessionOutputBuffer;
import org.apache.http.params.HttpParams;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class SocketHttpClientConnection extends AbstractHttpClientConnection implements HttpInetConnection {
    public SocketHttpClientConnection() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 76, 17, 6, 18}, "18dd32", 1.589538765E9d));
    }

    protected void assertNotOpen() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 16, 67, 6, 18}, "fd6d31", 3602));
    }

    @Override // org.apache.http.impl.AbstractHttpClientConnection
    protected void assertOpen() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 67, 20, 81, 19}, "e7a322", -227574349L));
    }

    protected void bind(Socket socket, HttpParams httpParams) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 64, 68, 91, 22}, "541974", -1.8439397E9f));
    }

    @Override // org.apache.http.HttpConnection
    public void close() throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 21, 19, 84, 16}, "baf612", 1.822243777E9d));
    }

    protected SessionInputBuffer createSessionInputBuffer(Socket socket, int i, HttpParams httpParams) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 64, 66, 91, 68}, "7479e2", 25137));
    }

    protected SessionOutputBuffer createSessionOutputBuffer(Socket socket, int i, HttpParams httpParams) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 70, 66, 86, 18}, "92743f", 7079));
    }

    @Override // org.apache.http.HttpInetConnection
    public InetAddress getLocalAddress() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 66, 71, 85, 68}, "6627ed", 9.0144915E8f));
    }

    @Override // org.apache.http.HttpInetConnection
    public int getLocalPort() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 68, 65, 3, 67}, "f04aba", true));
    }

    @Override // org.apache.http.HttpInetConnection
    public InetAddress getRemoteAddress() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 69, 20, 85, 25}, "71a787", 7.40737646E8d));
    }

    @Override // org.apache.http.HttpInetConnection
    public int getRemotePort() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 18, 76, 7, 64}, "0f9ea3", false, true));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Socket getSocket() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 18, 22, 7, 67}, "6fceb0", false));
    }

    @Override // org.apache.http.HttpConnection
    public int getSocketTimeout() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 71, 64, 3, 25}, "b35a83", -1.112364215E9d));
    }

    @Override // org.apache.http.HttpConnection
    public boolean isOpen() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{97, 71, 70, 3, 20}, "233a51", -1.0708852E7d));
    }

    @Override // org.apache.http.HttpConnection
    public void setSocketTimeout(int i) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 65, 71, 81, 19}, "952326", 1.65289584E8d));
    }

    @Override // org.apache.http.HttpConnection
    public void shutdown() throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 16, 67, 86, 22}, "ad6470", 433350535L));
    }
}
