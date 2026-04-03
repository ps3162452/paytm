package com.google.zxing.qrcode;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.Writer;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.encoder.ByteMatrix;
import com.google.zxing.qrcode.encoder.QRCode;

/* JADX INFO: loaded from: classes65.dex */
public final class QRCodeWriter implements Writer {
    private static final int QUIET_ZONE_SIZE = 4;

    private static BitMatrix renderResult(QRCode qRCode, int i, int i2, int i3) {
        ByteMatrix matrix = qRCode.getMatrix();
        if (matrix == null) {
            throw new IllegalStateException();
        }
        int width = matrix.getWidth();
        int height = matrix.getHeight();
        int i4 = (i3 * 2) + width;
        int i5 = (i3 * 2) + height;
        int iMax = Math.max(i, i4);
        int iMax2 = Math.max(i2, i5);
        int iMin = Math.min(iMax / i4, iMax2 / i5);
        int i6 = (iMax - (width * iMin)) / 2;
        BitMatrix bitMatrix = new BitMatrix(iMax, iMax2);
        int i7 = 0;
        int i8 = (iMax2 - (height * iMin)) / 2;
        while (i7 < height) {
            int i9 = 0;
            int i10 = i6;
            while (i9 < width) {
                if (matrix.get(i9, i7) == 1) {
                    bitMatrix.setRegion(i10, i8, iMin, iMin);
                }
                i9++;
                i10 += iMin;
            }
            i7++;
            i8 += iMin;
        }
        return bitMatrix;
    }

    @Override // com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i, int i2) throws WriterException {
        return encode(str, barcodeFormat, i, i2, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00a1 A[PHI: r1
      0x00a1: PHI (r1v7 com.google.zxing.qrcode.decoder.ErrorCorrectionLevel) = 
      (r1v6 com.google.zxing.qrcode.decoder.ErrorCorrectionLevel)
      (r1v10 com.google.zxing.qrcode.decoder.ErrorCorrectionLevel)
     binds: [B:15:0x007d, B:20:0x0092] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.google.zxing.Writer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.zxing.common.BitMatrix encode(java.lang.String r7, com.google.zxing.BarcodeFormat r8, int r9, int r10, java.util.Map<com.google.zxing.EncodeHintType, ?> r11) throws com.google.zxing.WriterException {
        /*
            Method dump skipped, instruction units count: 222
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.qrcode.QRCodeWriter.encode(java.lang.String, com.google.zxing.BarcodeFormat, int, int, java.util.Map):com.google.zxing.common.BitMatrix");
    }
}
