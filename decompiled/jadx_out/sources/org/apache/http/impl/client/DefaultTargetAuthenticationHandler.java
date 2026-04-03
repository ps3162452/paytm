package org.apache.http.impl.client;

import java.util.Map;
import n.NPStringFog;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.auth.MalformedChallengeException;
import org.apache.http.protocol.HttpContext;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class DefaultTargetAuthenticationHandler extends AbstractAuthenticationHandler {
    public DefaultTargetAuthenticationHandler() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 66, 71, 81, 19}, "c62328", 30288));
    }

    @Override // org.apache.http.client.AuthenticationHandler
    public Map<String, Header> getChallenges(HttpResponse httpResponse, HttpContext httpContext) throws MalformedChallengeException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 69, 76, 84, 67}, "b196b1", -19612));
    }

    @Override // org.apache.http.client.AuthenticationHandler
    public boolean isAuthenticationRequested(HttpResponse httpResponse, HttpContext httpContext) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 77, 66, 81, 19}, "89732a", false));
    }
}
