package org.apache.http.impl.client;

import java.net.URI;
import n.NPStringFog;
import org.apache.http.HttpRequest;
import org.apache.http.ProtocolException;
import org.apache.http.ProtocolVersion;
import org.apache.http.RequestLine;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.message.AbstractHttpMessage;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class RequestWrapper extends AbstractHttpMessage implements HttpUriRequest {
    public RequestWrapper(HttpRequest httpRequest) throws ProtocolException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 71, 66, 1, 19}, "737c2b", 18134));
    }

    @Override // org.apache.http.client.methods.HttpUriRequest, org.apache.http.client.methods.AbortableHttpRequest
    public void abort() throws UnsupportedOperationException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 76, 76, 85, 22}, "a89773", -1.4777846E9f));
    }

    public int getExecCount() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 76, 71, 81, 66}, "7823c3", false));
    }

    @Override // org.apache.http.client.methods.HttpUriRequest
    public String getMethod() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 67, 77, 84, 17}, "d7860d", -1.7125836E9f));
    }

    public HttpRequest getOriginal() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 64, 19, 85, 64}, "04f7a1", false));
    }

    @Override // org.apache.http.HttpMessage
    public ProtocolVersion getProtocolVersion() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 65, 69, 90, 67}, "0508b4", 8.87471514E8d));
    }

    @Override // org.apache.http.HttpRequest
    public RequestLine getRequestLine() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 21, 77, 3, 16}, "0a8a1a", -1.619687311E9d));
    }

    @Override // org.apache.http.client.methods.HttpUriRequest
    public URI getURI() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 22, 17, 83, 24}, "5bd19e", false));
    }

    public void incrementExecCount() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 16, 20, 85, 23}, "0da765", false, true));
    }

    @Override // org.apache.http.client.methods.HttpUriRequest
    public boolean isAborted() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 17, 77, 82, 64}, "9e80ab", 2509));
    }

    public boolean isRepeatable() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 76, 66, 83, 22}, "087178", -6.44263E8f));
    }

    public void resetHeaders() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 21, 23, 87, 68}, "4ab5e3", -338414946L));
    }

    public void setMethod(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 67, 66, 7, 24}, "b77e99", false, true));
    }

    public void setProtocolVersion(ProtocolVersion protocolVersion) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 23, 76, 0, 66}, "3c9bc9", 1.113200441E9d));
    }

    public void setURI(URI uri) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 68, 66, 80, 64}, "0072a1", 1.7070867E9f));
    }
}
