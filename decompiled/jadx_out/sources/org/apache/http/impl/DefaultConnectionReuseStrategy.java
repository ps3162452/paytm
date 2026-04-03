package org.apache.http.impl;

import n.NPStringFog;
import org.apache.http.ConnectionReuseStrategy;
import org.apache.http.HeaderIterator;
import org.apache.http.HttpResponse;
import org.apache.http.TokenIterator;
import org.apache.http.protocol.HttpContext;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class DefaultConnectionReuseStrategy implements ConnectionReuseStrategy {
    public DefaultConnectionReuseStrategy() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 69, 67, 90, 23}, "f16862", true, false));
    }

    protected TokenIterator createTokenIterator(HeaderIterator headerIterator) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 21, 16, 81, 16}, "4ae314", 25217));
    }

    @Override // org.apache.http.ConnectionReuseStrategy
    public boolean keepAlive(HttpResponse httpResponse, HttpContext httpContext) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 67, 64, 3, 22}, "f75a70", true));
    }
}
