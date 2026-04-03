.class public Lcom/airbnb/lottie/value/LottieRelativeIntegerValueCallback;
.super Lcom/airbnb/lottie/value/LottieValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/value/LottieValueCallback",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/airbnb/lottie/value/LottieValueCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public getOffset(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/value/LottieFrameInfo",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/airbnb/lottie/value/LottieRelativeIntegerValueCallback;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x59

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "9dc9be"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/value/LottieRelativeIntegerValueCallback;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    return-object v0

    nop

    :array_0
    .array-data 1
        0x60t
        0xbt
        0x16t
        0x19t
        0xft
        0x10t
        0x4at
        0x10t
        0x43t
        0x49t
        0x10t
        0xat
        0x4ft
        0xdt
        0x7t
        0x5ct
        0x42t
        0x4t
        0x19t
        0x17t
        0x17t
        0x58t
        0x16t
        0xct
        0x5at
        0x44t
        0x15t
        0x58t
        0xet
        0x10t
        0x5ct
        0x44t
        0xat
        0x57t
        0x42t
        0x11t
        0x51t
        0x1t
        0x43t
        0x5at
        0xdt
        0xbt
        0x4at
        0x10t
        0x11t
        0x4ct
        0x1t
        0x11t
        0x56t
        0x16t
        0x43t
        0x15t
        0x42t
        0x6t
        0x58t
        0x8t
        0xft
        0x19t
        0x11t
        0x0t
        0x4dt
        0x32t
        0x2t
        0x55t
        0x17t
        0x0t
        0x15t
        0x44t
        0xct
        0x4bt
        0x42t
        0xat
        0x4ft
        0x1t
        0x11t
        0x4bt
        0xbt
        0x1t
        0x5ct
        0x44t
        0x4t
        0x5ct
        0x16t
        0x33t
        0x58t
        0x8t
        0x16t
        0x5ct
        0x4ct
    .end array-data
.end method

.method public getValue(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/value/LottieFrameInfo",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/airbnb/lottie/value/LottieFrameInfo;->getStartValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/airbnb/lottie/value/LottieFrameInfo;->getEndValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/airbnb/lottie/value/LottieFrameInfo;->getInterpolatedKeyframeProgress()F

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(IIF)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/value/LottieRelativeIntegerValueCallback;->getOffset(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/value/LottieRelativeIntegerValueCallback;->getValue(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
