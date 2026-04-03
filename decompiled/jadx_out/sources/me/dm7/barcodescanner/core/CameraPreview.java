package me.dm7.barcodescanner.core;

import android.content.Context;
import android.graphics.Point;
import android.hardware.Camera;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import com.budiyev.android.codescanner.BarcodeUtils;
import java.util.List;
import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
public class CameraPreview extends SurfaceView implements SurfaceHolder.Callback {
    private static final String TAG = NPStringFog.decode(new byte[]{38, 5, 94, 92, 22, 82, 53, 22, 86, 79, 13, 86, 18}, "ed39d3", true);
    Camera.AutoFocusCallback autoFocusCB;
    private Runnable doAutoFocus;
    private boolean mAutoFocus;
    private Handler mAutoFocusHandler;
    private CameraWrapper mCameraWrapper;
    private Camera.PreviewCallback mPreviewCallback;
    private boolean mPreviewing;
    private boolean mShouldScaleToFill;
    private boolean mSurfaceCreated;

    public CameraPreview(Context context, AttributeSet attributeSet, CameraWrapper cameraWrapper, Camera.PreviewCallback previewCallback) {
        super(context, attributeSet);
        this.mPreviewing = true;
        this.mAutoFocus = true;
        this.mSurfaceCreated = false;
        this.mShouldScaleToFill = true;
        this.doAutoFocus = new Runnable(this) { // from class: me.dm7.barcodescanner.core.CameraPreview.1
            final CameraPreview this$0;

            {
                this.this$0 = this;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (this.this$0.mCameraWrapper != null && this.this$0.mPreviewing && this.this$0.mAutoFocus && this.this$0.mSurfaceCreated) {
                    this.this$0.safeAutoFocus();
                }
            }
        };
        this.autoFocusCB = new Camera.AutoFocusCallback(this) { // from class: me.dm7.barcodescanner.core.CameraPreview.2
            final CameraPreview this$0;

            {
                this.this$0 = this;
            }

            @Override // android.hardware.Camera.AutoFocusCallback
            public void onAutoFocus(boolean z, Camera camera) {
                this.this$0.scheduleAutoFocus();
            }
        };
        init(cameraWrapper, previewCallback);
    }

    public CameraPreview(Context context, CameraWrapper cameraWrapper, Camera.PreviewCallback previewCallback) {
        super(context);
        this.mPreviewing = true;
        this.mAutoFocus = true;
        this.mSurfaceCreated = false;
        this.mShouldScaleToFill = true;
        this.doAutoFocus = new Runnable(this) { // from class: me.dm7.barcodescanner.core.CameraPreview.1
            final CameraPreview this$0;

            {
                this.this$0 = this;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (this.this$0.mCameraWrapper != null && this.this$0.mPreviewing && this.this$0.mAutoFocus && this.this$0.mSurfaceCreated) {
                    this.this$0.safeAutoFocus();
                }
            }
        };
        this.autoFocusCB = new Camera.AutoFocusCallback(this) { // from class: me.dm7.barcodescanner.core.CameraPreview.2
            final CameraPreview this$0;

            {
                this.this$0 = this;
            }

            @Override // android.hardware.Camera.AutoFocusCallback
            public void onAutoFocus(boolean z, Camera camera) {
                this.this$0.scheduleAutoFocus();
            }
        };
        init(cameraWrapper, previewCallback);
    }

    private void adjustViewSize(Camera.Size size) {
        Point pointConvertSizeToLandscapeOrientation = convertSizeToLandscapeOrientation(new Point(getWidth(), getHeight()));
        float f = size.width / size.height;
        if (pointConvertSizeToLandscapeOrientation.x / pointConvertSizeToLandscapeOrientation.y > f) {
            setViewSize((int) (f * pointConvertSizeToLandscapeOrientation.y), pointConvertSizeToLandscapeOrientation.y);
        } else {
            setViewSize(pointConvertSizeToLandscapeOrientation.x, (int) (pointConvertSizeToLandscapeOrientation.x / f));
        }
    }

    private Point convertSizeToLandscapeOrientation(Point point) {
        return getDisplayOrientation() % BarcodeUtils.ROTATION_180 == 0 ? point : new Point(point.y, point.x);
    }

