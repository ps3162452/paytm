package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import java.util.Map;
import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
public final class EAN13Writer extends UPCEANWriter {
    private static final int CODE_WIDTH = 95;

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter, com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i, int i2, Map<EncodeHintType, ?> map) throws WriterException {
        if (barcodeFormat != BarcodeFormat.EAN_13) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{114, 80, 10, 19, 14, 95, 93, 72, 68, 86, 15, 82, 94, 85, 1, 19, 36, 112, 127, 110, 85, 0, 77, 17, 83, 68, 16, 19, 6, 94, 69, 17}, "11d3a1", true, false) + barcodeFormat);
        }
        return super.encode(str, barcodeFormat, i, i2, map);
    }

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter
    public boolean[] encode(String str) {
        if (str.length() != 13) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{100, 80, 71, 64, 84, 67, 66, 80, 82, 21, 82, 95, 88, 65, 83, 91, 69, 67, 22, 70, 94, 90, 68, 92, 82, 21, 84, 80, 17, 1, 5, 21, 82, 92, 86, 89, 66, 70, 22, 89, 94, 94, 81, 25, 22, 87, 68, 68, 22, 82, 89, 65, 17}, "656510", 2.0076538E8f) + str.length());
        }
        try {
            if (!UPCEANReader.checkStandardUPCEANChecksum(str)) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{39, 94, 86, 65, 6, 88, 16, 66, 24, 81, 12, 22, 10, 94, 76, 21, 19, 87, 23, 66, 24, 86, 11, 83, 7, 90, 75, 64, 14}, "d185c6", 589583549L));
            }
            int i = EAN13Reader.FIRST_DIGIT_ENCODINGS[Integer.parseInt(str.substring(0, 1))];
            boolean[] zArr = new boolean[95];
            int iAppendPattern = appendPattern(zArr, 0, UPCEANReader.START_END_PATTERN, true) + 0;
            int i2 = 1;
            while (i2 <= 6) {
                int i3 = Integer.parseInt(str.substring(i2, i2 + 1));
                if (((i >> (6 - i2)) & 1) == 1) {
                    i3 += 10;
                }
                i2++;
                iAppendPattern = appendPattern(zArr, iAppendPattern, UPCEANReader.L_AND_G_PATTERNS[i3], false) + iAppendPattern;
            }
            int iAppendPattern2 = appendPattern(zArr, iAppendPattern, UPCEANReader.MIDDLE_PATTERN, false) + iAppendPattern;
            for (int i4 = 7; i4 <= 12; i4++) {
                iAppendPattern2 += appendPattern(zArr, iAppendPattern2, UPCEANReader.L_PATTERNS[Integer.parseInt(str.substring(i4, i4 + 1))], true);
            }
            appendPattern(zArr, iAppendPattern2, UPCEANReader.START_END_PATTERN, true);
            return zArr;
        } catch (FormatException e) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{45, 14, 14, 6, 95, 82, 8, 66, 1, 12, 86, 71, 1, 12, 22, 16}, "dbbc83", false));
        }
    }
}
