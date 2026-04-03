.class public final Lcom/airbnb/lottie/utils/Utils;
.super Ljava/lang/Object;


# static fields
.field private static final INV_SQRT_2:F

.field public static final SECOND_IN_NANOS:I = 0x3b9aca00

.field private static dpScale:F

.field private static final threadLocalPathMeasure:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/graphics/PathMeasure;",
            ">;"
        }
    .end annotation
.end field

.field private static final threadLocalPoints:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[F>;"
        }
    .end annotation
.end field

.field private static final threadLocalTempPath:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field

.field private static final threadLocalTempPath2:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    new-instance v0, Lcom/airbnb/lottie/utils/Utils$1;

    invoke-direct {v0}, Lcom/airbnb/lottie/utils/Utils$1;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/utils/Utils;->threadLocalPathMeasure:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/airbnb/lottie/utils/Utils$2;

    invoke-direct {v0}, Lcom/airbnb/lottie/utils/Utils$2;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/utils/Utils;->threadLocalTempPath:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/airbnb/lottie/utils/Utils$3;

    invoke-direct {v0}, Lcom/airbnb/lottie/utils/Utils$3;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/utils/Utils;->threadLocalTempPath2:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/airbnb/lottie/utils/Utils$4;

    invoke-direct {v0}, Lcom/airbnb/lottie/utils/Utils$4;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/utils/Utils;->threadLocalPoints:Ljava/lang/ThreadLocal;

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/airbnb/lottie/utils/Utils;->INV_SQRT_2:F

    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lcom/airbnb/lottie/utils/Utils;->dpScale:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyTrimPathIfNeeded(Landroid/graphics/Path;FFF)V
    .locals 10

    const/16 v0, 0x15

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "75c99f"

    const-wide v2, 0x41ce13d85e800000L    # 1.009234109E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    sget-object v0, Lcom/airbnb/lottie/utils/Utils;->threadLocalPathMeasure:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PathMeasure;

    sget-object v1, Lcom/airbnb/lottie/utils/Utils;->threadLocalTempPath:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Path;

    sget-object v2, Lcom/airbnb/lottie/utils/Utils;->threadLocalTempPath2:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Path;

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v3}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v5

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, p1, v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    cmpl-float v3, p2, v3

    if-nez v3, :cond_0

    const/16 v0, 0x15

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "c70b73"

    const-wide/32 v2, 0x4c1f9a8e

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    :goto_0
    return-void

    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, v5, v3

    if-ltz v3, :cond_1

    sub-float v3, p2, p1

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v6, v3

    const-wide v8, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v3, v6, v8

    if-gez v3, :cond_2

    :cond_1
    const/16 v0, 0x15

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "cb5641"

    const/16 v2, 0x7747

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    goto :goto_0

    :cond_2
    mul-float v3, v5, p1

    mul-float v4, v5, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    mul-float v7, p3, v5

    add-float v3, v6, v7

    add-float/2addr v4, v7

    cmpl-float v6, v3, v5

    if-ltz v6, :cond_3

    cmpl-float v6, v4, v5

    if-ltz v6, :cond_3

    invoke-static {v3, v5}, Lcom/airbnb/lottie/utils/MiscUtils;->floorMod(FF)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v4, v5}, Lcom/airbnb/lottie/utils/MiscUtils;->floorMod(FF)I

    move-result v4

    int-to-float v4, v4

    :cond_3
    const/4 v6, 0x0

    cmpg-float v6, v3, v6

    if-gez v6, :cond_4

    invoke-static {v3, v5}, Lcom/airbnb/lottie/utils/MiscUtils;->floorMod(FF)I

    move-result v3

    int-to-float v3, v3

    :cond_4
    const/4 v6, 0x0

    cmpg-float v6, v4, v6

    if-gez v6, :cond_5

    invoke-static {v4, v5}, Lcom/airbnb/lottie/utils/MiscUtils;->floorMod(FF)I

    move-result v4

    int-to-float v4, v4

    :cond_5
    cmpl-float v6, v3, v4

    if-nez v6, :cond_6

    invoke-virtual {p0}, Landroid/graphics/Path;->reset()V

    const/16 v0, 0x15

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v1, "b29283"

    const/16 v2, 0x4346

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    goto :goto_0

    :cond_6
    cmpl-float v6, v3, v4

    if-ltz v6, :cond_7

    sub-float/2addr v3, v5

    :cond_7
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    const/4 v6, 0x1

    invoke-virtual {v0, v3, v4, v1, v6}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    cmpl-float v6, v4, v5

    if-lez v6, :cond_9

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    const/4 v3, 0x0

    rem-float/2addr v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0, v3, v4, v2, v5}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    :cond_8
    :goto_1
    invoke-virtual {p0, v1}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    const/16 v0, 0x15

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    const-string v1, "6743ea"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    goto/16 :goto_0

    :cond_9
    const/4 v4, 0x0

    cmpg-float v4, v3, v4

    if-gez v4, :cond_8

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    add-float/2addr v3, v5

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v5, v2, v4}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    goto :goto_1

    :array_0
    .array-data 1
        0x56t
        0x45t
        0x13t
        0x55t
        0x40t
        0x32t
        0x45t
        0x5ct
        0xet
        0x69t
        0x58t
        0x12t
        0x5ft
        0x7ct
        0x5t
        0x77t
        0x5ct
        0x3t
        0x53t
        0x50t
        0x7t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x2t
        0x47t
        0x40t
        0xet
        0x4et
        0x67t
        0x11t
        0x5et
        0x5dt
        0x32t
        0x56t
        0x47t
        0xbt
        0x7et
        0x56t
        0x2ct
        0x52t
        0x56t
        0x7t
        0x52t
        0x54t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x2t
        0x12t
        0x45t
        0x5at
        0x4dt
        0x65t
        0x11t
        0xbt
        0x58t
        0x66t
        0x55t
        0x45t
        0xbt
        0x2bt
        0x53t
        0x78t
        0x51t
        0x54t
        0x7t
        0x7t
        0x51t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x3t
        0x42t
        0x49t
        0x5et
        0x41t
        0x67t
        0x10t
        0x5bt
        0x54t
        0x62t
        0x59t
        0x47t
        0xat
        0x7bt
        0x5ft
        0x7ct
        0x5dt
        0x56t
        0x6t
        0x57t
        0x5dt
    .end array-data

    nop

    :array_4
    .array-data 1
        0x57t
        0x47t
        0x44t
        0x5ft
        0x1ct
        0x35t
        0x44t
        0x5et
        0x59t
        0x63t
        0x4t
        0x15t
        0x5et
        0x7et
        0x52t
        0x7dt
        0x0t
        0x4t
        0x52t
        0x52t
        0x50t
    .end array-data
