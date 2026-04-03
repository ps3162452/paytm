package org.apache.http.message;

import n.NPStringFog;
import org.apache.http.ProtocolVersion;
import org.apache.http.RequestLine;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class BasicRequestLine implements RequestLine {
    public BasicRequestLine(String str, String str2, ProtocolVersion protocolVersion) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 18, 66, 6, 64}, "4f7da2", -5774));
    }

    public Object clone() throws CloneNotSupportedException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{97, 76, 77, 86, 16}, "28841c", 1.864439156E9d));
    }

    @Override // org.apache.http.RequestLine
    public String getMethod() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 67, 76, 80, 69}, "b792da", true, true));
    }

    @Override // org.apache.http.RequestLine
    public ProtocolVersion getProtocolVersion() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 22, 77, 90, 23}, "cb8861", -1962651231L));
    }

    @Override // org.apache.http.RequestLine
    public String getUri() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 17, 22, 85, 22}, "6ec779", 1.107676392E9d));
    }

    public String toString() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 18, 70, 83, 19}, "9f312d", 1536189985L));
    }
}
