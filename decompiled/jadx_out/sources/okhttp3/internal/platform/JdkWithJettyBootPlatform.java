package okhttp3.internal.platform;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.List;
import javax.net.ssl.SSLSocket;
import n.NPStringFog;
import okhttp3.Protocol;
import okhttp3.internal.Util;

/* JADX INFO: loaded from: classes62.dex */
class JdkWithJettyBootPlatform extends Platform {
    private final Class<?> clientProviderClass;
    private final Method getMethod;
    private final Method putMethod;
    private final Method removeMethod;
    private final Class<?> serverProviderClass;

    private static class JettyNegoProvider implements InvocationHandler {
        private final List<String> protocols;
        String selected;
        boolean unsupported;

        JettyNegoProvider(List<String> list) {
            this.protocols = list;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            String name = method.getName();
            Class<?> returnType = method.getReturnType();
            if (objArr == null) {
                objArr = Util.EMPTY_STRING_ARRAY;
            }
            if (name.equals(NPStringFog.decode(new byte[]{74, 66, 21, 73, 10, 68, 77, 68}, "97e9e6", 25841)) && Boolean.TYPE == returnType) {
                return true;
            }
            if (name.equals(NPStringFog.decode(new byte[]{67, 90, 18, 71, 18, 71, 89, 70, 21, 87, 6}, "64a2b7", true)) && Void.TYPE == returnType) {
                this.unsupported = true;
                return null;
            }
            if (name.equals(NPStringFog.decode(new byte[]{69, 23, 95, 65, 88, 2, 90, 9, 67}, "5e057a", -20871)) && objArr.length == 0) {
                return this.protocols;
            }
            if ((!name.equals(NPStringFog.decode(new byte[]{23, 1, 91, 1, 91, 22, 52, 22, 88, 16, 87, 1, 11, 8}, "dd7d8b", -1857622883L)) && !name.equals(NPStringFog.decode(new byte[]{21, 86, 95, 93, 82, 22}, "f3381b", false))) || String.class != returnType || objArr.length != 1 || !(objArr[0] instanceof List)) {
                if ((!name.equals(NPStringFog.decode(new byte[]{65, 68, 89, 22, 12, 86, 94, 90, 101, 7, 15, 80, 82, 66, 83, 6}, "166bc5", -1056409907L)) && !name.equals(NPStringFog.decode(new byte[]{67, 7, 15, 84, 80, 16, 85, 6}, "0bc13d", true, true))) || objArr.length != 1) {
                    return method.invoke(this, objArr);
                }
                this.selected = (String) objArr[0];
                return null;
            }
            List list = (List) objArr[0];
            int size = list.size();
            for (int i = 0; i < size; i++) {
                if (this.protocols.contains(list.get(i))) {
                    String str = (String) list.get(i);
                    this.selected = str;
                    return str;
                }
            }
            String str2 = this.protocols.get(0);
            this.selected = str2;
            return str2;
        }
    }

    JdkWithJettyBootPlatform(Method method, Method method2, Method method3, Class<?> cls, Class<?> cls2) {
        this.putMethod = method;
        this.getMethod = method2;
        this.removeMethod = method3;
        this.clientProviderClass = cls;
        this.serverProviderClass = cls2;
    }

