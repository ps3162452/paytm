package org.apache.http.client.methods;

import java.io.IOException;
import java.net.URI;
import n.NPStringFog;
import org.apache.http.ProtocolVersion;
import org.apache.http.RequestLine;
import org.apache.http.conn.ClientConnectionRequest;
import org.apache.http.conn.ConnectionReleaseTrigger;
import org.apache.http.message.AbstractHttpMessage;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public abstract class HttpRequestBase extends AbstractHttpMessage implements HttpUriRequest, AbortableHttpRequest {
    public HttpRequestBase() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 65, 69, 3, 23}, "450a63", -1.565428E9f));
    }

    @Override // org.apache.http.client.methods.HttpUriRequest, org.apache.http.client.methods.AbortableHttpRequest
    public void abort() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 70, 20, 83, 21}, "42a149", true));
    }

    public Object clone() throws CloneNotSupportedException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 71, 19, 7, 19}, "e3fe20", 17315));
    }

    public abstract String getMethod();

    @Override // org.apache.http.HttpMessage
    public ProtocolVersion getProtocolVersion() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{97, 66, 17, 3, 66}, "26dac9", 7892));
    }

    @Override // org.apache.http.HttpRequest
    public RequestLine getRequestLine() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 68, 17, 91, 22}, "80d970", 7519));
    }

    @Override // org.apache.http.client.methods.HttpUriRequest
    public URI getURI() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 76, 23, 84, 71}, "c8b6f4", -1.350288962E9d));
    }

    @Override // org.apache.http.client.methods.HttpUriRequest
    public boolean isAborted() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 66, 70, 7, 23}, "a63e6c", false));
    }

    @Override // org.apache.http.client.methods.AbortableHttpRequest
    public void setConnectionRequest(ClientConnectionRequest clientConnectionRequest) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 77, 69, 7, 16}, "790e11", true, false));
    }

    @Override // org.apache.http.client.methods.AbortableHttpRequest
    public void setReleaseTrigger(ConnectionReleaseTrigger connectionReleaseTrigger) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 64, 20, 1, 23}, "54ac66", false, false));
    }

    public void setURI(URI uri) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 77, 17, 3, 25}, "69da86", 8.7982035E8f));
    }
}
