package org.apache.http.impl.client;

import java.util.List;
import java.util.Map;
import n.NPStringFog;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.auth.AuthScheme;
import org.apache.http.auth.AuthenticationException;
import org.apache.http.auth.MalformedChallengeException;
import org.apache.http.client.AuthenticationHandler;
import org.apache.http.protocol.HttpContext;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public abstract class AbstractAuthenticationHandler implements AuthenticationHandler {
    public AbstractAuthenticationHandler() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 66, 77, 81, 21}, "d6834d", false, true));
    }

    protected List<String> getAuthPreferences() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 77, 77, 91, 17}, "69890a", false));
    }

    protected Map<String, Header> parseChallenges(Header[] headerArr) throws MalformedChallengeException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 16, 66, 7, 16}, "ed7e1a", true));
    }

    @Override // org.apache.http.client.AuthenticationHandler
    public AuthScheme selectScheme(Map<String, Header> map, HttpResponse httpResponse, HttpContext httpContext) throws AuthenticationException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 21, 76, 81, 24}, "9a9390", -30094));
    }
}
