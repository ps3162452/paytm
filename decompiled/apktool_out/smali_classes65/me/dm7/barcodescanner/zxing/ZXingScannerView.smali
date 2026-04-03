.class public Lme/dm7/barcodescanner/zxing/ZXingScannerView;
.super Lme/dm7/barcodescanner/core/BarcodeScannerView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/dm7/barcodescanner/zxing/ZXingScannerView$ResultHandler;
    }
.end annotation


# static fields
.field public static final ALL_FORMATS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field private mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

.field private mResultHandler:Lme/dm7/barcodescanner/zxing/ZXingScannerView$ResultHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "640848"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->ALL_FORMATS:Ljava/util/List;

    sget-object v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->ALL_FORMATS:Ljava/util/List;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->ALL_FORMATS:Ljava/util/List;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->ALL_FORMATS:Ljava/util/List;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->ALL_FORMATS:Ljava/util/List;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->ALL_FORMATS:Ljava/util/List;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->RSS_14:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->ALL_FORMATS:Ljava/util/List;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->ALL_FORMATS:Ljava/util/List;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->CODE_93:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->ALL_FORMATS:Ljava/util/List;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->ALL_FORMATS:Ljava/util/List;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->ALL_FORMATS:Ljava/util/List;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->CODABAR:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->ALL_FORMATS:Ljava/util/List;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->ALL_FORMATS:Ljava/util/List;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->DATA_MATRIX:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->ALL_FORMATS:Ljava/util/List;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->PDF_417:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :array_0
    .array-data 1
        0x6ct
        0x6ct
        0x59t
        0x56t
        0x53t
        0x6bt
        0x55t
        0x55t
        0x5et
        0x56t
        0x51t
        0x4at
        0x60t
        0x5dt
        0x55t
        0x4ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lme/dm7/barcodescanner/core/BarcodeScannerView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->initMultiFormatReader()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lme/dm7/barcodescanner/core/BarcodeScannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->initMultiFormatReader()V

    return-void
.end method

.method static synthetic access$000(Lme/dm7/barcodescanner/zxing/ZXingScannerView;)Lme/dm7/barcodescanner/zxing/ZXingScannerView$ResultHandler;
    .locals 1

    iget-object v0, p0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->mResultHandler:Lme/dm7/barcodescanner/zxing/ZXingScannerView$ResultHandler;

    return-object v0
.end method

.method static synthetic access$002(Lme/dm7/barcodescanner/zxing/ZXingScannerView;Lme/dm7/barcodescanner/zxing/ZXingScannerView$ResultHandler;)Lme/dm7/barcodescanner/zxing/ZXingScannerView$ResultHandler;
    .locals 0

    iput-object p1, p0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->mResultHandler:Lme/dm7/barcodescanner/zxing/ZXingScannerView$ResultHandler;

    return-object p1
.end method

.method private initMultiFormatReader()V
    .locals 3

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/google/zxing/DecodeHintType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {p0}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->getFormats()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {v1}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    iput-object v1, p0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    iget-object v1, p0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v1, v0}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public buildLuminanceSource([BII)Lcom/google/zxing/PlanarYUVLuminanceSource;
    .locals 10

    const/4 v9, 0x0

    invoke-virtual {p0, p2, p3}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->getFramingRectInPreview(II)Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v0, v9

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Lcom/google/zxing/PlanarYUVLuminanceSource;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v7

    const/4 v8, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v9

    goto :goto_0
.end method

.method public getFormats()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->mFormats:Ljava/util/List;

    if-nez v0, :cond_0

    sget-object v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->ALL_FORMATS:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->mFormats:Ljava/util/List;

    goto :goto_0
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 9

    const/4 v4, 0x0

    iget-object v0, p0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->mResultHandler:Lme/dm7/barcodescanner/zxing/ZXingScannerView$ResultHandler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    iget v0, v1, Landroid/hardware/Camera$Size;->width:I

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {p0}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lme/dm7/barcodescanner/core/DisplayUtils;->getScreenOrientation(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    array-length v2, p1

    new-array v2, v2, [B
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v4

    :goto_1
    if-ge v5, v1, :cond_2

    move v3, v4

    :goto_2
    if-ge v3, v0, :cond_1

    mul-int v6, v3, v1

    add-int/2addr v6, v1

    sub-int/2addr v6, v5

    add-int/lit8 v6, v6, -0x1

    mul-int v7, v5, v0

    add-int/2addr v7, v3

    aget-byte v7, p1, v7

    int-to-byte v7, v7

    aput-byte v7, v2, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_1

    :cond_2
    move-object p1, v2

    :goto_3
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v1, v0}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->buildLuminanceSource([BII)Lcom/google/zxing/PlanarYUVLuminanceSource;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    new-instance v3, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v3, v0}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v1, v3}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v0, p0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v0, v1}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    :try_end_2
    .catch Lcom/google/zxing/ReaderException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    :try_start_3
    iget-object v1, p0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v1}, Lcom/google/zxing/MultiFormatReader;->reset()V

    :goto_4
    if-eqz v0, :cond_3

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lme/dm7/barcodescanner/zxing/ZXingScannerView$1;

    invoke-direct {v2, p0, v0}, Lme/dm7/barcodescanner/zxing/ZXingScannerView$1;-><init>(Lme/dm7/barcodescanner/zxing/ZXingScannerView;Lcom/google/zxing/Result;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_4
    iget-object v0, p0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v0}, Lcom/google/zxing/MultiFormatReader;->reset()V

    move-object v0, v2

    goto :goto_4

    :catch_2
    move-exception v0

    iget-object v0, p0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v0}, Lcom/google/zxing/MultiFormatReader;->reset()V

    move-object v0, v2

    goto :goto_4

    :catch_3
    move-exception v0

    iget-object v0, p0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v0}, Lcom/google/zxing/MultiFormatReader;->reset()V

    move-object v0, v2

    goto :goto_4

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v1}, Lcom/google/zxing/MultiFormatReader;->reset()V

    throw v0

    :cond_3
    invoke-virtual {p2, p0}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    :cond_4
    move-object v0, v2

    goto :goto_4

    :cond_5
    move v8, v1

    move v1, v0

    move v0, v8

    goto :goto_3
.end method

.method public resumeCameraPreview(Lme/dm7/barcodescanner/zxing/ZXingScannerView$ResultHandler;)V
    .locals 0

    iput-object p1, p0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->mResultHandler:Lme/dm7/barcodescanner/zxing/ZXingScannerView$ResultHandler;

    invoke-super {p0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->resumeCameraPreview()V

    return-void
.end method

.method public setFormats(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->mFormats:Ljava/util/List;

    invoke-direct {p0}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->initMultiFormatReader()V

    return-void
.end method

.method public setResultHandler(Lme/dm7/barcodescanner/zxing/ZXingScannerView$ResultHandler;)V
    .locals 0

    iput-object p1, p0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->mResultHandler:Lme/dm7/barcodescanner/zxing/ZXingScannerView$ResultHandler;

    return-void
.end method
