package android.net.http;

import n.NPStringFog;

/* JADX INFO: loaded from: classes.dex */
public class LoggingEventHandler implements EventHandler {
    public LoggingEventHandler() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 76, 76, 1, 66}, "a89cc9", 4.437921E8f));
    }

    @Override // android.net.http.EventHandler
    public void certificate(SslCertificate sslCertificate) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 23, 69, 85, 17}, "cc070d", -99430472L));
    }

    @Override // android.net.http.EventHandler
    public void data(byte[] bArr, int i) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 68, 22, 80, 23}, "70c26e", 28759));
    }

    @Override // android.net.http.EventHandler
    public void endData() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 23, 68, 1, 21}, "5c1c42", 406603319L));
    }

    @Override // android.net.http.EventHandler
    public void error(int i, String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 23, 16, 0, 16}, "9ceb15", 1.9998E9f));
    }

    @Override // android.net.http.EventHandler
    public boolean handleSslErrorRequest(SslError sslError) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 64, 77, 86, 22}, "84847a", 519458184L));
    }

    @Override // android.net.http.EventHandler
    public void headers(Headers headers) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 66, 20, 87, 22}, "e6a578", 1.4248479E9f));
    }

    public void locationChanged(String str, boolean z) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 64, 17, 0, 67}, "f4dbb8", 2893));
    }

    public void requestSent() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 16, 23, 4, 20}, "8dbf56", -1.296932183E9d));
    }

    @Override // android.net.http.EventHandler
    public void status(int i, int i2, int i3, String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 65, 77, 86, 64}, "b584ac", true, true));
    }
}