.end method

.method public static applyTrimPathIfNeeded(Landroid/graphics/Path;Lcom/airbnb/lottie/animation/content/TrimPathContent;)V
    .locals 4
    .param p1    # Lcom/airbnb/lottie/animation/content/TrimPathContent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/high16 v3, 0x42c80000    # 100.0f

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->getStart()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    move-result v1

    invoke-virtual {p1}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->getEnd()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    move-result v2

    invoke-virtual {p1}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->getOffset()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    move-result v0

    div-float/2addr v1, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x43b40000    # 360.0f

    div-float/2addr v0, v3

    invoke-static {p0, v1, v2, v0}, Lcom/airbnb/lottie/utils/Utils;->applyTrimPathIfNeeded(Landroid/graphics/Path;FFF)V

    goto :goto_0
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static createPath(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/Path;
    .locals 7

    const/4 v3, 0x0

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget v2, p0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Landroid/graphics/PointF;->length()F

    move-result v1

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    invoke-virtual {p3}, Landroid/graphics/PointF;->length()F

    move-result v1

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_1

    :cond_0
    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget v2, p2, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v2

    iget v2, p0, Landroid/graphics/PointF;->y:F

    iget v3, p2, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v3

    iget v3, p1, Landroid/graphics/PointF;->x:F

    iget v4, p3, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, v4

    iget v4, p1, Landroid/graphics/PointF;->y:F

    iget v5, p3, Landroid/graphics/PointF;->y:F

    add-float/2addr v4, v5

    iget v5, p1, Landroid/graphics/PointF;->x:F

    iget v6, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :goto_0
    return-object v0

    :cond_1
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0
.end method

.method public static dpScale()F
    .locals 2

    sget v0, Lcom/airbnb/lottie/utils/Utils;->dpScale:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/airbnb/lottie/utils/Utils;->dpScale:F

    :cond_0
    sget v0, Lcom/airbnb/lottie/utils/Utils;->dpScale:F

    return v0
.end method

.method public static getAnimationScale(Landroid/content/Context;)F
    .locals 6

    const/16 v2, 0x17

    const/4 v5, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v1, v2, [B

    fill-array-data v1, :array_0

    const-string v2, "e121a7"

    const/4 v3, 0x0

    invoke-static {v1, v2, v5, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v1, v2, [B

    fill-array-data v1, :array_1

    const-string v2, "cde497"

    invoke-static {v1, v2, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    goto :goto_0

    :array_0
    .array-data 1
        0x4t
        0x5ft
        0x5bt
        0x5ct
        0x0t
        0x43t
        0xat
        0x43t
        0x6dt
        0x55t
        0x14t
        0x45t
        0x4t
        0x45t
        0x5bt
        0x5et
        0xft
        0x68t
        0x16t
        0x52t
        0x53t
        0x5dt
        0x4t
    .end array-data

    :array_1
    .array-data 1
        0x2t
        0xat
        0xct
        0x59t
        0x58t
        0x43t
        0xct
        0x16t
        0x3at
        0x50t
        0x4ct
        0x45t
        0x2t
        0x10t
        0xct
        0x5bt
        0x57t
        0x68t
        0x10t
        0x7t
        0x4t
        0x58t
        0x5ct
    .end array-data
.end method

.method public static getScale(Landroid/graphics/Matrix;)F
    .locals 6

    const/4 v5, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    sget-object v0, Lcom/airbnb/lottie/utils/Utils;->threadLocalPoints:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    aput v1, v0, v2

    aput v1, v0, v4

    sget v1, Lcom/airbnb/lottie/utils/Utils;->INV_SQRT_2:F

    aput v1, v0, v3

    sget v1, Lcom/airbnb/lottie/utils/Utils;->INV_SQRT_2:F

    aput v1, v0, v5

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v1, v0, v3

    aget v2, v0, v2

    aget v3, v0, v5

    aget v0, v0, v4

    sub-float/2addr v1, v2

    float-to-double v4, v1

    sub-float v0, v3, v0

    float-to-double v0, v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static hasZeroScaleAxis(Landroid/graphics/Matrix;)Z
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v0, Lcom/airbnb/lottie/utils/Utils;->threadLocalPoints:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    aput v3, v0, v1

    aput v3, v0, v2

    const v3, 0x471212bb

    aput v3, v0, v4

    const v3, 0x471a973c

    aput v3, v0, v5

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v3, v0, v1

    aget v4, v0, v4

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    aget v3, v0, v2

    aget v0, v0, v5

    cmpl-float v0, v3, v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static hashFor(FFFF)I
    .locals 3

    const/4 v2, 0x0

    const/16 v0, 0x11

    cmpl-float v1, p0, v2

    if-eqz v1, :cond_0

    const/16 v0, 0x20f

    int-to-float v0, v0

    mul-float/2addr v0, p0

    float-to-int v0, v0

    :cond_0
    cmpl-float v1, p1, v2

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x1f

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    :cond_1
    cmpl-float v1, p2, v2

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x1f

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    :cond_2
    cmpl-float v1, p3, v2

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x1f

    int-to-float v0, v0

    mul-float/2addr v0, p3

    float-to-int v0, v0

    :cond_3
    return v0
.end method

.method public static isAtLeastVersion(IIIIII)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p0, p3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-gt p0, p3, :cond_2

    if-lt p1, p4, :cond_0

    if-gt p1, p4, :cond_2

    if-lt p2, p5, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static isNetworkException(Ljava/lang/Throwable;)Z
    .locals 1

    instance-of v0, p0, Ljava/net/SocketException;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/nio/channels/ClosedChannelException;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/io/InterruptedIOException;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/net/ProtocolException;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljavax/net/ssl/SSLException;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/net/UnknownHostException;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/net/UnknownServiceException;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static renderPath(Landroid/graphics/Path;)Landroid/graphics/Bitmap;
    .locals 4

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget v1, v0, Landroid/graphics/RectF;->right:F

    float-to-int v1, v1

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Lcom/airbnb/lottie/animation/LPaint;

    invoke-direct {v2}, Lcom/airbnb/lottie/animation/LPaint;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const v3, -0xffff01

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v1, p0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-object v0
.end method

.method public static resizeBitmapIfNeeded(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne v0, p2, :cond_0

    :goto_0
    return-object p0

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    move-object p0, v0

    goto :goto_0
.end method

.method public static saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 1

    const/16 v0, 0x1f

    invoke-static {p0, p1, p2, v0}, Lcom/airbnb/lottie/utils/Utils;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;I)V

    return-void
.end method

.method public static saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;I)V
    .locals 5

    const/16 v4, 0xf

    new-array v0, v4, [B

    fill-array-data v0, :array_0

    const-string v1, "cefaae"

    const-wide v2, 0x4199de5108000000L    # 1.08500034E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    :goto_0
    new-array v0, v4, [B

    fill-array-data v0, :array_1

    const-string v1, "5df3e1"

    const-wide v2, 0x41c7a26958800000L    # 7.93039537E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    goto :goto_0

    :array_0
    .array-data 1
        0x36t
        0x11t
        0xft
        0xdt
        0x12t
        0x46t
        0x10t
        0x4t
        0x10t
        0x4t
        0x2dt
        0x4t
        0x1at
        0x0t
        0x14t
    .end array-data

    :array_1
    .array-data 1
        0x60t
        0x10t
        0xft
        0x5ft
        0x16t
        0x12t
        0x46t
        0x5t
        0x10t
        0x56t
        0x29t
        0x50t
        0x4ct
        0x1t
        0x14t
    .end array-data
.end method
