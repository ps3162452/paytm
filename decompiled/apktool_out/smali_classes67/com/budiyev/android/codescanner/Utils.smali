.class final Lcom/budiyev/android/codescanner/Utils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/budiyev/android/codescanner/Utils$CameraSizeComparator;,
        Lcom/budiyev/android/codescanner/Utils$FpsRangeComparator;,
        Lcom/budiyev/android/codescanner/Utils$SuppressErrorCallback;
    }
.end annotation


# static fields
.field private static final DISTORTION_STEP:F = 0.1f

.field private static final MAX_DISTORTION:F = 3.0f

.field private static final MAX_FPS:I = 0x7530

.field private static final MIN_DISTORTION:F = 0.3f

.field private static final MIN_FPS:I = 0x2710

.field private static final MIN_PREVIEW_PIXELS:I = 0x90000


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static configureDefaultFocusArea(Landroid/hardware/Camera$Parameters;Lcom/budiyev/android/codescanner/DecoderWrapper;Lcom/budiyev/android/codescanner/Rect;)V
    .locals 7
    .param p0    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/budiyev/android/codescanner/DecoderWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/budiyev/android/codescanner/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/budiyev/android/codescanner/DecoderWrapper;->getImageSize()Lcom/budiyev/android/codescanner/Point;

    move-result-object v0

    invoke-virtual {p1}, Lcom/budiyev/android/codescanner/DecoderWrapper;->getPreviewSize()Lcom/budiyev/android/codescanner/Point;

    move-result-object v2

    invoke-virtual {p1}, Lcom/budiyev/android/codescanner/DecoderWrapper;->getViewSize()Lcom/budiyev/android/codescanner/Point;

    move-result-object v3

    invoke-virtual {v0}, Lcom/budiyev/android/codescanner/Point;->getX()I

    move-result v4

    invoke-virtual {v0}, Lcom/budiyev/android/codescanner/Point;->getY()I

    move-result v5

    invoke-virtual {p1}, Lcom/budiyev/android/codescanner/DecoderWrapper;->getDisplayOrientation()I

    move-result v6

    move-object v0, p0

    move-object v1, p2

    invoke-static/range {v0 .. v6}, Lcom/budiyev/android/codescanner/Utils;->configureDefaultFocusArea(Landroid/hardware/Camera$Parameters;Lcom/budiyev/android/codescanner/Rect;Lcom/budiyev/android/codescanner/Point;Lcom/budiyev/android/codescanner/Point;III)V

    return-void
.end method

