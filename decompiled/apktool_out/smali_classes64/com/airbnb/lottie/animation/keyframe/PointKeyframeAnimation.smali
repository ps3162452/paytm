.class public Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;
.super Lcom/airbnb/lottie/animation/keyframe/KeyframeAnimation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/animation/keyframe/KeyframeAnimation",
        "<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private final point:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/value/Keyframe",
            "<",
            "Landroid/graphics/PointF;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/KeyframeAnimation;-><init>(Ljava/util/List;)V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;->point:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public getValue(Lcom/airbnb/lottie/value/Keyframe;F)Landroid/graphics/PointF;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/value/Keyframe",
            "<",
            "Landroid/graphics/PointF;",
            ">;F)",
            "Landroid/graphics/PointF;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p2, p2}, Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;->getValue(Lcom/airbnb/lottie/value/Keyframe;FFF)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method protected getValue(Lcom/airbnb/lottie/value/Keyframe;FFF)Landroid/graphics/PointF;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/value/Keyframe",
            "<",
            "Landroid/graphics/PointF;",
            ">;FFF)",
            "Landroid/graphics/PointF;"
        }
    .end annotation

    iget-object v0, p1, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x1c

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "69d778"

    const v3, 0x4e07265d    # 5.668596E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v3, p1, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/PointF;

    iget-object v4, p1, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;->valueCallback:Lcom/airbnb/lottie/value/LottieValueCallback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;->valueCallback:Lcom/airbnb/lottie/value/LottieValueCallback;

    iget v1, p1, Lcom/airbnb/lottie/value/Keyframe;->startFrame:F

    iget-object v2, p1, Lcom/airbnb/lottie/value/Keyframe;->endFrame:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p0}, Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;->getLinearCurrentKeyframeProgress()F

    move-result v6

    invoke-virtual {p0}, Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;->getProgress()F

    move-result v7

    move v5, p2

    invoke-virtual/range {v0 .. v7}, Lcom/airbnb/lottie/value/LottieValueCallback;->getValueInternal(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    if-eqz v0, :cond_2

    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;->point:Landroid/graphics/PointF;

    iget v1, v3, Landroid/graphics/PointF;->x:F

    iget v2, v4, Landroid/graphics/PointF;->x:F

    iget v5, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v5

    mul-float/2addr v2, p3

    add-float/2addr v1, v2

    iget v2, v3, Landroid/graphics/PointF;->y:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float v3, v4, v3

    mul-float/2addr v3, p4

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;->point:Landroid/graphics/PointF;

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x7bt
        0x50t
        0x17t
        0x44t
        0x5et
        0x56t
        0x51t
        0x19t
        0x12t
        0x56t
        0x5bt
        0x4dt
        0x53t
        0x4at
        0x44t
        0x51t
        0x58t
        0x4at
        0x16t
        0x52t
        0x1t
        0x4et
        0x51t
        0x4at
        0x57t
        0x54t
        0x1t
        0x19t
    .end array-data
.end method

.method public bridge synthetic getValue(Lcom/airbnb/lottie/value/Keyframe;F)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;->getValue(Lcom/airbnb/lottie/value/Keyframe;F)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getValue(Lcom/airbnb/lottie/value/Keyframe;FFF)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;->getValue(Lcom/airbnb/lottie/value/Keyframe;FFF)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method
