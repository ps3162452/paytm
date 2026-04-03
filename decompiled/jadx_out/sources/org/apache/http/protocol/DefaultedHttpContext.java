package org.apache.http.protocol;

import n.NPStringFog;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class DefaultedHttpContext implements HttpContext {
    public DefaultedHttpContext(HttpContext httpContext, HttpContext httpContext2) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 71, 71, 1, 64}, "332ca4", true));
    }

    @Override // org.apache.http.protocol.HttpContext
    public Object getAttribute(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 77, 67, 6, 69}, "c96ddb", false, false));
    }

    public HttpContext getDefaults() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 71, 76, 7, 24}, "839e9e", 2135468360L));
    }

    @Override // org.apache.http.protocol.HttpContext
    public Object removeAttribute(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 65, 76, 81, 18}, "75933a", -3.25665169E8d));
    }

    @Override // org.apache.http.protocol.HttpContext
    public void setAttribute(String str, Object obj) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 67, 71, 4, 20}, "a72f5a", -835));
    }
}
