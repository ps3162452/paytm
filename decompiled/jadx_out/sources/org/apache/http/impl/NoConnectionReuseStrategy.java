package org.apache.http.impl;

import n.NPStringFog;
import org.apache.http.ConnectionReuseStrategy;
import org.apache.http.HttpResponse;
import org.apache.http.protocol.HttpContext;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class NoConnectionReuseStrategy implements ConnectionReuseStrategy {
    public NoConnectionReuseStrategy() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 71, 17, 83, 64}, "43d1ab", false));
    }

    @Override // org.apache.http.ConnectionReuseStrategy
    public boolean keepAlive(HttpResponse httpResponse, HttpContext httpContext) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 22, 66, 1, 69}, "db7cd2", -164852087L));
    }
}
