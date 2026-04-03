package org.apache.http.impl.cookie;

import java.util.List;
import n.NPStringFog;
import org.apache.http.Header;
import org.apache.http.cookie.Cookie;
import org.apache.http.cookie.CookieOrigin;
import org.apache.http.cookie.MalformedCookieException;
import org.apache.http.util.CharArrayBuffer;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class RFC2965Spec extends RFC2109Spec {
    public RFC2965Spec() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 18, 67, 82, 64}, "9f60a1", false));
    }

    public RFC2965Spec(String[] strArr, boolean z) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 68, 67, 87, 71}, "3065ff", -26993));
    }

    @Override // org.apache.http.impl.cookie.RFC2109Spec
    protected void formatCookieAsVer(CharArrayBuffer charArrayBuffer, Cookie cookie, int i) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 21, 70, 85, 66}, "ea37cc", -29976));
    }

    @Override // org.apache.http.impl.cookie.RFC2109Spec, org.apache.http.cookie.CookieSpec
    public int getVersion() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 18, 23, 80, 23}, "5fb26b", -1.19809001E8d));
    }

    @Override // org.apache.http.impl.cookie.RFC2109Spec, org.apache.http.cookie.CookieSpec
    public Header getVersionHeader() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 70, 77, 1, 71}, "128cf8", 32750));
    }

    @Override // org.apache.http.impl.cookie.CookieSpecBase, org.apache.http.cookie.CookieSpec
    public boolean match(Cookie cookie, CookieOrigin cookieOrigin) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 68, 17, 1, 20}, "e0dc5e", true, true));
    }

    @Override // org.apache.http.impl.cookie.RFC2109Spec, org.apache.http.cookie.CookieSpec
    public List<Cookie> parse(Header header, CookieOrigin cookieOrigin) throws MalformedCookieException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 71, 22, 4, 25}, "43cf8c", 4.584889E8f));
    }

    @Override // org.apache.http.impl.cookie.RFC2109Spec, org.apache.http.impl.cookie.CookieSpecBase, org.apache.http.cookie.CookieSpec
    public void validate(Cookie cookie, CookieOrigin cookieOrigin) throws MalformedCookieException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 65, 20, 7, 19}, "45ae21", -1.897802412E9d));
    }
}
