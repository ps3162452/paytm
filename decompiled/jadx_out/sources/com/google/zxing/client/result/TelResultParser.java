package com.google.zxing.client.result;

import com.google.zxing.Result;
import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
public final class TelResultParser extends ResultParser {
    @Override // com.google.zxing.client.result.ResultParser
    public TelParsedResult parse(Result result) {
        String massagedText = getMassagedText(result);
        if (!massagedText.startsWith(NPStringFog.decode(new byte[]{18, 82, 85, 11}, "f7919d", true)) && !massagedText.startsWith(NPStringFog.decode(new byte[]{54, 35, 116, 9}, "bf8327", 1.247956644E9d))) {
            return null;
        }
        String str = massagedText.startsWith(NPStringFog.decode(new byte[]{98, 125, 40, 11}, "68d19b", false)) ? NPStringFog.decode(new byte[]{76, 83, 93, 3}, "861968", true) + massagedText.substring(4) : massagedText;
        int iIndexOf = massagedText.indexOf(63, 4);
        return new TelParsedResult(iIndexOf < 0 ? massagedText.substring(4) : massagedText.substring(4, iIndexOf), str, null);
    }
}
