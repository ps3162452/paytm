.class Lcom/airbnb/lottie/parser/KeyframeParser;
.super Ljava/lang/Object;


# static fields
.field static INTERPOLATOR_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options; = null

.field private static final LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final MAX_CP_VALUE:F = 100.0f

.field static NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field private static pathInterpolatorCache:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/animation/Interpolator;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x7

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/parser/KeyframeParser;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    new-array v1, v7, [B

    const/16 v2, 0x47

    aput-byte v2, v1, v6

    const-string v2, "3fe885"

    invoke-static {v1, v2, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    new-array v1, v7, [B

    const/16 v2, 0x43

    aput-byte v2, v1, v6

    const-string v2, "0a7029"

    const/16 v3, 0x2bd7

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    new-array v1, v7, [B

    aput-byte v9, v1, v6

    const-string v2, "bae97b"

    const-wide/32 v4, 0x70abb9dc

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    const/4 v1, 0x3

    new-array v2, v7, [B

    const/16 v3, 0x56

    aput-byte v3, v2, v6

    const-string v3, "9119f6"

    const-wide v4, 0x41bc607a57000000L    # 4.76084823E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v7, [B

    const/16 v3, 0x5c

    aput-byte v3, v2, v6

    const-string v3, "55b35b"

    const v4, -0x31149aae

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v7, [B

    const/16 v3, 0xa

    aput-byte v3, v2, v6

    const-string v3, "b07a3c"

    invoke-static {v2, v3, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v8, [B

    fill-array-data v2, :array_0

    const-string v3, "904b92"

    const-wide/32 v4, -0x667c9ca5

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    new-array v1, v8, [B

    fill-array-data v1, :array_1

    const-string v2, "634b33"

    const-wide/32 v4, 0x26ffa0e1

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/KeyframeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    new-array v0, v8, [Ljava/lang/String;

    new-array v1, v7, [B

    const/16 v2, 0x41

    aput-byte v2, v1, v6

    const-string v2, "9ccb17"

    const-wide v4, -0x3e275be155000000L    # -1.653635756E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    new-array v1, v7, [B

    const/16 v2, 0x40

    aput-byte v2, v1, v6

    const-string v2, "9267b3"

    const/16 v3, 0x12b

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/KeyframeParser;->INTERPOLATOR_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    return-void

    :array_0
    .array-data 1
        0x4dt
        0x5ft
    .end array-data

    nop

    :array_1
    .array-data 1
        0x42t
        0x5at
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getInterpolator(I)Ljava/lang/ref/WeakReference;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/animation/Interpolator;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/airbnb/lottie/parser/KeyframeParser;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/airbnb/lottie/parser/KeyframeParser;->pathInterpolatorCache()Landroidx/collection/SparseArrayCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    const-class v1, Lcom/airbnb/lottie/parser/KeyframeParser;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    const-class v1, Lcom/airbnb/lottie/parser/KeyframeParser;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static interpolatorFor(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/view/animation/Interpolator;
    .locals 6

    const/high16 v4, 0x42c80000    # 100.0f

    const/high16 v3, -0x3d380000    # -100.0f

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    iget v1, p0, Landroid/graphics/PointF;->x:F

    invoke-static {v1, v2, v5}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    move-result v1

    iput v1, p0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Landroid/graphics/PointF;->y:F

    invoke-static {v1, v3, v4}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    move-result v1

    iput v1, p0, Landroid/graphics/PointF;->y:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v1, v2, v5}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    move-result v1

    iput v1, p1, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v1, v3, v4}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    move-result v1

    iput v1, p1, Landroid/graphics/PointF;->y:F

    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget v2, p0, Landroid/graphics/PointF;->y:F

    iget v3, p1, Landroid/graphics/PointF;->x:F

    iget v4, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v1, v2, v3, v4}, Lcom/airbnb/lottie/utils/Utils;->hashFor(FFFF)I

    move-result v1

    invoke-static {v1}, Lcom/airbnb/lottie/parser/KeyframeParser;->getInterpolator(I)Ljava/lang/ref/WeakReference;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Interpolator;

    :cond_0
    if-eqz v2, :cond_1

    if-nez v0, :cond_2

    :cond_1
    :try_start_0
    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget v2, p0, Landroid/graphics/PointF;->y:F

    iget v3, p1, Landroid/graphics/PointF;->x:F

    iget v4, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v2, v3, v4}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    :try_start_1
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v1, v2}, Lcom/airbnb/lottie/parser/KeyframeParser;->putInterpolator(ILjava/lang/ref/WeakReference;)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    const/16 v2, 0x24

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "a55114"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/graphics/PointF;->x:F

    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v2, p0, Landroid/graphics/PointF;->y:F

    iget v3, p1, Landroid/graphics/PointF;->x:F

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget v4, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v2, v3, v4}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    nop

    :array_0
    .array-data 1
        0x35t
        0x5dt
        0x50t
        0x11t
        0x61t
        0x55t
        0x15t
        0x5dt
        0x15t
        0x52t
        0x50t
        0x5at
        0xft
        0x5at
        0x41t
        0x11t
        0x5dt
        0x5bt
        0xet
        0x45t
        0x15t
        0x53t
        0x50t
        0x57t
        0xat
        0x15t
        0x5at
        0x5ft
        0x11t
        0x5dt
        0x15t
        0x46t
        0x50t
        0x5dt
        0x57t
        0x1at
    .end array-data
.end method

.method static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/parser/ValueParser;ZZ)Lcom/airbnb/lottie/value/Keyframe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/airbnb/lottie/parser/moshi/JsonReader;",
            "Lcom/airbnb/lottie/LottieComposition;",
            "F",
            "Lcom/airbnb/lottie/parser/ValueParser",
            "<TT;>;ZZ)",
            "Lcom/airbnb/lottie/value/Keyframe",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    invoke-static {p1, p0, p2, p3}, Lcom/airbnb/lottie/parser/KeyframeParser;->parseMultiDimensionalKeyframe(Lcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/parser/moshi/JsonReader;FLcom/airbnb/lottie/parser/ValueParser;)Lcom/airbnb/lottie/value/Keyframe;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-eqz p4, :cond_1

    invoke-static {p1, p0, p2, p3}, Lcom/airbnb/lottie/parser/KeyframeParser;->parseKeyframe(Lcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/parser/moshi/JsonReader;FLcom/airbnb/lottie/parser/ValueParser;)Lcom/airbnb/lottie/value/Keyframe;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p0, p2, p3}, Lcom/airbnb/lottie/parser/KeyframeParser;->parseStaticValue(Lcom/airbnb/lottie/parser/moshi/JsonReader;FLcom/airbnb/lottie/parser/ValueParser;)Lcom/airbnb/lottie/value/Keyframe;

    move-result-object v0

    goto :goto_0
.end method

.method private static parseKeyframe(Lcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/parser/moshi/JsonReader;FLcom/airbnb/lottie/parser/ValueParser;)Lcom/airbnb/lottie/value/Keyframe;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/airbnb/lottie/LottieComposition;",
            "Lcom/airbnb/lottie/parser/moshi/JsonReader;",
            "F",
            "Lcom/airbnb/lottie/parser/ValueParser",
            "<TT;>;)",
            "Lcom/airbnb/lottie/value/Keyframe",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    const/4 v2, 0x0

    move-object v8, v1

    move v1, v3

    move-object v3, v4

    move-object v4, v6

    move-object v6, v7

    move-object v7, v0

    :goto_0
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/airbnb/lottie/parser/KeyframeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v10

    double-to-float v5, v10

    goto :goto_0

    :pswitch_1
    invoke-interface {p3, p1, p2}, Lcom/airbnb/lottie/parser/ValueParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :pswitch_2
    invoke-interface {p3, p1, p2}, Lcom/airbnb/lottie/parser/ValueParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    :pswitch_3
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    :pswitch_4
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    :pswitch_5
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_6
    invoke-static {p1, p2}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v0

    move-object v8, v0

    goto :goto_0

    :pswitch_7
    invoke-static {p1, p2}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v0

    move-object v7, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    if-eqz v1, :cond_2

    sget-object v4, Lcom/airbnb/lottie/parser/KeyframeParser;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    move-object v3, v2

    :goto_2
    new-instance v0, Lcom/airbnb/lottie/value/Keyframe;

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    iput-object v8, v0, Lcom/airbnb/lottie/value/Keyframe;->pathCp1:Landroid/graphics/PointF;

    iput-object v7, v0, Lcom/airbnb/lottie/value/Keyframe;->pathCp2:Landroid/graphics/PointF;

    return-object v0

    :cond_2
    if-eqz v6, :cond_3

    if-eqz v4, :cond_3

    invoke-static {v6, v4}, Lcom/airbnb/lottie/parser/KeyframeParser;->interpolatorFor(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/view/animation/Interpolator;

    move-result-object v4

    goto :goto_2

    :cond_3
    sget-object v4, Lcom/airbnb/lottie/parser/KeyframeParser;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private static parseMultiDimensionalKeyframe(Lcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/parser/moshi/JsonReader;FLcom/airbnb/lottie/parser/ValueParser;)Lcom/airbnb/lottie/value/Keyframe;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/airbnb/lottie/LottieComposition;",
            "Lcom/airbnb/lottie/parser/moshi/JsonReader;",
            "F",
            "Lcom/airbnb/lottie/parser/ValueParser",
            "<TT;>;)",
            "Lcom/airbnb/lottie/value/Keyframe",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v15, 0x0

    const/4 v14, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/16 v22, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    const/4 v6, 0x0

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move v5, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    sget-object v4, Lcom/airbnb/lottie/parser/KeyframeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_0

    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v10, v0

    goto :goto_0

    :pswitch_1
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/airbnb/lottie/parser/ValueParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0

    :pswitch_2
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/airbnb/lottie/parser/ValueParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    goto :goto_0

    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v4

    sget-object v15, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_OBJECT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    if-ne v4, v15, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    const/4 v15, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    move/from16 v16, v12

    move/from16 v17, v15

    move v12, v4

    move v15, v9

    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lcom/airbnb/lottie/parser/KeyframeParser;->INTERPOLATOR_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v4

    packed-switch v4, :pswitch_data_1

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_1

    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v4

    sget-object v9, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->NUMBER:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    if-ne v4, v9, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v4, v0

    move v15, v4

    move/from16 v17, v4

    goto :goto_1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v9, v0

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v4

    sget-object v15, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->NUMBER:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    if-ne v4, v15, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v4, v0

    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    move v15, v4

    move/from16 v17, v9

    goto :goto_1

    :cond_1
    move v4, v9

    goto :goto_2

    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v4

    sget-object v9, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->NUMBER:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    if-ne v4, v9, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v4, v0

    move v12, v4

    move/from16 v16, v4

    goto :goto_1

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v9, v0

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v4

    sget-object v12, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->NUMBER:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    if-ne v4, v12, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v4, v0

    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    move v12, v4

    move/from16 v16, v9

    goto :goto_1

    :cond_3
    move v4, v9

    goto :goto_3

    :cond_4
    new-instance v9, Landroid/graphics/PointF;

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-direct {v9, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v15, v12}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    move-object v12, v9

    move-object v9, v4

    goto/16 :goto_0

    :cond_5
    invoke-static/range {p1 .. p2}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v4

    move-object v14, v4

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v4

    sget-object v15, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_OBJECT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    if-ne v4, v15, :cond_b

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v15, 0x0

    const/4 v11, 0x0

    move/from16 v16, v15

    move v15, v11

    move v11, v8

    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    sget-object v8, Lcom/airbnb/lottie/parser/KeyframeParser;->INTERPOLATOR_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v8

    packed-switch v8, :pswitch_data_2

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_4

    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v8

    sget-object v11, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->NUMBER:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    if-ne v8, v11, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v8, v0

    move v11, v8

    move/from16 v16, v8

    goto :goto_4

    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v8, v0

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v11

    sget-object v16, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->NUMBER:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-object/from16 v0, v16

    if-ne v11, v0, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v11, v0

    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    move/from16 v16, v11

    move v11, v8

    goto :goto_4

    :cond_7
    move v11, v8

    goto :goto_5

    :pswitch_8
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v4

    sget-object v8, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->NUMBER:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    if-ne v4, v8, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v4, v0

    move v15, v4

    goto :goto_4

    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v4, v0

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v8

    sget-object v15, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->NUMBER:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    if-ne v8, v15, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v8, v0

    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    move v15, v8

    goto :goto_4

    :cond_9
    move v8, v4

    goto :goto_6

    :cond_a
    new-instance v8, Landroid/graphics/PointF;

    invoke-direct {v8, v11, v4}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v4, Landroid/graphics/PointF;

    move/from16 v0, v16

    invoke-direct {v4, v0, v15}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    move-object v11, v8

    move-object v8, v4

    goto/16 :goto_0

    :cond_b
    invoke-static/range {p1 .. p2}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v4

    move-object v13, v4

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_c

    const/4 v4, 0x1

    :goto_7
    move v5, v4

    goto/16 :goto_0

    :cond_c
    const/4 v4, 0x0

    goto :goto_7

    :pswitch_a
    invoke-static/range {p1 .. p2}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v4

    move-object/from16 v19, v4

    goto/16 :goto_0

    :pswitch_b
    invoke-static/range {p1 .. p2}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v4

    move-object/from16 v18, v4

    goto/16 :goto_0

    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    if-eqz v5, :cond_e

    sget-object v15, Lcom/airbnb/lottie/parser/KeyframeParser;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    move-object/from16 v8, v20

    move-object/from16 v9, v21

    move-object v7, v6

    :goto_8
    if-eqz v8, :cond_11

    if-eqz v9, :cond_11

    new-instance v4, Lcom/airbnb/lottie/value/Keyframe;

    const/4 v11, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    :goto_9
    move-object/from16 v0, v19

    iput-object v0, v4, Lcom/airbnb/lottie/value/Keyframe;->pathCp1:Landroid/graphics/PointF;

    move-object/from16 v0, v18

    iput-object v0, v4, Lcom/airbnb/lottie/value/Keyframe;->pathCp2:Landroid/graphics/PointF;

    return-object v4

    :cond_e
    if-eqz v14, :cond_f

    if-eqz v13, :cond_f

    invoke-static {v14, v13}, Lcom/airbnb/lottie/parser/KeyframeParser;->interpolatorFor(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/view/animation/Interpolator;

    move-result-object v15

    move-object/from16 v8, v20

    move-object/from16 v9, v21

    goto :goto_8

    :cond_f
    if-eqz v12, :cond_10

    if-eqz v9, :cond_10

    if-eqz v11, :cond_10

    if-eqz v8, :cond_10

    invoke-static {v12, v11}, Lcom/airbnb/lottie/parser/KeyframeParser;->interpolatorFor(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-static {v9, v8}, Lcom/airbnb/lottie/parser/KeyframeParser;->interpolatorFor(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/view/animation/Interpolator;

    move-result-object v9

    move-object v8, v4

    move-object/from16 v15, v22

    goto :goto_8

    :cond_10
    sget-object v15, Lcom/airbnb/lottie/parser/KeyframeParser;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    move-object/from16 v8, v20

    move-object/from16 v9, v21

    goto :goto_8

    :cond_11
    new-instance v11, Lcom/airbnb/lottie/value/Keyframe;

    const/16 v17, 0x0

    move-object/from16 v12, p0

    move-object v13, v6

    move-object v14, v7

    move/from16 v16, v10

    invoke-direct/range {v11 .. v17}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    move-object v4, v11

    goto :goto_9

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private static parseStaticValue(Lcom/airbnb/lottie/parser/moshi/JsonReader;FLcom/airbnb/lottie/parser/ValueParser;)Lcom/airbnb/lottie/value/Keyframe;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/airbnb/lottie/parser/moshi/JsonReader;",
            "F",
            "Lcom/airbnb/lottie/parser/ValueParser",
            "<TT;>;)",
            "Lcom/airbnb/lottie/value/Keyframe",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/airbnb/lottie/value/Keyframe;

    invoke-interface {p2, p0, p1}, Lcom/airbnb/lottie/parser/ValueParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method private static pathInterpolatorCache()Landroidx/collection/SparseArrayCompat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/SparseArrayCompat",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/animation/Interpolator;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lcom/airbnb/lottie/parser/KeyframeParser;->pathInterpolatorCache:Landroidx/collection/SparseArrayCompat;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/parser/KeyframeParser;->pathInterpolatorCache:Landroidx/collection/SparseArrayCompat;

    :cond_0
    sget-object v0, Lcom/airbnb/lottie/parser/KeyframeParser;->pathInterpolatorCache:Landroidx/collection/SparseArrayCompat;

    return-object v0
.end method

.method private static putInterpolator(ILjava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/animation/Interpolator;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lcom/airbnb/lottie/parser/KeyframeParser;

    monitor-enter v0

    :try_start_0
    sget-object v0, Lcom/airbnb/lottie/parser/KeyframeParser;->pathInterpolatorCache:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p0, p1}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    const-class v0, Lcom/airbnb/lottie/parser/KeyframeParser;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v0

    const-class v1, Lcom/airbnb/lottie/parser/KeyframeParser;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
