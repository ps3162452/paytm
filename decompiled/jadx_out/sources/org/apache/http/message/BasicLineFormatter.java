package org.apache.http.message;

import n.NPStringFog;
import org.apache.http.Header;
import org.apache.http.ProtocolVersion;
import org.apache.http.RequestLine;
import org.apache.http.StatusLine;
import org.apache.http.util.CharArrayBuffer;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class BasicLineFormatter implements LineFormatter {
    public static final BasicLineFormatter DEFAULT = null;

    public BasicLineFormatter() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 76, 77, 85, 67}, "5887bf", true, true));
    }

    public static final String formatHeader(Header header, LineFormatter lineFormatter) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 21, 64, 6, 64}, "ca5da7", 1019670037L));
    }

    public static final String formatProtocolVersion(ProtocolVersion protocolVersion, LineFormatter lineFormatter) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 18, 76, 82, 68}, "7f90e1", 8255));
    }

    public static final String formatRequestLine(RequestLine requestLine, LineFormatter lineFormatter) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 67, 76, 90, 22}, "c7987b", 1995818342L));
    }

    public static final String formatStatusLine(StatusLine statusLine, LineFormatter lineFormatter) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 23, 65, 91, 64}, "4c49a7", false));
    }

    @Override // org.apache.http.message.LineFormatter
    public CharArrayBuffer appendProtocolVersion(CharArrayBuffer charArrayBuffer, ProtocolVersion protocolVersion) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 64, 65, 7, 17}, "844e09", false));
    }

    protected void doFormatHeader(CharArrayBuffer charArrayBuffer, Header header) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{97, 21, 23, 84, 16}, "2ab619", 1.9469861E9f));
    }

    protected void doFormatRequestLine(CharArrayBuffer charArrayBuffer, RequestLine requestLine) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 21, 66, 1, 19}, "8a7c26", 14745));
    }

    protected void doFormatStatusLine(CharArrayBuffer charArrayBuffer, StatusLine statusLine) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 17, 69, 91, 19}, "be092c", 15145));
    }

    protected int estimateProtocolVersionLen(ProtocolVersion protocolVersion) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 70, 69, 7, 21}, "a20e45", -1.19951E9f));
    }

    @Override // org.apache.http.message.LineFormatter
    public CharArrayBuffer formatHeader(CharArrayBuffer charArrayBuffer, Header header) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 18, 22, 4, 20}, "8fcf57", 1.78210444E9d));
    }

    @Override // org.apache.http.message.LineFormatter
    public CharArrayBuffer formatRequestLine(CharArrayBuffer charArrayBuffer, RequestLine requestLine) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 17, 22, 3, 16}, "aeca16", false));
    }

    @Override // org.apache.http.message.LineFormatter
    public CharArrayBuffer formatStatusLine(CharArrayBuffer charArrayBuffer, StatusLine statusLine) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 76, 19, 1, 67}, "a8fcb2", 1960128027L));
    }

    protected CharArrayBuffer initBuffer(CharArrayBuffer charArrayBuffer) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 64, 66, 1, 18}, "847c34", -1.61919655E8d));
    }
}
