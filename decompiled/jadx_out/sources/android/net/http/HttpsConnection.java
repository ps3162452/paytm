package android.net.http;

import android.content.Context;
import java.io.File;
import n.NPStringFog;
import org.apache.http.HttpHost;

/* JADX INFO: loaded from: classes.dex */
public class HttpsConnection extends Connection {
    protected SslCertificate mCertificate;
    protected AndroidHttpClientConnection mHttpClientConnection;

    HttpsConnection() {
        super((Context) null, (HttpHost) null, (RequestFeeder) null);
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 17, 68, 1, 67}, "5e1cb9", -1.7590534E9f));
    }

    public static void initializeEngine(File file) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 18, 68, 81, 18}, "6f133b", 8.306653E8f));
    }

    @Override // android.net.http.Connection
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }
}
