package com.google.zxing.client.result;

import com.google.zxing.Result;
import java.util.ArrayList;
import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
public final class BizcardResultParser extends AbstractDoCoMoResultParser {
    private static String buildName(String str, String str2) {
        return str == null ? str2 : str2 == null ? str : str + ' ' + str2;
    }

    private static String[] buildPhoneNumbers(String str, String str2, String str3) {
        ArrayList arrayList = new ArrayList(3);
        if (str != null) {
            arrayList.add(str);
        }
        if (str2 != null) {
            arrayList.add(str2);
        }
        if (str3 != null) {
            arrayList.add(str3);
        }
        int size = arrayList.size();
        if (size == 0) {
            return null;
        }
        return (String[]) arrayList.toArray(new String[size]);
    }

    @Override // com.google.zxing.client.result.ResultParser
    public AddressBookParsedResult parse(Result result) {
        String massagedText = getMassagedText(result);
        if (!massagedText.startsWith(NPStringFog.decode(new byte[]{115, 121, 108, 115, 35, 102, 117, 10}, "1060b4", -25160))) {
            return null;
        }
        String strBuildName = buildName(matchSingleDoCoMoPrefixedField(NPStringFog.decode(new byte[]{125, 9}, "33bbdc", false), massagedText, true), matchSingleDoCoMoPrefixedField(NPStringFog.decode(new byte[]{61, 13}, "e7c045", true, true), massagedText, true));
        String strMatchSingleDoCoMoPrefixedField = matchSingleDoCoMoPrefixedField(NPStringFog.decode(new byte[]{54, 13}, "b79b46", false, false), massagedText, true);
        String strMatchSingleDoCoMoPrefixedField2 = matchSingleDoCoMoPrefixedField(NPStringFog.decode(new byte[]{116, 10}, "707857", -7870), massagedText, true);
        return new AddressBookParsedResult(maybeWrap(strBuildName), null, null, buildPhoneNumbers(matchSingleDoCoMoPrefixedField(NPStringFog.decode(new byte[]{116, 15}, "655fa0", 1.845256239E9d), massagedText, true), matchSingleDoCoMoPrefixedField(NPStringFog.decode(new byte[]{121, 9}, "43bf71", -1807995170L), massagedText, true), matchSingleDoCoMoPrefixedField(NPStringFog.decode(new byte[]{116, 15}, "25901b", 28813), massagedText, true)), null, maybeWrap(matchSingleDoCoMoPrefixedField(NPStringFog.decode(new byte[]{116, 8}, "126656", 1731722614L), massagedText, true)), null, null, null, matchDoCoMoPrefixedField(NPStringFog.decode(new byte[]{34, 3}, "c906ab", 1.495852373E9d), massagedText, true), null, strMatchSingleDoCoMoPrefixedField2, null, strMatchSingleDoCoMoPrefixedField, null, null);
    }
}
