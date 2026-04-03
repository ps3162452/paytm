package okhttp3.internal.platform;

import android.os.Build;
import android.util.Log;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.Security;
import java.security.cert.Certificate;
import java.security.cert.TrustAnchor;
import java.security.cert.X509Certificate;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;
import n.NPStringFog;
import okhttp3.Protocol;
import okhttp3.internal.Util;
import okhttp3.internal.tls.CertificateChainCleaner;
import okhttp3.internal.tls.TrustRootIndex;

/* JADX INFO: loaded from: classes62.dex */
class AndroidPlatform extends Platform {
    private static final int MAX_LOG_LENGTH = 4000;
    private final CloseGuard closeGuard = CloseGuard.get();
    private final OptionalMethod<Socket> getAlpnSelectedProtocol;
    private final OptionalMethod<Socket> setAlpnProtocols;
    private final OptionalMethod<Socket> setHostname;
    private final OptionalMethod<Socket> setUseSessionTickets;
    private final Class<?> sslParametersClass;

    static final class AndroidCertificateChainCleaner extends CertificateChainCleaner {
        private final Method checkServerTrusted;
        private final Object x509TrustManagerExtensions;

        AndroidCertificateChainCleaner(Object obj, Method method) {
            this.x509TrustManagerExtensions = obj;
            this.checkServerTrusted = method;
        }

        @Override // okhttp3.internal.tls.CertificateChainCleaner
        public List<Certificate> clean(List<Certificate> list, String str) throws SSLPeerUnverifiedException {
            try {
                return (List) this.checkServerTrusted.invoke(this.x509TrustManagerExtensions, (X509Certificate[]) list.toArray(new X509Certificate[list.size()]), NPStringFog.decode(new byte[]{107, 106, 121}, "9985a7", -30992), str);
            } catch (IllegalAccessException e) {
                throw new AssertionError(e);
            } catch (InvocationTargetException e2) {
                SSLPeerUnverifiedException sSLPeerUnverifiedException = new SSLPeerUnverifiedException(e2.getMessage());
                sSLPeerUnverifiedException.initCause(e2);
                throw sSLPeerUnverifiedException;
            }
        }

        public boolean equals(Object obj) {
            return obj instanceof AndroidCertificateChainCleaner;
        }

        public int hashCode() {
            return 0;
        }
    }

    static final class AndroidTrustRootIndex implements TrustRootIndex {
        private final Method findByIssuerAndSignatureMethod;
        private final X509TrustManager trustManager;

        AndroidTrustRootIndex(X509TrustManager x509TrustManager, Method method) {
            this.findByIssuerAndSignatureMethod = method;
            this.trustManager = x509TrustManager;
        }

        public boolean equals(Object obj) {
            if (obj != this) {
                if (!(obj instanceof AndroidTrustRootIndex)) {
                    return false;
                }
                AndroidTrustRootIndex androidTrustRootIndex = (AndroidTrustRootIndex) obj;
                if (!this.trustManager.equals(androidTrustRootIndex.trustManager) || !this.findByIssuerAndSignatureMethod.equals(androidTrustRootIndex.findByIssuerAndSignatureMethod)) {
                    return false;
                }
            }
            return true;
        }

        @Override // okhttp3.internal.tls.TrustRootIndex
        public X509Certificate findByIssuerAndSignature(X509Certificate x509Certificate) {
            try {
                TrustAnchor trustAnchor = (TrustAnchor) this.findByIssuerAndSignatureMethod.invoke(this.trustManager, x509Certificate);
                if (trustAnchor != null) {
                    return trustAnchor.getTrustedCert();
                }
                return null;
            } catch (IllegalAccessException e) {
                throw Util.assertionError(NPStringFog.decode(new byte[]{69, 95, 87, 86, 9, 86, 16, 69, 89, 20, 2, 86, 68, 17, 95, 71, 22, 70, 85, 66, 22, 85, 11, 87, 16, 66, 95, 83, 11, 82, 68, 68, 68, 81}, "0164e3", 6.486576E7f), e);
            } catch (InvocationTargetException e2) {
                return null;
            }
        }

        public int hashCode() {
            return this.trustManager.hashCode() + (this.findByIssuerAndSignatureMethod.hashCode() * 31);
        }
    }

