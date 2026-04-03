package com.google.zxing.client.result;

import java.util.regex.Pattern;
import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
public final class URIParsedResult extends ParsedResult {
    private static final Pattern USER_IN_HOST = Pattern.compile(NPStringFog.decode(new byte[]{11, 26, 30, 25, 106, 110, 30, 117, 105, 26, 24, 112, 106, 107, 27, 108, 26}, "154110", 8.4147936E8f));
    private final String title;
    private final String uri;

    public URIParsedResult(String str, String str2) {
        super(ParsedResultType.URI);
        this.uri = massageURI(str);
        this.title = str2;
    }

    private static boolean isColonFollowedByPortNumber(String str, int i) {
        int i2 = i + 1;
        int iIndexOf = str.indexOf(47, i2);
        if (iIndexOf < 0) {
            iIndexOf = str.length();
        }
        return ResultParser.isSubstringOfDigits(str, i2, iIndexOf - i2);
    }

    private static String massageURI(String str) {
        String strTrim = str.trim();
        int iIndexOf = strTrim.indexOf(58);
        return (iIndexOf < 0 || isColonFollowedByPortNumber(strTrim, iIndexOf)) ? NPStringFog.decode(new byte[]{13, 69, 16, 73, 9, 73, 74}, "e1d93f", 2.0679697E9f) + strTrim : strTrim;
    }

    @Override // com.google.zxing.client.result.ParsedResult
    public String getDisplayResult() {
        StringBuilder sb = new StringBuilder(30);
        maybeAppend(this.title, sb);
        maybeAppend(this.uri, sb);
        return sb.toString();
    }

    public String getTitle() {
        return this.title;
    }

    public String getURI() {
        return this.uri;
    }

    public boolean isPossiblyMaliciousURI() {
        return USER_IN_HOST.matcher(this.uri).find();
    }
}
