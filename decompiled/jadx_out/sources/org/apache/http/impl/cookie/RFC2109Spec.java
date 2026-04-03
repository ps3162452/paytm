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
public class RFC2109Spec extends CookieSpecBase {
    public RFC2109Spec() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 66, 65, 80, 22}, "06427d", -1252490318L));
    }

    public RFC2109Spec(String[] strArr, boolean z) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 69, 77, 90, 17}, "518803", 731616676L));
    }

    protected void formatCookieAsVer(CharArrayBuffer charArrayBuffer, Cookie cookie, int i) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 77, 76, 80, 23}, "b99268", -1198));
    }

    @Override // org.apache.http.cookie.CookieSpec
    public List<Header> formatCookies(List<Cookie> list) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 16, 19, 1, 22}, "bdfc74", false, true));
    }

    protected void formatParamAsVer(CharArrayBuffer charArrayBuffer, String str, String str2, int i) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 68, 76, 82, 21}, "b09042", true));
    }

    @Override // org.apache.http.cookie.CookieSpec
    public int getVersion() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 21, 69, 0, 68}, "4a0bee", 1233945744L));
    }

    @Override // org.apache.http.cookie.CookieSpec
    public Header getVersionHeader() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 22, 19, 83, 66}, "3bf1c6", 2762));
    }

    @Override // org.apache.http.cookie.CookieSpec
    public List<Cookie> parse(Header header, CookieOrigin cookieOrigin) throws MalformedCookieException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 18, 77, 3, 24}, "7f8a9d", -31484));
    }

    @Override // org.apache.http.impl.cookie.CookieSpecBase, org.apache.http.cookie.CookieSpec
    public void validate(Cookie cookie, CookieOrigin cookieOrigin) throws MalformedCookieException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 64, 19, 4, 25}, "84ff87", -5.60086777E8d));
    }
}
