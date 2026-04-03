package org.apache.http.message;

import n.NPStringFog;
import org.apache.http.HttpRequest;
import org.apache.http.ProtocolVersion;
import org.apache.http.RequestLine;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class BasicHttpRequest extends AbstractHttpMessage implements HttpRequest {
    public BasicHttpRequest(String str, String str2) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 70, 19, 84, 21}, "a2f645", 1.4954132E9f));
    }

    public BasicHttpRequest(String str, String str2, ProtocolVersion protocolVersion) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 71, 67, 84, 25}, "936688", 18490));
    }

    public BasicHttpRequest(RequestLine requestLine) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 18, 19, 86, 25}, "bff481", 1.525644585E9d));
    }

    @Override // org.apache.http.HttpMessage
    public ProtocolVersion getProtocolVersion() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 16, 71, 82, 66}, "1d20c7", true, true));
    }

    @Override // org.apache.http.HttpRequest
    public RequestLine getRequestLine() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 67, 65, 0, 16}, "e74b17", 1665087375L));
    }
}
