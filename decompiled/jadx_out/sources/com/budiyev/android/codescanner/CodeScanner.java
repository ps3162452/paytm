package com.budiyev.android.codescanner;

import android.content.Context;
import android.hardware.Camera;
import android.os.Handler;
import android.os.Process;
import android.view.SurfaceHolder;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.budiyev.android.codescanner.CodeScannerView;
import com.budiyev.android.codescanner.Decoder;
import com.google.zxing.BarcodeFormat;
import java.lang.Thread;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import n.NPStringFog;

/* JADX INFO: loaded from: classes67.dex */
public final class CodeScanner {
    public static final List<BarcodeFormat> ALL_FORMATS;
    public static final int CAMERA_BACK = -1;
    public static final int CAMERA_FRONT = -2;
    private static final boolean DEFAULT_AUTO_FOCUS_ENABLED = true;
    private static final AutoFocusMode DEFAULT_AUTO_FOCUS_MODE;
    private static final boolean DEFAULT_FLASH_ENABLED = false;
    private static final List<BarcodeFormat> DEFAULT_FORMATS;
    private static final long DEFAULT_SAFE_AUTO_FOCUS_INTERVAL = 2000;
    private static final ScanMode DEFAULT_SCAN_MODE;
    private static final boolean DEFAULT_TOUCH_FOCUS_ENABLED = true;
    public static final List<BarcodeFormat> ONE_DIMENSIONAL_FORMATS;
    private static final int SAFE_AUTO_FOCUS_ATTEMPTS_THRESHOLD = 2;
    public static final List<BarcodeFormat> TWO_DIMENSIONAL_FORMATS;
    private volatile boolean mAutoFocusEnabled;
    private volatile AutoFocusMode mAutoFocusMode;
    private volatile int mCameraId;
    private final Context mContext;
    private volatile DecodeCallback mDecodeCallback;
    private final DecoderStateListener mDecoderStateListener;
    private volatile DecoderWrapper mDecoderWrapper;
    private volatile ErrorCallback mErrorCallback;
    private final ExceptionHandler mExceptionHandler;
    private volatile boolean mFlashEnabled;
    private volatile List<BarcodeFormat> mFormats;
    private volatile boolean mInitialization;
    private boolean mInitializationRequested;
    private final Object mInitializeLock;
    private volatile boolean mInitialized;
    private final Handler mMainThreadHandler;
    private boolean mPreviewActive;
    private final Camera.PreviewCallback mPreviewCallback;
    private int mSafeAutoFocusAttemptsCount;
    private final Camera.AutoFocusCallback mSafeAutoFocusCallback;
    private volatile long mSafeAutoFocusInterval;
    private final Runnable mSafeAutoFocusTask;
    private boolean mSafeAutoFocusTaskScheduled;
    private boolean mSafeAutoFocusing;
    private volatile ScanMode mScanMode;
    private final CodeScannerView mScannerView;
    private final Runnable mStopPreviewTask;
    private volatile boolean mStoppingPreview;
    private final SurfaceHolder.Callback mSurfaceCallback;
    private final SurfaceHolder mSurfaceHolder;
    private final Camera.AutoFocusCallback mTouchFocusCallback;
    private boolean mTouchFocusEnabled;
    private boolean mTouchFocusing;
    private int mViewHeight;
    private int mViewWidth;
    private volatile int mZoom;

    private final class DecoderStateListener implements Decoder.StateListener {
        final CodeScanner this$0;

        private DecoderStateListener(CodeScanner codeScanner) {
            this.this$0 = codeScanner;
        }

        @Override // com.budiyev.android.codescanner.Decoder.StateListener
        public boolean onStateChanged(@NonNull Decoder.State state) {
            if (state != Decoder.State.DECODED) {
                return true;
            }
            ScanMode scanMode = this.this$0.mScanMode;
            if (scanMode == ScanMode.PREVIEW) {
                return false;
            }
            if (scanMode != ScanMode.SINGLE) {
                return true;
            }
            this.this$0.mStoppingPreview = true;
            this.this$0.mMainThreadHandler.post(this.this$0.mStopPreviewTask);
            return true;
        }
    }

