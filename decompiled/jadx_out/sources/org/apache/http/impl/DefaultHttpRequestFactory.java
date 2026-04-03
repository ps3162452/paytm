package org.apache.http.impl;

import n.NPStringFog;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestFactory;
import org.apache.http.MethodNotSupportedException;
import org.apache.http.RequestLine;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class DefaultHttpRequestFactory implements HttpRequestFactory {
    public DefaultHttpRequestFactory() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 66, 71, 87, 64}, "c625ab", true, true));
    }

    @Override // org.apache.http.HttpRequestFactory
    public HttpRequest newHttpRequest(String str, String str2) throws MethodNotSupportedException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 77, 66, 3, 24}, "e97a9e", 9.875187E8f));
    }

    @Override // org.apache.http.HttpRequestFactory
    public HttpRequest newHttpRequest(RequestLine requestLine) throws MethodNotSupportedException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 65, 71, 7, 18}, "452e32", false));
    }
}
