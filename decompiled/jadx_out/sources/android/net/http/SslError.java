package android.net.http;

import java.security.cert.X509Certificate;
import n.NPStringFog;

/* JADX INFO: loaded from: classes.dex */
public class SslError {
    public static final int SSL_DATE_INVALID = 4;
    public static final int SSL_EXPIRED = 1;
    public static final int SSL_IDMISMATCH = 2;
    public static final int SSL_INVALID = 5;

    @Deprecated
    public static final int SSL_MAX_ERROR = 6;
    public static final int SSL_NOTYETVALID = 0;
    public static final int SSL_UNTRUSTED = 3;

    @Deprecated
    public SslError(int i, SslCertificate sslCertificate) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 18, 66, 82, 18}, "9f7038", 2.0423059E9f));
    }

    public SslError(int i, SslCertificate sslCertificate, String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 67, 68, 86, 22}, "971478", true, false));
    }

    @Deprecated
    public SslError(int i, X509Certificate x509Certificate) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 64, 68, 83, 19}, "341121", -20940479L));
    }

    public SslError(int i, X509Certificate x509Certificate, String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{97, 68, 19, 81, 18}, "20f33b", 8.5945146E8f));
    }

    public boolean addError(int i) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 71, 16, 1, 69}, "93ecd7", true));
    }

    public SslCertificate getCertificate() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 67, 16, 83, 71}, "47e1f9", -1.3328096E9f));
    }

    public int getPrimaryError() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 64, 67, 80, 17}, "b46205", -1344423284L));
    }

    public String getUrl() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 77, 68, 80, 24}, "49129c", true));
    }

    public boolean hasError(int i) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 64, 23, 1, 24}, "34bc99", true, true));
    }

    public String toString() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 64, 71, 3, 17}, "542a02", -7.78214E7f));
    }
}
