package org.apache.http.impl.cookie;

import java.util.List;
import n.NPStringFog;
import org.apache.http.HeaderElement;
import org.apache.http.cookie.Cookie;
import org.apache.http.cookie.CookieOrigin;
import org.apache.http.cookie.MalformedCookieException;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public abstract class CookieSpecBase extends AbstractCookieSpec {
    public CookieSpecBase() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 76, 76, 85, 17}, "e8970a", -1166833195L));
    }

    protected static String getDefaultDomain(CookieOrigin cookieOrigin) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 70, 64, 3, 68}, "a25ae0", true));
    }

    protected static String getDefaultPath(CookieOrigin cookieOrigin) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 64, 71, 80, 21}, "042240", -4.3138816E8f));
    }

    @Override // org.apache.http.cookie.CookieSpec
    public boolean match(Cookie cookie, CookieOrigin cookieOrigin) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 23, 19, 84, 20}, "7cf659", false));
    }

    protected List<Cookie> parse(HeaderElement[] headerElementArr, CookieOrigin cookieOrigin) throws MalformedCookieException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 69, 77, 91, 21}, "91894c", true, true));
    }

    @Override // org.apache.http.cookie.CookieSpec
    public void validate(Cookie cookie, CookieOrigin cookieOrigin) throws MalformedCookieException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 22, 64, 80, 23}, "6b526c", true, true));
    }
}
