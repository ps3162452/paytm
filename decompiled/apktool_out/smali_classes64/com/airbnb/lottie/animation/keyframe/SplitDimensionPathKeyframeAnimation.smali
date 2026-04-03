.class public Lcom/airbnb/lottie/animation/keyframe/SplitDimensionPathKeyframeAnimation;
.super Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
        "<",
        "Landroid/graphics/PointF;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private final point:Landroid/graphics/PointF;

.field private final pointWithCallbackValues:Landroid/graphics/PointF;

.field private final xAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field protected xValueCallback:Lcom/airbnb/lottie/value/LottieValueCallback;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/value/LottieValueCallback",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final yAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field protected yValueCallback:Lcom/airbnb/lottie/value/LottieValueCallback;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/value/LottieValueCallback",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;-><init>(Ljava/util/List;)V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/SplitDimensionPathKeyframeAnimation;->point:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/SplitDimensionPathKeyframeAnimation;->pointWithCallbackValues:Landroid/graphics/PointF;

    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/SplitDimensionPathKeyframeAnimation;->xAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    iput-object p2, p0, Lcom/airbnb/lottie/animation/keyframe/SplitDimensionPathKeyframeAnimation;->yAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p0}, Lcom/airbnb/lottie/animation/keyframe/SplitDimensionPathKeyframeAnimation;->getProgress()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/animation/keyframe/SplitDimensionPathKeyframeAnimation;->setProgress(F)V

    return-void
.end method


