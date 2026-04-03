package org.apache.http.impl.cookie;

import n.NPStringFog;
import org.apache.http.cookie.Cookie;
import org.apache.http.cookie.CookieOrigin;
import org.apache.http.cookie.MalformedCookieException;
import org.apache.http.cookie.SetCookie;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class BasicSecureHandler extends AbstractCookieAttributeHandler {
    public BasicSecureHandler() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 68, 23, 83, 64}, "70b1a1", 9138));
    }

    @Override // org.apache.http.impl.cookie.AbstractCookieAttributeHandler, org.apache.http.cookie.CookieAttributeHandler
    public boolean match(Cookie cookie, CookieOrigin cookieOrigin) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 16, 19, 1, 17}, "6dfc01", 1.9590031E8d));
    }

    @Override // org.apache.http.cookie.CookieAttributeHandler
    public void parse(SetCookie setCookie, String str) throws MalformedCookieException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 23, 71, 0, 20}, "cc2b50", false));
    }
}
