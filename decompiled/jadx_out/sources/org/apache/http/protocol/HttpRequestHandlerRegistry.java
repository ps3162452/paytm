package org.apache.http.protocol;

import java.util.Map;
import n.NPStringFog;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class HttpRequestHandlerRegistry implements HttpRequestHandlerResolver {
    public HttpRequestHandlerRegistry() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 69, 22, 4, 23}, "71cf69", false));
    }

    @Override // org.apache.http.protocol.HttpRequestHandlerResolver
    public HttpRequestHandler lookup(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 18, 65, 7, 69}, "df4ed8", -843315817L));
    }

    @Deprecated
    protected boolean matchUriRequestPattern(String str, String str2) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 67, 19, 80, 25}, "97f28a", false, true));
    }

    public void register(String str, HttpRequestHandler httpRequestHandler) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 77, 23, 83, 64}, "b9b1a1", 3.590742E8f));
    }

    public void setHandlers(Map map) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 64, 76, 1, 71}, "449cf9", 1.0783608E9f));
    }

    public void unregister(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 22, 76, 85, 22}, "9b9770", -1234432638L));
    }
}