    private final class ExceptionHandler implements Thread.UncaughtExceptionHandler {
        final CodeScanner this$0;

        private ExceptionHandler(CodeScanner codeScanner) {
            this.this$0 = codeScanner;
        }

        @Override // java.lang.Thread.UncaughtExceptionHandler
        public void uncaughtException(@NonNull Thread thread, @NonNull Throwable th) {
            this.this$0.releaseResourcesInternal();
            ErrorCallback errorCallback = this.this$0.mErrorCallback;
            if (errorCallback == null) {
                throw new CodeScannerException(th);
            }
            errorCallback.onError(th);
        }
    }

    private final class FinishInitializationTask implements Runnable {
        private final Point mPreviewSize;
        final CodeScanner this$0;

        private FinishInitializationTask(@NonNull CodeScanner codeScanner, Point point) {
            this.this$0 = codeScanner;
            this.mPreviewSize = point;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.this$0.mInitialized) {
                this.this$0.mScannerView.setPreviewSize(this.mPreviewSize);
                this.this$0.mScannerView.setAutoFocusEnabled(this.this$0.isAutoFocusEnabled());
                this.this$0.mScannerView.setFlashEnabled(this.this$0.isFlashEnabled());
                this.this$0.startPreview();
            }
        }
    }

    private final class InitializationThread extends Thread {
        private final int mHeight;
        private final int mWidth;
        final CodeScanner this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public InitializationThread(CodeScanner codeScanner, int i, int i2) {
            super(NPStringFog.decode(new byte[]{6, 74, 27, 11, 95, 11, 17}, "e96b1b", 1262335142L));
            this.this$0 = codeScanner;
            this.mWidth = i;
            this.mHeight = i2;
        }

        private void initialize() {
            Camera cameraOpen;
            Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
            int i = this.this$0.mCameraId;
            if (i == -1 || i == -2) {
                int numberOfCameras = Camera.getNumberOfCameras();
                int i2 = i == -1 ? 0 : 1;
                int i3 = 0;
                while (true) {
                    if (i3 >= numberOfCameras) {
                        cameraOpen = null;
                        break;
                    }
                    Camera.getCameraInfo(i3, cameraInfo);
                    if (cameraInfo.facing == i2) {
                        cameraOpen = Camera.open(i3);
                        this.this$0.mCameraId = i3;
                        break;
                    }
                    i3++;
                }
            } else {
                cameraOpen = Camera.open(i);
                Camera.getCameraInfo(i, cameraInfo);
            }
            if (cameraOpen == null) {
                throw new CodeScannerException(NPStringFog.decode(new byte[]{109, 11, 3, 80, 94, 7, 24, 17, 13, 18, 83, 1, 91, 0, 17, 65, 18, 1, 89, 8, 7, 64, 83}, "8eb22b", 965669726L));
            }
            Camera.Parameters parameters = cameraOpen.getParameters();
            if (parameters == null) {
                throw new CodeScannerException(NPStringFog.decode(new byte[]{49, 8, 83, 1, 92, 93, 68, 18, 93, 67, 83, 87, 10, 0, 91, 4, 69, 74, 1, 70, 81, 2, 93, 93, 22, 7}, "df2c08", true, false));
            }
            int displayOrientation = Utils.getDisplayOrientation(this.this$0.mContext, cameraInfo);
            boolean zIsPortrait = Utils.isPortrait(displayOrientation);
            Point pointFindSuitableImageSize = Utils.findSuitableImageSize(parameters, zIsPortrait ? this.mHeight : this.mWidth, zIsPortrait ? this.mWidth : this.mHeight);
            int x = pointFindSuitableImageSize.getX();
            int y = pointFindSuitableImageSize.getY();
            parameters.setPreviewSize(x, y);
            parameters.setPreviewFormat(17);
            Point previewSize = Utils.getPreviewSize(zIsPortrait ? y : x, zIsPortrait ? x : y, this.mWidth, this.mHeight);
            List<String> supportedFocusModes = parameters.getSupportedFocusModes();
            boolean z = supportedFocusModes != null && (supportedFocusModes.contains(NPStringFog.decode(new byte[]{5, 67, 18, 10}, "d6fe44", false, true)) || supportedFocusModes.contains(NPStringFog.decode(new byte[]{83, 9, 91, 69, 88, 95, 69, 9, 64, 66, 28, 65, 89, 5, 65, 68, 67, 84}, "0f5111", 9.8322956E7d)));
            if (!z) {
                this.this$0.mAutoFocusEnabled = false;
            }
            Point point = new Point(this.mWidth, this.mHeight);
            if (z && this.this$0.mAutoFocusEnabled) {
                Utils.setAutoFocusMode(parameters, this.this$0.mAutoFocusMode);
                Rect frameRect = this.this$0.mScannerView.getFrameRect();
                if (frameRect != null) {
                    Utils.configureDefaultFocusArea(parameters, frameRect, previewSize, point, x, y, displayOrientation);
                }
            }
            List<String> supportedFlashModes = parameters.getSupportedFlashModes();
            boolean z2 = supportedFlashModes != null && supportedFlashModes.contains(NPStringFog.decode(new byte[]{22, 9, 17, 87, 90}, "bfc42e", -1.110932207E9d));
            if (!z2) {
                this.this$0.mFlashEnabled = false;
            }
            int i4 = this.this$0.mZoom;
            if (i4 != 0) {
                Utils.setZoom(parameters, i4);
            }
            Utils.configureFpsRange(parameters);
            Utils.configureSceneMode(parameters);
            Utils.configureVideoStabilization(parameters);
            cameraOpen.setParameters(parameters);
            cameraOpen.setDisplayOrientation(displayOrientation);
            synchronized (this.this$0.mInitializeLock) {
                Decoder decoder = new Decoder(this.this$0.mDecoderStateListener, this.this$0.mExceptionHandler, this.this$0.mFormats, this.this$0.mDecodeCallback);
                this.this$0.mDecoderWrapper = new DecoderWrapper(cameraOpen, cameraInfo, decoder, pointFindSuitableImageSize, previewSize, point, displayOrientation, z, z2);
                decoder.start();
                this.this$0.mInitialization = false;
                this.this$0.mInitialized = true;
            }
            this.this$0.mMainThreadHandler.post(new FinishInitializationTask(previewSize));
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Process.setThreadPriority(10);
            initialize();
        }
    }

    private final class PreviewCallback implements Camera.PreviewCallback {
        final CodeScanner this$0;

        private PreviewCallback(CodeScanner codeScanner) {
            this.this$0 = codeScanner;
        }

        @Override // android.hardware.Camera.PreviewCallback
        public void onPreviewFrame(byte[] bArr, Camera camera) {
            DecoderWrapper decoderWrapper;
            Rect frameRect;
            if (!this.this$0.mInitialized || this.this$0.mStoppingPreview || this.this$0.mScanMode == ScanMode.PREVIEW || bArr == null || (decoderWrapper = this.this$0.mDecoderWrapper) == null) {
                return;
            }
            Decoder decoder = decoderWrapper.getDecoder();
            if (decoder.getState() != Decoder.State.IDLE || (frameRect = this.this$0.mScannerView.getFrameRect()) == null || frameRect.getWidth() < 1 || frameRect.getHeight() < 1) {
                return;
            }
            decoder.decode(new DecodeTask(bArr, decoderWrapper.getImageSize(), decoderWrapper.getPreviewSize(), decoderWrapper.getViewSize(), frameRect, decoderWrapper.getDisplayOrientation(), decoderWrapper.shouldReverseHorizontal()));
        }
    }

    private final class SafeAutoFocusCallback implements Camera.AutoFocusCallback {
        final CodeScanner this$0;

        private SafeAutoFocusCallback(CodeScanner codeScanner) {
            this.this$0 = codeScanner;
        }

        @Override // android.hardware.Camera.AutoFocusCallback
        public void onAutoFocus(boolean z, @NonNull Camera camera) {
            this.this$0.mSafeAutoFocusing = false;
        }
    }

    private final class SafeAutoFocusTask implements Runnable {
        final CodeScanner this$0;

        private SafeAutoFocusTask(CodeScanner codeScanner) {
            this.this$0 = codeScanner;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.this$0.mSafeAutoFocusTaskScheduled = false;
            if (this.this$0.mAutoFocusMode == AutoFocusMode.SAFE) {
                this.this$0.safeAutoFocusCamera();
            }
        }
    }

    private final class ScannerSizeListener implements CodeScannerView.SizeListener {
        final CodeScanner this$0;

        private ScannerSizeListener(CodeScanner codeScanner) {
            this.this$0 = codeScanner;
        }

        @Override // com.budiyev.android.codescanner.CodeScannerView.SizeListener
        public void onSizeChanged(int i, int i2) {
            synchronized (this.this$0.mInitializeLock) {
                if (i != this.this$0.mViewWidth || i2 != this.this$0.mViewHeight) {
                    boolean z = this.this$0.mPreviewActive;
                    if (this.this$0.mInitialized) {
                        this.this$0.releaseResources();
                    }
                    if (z || this.this$0.mInitializationRequested) {
                        this.this$0.initialize(i, i2);
                    }
                }
            }
        }
    }

    private final class StopPreviewTask implements Runnable {
        final CodeScanner this$0;

        private StopPreviewTask(CodeScanner codeScanner) {
            this.this$0 = codeScanner;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.this$0.stopPreview();
        }
    }

    private final class SurfaceCallback implements SurfaceHolder.Callback {
        final CodeScanner this$0;

        private SurfaceCallback(CodeScanner codeScanner) {
            this.this$0 = codeScanner;
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
            if (surfaceHolder.getSurface() == null) {
                this.this$0.mPreviewActive = false;
            } else {
                this.this$0.stopPreviewInternalSafe();
                this.this$0.startPreviewInternalSafe();
            }
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceCreated(SurfaceHolder surfaceHolder) {
            this.this$0.startPreviewInternalSafe();
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            this.this$0.stopPreviewInternalSafe();
        }
    }

    private final class TouchFocusCallback implements Camera.AutoFocusCallback {
        final CodeScanner this$0;

        private TouchFocusCallback(CodeScanner codeScanner) {
            this.this$0 = codeScanner;
        }

        @Override // android.hardware.Camera.AutoFocusCallback
        public void onAutoFocus(boolean z, @NonNull Camera camera) {
            this.this$0.mTouchFocusing = false;
        }
    }

    static {
        List<BarcodeFormat> listUnmodifiableList = Collections.unmodifiableList(Arrays.asList(BarcodeFormat.values()));
        ALL_FORMATS = listUnmodifiableList;
        ONE_DIMENSIONAL_FORMATS = Collections.unmodifiableList(Arrays.asList(BarcodeFormat.CODABAR, BarcodeFormat.CODE_39, BarcodeFormat.CODE_93, BarcodeFormat.CODE_128, BarcodeFormat.EAN_8, BarcodeFormat.EAN_13, BarcodeFormat.ITF, BarcodeFormat.RSS_14, BarcodeFormat.RSS_EXPANDED, BarcodeFormat.UPC_A, BarcodeFormat.UPC_E, BarcodeFormat.UPC_EAN_EXTENSION));
        TWO_DIMENSIONAL_FORMATS = Collections.unmodifiableList(Arrays.asList(BarcodeFormat.AZTEC, BarcodeFormat.DATA_MATRIX, BarcodeFormat.MAXICODE, BarcodeFormat.PDF_417, BarcodeFormat.QR_CODE));
        DEFAULT_FORMATS = listUnmodifiableList;
        DEFAULT_SCAN_MODE = ScanMode.SINGLE;
        DEFAULT_AUTO_FOCUS_MODE = AutoFocusMode.SAFE;
    }

    @MainThread
    public CodeScanner(@NonNull Context context, @NonNull CodeScannerView codeScannerView) {
        this.mInitializeLock = new Object();
        this.mFormats = DEFAULT_FORMATS;
        this.mScanMode = DEFAULT_SCAN_MODE;
        this.mAutoFocusMode = DEFAULT_AUTO_FOCUS_MODE;
        this.mDecodeCallback = null;
        this.mErrorCallback = null;
        this.mDecoderWrapper = null;
        this.mInitialization = false;
        this.mInitialized = false;
        this.mStoppingPreview = false;
        this.mAutoFocusEnabled = true;
        this.mFlashEnabled = false;
        this.mSafeAutoFocusInterval = DEFAULT_SAFE_AUTO_FOCUS_INTERVAL;
        this.mCameraId = -1;
        this.mZoom = 0;
        this.mTouchFocusEnabled = true;
        this.mTouchFocusing = false;
        this.mPreviewActive = false;
        this.mSafeAutoFocusing = false;
        this.mSafeAutoFocusTaskScheduled = false;
        this.mInitializationRequested = false;
        this.mSafeAutoFocusAttemptsCount = 0;
        this.mViewWidth = 0;
        this.mViewHeight = 0;
        this.mContext = context;
        this.mScannerView = codeScannerView;
        this.mSurfaceHolder = codeScannerView.getPreviewView().getHolder();
        this.mMainThreadHandler = new Handler();
        this.mSurfaceCallback = new SurfaceCallback();
        this.mPreviewCallback = new PreviewCallback();
        this.mTouchFocusCallback = new TouchFocusCallback();
        this.mSafeAutoFocusCallback = new SafeAutoFocusCallback();
        this.mSafeAutoFocusTask = new SafeAutoFocusTask();
        this.mStopPreviewTask = new StopPreviewTask();
        this.mDecoderStateListener = new DecoderStateListener();
        this.mExceptionHandler = new ExceptionHandler();
        codeScannerView.setCodeScanner(this);
        codeScannerView.setSizeListener(new ScannerSizeListener());
    }

    @MainThread
    public CodeScanner(@NonNull Context context, @NonNull CodeScannerView codeScannerView, int i) {
        this(context, codeScannerView);
        this.mCameraId = i;
    }

    private void initialize() {
        initialize(this.mScannerView.getWidth(), this.mScannerView.getHeight());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initialize(int i, int i2) {
        this.mViewWidth = i;
        this.mViewHeight = i2;
        if (i <= 0 || i2 <= 0) {
            this.mInitializationRequested = true;
            return;
        }
        this.mInitialization = true;
        this.mInitializationRequested = false;
        InitializationThread initializationThread = new InitializationThread(this, i, i2);
        initializationThread.setUncaughtExceptionHandler(this.mExceptionHandler);
        initializationThread.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void releaseResourcesInternal() {
        this.mInitialized = false;
        this.mInitialization = false;
        this.mStoppingPreview = false;
        this.mPreviewActive = false;
        this.mSafeAutoFocusing = false;
        DecoderWrapper decoderWrapper = this.mDecoderWrapper;
        if (decoderWrapper != null) {
            this.mDecoderWrapper = null;
            decoderWrapper.release();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void safeAutoFocusCamera() {
        DecoderWrapper decoderWrapper;
        int i;
        if (this.mInitialized && this.mPreviewActive && (decoderWrapper = this.mDecoderWrapper) != null && decoderWrapper.isAutoFocusSupported() && this.mAutoFocusEnabled) {
            if (!this.mSafeAutoFocusing || (i = this.mSafeAutoFocusAttemptsCount) >= 2) {
                try {
                    Camera camera = decoderWrapper.getCamera();
                    camera.cancelAutoFocus();
                    camera.autoFocus(this.mSafeAutoFocusCallback);
                    this.mSafeAutoFocusAttemptsCount = 0;
                    this.mSafeAutoFocusing = true;
                } catch (Exception e) {
                    this.mSafeAutoFocusing = false;
                }
            } else {
                this.mSafeAutoFocusAttemptsCount = i + 1;
            }
            scheduleSafeAutoFocusTask();
        }
    }

    private void scheduleSafeAutoFocusTask() {
        if (this.mSafeAutoFocusTaskScheduled) {
            return;
        }
        this.mSafeAutoFocusTaskScheduled = true;
        this.mMainThreadHandler.postDelayed(this.mSafeAutoFocusTask, this.mSafeAutoFocusInterval);
    }

    private void setAutoFocusEnabledInternal(boolean z) {
        Rect frameRect;
        try {
            DecoderWrapper decoderWrapper = this.mDecoderWrapper;
            if (decoderWrapper != null) {
                Camera camera = decoderWrapper.getCamera();
                camera.cancelAutoFocus();
                this.mTouchFocusing = false;
                Camera.Parameters parameters = camera.getParameters();
                AutoFocusMode autoFocusMode = this.mAutoFocusMode;
                if (z) {
                    Utils.setAutoFocusMode(parameters, autoFocusMode);
                } else {
                    Utils.disableAutoFocus(parameters);
                }
                if (z && (frameRect = this.mScannerView.getFrameRect()) != null) {
                    Utils.configureDefaultFocusArea(parameters, decoderWrapper, frameRect);
                }
                camera.setParameters(parameters);
                if (z) {
                    this.mSafeAutoFocusAttemptsCount = 0;
                    this.mSafeAutoFocusing = false;
                    if (autoFocusMode == AutoFocusMode.SAFE) {
                        scheduleSafeAutoFocusTask();
                    }
                }
            }
        } catch (Exception e) {
        }
    }

    private void setFlashEnabledInternal(boolean z) {
        Camera camera;
        Camera.Parameters parameters;
        try {
            DecoderWrapper decoderWrapper = this.mDecoderWrapper;
            if (decoderWrapper == null || (parameters = (camera = decoderWrapper.getCamera()).getParameters()) == null) {
                return;
            }
            if (z) {
                Utils.setFlashMode(parameters, NPStringFog.decode(new byte[]{70, 90, 16, 90, 92}, "25b944", -1694214758L));
            } else {
                Utils.setFlashMode(parameters, NPStringFog.decode(new byte[]{89, 0, 82}, "6f454e", 8.26899882E8d));
            }
            camera.setParameters(parameters);
        } catch (Exception e) {
        }
    }

    private void startPreviewInternal(boolean z) {
        try {
            DecoderWrapper decoderWrapper = this.mDecoderWrapper;
            if (decoderWrapper != null) {
                Camera camera = decoderWrapper.getCamera();
                camera.setPreviewCallback(this.mPreviewCallback);
                camera.setPreviewDisplay(this.mSurfaceHolder);
                if (!z && decoderWrapper.isFlashSupported() && this.mFlashEnabled) {
                    setFlashEnabledInternal(true);
                }
                camera.startPreview();
                this.mStoppingPreview = false;
                this.mPreviewActive = true;
                this.mSafeAutoFocusing = false;
                this.mSafeAutoFocusAttemptsCount = 0;
                if (decoderWrapper.isAutoFocusSupported() && this.mAutoFocusEnabled) {
                    Rect frameRect = this.mScannerView.getFrameRect();
                    if (frameRect != null) {
                        Camera.Parameters parameters = camera.getParameters();
                        Utils.configureDefaultFocusArea(parameters, decoderWrapper, frameRect);
                        camera.setParameters(parameters);
                    }
                    if (this.mAutoFocusMode == AutoFocusMode.SAFE) {
                        scheduleSafeAutoFocusTask();
                    }
                }
            }
        } catch (Exception e) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startPreviewInternalSafe() {
        if (!this.mInitialized || this.mPreviewActive) {
            return;
        }
        startPreviewInternal(true);
    }

    private void stopPreviewInternal(boolean z) {
        try {
            DecoderWrapper decoderWrapper = this.mDecoderWrapper;
            if (decoderWrapper != null) {
                Camera camera = decoderWrapper.getCamera();
                camera.cancelAutoFocus();
                Camera.Parameters parameters = camera.getParameters();
                if (!z && decoderWrapper.isFlashSupported() && this.mFlashEnabled) {
                    Utils.setFlashMode(parameters, NPStringFog.decode(new byte[]{10, 95, 95}, "e996d8", 1907794269L));
                }
                camera.setParameters(parameters);
                camera.setPreviewCallback(null);
                camera.stopPreview();
            }
        } catch (Exception e) {
        }
        this.mStoppingPreview = false;
        this.mPreviewActive = false;
        this.mSafeAutoFocusing = false;
        this.mSafeAutoFocusAttemptsCount = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopPreviewInternalSafe() {
        if (this.mInitialized && this.mPreviewActive) {
            stopPreviewInternal(true);
        }
    }

    @NonNull
    public AutoFocusMode getAutoFocusMode() {
        return this.mAutoFocusMode;
    }

    public int getCamera() {
        return this.mCameraId;
    }

    @Nullable
    public DecodeCallback getDecodeCallback() {
        return this.mDecodeCallback;
    }

    @Nullable
    public ErrorCallback getErrorCallback() {
        return this.mErrorCallback;
    }

    @NonNull
    public List<BarcodeFormat> getFormats() {
        return this.mFormats;
    }

    @NonNull
    public ScanMode getScanMode() {
        return this.mScanMode;
    }

    public int getZoom() {
        return this.mZoom;
    }

    public boolean isAutoFocusEnabled() {
        return this.mAutoFocusEnabled;
    }

    boolean isAutoFocusSupportedOrUnknown() {
        DecoderWrapper decoderWrapper = this.mDecoderWrapper;
        return decoderWrapper == null || decoderWrapper.isAutoFocusSupported();
    }

    public boolean isFlashEnabled() {
        return this.mFlashEnabled;
    }

    boolean isFlashSupportedOrUnknown() {
        DecoderWrapper decoderWrapper = this.mDecoderWrapper;
        return decoderWrapper == null || decoderWrapper.isFlashSupported();
    }

    public boolean isPreviewActive() {
        return this.mPreviewActive;
    }

    public boolean isTouchFocusEnabled() {
        return this.mTouchFocusEnabled;
    }

    void performTouchFocus(Rect rect) {
        synchronized (this.mInitializeLock) {
            if (this.mInitialized && this.mPreviewActive && !this.mTouchFocusing) {
                try {
                    setAutoFocusEnabled(false);
                    DecoderWrapper decoderWrapper = this.mDecoderWrapper;
                    if (this.mPreviewActive && decoderWrapper != null && decoderWrapper.isAutoFocusSupported()) {
                        Point imageSize = decoderWrapper.getImageSize();
                        int x = imageSize.getX();
                        int y = imageSize.getY();
                        int displayOrientation = decoderWrapper.getDisplayOrientation();
                        if (displayOrientation == 90 || displayOrientation == 270) {
                            y = x;
                            x = y;
                        }
                        Rect imageFrameRect = Utils.getImageFrameRect(x, y, rect, decoderWrapper.getPreviewSize(), decoderWrapper.getViewSize());
                        Camera camera = decoderWrapper.getCamera();
                        camera.cancelAutoFocus();
                        Camera.Parameters parameters = camera.getParameters();
                        Utils.configureFocusArea(parameters, imageFrameRect, x, y, displayOrientation);
                        Utils.configureFocusModeForTouch(parameters);
                        camera.setParameters(parameters);
                        camera.autoFocus(this.mTouchFocusCallback);
                        this.mTouchFocusing = true;
                    }
                } catch (Exception e) {
                }
            }
        }
    }

    @MainThread
    public void releaseResources() {
        if (this.mInitialized) {
            if (this.mPreviewActive) {
                stopPreview();
            }
            releaseResourcesInternal();
        }
    }

    @MainThread
    public void setAutoFocusEnabled(boolean z) {
        synchronized (this.mInitializeLock) {
            boolean z2 = this.mAutoFocusEnabled != z;
            this.mAutoFocusEnabled = z;
            this.mScannerView.setAutoFocusEnabled(z);
            DecoderWrapper decoderWrapper = this.mDecoderWrapper;
            if (this.mInitialized && this.mPreviewActive && z2 && decoderWrapper != null && decoderWrapper.isAutoFocusSupported()) {
                setAutoFocusEnabledInternal(z);
            }
        }
    }

    public void setAutoFocusInterval(long j) {
        this.mSafeAutoFocusInterval = j;
    }

    @MainThread
    public void setAutoFocusMode(@NonNull AutoFocusMode autoFocusMode) {
        synchronized (this.mInitializeLock) {
            autoFocusMode.getClass();
            this.mAutoFocusMode = autoFocusMode;
            if (this.mInitialized && this.mAutoFocusEnabled) {
                setAutoFocusEnabledInternal(true);
            }
        }
    }

    @MainThread
    public void setCamera(int i) {
        synchronized (this.mInitializeLock) {
            if (this.mCameraId != i) {
                this.mCameraId = i;
                if (this.mInitialized) {
                    boolean z = this.mPreviewActive;
                    releaseResources();
                    if (z) {
                        initialize();
                    }
                }
            }
        }
    }

    public void setDecodeCallback(@Nullable DecodeCallback decodeCallback) {
        DecoderWrapper decoderWrapper;
        synchronized (this.mInitializeLock) {
            this.mDecodeCallback = decodeCallback;
            if (this.mInitialized && (decoderWrapper = this.mDecoderWrapper) != null) {
                decoderWrapper.getDecoder().setCallback(decodeCallback);
            }
        }
    }

    public void setErrorCallback(@Nullable ErrorCallback errorCallback) {
        this.mErrorCallback = errorCallback;
    }

    @MainThread
    public void setFlashEnabled(boolean z) {
        synchronized (this.mInitializeLock) {
            boolean z2 = this.mFlashEnabled != z;
            this.mFlashEnabled = z;
            this.mScannerView.setFlashEnabled(z);
            DecoderWrapper decoderWrapper = this.mDecoderWrapper;
            if (this.mInitialized && this.mPreviewActive && z2 && decoderWrapper != null && decoderWrapper.isFlashSupported()) {
                setFlashEnabledInternal(z);
            }
        }
    }

    @MainThread
    public void setFormats(@NonNull List<BarcodeFormat> list) {
        DecoderWrapper decoderWrapper;
        synchronized (this.mInitializeLock) {
            list.getClass();
            this.mFormats = list;
            if (this.mInitialized && (decoderWrapper = this.mDecoderWrapper) != null) {
                decoderWrapper.getDecoder().setFormats(list);
            }
        }
    }

    public void setScanMode(@NonNull ScanMode scanMode) {
        scanMode.getClass();
        this.mScanMode = scanMode;
    }

    public void setTouchFocusEnabled(boolean z) {
        this.mTouchFocusEnabled = z;
    }

    public void setZoom(int i) {
        DecoderWrapper decoderWrapper;
        if (i < 0) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{99, 88, 90, 15, 65, 23, 88, 91, 64, 7, 65, 12, 76, 68, 65, 66, 3, 4, 25, 80, 71, 7, 0, 21, 92, 69, 21, 22, 9, 0, 87, 23, 90, 16, 65, 4, 72, 66, 84, 14, 65, 21, 86, 23, 79, 7, 19, 14}, "975baa", 219999396L));
        }
        synchronized (this.mInitializeLock) {
            if (i != this.mZoom) {
                this.mZoom = i;
                if (this.mInitialized && (decoderWrapper = this.mDecoderWrapper) != null) {
                    Camera camera = decoderWrapper.getCamera();
                    Camera.Parameters parameters = camera.getParameters();
                    Utils.setZoom(parameters, i);
                    camera.setParameters(parameters);
                }
            }
        }
        this.mZoom = i;
    }

    @MainThread
    public void startPreview() {
        synchronized (this.mInitializeLock) {
            if (!this.mInitialized && !this.mInitialization) {
                initialize();
            } else {
                if (this.mPreviewActive) {
                    return;
                }
                this.mSurfaceHolder.addCallback(this.mSurfaceCallback);
                startPreviewInternal(false);
            }
        }
    }

    @MainThread
    public void stopPreview() {
        if (this.mInitialized && this.mPreviewActive) {
            this.mSurfaceHolder.removeCallback(this.mSurfaceCallback);
            stopPreviewInternal(false);
        }
    }
}
