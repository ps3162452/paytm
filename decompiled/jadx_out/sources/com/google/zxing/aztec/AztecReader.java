package com.google.zxing.aztec;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.BinaryBitmap;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.Reader;
import com.google.zxing.Result;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.ResultPoint;
import com.google.zxing.ResultPointCallback;
import com.google.zxing.aztec.decoder.Decoder;
import com.google.zxing.aztec.detector.Detector;
import com.google.zxing.common.DecoderResult;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes65.dex */
public final class AztecReader implements Reader {
    @Override // com.google.zxing.Reader
    public Result decode(BinaryBitmap binaryBitmap) throws NotFoundException, FormatException {
        return decode(binaryBitmap, null);
    }

    @Override // com.google.zxing.Reader
    public Result decode(BinaryBitmap binaryBitmap, Map<DecodeHintType, ?> map) throws NotFoundException, FormatException {
        ResultPoint[] points;
        FormatException formatException;
        ResultPoint[] resultPointArr;
        DecoderResult decoderResult;
        ResultPoint[] points2;
        DecoderResult decoderResultDecode;
        ResultPointCallback resultPointCallback;
        NotFoundException notFoundException = null;
        Detector detector = new Detector(binaryBitmap.getBlackMatrix());
        try {
            AztecDetectorResult aztecDetectorResultDetect = detector.detect(false);
            points = aztecDetectorResultDetect.getPoints();
            try {
                DecoderResult decoderResultDecode2 = new Decoder().decode(aztecDetectorResultDetect);
                formatException = null;
                resultPointArr = points;
                decoderResult = decoderResultDecode2;
            } catch (FormatException e) {
                e = e;
                formatException = e;
                resultPointArr = points;
                decoderResult = null;
            } catch (NotFoundException e2) {
                e = e2;
                formatException = null;
                NotFoundException notFoundException2 = e;
                resultPointArr = points;
                decoderResult = null;
                notFoundException = notFoundException2;
            }
        } catch (FormatException e3) {
            e = e3;
            points = null;
        } catch (NotFoundException e4) {
            e = e4;
            points = null;
        }
        if (decoderResult == null) {
            try {
                AztecDetectorResult aztecDetectorResultDetect2 = detector.detect(true);
                points2 = aztecDetectorResultDetect2.getPoints();
                decoderResultDecode = new Decoder().decode(aztecDetectorResultDetect2);
            } catch (FormatException | NotFoundException e5) {
                if (notFoundException != null) {
                    throw notFoundException;
                }
                if (formatException != null) {
                    throw formatException;
                }
                throw e5;
            }
        } else {
            points2 = resultPointArr;
            decoderResultDecode = decoderResult;
        }
        if (map != null && (resultPointCallback = (ResultPointCallback) map.get(DecodeHintType.NEED_RESULT_POINT_CALLBACK)) != null) {
            for (ResultPoint resultPoint : points2) {
                resultPointCallback.foundPossibleResultPoint(resultPoint);
            }
        }
        Result result = new Result(decoderResultDecode.getText(), decoderResultDecode.getRawBytes(), points2, BarcodeFormat.AZTEC);
        List<byte[]> byteSegments = decoderResultDecode.getByteSegments();
        if (byteSegments != null) {
            result.putMetadata(ResultMetadataType.BYTE_SEGMENTS, byteSegments);
        }
        String eCLevel = decoderResultDecode.getECLevel();
        if (eCLevel != null) {
            result.putMetadata(ResultMetadataType.ERROR_CORRECTION_LEVEL, eCLevel);
        }
        return result;
    }

    @Override // com.google.zxing.Reader
    public void reset() {
    }
}
