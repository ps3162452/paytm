package okhttp3.internal.platform;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;
import n.NPStringFog;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import okhttp3.internal.tls.BasicCertificateChainCleaner;
import okhttp3.internal.tls.BasicTrustRootIndex;
import okhttp3.internal.tls.CertificateChainCleaner;
import okhttp3.internal.tls.TrustRootIndex;
import okio.Buffer;

/* JADX INFO: loaded from: classes62.dex */
public class Platform {
    public static final int INFO = 4;
    public static final int WARN = 5;
    private static final Platform PLATFORM = findPlatform();
    private static final Logger logger = Logger.getLogger(OkHttpClient.class.getName());

    public static List<String> alpnProtocolNames(List<Protocol> list) {
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Protocol protocol = list.get(i);
            if (protocol != Protocol.HTTP_1_0) {
                arrayList.add(protocol.toString());
            }
        }
        return arrayList;
    }

    static byte[] concatLengthPrefixed(List<Protocol> list) {
        Buffer buffer = new Buffer();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Protocol protocol = list.get(i);
            if (protocol != Protocol.HTTP_1_0) {
                buffer.writeByte(protocol.toString().length());
                buffer.writeUtf8(protocol.toString());
            }
        }
        return buffer.readByteArray();
    }

    private static Platform findPlatform() {
        Platform platformBuildIfSupported = AndroidPlatform.buildIfSupported();
        if (platformBuildIfSupported != null) {
            return platformBuildIfSupported;
        }
        Jdk9Platform jdk9PlatformBuildIfSupported = Jdk9Platform.buildIfSupported();
        if (jdk9PlatformBuildIfSupported != null) {
            return jdk9PlatformBuildIfSupported;
        }
        Platform platformBuildIfSupported2 = JdkWithJettyBootPlatform.buildIfSupported();
        return platformBuildIfSupported2 == null ? new Platform() : platformBuildIfSupported2;
    }

    public static Platform get() {
        return PLATFORM;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:?, code lost:
    
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static <T> T readFieldOrNull(java.lang.Object r5, java.lang.Class<T> r6, java.lang.String r7) {
        /*
            r4 = 8
            r1 = 0
            java.lang.Class r0 = r5.getClass()
        L7:
            java.lang.Class<java.lang.Object> r2 = java.lang.Object.class
            if (r0 == r2) goto L33
            java.lang.reflect.Field r2 = r0.getDeclaredField(r7)     // Catch: java.lang.IllegalAccessException -> L26 java.lang.NoSuchFieldException -> L2d
            r3 = 1
            r2.setAccessible(r3)     // Catch: java.lang.IllegalAccessException -> L26 java.lang.NoSuchFieldException -> L2d
            java.lang.Object r2 = r2.get(r5)     // Catch: java.lang.IllegalAccessException -> L26 java.lang.NoSuchFieldException -> L2d
            if (r2 == 0) goto L62
            boolean r3 = r6.isInstance(r2)     // Catch: java.lang.IllegalAccessException -> L26 java.lang.NoSuchFieldException -> L2d
            if (r3 != 0) goto L21
            r0 = r1
        L20:
            return r0
        L21:
            java.lang.Object r0 = r6.cast(r2)     // Catch: java.lang.IllegalAccessException -> L26 java.lang.NoSuchFieldException -> L2d
            goto L20
        L26:
            r0 = move-exception
            java.lang.AssertionError r0 = new java.lang.AssertionError
            r0.<init>()
            throw r0
        L2d:
            r2 = move-exception
            java.lang.Class r0 = r0.getSuperclass()
            goto L7
        L33:
            byte[] r0 = new byte[r4]
            r0 = {x0064: FILL_ARRAY_DATA , data: [2, 80, 84, 92, 86, 7, 18, 80} // fill-array
            java.lang.String r2 = "f5891f"
            r3 = -827921728(0xffffffffcea6eac0, float:-1.4002012E9)
            java.lang.String r0 = n.NPStringFog.decode(r0, r2, r3)
            boolean r0 = r7.equals(r0)
            if (r0 != 0) goto L62
            java.lang.Class<java.lang.Object> r0 = java.lang.Object.class
            byte[] r2 = new byte[r4]
            r2 = {x006c: FILL_ARRAY_DATA , data: [81, 87, 13, 1, 84, 3, 65, 87} // fill-array
            java.lang.String r3 = "52ad3b"
            r4 = -831246657(0xffffffffce742ebf, float:-1.02417606E9)
            java.lang.String r2 = n.NPStringFog.decode(r2, r3, r4)
            java.lang.Object r0 = readFieldOrNull(r5, r0, r2)
            if (r0 == 0) goto L62
            java.lang.Object r0 = readFieldOrNull(r0, r6, r7)
            goto L20
        L62:
            r0 = r1
            goto L20
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.platform.Platform.readFieldOrNull(java.lang.Object, java.lang.Class, java.lang.String):java.lang.Object");
    }

    public void afterHandshake(SSLSocket sSLSocket) {
    }

    public CertificateChainCleaner buildCertificateChainCleaner(SSLSocketFactory sSLSocketFactory) {
        X509TrustManager x509TrustManagerTrustManager = trustManager(sSLSocketFactory);
        if (x509TrustManagerTrustManager == null) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{51, 87, 83, 87, 94, 7, 70, 77, 93, 21, 87, 26, 18, 75, 83, 86, 70, 66, 18, 81, 87, 21, 70, 16, 19, 74, 70, 21, 95, 3, 8, 88, 85, 80, 64, 66, 9, 87, 18}, "f9252b", true) + get() + NPStringFog.decode(new byte[]{24, 21, 71, 65, 10, 103, 91, 86, 95, 87, 18, 114, 85, 86, 64, 93, 20, 77, 20, 92, 71, 18}, "4542f4", 1.264172E9f) + sSLSocketFactory.getClass());
        }
        return buildCertificateChainCleaner(x509TrustManagerTrustManager);
    }

    public CertificateChainCleaner buildCertificateChainCleaner(X509TrustManager x509TrustManager) {
        return new BasicCertificateChainCleaner(buildTrustRootIndex(x509TrustManager));
    }

    public TrustRootIndex buildTrustRootIndex(X509TrustManager x509TrustManager) {
        return new BasicTrustRootIndex(x509TrustManager.getAcceptedIssuers());
    }

    public void configureTlsExtensions(SSLSocket sSLSocket, String str, List<Protocol> list) {
    }

    public void connectSocket(Socket socket, InetSocketAddress inetSocketAddress, int i) throws IOException {
        socket.connect(inetSocketAddress, i);
    }

    public String getPrefix() {
        return NPStringFog.decode(new byte[]{121, 89, 127, 68, 66, 73}, "627069", -28043);
    }

    public String getSelectedProtocol(SSLSocket sSLSocket) {
        return null;
    }

    public Object getStackTraceForCloseable(String str) {
        if (logger.isLoggable(Level.FINE)) {
            return new Throwable(str);
        }
        return null;
    }

    public boolean isCleartextTrafficPermitted(String str) {
        return true;
    }

    public void log(int i, String str, Throwable th) {
        logger.log(i == 5 ? Level.WARNING : Level.INFO, str, th);
    }

    public void logCloseableLeak(String str, Object obj) {
        if (obj == null) {
            str = str + NPStringFog.decode(new byte[]{67, 50, 87, 24, 75, 84, 6, 70, 79, 80, 93, 67, 6, 70, 76, 80, 81, 66, 67, 17, 89, 75, 24, 80, 15, 10, 87, 91, 89, 69, 6, 2, 20, 24, 75, 84, 23, 70, 76, 80, 93, 17, 44, 13, 112, 76, 76, 65, 32, 10, 81, 93, 86, 69, 67, 10, 87, 95, 95, 84, 17, 70, 84, 93, 78, 84, 15, 70, 76, 87, 24, 119, 42, 40, 125, 2, 24, 125, 12, 1, 95, 93, 74, 31, 4, 3, 76, 116, 87, 86, 4, 3, 74, 16, 119, 90, 43, 18, 76, 72, 123, 93, 10, 3, 86, 76, 22, 82, 15, 7, 75, 75, 22, 86, 6, 18, 118, 89, 85, 84, 75, 79, 17, 22, 75, 84, 23, 42, 93, 78, 93, 93, 75, 42, 93, 78, 93, 93, 77, 32, 113, 118, 125, 24, 88}, "cf8881", 32511);
        }
        log(5, str, (Throwable) obj);
    }

    protected X509TrustManager trustManager(SSLSocketFactory sSLSocketFactory) {
        try {
            Object fieldOrNull = readFieldOrNull(sSLSocketFactory, Class.forName(NPStringFog.decode(new byte[]{23, 65, 91, 75, 69, 87, 7, 65, 71, 12, 66, 75, 74, 71, 70, 9, 24, 97, 55, 120, 118, 10, 88, 70, 1, 76, 65, 44, 91, 66, 8}, "d45e62", -1.6635427E9f)), NPStringFog.decode(new byte[]{2, 14, 15, 23, 1, 76, 21}, "aaacd4", 1.29988707E8d));
            if (fieldOrNull == null) {
                return null;
            }
            return (X509TrustManager) readFieldOrNull(fieldOrNull, X509TrustManager.class, NPStringFog.decode(new byte[]{22, 23, 76, 71, 22, 117, 3, 11, 88, 83, 7, 74}, "be94b8", 1052836418L));
        } catch (ClassNotFoundException e) {
            return null;
        }
    }
}
