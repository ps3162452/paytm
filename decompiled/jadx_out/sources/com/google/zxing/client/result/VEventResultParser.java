package com.google.zxing.client.result;

import com.google.zxing.Result;
import java.util.List;
import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
public final class VEventResultParser extends ResultParser {
    private static String matchSingleVCardPrefixedField(CharSequence charSequence, String str, boolean z) {
        List<String> listMatchSingleVCardPrefixedField = VCardResultParser.matchSingleVCardPrefixedField(charSequence, str, z, false);
        if (listMatchSingleVCardPrefixedField == null || listMatchSingleVCardPrefixedField.isEmpty()) {
            return null;
        }
        return listMatchSingleVCardPrefixedField.get(0);
    }

    private static String[] matchVCardPrefixedField(CharSequence charSequence, String str, boolean z) {
        List<List<String>> listMatchVCardPrefixedField = VCardResultParser.matchVCardPrefixedField(charSequence, str, z, false);
        if (listMatchVCardPrefixedField == null || listMatchVCardPrefixedField.isEmpty()) {
            return null;
        }
        int size = listMatchVCardPrefixedField.size();
        String[] strArr = new String[size];
        for (int i = 0; i < size; i++) {
            strArr[i] = listMatchVCardPrefixedField.get(i).get(0);
        }
        return strArr;
    }

    private static String stripMailto(String str) {
        return str != null ? (str.startsWith(NPStringFog.decode(new byte[]{94, 86, 94, 92, 66, 95, 9}, "377060", 1561378699L)) || str.startsWith(NPStringFog.decode(new byte[]{122, 118, 122, 47, 108, 126, 13}, "773c81", false, true))) ? str.substring(7) : str : str;
    }

    @Override // com.google.zxing.client.result.ResultParser
    public CalendarParsedResult parse(Result result) {
        double d;
        double d2;
        String massagedText = getMassagedText(result);
        if (massagedText.indexOf(NPStringFog.decode(new byte[]{39, 125, 127, 44, 45, 88, 51, 125, 110, 32, 45, 54}, "e88ecb", true, true)) < 0) {
            return null;
        }
        String strMatchSingleVCardPrefixedField = matchSingleVCardPrefixedField(NPStringFog.decode(new byte[]{48, 49, 40, 44, 37, 52, 58}, "cdeadf", false, true), massagedText, true);
        String strMatchSingleVCardPrefixedField2 = matchSingleVCardPrefixedField(NPStringFog.decode(new byte[]{124, 55, 102, 102, 115, 97, 108}, "8c5223", true, true), massagedText, true);
        if (strMatchSingleVCardPrefixedField2 == null) {
            return null;
        }
        String strMatchSingleVCardPrefixedField3 = matchSingleVCardPrefixedField(NPStringFog.decode(new byte[]{115, 100, 115, 122, 112}, "70644c", -28408), massagedText, true);
        String strMatchSingleVCardPrefixedField4 = matchSingleVCardPrefixedField(NPStringFog.decode(new byte[]{33, 52, 99, 113, 50, 123, 42, 47}, "ea10f2", -1.4624782E9f), massagedText, true);
        String strMatchSingleVCardPrefixedField5 = matchSingleVCardPrefixedField(NPStringFog.decode(new byte[]{123, 42, 115, 39, 53, 120, 120, 43}, "7e0fa1", false), massagedText, true);
        String strStripMailto = stripMailto(matchSingleVCardPrefixedField(NPStringFog.decode(new byte[]{119, 52, 127, 119, 44, 44, 98, 35, 106}, "8f86be", false), massagedText, true));
        String[] strArrMatchVCardPrefixedField = matchVCardPrefixedField(NPStringFog.decode(new byte[]{121, 48, 108, 32, 126, 115, 125, 33}, "8d8e07", -16948), massagedText, true);
        if (strArrMatchVCardPrefixedField != null) {
            for (int i = 0; i < strArrMatchVCardPrefixedField.length; i++) {
                strArrMatchVCardPrefixedField[i] = stripMailto(strArrMatchVCardPrefixedField[i]);
            }
        }
        String strMatchSingleVCardPrefixedField6 = matchSingleVCardPrefixedField(NPStringFog.decode(new byte[]{32, 38, 53, 118, 107, 127, 52, 55, 47, 122, 119}, "dcf596", -9550), massagedText, true);
        String strMatchSingleVCardPrefixedField7 = matchSingleVCardPrefixedField(NPStringFog.decode(new byte[]{38, 119, 44}, "a2c289", false, true), massagedText, true);
        if (strMatchSingleVCardPrefixedField7 == null) {
            d = Double.NaN;
            d2 = Double.NaN;
        } else {
            int iIndexOf = strMatchSingleVCardPrefixedField7.indexOf(59);
            if (iIndexOf < 0) {
                return null;
            }
            try {
                d = Double.parseDouble(strMatchSingleVCardPrefixedField7.substring(0, iIndexOf));
                d2 = Double.parseDouble(strMatchSingleVCardPrefixedField7.substring(iIndexOf + 1));
            } catch (NumberFormatException e) {
                return null;
            }
        }
        try {
            return new CalendarParsedResult(strMatchSingleVCardPrefixedField, strMatchSingleVCardPrefixedField2, strMatchSingleVCardPrefixedField3, strMatchSingleVCardPrefixedField4, strMatchSingleVCardPrefixedField5, strStripMailto, strArrMatchVCardPrefixedField, strMatchSingleVCardPrefixedField6, d, d2);
        } catch (IllegalArgumentException e2) {
            return null;
        }
    }
}