    static final class CloseGuard {
        private final Method getMethod;
        private final Method openMethod;
        private final Method warnIfOpenMethod;

        CloseGuard(Method method, Method method2, Method method3) {
            this.getMethod = method;
            this.openMethod = method2;
            this.warnIfOpenMethod = method3;
        }

        static CloseGuard get() throws NoSuchMethodException {
            Method method;
            Method method2;
            Method method3 = null;
            try {
                Class<?> cls = Class.forName(NPStringFog.decode(new byte[]{1, 85, 14, 65, 15, 83, 75, 71, 27, 68, 18, 93, 8, 26, 33, 91, 9, 75, 0, 115, 23, 86, 20, 92}, "e4b7f8", -6.090704E8f));
                Method method4 = cls.getMethod(NPStringFog.decode(new byte[]{84, 93, 22}, "38b0bc", -1474086614L), new Class[0]);
                method = cls.getMethod(NPStringFog.decode(new byte[]{95, 22, 81, 92}, "0f42e8", true, true), String.class);
                method2 = cls.getMethod(NPStringFog.decode(new byte[]{65, 82, 68, 88, 124, 83, 121, 67, 83, 88}, "636655", -791387245L), new Class[0]);
                method3 = method4;
            } catch (Exception e) {
                method = null;
                method2 = null;
            }
            return new CloseGuard(method3, method, method2);
        }

        Object createAndOpen(String str) {
            if (this.getMethod != null) {
                try {
                    Object objInvoke = this.getMethod.invoke(null, new Object[0]);
                    this.openMethod.invoke(objInvoke, str);
                    return objInvoke;
                } catch (Exception e) {
                }
            }
            return null;
        }

        boolean warnIfOpen(Object obj) {
            if (obj == null) {
                return false;
            }
            try {
                this.warnIfOpenMethod.invoke(obj, new Object[0]);
                return true;
            } catch (Exception e) {
                return false;
            }
        }
    }

    AndroidPlatform(Class<?> cls, OptionalMethod<Socket> optionalMethod, OptionalMethod<Socket> optionalMethod2, OptionalMethod<Socket> optionalMethod3, OptionalMethod<Socket> optionalMethod4) {
        this.sslParametersClass = cls;
        this.setUseSessionTickets = optionalMethod;
        this.setHostname = optionalMethod2;
        this.getAlpnSelectedProtocol = optionalMethod3;
        this.setAlpnProtocols = optionalMethod4;
    }

    private boolean api23IsCleartextTrafficPermitted(String str, Class<?> cls, Object obj) throws IllegalAccessException, InvocationTargetException {
        try {
            return ((Boolean) cls.getMethod(NPStringFog.decode(new byte[]{88, 22, 114, 89, 83, 5, 67, 17, 84, 77, 66, 48, 67, 4, 87, 83, 95, 7, 97, 0, 67, 88, 95, 16, 69, 0, 85}, "1e156d", -2.32503727E8d), new Class[0]).invoke(obj, new Object[0])).booleanValue();
        } catch (NoSuchMethodException e) {
            return super.isCleartextTrafficPermitted(str);
        }
    }

    private boolean api24IsCleartextTrafficPermitted(String str, Class<?> cls, Object obj) throws IllegalAccessException, InvocationTargetException {
        try {
            return ((Boolean) cls.getMethod(NPStringFog.decode(new byte[]{89, 68, 38, 90, 82, 0, 66, 67, 0, 78, 67, 53, 66, 86, 3, 80, 94, 2, 96, 82, 23, 91, 94, 21, 68, 82, 1}, "07e67a", 4320), String.class).invoke(obj, str)).booleanValue();
        } catch (NoSuchMethodException e) {
            return api23IsCleartextTrafficPermitted(str, cls, obj);
        }
    }

