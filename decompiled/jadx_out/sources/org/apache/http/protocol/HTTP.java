package org.apache.http.protocol;

import n.NPStringFog;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class HTTP {
    public static final int CR = 13;
    public static final int HT = 9;
    public static final int LF = 10;
    public static final int SP = 32;
    public static final String ASCII = NPStringFog.decode(new byte[]{39, 53, 115, 121, 125}, "ff0045", -1.440422447E9d);
    public static final String CHARSET_PARAM = NPStringFog.decode(new byte[]{2, 21, 80, 9, 5, 23, 74, 80, 71, 92}, "953ade", 14920);
    public static final String CHUNK_CODING = NPStringFog.decode(new byte[]{2, 9, 65, 8, 92, 92, 5}, "aa4f79", -18367);
    public static final String CONN_CLOSE = NPStringFog.decode(new byte[]{117, 91, 92, 71, 80}, "673451", 2.1220269E8f);
    public static final String CONN_DIRECTIVE = NPStringFog.decode(new byte[]{38, 88, 92, 13, 93, 83, 17, 94, 93, 13}, "e72c80", 4.61072976E8d);
    public static final String CONN_KEEP_ALIVE = NPStringFog.decode(new byte[]{45, 81, 0, 17, 20, 36, 10, 93, 19, 4}, "f4ea9e", -114332555L);
    public static final String CONTENT_ENCODING = NPStringFog.decode(new byte[]{39, 89, 94, 68, 87, 15, 16, 27, 117, 94, 81, 14, 0, 95, 94, 87}, "d6002a", -1.5658518E9f);
    public static final String CONTENT_LEN = NPStringFog.decode(new byte[]{119, 93, 8, 16, 83, 12, 64, 31, 42, 1, 88, 5, 64, 90}, "42fd6b", true, true);
    public static final String CONTENT_TYPE = NPStringFog.decode(new byte[]{113, 86, 88, 67, 1, 91, 70, 20, 98, 78, 20, 80}, "2967d5", false);
    public static final String DATE_HEADER = NPStringFog.decode(new byte[]{119, 84, 64, 84}, "354109", 1.854246032E9d);
    public static final String DEFAULT_CONTENT_CHARSET = NPStringFog.decode(new byte[]{125, 53, 122, 28, 91, 0, 1, 95, 24, 0}, "4f51c8", false, true);
    public static final String DEFAULT_CONTENT_TYPE = NPStringFog.decode(new byte[]{7, 18, 64, 94, 15, 87, 7, 22, 89, 93, 8, 27, 9, 1, 68, 87, 18, 25, 21, 22, 66, 87, 7, 89}, "fb02f4", false, true);
    public static final String DEFAULT_PROTOCOL_CHARSET = NPStringFog.decode(new byte[]{98, 49, 27, 118, 54, 116, 126, 43}, "7b67e7", false, true);
    public static final String EXPECT_CONTINUE = NPStringFog.decode(new byte[]{0, 84, 82, 20, 86, 87, 95, 16, 11, 87, 64, 93}, "1db958", 8204620.0f);
    public static final String EXPECT_DIRECTIVE = NPStringFog.decode(new byte[]{33, 30, 22, 83, 90, 76}, "dff698", -25359);
    public static final String IDENTITY_CODING = NPStringFog.decode(new byte[]{90, 85, 84, 15, 71, 95, 71, 72}, "311a36", 1.04417984E9f);
    public static final String ISO_8859_1 = NPStringFog.decode(new byte[]{112, 101, 44, 79, 92, 13, 12, 15, 78, 83}, "96cbd5", 8.56764294E8d);
    public static final String OCTET_STREAM_TYPE = NPStringFog.decode(new byte[]{81, 66, 18, 85, 89, 5, 81, 70, 11, 86, 94, 73, 95, 81, 22, 92, 68, 75, 67, 70, 16, 92, 81, 11}, "02b90f", 6065);
    public static final String PLAIN_TEXT_TYPE = NPStringFog.decode(new byte[]{68, 7, 77, 67, 25, 18, 92, 3, 92, 89}, "0b576b", -423089864L);
    public static final String SERVER_HEADER = NPStringFog.decode(new byte[]{98, 4, 70, 20, 4, 71}, "1a4ba5", false);
    public static final String TARGET_HOST = NPStringFog.decode(new byte[]{45, 87, 66, 16}, "e81dd9", true);
    public static final String TRANSFER_ENCODING = NPStringFog.decode(new byte[]{50, 68, 0, 10, 22, 84, 3, 68, 76, 33, 11, 81, 9, 82, 8, 10, 2}, "f6ade2", -1.5079602E9f);
    public static final String USER_AGENT = NPStringFog.decode(new byte[]{100, 69, 6, 19, 76, 116, 86, 83, 13, 21}, "16caa5", false, false);
    public static final String US_ASCII = NPStringFog.decode(new byte[]{98, 53, 31, 112, 49, 32, 126, 47}, "7f21bc", true, false);
    public static final String UTF_16 = NPStringFog.decode(new byte[]{103, 101, 126, 20, 2, 82}, "21893d", -1.283639143E9d);
    public static final String UTF_8 = NPStringFog.decode(new byte[]{52, 109, 113, 78, 90}, "a97cbe", -1.39862792E9d);

    HTTP() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 65, 68, 87, 66}, "f515c3", true, true));
    }

    public static boolean isWhitespace(char c) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 17, 64, 1, 68}, "5e5cef", -3.2527708E7d));
    }
}
