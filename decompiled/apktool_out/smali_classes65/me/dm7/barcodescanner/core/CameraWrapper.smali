.class public Lme/dm7/barcodescanner/core/CameraWrapper;
.super Ljava/lang/Object;


# instance fields
.field public final mCamera:Landroid/hardware/Camera;

.field public final mCameraId:I


# direct methods
.method private constructor <init>(Landroid/hardware/Camera;I)V
    .locals 4
    .param p1    # Landroid/hardware/Camera;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const/16 v1, 0x15

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "530704"

    const/16 v3, -0x3493

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lme/dm7/barcodescanner/core/CameraWrapper;->mCamera:Landroid/hardware/Camera;

    iput p2, p0, Lme/dm7/barcodescanner/core/CameraWrapper;->mCameraId:I

    return-void

    nop

    :array_0
    .array-data 1
        0x76t
        0x52t
        0x5dt
        0x52t
        0x42t
        0x55t
        0x15t
        0x50t
        0x51t
        0x59t
        0x5et
        0x5bt
        0x41t
        0x13t
        0x52t
        0x52t
        0x10t
        0x5at
        0x40t
        0x5ft
        0x5ct
    .end array-data
.end method

.method public static getWrapper(Landroid/hardware/Camera;I)Lme/dm7/barcodescanner/core/CameraWrapper;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lme/dm7/barcodescanner/core/CameraWrapper;

    invoke-direct {v0, p0, p1}, Lme/dm7/barcodescanner/core/CameraWrapper;-><init>(Landroid/hardware/Camera;I)V

    goto :goto_0
.end method
