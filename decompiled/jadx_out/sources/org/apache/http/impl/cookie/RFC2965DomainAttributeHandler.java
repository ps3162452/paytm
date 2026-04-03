package org.apache.http.impl.cookie;

import n.NPStringFog;
import org.apache.http.cookie.Cookie;
import org.apache.http.cookie.CookieAttributeHandler;
import org.apache.http.cookie.CookieOrigin;
import org.apache.http.cookie.MalformedCookieException;
import org.apache.http.cookie.SetCookie;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class RFC2965DomainAttributeHandler implements CookieAttributeHandler {
    public RFC2965DomainAttributeHandler() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 17, 70, 81, 25}, "ee3385", 4342));
    }

    public boolean domainMatch(String str, String str2) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 67, 66, 91, 23}, "67796a", 21754));
    }

    @Override // org.apache.http.cookie.CookieAttributeHandler
    public boolean match(Cookie cookie, CookieOrigin cookieOrigin) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 67, 22, 82, 25}, "a7c089", false));
    }

    @Override // org.apache.http.cookie.CookieAttributeHandler
    public void parse(SetCookie setCookie, String str) throws MalformedCookieException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 68, 71, 1, 21}, "402c4d", -2033609899L));
    }

    @Override // org.apache.http.cookie.CookieAttributeHandler
    public void validate(Cookie cookie, CookieOrigin cookieOrigin) throws MalformedCookieException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 17, 66, 86, 16}, "de7419", true));
    }
}
