package com.google.zxing.client.result;

import com.google.zxing.Result;
import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
public final class WifiResultParser extends ResultParser {
    @Override // com.google.zxing.client.result.ResultParser
    public WifiParsedResult parse(Result result) {
        String strMatchSinglePrefixedField;
        String massagedText = getMassagedText(result);
        if (!massagedText.startsWith(NPStringFog.decode(new byte[]{96, 120, 119, 120, 12}, "711167", true)) || (strMatchSinglePrefixedField = matchSinglePrefixedField(NPStringFog.decode(new byte[]{97, 13}, "27a77f", -207220086L), massagedText, ';', false)) == null || strMatchSinglePrefixedField.isEmpty()) {
            return null;
        }
        String strMatchSinglePrefixedField2 = matchSinglePrefixedField(NPStringFog.decode(new byte[]{50, 13}, "b7a750", 9.82938206E8d), massagedText, ';', false);
        String strMatchSinglePrefixedField3 = matchSinglePrefixedField(NPStringFog.decode(new byte[]{100, 92}, "0ff143", true), massagedText, ';', false);
        if (strMatchSinglePrefixedField3 == null) {
            strMatchSinglePrefixedField3 = NPStringFog.decode(new byte[]{8, 95, 64, 3, 71, 21}, "f00b4f", -5.9475033E7d);
        }
        return new WifiParsedResult(strMatchSinglePrefixedField3, strMatchSinglePrefixedField, strMatchSinglePrefixedField2, Boolean.parseBoolean(matchSinglePrefixedField(NPStringFog.decode(new byte[]{121, 88}, "1b97e8", 26806), massagedText, ';', false)));
    }
}
