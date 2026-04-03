package org.apache.http.protocol;

import n.NPStringFog;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class SyncBasicHttpContext extends BasicHttpContext {
    public SyncBasicHttpContext(HttpContext httpContext) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 22, 69, 3, 17}, "1b0a03", -7.85788418E8d));
    }

    @Override // org.apache.http.protocol.BasicHttpContext, org.apache.http.protocol.HttpContext
    public Object getAttribute(String str) {
        synchronized (this) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{98, 18, 65, 6, 64}, "1f4da3", -869149822L));
        }
    }

    @Override // org.apache.http.protocol.BasicHttpContext, org.apache.http.protocol.HttpContext
    public Object removeAttribute(String str) {
        synchronized (this) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{49, 23, 17, 86, 18}, "bcd432", 2.0110374E9f));
        }
    }

    @Override // org.apache.http.protocol.BasicHttpContext, org.apache.http.protocol.HttpContext
    public void setAttribute(String str, Object obj) {
        synchronized (this) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{49, 64, 65, 0, 20}, "b44b50", 21166));
        }
    }
}
