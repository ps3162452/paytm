package org.apache.http.impl.conn;

import java.io.IOException;
import java.net.Socket;
import n.NPStringFog;
import org.apache.http.HttpException;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseFactory;
import org.apache.http.conn.OperatedClientConnection;
import org.apache.http.impl.SocketHttpClientConnection;
import org.apache.http.io.HttpMessageParser;
import org.apache.http.io.SessionInputBuffer;
import org.apache.http.io.SessionOutputBuffer;
import org.apache.http.params.HttpParams;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class DefaultClientConnection extends SocketHttpClientConnection implements OperatedClientConnection {
    public DefaultClientConnection() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 22, 20, 1, 20}, "6bac51", 2126505988L));
    }

    @Override // org.apache.http.impl.SocketHttpClientConnection, org.apache.http.HttpConnection
    public void close() throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 65, 65, 87, 20}, "354550", 1.52016423E9d));
    }

    @Override // org.apache.http.impl.AbstractHttpClientConnection
    protected HttpMessageParser createResponseParser(SessionInputBuffer sessionInputBuffer, HttpResponseFactory httpResponseFactory, HttpParams httpParams) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 17, 71, 91, 68}, "9e29e2", 2.079515581E9d));
    }

    @Override // org.apache.http.impl.SocketHttpClientConnection
    protected SessionInputBuffer createSessionInputBuffer(Socket socket, int i, HttpParams httpParams) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 66, 69, 85, 22}, "d6077d", 7.764003E7d));
    }

    @Override // org.apache.http.impl.SocketHttpClientConnection
    protected SessionOutputBuffer createSessionOutputBuffer(Socket socket, int i, HttpParams httpParams) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 23, 17, 90, 24}, "bcd89b", false));
    }

    @Override // org.apache.http.impl.SocketHttpClientConnection, org.apache.http.conn.OperatedClientConnection
    public final Socket getSocket() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 70, 66, 80, 19}, "62722a", -2.085848898E9d));
    }

    @Override // org.apache.http.conn.OperatedClientConnection
    public final HttpHost getTargetHost() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 71, 69, 87, 24}, "c30597", false, true));
    }

    @Override // org.apache.http.conn.OperatedClientConnection
    public final boolean isSecure() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 68, 76, 6, 67}, "e09db5", 329866915L));
    }

    @Override // org.apache.http.conn.OperatedClientConnection
    public void openCompleted(boolean z, HttpParams httpParams) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 70, 68, 80, 22}, "82127a", -21841));
    }

    @Override // org.apache.http.conn.OperatedClientConnection
    public void opening(Socket socket, HttpHost httpHost) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 71, 20, 82, 69}, "63a0d1", true, false));
    }

    @Override // org.apache.http.impl.AbstractHttpClientConnection, org.apache.http.HttpClientConnection
    public HttpResponse receiveResponseHeader() throws HttpException, IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 64, 20, 0, 21}, "d4ab45", true, false));
    }

    @Override // org.apache.http.impl.AbstractHttpClientConnection, org.apache.http.HttpClientConnection
    public void sendRequestHeader(HttpRequest httpRequest) throws HttpException, IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 67, 69, 81, 24}, "170396", 6.53156676E8d));
    }

    @Override // org.apache.http.impl.SocketHttpClientConnection, org.apache.http.HttpConnection
    public void shutdown() throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 67, 65, 82, 17}, "e7400f", -7.65179246E8d));
    }

    @Override // org.apache.http.conn.OperatedClientConnection
    public void update(Socket socket, HttpHost httpHost, boolean z, HttpParams httpParams) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 21, 16, 1, 19}, "0aec2c", false));
    }
}
