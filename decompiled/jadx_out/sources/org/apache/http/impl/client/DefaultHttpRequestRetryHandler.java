package org.apache.http.impl.client;

import java.io.IOException;
import n.NPStringFog;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.protocol.HttpContext;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class DefaultHttpRequestRetryHandler implements HttpRequestRetryHandler {
    public DefaultHttpRequestRetryHandler() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 76, 23, 81, 20}, "38b35a", 8.0687597E8f));
    }

    public DefaultHttpRequestRetryHandler(int i, boolean z) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 16, 69, 84, 23}, "5d0664", false));
    }

    public int getRetryCount() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{97, 70, 65, 83, 18}, "22413f", true));
    }

    public boolean isRequestSentRetryEnabled() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 67, 19, 3, 25}, "57fa81", true, true));
    }

    @Override // org.apache.http.client.HttpRequestRetryHandler
    public boolean retryRequest(IOException iOException, int i, HttpContext httpContext) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 21, 66, 80, 16}, "1a721a", -1.8406874E9f));
    }
}