    public static Platform buildIfSupported() {
        Class<?> cls;
        OptionalMethod optionalMethod;
        OptionalMethod optionalMethod2;
        try {
            try {
                cls = Class.forName(NPStringFog.decode(new byte[]{1, 12, 12, 22, 82, 95, 6, 17, 14, 81, 87, 31, 13, 17, 6, 22, 80, 94, 12, 16, 2, 74, 74, 65, 22, 77, 50, 107, 127, 97, 3, 17, 0, 85, 86, 69, 7, 17, 18, 113, 94, 65, 14}, "bca831", -943881145L));
            } catch (ClassNotFoundException e) {
                cls = Class.forName(NPStringFog.decode(new byte[]{87, 22, 5, 76, 7, 22, 89, 7, 10, 7, 72, 14, 89, 22, 15, 13, 8, 31, 22, 28, 12, 7, 18, 72, 72, 22, 13, 20, 15, 2, 93, 22, 76, 8, 21, 21, 93, 74, 49, 49, 42, 54, 89, 22, 3, 15, 3, 18, 93, 22, 17, 43, 11, 22, 84}, "8dbbff", -995));
            }
            OptionalMethod optionalMethod3 = new OptionalMethod(null, NPStringFog.decode(new byte[]{23, 83, 64, 49, 65, 6, 55, 83, 71, 23, 91, 12, 10, 98, 93, 7, 89, 6, 16, 69}, "d64d2c", false), Boolean.TYPE);
            OptionalMethod optionalMethod4 = new OptionalMethod(null, NPStringFog.decode(new byte[]{18, 7, 71, 125, 14, 17, 21, 12, 82, 88, 4}, "ab35ab", 543040283L), String.class);
            if (supportsAlpn()) {
                optionalMethod2 = new OptionalMethod(byte[].class, NPStringFog.decode(new byte[]{6, 83, 76, 113, 14, 73, 15, 101, 93, 92, 7, 90, 21, 83, 92, 96, 16, 86, 21, 89, 91, 95, 14}, "a680b9", false, true), new Class[0]);
                optionalMethod = new OptionalMethod(null, NPStringFog.decode(new byte[]{64, 84, 71, 118, 15, 70, 93, 97, 65, 88, 23, 89, 80, 94, 95, 68}, "3137c6", 17203), byte[].class);
            } else {
                optionalMethod = null;
                optionalMethod2 = null;
            }
            return new AndroidPlatform(cls, optionalMethod3, optionalMethod4, optionalMethod2, optionalMethod);
        } catch (ClassNotFoundException e2) {
            return null;
        }
    }

