package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
public final class Code128Writer extends OneDimensionalCodeWriter {
    private static final int CODE_CODE_B = 100;
    private static final int CODE_CODE_C = 99;
    private static final int CODE_FNC_1 = 102;
    private static final int CODE_FNC_2 = 97;
    private static final int CODE_FNC_3 = 96;
    private static final int CODE_FNC_4_B = 100;
    private static final int CODE_START_B = 104;
    private static final int CODE_START_C = 105;
    private static final int CODE_STOP = 106;
    private static final char ESCAPE_FNC_1 = 241;
    private static final char ESCAPE_FNC_2 = 242;
    private static final char ESCAPE_FNC_3 = 243;
    private static final char ESCAPE_FNC_4 = 244;

    private static boolean isDigits(CharSequence charSequence, int i, int i2) {
        int i3 = i + i2;
        int length = charSequence.length();
        while (i < i3 && i < length) {
            char cCharAt = charSequence.charAt(i);
            if (cCharAt < '0' || cCharAt > '9') {
                if (cCharAt != 241) {
                    return false;
                }
                i3++;
            }
            i++;
        }
        return i3 <= length;
    }

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter, com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i, int i2, Map<EncodeHintType, ?> map) throws WriterException {
        if (barcodeFormat != BarcodeFormat.CODE_128) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{34, 81, 91, 24, 93, 89, 13, 73, 21, 93, 92, 84, 14, 84, 80, 24, 113, 120, 37, 117, 106, 9, 0, 15, 77, 16, 87, 77, 70, 23, 6, 95, 65, 24}, "a05827", false) + barcodeFormat);
        }
        return super.encode(str, barcodeFormat, i, i2, map);
    }

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter
    public boolean[] encode(String str) {
        int i;
        int iCharAt;
        int i2;
        int iAppendPattern = 0;
        int length = str.length();
        if (length < 1 || length > 80) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{32, 9, 91, 22, 92, 8, 23, 21, 21, 14, 92, 8, 4, 18, 93, 66, 74, 14, 12, 19, 89, 6, 25, 4, 6, 70, 87, 7, 77, 17, 6, 3, 91, 66, 8, 70, 2, 8, 81, 66, 1, 86, 67, 5, 93, 3, 75, 7, 0, 18, 80, 16, 74, 74, 67, 4, 64, 22, 25, 1, 12, 18, 21}, "cf5b9f", 17665) + length);
        }
        for (int i3 = 0; i3 < length; i3++) {
            char cCharAt = str.charAt(i3);
            if (cCharAt < ' ' || cCharAt > '~') {
                switch (cCharAt) {
                    case 241:
                    case 242:
                    case 243:
                    case 244:
                        break;
                    default:
                        throw new IllegalArgumentException(NPStringFog.decode(new byte[]{118, 4, 84, 19, 83, 91, 85, 23, 81, 80, 68, 86, 70, 69, 89, 93, 16, 90, 90, 21, 69, 71, 10, 19}, "4e0303", 22738) + cCharAt);
                }
            }
        }
        ArrayList<int[]> arrayList = new ArrayList();
        int i4 = 0;
        int i5 = 0;
        int i6 = 1;
        int i7 = 0;
        while (i4 < length) {
            int i8 = isDigits(str, i4, i5 == 99 ? 2 : 4) ? 99 : 100;
            if (i8 == i5) {
                switch (str.charAt(i4)) {
                    case 241:
                        int i9 = i4;
                        iCharAt = 102;
                        i2 = i9;
                        break;
                    case 242:
                        int i10 = i4;
                        iCharAt = 97;
                        i2 = i10;
                        break;
                    case 243:
                        int i11 = i4;
                        iCharAt = 96;
                        i2 = i11;
                        break;
                    case 244:
                        i2 = i4;
                        iCharAt = 100;
                        break;
                    default:
                        if (i5 == 100) {
                            int i12 = i4;
                            iCharAt = str.charAt(i4) - ' ';
                            i2 = i12;
                        } else {
                            i2 = i4 + 1;
                            iCharAt = Integer.parseInt(str.substring(i4, i4 + 2));
                        }
                        break;
                }
                i = i2 + 1;
                i8 = i5;
            } else {
                i = i4;
                iCharAt = i5 == 0 ? i8 == 100 ? 104 : 105 : i8;
            }
            arrayList.add(Code128Reader.CODE_PATTERNS[iCharAt]);
            int i13 = i7 + (iCharAt * i6);
            i6 = i != 0 ? i6 + 1 : i6;
            i7 = i13;
            i4 = i;
            i5 = i8;
        }
        arrayList.add(Code128Reader.CODE_PATTERNS[i7 % 103]);
        arrayList.add(Code128Reader.CODE_PATTERNS[106]);
        int i14 = 0;
        for (int[] iArr : arrayList) {
            for (int i15 : iArr) {
                i14 += i15;
            }
        }
        boolean[] zArr = new boolean[i14];
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            iAppendPattern += appendPattern(zArr, iAppendPattern, (int[]) it.next(), true);
        }
        return zArr;
    }
}
