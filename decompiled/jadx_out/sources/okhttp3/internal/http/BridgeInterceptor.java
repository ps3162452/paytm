package okhttp3.internal.http;

import java.io.IOException;
import java.util.List;
import n.NPStringFog;
import okhttp3.Cookie;
import okhttp3.CookieJar;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.internal.Util;
import okhttp3.internal.Version;
import okio.GzipSource;
import okio.Okio;

/* JADX INFO: loaded from: classes62.dex */
public final class BridgeInterceptor implements Interceptor {
    private final CookieJar cookieJar;

    public BridgeInterceptor(CookieJar cookieJar) {
        this.cookieJar = cookieJar;
    }

    private String cookieHeader(List<Cookie> list) {
        StringBuilder sb = new StringBuilder();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (i > 0) {
                sb.append(NPStringFog.decode(new byte[]{9, 17}, "216efd", 3.8071354E8f));
            }
            Cookie cookie = list.get(i);
            sb.append(cookie.name()).append('=').append(cookie.value());
        }
        return sb.toString();
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        boolean z;
        Request request = chain.request();
        Request.Builder builderNewBuilder = request.newBuilder();
        RequestBody requestBodyBody = request.body();
        if (requestBodyBody != null) {
            MediaType mediaTypeContentType = requestBodyBody.contentType();
            if (mediaTypeContentType != null) {
                builderNewBuilder.header(NPStringFog.decode(new byte[]{116, 14, 12, 76, 7, 89, 67, 76, 54, 65, 18, 82}, "7ab8b7", 1.429017365E9d), mediaTypeContentType.toString());
            }
            long jContentLength = requestBodyBody.contentLength();
            if (jContentLength != -1) {
                builderNewBuilder.header(NPStringFog.decode(new byte[]{122, 90, 91, 68, 1, 91, 77, 24, 121, 85, 10, 82, 77, 93}, "9550d5", -2.025819545E9d), Long.toString(jContentLength));
                builderNewBuilder.removeHeader(NPStringFog.decode(new byte[]{48, 71, 88, 95, 66, 3, 1, 71, 20, 116, 95, 6, 11, 81, 80, 95, 86}, "d5911e", false, false));
            } else {
                builderNewBuilder.header(NPStringFog.decode(new byte[]{49, 74, 7, 11, 65, 5, 0, 74, 75, 32, 92, 0, 10, 92, 15, 11, 85}, "e8fe2c", -1293), NPStringFog.decode(new byte[]{7, 95, 77, 90, 83, 81, 0}, "d78484", true));
                builderNewBuilder.removeHeader(NPStringFog.decode(new byte[]{123, 87, 15, 70, 93, 95, 76, 21, 45, 87, 86, 86, 76, 80}, "88a281", true));
            }
        }
        if (request.header(NPStringFog.decode(new byte[]{120, 10, 71, 17}, "0e4ea5", 1.5718669E9f)) == null) {
            builderNewBuilder.header(NPStringFog.decode(new byte[]{123, 89, 70, 64}, "365447", 1.0292003E9f), Util.hostHeader(request.url(), false));
        }
        if (request.header(NPStringFog.decode(new byte[]{115, 11, 8, 8, 85, 81, 68, 13, 9, 8}, "0dff02", true)) == null) {
            builderNewBuilder.header(NPStringFog.decode(new byte[]{113, 11, 95, 94, 3, 1, 70, 13, 94, 94}, "2d10fb", 1481), NPStringFog.decode(new byte[]{120, 86, 87, 20, 28, 34, 95, 90, 68, 1}, "332d1c", false, true));
        }
        if (request.header(NPStringFog.decode(new byte[]{36, 91, 87, 85, 18, 22, 72, 125, 90, 83, 13, 6, 12, 86, 83}, "e840bb", true, false)) == null && request.header(NPStringFog.decode(new byte[]{96, 86, 87, 87, 82}, "279071", 666962233L)) == null) {
            builderNewBuilder.header(NPStringFog.decode(new byte[]{120, 90, 0, 6, 21, 16, 20, 124, 13, 0, 10, 0, 80, 87, 4}, "99cced", -5.46252333E8d), NPStringFog.decode(new byte[]{4, 28, 15, 18}, "cffb01", 7383));
            z = true;
        } else {
            z = false;
        }
        List<Cookie> listLoadForRequest = this.cookieJar.loadForRequest(request.url());
        if (!listLoadForRequest.isEmpty()) {
            builderNewBuilder.header(NPStringFog.decode(new byte[]{37, 87, 92, 95, 13, 0}, "f834de", false, true), cookieHeader(listLoadForRequest));
        }
        if (request.header(NPStringFog.decode(new byte[]{101, 68, 87, 17, 21, 32, 87, 82, 92, 23}, "072c8a", false, false)) == null) {
            builderNewBuilder.header(NPStringFog.decode(new byte[]{97, 67, 0, 75, 72, 118, 83, 85, 11, 77}, "40e9e7", 505587251L), Version.userAgent());
        }
        Response responseProceed = chain.proceed(builderNewBuilder.build());
        HttpHeaders.receiveHeaders(this.cookieJar, request.url(), responseProceed.headers());
        Response.Builder builderRequest = responseProceed.newBuilder().request(request);
        if (z && NPStringFog.decode(new byte[]{83, 31, 94, 70}, "4e76c7", -22594).equalsIgnoreCase(responseProceed.header(NPStringFog.decode(new byte[]{113, 9, 94, 16, 3, 12, 70, 75, 117, 10, 5, 13, 86, 15, 94, 3}, "2f0dfb", true, true))) && HttpHeaders.hasBody(responseProceed)) {
            GzipSource gzipSource = new GzipSource(responseProceed.body().source());
            builderRequest.headers(responseProceed.headers().newBuilder().removeAll(NPStringFog.decode(new byte[]{122, 87, 15, 67, 80, 8, 77, 21, 36, 89, 86, 9, 93, 81, 15, 80}, "98a75f", 1.659505275E9d)).removeAll(NPStringFog.decode(new byte[]{38, 90, 91, 68, 7, 92, 17, 24, 121, 85, 12, 85, 17, 93}, "e550b2", -1.641320849E9d)).build());
            builderRequest.body(new RealResponseBody(responseProceed.header(NPStringFog.decode(new byte[]{32, 13, 87, 16, 4, 90, 23, 79, 109, 29, 17, 81}, "cb9da4", -1.319271138E9d)), -1L, Okio.buffer(gzipSource)));
        }
        return builderRequest.build();
    }
}
