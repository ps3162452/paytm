.class public abstract Lcom/airbnb/lottie/animation/content/BaseStrokeContent;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
.implements Lcom/airbnb/lottie/animation/content/KeyPathElementContent;
.implements Lcom/airbnb/lottie/animation/content/DrawingContent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;
    }
.end annotation


# instance fields
.field private colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<",
            "Landroid/graphics/ColorFilter;",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final dashPatternAnimations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<*",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private final dashPatternOffsetAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final dashPatternValues:[F

.field protected final layer:Lcom/airbnb/lottie/model/layer/BaseLayer;

.field private final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field private final opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<*",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final paint:Landroid/graphics/Paint;

.field private final path:Landroid/graphics/Path;

.field private final pathGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final pm:Landroid/graphics/PathMeasure;

.field private final rect:Landroid/graphics/RectF;

.field private final trimPathPath:Landroid/graphics/Path;

.field private final widthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/LottieDrawable;",
            "Lcom/airbnb/lottie/model/layer/BaseLayer;",
            "Landroid/graphics/Paint$Cap;",
            "Landroid/graphics/Paint$Join;",
            "F",
            "Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;",
            ">;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pathGroups:Ljava/util/List;

    new-instance v0, Lcom/airbnb/lottie/animation/LPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/animation/LPaint;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    iput-object p2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->layer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    invoke-virtual {p6}, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p7}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->widthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-nez p9, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternValues:[F

    move v1, v2

    :goto_1
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {p8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_0
    invoke-virtual {p9}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->widthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    move v1, v2

    :goto_2
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_3
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->widthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    :goto_3
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    :cond_5
    return-void
.end method

.method private applyDashPatternIfNeeded(Landroid/graphics/Matrix;)V
    .locals 7

    const/4 v0, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const v5, 0x3dcccccd    # 0.1f

    const/16 v4, 0x1e

    new-array v1, v4, [B

    fill-array-data v1, :array_0

    const-string v2, "32a27f"

    const/16 v3, 0x4173

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-array v1, v4, [B

    fill-array-data v1, :array_1

    const-string v2, "caf084"

    invoke-static {v1, v2, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/airbnb/lottie/utils/Utils;->getScale(Landroid/graphics/Matrix;)F

    move-result v2

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternValues:[F

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v3, v1

    rem-int/lit8 v0, v1, 0x2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternValues:[F

    aget v0, v0, v1

    cmpg-float v0, v0, v6

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternValues:[F

    aput v6, v0, v1

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternValues:[F

    aget v3, v0, v1

    mul-float/2addr v3, v2

    aput v3, v0, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternValues:[F

    aget v0, v0, v1

    cmpg-float v0, v0, v5

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternValues:[F

    aput v5, v0, v1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-nez v0, :cond_4

    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/DashPathEffect;

    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternValues:[F

    invoke-direct {v2, v3, v0}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    new-array v0, v4, [B

    fill-array-data v0, :array_2

    const-string v1, "3749da"

    const-wide/32 v2, 0x72c26c1d

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, v2

    goto :goto_3

    nop

    :array_0
    .array-data 1
        0x60t
        0x46t
        0x13t
        0x5dt
        0x5ct
        0x3t
        0x70t
        0x5dt
        0xft
        0x46t
        0x52t
        0x8t
        0x47t
        0x11t
        0x0t
        0x42t
        0x47t
        0xat
        0x4at
        0x76t
        0x0t
        0x41t
        0x5ft
        0x36t
        0x52t
        0x46t
        0x15t
        0x57t
        0x45t
        0x8t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x30t
        0x15t
        0x14t
        0x5ft
        0x53t
        0x51t
        0x20t
        0xet
        0x8t
        0x44t
        0x5dt
        0x5at
        0x17t
        0x42t
        0x7t
        0x40t
        0x48t
        0x58t
        0x1at
        0x25t
        0x7t
        0x43t
        0x50t
        0x64t
        0x2t
        0x15t
        0x12t
        0x55t
        0x4at
        0x5at
    .end array-data

    nop

    :array_2
    .array-data 1
        0x60t
        0x43t
        0x46t
        0x56t
        0xft
        0x4t
        0x70t
        0x58t
        0x5at
        0x4dt
        0x1t
        0xft
        0x47t
        0x14t
        0x55t
        0x49t
        0x14t
        0xdt
        0x4at
        0x73t
        0x55t
        0x4at
        0xct
        0x31t
        0x52t
        0x43t
        0x40t
        0x5ct
        0x16t
        0xft
    .end array-data
.end method

.method private applyTrimPath(Landroid/graphics/Canvas;Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;Landroid/graphics/Matrix;)V
    .locals 10

    const/16 v0, 0x1b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "845d6d"

    const-wide v2, -0x3e7e903f70000000L    # -3.6567058E7

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$200(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Lcom/airbnb/lottie/animation/content/TrimPathContent;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x1b

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "d8cfc6"

    const-wide v2, 0x41de411b29c00000L    # 2.030333095E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    invoke-static {p2}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    invoke-static {p2}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/animation/content/PathContent;

    invoke-interface {v0}, Lcom/airbnb/lottie/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v2, v0, p3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    add-float/2addr v0, v1

    move v1, v0

    goto :goto_2

    :cond_2
    invoke-static {p2}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$200(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Lcom/airbnb/lottie/animation/content/TrimPathContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->getOffset()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, v1

    const/high16 v2, 0x43b40000    # 360.0f

    div-float v2, v0, v2

    invoke-static {p2}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$200(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Lcom/airbnb/lottie/animation/content/TrimPathContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->getStart()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, v1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v0, v3

    add-float v5, v0, v2

    invoke-static {p2}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$200(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Lcom/airbnb/lottie/animation/content/TrimPathContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->getEnd()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, v1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v0, v3

    add-float v6, v0, v2

    const/4 v0, 0x0

    invoke-static {p2}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v3, v0

    move v4, v2

    :goto_3
    if-ltz v4, :cond_9

    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    invoke-static {p2}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/animation/content/PathContent;

    invoke-interface {v0}, Lcom/airbnb/lottie/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    invoke-virtual {v0, p3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    const/4 v7, 0x0

    invoke-virtual {v0, v2, v7}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v7

    cmpl-float v0, v6, v1

    if-lez v0, :cond_5

    sub-float v0, v6, v1

    add-float v2, v3, v7

    cmpg-float v0, v0, v2

    if-gez v0, :cond_5

    sub-float v0, v6, v1

    cmpg-float v0, v3, v0

    if-gez v0, :cond_5

    cmpl-float v0, v5, v1

    if-lez v0, :cond_4

    sub-float v0, v5, v1

    div-float/2addr v0, v7

    :goto_4
    sub-float v2, v6, v1

    div-float/2addr v2, v7

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v2, v8}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget-object v8, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    const/4 v9, 0x0

    invoke-static {v8, v0, v2, v9}, Lcom/airbnb/lottie/utils/Utils;->applyTrimPathIfNeeded(Landroid/graphics/Path;FFF)V

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_3
    :goto_5
    add-float v0, v3, v7

    add-int/lit8 v2, v4, -0x1

    move v3, v0

    move v4, v2

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    goto :goto_4

    :cond_5
    add-float v0, v3, v7

    cmpg-float v0, v0, v5

    if-ltz v0, :cond_3

    cmpl-float v0, v3, v6

    if-gtz v0, :cond_3

    add-float v0, v3, v7

    cmpg-float v0, v0, v6

    if-gtz v0, :cond_6

    cmpg-float v0, v5, v3

    if-gez v0, :cond_6

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_5

    :cond_6
    cmpg-float v0, v5, v3

    if-gez v0, :cond_7

    const/4 v0, 0x0

    move v2, v0

    :goto_6
    add-float v0, v3, v7

    cmpl-float v0, v6, v0

    if-lez v0, :cond_8

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_7
    iget-object v8, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    const/4 v9, 0x0

    invoke-static {v8, v2, v0, v9}, Lcom/airbnb/lottie/utils/Utils;->applyTrimPathIfNeeded(Landroid/graphics/Path;FFF)V

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_5

    :cond_7
    sub-float v0, v5, v3

    div-float/2addr v0, v7

    move v2, v0

    goto :goto_6

    :cond_8
    sub-float v0, v6, v3

    div-float/2addr v0, v7

    goto :goto_7

    :cond_9
    const/16 v0, 0x1b

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "7ed188"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    goto/16 :goto_0

    :array_0
    .array-data 1
        0x6bt
        0x40t
        0x47t
        0xbt
        0x5dt
        0x1t
        0x7bt
        0x5bt
        0x5bt
        0x10t
        0x53t
        0xat
        0x4ct
        0x17t
        0x54t
        0x14t
        0x46t
        0x8t
        0x41t
        0x60t
        0x47t
        0xdt
        0x5bt
        0x34t
        0x59t
        0x40t
        0x5dt
    .end array-data

    :array_1
    .array-data 1
        0x37t
        0x4ct
        0x11t
        0x9t
        0x8t
        0x53t
        0x27t
        0x57t
        0xdt
        0x12t
        0x6t
        0x58t
        0x10t
        0x1bt
        0x2t
        0x16t
        0x13t
        0x5at
        0x1dt
        0x6ct
        0x11t
        0xft
        0xet
        0x66t
        0x5t
        0x4ct
        0xbt
    .end array-data

    :array_2
    .array-data 1
        0x64t
        0x11t
        0x16t
        0x5et
        0x53t
        0x5dt
        0x74t
        0xat
        0xat
        0x45t
        0x5dt
        0x56t
        0x43t
        0x46t
        0x5t
        0x41t
        0x48t
        0x54t
        0x4et
        0x31t
        0x16t
        0x58t
        0x55t
        0x68t
        0x56t
        0x11t
        0xct
    .end array-data
.end method


# virtual methods
.method public addValueCallback(Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V
    .locals 2
    .param p2    # Lcom/airbnb/lottie/value/LottieValueCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/airbnb/lottie/value/LottieValueCallback",
            "<TT;>;)V"
        }
    .end annotation

    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->OPACITY:Ljava/lang/Integer;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->STROKE_WIDTH:Ljava/lang/Float;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->widthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->layer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->removeAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_3
    if-nez p2, :cond_4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-direct {v0, p2}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->layer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 9

    const/16 v8, 0x16

    const/4 v7, 0x1

    const/high16 v2, 0x437f0000    # 255.0f

    const/16 v6, 0x12

    const/4 v3, 0x0

    new-array v0, v6, [B

    fill-array-data v0, :array_0

    const-string v1, "fc1ed7"

    const-wide/32 v4, -0x7b0eea64

    invoke-static {v0, v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/airbnb/lottie/utils/Utils;->hasZeroScaleAxis(Landroid/graphics/Matrix;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v6, [B

    fill-array-data v0, :array_1

    const-string v1, "477dc4"

    invoke-static {v0, v1, v7, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    :goto_0
    return-void

    :cond_0
    int-to-float v0, p3

    div-float v1, v0, v2

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/IntegerKeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/IntegerKeyframeAnimation;->getIntValue()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-static {v0, v3, v2}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(III)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->widthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    move-result v0

    invoke-static {p2}, Lcom/airbnb/lottie/utils/Utils;->getScale(Landroid/graphics/Matrix;)F

    move-result v2

    mul-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    new-array v0, v6, [B

    fill-array-data v0, :array_2

    const-string v1, "91415d"

    invoke-static {v0, v1, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->applyDashPatternIfNeeded(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/ColorFilter;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_2
    move v2, v3

    :goto_1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pathGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pathGroups:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;

    invoke-static {v0}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$200(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Lcom/airbnb/lottie/animation/content/TrimPathContent;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-direct {p0, p1, v0, p2}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->applyTrimPath(Landroid/graphics/Canvas;Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;Landroid/graphics/Matrix;)V

    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    const/16 v1, 0x17

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v4, "67a1b1"

    invoke-static {v1, v4, v3, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    invoke-static {v0}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v4, v1

    :goto_3
    if-ltz v4, :cond_4

    iget-object v5, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    invoke-static {v0}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/animation/content/PathContent;

    invoke-interface {v1}, Lcom/airbnb/lottie/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {v5, v1, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v1, v4, -0x1

    move v4, v1

    goto :goto_3

    :cond_4
    const/16 v0, 0x17

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    const-string v1, "e3eea8"

    const-wide v4, -0x3e25d55fd7000000L    # -1.756004516E9

    invoke-static {v0, v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    new-array v0, v8, [B

    fill-array-data v0, :array_5

    const-string v1, "319ac8"

    invoke-static {v0, v1, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    new-array v0, v8, [B

    fill-array-data v0, :array_6

    const-string v1, "d18047"

    const/16 v4, 0xa1f

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    goto :goto_2

    :cond_5
    new-array v0, v6, [B

    fill-array-data v0, :array_7

    const-string v1, "ce193a"

    const/16 v2, -0x1111

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    goto/16 :goto_0

    nop

    :array_0
    .array-data 1
        0x35t
        0x17t
        0x43t
        0xat
        0xft
        0x52t
        0x25t
        0xct
        0x5ft
        0x11t
        0x1t
        0x59t
        0x12t
        0x40t
        0x55t
        0x17t
        0x5t
        0x40t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x67t
        0x43t
        0x45t
        0xbt
        0x8t
        0x51t
        0x77t
        0x58t
        0x59t
        0x10t
        0x6t
        0x5at
        0x40t
        0x14t
        0x53t
        0x16t
        0x2t
        0x43t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x6at
        0x45t
        0x46t
        0x5et
        0x5et
        0x1t
        0x7at
        0x5et
        0x5at
        0x45t
        0x50t
        0xat
        0x4dt
        0x12t
        0x50t
        0x43t
        0x54t
        0x13t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x65t
        0x43t
        0x13t
        0x5et
        0x9t
        0x54t
        0x75t
        0x58t
        0xft
        0x45t
        0x7t
        0x5ft
        0x42t
        0x14t
        0x3t
        0x44t
        0xbt
        0x5dt
        0x52t
        0x67t
        0x0t
        0x45t
        0xat
    .end array-data

    :array_4
    .array-data 1
        0x36t
        0x47t
        0x17t
        0xat
        0xat
        0x5dt
        0x26t
        0x5ct
        0xbt
        0x11t
        0x4t
        0x56t
        0x11t
        0x10t
        0x7t
        0x10t
        0x8t
        0x54t
        0x1t
        0x63t
        0x4t
        0x11t
        0x9t
    .end array-data

    :array_5
    .array-data 1
        0x60t
        0x45t
        0x4bt
        0xet
        0x8t
        0x5dt
        0x70t
        0x5et
        0x57t
        0x15t
        0x6t
        0x56t
        0x47t
        0x12t
        0x5dt
        0x13t
        0x2t
        0x4ft
        0x63t
        0x50t
        0x4dt
        0x9t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x37t
        0x45t
        0x4at
        0x5ft
        0x5ft
        0x52t
        0x27t
        0x5et
        0x56t
        0x44t
        0x51t
        0x59t
        0x10t
        0x12t
        0x5ct
        0x42t
        0x55t
        0x40t
        0x34t
        0x50t
        0x4ct
        0x58t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x30t
        0x11t
        0x43t
        0x56t
        0x58t
        0x4t
        0x20t
        0xat
        0x5ft
        0x4dt
        0x56t
        0xft
        0x17t
        0x46t
        0x55t
        0x4bt
        0x52t
        0x16t
    .end array-data
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 9

    const/16 v8, 0x17

    const/4 v3, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v6, 0x3f800000    # 1.0f

    new-array v0, v8, [B

    fill-array-data v0, :array_0

    const-string v1, "0626e9"

    const-wide v4, 0x41bca7843e000000L    # 4.80740414E8

    invoke-static {v0, v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    move v2, v3

    :goto_0
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pathGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pathGroups:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;

    move v4, v3

    :goto_1
    invoke-static {v0}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_0

    iget-object v5, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    invoke-static {v0}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/animation/content/PathContent;

    invoke-interface {v1}, Lcom/airbnb/lottie/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {v5, v1, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->widthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    move-result v0

    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    div-float v3, v0, v7

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    div-float v4, v0, v7

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    div-float v5, v0, v7

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    div-float/2addr v0, v7

    add-float/2addr v0, v5

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget v0, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v6

    iget v1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v6

    iget v2, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v6

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, v6

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    new-array v0, v8, [B

    fill-array-data v0, :array_1

    const-string v1, "df14f5"

    const/16 v2, 0x79f8

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    return-void

    :array_0
    .array-data 1
        0x63t
        0x42t
        0x40t
        0x59t
        0xet
        0x5ct
        0x73t
        0x59t
        0x5ct
        0x42t
        0x0t
        0x57t
        0x44t
        0x15t
        0x55t
        0x53t
        0x11t
        0x7bt
        0x5ft
        0x43t
        0x5ct
        0x52t
        0x16t
    .end array-data

    :array_1
    .array-data 1
        0x37t
        0x12t
        0x43t
        0x5bt
        0xdt
        0x50t
        0x27t
        0x9t
        0x5ft
        0x40t
        0x3t
        0x5bt
        0x10t
        0x45t
        0x56t
        0x51t
        0x12t
        0x77t
        0xbt
        0x13t
        0x5ft
        0x50t
        0x15t
    .end array-data
.end method

.method public onValueChanged()V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

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
    .locals 7
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

    const/4 v5, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    move-object v2, v5

    :goto_0
    if-ltz v3, :cond_0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/animation/content/Content;

    instance-of v1, v0, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    if-eqz v1, :cond_8

    move-object v1, v0

    check-cast v1, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->getType()Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    move-result-object v1

    sget-object v4, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->INDIVIDUALLY:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    if-ne v1, v4, :cond_8

    check-cast v0, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    :goto_1
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    move-object v2, v0

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2, p0}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->addListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    move-object v3, v5

    :goto_2
    if-ltz v4, :cond_4

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/animation/content/Content;

    instance-of v1, v0, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->getType()Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    move-result-object v1

    sget-object v6, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->INDIVIDUALLY:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    if-ne v1, v6, :cond_3

    if-eqz v3, :cond_2

    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pathGroups:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    new-instance v3, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;

    move-object v1, v0

    check-cast v1, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    invoke-direct {v3, v1, v5}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;-><init>(Lcom/airbnb/lottie/animation/content/TrimPathContent;Lcom/airbnb/lottie/animation/content/BaseStrokeContent$1;)V

    check-cast v0, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->addListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    move-object v0, v3

    :goto_3
    add-int/lit8 v1, v4, -0x1

    move v4, v1

    move-object v3, v0

    goto :goto_2

    :cond_3
    instance-of v1, v0, Lcom/airbnb/lottie/animation/content/PathContent;

    if-eqz v1, :cond_7

    if-nez v3, :cond_6

    new-instance v1, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;

    invoke-direct {v1, v2, v5}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;-><init>(Lcom/airbnb/lottie/animation/content/TrimPathContent;Lcom/airbnb/lottie/animation/content/BaseStrokeContent$1;)V

    :goto_4
    invoke-static {v1}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v3

    check-cast v0, Lcom/airbnb/lottie/animation/content/PathContent;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    goto :goto_3

    :cond_4
    if-eqz v3, :cond_5

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pathGroups:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void

    :cond_6
    move-object v1, v3

    goto :goto_4

    :cond_7
    move-object v0, v3

    goto :goto_3

    :cond_8
    move-object v0, v2

    goto :goto_1
.end method
