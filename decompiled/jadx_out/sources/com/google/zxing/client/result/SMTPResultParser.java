package com.google.zxing.client.result;

import com.google.zxing.Result;
import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
public final class SMTPResultParser extends ResultParser {
    @Override // com.google.zxing.client.result.ResultParser
    public EmailAddressParsedResult parse(Result result) {
        String strSubstring;
        String str;
        String strSubstring2;
        String massagedText = getMassagedText(result);
        if (!massagedText.startsWith(NPStringFog.decode(new byte[]{75, 9, 70, 18, 91}, "8d2ba9", 2024080970L)) && !massagedText.startsWith(NPStringFog.decode(new byte[]{53, 126, 48, 52, 13}, "f3dd75", true))) {
            return null;
        }
        String strSubstring3 = massagedText.substring(5);
        int iIndexOf = strSubstring3.indexOf(58);
        if (iIndexOf >= 0) {
            strSubstring2 = strSubstring3.substring(iIndexOf + 1);
            String strSubstring4 = strSubstring3.substring(0, iIndexOf);
            int iIndexOf2 = strSubstring2.indexOf(58);
            if (iIndexOf2 >= 0) {
                strSubstring = strSubstring2.substring(iIndexOf2 + 1);
                strSubstring2 = strSubstring2.substring(0, iIndexOf2);
                str = strSubstring4;
            } else {
                strSubstring = null;
                str = strSubstring4;
            }
        } else {
            strSubstring = null;
            str = strSubstring3;
            strSubstring2 = null;
        }
        return new EmailAddressParsedResult(new String[]{str}, null, null, strSubstring2, strSubstring);
    }
}
