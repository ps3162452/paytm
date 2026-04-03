package me.dm7.barcodescanner.core;

import android.hardware.Camera;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
public class CameraHandlerThread extends HandlerThread {
    private static final String LOG_TAG = NPStringFog.decode(new byte[]{32, 4, 90, 84, 67, 0, 43, 4, 89, 85, 93, 4, 17, 49, 95, 67, 84, 0, 7}, "ce711a", false, true);
    private BarcodeScannerView mScannerView;

    /* JADX INFO: renamed from: me.dm7.barcodescanner.core.CameraHandlerThread$1, reason: invalid class name */
    class AnonymousClass1 implements Runnable {
        final CameraHandlerThread this$0;
        final int val$cameraId;

        AnonymousClass1(CameraHandlerThread cameraHandlerThread, int i) {
            this.this$0 = cameraHandlerThread;
            this.val$cameraId = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            new Handler(Looper.getMainLooper()).post(new Runnable(this, CameraUtils.getCameraInstance(this.val$cameraId)) { // from class: me.dm7.barcodescanner.core.CameraHandlerThread.1.1
                final AnonymousClass1 this$1;
                final Camera val$camera;

                {
                    this.this$1 = this;
                    this.val$camera = camera;
                }

                @Override // java.lang.Runnable
                public void run() {
                    this.this$1.this$0.mScannerView.setupCameraPreview(CameraWrapper.getWrapper(this.val$camera, this.this$1.val$cameraId));
                }
            });
        }
    }

    public CameraHandlerThread(BarcodeScannerView barcodeScannerView) {
        super(NPStringFog.decode(new byte[]{115, 7, 14, 84, 68, 86, 120, 7, 13, 85, 90, 82, 66, 50, 11, 67, 83, 86, 84}, "0fc167", false));
        this.mScannerView = barcodeScannerView;
        start();
    }

    public void startCamera(int i) {
        new Handler(getLooper()).post(new AnonymousClass1(this, i));
    }
}
