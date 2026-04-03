package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import java.util.Map;
import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
public final class ITFWriter extends OneDimensionalCodeWriter {
    private static final int[] START_PATTERN = {1, 1, 1, 1};
    private static final int[] END_PATTERN = {3, 1, 1};

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter, com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i, int i2, Map<EncodeHintType, ?> map) throws WriterException {
        if (barcodeFormat != BarcodeFormat.ITF) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{116, 85, 13, 23, 88, 94, 91, 77, 67, 82, 89, 83, 88, 80, 6, 23, 126, 100, 113, 24, 67, 85, 66, 68, 23, 83, 12, 67, 23}, "74c770", false) + barcodeFormat);
        }
        return super.encode(str, barcodeFormat, i, i2, map);
    }

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter
    public boolean[] encode(String str) {
        int length = str.length();
        if (length % 2 != 0) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{102, 92, 86, 70, 84, 84, 92, 83, 91, 18, 24, 94, 84, 20, 71, 14, 93, 17, 91, 90, 67, 19, 76, 17, 65, 92, 92, 19, 84, 85, 18, 86, 86, 70, 93, 71, 87, 90}, "243f81", -1386009777L));
        }
        if (length > 80) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{96, 83, 20, 77, 92, 69, 70, 83, 1, 24, 90, 89, 92, 66, 0, 86, 77, 69, 18, 69, 13, 87, 76, 90, 86, 22, 7, 93, 25, 90, 87, 69, 22, 24, 77, 94, 83, 88, 69, 0, 9, 22, 86, 95, 2, 81, 77, 69, 18, 90, 10, 86, 94, 26, 18, 84, 16, 76, 25, 81, 93, 66, 69}, "26e896", false, false) + length);
        }
        boolean[] zArr = new boolean[(length * 9) + 9];
        int iAppendPattern = appendPattern(zArr, 0, START_PATTERN, true);
        for (int i = 0; i < length; i += 2) {
            int iDigit = Character.digit(str.charAt(i), 10);
            int iDigit2 = Character.digit(str.charAt(i + 1), 10);
            int[] iArr = new int[18];
            for (int i2 = 0; i2 < 5; i2++) {
                iArr[i2 * 2] = ITFReader.PATTERNS[iDigit][i2];
                iArr[(i2 * 2) + 1] = ITFReader.PATTERNS[iDigit2][i2];
            }
            iAppendPattern += appendPattern(zArr, iAppendPattern, iArr, true);
        }
        appendPattern(zArr, iAppendPattern, END_PATTERN, true);
        return zArr;
    }
}