# virtual methods
.method public getValue()Landroid/graphics/PointF;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/lottie/animation/keyframe/SplitDimensionPathKeyframeAnimation;->getValue(Lcom/airbnb/lottie/value/Keyframe;F)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method getValue(Lcom/airbnb/lottie/value/Keyframe;F)Landroid/graphics/PointF;
    .locals 11
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

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/SplitDimensionPathKeyframeAnimation;->xValueCallback:Lcom/airbnb/lottie/value/LottieValueCallback;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/SplitDimensionPathKeyframeAnimation;->xAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getCurrentKeyframe()Lcom/airbnb/lottie/value/Keyframe;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/SplitDimensionPathKeyframeAnimation;->xAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getInterpolatedCurrentKeyframeProgress()F

    move-result v7

    iget-object v2, v4, Lcom/airbnb/lottie/value/Keyframe;->endFrame:Ljava/lang/Float;

    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/SplitDimensionPathKeyframeAnimation;->xValueCallback:Lcom/airbnb/lottie/value/LottieValueCallback;

    iget v1, v4, Lcom/airbnb/lottie/value/Keyframe;->startFrame:F

    if-nez v2, :cond_1

    iget v2, v4, Lcom/airbnb/lottie/value/Keyframe;->startFrame:F

    :goto_0
    iget-object v3, v4, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    iget-object v4, v4, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    move v5, p2

    move v6, p2

    invoke-virtual/range {v0 .. v7}, Lcom/airbnb/lottie/value/LottieValueCallback;->getValueInternal(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    move-object v8, v0

    :goto_1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/SplitDimensionPathKeyframeAnimation;->yValueCallback:Lcom/airbnb/lottie/value/LottieValueCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/SplitDimensionPathKeyframeAnimation;->yAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getCurrentKeyframe()Lcom/airbnb/lottie/value/Keyframe;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/SplitDimensionPathKeyframeAnimation;->yAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getInterpolatedCurrentKeyframeProgress()F

    move-result v7

    iget-object v2, v4, Lcom/airbnb/lottie/value/Keyframe;->endFrame:Ljava/lang/Float;

    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/SplitDimensionPathKeyframeAnimation;->yValueCallback:Lcom/airbnb/lottie/value/LottieValueCallback;

    iget v1, v4, Lcom/airbnb/lottie/value/Keyframe;->startFrame:F

    if-nez v2, :cond_2

    iget v2, v4, Lcom/airbnb/lottie/value/Keyframe;->startFrame:F

    :goto_2
    iget-object v3, v4, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    iget-object v4, v4, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    move v5, p2

    move v6, p2

    invoke-virtual/range {v0 .. v7}, Lcom/airbnb/lottie/value/LottieValueCallback;->getValueInternal(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    move-object v9, v0

    :cond_0
    if-nez v8, :cond_3

    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/SplitDimensionPathKeyframeAnimation;->pointWithCallbackValues:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/airbnb/lottie/animation/keyframe/SplitDimensionPathKeyframeAnimation;->point:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0, v1, v10}, Landroid/graphics/PointF;->set(FF)V

    :goto_3
    if-nez v9, :cond_4

    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/SplitDimensionPathKeyframeAnimation;->pointWithCallbackValues:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/airbnb/lottie/animation/keyframe/SplitDimensionPathKeyframeAnimation;->pointWithCallbackValues:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/airbnb/lottie/animation/keyframe/SplitDimensionPathKeyframeAnimation;->point:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    :goto_4
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/SplitDimensionPathKeyframeAnimation;->pointWithCallbackValues:Landroid/graphics/PointF;

    return-object v0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/SplitDimensionPathKeyframeAnimation;->pointWithCallbackValues:Landroid/graphics/PointF;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1, v10}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/SplitDimensionPathKeyframeAnimation;->pointWithCallbackValues:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/airbnb/lottie/animation/keyframe/SplitDimensionPathKeyframeAnimation;->pointWithCallbackValues:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_4

    :cond_5
    move-object v8, v9

    goto :goto_1
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/airbnb/lottie/animation/keyframe/SplitDimensionPathKeyframeAnimation;->getValue()Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic getValue(Lcom/airbnb/lottie/value/Keyframe;F)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/animation/keyframe/SplitDimensionPathKeyframeAnimation;->getValue(Lcom/airbnb/lottie/value/Keyframe;F)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public setProgress(F)V
    .locals 3

    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/SplitDimensionPathKeyframeAnimation;->xAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/SplitDimensionPathKeyframeAnimation;->yAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    iget-object v1, p0, Lcom/airbnb/lottie/animation/keyframe/SplitDimensionPathKeyframeAnimation;->point:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/SplitDimensionPathKeyframeAnimation;->xAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/SplitDimensionPathKeyframeAnimation;->yAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/PointF;->set(FF)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/SplitDimensionPathKeyframeAnimation;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/SplitDimensionPathKeyframeAnimation;->listeners:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;

    invoke-interface {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;->onValueChanged()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setXValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V
    .locals 2
    .param p1    # Lcom/airbnb/lottie/value/LottieValueCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/value/LottieValueCallback",
            "<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/SplitDimensionPathKeyframeAnimation;->xValueCallback:Lcom/airbnb/lottie/value/LottieValueCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/SplitDimensionPathKeyframeAnimation;->xValueCallback:Lcom/airbnb/lottie/value/LottieValueCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/value/LottieValueCallback;->setAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_0
    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/SplitDimensionPathKeyframeAnimation;->xValueCallback:Lcom/airbnb/lottie/value/LottieValueCallback;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/value/LottieValueCallback;->setAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_1
    return-void
.end method

.method public setYValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V
    .locals 2
    .param p1    # Lcom/airbnb/lottie/value/LottieValueCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/value/LottieValueCallback",
            "<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/SplitDimensionPathKeyframeAnimation;->yValueCallback:Lcom/airbnb/lottie/value/LottieValueCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/SplitDimensionPathKeyframeAnimation;->yValueCallback:Lcom/airbnb/lottie/value/LottieValueCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/value/LottieValueCallback;->setAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_0
    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/SplitDimensionPathKeyframeAnimation;->yValueCallback:Lcom/airbnb/lottie/value/LottieValueCallback;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/value/LottieValueCallback;->setAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_1
    return-void
.end method
