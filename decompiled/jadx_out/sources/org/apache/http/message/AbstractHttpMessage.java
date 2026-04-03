package org.apache.http.message;

import n.NPStringFog;
import org.apache.http.Header;
import org.apache.http.HeaderIterator;
import org.apache.http.HttpMessage;
import org.apache.http.params.HttpParams;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public abstract class AbstractHttpMessage implements HttpMessage {
    protected HeaderGroup headergroup;
    protected HttpParams params;

    protected AbstractHttpMessage() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 66, 70, 81, 16}, "663316", true, false));
    }

    protected AbstractHttpMessage(HttpParams httpParams) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 16, 65, 84, 64}, "6d46a6", true, false));
    }

    @Override // org.apache.http.HttpMessage
    public void addHeader(String str, String str2) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 18, 65, 87, 17}, "df4502", -1.83203529E9d));
    }

    @Override // org.apache.http.HttpMessage
    public void addHeader(Header header) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 16, 65, 81, 21}, "3d4341", true));
    }

    @Override // org.apache.http.HttpMessage
    public boolean containsHeader(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 76, 66, 82, 67}, "5870b3", 1.445904025E9d));
    }

    @Override // org.apache.http.HttpMessage
    public Header[] getAllHeaders() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 21, 69, 6, 22}, "3a0d7c", 1.8469656E9f));
    }

    @Override // org.apache.http.HttpMessage
    public Header getFirstHeader(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 16, 19, 84, 24}, "bdf69e", 8420));
    }

    @Override // org.apache.http.HttpMessage
    public Header[] getHeaders(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 68, 69, 85, 16}, "e00711", 1.2507356E9f));
    }

    @Override // org.apache.http.HttpMessage
    public Header getLastHeader(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{97, 70, 17, 0, 64}, "22dba5", -5996));
    }

    @Override // org.apache.http.HttpMessage
    public HttpParams getParams() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 76, 19, 83, 66}, "08f1cb", -2522));
    }

    @Override // org.apache.http.HttpMessage
    public HeaderIterator headerIterator() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 70, 71, 7, 23}, "d22e65", 24395));
    }

    @Override // org.apache.http.HttpMessage
    public HeaderIterator headerIterator(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{97, 65, 64, 83, 24}, "25519c", true));
    }

    @Override // org.apache.http.HttpMessage
    public void removeHeader(Header header) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 67, 70, 87, 17}, "173501", true));
    }

    @Override // org.apache.http.HttpMessage
    public void removeHeaders(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 67, 71, 82, 23}, "572067", -1.0417959E9f));
    }

    @Override // org.apache.http.HttpMessage
    public void setHeader(String str, String str2) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 21, 19, 91, 16}, "eaf917", 3.393472E8f));
    }

    @Override // org.apache.http.HttpMessage
    public void setHeader(Header header) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 18, 20, 90, 68}, "afa8ee", -1.9021437E9f));
    }

    @Override // org.apache.http.HttpMessage
    public void setHeaders(Header[] headerArr) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 65, 19, 7, 18}, "35fe31", -3.879997E8f));
    }

    @Override // org.apache.http.HttpMessage
    public void setParams(HttpParams httpParams) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{97, 68, 71, 90, 69}, "2028d1", 2.060215796E9d));
    }
}
