package com.google.zxing.aztec;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.Writer;
import com.google.zxing.aztec.encoder.AztecCode;
import com.google.zxing.aztec.encoder.Encoder;
import com.google.zxing.common.BitMatrix;
import java.nio.charset.Charset;
import java.util.Map;
import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
public final class AztecWriter implements Writer {
    private static final Charset DEFAULT_CHARSET = Charset.forName(NPStringFog.decode(new byte[]{122, 97, 127, 78, 90, 1, 6, 11, 29, 82}, "320cb9", 1.8164206E9f));

    private static BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i, int i2, Charset charset, int i3, int i4) {
        if (barcodeFormat != BarcodeFormat.AZTEC) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{115, 87, 91, 68, 89, 86, 92, 79, 21, 1, 88, 91, 95, 82, 80, 68, 119, 98, 100, 115, 118, 72, 22, 90, 69, 66, 21, 3, 89, 76, 16}, "065d68", true, false) + barcodeFormat);
        }
        return renderResult(Encoder.encode(str.getBytes(charset), i3, i4), i, i2);
    }

    private static BitMatrix renderResult(AztecCode aztecCode, int i, int i2) {
        BitMatrix matrix = aztecCode.getMatrix();
        if (matrix == null) {
            throw new IllegalStateException();
        }
        int width = matrix.getWidth();
        int height = matrix.getHeight();
        int iMax = Math.max(i, width);
        int iMax2 = Math.max(i2, height);
        int iMin = Math.min(iMax / width, iMax2 / height);
        int i3 = (iMax - (width * iMin)) / 2;
        int i4 = (iMax2 - (height * iMin)) / 2;
        BitMatrix bitMatrix = new BitMatrix(iMax, iMax2);
        int i5 = 0;
        int i6 = i4;
        while (i5 < height) {
            int i7 = 0;
            int i8 = i3;
            while (i7 < width) {
                if (matrix.get(i7, i5)) {
                    bitMatrix.setRegion(i8, i6, iMin, iMin);
                }
                i7++;
                i8 += iMin;
            }
            i5++;
            i6 += iMin;
        }
        return bitMatrix;
    }

    @Override // com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i, int i2) {
        return encode(str, barcodeFormat, i, i2, null);
    }

    @Override // com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i, int i2, Map<EncodeHintType, ?> map) {
        String str2 = map == null ? null : (String) map.get(EncodeHintType.CHARACTER_SET);
        Number number = map == null ? null : (Number) map.get(EncodeHintType.ERROR_CORRECTION);
        Number number2 = map == null ? null : (Number) map.get(EncodeHintType.AZTEC_LAYERS);
        return encode(str, barcodeFormat, i, i2, str2 == null ? DEFAULT_CHARSET : Charset.forName(str2), number == null ? 33 : number.intValue(), number2 == null ? 0 : number2.intValue());
    }
}
