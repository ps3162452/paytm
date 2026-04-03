package com.google.zxing.multi;

import com.google.zxing.BinaryBitmap;
import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.Reader;
import com.google.zxing.ReaderException;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes65.dex */
public final class GenericMultipleBarcodeReader implements MultipleBarcodeReader {
    private static final int MAX_DEPTH = 4;
    private static final int MIN_DIMENSION_TO_RECUR = 100;
    private final Reader delegate;

    public GenericMultipleBarcodeReader(Reader reader) {
        this.delegate = reader;
    }

    private void doDecodeMultiple(BinaryBitmap binaryBitmap, Map<DecodeHintType, ?> map, List<Result> list, int i, int i2, int i3) {
        boolean z;
        float x;
        float y;
        float f;
        if (i3 > 4) {
            return;
        }
        try {
            Result resultDecode = this.delegate.decode(binaryBitmap, map);
            Iterator<Result> it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                } else if (it.next().getText().equals(resultDecode.getText())) {
                    z = true;
                    break;
                }
            }
            if (!z) {
                list.add(translateResultPoints(resultDecode, i, i2));
            }
            ResultPoint[] resultPoints = resultDecode.getResultPoints();
            if (resultPoints == null || resultPoints.length == 0) {
                return;
            }
            int width = binaryBitmap.getWidth();
            int height = binaryBitmap.getHeight();
            float f2 = width;
            float f3 = height;
            float f4 = 0.0f;
            float f5 = 0.0f;
            int length = resultPoints.length;
            int i4 = 0;
            while (i4 < length) {
                ResultPoint resultPoint = resultPoints[i4];
                if (resultPoint == null) {
                    f = f3;
                    y = f5;
                    x = f4;
                } else {
                    x = resultPoint.getX();
                    y = resultPoint.getY();
                    if (x < f2) {
                        f2 = x;
                    }
                    f = y < f3 ? y : f3;
                    if (x <= f4) {
                        x = f4;
                    }
                    if (y <= f5) {
                        y = f5;
                    }
                }
                i4++;
                f5 = y;
                f4 = x;
                f3 = f;
            }
            if (f2 > 100.0f) {
                doDecodeMultiple(binaryBitmap.crop(0, 0, (int) f2, height), map, list, i, i2, i3 + 1);
            }
            if (f3 > 100.0f) {
                doDecodeMultiple(binaryBitmap.crop(0, 0, width, (int) f3), map, list, i, i2, i3 + 1);
            }
            if (f4 < width - 100) {
                doDecodeMultiple(binaryBitmap.crop((int) f4, 0, width - ((int) f4), height), map, list, i + ((int) f4), i2, i3 + 1);
            }
            if (f5 < height - 100) {
                doDecodeMultiple(binaryBitmap.crop(0, (int) f5, width, height - ((int) f5)), map, list, i, i2 + ((int) f5), i3 + 1);
            }
        } catch (ReaderException e) {
        }
    }

    private static Result translateResultPoints(Result result, int i, int i2) {
        ResultPoint[] resultPoints = result.getResultPoints();
        if (resultPoints == null) {
            return result;
        }
        ResultPoint[] resultPointArr = new ResultPoint[resultPoints.length];
        for (int i3 = 0; i3 < resultPoints.length; i3++) {
            ResultPoint resultPoint = resultPoints[i3];
            if (resultPoint != null) {
                resultPointArr[i3] = new ResultPoint(resultPoint.getX() + i, resultPoint.getY() + i2);
            }
        }
        Result result2 = new Result(result.getText(), result.getRawBytes(), resultPointArr, result.getBarcodeFormat());
        result2.putAllMetadata(result.getResultMetadata());
        return result2;
    }

    @Override // com.google.zxing.multi.MultipleBarcodeReader
    public Result[] decodeMultiple(BinaryBitmap binaryBitmap) throws NotFoundException {
        return decodeMultiple(binaryBitmap, null);
    }

    @Override // com.google.zxing.multi.MultipleBarcodeReader
    public Result[] decodeMultiple(BinaryBitmap binaryBitmap, Map<DecodeHintType, ?> map) throws NotFoundException {
        ArrayList arrayList = new ArrayList();
        doDecodeMultiple(binaryBitmap, map, arrayList, 0, 0, 0);
        if (arrayList.isEmpty()) {
            throw NotFoundException.getNotFoundInstance();
        }
        return (Result[]) arrayList.toArray(new Result[arrayList.size()]);
    }
}
