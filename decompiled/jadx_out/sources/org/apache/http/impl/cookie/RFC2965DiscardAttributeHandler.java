package org.apache.http.impl.cookie;

import n.NPStringFog;
import org.apache.http.cookie.Cookie;
import org.apache.http.cookie.CookieAttributeHandler;
import org.apache.http.cookie.CookieOrigin;
import org.apache.http.cookie.MalformedCookieException;
import org.apache.http.cookie.SetCookie;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class RFC2965DiscardAttributeHandler implements CookieAttributeHandler {
    public RFC2965DiscardAttributeHandler() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 23, 76, 90, 25}, "ac9885", -2869));
    }

    @Override // org.apache.http.cookie.CookieAttributeHandler
    public boolean match(Cookie cookie, CookieOrigin cookieOrigin) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 22, 69, 7, 69}, "ab0ed1", true));
    }

    @Override // org.apache.http.cookie.CookieAttributeHandler
    public void parse(SetCookie setCookie, String str) throws MalformedCookieException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 71, 16, 7, 66}, "83eec2", -3.6207475E8f));
    }

    @Override // org.apache.http.cookie.CookieAttributeHandler
    public void validate(Cookie cookie, CookieOrigin cookieOrigin) throws MalformedCookieException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 17, 23, 3, 66}, "0ebacb", 2339));
    }
}
