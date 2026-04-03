package com.google.zxing.client.result;

import com.google.zxing.Result;
import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
public final class AddressBookDoCoMoResultParser extends AbstractDoCoMoResultParser {
    private static String parseName(String str) {
        int iIndexOf = str.indexOf(44);
        return iIndexOf >= 0 ? str.substring(iIndexOf + 1) + ' ' + str.substring(0, iIndexOf) : str;
    }

    @Override // com.google.zxing.client.result.ResultParser
    public AddressBookParsedResult parse(Result result) {
        String[] strArrMatchDoCoMoPrefixedField;
        String massagedText = getMassagedText(result);
        if (!massagedText.startsWith(NPStringFog.decode(new byte[]{123, 38, 123, 112, 102, 113, 12}, "6c8145", -1597371730L)) || (strArrMatchDoCoMoPrefixedField = matchDoCoMoPrefixedField(NPStringFog.decode(new byte[]{121, 13}, "7757d0", 6866), massagedText, true)) == null) {
            return null;
        }
        String name = parseName(strArrMatchDoCoMoPrefixedField[0]);
        String strMatchSingleDoCoMoPrefixedField = matchSingleDoCoMoPrefixedField(NPStringFog.decode(new byte[]{97, 123, 51, 43, 113, 13}, "24fe57", 25225), massagedText, true);
        String[] strArrMatchDoCoMoPrefixedField2 = matchDoCoMoPrefixedField(NPStringFog.decode(new byte[]{96, 117, 41, 10}, "40e045", false), massagedText, true);
        String[] strArrMatchDoCoMoPrefixedField3 = matchDoCoMoPrefixedField(NPStringFog.decode(new byte[]{115, 127, 32, 112, 125, 89}, "62a91c", 20533), massagedText, true);
        String strMatchSingleDoCoMoPrefixedField2 = matchSingleDoCoMoPrefixedField(NPStringFog.decode(new byte[]{44, 118, 98, 124, 10}, "b9690a", -18998), massagedText, false);
        String[] strArrMatchDoCoMoPrefixedField4 = matchDoCoMoPrefixedField(NPStringFog.decode(new byte[]{39, 34, 49, 9}, "ffc35b", true, true), massagedText, true);
        String strMatchSingleDoCoMoPrefixedField3 = matchSingleDoCoMoPrefixedField(NPStringFog.decode(new byte[]{122, 115, 118, 59, 8}, "877b24", -1.473125754E9d), massagedText, true);
        if (!isStringOfDigits(strMatchSingleDoCoMoPrefixedField3, 8)) {
            strMatchSingleDoCoMoPrefixedField3 = null;
        }
        return new AddressBookParsedResult(maybeWrap(name), null, strMatchSingleDoCoMoPrefixedField, strArrMatchDoCoMoPrefixedField2, null, strArrMatchDoCoMoPrefixedField3, null, null, strMatchSingleDoCoMoPrefixedField2, strArrMatchDoCoMoPrefixedField4, null, matchSingleDoCoMoPrefixedField(NPStringFog.decode(new byte[]{123, 101, 37, 13}, "47b77a", -1516096051L), massagedText, true), strMatchSingleDoCoMoPrefixedField3, null, matchDoCoMoPrefixedField(NPStringFog.decode(new byte[]{54, 101, 122, 94}, "c76d63", -13047), massagedText, true), null);
    }
}
