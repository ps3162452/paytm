.class public Lcom/airbnb/lottie/value/ScaleXY;
.super Ljava/lang/Object;


# instance fields
.field private scaleX:F

.field private scaleY:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v0}, Lcom/airbnb/lottie/value/ScaleXY;-><init>(FF)V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/airbnb/lottie/value/ScaleXY;->scaleX:F

    iput p2, p0, Lcom/airbnb/lottie/value/ScaleXY;->scaleY:F

    return-void
.end method


# virtual methods
.method public equals(FF)Z
    .locals 1

    iget v0, p0, Lcom/airbnb/lottie/value/ScaleXY;->scaleX:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/airbnb/lottie/value/ScaleXY;->scaleY:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScaleX()F
    .locals 1

    iget v0, p0, Lcom/airbnb/lottie/value/ScaleXY;->scaleX:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    iget v0, p0, Lcom/airbnb/lottie/value/ScaleXY;->scaleY:F

    return v0
.end method

.method public set(FF)V
    .locals 0

    iput p1, p0, Lcom/airbnb/lottie/value/ScaleXY;->scaleX:F

    iput p2, p0, Lcom/airbnb/lottie/value/ScaleXY;->scaleY:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/airbnb/lottie/value/ScaleXY;->getScaleX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v4, [B

    const/4 v2, 0x0

    const/16 v3, 0x4a

    aput-byte v3, v1, v2

    const-string v2, "23d9f1"

    invoke-static {v1, v2, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/airbnb/lottie/value/ScaleXY;->getScaleY()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
