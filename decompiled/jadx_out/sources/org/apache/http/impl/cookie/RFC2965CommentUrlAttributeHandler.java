package org.apache.http.impl.cookie;

import n.NPStringFog;
import org.apache.http.cookie.Cookie;
import org.apache.http.cookie.CookieAttributeHandler;
import org.apache.http.cookie.CookieOrigin;
import org.apache.http.cookie.MalformedCookieException;
import org.apache.http.cookie.SetCookie;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class RFC2965CommentUrlAttributeHandler implements CookieAttributeHandler {
    public RFC2965CommentUrlAttributeHandler() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 67, 17, 81, 20}, "37d358", -28397));
    }

    @Override // org.apache.http.cookie.CookieAttributeHandler
    public boolean match(Cookie cookie, CookieOrigin cookieOrigin) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 21, 69, 90, 18}, "aa083d", false));
    }

    @Override // org.apache.http.cookie.CookieAttributeHandler
    public void parse(SetCookie setCookie, String str) throws MalformedCookieException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 69, 70, 1, 21}, "113c43", false, true));
    }

    @Override // org.apache.http.cookie.CookieAttributeHandler
    public void validate(Cookie cookie, CookieOrigin cookieOrigin) throws MalformedCookieException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 68, 16, 7, 16}, "00ee17", 16974));
    }
}
