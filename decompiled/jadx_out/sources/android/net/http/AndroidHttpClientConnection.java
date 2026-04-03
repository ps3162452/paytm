package android.net.http;

import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import n.NPStringFog;
import org.apache.http.HttpConnection;
import org.apache.http.HttpConnectionMetrics;
import org.apache.http.HttpEntity;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpInetConnection;
import org.apache.http.HttpRequest;
import org.apache.http.ParseException;
import org.apache.http.StatusLine;
import org.apache.http.params.HttpParams;

/* JADX INFO: loaded from: classes.dex */
public class AndroidHttpClientConnection implements HttpInetConnection, HttpConnection {
    public AndroidHttpClientConnection() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 66, 68, 81, 69}, "b613d9", -1.798782702E9d));
    }

    public void bind(Socket socket, HttpParams httpParams) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 17, 69, 1, 67}, "7e0cbc", 8.50606423E8d));
    }

    @Override // org.apache.http.HttpConnection
    public void close() throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 77, 22, 85, 21}, "e9c74a", false));
    }

    protected void doFlush() throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 66, 67, 6, 66}, "566dc7", true));
    }

    public void flush() throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 71, 77, 80, 20}, "d3825f", false));
    }

    @Override // org.apache.http.HttpInetConnection
    public InetAddress getLocalAddress() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 67, 19, 0, 68}, "b7fbe7", 1.936785E9f));
    }

    @Override // org.apache.http.HttpInetConnection
    public int getLocalPort() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 22, 70, 7, 19}, "0b3e2c", -800910228L));
    }

    @Override // org.apache.http.HttpConnection
    public HttpConnectionMetrics getMetrics() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 65, 64, 85, 20}, "d55758", -1.437363E9f));
    }

    @Override // org.apache.http.HttpInetConnection
    public InetAddress getRemoteAddress() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 16, 64, 85, 24}, "8d579f", -26374));
    }

    @Override // org.apache.http.HttpInetConnection
    public int getRemotePort() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 69, 16, 6, 22}, "01ed76", 1.7899608E8f));
    }

    @Override // org.apache.http.HttpConnection
    public int getSocketTimeout() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 18, 66, 82, 24}, "7f7099", 9.670184E8f));
    }

    @Override // org.apache.http.HttpConnection
    public boolean isOpen() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 68, 69, 86, 21}, "c00440", 2290));
    }

    @Override // org.apache.http.HttpConnection
    public boolean isStale() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 67, 67, 85, 67}, "8767b4", -1.305395592E9d));
    }

    public StatusLine parseResponseHeader(Headers headers) throws ParseException, IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 64, 17, 80, 17}, "b4d20f", -272604228L));
    }

    public HttpEntity receiveResponseEntity(Headers headers) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 64, 16, 6, 19}, "04ed21", -1.132314295E9d));
    }

    public void sendRequestEntity(HttpEntityEnclosingRequest httpEntityEnclosingRequest) throws org.apache.http.HttpException, IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 17, 68, 87, 68}, "fe15e5", 670511991L));
    }

    public void sendRequestHeader(HttpRequest httpRequest) throws org.apache.http.HttpException, IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 71, 16, 1, 19}, "33ec2e", false, true));
    }

    @Override // org.apache.http.HttpConnection
    public void setSocketTimeout(int i) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 16, 19, 0, 25}, "9dfb88", 2.0692063E9f));
    }

    @Override // org.apache.http.HttpConnection
    public void shutdown() throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 18, 68, 80, 20}, "3f125d", true, false));
    }

    public String toString() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 21, 70, 91, 21}, "6a394c", true));
    }
}
