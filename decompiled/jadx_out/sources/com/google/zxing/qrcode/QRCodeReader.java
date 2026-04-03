package com.google.zxing.qrcode;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.BinaryBitmap;
import com.google.zxing.ChecksumException;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.Reader;
import com.google.zxing.Result;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DecoderResult;
import com.google.zxing.common.DetectorResult;
import com.google.zxing.qrcode.decoder.Decoder;
import com.google.zxing.qrcode.decoder.QRCodeDecoderMetaData;
import com.google.zxing.qrcode.detector.Detector;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes65.dex */
public class QRCodeReader implements Reader {
    private static final ResultPoint[] NO_POINTS = new ResultPoint[0];
    private final Decoder decoder = new Decoder();

    private static BitMatrix extractPureBits(BitMatrix bitMatrix) throws NotFoundException {
        int i;
        int i2;
        int[] topLeftOnBit = bitMatrix.getTopLeftOnBit();
        int[] bottomRightOnBit = bitMatrix.getBottomRightOnBit();
        if (topLeftOnBit == null || bottomRightOnBit == null) {
            throw NotFoundException.getNotFoundInstance();
        }
        float fModuleSize = moduleSize(topLeftOnBit, bitMatrix);
        int i3 = topLeftOnBit[1];
        int i4 = bottomRightOnBit[1];
        int i5 = topLeftOnBit[0];
        int i6 = bottomRightOnBit[0];
        if (i5 >= i6 || i3 >= i4) {
            throw NotFoundException.getNotFoundInstance();
        }
        if (i4 - i3 != i6 - i5) {
            i6 = (i4 - i3) + i5;
        }
        int iRound = Math.round(((i6 - i5) + 1) / fModuleSize);
        int iRound2 = Math.round(((i4 - i3) + 1) / fModuleSize);
        if (iRound <= 0 || iRound2 <= 0) {
            throw NotFoundException.getNotFoundInstance();
        }
        if (iRound2 != iRound) {
            throw NotFoundException.getNotFoundInstance();
        }
        int i7 = (int) (fModuleSize / 2.0f);
        int i8 = i3 + i7;
        int i9 = i5 + i7;
        int i10 = (((int) ((iRound - 1) * fModuleSize)) + i9) - i6;
        if (i10 <= 0) {
            i = i9;
        } else {
            if (i10 > i7) {
                throw NotFoundException.getNotFoundInstance();
            }
            i = i9 - i10;
        }
        int i11 = (((int) ((iRound2 - 1) * fModuleSize)) + i8) - i4;
        if (i11 <= 0) {
            i2 = i8;
        } else {
            if (i11 > i7) {
                throw NotFoundException.getNotFoundInstance();
            }
            i2 = i8 - i11;
        }
        BitMatrix bitMatrix2 = new BitMatrix(iRound, iRound2);
        for (int i12 = 0; i12 < iRound2; i12++) {
            int i13 = (int) (i12 * fModuleSize);
            for (int i14 = 0; i14 < iRound; i14++) {
                if (bitMatrix.get(((int) (i14 * fModuleSize)) + i, i2 + i13)) {
                    bitMatrix2.set(i14, i12);
                }
            }
        }
        return bitMatrix2;
    }

    private static float moduleSize(int[] iArr, BitMatrix bitMatrix) throws NotFoundException {
        boolean z;
        int height = bitMatrix.getHeight();
        int width = bitMatrix.getWidth();
        int i = iArr[0];
        boolean z2 = true;
        int i2 = iArr[1];
        int i3 = i;
        int i4 = 0;
        while (i3 < width && i2 < height) {
            if (z2 != bitMatrix.get(i3, i2)) {
                int i5 = i4 + 1;
                if (i5 == 5) {
                    break;
                }
                z = !z2;
                i4 = i5;
            } else {
                z = z2;
            }
            i3++;
            i2++;
            z2 = z;
        }
        if (i3 == width || i2 == height) {
            throw NotFoundException.getNotFoundInstance();
        }
        return (i3 - iArr[0]) / 7.0f;
    }

    @Override // com.google.zxing.Reader
    public Result decode(BinaryBitmap binaryBitmap) throws NotFoundException, ChecksumException, FormatException {
        return decode(binaryBitmap, null);
    }

    @Override // com.google.zxing.Reader
    public final Result decode(BinaryBitmap binaryBitmap, Map<DecodeHintType, ?> map) throws NotFoundException, ChecksumException, FormatException {
        DecoderResult decoderResultDecode;
        ResultPoint[] points;
        if (map == null || !map.containsKey(DecodeHintType.PURE_BARCODE)) {
            DetectorResult detectorResultDetect = new Detector(binaryBitmap.getBlackMatrix()).detect(map);
            decoderResultDecode = this.decoder.decode(detectorResultDetect.getBits(), map);
            points = detectorResultDetect.getPoints();
        } else {
            decoderResultDecode = this.decoder.decode(extractPureBits(binaryBitmap.getBlackMatrix()), map);
            points = NO_POINTS;
        }
        if (decoderResultDecode.getOther() instanceof QRCodeDecoderMetaData) {
            ((QRCodeDecoderMetaData) decoderResultDecode.getOther()).applyMirroredCorrection(points);
        }
        Result result = new Result(decoderResultDecode.getText(), decoderResultDecode.getRawBytes(), points, BarcodeFormat.QR_CODE);
        List<byte[]> byteSegments = decoderResultDecode.getByteSegments();
        if (byteSegments != null) {
            result.putMetadata(ResultMetadataType.BYTE_SEGMENTS, byteSegments);
        }
        String eCLevel = decoderResultDecode.getECLevel();
        if (eCLevel != null) {
            result.putMetadata(ResultMetadataType.ERROR_CORRECTION_LEVEL, eCLevel);
        }
        if (decoderResultDecode.hasStructuredAppend()) {
            result.putMetadata(ResultMetadataType.STRUCTURED_APPEND_SEQUENCE, Integer.valueOf(decoderResultDecode.getStructuredAppendSequenceNumber()));
            result.putMetadata(ResultMetadataType.STRUCTURED_APPEND_PARITY, Integer.valueOf(decoderResultDecode.getStructuredAppendParity()));
        }
        return result;
    }

    protected final Decoder getDecoder() {
        return this.decoder;
    }

    @Override // com.google.zxing.Reader
    public void reset() {
    }
}
