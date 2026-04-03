package org.apache.http.impl.auth;

import n.NPStringFog;
import org.apache.http.Header;
import org.apache.http.auth.AuthScheme;
import org.apache.http.auth.MalformedChallengeException;
import org.apache.http.util.CharArrayBuffer;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public abstract class AuthSchemeBase implements AuthScheme {
    public AuthSchemeBase() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 17, 64, 83, 66}, "de51cd", -1.987753795E9d));
    }

    public boolean isProxy() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 16, 68, 86, 69}, "3d14df", -1.966427E9f));
    }

    protected abstract void parseChallenge(CharArrayBuffer charArrayBuffer, int i, int i2) throws MalformedChallengeException;

    @Override // org.apache.http.auth.AuthScheme
    public void processChallenge(Header header) throws MalformedChallengeException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 16, 64, 4, 69}, "ad5fd9", 1.0685425E9f));
    }
}
