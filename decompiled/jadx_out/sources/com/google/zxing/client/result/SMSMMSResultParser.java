package com.google.zxing.client.result;

import com.google.zxing.Result;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;
import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
public final class SMSMMSResultParser extends ResultParser {
    private static void addNumberVia(Collection<String> collection, Collection<String> collection2, String str) {
        int iIndexOf = str.indexOf(59);
        if (iIndexOf < 0) {
            collection.add(str);
            collection2.add(null);
        } else {
            collection.add(str.substring(0, iIndexOf));
            String strSubstring = str.substring(iIndexOf + 1);
            collection2.add(strSubstring.startsWith(NPStringFog.decode(new byte[]{68, 88, 83, 13}, "2120e8", 348081253L)) ? strSubstring.substring(4) : null);
        }
    }

    @Override // com.google.zxing.client.result.ResultParser
    public SMSParsedResult parse(Result result) {
        String str;
        String str2;
        boolean z = false;
        String massagedText = getMassagedText(result);
        if (!massagedText.startsWith(NPStringFog.decode(new byte[]{74, 15, 16, 94}, "9bcd8f", 1.557231E9f)) && !massagedText.startsWith(NPStringFog.decode(new byte[]{49, 125, 96, 88}, "b03b4b", false)) && !massagedText.startsWith(NPStringFog.decode(new byte[]{11, 88, 16, 9}, "f5c3d3", -1.78891847E8d)) && !massagedText.startsWith(NPStringFog.decode(new byte[]{124, 44, 101, 94}, "1a6d5d", -17543))) {
            return null;
        }
        Map<String, String> nameValuePairs = parseNameValuePairs(massagedText);
        if (nameValuePairs == null || nameValuePairs.isEmpty()) {
            str = null;
            str2 = null;
        } else {
            String str3 = nameValuePairs.get(NPStringFog.decode(new byte[]{68, 68, 91, 93, 86, 82, 67}, "719731", true, false));
            String str4 = nameValuePairs.get(NPStringFog.decode(new byte[]{90, 87, 0, 77}, "88d46a", -1.1097466E9f));
            str = str3;
            str2 = str4;
            z = true;
        }
        int iIndexOf = massagedText.indexOf(63, 4);
        String strSubstring = (iIndexOf < 0 || !z) ? massagedText.substring(4) : massagedText.substring(4, iIndexOf);
        int i = -1;
        ArrayList arrayList = new ArrayList(1);
        ArrayList arrayList2 = new ArrayList(1);
        while (true) {
            int iIndexOf2 = strSubstring.indexOf(44, i + 1);
            if (iIndexOf2 <= i) {
                addNumberVia(arrayList, arrayList2, strSubstring.substring(i + 1));
                return new SMSParsedResult((String[]) arrayList.toArray(new String[arrayList.size()]), (String[]) arrayList2.toArray(new String[arrayList2.size()]), str, str2);
            }
            addNumberVia(arrayList, arrayList2, strSubstring.substring(i + 1, iIndexOf2));
            i = iIndexOf2;
        }
    }
}
