package org.apache.http.message;

import n.NPStringFog;
import org.apache.http.HttpEntity;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.ProtocolVersion;
import org.apache.http.RequestLine;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class BasicHttpEntityEnclosingRequest extends BasicHttpRequest implements HttpEntityEnclosingRequest {
    public BasicHttpEntityEnclosingRequest(String str, String str2) {
        super((RequestLine) null);
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 17, 77, 86, 19}, "3e8429", 30061));
    }

    public BasicHttpEntityEnclosingRequest(String str, String str2, ProtocolVersion protocolVersion) {
        super((RequestLine) null);
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 69, 17, 90, 68}, "51d8e3", -1.5284399E9f));
    }

    public BasicHttpEntityEnclosingRequest(RequestLine requestLine) {
        super((RequestLine) null);
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 64, 16, 4, 22}, "84ef7c", false, true));
    }

    @Override // org.apache.http.HttpEntityEnclosingRequest
    public boolean expectContinue() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 23, 70, 90, 17}, "3c380a", true, false));
    }

    @Override // org.apache.http.HttpEntityEnclosingRequest
    public HttpEntity getEntity() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 69, 67, 0, 23}, "816b6e", 1.9430319E9f));
    }

    @Override // org.apache.http.HttpEntityEnclosingRequest
    public void setEntity(HttpEntity httpEntity) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 76, 20, 0, 71}, "88abf0", -3070));
    }
}
