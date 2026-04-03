package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import java.util.Map;
import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
public final class EAN8Writer extends UPCEANWriter {
    private static final int CODE_WIDTH = 67;

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter, com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i, int i2, Map<EncodeHintType, ?> map) throws WriterException {
        if (barcodeFormat != BarcodeFormat.EAN_8) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{116, 88, 12, 21, 14, 87, 91, 64, 66, 80, 15, 90, 88, 93, 7, 21, 36, 120, 121, 102, 90, 25, 65, 91, 66, 77, 66, 82, 14, 77, 23}, "79b5a9", -16707) + barcodeFormat);
        }
        return super.encode(str, barcodeFormat, i, i2, map);
    }

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter
    public boolean[] encode(String str) {
        if (str.length() != 8) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{98, 87, 16, 66, 80, 68, 68, 87, 5, 23, 86, 88, 94, 70, 4, 89, 65, 68, 16, 65, 9, 88, 64, 91, 84, 18, 3, 82, 21, 15, 16, 86, 8, 80, 92, 67, 67, 18, 13, 88, 91, 80, 28, 18, 3, 66, 65, 23, 87, 93, 21, 23}, "02a757", -1.9506505E9f) + str.length());
        }
        boolean[] zArr = new boolean[67];
        int iAppendPattern = appendPattern(zArr, 0, UPCEANReader.START_END_PATTERN, true) + 0;
        for (int i = 0; i <= 3; i++) {
            iAppendPattern += appendPattern(zArr, iAppendPattern, UPCEANReader.L_PATTERNS[Integer.parseInt(str.substring(i, i + 1))], false);
        }
        int iAppendPattern2 = iAppendPattern + appendPattern(zArr, iAppendPattern, UPCEANReader.MIDDLE_PATTERN, false);
        for (int i2 = 4; i2 <= 7; i2++) {
            iAppendPattern2 += appendPattern(zArr, iAppendPattern2, UPCEANReader.L_PATTERNS[Integer.parseInt(str.substring(i2, i2 + 1))], true);
        }
        appendPattern(zArr, iAppendPattern2, UPCEANReader.START_END_PATTERN, true);
        return zArr;
    }
}
