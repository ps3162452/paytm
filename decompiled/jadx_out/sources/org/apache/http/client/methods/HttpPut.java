package org.apache.http.client.methods;

import java.net.URI;
import n.NPStringFog;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class HttpPut extends HttpEntityEnclosingRequestBase {
    public static final String METHOD_NAME = NPStringFog.decode(new byte[]{100, 100, 55}, "41c38e", -5954);

    public HttpPut() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 65, 68, 86, 24}, "b5149a", 1.86252047E8d));
    }

    public HttpPut(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 69, 70, 82, 21}, "81304f", true));
    }

    public HttpPut(URI uri) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 21, 69, 3, 16}, "ea0a12", false));
    }

    @Override // org.apache.http.client.methods.HttpRequestBase, org.apache.http.client.methods.HttpUriRequest
    public String getMethod() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 66, 17, 81, 68}, "06d3e1", false));
    }
}