    private Camera.Size getOptimalPreviewSize() {
        int i;
        double dAbs;
        Camera.Size size;
        double dAbs2;
        Camera.Size size2;
        if (this.mCameraWrapper == null) {
            return null;
        }
        List<Camera.Size> supportedPreviewSizes = this.mCameraWrapper.mCamera.getParameters().getSupportedPreviewSizes();
        int width = getWidth();
        int height = getHeight();
        if (DisplayUtils.getScreenOrientation(getContext()) == 1) {
            i = width;
        } else {
            i = height;
            height = width;
        }
        double d = ((double) height) / ((double) i);
        if (supportedPreviewSizes == null) {
            return null;
        }
        Camera.Size size3 = null;
        double d2 = Double.MAX_VALUE;
        for (Camera.Size size4 : supportedPreviewSizes) {
            if (Math.abs((((double) size4.width) / ((double) size4.height)) - d) <= 0.1d) {
                if (Math.abs(size4.height - i) < d2) {
                    dAbs2 = Math.abs(size4.height - i);
                    size2 = size4;
                } else {
                    dAbs2 = d2;
                    size2 = size3;
                }
                size3 = size2;
                d2 = dAbs2;
            }
        }
        if (size3 != null) {
            return size3;
        }
        double d3 = Double.MAX_VALUE;
        for (Camera.Size size5 : supportedPreviewSizes) {
            if (Math.abs(size5.height - i) < d3) {
                dAbs = Math.abs(size5.height - i);
                size = size5;
            } else {
                dAbs = d3;
                size = size3;
            }
            size3 = size;
            d3 = dAbs;
        }
        return size3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scheduleAutoFocus() {
        this.mAutoFocusHandler.postDelayed(this.doAutoFocus, 1000L);
    }

    private void setViewSize(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int iRound;
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (getDisplayOrientation() % BarcodeUtils.ROTATION_180 == 0) {
            i3 = i;
            i4 = i2;
        } else {
            i3 = i2;
            i4 = i;
        }
        if (this.mShouldScaleToFill) {
            float width = ((View) getParent()).getWidth() / i3;
            float height = ((View) getParent()).getHeight() / i4;
            if (width > height) {
                height = width;
            }
            int iRound2 = Math.round(i3 * height);
            iRound = Math.round(height * i4);
            i5 = iRound2;
        } else {
            i5 = i3;
            iRound = i4;
        }
        layoutParams.width = i5;
        layoutParams.height = iRound;
        setLayoutParams(layoutParams);
    }

    public int getDisplayOrientation() {
        int i = 0;
        if (this.mCameraWrapper == null) {
            return 0;
        }
        Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
        if (this.mCameraWrapper.mCameraId == -1) {
            Camera.getCameraInfo(0, cameraInfo);
        } else {
            Camera.getCameraInfo(this.mCameraWrapper.mCameraId, cameraInfo);
        }
        switch (((WindowManager) getContext().getSystemService(NPStringFog.decode(new byte[]{18, 8, 8, 7, 91, 66}, "eafc45", 9302330L))).getDefaultDisplay().getRotation()) {
            case 1:
                i = 90;
                break;
            case 2:
                i = BarcodeUtils.ROTATION_180;
                break;
            case 3:
                i = BarcodeUtils.ROTATION_270;
                break;
        }
        return cameraInfo.facing == 1 ? (360 - ((cameraInfo.orientation + i) % 360)) % 360 : ((cameraInfo.orientation - i) + 360) % 360;
    }

    public void init(CameraWrapper cameraWrapper, Camera.PreviewCallback previewCallback) {
        setCamera(cameraWrapper, previewCallback);
        this.mAutoFocusHandler = new Handler();
        getHolder().addCallback(this);
        getHolder().setType(3);
    }

    public void safeAutoFocus() {
        try {
            this.mCameraWrapper.mCamera.autoFocus(this.autoFocusCB);
        } catch (RuntimeException e) {
            scheduleAutoFocus();
        }
    }

    public void setAutoFocus(boolean z) {
        if (this.mCameraWrapper == null || !this.mPreviewing || z == this.mAutoFocus) {
            return;
        }
        this.mAutoFocus = z;
        if (!this.mAutoFocus) {
            Log.v(TAG, NPStringFog.decode(new byte[]{118, 85, 87, 0, 4, 92, 89, 93, 87, 4, 65, 81, 64, 64, 86, 5, 14, 83, 64, 71}, "549ca0", 1638));
            this.mCameraWrapper.mCamera.cancelAutoFocus();
        } else if (!this.mSurfaceCreated) {
            scheduleAutoFocus();
        } else {
            Log.v(TAG, NPStringFog.decode(new byte[]{106, 76, 3, 22, 71, 93, 87, 95, 66, 5, 70, 64, 86, 94, 13, 7, 70, 71}, "98bd34", 192814530L));
            safeAutoFocus();
        }
    }

    public void setCamera(CameraWrapper cameraWrapper, Camera.PreviewCallback previewCallback) {
        this.mCameraWrapper = cameraWrapper;
        this.mPreviewCallback = previewCallback;
    }

    public void setShouldScaleToFill(boolean z) {
        this.mShouldScaleToFill = z;
    }

    public void setupCameraParameters() {
        Camera.Size optimalPreviewSize = getOptimalPreviewSize();
        Camera.Parameters parameters = this.mCameraWrapper.mCamera.getParameters();
        parameters.setPreviewSize(optimalPreviewSize.width, optimalPreviewSize.height);
        this.mCameraWrapper.mCamera.setParameters(parameters);
        adjustViewSize(optimalPreviewSize);
    }

    public void showCameraPreview() {
        if (this.mCameraWrapper != null) {
            try {
                getHolder().addCallback(this);
                this.mPreviewing = true;
                setupCameraParameters();
                this.mCameraWrapper.mCamera.setPreviewDisplay(getHolder());
                this.mCameraWrapper.mCamera.setDisplayOrientation(getDisplayOrientation());
                this.mCameraWrapper.mCamera.setOneShotPreviewCallback(this.mPreviewCallback);
                this.mCameraWrapper.mCamera.startPreview();
                if (this.mAutoFocus) {
                    if (this.mSurfaceCreated) {
                        safeAutoFocus();
                    } else {
                        scheduleAutoFocus();
                    }
                }
            } catch (Exception e) {
                Log.e(TAG, e.toString(), e);
            }
        }
    }

    public void stopCameraPreview() {
        if (this.mCameraWrapper != null) {
            try {
                this.mPreviewing = false;
                getHolder().removeCallback(this);
                this.mCameraWrapper.mCamera.cancelAutoFocus();
                this.mCameraWrapper.mCamera.setOneShotPreviewCallback(null);
                this.mCameraWrapper.mCamera.stopPreview();
            } catch (Exception e) {
                Log.e(TAG, e.toString(), e);
            }
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        if (surfaceHolder.getSurface() == null) {
            return;
        }
        stopCameraPreview();
        showCameraPreview();
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        this.mSurfaceCreated = true;
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        this.mSurfaceCreated = false;
        stopCameraPreview();
    }
}
