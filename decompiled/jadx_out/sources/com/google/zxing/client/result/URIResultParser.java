package com.google.zxing.client.result;

import com.google.zxing.Result;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
public final class URIResultParser extends ResultParser {
    private static final Pattern URL_WITH_PROTOCOL_PATTERN = Pattern.compile(NPStringFog.decode(new byte[]{57, 80, 31, 25, 113, 28, 56, 108, 105, 2, 29, 75, 35, 28, 104, 83, 29, 8, 73, 28, 28, 62, 27, 11}, "b12c01", true, false));
    private static final Pattern URL_WITHOUT_PROTOCOL_PATTERN = Pattern.compile(NPStringFog.decode(new byte[]{26, 105, 4, 27, 75, 35, 31, 104, 85, 27, 8, 62, 31, 111, 78, 106, 31, 75, 25, 105, 4, 27, 75, 35, 31, 104, 56, 77, 3, 78, 79, 26, 95, 106, 85, 25, 3, 30, 80, 75, 24, 93, 26, 29, 25, 106, 14, 30, 22, 27}, "22e61b", -1.553506489E9d));

    static boolean isBasicallyValidURI(String str) {
        if (str.contains(" ")) {
            return false;
        }
        Matcher matcher = URL_WITH_PROTOCOL_PATTERN.matcher(str);
        if (matcher.find() && matcher.start() == 0) {
            return true;
        }
        Matcher matcher2 = URL_WITHOUT_PROTOCOL_PATTERN.matcher(str);
        return matcher2.find() && matcher2.start() == 0;
    }

    @Override // com.google.zxing.client.result.ResultParser
    public URIParsedResult parse(Result result) {
        String massagedText = getMassagedText(result);
        if (massagedText.startsWith(NPStringFog.decode(new byte[]{100, 98, 125, 2}, "1018e8", 7.00537801E8d)) || massagedText.startsWith(NPStringFog.decode(new byte[]{98, 49, 127, 92}, "7c6faa", -7.5905926E8f))) {
            return new URIParsedResult(massagedText.substring(4).trim(), null);
        }
        String strTrim = massagedText.trim();
        if (isBasicallyValidURI(strTrim)) {
            return new URIParsedResult(strTrim, null);
        }
        return null;
    }
}
