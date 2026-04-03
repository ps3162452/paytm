.class public Lcom/airbnb/lottie/animation/content/EllipseContent;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/airbnb/lottie/animation/content/PathContent;
.implements Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
.implements Lcom/airbnb/lottie/animation/content/KeyPathElementContent;


# static fields
.field private static final ELLIPSE_CONTROL_POINT_PERCENTAGE:F = 0.55228f


# instance fields
.field private final circleShape:Lcom/airbnb/lottie/model/content/CircleShape;

.field private isPathValid:Z

.field private final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field private final name:Ljava/lang/String;

.field private final path:Landroid/graphics/Path;

.field private final positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final sizeAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/CircleShape;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    new-instance v0, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    invoke-direct {v0}, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/CircleShape;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->name:Ljava/lang/String;

    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/CircleShape;->getSize()Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->sizeAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/CircleShape;->getPosition()Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    move-result-object v0

    invoke-interface {v0}, Lcom/airbnb/lottie/model/animatable/AnimatableValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    iput-object p3, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->circleShape:Lcom/airbnb/lottie/model/content/CircleShape;

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->sizeAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->sizeAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    return-void
.end method

.method private invalidate()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->isPathValid:Z

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public addValueCallback(Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V
    .locals 1
    .param p2    # Lcom/airbnb/lottie/value/LottieValueCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/airbnb/lottie/value/LottieValueCallback",
            "<TT;>;)V"
        }
    .end annotation

    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->ELLIPSE_SIZE:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->sizeAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POSITION:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 13

    const/4 v12, 0x1

    const/high16 v3, 0x40000000    # 2.0f

    const v2, 0x3f0d6239    # 0.55228f

    const/4 v6, 0x0

    iget-boolean v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->isPathValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->circleShape:Lcom/airbnb/lottie/model/content/CircleShape;

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/content/CircleShape;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v12, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->isPathValid:Z

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->sizeAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    div-float v8, v1, v3

    iget v0, v0, Landroid/graphics/PointF;->y:F

    div-float v9, v0, v3

    mul-float v10, v8, v2

    mul-float v11, v9, v2

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->circleShape:Lcom/airbnb/lottie/model/content/CircleShape;

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/content/CircleShape;->isReversed()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    neg-float v1, v9

    invoke-virtual {v0, v6, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    sub-float v1, v6, v10

    neg-float v2, v9

    neg-float v3, v8

    sub-float v4, v6, v11

    neg-float v5, v8

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    neg-float v2, v8

    add-float v3, v6, v11

    sub-float v4, v6, v10

    move v5, v9

    move v7, v9

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    add-float v1, v6, v10

    add-float v4, v6, v11

    move v2, v9

    move v3, v8

    move v5, v8

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    sub-float v3, v6, v11

    add-float v4, v6, v10

    neg-float v5, v9

    neg-float v7, v9

    move v2, v8

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :goto_1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->offset(FF)V

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;->apply(Landroid/graphics/Path;)V

    iput-boolean v12, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->isPathValid:Z

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    neg-float v1, v9

    invoke-virtual {v0, v6, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    add-float v1, v6, v10

    neg-float v2, v9

    sub-float v4, v6, v11

    move v3, v8

    move v5, v8

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    add-float v3, v6, v11

    add-float v4, v6, v10

    move v2, v8

    move v5, v9

    move v7, v9

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    sub-float v1, v6, v10

    neg-float v3, v8

    add-float v4, v6, v11

    neg-float v5, v8

    move v2, v9

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->path:Landroid/graphics/Path;

    neg-float v2, v8

    sub-float v3, v6, v11

    sub-float v4, v6, v10

    neg-float v5, v9

    neg-float v7, v9

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_1
.end method

.method public onValueChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/airbnb/lottie/animation/content/EllipseContent;->invalidate()V

    return-void
.end method

.method public resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/model/KeyPath;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/KeyPath;",
            ">;",
            "Lcom/airbnb/lottie/model/KeyPath;",
            ")V"
        }
    .end annotation

    invoke-static {p1, p2, p3, p4, p0}, Lcom/airbnb/lottie/utils/MiscUtils;->resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;Lcom/airbnb/lottie/animation/content/KeyPathElementContent;)V

    return-void
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/animation/content/Content;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/animation/content/Content;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/animation/content/Content;

    instance-of v0, v1, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->getType()Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    move-result-object v0

    sget-object v3, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->SIMULTANEOUSLY:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    if-ne v0, v3, :cond_0

    check-cast v1, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/EllipseContent;->trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;->addTrimPath(Lcom/airbnb/lottie/animation/content/TrimPathContent;)V

    invoke-virtual {v1, p0}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->addListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    return-void
.end method
