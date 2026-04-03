package org.apache.http.client.methods;

import n.NPStringFog;
import org.apache.http.HttpEntity;
import org.apache.http.HttpEntityEnclosingRequest;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public abstract class HttpEntityEnclosingRequestBase extends HttpRequestBase implements HttpEntityEnclosingRequest {
    public HttpEntityEnclosingRequestBase() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 66, 16, 3, 19}, "16ea21", 1.179934555E9d));
    }

    @Override // org.apache.http.client.methods.HttpRequestBase
    public Object clone() throws CloneNotSupportedException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 65, 64, 90, 25}, "a55882", false, false));
    }

    @Override // org.apache.http.HttpEntityEnclosingRequest
    public boolean expectContinue() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 18, 70, 85, 71}, "ef37f8", -1.3248119E9f));
    }

    @Override // org.apache.http.HttpEntityEnclosingRequest
    public HttpEntity getEntity() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 18, 64, 81, 71}, "3f53ff", -1.531942385E9d));
    }

    @Override // org.apache.http.HttpEntityEnclosingRequest
    public void setEntity(HttpEntity httpEntity) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 65, 20, 87, 20}, "d5a55b", 7.99379738E8d));
    }
}
