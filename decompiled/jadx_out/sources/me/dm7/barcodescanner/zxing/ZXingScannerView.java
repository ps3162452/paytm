package me.dm7.barcodescanner.zxing;

import android.content.Context;
import android.graphics.Rect;
import android.hardware.Camera;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.util.Log;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.BinaryBitmap;
import com.google.zxing.DecodeHintType;
import com.google.zxing.MultiFormatReader;
import com.google.zxing.PlanarYUVLuminanceSource;
import com.google.zxing.ReaderException;
import com.google.zxing.Result;
import com.google.zxing.common.HybridBinarizer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumMap;
import java.util.List;
import me.dm7.barcodescanner.core.BarcodeScannerView;
import me.dm7.barcodescanner.core.DisplayUtils;
import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
public class ZXingScannerView extends BarcodeScannerView {
    private List<BarcodeFormat> mFormats;
    private MultiFormatReader mMultiFormatReader;
    private ResultHandler mResultHandler;
    private static final String TAG = NPStringFog.decode(new byte[]{108, 108, 89, 86, 83, 107, 85, 85, 94, 86, 81, 74, 96, 93, 85, 79}, "640848", true);
    public static final List<BarcodeFormat> ALL_FORMATS = new ArrayList();

    public interface ResultHandler {
        void handleResult(Result result);
    }

    static {
        ALL_FORMATS.add(BarcodeFormat.UPC_A);
        ALL_FORMATS.add(BarcodeFormat.UPC_E);
        ALL_FORMATS.add(BarcodeFormat.EAN_13);
        ALL_FORMATS.add(BarcodeFormat.EAN_8);
        ALL_FORMATS.add(BarcodeFormat.RSS_14);
        ALL_FORMATS.add(BarcodeFormat.CODE_39);
        ALL_FORMATS.add(BarcodeFormat.CODE_93);
        ALL_FORMATS.add(BarcodeFormat.CODE_128);
        ALL_FORMATS.add(BarcodeFormat.ITF);
        ALL_FORMATS.add(BarcodeFormat.CODABAR);
        ALL_FORMATS.add(BarcodeFormat.QR_CODE);
        ALL_FORMATS.add(BarcodeFormat.DATA_MATRIX);
        ALL_FORMATS.add(BarcodeFormat.PDF_417);
    }

    public ZXingScannerView(Context context) {
        super(context);
        initMultiFormatReader();
    }

    public ZXingScannerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        initMultiFormatReader();
    }

    private void initMultiFormatReader() {
        EnumMap enumMap = new EnumMap(DecodeHintType.class);
        enumMap.put(DecodeHintType.POSSIBLE_FORMATS, getFormats());
        this.mMultiFormatReader = new MultiFormatReader();
        this.mMultiFormatReader.setHints(enumMap);
    }

    public PlanarYUVLuminanceSource buildLuminanceSource(byte[] bArr, int i, int i2) {
        Rect framingRectInPreview = getFramingRectInPreview(i, i2);
        if (framingRectInPreview == null) {
            return null;
        }
        try {
            return new PlanarYUVLuminanceSource(bArr, i, i2, framingRectInPreview.left, framingRectInPreview.top, framingRectInPreview.width(), framingRectInPreview.height(), false);
        } catch (Exception e) {
            return null;
        }
    }

    public Collection<BarcodeFormat> getFormats() {
        return this.mFormats == null ? ALL_FORMATS : this.mFormats;
    }

    @Override // android.hardware.Camera.PreviewCallback
    public void onPreviewFrame(byte[] bArr, Camera camera) {
        Result resultDecodeWithState;
        if (this.mResultHandler == null) {
            return;
        }
        try {
            Camera.Size previewSize = camera.getParameters().getPreviewSize();
            int i = previewSize.width;
            int i2 = previewSize.height;
            if (DisplayUtils.getScreenOrientation(getContext()) == 1) {
                byte[] bArr2 = new byte[bArr.length];
                for (int i3 = 0; i3 < i2; i3++) {
                    for (int i4 = 0; i4 < i; i4++) {
                        bArr2[(((i4 * i2) + i2) - i3) - 1] = bArr[(i3 * i) + i4];
                    }
                }
                bArr = bArr2;
            } else {
                i2 = i;
                i = i2;
            }
            PlanarYUVLuminanceSource planarYUVLuminanceSourceBuildLuminanceSource = buildLuminanceSource(bArr, i2, i);
            if (planarYUVLuminanceSourceBuildLuminanceSource != null) {
                try {
                    try {
                        resultDecodeWithState = this.mMultiFormatReader.decodeWithState(new BinaryBitmap(new HybridBinarizer(planarYUVLuminanceSourceBuildLuminanceSource)));
                        this.mMultiFormatReader.reset();
                    } catch (ReaderException e) {
                        this.mMultiFormatReader.reset();
                        resultDecodeWithState = null;
                    } catch (ArrayIndexOutOfBoundsException e2) {
                        this.mMultiFormatReader.reset();
                        resultDecodeWithState = null;
                    }
                } catch (NullPointerException e3) {
                    this.mMultiFormatReader.reset();
                    resultDecodeWithState = null;
                } catch (Throwable th) {
                    this.mMultiFormatReader.reset();
                    throw th;
                }
            } else {
                resultDecodeWithState = null;
            }
            if (resultDecodeWithState != null) {
                new Handler(Looper.getMainLooper()).post(new Runnable(this, resultDecodeWithState) { // from class: me.dm7.barcodescanner.zxing.ZXingScannerView.1
                    final ZXingScannerView this$0;
                    final Result val$finalRawResult;

                    {
                        this.this$0 = this;
                        this.val$finalRawResult = resultDecodeWithState;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        ResultHandler resultHandler = this.this$0.mResultHandler;
                        this.this$0.mResultHandler = null;
                        this.this$0.stopCameraPreview();
                        if (resultHandler != null) {
                            resultHandler.handleResult(this.val$finalRawResult);
                        }
                    }
                });
            } else {
                camera.setOneShotPreviewCallback(this);
            }
        } catch (RuntimeException e4) {
            Log.e(TAG, e4.toString(), e4);
        }
    }

    public void resumeCameraPreview(ResultHandler resultHandler) {
        this.mResultHandler = resultHandler;
        super.resumeCameraPreview();
    }

    public void setFormats(List<BarcodeFormat> list) {
        this.mFormats = list;
        initMultiFormatReader();
    }

    public void setResultHandler(ResultHandler resultHandler) {
        this.mResultHandler = resultHandler;
    }
}
