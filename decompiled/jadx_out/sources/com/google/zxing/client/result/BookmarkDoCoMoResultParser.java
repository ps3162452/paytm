package com.google.zxing.client.result;

import com.google.zxing.Result;
import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
public final class BookmarkDoCoMoResultParser extends AbstractDoCoMoResultParser {
    @Override // com.google.zxing.client.result.ResultParser
    public URIParsedResult parse(Result result) {
        String text = result.getText();
        if (!text.startsWith(NPStringFog.decode(new byte[]{117, 118, 32, 114, 124, 91}, "83b91a", -767722603L))) {
            return null;
        }
        String strMatchSingleDoCoMoPrefixedField = matchSingleDoCoMoPrefixedField(NPStringFog.decode(new byte[]{96, 123, 102, 45, 125, 15}, "422a85", false, false), text, true);
        String[] strArrMatchDoCoMoPrefixedField = matchDoCoMoPrefixedField(NPStringFog.decode(new byte[]{108, 52, 45, 94}, "9fadfe", true, false), text, true);
        if (strArrMatchDoCoMoPrefixedField == null) {
            return null;
        }
        String str = strArrMatchDoCoMoPrefixedField[0];
        if (URIResultParser.isBasicallyValidURI(str)) {
            return new URIParsedResult(str, strMatchSingleDoCoMoPrefixedField);
        }
        return null;
    }
}
