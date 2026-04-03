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
public class SocketHttpServerConnection extends AbstractHttpServerConnection implements HttpInetConnection {
    public SocketHttpServerConnection() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{97, 65, 77, 3, 17}, "258a00", 27541));
    }

    protected void assertNotOpen() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 66, 70, 80, 21}, "d63247", 9.47447901E8d));
    }

    @Override // org.apache.http.impl.AbstractHttpServerConnection
    protected void assertOpen() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 18, 23, 91, 69}, "4fb9d2", 1.5704844E9f));
    }

    protected void bind(Socket socket, HttpParams httpParams) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 18, 22, 80, 18}, "4fc230", 21457));
    }

    @Override // org.apache.http.HttpConnection
    public void close() throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 64, 19, 90, 64}, "04f8a1", 97269371L));
    }

    protected SessionInputBuffer createHttpDataReceiver(Socket socket, int i, HttpParams httpParams) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 18, 22, 85, 64}, "ffc7a1", 11595));
    }

    protected SessionOutputBuffer createHttpDataTransmitter(Socket socket, int i, HttpParams httpParams) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 77, 76, 91, 64}, "8999a6", false));
    }

    @Override // org.apache.http.HttpInetConnection
    public InetAddress getLocalAddress() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 64, 16, 81, 18}, "44e334", true));
    }

    @Override // org.apache.http.HttpInetConnection
    public int getLocalPort() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 21, 66, 85, 66}, "1a77cc", true));
    }

    @Override // org.apache.http.HttpInetConnection
    public InetAddress getRemoteAddress() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 67, 19, 7, 25}, "17fe87", 1.72347962E9d));
    }

    @Override // org.apache.http.HttpInetConnection
    public int getRemotePort() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 69, 19, 81, 21}, "a1f34f", 1.430783693E9d));
    }

    protected Socket getSocket() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 23, 17, 3, 16}, "9cda1f", true, true));
    }

    @Override // org.apache.http.HttpConnection
    public int getSocketTimeout() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 65, 17, 87, 69}, "65d5d5", 1.9202574E9f));
    }

    @Override // org.apache.http.HttpConnection
    public boolean isOpen() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 70, 67, 87, 64}, "8265af", true));
    }

    @Override // org.apache.http.HttpConnection
    public void setSocketTimeout(int i) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 68, 66, 82, 21}, "507046", false));
    }

    @Override // org.apache.http.HttpConnection
    public void shutdown() throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 76, 71, 7, 69}, "582edc", false));
    }
}
