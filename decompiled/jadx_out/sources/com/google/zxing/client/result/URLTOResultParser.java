package com.google.zxing.client.result;

import com.google.zxing.Result;
import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
public final class URLTOResultParser extends ResultParser {
    @Override // com.google.zxing.client.result.ResultParser
    public URIParsedResult parse(Result result) {
        int iIndexOf;
        String massagedText = getMassagedText(result);
        if ((massagedText.startsWith(NPStringFog.decode(new byte[]{66, 74, 85, 64, 10, 8}, "7894e2", -6836)) || massagedText.startsWith(NPStringFog.decode(new byte[]{102, 98, 117, 100, 121, 15}, "309065", 1.9087048E9f))) && (iIndexOf = massagedText.indexOf(58, 6)) >= 0) {
            return new URIParsedResult(massagedText.substring(iIndexOf + 1), iIndexOf <= 6 ? null : massagedText.substring(6, iIndexOf));
        }
        return null;
    }
}
