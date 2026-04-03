package com.google.zxing.client.result;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.Result;
import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
public final class ISBNResultParser extends ResultParser {
    @Override // com.google.zxing.client.result.ResultParser
    public ISBNParsedResult parse(Result result) {
        if (result.getBarcodeFormat() != BarcodeFormat.EAN_13) {
            return null;
        }
        String massagedText = getMassagedText(result);
        if (massagedText.length() != 13) {
            return null;
        }
        if (massagedText.startsWith(NPStringFog.decode(new byte[]{15, 6, 93}, "61ea88", -26505)) || massagedText.startsWith(NPStringFog.decode(new byte[]{92, 5, 15}, "e26d47", 898748416L))) {
            return new ISBNParsedResult(massagedText);
        }
        return null;
    }
}
