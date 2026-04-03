package org.apache.http.impl.auth;

import n.NPStringFog;
import org.apache.http.Header;
import org.apache.http.HttpRequest;
import org.apache.http.auth.AuthenticationException;
import org.apache.http.auth.Credentials;
import org.apache.http.auth.MalformedChallengeException;
import org.apache.http.util.CharArrayBuffer;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class NTLMScheme extends AuthSchemeBase {
    public NTLMScheme(NTLMEngine nTLMEngine) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 23, 16, 7, 67}, "4ceeb2", false, false));
    }

    @Override // org.apache.http.auth.AuthScheme
    public Header authenticate(Credentials credentials, HttpRequest httpRequest) throws AuthenticationException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 65, 22, 3, 25}, "a5ca86", false, true));
    }

    @Override // org.apache.http.auth.AuthScheme
    public String getParameter(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 66, 19, 90, 18}, "66f832", -1.6769485E9f));
    }

    @Override // org.apache.http.auth.AuthScheme
    public String getRealm() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 64, 65, 82, 21}, "b4404b", 1.4146829E9f));
    }

    @Override // org.apache.http.auth.AuthScheme
    public String getSchemeName() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 67, 66, 80, 64}, "f772a9", false));
    }

    @Override // org.apache.http.auth.AuthScheme
    public boolean isComplete() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 77, 67, 1, 23}, "796c6f", 2.0559796E9f));
    }

    @Override // org.apache.http.auth.AuthScheme
    public boolean isConnectionBased() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 21, 77, 83, 67}, "3a81b8", true));
    }

    @Override // org.apache.http.impl.auth.AuthSchemeBase
    protected void parseChallenge(CharArrayBuffer charArrayBuffer, int i, int i2) throws MalformedChallengeException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 66, 20, 4, 16}, "66af1f", -1.962353309E9d));
    }
}
