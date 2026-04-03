package org.apache.http.impl.cookie;

import java.util.Collection;
import n.NPStringFog;
import org.apache.http.cookie.CookieAttributeHandler;
import org.apache.http.cookie.CookieSpec;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public abstract class AbstractCookieSpec implements CookieSpec {
    public AbstractCookieSpec() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 16, 76, 91, 25}, "9d998d", false));
    }

    protected CookieAttributeHandler findAttribHandler(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 16, 71, 7, 66}, "ad2ecc", 30787));
    }

    protected CookieAttributeHandler getAttribHandler(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 65, 68, 84, 21}, "951646", -6584));
    }

    protected Collection<CookieAttributeHandler> getAttribHandlers() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 64, 69, 81, 25}, "34038e", -1.2570813E9f));
    }

    public void registerAttribHandler(String str, CookieAttributeHandler cookieAttributeHandler) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 64, 71, 1, 17}, "542c02", -1972002454L));
    }
}
