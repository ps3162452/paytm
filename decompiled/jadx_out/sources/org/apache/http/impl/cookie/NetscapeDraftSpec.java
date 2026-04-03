package org.apache.http.impl.cookie;

import java.util.List;
import n.NPStringFog;
import org.apache.http.Header;
import org.apache.http.cookie.Cookie;
import org.apache.http.cookie.CookieOrigin;
import org.apache.http.cookie.MalformedCookieException;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class NetscapeDraftSpec extends CookieSpecBase {
    protected static final String EXPIRES_PATTERN = NPStringFog.decode(new byte[]{116, 36, 116, 31, 17, 7, 85, 76, 124, 126, 124, 78, 72, 24, 72, 74, 17, 43, 121, 91, 92, 94, 11, 16, 66, 65, 75}, "1a131c", 1.4993409E9f);

    public NetscapeDraftSpec() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{97, 18, 22, 86, 19}, "2fc425", 1.1555795E9f));
    }

    public NetscapeDraftSpec(String[] strArr) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 67, 76, 6, 68}, "b79de8", -1.739665226E9d));
    }

    @Override // org.apache.http.cookie.CookieSpec
    public List<Header> formatCookies(List<Cookie> list) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 18, 17, 1, 67}, "dfdcba", -1.551036635E9d));
    }

    @Override // org.apache.http.cookie.CookieSpec
    public int getVersion() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 17, 66, 85, 21}, "4e774e", -25313));
    }

    @Override // org.apache.http.cookie.CookieSpec
    public Header getVersionHeader() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 68, 23, 81, 64}, "70b3aa", -1.441272838E9d));
    }

    @Override // org.apache.http.cookie.CookieSpec
    public List<Cookie> parse(Header header, CookieOrigin cookieOrigin) throws MalformedCookieException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 77, 22, 80, 69}, "09c2d9", -1.121053235E9d));
    }
}
