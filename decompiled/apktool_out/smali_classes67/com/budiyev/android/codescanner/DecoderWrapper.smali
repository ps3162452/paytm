.class final Lcom/budiyev/android/codescanner/DecoderWrapper;
.super Ljava/lang/Object;


# instance fields
.field private final mAutoFocusSupported:Z

.field private final mCamera:Landroid/hardware/Camera;

.field private final mCameraInfo:Landroid/hardware/Camera$CameraInfo;

.field private final mDecoder:Lcom/budiyev/android/codescanner/Decoder;

.field private final mDisplayOrientation:I

.field private final mFlashSupported:Z

.field private final mImageSize:Lcom/budiyev/android/codescanner/Point;

.field private final mPreviewSize:Lcom/budiyev/android/codescanner/Point;

.field private final mReverseHorizontal:Z

.field private final mViewSize:Lcom/budiyev/android/codescanner/Point;


# direct methods
.method public constructor <init>(Landroid/hardware/Camera;Landroid/hardware/Camera$CameraInfo;Lcom/budiyev/android/codescanner/Decoder;Lcom/budiyev/android/codescanner/Point;Lcom/budiyev/android/codescanner/Point;Lcom/budiyev/android/codescanner/Point;IZZ)V
    .locals 2
    .param p1    # Landroid/hardware/Camera;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/hardware/Camera$CameraInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/budiyev/android/codescanner/Decoder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/budiyev/android/codescanner/Point;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/budiyev/android/codescanner/Point;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/budiyev/android/codescanner/Point;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/budiyev/android/codescanner/DecoderWrapper;->mCamera:Landroid/hardware/Camera;

    iput-object p2, p0, Lcom/budiyev/android/codescanner/DecoderWrapper;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    iput-object p3, p0, Lcom/budiyev/android/codescanner/DecoderWrapper;->mDecoder:Lcom/budiyev/android/codescanner/Decoder;

    iput-object p4, p0, Lcom/budiyev/android/codescanner/DecoderWrapper;->mImageSize:Lcom/budiyev/android/codescanner/Point;

    iput-object p5, p0, Lcom/budiyev/android/codescanner/DecoderWrapper;->mPreviewSize:Lcom/budiyev/android/codescanner/Point;

    iput-object p6, p0, Lcom/budiyev/android/codescanner/DecoderWrapper;->mViewSize:Lcom/budiyev/android/codescanner/Point;

    iput p7, p0, Lcom/budiyev/android/codescanner/DecoderWrapper;->mDisplayOrientation:I

    iget v1, p2, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/budiyev/android/codescanner/DecoderWrapper;->mReverseHorizontal:Z

    iput-boolean p8, p0, Lcom/budiyev/android/codescanner/DecoderWrapper;->mAutoFocusSupported:Z

    iput-boolean p9, p0, Lcom/budiyev/android/codescanner/DecoderWrapper;->mFlashSupported:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCamera()Landroid/hardware/Camera;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/budiyev/android/codescanner/DecoderWrapper;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method public getCameraInfo()Landroid/hardware/Camera$CameraInfo;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/budiyev/android/codescanner/DecoderWrapper;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    return-object v0
.end method

.method public getDecoder()Lcom/budiyev/android/codescanner/Decoder;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/budiyev/android/codescanner/DecoderWrapper;->mDecoder:Lcom/budiyev/android/codescanner/Decoder;

    return-object v0
.end method

.method public getDisplayOrientation()I
    .locals 1

    iget v0, p0, Lcom/budiyev/android/codescanner/DecoderWrapper;->mDisplayOrientation:I

    return v0
.end method

.method public getImageSize()Lcom/budiyev/android/codescanner/Point;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/budiyev/android/codescanner/DecoderWrapper;->mImageSize:Lcom/budiyev/android/codescanner/Point;

    return-object v0
.end method

.method public getPreviewSize()Lcom/budiyev/android/codescanner/Point;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/budiyev/android/codescanner/DecoderWrapper;->mPreviewSize:Lcom/budiyev/android/codescanner/Point;

    return-object v0
.end method

.method public getViewSize()Lcom/budiyev/android/codescanner/Point;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/budiyev/android/codescanner/DecoderWrapper;->mViewSize:Lcom/budiyev/android/codescanner/Point;

    return-object v0
.end method

.method public isAutoFocusSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/budiyev/android/codescanner/DecoderWrapper;->mAutoFocusSupported:Z

    return v0
.end method

.method public isFlashSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/budiyev/android/codescanner/DecoderWrapper;->mFlashSupported:Z

    return v0
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/budiyev/android/codescanner/DecoderWrapper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    iget-object v0, p0, Lcom/budiyev/android/codescanner/DecoderWrapper;->mDecoder:Lcom/budiyev/android/codescanner/Decoder;

    invoke-virtual {v0}, Lcom/budiyev/android/codescanner/Decoder;->shutdown()V

    return-void
.end method

.method public shouldReverseHorizontal()Z
    .locals 1

    iget-boolean v0, p0, Lcom/budiyev/android/codescanner/DecoderWrapper;->mReverseHorizontal:Z

    return v0
.end method
