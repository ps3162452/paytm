.class public Lcom/airbnb/lottie/value/LottieRelativeFloatValueCallback;
.super Lcom/airbnb/lottie/value/LottieValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/value/LottieValueCallback",
        "<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/airbnb/lottie/value/LottieValueCallback;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Float;)V
    .locals 0
    .param p1    # Ljava/lang/Float;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/value/LottieValueCallback;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getOffset(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Float;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/value/LottieFrameInfo",
            "<",
            "Ljava/lang/Float;",
            ">;)",
            "Ljava/lang/Float;"
        }
    .end annotation

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/airbnb/lottie/value/LottieRelativeFloatValueCallback;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x59

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "1c5813"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/value/LottieRelativeFloatValueCallback;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    return-object v0

    nop

    :array_0
    .array-data 1
        0x68t
        0xct
        0x40t
        0x18t
        0x5ct
        0x46t
        0x42t
        0x17t
        0x15t
        0x48t
        0x43t
        0x5ct
        0x47t
        0xat
        0x51t
        0x5dt
        0x11t
        0x52t
        0x11t
        0x10t
        0x41t
        0x59t
        0x45t
        0x5at
        0x52t
        0x43t
        0x43t
        0x59t
        0x5dt
        0x46t
        0x54t
        0x43t
        0x5ct
        0x56t
        0x11t
        0x47t
        0x59t
        0x6t
        0x15t
        0x5bt
        0x5et
        0x5dt
        0x42t
        0x17t
        0x47t
        0x4dt
        0x52t
        0x47t
        0x5et
        0x11t
        0x15t
        0x14t
        0x11t
        0x50t
        0x50t
        0xft
        0x59t
        0x18t
        0x42t
        0x56t
        0x45t
        0x35t
        0x54t
        0x54t
        0x44t
        0x56t
        0x1dt
        0x43t
        0x5at
        0x4at
        0x11t
        0x5ct
        0x47t
        0x6t
        0x47t
        0x4at
        0x58t
        0x57t
        0x54t
        0x43t
        0x52t
        0x5dt
        0x45t
        0x65t
        0x50t
        0xft
        0x40t
        0x5dt
        0x1ft
    .end array-data
.end method

.method public getValue(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Float;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/value/LottieFrameInfo",
            "<",
            "Ljava/lang/Float;",
            ">;)",
            "Ljava/lang/Float;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/airbnb/lottie/value/LottieFrameInfo;->getStartValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1}, Lcom/airbnb/lottie/value/LottieFrameInfo;->getEndValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1}, Lcom/airbnb/lottie/value/LottieFrameInfo;->getInterpolatedKeyframeProgress()F

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v0

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/value/LottieRelativeFloatValueCallback;->getOffset(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/value/LottieRelativeFloatValueCallback;->getValue(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
