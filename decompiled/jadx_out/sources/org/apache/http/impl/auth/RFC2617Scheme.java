package org.apache.http.impl.auth;

import java.util.Map;
import n.NPStringFog;
import org.apache.http.auth.MalformedChallengeException;
import org.apache.http.util.CharArrayBuffer;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public abstract class RFC2617Scheme extends AuthSchemeBase {
    public RFC2617Scheme() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 17, 22, 81, 69}, "eec3de", false));
    }

    @Override // org.apache.http.auth.AuthScheme
    public String getParameter(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 16, 65, 3, 67}, "fd4aba", 1.3234057E9f));
    }

    protected Map<String, String> getParameters() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 76, 16, 86, 17}, "48e408", 28785));
    }

    @Override // org.apache.http.auth.AuthScheme
    public String getRealm() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 18, 71, 7, 20}, "cf2e5e", -22238));
    }

    @Override // org.apache.http.impl.auth.AuthSchemeBase
    protected void parseChallenge(CharArrayBuffer charArrayBuffer, int i, int i2) throws MalformedChallengeException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 22, 16, 85, 16}, "bbe71d", false));
    }
}
