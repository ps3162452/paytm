package org.apache.http.impl.cookie;

import java.util.List;
import n.NPStringFog;
import org.apache.http.Header;
import org.apache.http.cookie.Cookie;
import org.apache.http.cookie.CookieOrigin;
import org.apache.http.cookie.CookieSpec;
import org.apache.http.cookie.MalformedCookieException;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class BestMatchSpec implements CookieSpec {
    public BestMatchSpec() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 16, 16, 4, 71}, "5deffe", 540));
    }

    public BestMatchSpec(String[] strArr, boolean z) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 22, 66, 81, 64}, "9b73a8", false));
    }

    @Override // org.apache.http.cookie.CookieSpec
    public List<Header> formatCookies(List<Cookie> list) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 22, 69, 7, 24}, "9b0e9b", false));
    }

    @Override // org.apache.http.cookie.CookieSpec
    public int getVersion() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 68, 23, 4, 24}, "d0bf99", -125424149L));
    }

    @Override // org.apache.http.cookie.CookieSpec
    public Header getVersionHeader() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{97, 65, 19, 84, 22}, "25f678", 17604));
    }

    @Override // org.apache.http.cookie.CookieSpec
    public boolean match(Cookie cookie, CookieOrigin cookieOrigin) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 23, 20, 0, 69}, "7cabd0", 1845852152L));
    }

    @Override // org.apache.http.cookie.CookieSpec
    public List<Cookie> parse(Header header, CookieOrigin cookieOrigin) throws MalformedCookieException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{97, 64, 22, 1, 22}, "24cc7e", 3.5637142E8f));
    }

    @Override // org.apache.http.cookie.CookieSpec
    public void validate(Cookie cookie, CookieOrigin cookieOrigin) throws MalformedCookieException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 67, 16, 91, 68}, "37e9e1", true, true));
    }
}
