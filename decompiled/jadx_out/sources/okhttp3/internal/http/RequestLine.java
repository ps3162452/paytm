package okhttp3.internal.http;

import java.net.Proxy;
import n.NPStringFog;
import okhttp3.HttpUrl;
import okhttp3.Request;

/* JADX INFO: loaded from: classes62.dex */
public final class RequestLine {
    private RequestLine() {
    }

    public static String get(Request request, Proxy.Type type) {
        StringBuilder sb = new StringBuilder();
        sb.append(request.method());
        sb.append(' ');
        if (includeAuthorityInRequestLine(request, type)) {
            sb.append(request.url());
        } else {
            sb.append(requestPath(request.url()));
        }
        sb.append(NPStringFog.decode(new byte[]{23, 113, 96, 53, 100, 26, 6, 23, 5}, "794a45", 1960834116L));
        return sb.toString();
    }

    private static boolean includeAuthorityInRequestLine(Request request, Proxy.Type type) {
        return !request.isHttps() && type == Proxy.Type.HTTP;
    }

    public static String requestPath(HttpUrl httpUrl) {
        String strEncodedPath = httpUrl.encodedPath();
        String strEncodedQuery = httpUrl.encodedQuery();
        return strEncodedQuery != null ? strEncodedPath + '?' + strEncodedQuery : strEncodedPath;
    }
}
