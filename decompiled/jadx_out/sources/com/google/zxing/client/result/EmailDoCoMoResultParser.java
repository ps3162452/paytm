package com.google.zxing.client.result;

import com.google.zxing.Result;
import java.util.regex.Pattern;
import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
public final class EmailDoCoMoResultParser extends AbstractDoCoMoResultParser {
    private static final Pattern ATEXT_ALPHANUMERIC = Pattern.compile(NPStringFog.decode(new byte[]{58, 5, 21, 73, 118, 72, 59, 84, 21, 10, 119, 75, 64, 71, 28, 22, 17, 66, 75, 79, 100, 30, 24, 88, 94, 58, 103, 83, 76, 25, 28, 26, 101, 24}, "ad837e", -1.0269692E9f));

    static boolean isBasicallyValidEmailAddress(String str) {
        return str != null && ATEXT_ALPHANUMERIC.matcher(str).matches() && str.indexOf(64) >= 0;
    }

    @Override // com.google.zxing.client.result.ResultParser
    public EmailAddressParsedResult parse(Result result) {
        String[] strArrMatchDoCoMoPrefixedField;
        String massagedText = getMassagedText(result);
        if (!massagedText.startsWith(NPStringFog.decode(new byte[]{117, 121, 102, 117, 106, 38, 2}, "88289a", 7.00438445E8d)) || (strArrMatchDoCoMoPrefixedField = matchDoCoMoPrefixedField(NPStringFog.decode(new byte[]{100, 119, 14}, "0844a5", 1.248019447E9d), massagedText, true)) == null) {
            return null;
        }
        for (String str : strArrMatchDoCoMoPrefixedField) {
            if (!isBasicallyValidEmailAddress(str)) {
                return null;
            }
        }
        return new EmailAddressParsedResult(strArrMatchDoCoMoPrefixedField, null, null, matchSingleDoCoMoPrefixedField(NPStringFog.decode(new byte[]{106, 109, 35, 10}, "98a0b3", false, true), massagedText, false), matchSingleDoCoMoPrefixedField(NPStringFog.decode(new byte[]{118, 41, 117, 63, 12}, "4f1f62", false, false), massagedText, false));
    }
}
