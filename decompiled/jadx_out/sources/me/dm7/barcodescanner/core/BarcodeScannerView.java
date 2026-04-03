package me.dm7.barcodescanner.core;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.hardware.Camera;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.core.view.ViewCompat;
import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
public abstract class BarcodeScannerView extends FrameLayout implements Camera.PreviewCallback {
    private boolean mAutofocusState;
    private CameraHandlerThread mCameraHandlerThread;
    private CameraWrapper mCameraWrapper;
    private Boolean mFlashState;
    private Rect mFramingRectInPreview;
    private CameraPreview mPreview;
    private boolean mShouldScaleToFill;
    private IViewFinder mViewFinderView;

    public BarcodeScannerView(Context context) {
        super(context);
        this.mAutofocusState = true;
        this.mShouldScaleToFill = true;
    }

    public BarcodeScannerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mAutofocusState = true;
        this.mShouldScaleToFill = true;
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.BarcodeScannerView, 0, 0);
        try {
            setShouldScaleToFill(typedArrayObtainStyledAttributes.getBoolean(R.styleable.BarcodeScannerView_shouldScaleToFill, true));
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    protected IViewFinder createViewFinderView(Context context) {
        return new ViewFinderView(context);
    }

    public boolean getFlash() {
        if (this.mCameraWrapper == null || !CameraUtils.isFlashSupported(this.mCameraWrapper.mCamera)) {
            return false;
        }
        return this.mCameraWrapper.mCamera.getParameters().getFlashMode().equals(NPStringFog.decode(new byte[]{64, 87, 74, 80, 9}, "4883a5", true));
    }

    public Rect getFramingRectInPreview(int i, int i2) {
        Rect rect;
        synchronized (this) {
            if (this.mFramingRectInPreview == null) {
                Rect framingRect = this.mViewFinderView.getFramingRect();
                int width = this.mViewFinderView.getWidth();
                int height = this.mViewFinderView.getHeight();
                if (framingRect == null || width == 0 || height == 0) {
                    rect = null;
                } else {
                    Rect rect2 = new Rect(framingRect);
                    if (i < width) {
                        rect2.left = (rect2.left * i) / width;
                        rect2.right = (rect2.right * i) / width;
                    }
                    if (i2 < height) {
                        rect2.top = (rect2.top * i2) / height;
                        rect2.bottom = (rect2.bottom * i2) / height;
                    }
                    this.mFramingRectInPreview = rect2;
                }
            }
            rect = this.mFramingRectInPreview;
        }
        return rect;
    }

    protected void resumeCameraPreview() {
        if (this.mPreview != null) {
            this.mPreview.showCameraPreview();
        }
    }

    public void setAutoFocus(boolean z) {
        this.mAutofocusState = z;
        if (this.mPreview != null) {
            this.mPreview.setAutoFocus(z);
        }
    }

    public void setFlash(boolean z) {
        this.mFlashState = Boolean.valueOf(z);
        if (this.mCameraWrapper == null || !CameraUtils.isFlashSupported(this.mCameraWrapper.mCamera)) {
            return;
        }
        Camera.Parameters parameters = this.mCameraWrapper.mCamera.getParameters();
        if (z) {
            if (parameters.getFlashMode().equals(NPStringFog.decode(new byte[]{64, 10, 16, 90, 94}, "4eb967", 1.027256721E9d))) {
                return;
            } else {
                parameters.setFlashMode(NPStringFog.decode(new byte[]{67, 94, 16, 87, 11}, "71b4c4", -3.1064926E7d));
            }
        } else if (parameters.getFlashMode().equals(NPStringFog.decode(new byte[]{93, 85, 84}, "23225e", true, true))) {
            return;
        } else {
            parameters.setFlashMode(NPStringFog.decode(new byte[]{90, 80, 87}, "5615a8", -2.4476718E8f));
        }
        this.mCameraWrapper.mCamera.setParameters(parameters);
    }

    public void setShouldScaleToFill(boolean z) {
        this.mShouldScaleToFill = z;
    }

    public void setupCameraPreview(CameraWrapper cameraWrapper) {
        this.mCameraWrapper = cameraWrapper;
        if (this.mCameraWrapper != null) {
            setupLayout(this.mCameraWrapper);
            this.mViewFinderView.setupViewFinder();
            if (this.mFlashState != null) {
                setFlash(this.mFlashState.booleanValue());
            }
            setAutoFocus(this.mAutofocusState);
        }
    }

    public final void setupLayout(CameraWrapper cameraWrapper) {
        removeAllViews();
        this.mPreview = new CameraPreview(getContext(), cameraWrapper, this);
        this.mPreview.setShouldScaleToFill(this.mShouldScaleToFill);
        if (this.mShouldScaleToFill) {
            addView(this.mPreview);
        } else {
            RelativeLayout relativeLayout = new RelativeLayout(getContext());
            relativeLayout.setGravity(17);
            relativeLayout.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
            relativeLayout.addView(this.mPreview);
            addView(relativeLayout);
        }
        this.mViewFinderView = createViewFinderView(getContext());
        if (!(this.mViewFinderView instanceof View)) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{120, 101, 92, 83, 17, 113, 88, 93, 81, 83, 20, 23, 94, 81, 95, 83, 5, 67, 17, 65, 80, 66, 19, 69, 95, 86, 81, 22, 4, 78, 17, 20, 86, 68, 3, 86, 69, 86, 99, 95, 3, 64, 119, 90, 91, 82, 3, 69, 103, 90, 80, 65, 78, 30, 22, 19, 70, 94, 9, 66, 93, 87, 21, 84, 3, 23, 88, 93, 70, 66, 7, 89, 82, 86, 21, 89, 0, 23, 80, 93, 81, 68, 9, 94, 85, 29, 67, 95, 3, 64, 31, 101, 92, 83, 17}, "1356f7", 1438758747L));
        }
        addView((View) this.mViewFinderView);
    }

    public void startCamera() {
        startCamera(CameraUtils.getDefaultCameraId());
    }

    public void startCamera(int i) {
        if (this.mCameraHandlerThread == null) {
            this.mCameraHandlerThread = new CameraHandlerThread(this);
        }
        this.mCameraHandlerThread.startCamera(i);
    }

    public void stopCamera() {
        if (this.mCameraWrapper != null) {
            this.mPreview.stopCameraPreview();
            this.mPreview.setCamera(null, null);
            this.mCameraWrapper.mCamera.release();
            this.mCameraWrapper = null;
        }
        if (this.mCameraHandlerThread != null) {
            this.mCameraHandlerThread.quit();
            this.mCameraHandlerThread = null;
        }
    }

    public void stopCameraPreview() {
        if (this.mPreview != null) {
            this.mPreview.stopCameraPreview();
        }
    }

    public void toggleFlash() {
        if (this.mCameraWrapper == null || !CameraUtils.isFlashSupported(this.mCameraWrapper.mCamera)) {
            return;
        }
        Camera.Parameters parameters = this.mCameraWrapper.mCamera.getParameters();
        if (parameters.getFlashMode().equals(NPStringFog.decode(new byte[]{22, 91, 22, 91, 80}, "b4d883", 7.8450445E8f))) {
            parameters.setFlashMode(NPStringFog.decode(new byte[]{13, 83, 82}, "b549f8", -9.4388632E7d));
        } else {
            parameters.setFlashMode(NPStringFog.decode(new byte[]{22, 89, 70, 83, 93}, "b64059", 2.1914056E8f));
        }
        this.mCameraWrapper.mCamera.setParameters(parameters);
    }
}
