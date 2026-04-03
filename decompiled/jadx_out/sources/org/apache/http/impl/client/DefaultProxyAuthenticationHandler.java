package org.apache.http.impl.client;

import java.util.Map;
import n.NPStringFog;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.auth.MalformedChallengeException;
import org.apache.http.protocol.HttpContext;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class DefaultProxyAuthenticationHandler extends AbstractAuthenticationHandler {
    public DefaultProxyAuthenticationHandler() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 67, 69, 81, 71}, "5703fe", -6375));
    }

    @Override // org.apache.http.client.AuthenticationHandler
    public Map<String, Header> getChallenges(HttpResponse httpResponse, HttpContext httpContext) throws MalformedChallengeException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 21, 64, 1, 67}, "8a5cbd", true));
    }

    @Override // org.apache.http.client.AuthenticationHandler
    public boolean isAuthenticationRequested(HttpResponse httpResponse, HttpContext httpContext) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 64, 16, 1, 66}, "64ecc1", false));
    }
}
