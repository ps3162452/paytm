.class public abstract Lme/dm7/barcodescanner/core/BarcodeScannerView;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# instance fields
.field private mAutofocusState:Z

.field private mCameraHandlerThread:Lme/dm7/barcodescanner/core/CameraHandlerThread;

.field private mCameraWrapper:Lme/dm7/barcodescanner/core/CameraWrapper;

.field private mFlashState:Ljava/lang/Boolean;

.field private mFramingRectInPreview:Landroid/graphics/Rect;

.field private mPreview:Lme/dm7/barcodescanner/core/CameraPreview;

.field private mShouldScaleToFill:Z

.field private mViewFinderView:Lme/dm7/barcodescanner/core/IViewFinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mAutofocusState:Z

    iput-boolean v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mShouldScaleToFill:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mAutofocusState:Z

    iput-boolean v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mShouldScaleToFill:Z

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lme/dm7/barcodescanner/core/R$styleable;->BarcodeScannerView:[I

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    :try_start_0
    sget v0, Lme/dm7/barcodescanner/core/R$styleable;->BarcodeScannerView_shouldScaleToFill:I

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->setShouldScaleToFill(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method


# virtual methods
.method protected createViewFinderView(Landroid/content/Context;)Lme/dm7/barcodescanner/core/IViewFinder;
    .locals 1

    new-instance v0, Lme/dm7/barcodescanner/core/ViewFinderView;

    invoke-direct {v0, p1}, Lme/dm7/barcodescanner/core/ViewFinderView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getFlash()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCameraWrapper:Lme/dm7/barcodescanner/core/CameraWrapper;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCameraWrapper:Lme/dm7/barcodescanner/core/CameraWrapper;

    iget-object v2, v2, Lme/dm7/barcodescanner/core/CameraWrapper;->mCamera:Landroid/hardware/Camera;

    invoke-static {v2}, Lme/dm7/barcodescanner/core/CameraUtils;->isFlashSupported(Landroid/hardware/Camera;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCameraWrapper:Lme/dm7/barcodescanner/core/CameraWrapper;

    iget-object v2, v2, Lme/dm7/barcodescanner/core/CameraWrapper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "4883a5"

    invoke-static {v3, v4, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x40t
        0x57t
        0x4at
        0x50t
        0x9t
    .end array-data
.end method

.method public getFramingRectInPreview(II)Landroid/graphics/Rect;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mFramingRectInPreview:Landroid/graphics/Rect;

    if-nez v0, :cond_4

    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderView:Lme/dm7/barcodescanner/core/IViewFinder;

    invoke-interface {v0}, Lme/dm7/barcodescanner/core/IViewFinder;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderView:Lme/dm7/barcodescanner/core/IViewFinder;

    invoke-interface {v1}, Lme/dm7/barcodescanner/core/IViewFinder;->getWidth()I

    move-result v1

    iget-object v2, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderView:Lme/dm7/barcodescanner/core/IViewFinder;

    invoke-interface {v2}, Lme/dm7/barcodescanner/core/IViewFinder;->getHeight()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    if-ge p1, v1, :cond_2

    iget v0, v3, Landroid/graphics/Rect;->left:I

    mul-int/2addr v0, p1

    div-int/2addr v0, v1

    iput v0, v3, Landroid/graphics/Rect;->left:I

    iget v0, v3, Landroid/graphics/Rect;->right:I

    mul-int/2addr v0, p1

    div-int/2addr v0, v1

    iput v0, v3, Landroid/graphics/Rect;->right:I

    :cond_2
    if-ge p2, v2, :cond_3

    iget v0, v3, Landroid/graphics/Rect;->top:I

    mul-int/2addr v0, p2

    div-int/2addr v0, v2

    iput v0, v3, Landroid/graphics/Rect;->top:I

    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    mul-int/2addr v0, p2

    div-int/2addr v0, v2

    iput v0, v3, Landroid/graphics/Rect;->bottom:I

    :cond_3
    iput-object v3, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mFramingRectInPreview:Landroid/graphics/Rect;

    :cond_4
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mFramingRectInPreview:Landroid/graphics/Rect;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected resumeCameraPreview()V
    .locals 1

    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mPreview:Lme/dm7/barcodescanner/core/CameraPreview;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mPreview:Lme/dm7/barcodescanner/core/CameraPreview;

    invoke-virtual {v0}, Lme/dm7/barcodescanner/core/CameraPreview;->showCameraPreview()V

    :cond_0
    return-void
.end method

.method public setAutoFocus(Z)V
    .locals 1

    iput-boolean p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mAutofocusState:Z

    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mPreview:Lme/dm7/barcodescanner/core/CameraPreview;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mPreview:Lme/dm7/barcodescanner/core/CameraPreview;

    invoke-virtual {v0, p1}, Lme/dm7/barcodescanner/core/CameraPreview;->setAutoFocus(Z)V

    :cond_0
    return-void
.end method

.method public setFlash(Z)V
    .locals 7

    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mFlashState:Ljava/lang/Boolean;

    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCameraWrapper:Lme/dm7/barcodescanner/core/CameraWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCameraWrapper:Lme/dm7/barcodescanner/core/CameraWrapper;

    iget-object v0, v0, Lme/dm7/barcodescanner/core/CameraWrapper;->mCamera:Landroid/hardware/Camera;

    invoke-static {v0}, Lme/dm7/barcodescanner/core/CameraUtils;->isFlashSupported(Landroid/hardware/Camera;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCameraWrapper:Lme/dm7/barcodescanner/core/CameraWrapper;

    iget-object v0, v0, Lme/dm7/barcodescanner/core/CameraWrapper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [B

    fill-array-data v2, :array_0

    const-string v3, "4eb967"

    const-wide v4, 0x41ce9d58c8800000L    # 1.027256721E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-array v1, v6, [B

    fill-array-data v1, :array_1

    const-string v2, "71b4c4"

    const-wide v4, -0x3e825fca20000000L    # -3.1064926E7

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    :goto_1
    iget-object v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCameraWrapper:Lme/dm7/barcodescanner/core/CameraWrapper;

    iget-object v1, v1, Lme/dm7/barcodescanner/core/CameraWrapper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [B

    fill-array-data v2, :array_2

    const-string v3, "23225e"

    invoke-static {v2, v3, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-array v1, v5, [B

    fill-array-data v1, :array_3

    const-string v2, "5615a8"

    const v3, -0x32969263

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_1

    :array_0
    .array-data 1
        0x40t
        0xat
        0x10t
        0x5at
        0x5et
    .end array-data

    nop

    :array_1
    .array-data 1
        0x43t
        0x5et
        0x10t
        0x57t
        0xbt
    .end array-data

    nop

    :array_2
    .array-data 1
        0x5dt
        0x55t
        0x54t
    .end array-data

    :array_3
    .array-data 1
        0x5at
        0x50t
        0x57t
    .end array-data
.end method

.method public setShouldScaleToFill(Z)V
    .locals 0

    iput-boolean p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mShouldScaleToFill:Z

    return-void
.end method

.method public setupCameraPreview(Lme/dm7/barcodescanner/core/CameraWrapper;)V
    .locals 1

    iput-object p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCameraWrapper:Lme/dm7/barcodescanner/core/CameraWrapper;

    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCameraWrapper:Lme/dm7/barcodescanner/core/CameraWrapper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCameraWrapper:Lme/dm7/barcodescanner/core/CameraWrapper;

    invoke-virtual {p0, v0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->setupLayout(Lme/dm7/barcodescanner/core/CameraWrapper;)V

    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderView:Lme/dm7/barcodescanner/core/IViewFinder;

    invoke-interface {v0}, Lme/dm7/barcodescanner/core/IViewFinder;->setupViewFinder()V

    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mFlashState:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mFlashState:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->setFlash(Z)V

    :cond_0
    iget-boolean v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mAutofocusState:Z

    invoke-virtual {p0, v0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->setAutoFocus(Z)V

    :cond_1
    return-void
.end method

.method public final setupLayout(Lme/dm7/barcodescanner/core/CameraWrapper;)V
    .locals 6

    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->removeAllViews()V

    new-instance v0, Lme/dm7/barcodescanner/core/CameraPreview;

    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lme/dm7/barcodescanner/core/CameraPreview;-><init>(Landroid/content/Context;Lme/dm7/barcodescanner/core/CameraWrapper;Landroid/hardware/Camera$PreviewCallback;)V

    iput-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mPreview:Lme/dm7/barcodescanner/core/CameraPreview;

    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mPreview:Lme/dm7/barcodescanner/core/CameraPreview;

    iget-boolean v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mShouldScaleToFill:Z

    invoke-virtual {v0, v1}, Lme/dm7/barcodescanner/core/CameraPreview;->setShouldScaleToFill(Z)V

    iget-boolean v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mShouldScaleToFill:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mPreview:Lme/dm7/barcodescanner/core/CameraPreview;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->addView(Landroid/view/View;)V

    :goto_0
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->createViewFinderView(Landroid/content/Context;)Lme/dm7/barcodescanner/core/IViewFinder;

    move-result-object v0

    iput-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderView:Lme/dm7/barcodescanner/core/IViewFinder;

    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderView:Lme/dm7/barcodescanner/core/IViewFinder;

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderView:Lme/dm7/barcodescanner/core/IViewFinder;

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->addView(Landroid/view/View;)V

    return-void

    :cond_0
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mPreview:Lme/dm7/barcodescanner/core/CameraPreview;

    invoke-virtual {p0, v0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x5f

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "1356f7"

    const-wide/32 v4, 0x55c1b75b

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x78t
        0x65t
        0x5ct
        0x53t
        0x11t
        0x71t
        0x58t
        0x5dt
        0x51t
        0x53t
        0x14t
        0x17t
        0x5et
        0x51t
        0x5ft
        0x53t
        0x5t
        0x43t
        0x11t
        0x41t
        0x50t
        0x42t
        0x13t
        0x45t
        0x5ft
        0x56t
        0x51t
        0x16t
        0x4t
        0x4et
        0x11t
        0x14t
        0x56t
        0x44t
        0x3t
        0x56t
        0x45t
        0x56t
        0x63t
        0x5ft
        0x3t
        0x40t
        0x77t
        0x5at
        0x5bt
        0x52t
        0x3t
        0x45t
        0x67t
        0x5at
        0x50t
        0x41t
        0x4et
        0x1et
        0x16t
        0x13t
        0x46t
        0x5et
        0x9t
        0x42t
        0x5dt
        0x57t
        0x15t
        0x54t
        0x3t
        0x17t
        0x58t
        0x5dt
        0x46t
        0x42t
        0x7t
        0x59t
        0x52t
        0x56t
        0x15t
        0x59t
        0x0t
        0x17t
        0x50t
        0x5dt
        0x51t
        0x44t
        0x9t
        0x5et
        0x55t
        0x1dt
        0x43t
        0x5ft
        0x3t
        0x40t
        0x1ft
        0x65t
        0x5ct
        0x53t
        0x11t
    .end array-data
.end method

.method public startCamera()V
    .locals 1

    invoke-static {}, Lme/dm7/barcodescanner/core/CameraUtils;->getDefaultCameraId()I

    move-result v0

    invoke-virtual {p0, v0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->startCamera(I)V

    return-void
.end method

.method public startCamera(I)V
    .locals 1

    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCameraHandlerThread:Lme/dm7/barcodescanner/core/CameraHandlerThread;

    if-nez v0, :cond_0

    new-instance v0, Lme/dm7/barcodescanner/core/CameraHandlerThread;

    invoke-direct {v0, p0}, Lme/dm7/barcodescanner/core/CameraHandlerThread;-><init>(Lme/dm7/barcodescanner/core/BarcodeScannerView;)V

    iput-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCameraHandlerThread:Lme/dm7/barcodescanner/core/CameraHandlerThread;

    :cond_0
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCameraHandlerThread:Lme/dm7/barcodescanner/core/CameraHandlerThread;

    invoke-virtual {v0, p1}, Lme/dm7/barcodescanner/core/CameraHandlerThread;->startCamera(I)V

    return-void
.end method

.method public stopCamera()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCameraWrapper:Lme/dm7/barcodescanner/core/CameraWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mPreview:Lme/dm7/barcodescanner/core/CameraPreview;

    invoke-virtual {v0}, Lme/dm7/barcodescanner/core/CameraPreview;->stopCameraPreview()V

    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mPreview:Lme/dm7/barcodescanner/core/CameraPreview;

    invoke-virtual {v0, v1, v1}, Lme/dm7/barcodescanner/core/CameraPreview;->setCamera(Lme/dm7/barcodescanner/core/CameraWrapper;Landroid/hardware/Camera$PreviewCallback;)V

    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCameraWrapper:Lme/dm7/barcodescanner/core/CameraWrapper;

    iget-object v0, v0, Lme/dm7/barcodescanner/core/CameraWrapper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    iput-object v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCameraWrapper:Lme/dm7/barcodescanner/core/CameraWrapper;

    :cond_0
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCameraHandlerThread:Lme/dm7/barcodescanner/core/CameraHandlerThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCameraHandlerThread:Lme/dm7/barcodescanner/core/CameraHandlerThread;

    invoke-virtual {v0}, Lme/dm7/barcodescanner/core/CameraHandlerThread;->quit()Z

    iput-object v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCameraHandlerThread:Lme/dm7/barcodescanner/core/CameraHandlerThread;

    :cond_1
    return-void
.end method

.method public stopCameraPreview()V
    .locals 1

    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mPreview:Lme/dm7/barcodescanner/core/CameraPreview;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mPreview:Lme/dm7/barcodescanner/core/CameraPreview;

    invoke-virtual {v0}, Lme/dm7/barcodescanner/core/CameraPreview;->stopCameraPreview()V

    :cond_0
    return-void
.end method

.method public toggleFlash()V
    .locals 6

    const/4 v5, 0x5

    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCameraWrapper:Lme/dm7/barcodescanner/core/CameraWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCameraWrapper:Lme/dm7/barcodescanner/core/CameraWrapper;

    iget-object v0, v0, Lme/dm7/barcodescanner/core/CameraWrapper;->mCamera:Landroid/hardware/Camera;

    invoke-static {v0}, Lme/dm7/barcodescanner/core/CameraUtils;->isFlashSupported(Landroid/hardware/Camera;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCameraWrapper:Lme/dm7/barcodescanner/core/CameraWrapper;

    iget-object v0, v0, Lme/dm7/barcodescanner/core/CameraWrapper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [B

    fill-array-data v2, :array_0

    const-string v3, "b4d883"

    const v4, 0x4e3b0a5a    # 7.8450445E8f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "b549f8"

    const-wide v4, -0x3e697ef9a0000000L    # -9.4388632E7

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCameraWrapper:Lme/dm7/barcodescanner/core/CameraWrapper;

    iget-object v1, v1, Lme/dm7/barcodescanner/core/CameraWrapper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_0
    return-void

    :cond_1
    new-array v1, v5, [B

    fill-array-data v1, :array_2

    const-string v2, "b64059"

    const v3, 0x4d50fd1d    # 2.1914056E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x16t
        0x5bt
        0x16t
        0x5bt
        0x50t
    .end array-data

    nop

    :array_1
    .array-data 1
        0xdt
        0x53t
        0x52t
    .end array-data

    :array_2
    .array-data 1
        0x16t
        0x59t
        0x46t
        0x53t
        0x5dt
    .end array-data
.end method
