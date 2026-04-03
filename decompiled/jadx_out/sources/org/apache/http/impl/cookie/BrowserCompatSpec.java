package org.apache.http.impl.cookie;

import java.util.List;
import n.NPStringFog;
import org.apache.http.Header;
import org.apache.http.cookie.Cookie;
import org.apache.http.cookie.CookieOrigin;
import org.apache.http.cookie.MalformedCookieException;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class BrowserCompatSpec extends CookieSpecBase {
    protected static final String[] DATE_PATTERNS = null;

    public BrowserCompatSpec() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 71, 19, 86, 18}, "a3f431", false, true));
    }

    public BrowserCompatSpec(String[] strArr) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 67, 70, 83, 25}, "373186", 1343735394L));
    }

    @Override // org.apache.http.cookie.CookieSpec
    public List<Header> formatCookies(List<Cookie> list) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 77, 22, 90, 20}, "69c85f", -1.9491904E9f));
    }

    @Override // org.apache.http.cookie.CookieSpec
    public int getVersion() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 18, 69, 7, 25}, "bf0e8f", -25136));
    }

    @Override // org.apache.http.cookie.CookieSpec
    public Header getVersionHeader() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 16, 70, 1, 19}, "8d3c2c", -1.903504E9f));
    }

    @Override // org.apache.http.cookie.CookieSpec
    public List<Cookie> parse(Header header, CookieOrigin cookieOrigin) throws MalformedCookieException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 17, 77, 7, 17}, "5e8e0b", 625993476L));
    }
}
