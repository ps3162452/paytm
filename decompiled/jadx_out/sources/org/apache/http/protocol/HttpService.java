package org.apache.http.protocol;

import java.io.IOException;
import n.NPStringFog;
import org.apache.http.ConnectionReuseStrategy;
import org.apache.http.HttpException;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseFactory;
import org.apache.http.HttpServerConnection;
import org.apache.http.params.HttpParams;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class HttpService {
    public HttpService(HttpProcessor httpProcessor, ConnectionReuseStrategy connectionReuseStrategy, HttpResponseFactory httpResponseFactory) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 76, 17, 4, 25}, "f8df80", 6.502984E8f));
    }

    protected void doService(HttpRequest httpRequest, HttpResponse httpResponse, HttpContext httpContext) throws HttpException, IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 16, 17, 82, 16}, "0dd013", true, false));
    }

    public HttpParams getParams() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 66, 16, 84, 67}, "16e6b0", true));
    }

    protected void handleException(HttpException httpException, HttpResponse httpResponse) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 69, 68, 1, 22}, "f11c79", -20375));
    }

    public void handleRequest(HttpServerConnection httpServerConnection, HttpContext httpContext) throws HttpException, IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 66, 22, 4, 71}, "b6cff0", false, true));
    }

    public void setConnReuseStrategy(ConnectionReuseStrategy connectionReuseStrategy) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 70, 67, 90, 22}, "e2687f", -56273175L));
    }

    public void setExpectationVerifier(HttpExpectationVerifier httpExpectationVerifier) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 18, 20, 84, 18}, "6fa630", true));
    }

    public void setHandlerResolver(HttpRequestHandlerResolver httpRequestHandlerResolver) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 77, 23, 85, 18}, "79b731", false));
    }

    public void setHttpProcessor(HttpProcessor httpProcessor) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 65, 22, 84, 24}, "f5c69b", true));
    }

    public void setParams(HttpParams httpParams) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 71, 20, 7, 20}, "73ae5e", false, false));
    }

    public void setResponseFactory(HttpResponseFactory httpResponseFactory) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 69, 76, 84, 64}, "5196ab", false, false));
    }
}