    private static boolean supportsAlpn() {
        if (Security.getProvider(NPStringFog.decode(new byte[]{113, 46, 102, 115, 87, 17, 83, 60, 122, 64, 93, 13, 101, 48, 121}, "6c508c", -19248)) != null) {
            return true;
        }
        try {
            Class.forName(NPStringFog.decode(new byte[]{82, 92, 5, 66, 94, 90, 87, 28, 15, 85, 69, 29, 125, 87, 21, 71, 94, 65, 88}, "32a013", true));
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    @Override // okhttp3.internal.platform.Platform
    public CertificateChainCleaner buildCertificateChainCleaner(X509TrustManager x509TrustManager) {
        try {
            Class<?> cls = Class.forName(NPStringFog.decode(new byte[]{83, 10, 2, 74, 92, 93, 86, 74, 8, 93, 71, 26, 90, 16, 18, 72, 29, 108, 7, 84, 95, 108, 65, 65, 65, 16, 43, 89, 93, 85, 85, 1, 20, 125, 75, 64, 87, 10, 21, 81, 92, 90, 65}, "2df834", 11566));
            return new AndroidCertificateChainCleaner(cls.getConstructor(X509TrustManager.class).newInstance(x509TrustManager), cls.getMethod(NPStringFog.decode(new byte[]{1, 10, 4, 83, 88, 50, 7, 16, 23, 85, 65, 53, 16, 23, 18, 68, 86, 5}, "bba03a", false), X509Certificate[].class, String.class, String.class));
        } catch (Exception e) {
            return super.buildCertificateChainCleaner(x509TrustManager);
        }
    }

    @Override // okhttp3.internal.platform.Platform
    public TrustRootIndex buildTrustRootIndex(X509TrustManager x509TrustManager) {
        try {
            Method declaredMethod = x509TrustManager.getClass().getDeclaredMethod(NPStringFog.decode(new byte[]{94, 13, 13, 84, 97, 70, 77, 23, 23, 113, 91, 87, 80, 11, 17, 114, 76, 125, 75, 23, 22, 85, 71, 117, 86, 0, 48, 89, 82, 90, 89, 16, 22, 66, 80}, "8dc054", 2078195244L), X509Certificate.class);
            declaredMethod.setAccessible(true);
            return new AndroidTrustRootIndex(x509TrustManager, declaredMethod);
        } catch (NoSuchMethodException e) {
            return super.buildTrustRootIndex(x509TrustManager);
        }
    }

    @Override // okhttp3.internal.platform.Platform
    public void configureTlsExtensions(SSLSocket sSLSocket, String str, List<Protocol> list) {
        if (str != null) {
            this.setUseSessionTickets.invokeOptionalWithoutCheckedException(sSLSocket, true);
            this.setHostname.invokeOptionalWithoutCheckedException(sSLSocket, str);
        }
        if (this.setAlpnProtocols == null || !this.setAlpnProtocols.isSupported(sSLSocket)) {
            return;
        }
        this.setAlpnProtocols.invokeWithoutCheckedException(sSLSocket, concatLengthPrefixed(list));
    }

    @Override // okhttp3.internal.platform.Platform
    public void connectSocket(Socket socket, InetSocketAddress inetSocketAddress, int i) throws IOException {
        try {
            socket.connect(inetSocketAddress, i);
        } catch (AssertionError e) {
            if (!Util.isAndroidGetsocknameError(e)) {
                throw e;
            }
            throw new IOException(e);
        } catch (ClassCastException e2) {
            if (Build.VERSION.SDK_INT != 26) {
                throw e2;
            }
            IOException iOException = new IOException(NPStringFog.decode(new byte[]{112, 65, 0, 81, 21, 67, 92, 86, 13, 20, 12, 89, 21, 90, 12, 90, 11, 82, 86, 77}, "59c4e7", false));
            iOException.initCause(e2);
            throw iOException;
        } catch (SecurityException e3) {
            IOException iOException2 = new IOException(NPStringFog.decode(new byte[]{113, 79, 86, 82, 18, 16, 93, 88, 91, 23, 11, 10, 20, 84, 90, 89, 12, 1, 87, 67}, "4757bd", 1.749347769E9d));
            iOException2.initCause(e3);
            throw iOException2;
        }
    }

    @Override // okhttp3.internal.platform.Platform
    public String getSelectedProtocol(SSLSocket sSLSocket) {
        byte[] bArr;
        if (this.getAlpnSelectedProtocol == null) {
            return null;
        }
        if (!this.getAlpnSelectedProtocol.isSupported(sSLSocket) || (bArr = (byte[]) this.getAlpnSelectedProtocol.invokeWithoutCheckedException(sSLSocket, new Object[0])) == null) {
            return null;
        }
        return new String(bArr, Util.UTF_8);
    }

    @Override // okhttp3.internal.platform.Platform
    public Object getStackTraceForCloseable(String str) {
        return this.closeGuard.createAndOpen(str);
    }

    @Override // okhttp3.internal.platform.Platform
    public boolean isCleartextTrafficPermitted(String str) {
        try {
            Class<?> cls = Class.forName(NPStringFog.decode(new byte[]{2, 8, 81, 16, 13, 11, 7, 72, 70, 7, 1, 23, 17, 15, 65, 27, 76, 44, 6, 18, 66, 13, 16, 9, 48, 3, 86, 23, 16, 11, 23, 31, 101, 13, 14, 11, 0, 31}, "cf5bbb", true));
            return api24IsCleartextTrafficPermitted(str, cls, cls.getMethod(NPStringFog.decode(new byte[]{85, 92, 70, 122, 93, 18, 70, 88, 92, 80, 86}, "29233a", -9.43174502E8d), new Class[0]).invoke(null, new Object[0]));
        } catch (ClassNotFoundException e) {
            return super.isCleartextTrafficPermitted(str);
        } catch (IllegalAccessException e2) {
            e = e2;
            throw Util.assertionError(NPStringFog.decode(new byte[]{69, 88, 0, 81, 92, 1, 16, 66, 14, 19, 84, 1, 68, 83, 19, 94, 89, 10, 85, 22, 2, 95, 85, 5, 66, 66, 4, 75, 68, 68, 67, 67, 17, 67, 95, 22, 68}, "06a30d", -1173898723L), e);
        } catch (IllegalArgumentException e3) {
            e = e3;
            throw Util.assertionError(NPStringFog.decode(new byte[]{69, 88, 0, 81, 92, 1, 16, 66, 14, 19, 84, 1, 68, 83, 19, 94, 89, 10, 85, 22, 2, 95, 85, 5, 66, 66, 4, 75, 68, 68, 67, 67, 17, 67, 95, 22, 68}, "06a30d", -1173898723L), e);
        } catch (NoSuchMethodException e4) {
            return super.isCleartextTrafficPermitted(str);
        } catch (InvocationTargetException e5) {
            e = e5;
            throw Util.assertionError(NPStringFog.decode(new byte[]{69, 88, 0, 81, 92, 1, 16, 66, 14, 19, 84, 1, 68, 83, 19, 94, 89, 10, 85, 22, 2, 95, 85, 5, 66, 66, 4, 75, 68, 68, 67, 67, 17, 67, 95, 22, 68}, "06a30d", -1173898723L), e);
        }
    }

    @Override // okhttp3.internal.platform.Platform
    public void log(int i, String str, Throwable th) {
        int iMin;
        int i2 = i == 5 ? 5 : 3;
        if (th != null) {
            str = str + '\n' + Log.getStackTraceString(th);
        }
        int length = str.length();
        int i3 = 0;
        while (i3 < length) {
            int iIndexOf = str.indexOf(10, i3);
            if (iIndexOf == -1) {
                iIndexOf = length;
            }
            while (true) {
                iMin = Math.min(iIndexOf, i3 + MAX_LOG_LENGTH);
                Log.println(i2, NPStringFog.decode(new byte[]{126, 91, 112, 77, 71, 73}, "108939", false), str.substring(i3, iMin));
                if (iMin >= iIndexOf) {
                    break;
                } else {
                    i3 = iMin;
                }
            }
            i3 = iMin + 1;
        }
    }

    @Override // okhttp3.internal.platform.Platform
    public void logCloseableLeak(String str, Object obj) {
        if (this.closeGuard.warnIfOpen(obj)) {
            return;
        }
        log(5, str, null);
    }

    @Override // okhttp3.internal.platform.Platform
    protected X509TrustManager trustManager(SSLSocketFactory sSLSocketFactory) {
        Object fieldOrNull;
        Object fieldOrNull2 = readFieldOrNull(sSLSocketFactory, this.sslParametersClass, NPStringFog.decode(new byte[]{21, 71, 93, 105, 83, 23, 7, 89, 84, 77, 87, 23, 21}, "f4192e", 10605));
        if (fieldOrNull2 == null) {
            try {
                fieldOrNull = readFieldOrNull(sSLSocketFactory, Class.forName(NPStringFog.decode(new byte[]{5, 94, 89, 26, 1, 9, 9, 86, 88, 81, 72, 7, 8, 85, 70, 91, 15, 2, 72, 86, 89, 71, 72, 9, 20, 86, 26, 87, 9, 8, 21, 82, 70, 77, 22, 18, 72, 98, 103, 120, 54, 7, 20, 80, 89, 81, 18, 3, 20, 66, 125, 89, 22, 10}, "f144ff", false, true), false, sSLSocketFactory.getClass().getClassLoader()), NPStringFog.decode(new byte[]{74, 67, 84, 96, 4, 16, 88, 93, 93, 68, 0, 16, 74}, "9080eb", 8.705969E8f));
            } catch (ClassNotFoundException e) {
                return super.trustManager(sSLSocketFactory);
            }
        } else {
            fieldOrNull = fieldOrNull2;
        }
        X509TrustManager x509TrustManager = (X509TrustManager) readFieldOrNull(fieldOrNull, X509TrustManager.class, NPStringFog.decode(new byte[]{25, 0, 2, 11, 108, 71, 20, 70, 70, 127, 89, 91, 0, 82, 87, 64}, "a52285", -31607));
        return x509TrustManager != null ? x509TrustManager : (X509TrustManager) readFieldOrNull(fieldOrNull, X509TrustManager.class, NPStringFog.decode(new byte[]{67, 22, 71, 66, 65, 125, 86, 10, 83, 86, 80, 66}, "7d2150", 2.074093E9f));
    }
}
