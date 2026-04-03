package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import java.util.Map;
import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
public final class Code39Writer extends OneDimensionalCodeWriter {
    private static void toIntArray(int i, int[] iArr) {
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 >= 9) {
                return;
            }
            iArr[i3] = ((1 << (8 - i3)) & i) == 0 ? 1 : 2;
            i2 = i3 + 1;
        }
    }

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter, com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i, int i2, Map<EncodeHintType, ?> map) throws WriterException {
        if (barcodeFormat != BarcodeFormat.CODE_39) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{118, 0, 86, 20, 89, 93, 89, 24, 24, 81, 88, 80, 90, 5, 93, 20, 117, 124, 113, 36, 103, 7, 15, 31, 21, 3, 77, 64, 22, 84, 90, 21, 24}, "5a8463", false) + barcodeFormat);
        }
        return super.encode(str, barcodeFormat, i, i2, map);
    }

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter
    public boolean[] encode(String str) {
        int length = str.length();
        if (length > 80) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{48, 83, 20, 17, 4, 64, 22, 83, 1, 68, 2, 92, 12, 66, 0, 10, 21, 64, 66, 69, 13, 11, 20, 95, 6, 22, 7, 1, 65, 95, 7, 69, 22, 68, 21, 91, 3, 88, 69, 92, 81, 19, 6, 95, 2, 13, 21, 64, 66, 90, 10, 10, 6, 31, 66, 84, 16, 16, 65, 84, 13, 66, 69}, "b6eda3", false, true) + length);
        }
        int[] iArr = new int[9];
        int i = length + 25;
        int i2 = 0;
        while (i2 < length) {
            int iIndexOf = NPStringFog.decode(new byte[]{5, 7, 83, 10, 0, 2, 3, 1, 89, 0, 117, 117, 118, 114, 36, 127, 115, 127, 124, 124, 42, 117, 121, 121, 122, 102, 48, 107, 103, 99, 96, 96, 54, 97, 109, 109, 24, 24, 65, 19, 16, 24, 30, 19}, "56a947", true, false).indexOf(str.charAt(i2));
            if (iIndexOf < 0) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{38, 89, 86, 25, 82, 86, 10, 76, 87, 87, 69, 74, 94, 24}, "d82919", true, false) + str);
            }
            toIntArray(Code39Reader.CHARACTER_ENCODINGS[iIndexOf], iArr);
            int i3 = i;
            for (int i4 : iArr) {
                i3 += i4;
            }
            i2++;
            i = i3;
        }
        boolean[] zArr = new boolean[i];
        toIntArray(Code39Reader.CHARACTER_ENCODINGS[39], iArr);
        int iAppendPattern = appendPattern(zArr, 0, iArr, true);
        int[] iArr2 = {1};
        int iAppendPattern2 = iAppendPattern + appendPattern(zArr, iAppendPattern, iArr2, false);
        for (int i5 = 0; i5 < length; i5++) {
            toIntArray(Code39Reader.CHARACTER_ENCODINGS[NPStringFog.decode(new byte[]{5, 3, 80, 10, 5, 86, 3, 5, 90, 0, 112, 33, 118, 118, 39, 127, 118, 43, 124, 120, 41, 117, 124, 45, 122, 98, 51, 107, 98, 55, 96, 100, 53, 97, 104, 57, 24, 28, 66, 19, 21, 76, 30, 23}, "52b91c", -6.67604939E8d).indexOf(str.charAt(i5))], iArr);
            int iAppendPattern3 = iAppendPattern2 + appendPattern(zArr, iAppendPattern2, iArr, true);
            iAppendPattern2 = iAppendPattern3 + appendPattern(zArr, iAppendPattern3, iArr2, false);
        }
        toIntArray(Code39Reader.CHARACTER_ENCODINGS[39], iArr);
        appendPattern(zArr, iAppendPattern2, iArr, true);
        return zArr;
    }
}
