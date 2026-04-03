package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.Writer;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import java.util.Map;
import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
public abstract class OneDimensionalCodeWriter implements Writer {
    protected static int appendPattern(boolean[] zArr, int i, int[] iArr, boolean z) {
        int length = iArr.length;
        int i2 = 0;
        int i3 = 0;
        int i4 = i;
        while (i2 < length) {
            int i5 = iArr[i2];
            int i6 = i4;
            int i7 = 0;
            while (i7 < i5) {
                zArr[i6] = z;
                i7++;
                i6++;
            }
            i3 += i5;
            i2++;
            z = !z;
            i4 = i6;
        }
        return i3;
    }

    private static BitMatrix renderResult(boolean[] zArr, int i, int i2, int i3) {
        int length = zArr.length;
        int i4 = length + i3;
        int iMax = Math.max(i, i4);
        int iMax2 = Math.max(1, i2);
        int i5 = iMax / i4;
        BitMatrix bitMatrix = new BitMatrix(iMax, iMax2);
        int i6 = (iMax - (length * i5)) / 2;
        int i7 = 0;
        while (i7 < length) {
            if (zArr[i7]) {
                bitMatrix.setRegion(i6, 0, i5, iMax2);
            }
            i7++;
            i6 += i5;
        }
        return bitMatrix;
    }

    @Override // com.google.zxing.Writer
    public final BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i, int i2) throws WriterException {
        return encode(str, barcodeFormat, i, i2, null);
    }

    @Override // com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i, int i2, Map<EncodeHintType, ?> map) throws WriterException {
        Integer num;
        if (str.isEmpty()) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{37, 86, 67, 89, 6, 18, 6, 84, 70, 67, 27, 18, 0, 86, 88, 67, 7, 92, 23, 74}, "c967b2", -4.152135E8f));
        }
        if (i < 0 || i2 < 0) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{45, 4, 83, 85, 67, 80, 21, 4, 20, 71, 94, 67, 6, 65, 93, 71, 23, 87, 12, 21, 20, 85, 91, 85, 12, 22, 81, 80, 25, 25, 42, 15, 68, 65, 67, 3, 67}, "ca4479", -2.127462338E9d) + i + 'x' + i2);
        }
        return renderResult(encode(str), i, i2, (map == null || (num = (Integer) map.get(EncodeHintType.MARGIN)) == null) ? getDefaultMargin() : num.intValue());
    }

    public abstract boolean[] encode(String str);

    public int getDefaultMargin() {
        return 10;
    }
}
