package okhttp3.internal.platform;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;
import n.NPStringFog;
import okhttp3.Protocol;
import okhttp3.internal.Util;

/* JADX INFO: loaded from: classes62.dex */
final class Jdk9Platform extends Platform {
    final Method getProtocolMethod;
    final Method setProtocolMethod;

    Jdk9Platform(Method method, Method method2) {
        this.setProtocolMethod = method;
        this.getProtocolMethod = method2;
    }

    public static Jdk9Platform buildIfSupported() {
        try {
            return new Jdk9Platform(SSLParameters.class.getMethod(NPStringFog.decode(new byte[]{69, 7, 77, 34, 67, 64, 90, 11, 90, 2, 71, 89, 89, 12, 105, 17, 92, 68, 89, 1, 86, 15, 64}, "6b9c30", true, true), String[].class), SSLSocket.class.getMethod(NPStringFog.decode(new byte[]{1, 81, 66, 36, 64, 69, 10, 93, 85, 4, 68, 92, 9, 90, 102, 23, 95, 65, 9, 87, 89, 9}, "f46e05", -8075), new Class[0]));
        } catch (NoSuchMethodException e) {
            return null;
        }
    }

    @Override // okhttp3.internal.platform.Platform
    public void configureTlsExtensions(SSLSocket sSLSocket, String str, List<Protocol> list) {
        try {
            SSLParameters sSLParameters = sSLSocket.getSSLParameters();
            List<String> listAlpnProtocolNames = alpnProtocolNames(list);
            this.setProtocolMethod.invoke(sSLParameters, listAlpnProtocolNames.toArray(new String[listAlpnProtocolNames.size()]));
            sSLSocket.setSSLParameters(sSLParameters);
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw Util.assertionError(NPStringFog.decode(new byte[]{76, 11, 3, 86, 14, 4, 25, 17, 13, 20, 17, 4, 77, 69, 17, 71, 14, 65, 73, 4, 16, 85, 15, 4, 77, 0, 16, 71}, "9eb4ba", -1.760478015E9d), e);
        }
    }

    @Override // okhttp3.internal.platform.Platform
    public String getSelectedProtocol(SSLSocket sSLSocket) {
        try {
            String str = (String) this.getProtocolMethod.invoke(sSLSocket, new Object[0]);
            if (str != null) {
                if (!str.equals("")) {
                    return str;
                }
            }
            return null;
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw Util.assertionError(NPStringFog.decode(new byte[]{67, 12, 81, 83, 8, 93, 22, 22, 95, 17, 3, 93, 66, 66, 67, 84, 8, 93, 85, 22, 85, 85, 68, 72, 68, 13, 68, 94, 7, 87, 90, 17}, "6b01d8", 408018818L), e);
        }
    }

    @Override // okhttp3.internal.platform.Platform
    public X509TrustManager trustManager(SSLSocketFactory sSLSocketFactory) {
        throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{90, 84, 95, 0, 92, 68, 123, 77, 95, 9, 86, 85, 75, 22, 69, 22, 94, 99, 86, 91, 93, 0, 70, 118, 88, 91, 66, 10, 64, 73, 17, 107, 101, 41, 97, 95, 90, 83, 83, 17, 116, 81, 90, 76, 89, 23, 75, 25, 25, 86, 89, 17, 18, 67, 76, 72, 70, 10, 64, 68, 92, 92, 22, 10, 92, 16, 115, 124, 125, 69, 11, 27}, "986e20", -23276));
    }
}
