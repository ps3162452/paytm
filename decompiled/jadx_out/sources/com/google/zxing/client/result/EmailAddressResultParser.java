package com.google.zxing.client.result;

import com.google.zxing.Result;
import java.util.Map;
import java.util.regex.Pattern;
import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
public final class EmailAddressResultParser extends ResultParser {
    private static final Pattern COMMA = Pattern.compile(NPStringFog.decode(new byte[]{26}, "6e52d7", -5.65252365E8d));

    @Override // com.google.zxing.client.result.ResultParser
    public EmailAddressParsedResult parse(Result result) {
        String str;
        String str2;
        String[] strArr;
        String str3;
        String massagedText = getMassagedText(result);
        if (!massagedText.startsWith(NPStringFog.decode(new byte[]{12, 84, 93, 14, 67, 94, 91}, "a54b71", -6.8942784E8f)) && !massagedText.startsWith(NPStringFog.decode(new byte[]{44, 121, 123, 123, 97, 43, 91}, "a8275d", 1686504969L))) {
            if (EmailDoCoMoResultParser.isBasicallyValidEmailAddress(massagedText)) {
                return new EmailAddressParsedResult(massagedText);
            }
            return null;
        }
        String strSubstring = massagedText.substring(7);
        int iIndexOf = strSubstring.indexOf(63);
        if (iIndexOf >= 0) {
            strSubstring = strSubstring.substring(0, iIndexOf);
        }
        String strUrlDecode = urlDecode(strSubstring);
        String[] strArrSplit = !strUrlDecode.isEmpty() ? COMMA.split(strUrlDecode) : null;
        Map<String, String> nameValuePairs = parseNameValuePairs(massagedText);
        if (nameValuePairs != null) {
            String[] strArrSplit2 = (strArrSplit != null || (str3 = nameValuePairs.get(NPStringFog.decode(new byte[]{76, 87}, "88bd59", 1.502823792E9d))) == null) ? strArrSplit : COMMA.split(str3);
            String str4 = nameValuePairs.get(NPStringFog.decode(new byte[]{82, 91}, "18cb87", false, true));
            String[] strArrSplit3 = str4 != null ? COMMA.split(str4) : null;
            String str5 = nameValuePairs.get(NPStringFog.decode(new byte[]{1, 81, 5}, "c2feec", -1.5849697E9f));
            strArrSplit = str5 != null ? COMMA.split(str5) : null;
            String str6 = nameValuePairs.get(NPStringFog.decode(new byte[]{69, 77, 82, 88, 83, 81, 66}, "680262", 9.758899E8f));
            str = nameValuePairs.get(NPStringFog.decode(new byte[]{86, 86, 83, 29}, "497d41", 1775436489L));
            strArrSplit = strArrSplit2;
            strArr = strArrSplit;
            strArrSplit = strArrSplit3;
            str2 = str6;
        } else {
            str = null;
            str2 = null;
            strArr = null;
        }
        return new EmailAddressParsedResult(strArrSplit, strArrSplit, strArr, str2, str);
    }
}