    public static Platform buildIfSupported() {
        try {
            Class<?> cls = Class.forName(NPStringFog.decode(new byte[]{93, 17, 84, 25, 1, 2, 94, 10, 67, 68, 1, 79, 88, 6, 71, 67, 29, 79, 83, 15, 67, 89, 74, 32, 126, 51, 125}, "2c37da", -20900));
            return new JdkWithJettyBootPlatform(cls.getMethod(NPStringFog.decode(new byte[]{17, 71, 64}, "a24cf5", false), SSLSocket.class, Class.forName(NPStringFog.decode(new byte[]{89, 65, 81, 79, 80, 7, 90, 90, 70, 18, 80, 74, 92, 86, 66, 21, 76, 74, 87, 95, 70, 15, 27, 37, 122, 99, 120}, "636a5d", 4739) + NPStringFog.decode(new byte[]{65, 96, 22, 94, 65, 10, 1, 85, 22}, "e0d17c", -23317))), cls.getMethod(NPStringFog.decode(new byte[]{6, 85, 69}, "a013a7", 894988043L), SSLSocket.class), cls.getMethod(NPStringFog.decode(new byte[]{67, 92, 89, 87, 23, 92}, "1948a9", -8.696998E8f), SSLSocket.class), Class.forName(NPStringFog.decode(new byte[]{90, 71, 83, 26, 0, 2, 89, 92, 68, 71, 0, 79, 95, 80, 64, 64, 28, 79, 84, 89, 68, 90, 75, 32, 121, 101, 122}, "5544ea", true, true) + NPStringFog.decode(new byte[]{17, 37, 93, 15, 3, 90, 65, 54, 67, 9, 16, 93, 81, 3, 67}, "5f1ff4", -1.9217174E8f)), Class.forName(NPStringFog.decode(new byte[]{13, 19, 5, 27, 4, 7, 14, 8, 18, 70, 4, 74, 8, 4, 22, 65, 24, 74, 3, 13, 18, 91, 79, 37, 46, 49, 44}, "bab5ad", 1.325464097E9d) + NPStringFog.decode(new byte[]{19, 100, 81, 71, 64, 83, 69, 103, 70, 90, 64, 95, 83, 82, 70}, "774566", false)));
        } catch (ClassNotFoundException | NoSuchMethodException e) {
            return null;
        }
    }

    @Override // okhttp3.internal.platform.Platform
    public void afterHandshake(SSLSocket sSLSocket) {
        try {
            this.removeMethod.invoke(null, sSLSocket);
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw Util.assertionError(NPStringFog.decode(new byte[]{76, 13, 80, 84, 93, 80, 25, 23, 94, 22, 67, 80, 84, 12, 71, 83, 17, 84, 85, 19, 95}, "9c1615", false, false), e);
        }
    }

    @Override // okhttp3.internal.platform.Platform
    public void configureTlsExtensions(SSLSocket sSLSocket, String str, List<Protocol> list) {
        List<String> listAlpnProtocolNames = alpnProtocolNames(list);
        try {
            ClassLoader classLoader = Platform.class.getClassLoader();
            Class<?> cls = this.clientProviderClass;
            Class<?> cls2 = this.serverProviderClass;
            this.putMethod.invoke(null, sSLSocket, Proxy.newProxyInstance(classLoader, new Class[]{cls, cls2}, new JettyNegoProvider(listAlpnProtocolNames)));
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw Util.assertionError(NPStringFog.decode(new byte[]{66, 93, 0, 3, 94, 0, 23, 71, 14, 65, 65, 0, 67, 19, 0, 13, 66, 11}, "73aa2e", -1723682918L), e);
        }
    }

    @Override // okhttp3.internal.platform.Platform
    public String getSelectedProtocol(SSLSocket sSLSocket) {
        try {
            JettyNegoProvider jettyNegoProvider = (JettyNegoProvider) Proxy.getInvocationHandler(this.getMethod.invoke(null, sSLSocket));
            if (!jettyNegoProvider.unsupported && jettyNegoProvider.selected == null) {
                Platform.get().log(4, NPStringFog.decode(new byte[]{37, 45, 53, 124, 67, 80, 5, 13, 9, 80, 2, 80, 15, 65, 1, 64, 12, 67, 20, 4, 1, 8, 67, 123, 48, 53, 53, 29, 81, 19, 13, 18, 69, 86, 10, 64, 5, 3, 9, 87, 7, 29, 68, 40, 22, 18, 2, 95, 20, 15, 72, 80, 12, 92, 16, 65, 10, 92, 67, 71, 12, 4, 69, 80, 12, 92, 16, 65, 6, 94, 2, 64, 23, 65, 21, 83, 23, 91, 91}, "dae2c3", -1.535584818E9d), null);
                return null;
            }
            if (jettyNegoProvider.unsupported) {
                return null;
            }
            return jettyNegoProvider.selected;
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw Util.assertionError(NPStringFog.decode(new byte[]{66, 86, 83, 84, 92, 3, 23, 76, 93, 22, 87, 3, 67, 24, 65, 83, 92, 3, 84, 76, 87, 82, 16, 22, 69, 87, 70, 89, 83, 9, 91}, "78260f", 1.6312636E9f), e);
        }
    }
}
