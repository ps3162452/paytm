package org.apache.http.impl.auth;

import n.NPStringFog;
import org.apache.http.Header;
import org.apache.http.HttpRequest;
import org.apache.http.auth.AuthenticationException;
import org.apache.http.auth.Credentials;
import org.apache.http.auth.MalformedChallengeException;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class DigestScheme extends RFC2617Scheme {
    public DigestScheme() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{97, 66, 70, 87, 64}, "2635a7", 5403));
    }

    public static String createCnonce() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 76, 66, 90, 71}, "a878fc", 5.3402413E8f));
    }

    @Override // org.apache.http.auth.AuthScheme
    public Header authenticate(Credentials credentials, HttpRequest httpRequest) throws AuthenticationException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 64, 16, 90, 22}, "a4e877", false));
    }

    @Override // org.apache.http.auth.AuthScheme
    public String getSchemeName() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 16, 23, 86, 69}, "0db4d2", -27510));
    }

    @Override // org.apache.http.auth.AuthScheme
    public boolean isComplete() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 67, 19, 86, 67}, "67f4b8", 1.415651982E9d));
    }

    @Override // org.apache.http.auth.AuthScheme
    public boolean isConnectionBased() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 16, 20, 80, 25}, "1da28e", 1.88527873E9d));
    }

    public void overrideParamter(String str, String str2) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 65, 77, 4, 69}, "558fd8", false));
    }

    @Override // org.apache.http.impl.auth.AuthSchemeBase, org.apache.http.auth.AuthScheme
    public void processChallenge(Header header) throws MalformedChallengeException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 66, 16, 87, 67}, "96e5b3", 281658144L));
    }
}
