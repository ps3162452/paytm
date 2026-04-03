package org.apache.http.impl.cookie;

import n.NPStringFog;
import org.apache.http.cookie.Cookie;
import org.apache.http.cookie.CookieAttributeHandler;
import org.apache.http.cookie.CookieOrigin;
import org.apache.http.cookie.MalformedCookieException;
import org.apache.http.cookie.SetCookie;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class BasicDomainHandler implements CookieAttributeHandler {
    public BasicDomainHandler() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 64, 69, 4, 22}, "d40f75", false));
    }

    @Override // org.apache.http.cookie.CookieAttributeHandler
    public boolean match(Cookie cookie, CookieOrigin cookieOrigin) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 65, 22, 83, 17}, "85c101", true));
    }

    @Override // org.apache.http.cookie.CookieAttributeHandler
    public void parse(SetCookie setCookie, String str) throws MalformedCookieException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 69, 77, 86, 22}, "a1847c", -14638));
    }

    @Override // org.apache.http.cookie.CookieAttributeHandler
    public void validate(Cookie cookie, CookieOrigin cookieOrigin) throws MalformedCookieException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 66, 22, 91, 68}, "86c9e3", false));
    }
}
