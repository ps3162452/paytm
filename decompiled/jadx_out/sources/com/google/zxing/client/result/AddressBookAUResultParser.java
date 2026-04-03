package com.google.zxing.client.result;

import com.google.zxing.Result;
import java.util.ArrayList;
import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
public final class AddressBookAUResultParser extends ResultParser {
    private static String[] matchMultipleValuePrefix(String str, int i, String str2, boolean z) {
        ArrayList arrayList = null;
        for (int i2 = 1; i2 <= i; i2++) {
            String strMatchSinglePrefixedField = matchSinglePrefixedField(str + i2 + ':', str2, '\r', z);
            if (strMatchSinglePrefixedField == null) {
                break;
            }
            if (arrayList == null) {
                arrayList = new ArrayList(i);
            }
            arrayList.add(strMatchSinglePrefixedField);
        }
        if (arrayList == null) {
            return null;
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    @Override // com.google.zxing.client.result.ResultParser
    public AddressBookParsedResult parse(Result result) {
        String massagedText = getMassagedText(result);
        if (!massagedText.contains(NPStringFog.decode(new byte[]{125, 117, 123, 121, 48, 56}, "0066ba", -155675129L)) || !massagedText.contains("\r\n")) {
            return null;
        }
        String strMatchSinglePrefixedField = matchSinglePrefixedField(NPStringFog.decode(new byte[]{126, 115, 122, 117, 84, 15}, "0270e5", true, false), massagedText, '\r', true);
        String strMatchSinglePrefixedField2 = matchSinglePrefixedField(NPStringFog.decode(new byte[]{122, 32, 43, 112, 4, 15}, "4af565", 1.344251622E9d), massagedText, '\r', true);
        String[] strArrMatchMultipleValuePrefix = matchMultipleValuePrefix(NPStringFog.decode(new byte[]{103, 113, 117}, "3497d1", -609581397L), 3, massagedText, true);
        String[] strArrMatchMultipleValuePrefix2 = matchMultipleValuePrefix(NPStringFog.decode(new byte[]{121, 120, 45, 127}, "49d331", false, true), 3, massagedText, true);
        String strMatchSinglePrefixedField3 = matchSinglePrefixedField(NPStringFog.decode(new byte[]{125, 116, 117, 42, 101, 56, 10}, "018e7a", false), massagedText, '\r', false);
        String strMatchSinglePrefixedField4 = matchSinglePrefixedField(NPStringFog.decode(new byte[]{112, 34, 116, 13}, "1f0705", false), massagedText, '\r', true);
        return new AddressBookParsedResult(maybeWrap(strMatchSinglePrefixedField), null, strMatchSinglePrefixedField2, strArrMatchMultipleValuePrefix, null, strArrMatchMultipleValuePrefix2, null, null, strMatchSinglePrefixedField3, strMatchSinglePrefixedField4 == null ? null : new String[]{strMatchSinglePrefixedField4}, null, null, null, null, null, null);
    }
}
