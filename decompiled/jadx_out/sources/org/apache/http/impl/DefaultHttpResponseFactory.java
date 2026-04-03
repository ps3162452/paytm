package org.apache.http.impl;

import java.util.Locale;
import n.NPStringFog;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseFactory;
import org.apache.http.ProtocolVersion;
import org.apache.http.ReasonPhraseCatalog;
import org.apache.http.StatusLine;
import org.apache.http.protocol.HttpContext;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class DefaultHttpResponseFactory implements HttpResponseFactory {
    protected final ReasonPhraseCatalog reasonCatalog;

    public DefaultHttpResponseFactory() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 21, 66, 81, 64}, "4a73a5", 16251));
    }

    public DefaultHttpResponseFactory(ReasonPhraseCatalog reasonPhraseCatalog) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 22, 66, 81, 68}, "db73e3", 1.10261864E8f));
    }

    protected Locale determineLocale(HttpContext httpContext) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 23, 23, 91, 25}, "3cb980", true, false));
    }

    @Override // org.apache.http.HttpResponseFactory
    public HttpResponse newHttpResponse(ProtocolVersion protocolVersion, int i, HttpContext httpContext) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 71, 19, 3, 71}, "e3faf0", true));
    }

    @Override // org.apache.http.HttpResponseFactory
    public HttpResponse newHttpResponse(StatusLine statusLine, HttpContext httpContext) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 69, 76, 80, 21}, "e19245", 1.024447682E9d));
    }
}
