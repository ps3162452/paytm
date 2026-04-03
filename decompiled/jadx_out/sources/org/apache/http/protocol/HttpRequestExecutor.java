package org.apache.http.protocol;

import java.io.IOException;
import n.NPStringFog;
import org.apache.http.HttpClientConnection;
import org.apache.http.HttpException;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class HttpRequestExecutor {
    public HttpRequestExecutor() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 65, 16, 86, 17}, "d5e40f", false, true));
    }

    protected boolean canResponseHaveBody(HttpRequest httpRequest, HttpResponse httpResponse) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 68, 70, 90, 19}, "a0382f", -684296671L));
    }

    protected HttpResponse doReceiveResponse(HttpRequest httpRequest, HttpClientConnection httpClientConnection, HttpContext httpContext) throws HttpException, IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 22, 65, 6, 71}, "eb4df9", -1.28241212E8d));
    }

    protected HttpResponse doSendRequest(HttpRequest httpRequest, HttpClientConnection httpClientConnection, HttpContext httpContext) throws HttpException, IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 76, 19, 84, 24}, "48f694", true));
    }

    public HttpResponse execute(HttpRequest httpRequest, HttpClientConnection httpClientConnection, HttpContext httpContext) throws HttpException, IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 77, 16, 4, 23}, "39ef67", -16896));
    }

    public void postProcess(HttpResponse httpResponse, HttpProcessor httpProcessor, HttpContext httpContext) throws HttpException, IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 23, 66, 85, 22}, "cc777d", -15122));
    }

    public void preProcess(HttpRequest httpRequest, HttpProcessor httpProcessor, HttpContext httpContext) throws HttpException, IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 16, 69, 4, 16}, "fd0f18", -26505));
    }
}
