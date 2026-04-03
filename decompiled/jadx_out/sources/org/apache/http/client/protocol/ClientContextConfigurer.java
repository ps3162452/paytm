package org.apache.http.client.protocol;

import java.util.List;
import n.NPStringFog;
import org.apache.http.auth.AuthSchemeRegistry;
import org.apache.http.client.CookieStore;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.cookie.CookieSpecRegistry;
import org.apache.http.protocol.HttpContext;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class ClientContextConfigurer implements ClientContext {
    public ClientContextConfigurer(HttpContext httpContext) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 21, 20, 82, 19}, "eaa022", 22315));
    }

    public void setAuthSchemePref(List<String> list) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 22, 17, 87, 18}, "5bd53a", 7.4572634E8f));
    }

    public void setAuthSchemeRegistry(AuthSchemeRegistry authSchemeRegistry) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 65, 19, 6, 21}, "15fd4e", 6.14084981E8d));
    }

    public void setCookieSpecRegistry(CookieSpecRegistry cookieSpecRegistry) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 66, 70, 85, 67}, "0637bb", 1.730334795E9d));
    }

    public void setCookieStore(CookieStore cookieStore) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 22, 76, 80, 20}, "eb925b", -7.18018952E8d));
    }

    public void setCredentialsProvider(CredentialsProvider credentialsProvider) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 22, 20, 6, 66}, "fbadcc", false));
    }
}
