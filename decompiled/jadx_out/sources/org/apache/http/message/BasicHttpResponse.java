package org.apache.http.message;

import java.util.Locale;
import n.NPStringFog;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.ProtocolVersion;
import org.apache.http.ReasonPhraseCatalog;
import org.apache.http.StatusLine;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class BasicHttpResponse extends AbstractHttpMessage implements HttpResponse {
    public BasicHttpResponse(ProtocolVersion protocolVersion, int i, String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 66, 71, 86, 66}, "f624c4", -8.99042551E8d));
    }

    public BasicHttpResponse(StatusLine statusLine) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 16, 68, 90, 18}, "ad1830", 3.43897029E8d));
    }

    public BasicHttpResponse(StatusLine statusLine, ReasonPhraseCatalog reasonPhraseCatalog, Locale locale) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 71, 71, 83, 17}, "132105", false, false));
    }

    @Override // org.apache.http.HttpResponse
    public HttpEntity getEntity() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 22, 67, 81, 18}, "bb6339", -697409030L));
    }

    @Override // org.apache.http.HttpResponse
    public Locale getLocale() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 23, 69, 3, 25}, "fc0a8b", 3.14818157E8d));
    }

    @Override // org.apache.http.HttpMessage
    public ProtocolVersion getProtocolVersion() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 21, 22, 91, 19}, "4ac923", -24844));
    }

    protected String getReason(int i) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 76, 66, 3, 24}, "c87a9a", -7212));
    }

    @Override // org.apache.http.HttpResponse
    public StatusLine getStatusLine() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 69, 76, 6, 25}, "119d82", -1174461757L));
    }

    @Override // org.apache.http.HttpResponse
    public void setEntity(HttpEntity httpEntity) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 21, 16, 81, 22}, "1ae379", -2.5024912E8f));
    }

    @Override // org.apache.http.HttpResponse
    public void setLocale(Locale locale) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 18, 77, 83, 20}, "3f815e", 1635));
    }

    @Override // org.apache.http.HttpResponse
    public void setReasonPhrase(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 65, 64, 91, 66}, "7559cb", -2.130671E9f));
    }

    @Override // org.apache.http.HttpResponse
    public void setStatusCode(int i) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 23, 76, 1, 68}, "cc9cec", 839628805L));
    }

    @Override // org.apache.http.HttpResponse
    public void setStatusLine(ProtocolVersion protocolVersion, int i) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 76, 76, 85, 64}, "5897a0", true, false));
    }

    @Override // org.apache.http.HttpResponse
    public void setStatusLine(ProtocolVersion protocolVersion, int i, String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 67, 20, 84, 17}, "47a60b", -29830));
    }

    @Override // org.apache.http.HttpResponse
    public void setStatusLine(StatusLine statusLine) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 77, 19, 84, 16}, "c9f610", -1.2949576E9f));
    }
}
