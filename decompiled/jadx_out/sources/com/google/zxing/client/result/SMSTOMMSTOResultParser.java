package com.google.zxing.client.result;

import com.google.zxing.Result;
import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
public final class SMSTOMMSTOResultParser extends ResultParser {
    @Override // com.google.zxing.client.result.ResultParser
    public SMSParsedResult parse(Result result) {
        String strSubstring;
        String massagedText = getMassagedText(result);
        if (!massagedText.startsWith(NPStringFog.decode(new byte[]{70, 90, 23, 66, 91, 14}, "57d644", -1264976327L)) && !massagedText.startsWith(NPStringFog.decode(new byte[]{96, 117, 98, 100, 118, 12}, "381096", -15636)) && !massagedText.startsWith(NPStringFog.decode(new byte[]{93, 11, 75, 23, 90, 10}, "0f8c50", false, true)) && !massagedText.startsWith(NPStringFog.decode(new byte[]{121, 41, 107, 96, 120, 13}, "4d8477", 163103638L))) {
            return null;
        }
        String strSubstring2 = massagedText.substring(6);
        int iIndexOf = strSubstring2.indexOf(58);
        if (iIndexOf >= 0) {
            strSubstring = strSubstring2.substring(iIndexOf + 1);
            strSubstring2 = strSubstring2.substring(0, iIndexOf);
        } else {
            strSubstring = null;
        }
        return new SMSParsedResult(strSubstring2, (String) null, (String) null, strSubstring);
    }
}
