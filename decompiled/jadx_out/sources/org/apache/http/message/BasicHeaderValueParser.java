package org.apache.http.message;

import n.NPStringFog;
import org.apache.http.HeaderElement;
import org.apache.http.NameValuePair;
import org.apache.http.ParseException;
import org.apache.http.util.CharArrayBuffer;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class BasicHeaderValueParser implements HeaderValueParser {
    public static final BasicHeaderValueParser DEFAULT = null;

    public BasicHeaderValueParser() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 18, 71, 6, 16}, "0f2d14", -1414049524L));
    }

    public static final HeaderElement[] parseElements(String str, HeaderValueParser headerValueParser) throws ParseException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 16, 67, 1, 17}, "4d6c0d", true, true));
    }

    public static final HeaderElement parseHeaderElement(String str, HeaderValueParser headerValueParser) throws ParseException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 71, 71, 86, 69}, "e324d0", true, false));
    }

    public static final NameValuePair parseNameValuePair(String str, HeaderValueParser headerValueParser) throws ParseException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 77, 71, 81, 71}, "d923f1", false, true));
    }

    public static final NameValuePair[] parseParameters(String str, HeaderValueParser headerValueParser) throws ParseException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 22, 64, 7, 71}, "7b5efc", 1.6099195E9f));
    }

    protected HeaderElement createHeaderElement(String str, String str2, NameValuePair[] nameValuePairArr) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 67, 64, 86, 19}, "a75426", false, false));
    }

    protected NameValuePair createNameValuePair(String str, String str2) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 16, 65, 1, 16}, "fd4c12", -1.550592E9f));
    }

    @Override // org.apache.http.message.HeaderValueParser
    public HeaderElement[] parseElements(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 71, 69, 83, 20}, "c3015f", 23972));
    }

    @Override // org.apache.http.message.HeaderValueParser
    public HeaderElement parseHeaderElement(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 67, 20, 0, 64}, "77abaf", 1.29326264E8f));
    }

    @Override // org.apache.http.message.HeaderValueParser
    public NameValuePair parseNameValuePair(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 77, 64, 7, 67}, "e95eba", -1.54804428E9d));
    }

    public NameValuePair parseNameValuePair(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor, char[] cArr) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 18, 69, 87, 68}, "ef05ec", -1.063728537E9d));
    }

    @Override // org.apache.http.message.HeaderValueParser
    public NameValuePair[] parseParameters(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 70, 16, 4, 67}, "52efbf", false, true));
    }
}
