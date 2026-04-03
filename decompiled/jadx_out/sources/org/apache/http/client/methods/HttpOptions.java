package org.apache.http.client.methods;

import java.net.URI;
import java.util.Set;
import n.NPStringFog;
import org.apache.http.HttpResponse;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class HttpOptions extends HttpRequestBase {
    public static final String METHOD_NAME = NPStringFog.decode(new byte[]{126, 105, 55, 45, 120, 47, 98}, "19cd7a", true, false);

    public HttpOptions() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 21, 23, 0, 22}, "babb7b", 7.217331E8f));
    }

    public HttpOptions(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 16, 71, 81, 16}, "6d2310", 28698));
    }

    public HttpOptions(URI uri) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 18, 70, 91, 16}, "ff391b", 5054));
    }

    public Set<String> getAllowedMethods(HttpResponse httpResponse) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 67, 19, 4, 21}, "67ff47", false));
    }

    @Override // org.apache.http.client.methods.HttpRequestBase, org.apache.http.client.methods.HttpUriRequest
    public String getMethod() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 68, 70, 80, 64}, "c032a9", -7.502258E8f));
    }
}
