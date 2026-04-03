.class public Lme/dm7/barcodescanner/core/CameraHandlerThread;
.super Landroid/os/HandlerThread;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mScannerView:Lme/dm7/barcodescanner/core/BarcodeScannerView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x13

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "ce711a"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lme/dm7/barcodescanner/core/CameraHandlerThread;->LOG_TAG:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x20t
        0x4t
        0x5at
        0x54t
        0x43t
        0x0t
        0x2bt
        0x4t
        0x59t
        0x55t
        0x5dt
        0x4t
        0x11t
        0x31t
        0x5ft
        0x43t
        0x54t
        0x0t
        0x7t
    .end array-data
.end method

.method public constructor <init>(Lme/dm7/barcodescanner/core/BarcodeScannerView;)V
    .locals 3

    const/16 v0, 0x13

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "0fc167"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lme/dm7/barcodescanner/core/CameraHandlerThread;->mScannerView:Lme/dm7/barcodescanner/core/BarcodeScannerView;

    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraHandlerThread;->start()V

    return-void

    nop

    :array_0
    .array-data 1
        0x73t
        0x7t
        0xet
        0x54t
        0x44t
        0x56t
        0x78t
        0x7t
        0xdt
        0x55t
        0x5at
        0x52t
        0x42t
        0x32t
        0xbt
        0x43t
        0x53t
        0x56t
        0x54t
    .end array-data
.end method

.method static synthetic access$000(Lme/dm7/barcodescanner/core/CameraHandlerThread;)Lme/dm7/barcodescanner/core/BarcodeScannerView;
    .locals 1

    iget-object v0, p0, Lme/dm7/barcodescanner/core/CameraHandlerThread;->mScannerView:Lme/dm7/barcodescanner/core/BarcodeScannerView;

    return-object v0
.end method


# virtual methods
.method public startCamera(I)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraHandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lme/dm7/barcodescanner/core/CameraHandlerThread$1;

    invoke-direct {v1, p0, p1}, Lme/dm7/barcodescanner/core/CameraHandlerThread$1;-><init>(Lme/dm7/barcodescanner/core/CameraHandlerThread;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