.method public static configureDefaultFocusArea(Landroid/hardware/Camera$Parameters;Lcom/budiyev/android/codescanner/Rect;Lcom/budiyev/android/codescanner/Point;Lcom/budiyev/android/codescanner/Point;III)V
    .locals 2
    .param p0    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/budiyev/android/codescanner/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/budiyev/android/codescanner/Point;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/budiyev/android/codescanner/Point;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p6}, Lcom/budiyev/android/codescanner/Utils;->isPortrait(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, p5

    :goto_0
    if-eqz v1, :cond_1

    :goto_1
    invoke-static {v0, p4, p1, p2, p3}, Lcom/budiyev/android/codescanner/Utils;->getImageFrameRect(IILcom/budiyev/android/codescanner/Rect;Lcom/budiyev/android/codescanner/Point;Lcom/budiyev/android/codescanner/Point;)Lcom/budiyev/android/codescanner/Rect;

    move-result-object v1

    invoke-static {p0, v1, v0, p4, p6}, Lcom/budiyev/android/codescanner/Utils;->configureFocusArea(Landroid/hardware/Camera$Parameters;Lcom/budiyev/android/codescanner/Rect;III)V

    return-void

    :cond_0
    move v0, p4

    goto :goto_0

    :cond_1
    move p4, p5

    goto :goto_1
.end method

.method public static configureFocusArea(Landroid/hardware/Camera$Parameters;Lcom/budiyev/android/codescanner/Rect;III)V
    .locals 7
    .param p0    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/budiyev/android/codescanner/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v5, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    neg-int v1, p4

    int-to-float v1, v1

    int-to-float v2, p2

    div-float/2addr v2, v4

    int-to-float v3, p3

    div-float/2addr v3, v4

    invoke-virtual {p1, v1, v2, v3}, Lcom/budiyev/android/codescanner/Rect;->rotate(FFF)Lcom/budiyev/android/codescanner/Rect;

    move-result-object v1

    invoke-virtual {v1, v5, v5, p2, p3}, Lcom/budiyev/android/codescanner/Rect;->bound(IIII)Lcom/budiyev/android/codescanner/Rect;

    move-result-object v1

    new-instance v2, Landroid/hardware/Camera$Area;

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v1}, Lcom/budiyev/android/codescanner/Rect;->getLeft()I

    move-result v4

    invoke-static {v4, p2}, Lcom/budiyev/android/codescanner/Utils;->mapCoordinate(II)I

    move-result v4

    invoke-virtual {v1}, Lcom/budiyev/android/codescanner/Rect;->getTop()I

    move-result v5

    invoke-static {v5, p3}, Lcom/budiyev/android/codescanner/Utils;->mapCoordinate(II)I

    move-result v5

    invoke-virtual {v1}, Lcom/budiyev/android/codescanner/Rect;->getRight()I

    move-result v6

    invoke-static {v6, p2}, Lcom/budiyev/android/codescanner/Utils;->mapCoordinate(II)I

    move-result v6

    invoke-virtual {v1}, Lcom/budiyev/android/codescanner/Rect;->getBottom()I

    move-result v1

    invoke-static {v1, p3}, Lcom/budiyev/android/codescanner/Utils;->mapCoordinate(II)I

    move-result v1

    invoke-direct {v3, v4, v5, v6, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v1, 0x3e8

    invoke-direct {v2, v3, v1}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public static configureFocusModeForTouch(Landroid/hardware/Camera$Parameters;)V
    .locals 5
    .param p0    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v4, 0x4

    new-array v0, v4, [B

    fill-array-data v0, :array_0

    const-string v1, "ff9b09"

    const-wide/32 v2, 0x68f7ce9f

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    new-array v1, v4, [B

    fill-array-data v1, :array_1

    const-string v2, "ba8957"

    const v3, 0x4e8f2afb

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v4, [B

    fill-array-data v0, :array_2

    const-string v1, "fad5dc"

    const-wide/32 v2, 0x228d7aba

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_0

    :array_0
    .array-data 1
        0x7t
        0x13t
        0x4dt
        0xdt
    .end array-data

    :array_1
    .array-data 1
        0x3t
        0x14t
        0x4ct
        0x56t
    .end array-data

    :array_2
    .array-data 1
        0x7t
        0x14t
        0x10t
        0x5at
    .end array-data
.end method

.method public static configureFpsRange(Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .param p0    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/budiyev/android/codescanner/Utils$FpsRangeComparator;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/budiyev/android/codescanner/Utils$FpsRangeComparator;-><init>(Lcom/budiyev/android/codescanner/Utils$1;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v2, 0x0

    aget v2, v0, v2

    const/16 v3, 0x2710

    if-lt v2, v3, :cond_2

    const/4 v3, 0x1

    aget v0, v0, v3

    const/16 v3, 0x7530

    if-gt v0, v3, :cond_2

    invoke-virtual {p0, v2, v0}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_0
.end method

.method public static configureSceneMode(Landroid/hardware/Camera$Parameters;)V
    .locals 6
    .param p0    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v5, 0x1

    const/4 v4, 0x7

    new-array v0, v4, [B

    fill-array-data v0, :array_0

    const-string v1, "10f5d8"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    new-array v1, v4, [B

    fill-array-data v1, :array_1

    const-string v2, "62203b"

    const/16 v3, 0x54dc

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v4, [B

    fill-array-data v0, :array_2

    const-string v1, "e673c2"

    invoke-static {v0, v1, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    :cond_0
    return-void

    :array_0
    .array-data 1
        0x53t
        0x51t
        0x14t
        0x56t
        0xbt
        0x5ct
        0x54t
    .end array-data

    :array_1
    .array-data 1
        0x54t
        0x53t
        0x40t
        0x53t
        0x5ct
        0x6t
        0x53t
    .end array-data

    :array_2
    .array-data 1
        0x7t
        0x57t
        0x45t
        0x50t
        0xct
        0x56t
        0x0t
    .end array-data
.end method

.method public static configureVideoStabilization(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .param p0    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getVideoStabilization()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    :cond_0
    return-void
.end method

.method public static decodeLuminanceSource(Lcom/google/zxing/MultiFormatReader;Lcom/google/zxing/LuminanceSource;)Lcom/google/zxing/Result;
    .locals 3
    .param p0    # Lcom/google/zxing/MultiFormatReader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/zxing/LuminanceSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ReaderException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/google/zxing/BinaryBitmap;

    new-instance v1, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v1, p1}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v0, v1}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    invoke-virtual {p0, v0}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/zxing/MultiFormatReader;->reset()V

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v0, Lcom/google/zxing/BinaryBitmap;

    new-instance v1, Lcom/google/zxing/common/HybridBinarizer;

    invoke-virtual {p1}, Lcom/google/zxing/LuminanceSource;->invert()Lcom/google/zxing/LuminanceSource;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v0, v1}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    invoke-virtual {p0, v0}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/zxing/MultiFormatReader;->reset()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/zxing/MultiFormatReader;->reset()V

    throw v0
.end method

.method public static disableAutoFocus(Landroid/hardware/Camera$Parameters;)V
    .locals 8
    .param p0    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v7, 0x5

    const/4 v6, 0x4

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [B

    fill-array-data v2, :array_0

    const-string v3, "684529"

    const-wide/32 v4, 0xbb5d163

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-array v0, v7, [B

    fill-array-data v0, :array_1

    const-string v2, "476b3f"

    const/16 v3, 0x2742

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-array v0, v7, [B

    fill-array-data v0, :array_2

    const-string v1, "dbecd7"

    const-wide/32 v2, 0x5478d4e4

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-array v2, v6, [B

    fill-array-data v2, :array_3

    const-string v3, "e9b18a"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v6, [B

    fill-array-data v0, :array_4

    const-string v2, "2a771c"

    const-wide/32 v4, 0x6f4a9be3

    invoke-static {v0, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-array v0, v6, [B

    fill-array-data v0, :array_5

    const-string v1, "3e9c11"

    const/16 v2, 0x4884

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x50t
        0x51t
        0x4ct
        0x50t
        0x56t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x52t
        0x5et
        0x4et
        0x7t
        0x57t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x2t
        0xbt
        0x1dt
        0x6t
        0x0t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x4t
        0x4ct
        0x16t
        0x5et
    .end array-data

    :array_4
    .array-data 1
        0x53t
        0x14t
        0x43t
        0x58t
    .end array-data

    :array_5
    .array-data 1
        0x52t
        0x10t
        0x4dt
        0xct
    .end array-data
.end method

.method public static findSuitableImageSize(Landroid/hardware/Camera$Parameters;II)Lcom/budiyev/android/codescanner/Point;
    .locals 8
    .param p0    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/budiyev/android/codescanner/Utils$CameraSizeComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/budiyev/android/codescanner/Utils$CameraSizeComparator;-><init>(Lcom/budiyev/android/codescanner/Utils$1;)V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    int-to-float v0, p1

    int-to-float v1, p2

    div-float v3, v0, v1

    const v0, 0x3e99999a    # 0.3f

    move v1, v0

    :goto_0
    const/high16 v0, 0x40400000    # 3.0f

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    iget v5, v0, Landroid/hardware/Camera$Size;->width:I

    iget v6, v0, Landroid/hardware/Camera$Size;->height:I

    mul-int v0, v5, v6

    const/high16 v7, 0x90000

    if-lt v0, v7, :cond_0

    int-to-float v0, v5

    int-to-float v7, v6

    div-float/2addr v0, v7

    sub-float v0, v3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    new-instance v0, Lcom/budiyev/android/codescanner/Point;

    invoke-direct {v0, v5, v6}, Lcom/budiyev/android/codescanner/Point;-><init>(II)V

    :goto_1
    return-object v0

    :cond_1
    const v0, 0x3dcccccd    # 0.1f

    add-float/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v0, Lcom/budiyev/android/codescanner/Point;

    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v0, v2, v1}, Lcom/budiyev/android/codescanner/Point;-><init>(II)V

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/budiyev/android/codescanner/CodeScannerException;

    const/16 v1, 0x27

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "c32ed4"

    const-wide v4, -0x3e48464c20000000L    # -3.98046176E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/budiyev/android/codescanner/CodeScannerException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x36t
        0x5dt
        0x53t
        0x7t
        0x8t
        0x51t
        0x43t
        0x47t
        0x5dt
        0x45t
        0x7t
        0x5bt
        0xdt
        0x55t
        0x5bt
        0x2t
        0x11t
        0x46t
        0x6t
        0x13t
        0x51t
        0x4t
        0x9t
        0x51t
        0x11t
        0x52t
        0x12t
        0x15t
        0x16t
        0x51t
        0x15t
        0x5at
        0x57t
        0x12t
        0x44t
        0x47t
        0xat
        0x49t
        0x57t
    .end array-data
.end method

.method public static getDisplayOrientation(Landroid/content/Context;Landroid/hardware/Camera$CameraInfo;)I
    .locals 6
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/hardware/Camera$CameraInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/16 v1, 0xb4

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v3, "259858"

    invoke-static {v0, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    if-eqz v0, :cond_4

    if-eq v0, v4, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    rem-int/lit8 v3, v0, 0x5a

    if-nez v3, :cond_0

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    :goto_0
    iget v2, p1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v2, v4, :cond_5

    :goto_1
    iget v2, p1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v1, v2

    sub-int v0, v1, v0

    rem-int/lit16 v0, v0, 0x168

    return v0

    :cond_0
    new-instance v0, Lcom/budiyev/android/codescanner/CodeScannerException;

    const/16 v1, 0x18

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v3, "afcb1a"

    invoke-static {v1, v3, v4, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/budiyev/android/codescanner/CodeScannerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 v0, 0x10e

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const/16 v0, 0x5a

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    const/16 v1, 0x168

    goto :goto_1

    :cond_6
    new-instance v0, Lcom/budiyev/android/codescanner/CodeScannerException;

    const/16 v1, 0x1f

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "2c636d"

    const-wide v4, -0x3e3215b476000000L    # -1.003788052E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/budiyev/android/codescanner/CodeScannerException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x45t
        0x5ct
        0x57t
        0x5ct
        0x5at
        0x4ft
    .end array-data

    nop

    :array_1
    .array-data 1
        0x28t
        0x8t
        0x15t
        0x3t
        0x5dt
        0x8t
        0x5t
        0x46t
        0x7t
        0xbt
        0x42t
        0x11t
        0xdt
        0x7t
        0x1at
        0x42t
        0x43t
        0xet
        0x15t
        0x7t
        0x17t
        0xbt
        0x5et
        0xft
    .end array-data

    :array_2
    .array-data 1
        0x67t
        0xdt
        0x57t
        0x51t
        0x5at
        0x1t
        0x12t
        0x17t
        0x59t
        0x13t
        0x57t
        0x7t
        0x51t
        0x6t
        0x45t
        0x40t
        0x16t
        0x13t
        0x5bt
        0xdt
        0x52t
        0x5ct
        0x41t
        0x44t
        0x5ft
        0x2t
        0x58t
        0x52t
        0x51t
        0x1t
        0x40t
    .end array-data
.end method

.method public static getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public static getImageFrameRect(IILcom/budiyev/android/codescanner/Rect;Lcom/budiyev/android/codescanner/Point;Lcom/budiyev/android/codescanner/Point;)Lcom/budiyev/android/codescanner/Rect;
    .locals 8
    .param p2    # Lcom/budiyev/android/codescanner/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/budiyev/android/codescanner/Point;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/budiyev/android/codescanner/Point;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v7, 0x0

    invoke-virtual {p3}, Lcom/budiyev/android/codescanner/Point;->getX()I

    move-result v0

    invoke-virtual {p3}, Lcom/budiyev/android/codescanner/Point;->getY()I

    move-result v1

    invoke-virtual {p4}, Lcom/budiyev/android/codescanner/Point;->getX()I

    move-result v2

    invoke-virtual {p4}, Lcom/budiyev/android/codescanner/Point;->getY()I

    move-result v3

    sub-int v2, v0, v2

    div-int/lit8 v2, v2, 0x2

    sub-int v3, v1, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v4, p0

    int-to-float v0, v0

    div-float v0, v4, v0

    int-to-float v4, p1

    int-to-float v1, v1

    div-float v1, v4, v1

    new-instance v4, Lcom/budiyev/android/codescanner/Rect;

    invoke-virtual {p2}, Lcom/budiyev/android/codescanner/Rect;->getLeft()I

    move-result v5

    add-int/2addr v5, v2

    int-to-float v5, v5

    mul-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {p2}, Lcom/budiyev/android/codescanner/Rect;->getTop()I

    move-result v6

    add-int/2addr v6, v3

    int-to-float v6, v6

    mul-float/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p2}, Lcom/budiyev/android/codescanner/Rect;->getRight()I

    move-result v7

    add-int/2addr v2, v7

    int-to-float v2, v2

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p2}, Lcom/budiyev/android/codescanner/Rect;->getBottom()I

    move-result v2

    add-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-direct {v4, v5, v6, v0, v1}, Lcom/budiyev/android/codescanner/Rect;-><init>(IIII)V

    return-object v4
.end method

.method public static getPreviewSize(IIII)Lcom/budiyev/android/codescanner/Point;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-ne p0, p2, :cond_0

    if-ne p1, p3, :cond_0

    new-instance v0, Lcom/budiyev/android/codescanner/Point;

    invoke-direct {v0, p2, p3}, Lcom/budiyev/android/codescanner/Point;-><init>(II)V

    :goto_0
    return-object v0

    :cond_0
    mul-int v0, p0, p3

    div-int v1, v0, p1

    if-ge v1, p2, :cond_1

    new-instance v0, Lcom/budiyev/android/codescanner/Point;

    mul-int v1, p1, p2

    div-int/2addr v1, p0

    invoke-direct {v0, p2, v1}, Lcom/budiyev/android/codescanner/Point;-><init>(II)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/budiyev/android/codescanner/Point;

    invoke-direct {v0, v1, p3}, Lcom/budiyev/android/codescanner/Point;-><init>(II)V

    goto :goto_0
.end method

.method public static isPortrait(I)Z
    .locals 1

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_0

    const/16 v0, 0x10e

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static mapCoordinate(II)I
    .locals 1

    mul-int/lit16 v0, p0, 0x7d0

    div-int/2addr v0, p1

    add-int/lit16 v0, v0, -0x3e8

    return v0
.end method

.method public static rotateYuv([BIII)[B
    .locals 14
    .param p0    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p3, :cond_0

    const/16 v1, 0x168

    move/from16 v0, p3

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    rem-int/lit8 v1, p3, 0x5a

    if-nez v1, :cond_d

    if-ltz p3, :cond_d

    const/16 v1, 0x10e

    move/from16 v0, p3

    if-gt v0, v1, :cond_d

    array-length v1, p0

    new-array v4, v1, [B

    mul-int v11, p1, p2

    move/from16 v0, p3

    rem-int/lit16 v1, v0, 0xb4

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    :goto_1
    move/from16 v0, p3

    rem-int/lit16 v2, v0, 0x10e

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    move v10, v2

    :goto_2
    const/16 v2, 0xb4

    move/from16 v0, p3

    if-lt v0, v2, :cond_6

    const/4 v2, 0x1

    :goto_3
    const/4 v7, 0x0

    :goto_4
    move/from16 v0, p2

    if-ge v7, v0, :cond_c

    const/4 v6, 0x0

    :goto_5
    if-ge v6, p1, :cond_b

    shr-int/lit8 v3, v7, 0x1

    mul-int/2addr v3, p1

    add-int/2addr v3, v11

    and-int/lit8 v5, v6, -0x2

    add-int v12, v3, v5

    if-eqz v1, :cond_7

    move/from16 v9, p2

    :goto_6
    if-eqz v1, :cond_8

    move v8, p1

    :goto_7
    if-eqz v1, :cond_9

    move v5, v7

    :goto_8
    if-eqz v1, :cond_a

    move v3, v6

    :goto_9
    if-eqz v10, :cond_2

    sub-int v5, v9, v5

    add-int/lit8 v5, v5, -0x1

    :cond_2
    if-eqz v2, :cond_3

    sub-int v3, v8, v3

    add-int/lit8 v3, v3, -0x1

    :cond_3
    shr-int/lit8 v8, v3, 0x1

    mul-int/2addr v8, v9

    add-int/2addr v8, v11

    and-int/lit8 v13, v5, -0x2

    add-int/2addr v8, v13

    mul-int/2addr v3, v9

    add-int/2addr v3, v5

    mul-int v5, v7, p1

    add-int/2addr v5, v6

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    int-to-byte v5, v5

    aput-byte v5, v4, v3

    aget-byte v3, p0, v12

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v4, v8

    add-int/lit8 v3, v8, 0x1

    add-int/lit8 v5, v12, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    int-to-byte v5, v5

    aput-byte v5, v4, v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    move v10, v2

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    goto :goto_3

    :cond_7
    move v9, p1

    goto :goto_6

    :cond_8
    move/from16 v8, p2

    goto :goto_7

    :cond_9
    move v5, v6

    goto :goto_8

    :cond_a
    move v3, v7

    goto :goto_9

    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_c
    move-object p0, v4

    goto/16 :goto_0

    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const/16 v2, 0x29

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "2af86e"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :array_0
    .array-data 1
        0x7bt
        0xft
        0x10t
        0x59t
        0x5at
        0xct
        0x56t
        0x41t
        0x14t
        0x57t
        0x42t
        0x4t
        0x46t
        0x8t
        0x9t
        0x56t
        0x16t
        0x4dt
        0x44t
        0x0t
        0xat
        0x51t
        0x52t
        0x5ft
        0x12t
        0x51t
        0x4at
        0x18t
        0xft
        0x55t
        0x1et
        0x41t
        0x57t
        0x0t
        0x6t
        0x49t
        0x12t
        0x53t
        0x51t
        0x8t
        0x1ft
    .end array-data
.end method

.method public static setAutoFocusMode(Landroid/hardware/Camera$Parameters;Lcom/budiyev/android/codescanner/AutoFocusMode;)V
    .locals 9
    .param p0    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v8, 0x0

    const/16 v7, 0x12

    const/4 v6, 0x4

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/budiyev/android/codescanner/AutoFocusMode;->CONTINUOUS:Lcom/budiyev/android/codescanner/AutoFocusMode;

    if-ne p1, v1, :cond_2

    new-array v1, v7, [B

    fill-array-data v1, :array_0

    const-string v2, "0c6144"

    const-wide v4, -0x3e20b36c11c00000L    # -2.100449209E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-array v1, v7, [B

    fill-array-data v1, :array_1

    const-string v2, "ae1ecc"

    const v3, 0x4e7895dd

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-array v0, v7, [B

    fill-array-data v0, :array_2

    const-string v1, "2f16e5"

    invoke-static {v0, v1, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-array v1, v6, [B

    fill-array-data v1, :array_3

    const-string v2, "8d57e9"

    invoke-static {v1, v2, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-array v1, v6, [B

    fill-array-data v1, :array_4

    const-string v2, "e2017f"

    const-wide/32 v4, 0x6054bf43

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v6, [B

    fill-array-data v0, :array_5

    const-string v1, "4659bc"

    const-wide/32 v2, -0x4073c07f

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x53t
        0xct
        0x58t
        0x45t
        0x5dt
        0x5at
        0x45t
        0xct
        0x43t
        0x42t
        0x19t
        0x44t
        0x59t
        0x0t
        0x42t
        0x44t
        0x46t
        0x51t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x2t
        0xat
        0x5ft
        0x11t
        0xat
        0xdt
        0x14t
        0xat
        0x44t
        0x16t
        0x4et
        0x13t
        0x8t
        0x6t
        0x45t
        0x10t
        0x11t
        0x6t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x51t
        0x9t
        0x5ft
        0x42t
        0xct
        0x5bt
        0x47t
        0x9t
        0x44t
        0x45t
        0x48t
        0x45t
        0x5bt
        0x5t
        0x45t
        0x43t
        0x17t
        0x50t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x59t
        0x11t
        0x41t
        0x58t
    .end array-data

    :array_4
    .array-data 1
        0x4t
        0x47t
        0x44t
        0x5et
    .end array-data

    :array_5
    .array-data 1
        0x55t
        0x43t
        0x41t
        0x56t
    .end array-data
.end method

.method public static setFlashMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p0    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setZoom(Landroid/hardware/Camera$Parameters;I)V
    .locals 1
    .param p0    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v0

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    :cond_0
    return-void
.end method
