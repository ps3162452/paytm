package org.apache.http.message;

import n.NPStringFog;
import org.apache.http.Header;
import org.apache.http.ParseException;
import org.apache.http.ProtocolVersion;
import org.apache.http.RequestLine;
import org.apache.http.StatusLine;
import org.apache.http.util.CharArrayBuffer;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class BasicLineParser implements LineParser {
    public static final BasicLineParser DEFAULT = null;
    protected final ProtocolVersion protocol;

    public BasicLineParser() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 66, 22, 83, 17}, "46c107", -4.7313036E7f));
    }

    public BasicLineParser(ProtocolVersion protocolVersion) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 17, 69, 86, 64}, "ee04aa", false, true));
    }

    public static final Header parseHeader(String str, LineParser lineParser) throws ParseException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 77, 66, 4, 20}, "897f56", false));
    }

    public static final ProtocolVersion parseProtocolVersion(String str, LineParser lineParser) throws ParseException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{97, 68, 23, 91, 18}, "20b931", 1.666129459E9d));
    }

    public static final RequestLine parseRequestLine(String str, LineParser lineParser) throws ParseException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 66, 23, 87, 64}, "b6b5ae", 3.0526742E8f));
    }

    public static final StatusLine parseStatusLine(String str, LineParser lineParser) throws ParseException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 17, 76, 1, 22}, "6e9c74", true, false));
    }

    protected ProtocolVersion createProtocolVersion(int i, int i2) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 69, 64, 82, 22}, "315071", 2.086653791E9d));
    }

    protected RequestLine createRequestLine(String str, String str2, ProtocolVersion protocolVersion) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 76, 69, 7, 23}, "580e62", -1733833004L));
    }

    protected StatusLine createStatusLine(ProtocolVersion protocolVersion, int i, String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 65, 23, 83, 64}, "85b1ae", false));
    }

    @Override // org.apache.http.message.LineParser
    public boolean hasProtocolVersion(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 65, 71, 6, 24}, "b52d98", 1543789643L));
    }

    @Override // org.apache.http.message.LineParser
    public Header parseHeader(CharArrayBuffer charArrayBuffer) throws ParseException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 17, 23, 1, 71}, "7ebcff", -1.1353866E9f));
    }

    @Override // org.apache.http.message.LineParser
    public ProtocolVersion parseProtocolVersion(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor) throws ParseException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 67, 17, 91, 21}, "a7d94d", -4.72734844E8d));
    }

    @Override // org.apache.http.message.LineParser
    public RequestLine parseRequestLine(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor) throws ParseException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 17, 22, 1, 20}, "0ecc58", 2611));
    }

    @Override // org.apache.http.message.LineParser
    public StatusLine parseStatusLine(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor) throws ParseException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 23, 20, 6, 71}, "dcadfb", true));
    }

    protected void skipWhitespace(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 66, 23, 1, 24}, "d6bc93", true));
    }
}
