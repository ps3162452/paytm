package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.Writer;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import java.util.Map;
import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
public final class UPCAWriter implements Writer {
    private final EAN13Writer subWriter = new EAN13Writer();

    private static String preencode(String str) {
        int length = str.length();
        if (length == 11) {
            int i = 0;
            int i2 = 0;
            while (i2 < 11) {
                char cCharAt = str.charAt(i2);
                i2++;
                i = ((i2 % 2 == 0 ? 3 : 1) * (cCharAt - '0')) + i;
            }
            str = str + ((1000 - i) % 10);
        } else if (length != 12) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{55, 6, 66, 70, 3, 70, 17, 6, 87, 19, 5, 90, 11, 23, 86, 93, 18, 70, 69, 16, 91, 92, 19, 89, 1, 67, 81, 86, 70, 4, 84, 67, 92, 65, 70, 4, 87, 67, 87, 90, 1, 92, 17, 16, 19, 95, 9, 91, 2, 79, 19, 81, 19, 65, 69, 4, 92, 71, 70}, "ec33f5", 832455575L) + str.length());
        }
        return '0' + str;
    }

    @Override // com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i, int i2) throws WriterException {
        return encode(str, barcodeFormat, i, i2, null);
    }

    @Override // com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i, int i2, Map<EncodeHintType, ?> map) throws WriterException {
        if (barcodeFormat != BarcodeFormat.UPC_A) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{33, 87, 12, 65, 14, 86, 14, 79, 66, 4, 15, 91, 13, 82, 7, 65, 52, 104, 33, 27, 35, 77, 65, 90, 23, 66, 66, 6, 14, 76, 66}, "b6baa8", 990618170L) + barcodeFormat);
        }
        return this.subWriter.encode(preencode(str), BarcodeFormat.EAN_13, i, i2, map);
    }
}
