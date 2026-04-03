package org.apache.http.impl.conn;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.InetAddress;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLSession;
import n.NPStringFog;
import org.apache.http.HttpConnectionMetrics;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpException;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.ManagedClientConnection;
import org.apache.http.conn.OperatedClientConnection;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public abstract class AbstractClientConnAdapter implements ManagedClientConnection {
    protected AbstractClientConnAdapter(ClientConnectionManager clientConnectionManager, OperatedClientConnection operatedClientConnection) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 70, 76, 1, 23}, "c29c66", true));
    }

    @Override // org.apache.http.conn.ConnectionReleaseTrigger
    public void abortConnection() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 77, 20, 85, 67}, "59a7b0", true));
    }

    protected final void assertNotAborted() throws InterruptedIOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 67, 22, 86, 20}, "17c45d", 763461192L));
    }

    protected final void assertValid(OperatedClientConnection operatedClientConnection) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 22, 16, 82, 71}, "fbe0f3", 1.733234201E9d));
    }

    protected void detach() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 22, 70, 1, 21}, "8b3c4b", -16745));
    }

    @Override // org.apache.http.HttpClientConnection
    public void flush() throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 67, 65, 6, 68}, "174de3", true));
    }

    @Override // org.apache.http.HttpInetConnection
    public InetAddress getLocalAddress() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 22, 22, 83, 24}, "9bc193", -19206));
    }

    @Override // org.apache.http.HttpInetConnection
    public int getLocalPort() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 65, 71, 87, 20}, "452557", 4762));
    }

    protected ClientConnectionManager getManager() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 68, 64, 3, 69}, "905adc", 5.1710215E7d));
    }

    @Override // org.apache.http.HttpConnection
    public HttpConnectionMetrics getMetrics() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 16, 69, 91, 19}, "cd0921", 1260465308L));
    }

    @Override // org.apache.http.HttpInetConnection
    public InetAddress getRemoteAddress() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 22, 77, 80, 16}, "8b821b", 1.995331343E9d));
    }

    @Override // org.apache.http.HttpInetConnection
    public int getRemotePort() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 66, 66, 83, 21}, "567149", 1.500039681E9d));
    }

    @Override // org.apache.http.conn.ManagedClientConnection
    public SSLSession getSSLSession() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 71, 16, 81, 69}, "63e3d0", -1.25548856E8f));
    }

    @Override // org.apache.http.HttpConnection
    public int getSocketTimeout() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 67, 77, 7, 18}, "f78e38", false));
    }

    protected OperatedClientConnection getWrappedConnection() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 69, 17, 86, 21}, "91d44f", -1221968537L));
    }

    @Override // org.apache.http.conn.ManagedClientConnection
    public boolean isMarkedReusable() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 65, 77, 0, 20}, "b58b58", false, false));
    }

    @Override // org.apache.http.HttpConnection
    public boolean isOpen() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 17, 67, 1, 24}, "fe6c9c", false, false));
    }

    @Override // org.apache.http.HttpClientConnection
    public boolean isResponseAvailable(int i) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 64, 70, 80, 16}, "74321f", 1696445168L));
    }

    @Override // org.apache.http.conn.ManagedClientConnection
    public boolean isSecure() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 22, 20, 84, 66}, "bba6cf", -1.158520616E9d));
    }

    @Override // org.apache.http.HttpConnection
    public boolean isStale() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{97, 23, 17, 80, 71}, "2cd2fa", 10274394L));
    }

    @Override // org.apache.http.conn.ManagedClientConnection
    public void markReusable() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 77, 16, 6, 17}, "79ed09", -1691401335L));
    }

    @Override // org.apache.http.HttpClientConnection
    public void receiveResponseEntity(HttpResponse httpResponse) throws HttpException, IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 67, 66, 4, 67}, "477fbe", false));
    }

    @Override // org.apache.http.HttpClientConnection
    public HttpResponse receiveResponseHeader() throws HttpException, IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 66, 71, 0, 64}, "862baa", -2.125095228E9d));
    }

    @Override // org.apache.http.conn.ConnectionReleaseTrigger
    public void releaseConnection() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 65, 76, 87, 22}, "e59570", 27742));
    }

    @Override // org.apache.http.HttpClientConnection
    public void sendRequestEntity(HttpEntityEnclosingRequest httpEntityEnclosingRequest) throws HttpException, IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 64, 16, 4, 68}, "84efe1", false, false));
    }

    @Override // org.apache.http.HttpClientConnection
    public void sendRequestHeader(HttpRequest httpRequest) throws HttpException, IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 68, 71, 80, 67}, "4022b6", true, false));
    }

    @Override // org.apache.http.conn.ManagedClientConnection
    public void setIdleDuration(long j, TimeUnit timeUnit) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 22, 16, 86, 64}, "4be4a9", 1.8223814E8f));
    }

    @Override // org.apache.http.HttpConnection
    public void setSocketTimeout(int i) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 65, 64, 80, 17}, "c5520f", true, true));
    }

    @Override // org.apache.http.conn.ManagedClientConnection
    public void unmarkReusable() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 76, 67, 84, 23}, "486660", 1.35416094E9d));
    }
}
