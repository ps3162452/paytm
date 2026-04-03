package org.apache.http.impl.auth;

import n.NPStringFog;
import org.apache.http.Header;
import org.apache.http.HttpRequest;
import org.apache.http.auth.AuthenticationException;
import org.apache.http.auth.Credentials;
import org.apache.http.auth.MalformedChallengeException;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class BasicScheme extends RFC2617Scheme {
    public BasicScheme() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 67, 66, 81, 19}, "57732e", true));
    }

    public static Header authenticate(Credentials credentials, String str, boolean z) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 68, 76, 81, 68}, "c093e3", false, true));
    }

    @Override // org.apache.http.auth.AuthScheme
    public Header authenticate(Credentials credentials, HttpRequest httpRequest) throws AuthenticationException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 76, 22, 82, 20}, "b8c05a", true, true));
    }

    @Override // org.apache.http.auth.AuthScheme
    public String getSchemeName() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 22, 68, 83, 21}, "bb114a", -1.3357481E9f));
    }

    @Override // org.apache.http.auth.AuthScheme
    public boolean isComplete() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 65, 71, 3, 22}, "452a79", -7.75240669E8d));
    }

    @Override // org.apache.http.auth.AuthScheme
    public boolean isConnectionBased() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 76, 64, 87, 67}, "b855bc", -5206));
    }

    @Override // org.apache.http.impl.auth.AuthSchemeBase, org.apache.http.auth.AuthScheme
    public void processChallenge(Header header) throws MalformedChallengeException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 18, 67, 85, 64}, "df67a2", 1.90335909E9d));
    }
}
