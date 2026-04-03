package org.apache.http.impl.client;

import java.net.URI;
import n.NPStringFog;
import org.apache.http.HttpResponse;
import org.apache.http.ProtocolException;
import org.apache.http.client.RedirectHandler;
import org.apache.http.protocol.HttpContext;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class DefaultRedirectHandler implements RedirectHandler {
    public DefaultRedirectHandler() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 17, 17, 7, 21}, "5ede48", true));
    }

    @Override // org.apache.http.client.RedirectHandler
    public URI getLocationURI(HttpResponse httpResponse, HttpContext httpContext) throws ProtocolException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 68, 17, 7, 64}, "90dead", 4.4062342E8f));
    }

    @Override // org.apache.http.client.RedirectHandler
    public boolean isRedirectRequested(HttpResponse httpResponse, HttpContext httpContext) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 22, 65, 6, 24}, "7b4d92", -23265));
    }
}
