.class public Lcom/airbnb/lottie/value/LottieRelativePointValueCallback;
.super Lcom/airbnb/lottie/value/LottieValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/value/LottieValueCallback",
        "<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private final point:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/airbnb/lottie/value/LottieValueCallback;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/value/LottieRelativePointValueCallback;->point:Landroid/graphics/PointF;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/PointF;)V
    .locals 1
    .param p1    # Landroid/graphics/PointF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/value/LottieValueCallback;-><init>(Ljava/lang/Object;)V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/value/LottieRelativePointValueCallback;->point:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public getOffset(Lcom/airbnb/lottie/value/LottieFrameInfo;)Landroid/graphics/PointF;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/value/LottieFrameInfo",
            "<",
            "Landroid/graphics/PointF;",
            ">;)",
            "Landroid/graphics/PointF;"
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/value/LottieRelativePointValueCallback;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x59

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "ca4209"

    const-wide v4, -0x3e219f44bc400000L    # -2.038623503E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/value/LottieRelativePointValueCallback;->value:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/PointF;

    return-object v0

    nop

    :array_0
    .array-data 1
        0x3at
        0xet
        0x41t
        0x12t
        0x5dt
        0x4ct
        0x10t
        0x15t
        0x14t
        0x42t
        0x42t
        0x56t
        0x15t
        0x8t
        0x50t
        0x57t
        0x10t
        0x58t
        0x43t
        0x12t
        0x40t
        0x53t
        0x44t
        0x50t
        0x0t
        0x41t
        0x42t
        0x53t
        0x5ct
        0x4ct
        0x6t
        0x41t
        0x5dt
        0x5ct
        0x10t
        0x4dt
        0xbt
        0x4t
        0x14t
        0x51t
        0x5ft
        0x57t
        0x10t
        0x15t
        0x46t
        0x47t
        0x53t
        0x4dt
        0xct
        0x13t
        0x14t
        0x1et
        0x10t
        0x5at
        0x2t
        0xdt
        0x58t
        0x12t
        0x43t
        0x5ct
        0x17t
        0x37t
        0x55t
        0x5et
        0x45t
        0x5ct
        0x4ft
        0x41t
        0x5bt
        0x40t
        0x10t
        0x56t
        0x15t
        0x4t
        0x46t
        0x40t
        0x59t
        0x5dt
        0x6t
        0x41t
        0x53t
        0x57t
        0x44t
        0x6ft
        0x2t
        0xdt
        0x41t
        0x57t
        0x1et
    .end array-data
.end method

.method public final getValue(Lcom/airbnb/lottie/value/LottieFrameInfo;)Landroid/graphics/PointF;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/value/LottieFrameInfo",
            "<",
            "Landroid/graphics/PointF;",
            ">;)",
            "Landroid/graphics/PointF;"
        }
    .end annotation

    iget-object v1, p0, Lcom/airbnb/lottie/value/LottieRelativePointValueCallback;->point:Landroid/graphics/PointF;

    invoke-virtual {p1}, Lcom/airbnb/lottie/value/LottieFrameInfo;->getStartValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Lcom/airbnb/lottie/value/LottieFrameInfo;->getEndValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Lcom/airbnb/lottie/value/LottieFrameInfo;->getInterpolatedKeyframeProgress()F

    move-result v3

    invoke-static {v2, v0, v3}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v2

    invoke-virtual {p1}, Lcom/airbnb/lottie/value/LottieFrameInfo;->getStartValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v3, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Lcom/airbnb/lottie/value/LottieFrameInfo;->getEndValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Lcom/airbnb/lottie/value/LottieFrameInfo;->getInterpolatedKeyframeProgress()F

    move-result v4

    invoke-static {v3, v0, v4}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/value/LottieRelativePointValueCallback;->getOffset(Lcom/airbnb/lottie/value/LottieFrameInfo;)Landroid/graphics/PointF;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/lottie/value/LottieRelativePointValueCallback;->point:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v0}, Landroid/graphics/PointF;->offset(FF)V

    iget-object v0, p0, Lcom/airbnb/lottie/value/LottieRelativePointValueCallback;->point:Landroid/graphics/PointF;

    return-object v0
.end method

.method public bridge synthetic getValue(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/value/LottieRelativePointValueCallback;->getValue(Lcom/airbnb/lottie/value/LottieFrameInfo;)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method
