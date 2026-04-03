.class public Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final EPSILON:D = 1.0E-5

.field public static final MAX_NUM_POINTS:I = 0xbb8

.field private static final PRECISION:F = 0.002f


# instance fields
.field private mX:[F

.field private mY:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroidx/vectordrawable/graphics/drawable/AndroidResources;->STYLEABLE_PATH_INTERPOLATOR:[I

    invoke-static {p1, p2, p3, v0}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, v0, p4}, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->parseInterpolatorFromTypeArray(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private initCubic(FFFF)V
    .locals 7

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-direct {p0, v0}, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->initPath(Landroid/graphics/Path;)V

    return-void
.end method

.method private initPath(Landroid/graphics/Path;)V
    .locals 13

    const/16 v12, 0x1e

    const/high16 v9, 0x3f800000    # 1.0f

    const-wide v10, 0x3ee4f8b588e368f1L    # 1.0E-5

    const/4 v8, 0x1

    const/4 v0, 0x0

    new-instance v4, Landroid/graphics/PathMeasure;

    invoke-direct {v4, p1, v0}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    invoke-virtual {v4}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v2

    const/16 v1, 0xbb8

    const v3, 0x3b03126f    # 0.002f

    div-float v3, v2, v3

    float-to-int v3, v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-gtz v5, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-array v3, v12, [B

    fill-array-data v3, :array_0

    const-string v4, "16b9dd"

    const-wide/32 v6, 0x433088f8

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-array v1, v5, [F

    iput-object v1, p0, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->mX:[F

    new-array v1, v5, [F

    iput-object v1, p0, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->mY:[F

    const/4 v1, 0x2

    new-array v3, v1, [F

    move v1, v0

    :goto_0
    if-ge v1, v5, :cond_1

    int-to-float v6, v1

    mul-float/2addr v6, v2

    add-int/lit8 v7, v5, -0x1

    int-to-float v7, v7

    div-float/2addr v6, v7

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v3, v7}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    iget-object v6, p0, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->mX:[F

    aget v7, v3, v0

    aput v7, v6, v1

    iget-object v6, p0, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->mY:[F

    aget v7, v3, v8

    aput v7, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->mX:[F

    aget v1, v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    cmpl-double v1, v2, v10

    if-gtz v1, :cond_2

    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->mY:[F

    aget v1, v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    cmpl-double v1, v2, v10

    if-gtz v1, :cond_2

    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->mX:[F

    add-int/lit8 v2, v5, -0x1

    aget v1, v1, v2

    sub-float/2addr v1, v9

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    cmpl-double v1, v2, v10

    if-gtz v1, :cond_2

    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->mY:[F

    add-int/lit8 v2, v5, -0x1

    aget v1, v1, v2

    sub-float/2addr v1, v9

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    cmpl-double v1, v2, v10

    if-lez v1, :cond_3

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x35

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "9ce48b"

    const-wide/32 v6, -0x273264b8

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->mX:[F

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    new-array v3, v8, [B

    const/16 v4, 0x48

    aput-byte v4, v3, v0

    const-string v4, "d202ef"

    invoke-static {v3, v4, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->mY:[F

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x5

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v4, "9b6734"

    invoke-static {v3, v4, v8, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->mX:[F

    add-int/lit8 v4, v5, -0x1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    new-array v3, v8, [B

    aput-byte v12, v3, v0

    const-string v0, "2a9f01"

    const-wide/32 v6, -0x3d70031a

    invoke-static {v3, v0, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->mY:[F

    add-int/lit8 v3, v5, -0x1

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    const/4 v1, 0x0

    move v2, v1

    move v1, v0

    :goto_1
    if-ge v0, v5, :cond_5

    iget-object v3, p0, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->mX:[F

    aget v3, v3, v1

    cmpg-float v2, v3, v2

    if-gez v2, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x28

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const-string v4, "0b64ca"

    const v5, 0x4e14c0c2    # 6.2391514E8f

    invoke-static {v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v2, p0, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->mX:[F

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_1

    :cond_5
    invoke-virtual {v4}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x35

    new-array v1, v1, [B

    fill-array-data v1, :array_4

    const-string v2, "f13b77"

    const v3, 0x4be5c4ff    # 3.011635E7f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    return-void

    nop

    :array_0
    .array-data 1
        0x65t
        0x5et
        0x7t
        0x19t
        0x34t
        0x5t
        0x45t
        0x5et
        0x42t
        0x51t
        0x5t
        0x17t
        0x11t
        0x57t
        0x42t
        0x50t
        0xat
        0x12t
        0x50t
        0x5at
        0xbt
        0x5dt
        0x44t
        0x8t
        0x54t
        0x58t
        0x5t
        0x4dt
        0xct
        0x44t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x6dt
        0xbt
        0x0t
        0x14t
        0x68t
        0x3t
        0x4dt
        0xbt
        0x45t
        0x59t
        0x4dt
        0x11t
        0x4dt
        0x43t
        0x16t
        0x40t
        0x59t
        0x10t
        0x4dt
        0x43t
        0x4t
        0x40t
        0x18t
        0x4at
        0x9t
        0x4ft
        0x55t
        0x1dt
        0x18t
        0x3t
        0x57t
        0x7t
        0x45t
        0x51t
        0x56t
        0x6t
        0x19t
        0x2t
        0x11t
        0x14t
        0x10t
        0x53t
        0x15t
        0x52t
        0x4ct
        0x14t
        0x4bt
        0x16t
        0x58t
        0x11t
        0x11t
        0xet
        0x18t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x19t
        0x7t
        0x58t
        0x53t
        0x9t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x64t
        0xat
        0x53t
        0x14t
        0x33t
        0x0t
        0x44t
        0xat
        0x16t
        0x57t
        0x2t
        0xft
        0x5et
        0xdt
        0x42t
        0x14t
        0xft
        0xet
        0x5ft
        0x12t
        0x16t
        0x56t
        0x2t
        0x2t
        0x5bt
        0x42t
        0x59t
        0x5at
        0x43t
        0x8t
        0x44t
        0x11t
        0x53t
        0x58t
        0x5t
        0x4dt
        0x10t
        0x1at
        0x16t
        0xet
    .end array-data

    :array_4
    .array-data 1
        0x32t
        0x59t
        0x56t
        0x42t
        0x67t
        0x56t
        0x12t
        0x59t
        0x13t
        0x11t
        0x5ft
        0x58t
        0x13t
        0x5dt
        0x57t
        0x42t
        0x55t
        0x52t
        0x46t
        0x52t
        0x5ct
        0xct
        0x43t
        0x5et
        0x8t
        0x44t
        0x5ct
        0x17t
        0x44t
        0x1bt
        0x46t
        0x52t
        0x52t
        0xct
        0x10t
        0x43t
        0x46t
        0x59t
        0x52t
        0x14t
        0x52t
        0x17t
        0x54t
        0x1at
        0x13t
        0x1t
        0x58t
        0x59t
        0x12t
        0x5et
        0x46t
        0x10t
        0x44t
    .end array-data
.end method

.method private initQuad(FF)V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v0, p1, p2, v2, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    invoke-direct {p0, v0}, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->initPath(Landroid/graphics/Path;)V

    return-void
.end method

.method private parseInterpolatorFromTypeArray(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 12

    const/16 v3, 0x8

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/16 v8, 0x9

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    const-string v1, "5685ab"

    const/16 v2, 0x2b22

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-array v0, v3, [B

    fill-array-data v0, :array_1

    const-string v1, "09ecd1"

    invoke-static {v0, v1, v9, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {p1, p2, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/view/InflateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x28

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v4, "4a8aba"

    const/16 v5, 0x29b0

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-direct {p0, v1}, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->initPath(Landroid/graphics/Path;)V

    :goto_0
    return-void

    :cond_1
    new-array v0, v8, [B

    fill-array-data v0, :array_3

    const-string v1, "fb68c5"

    const-wide/32 v2, 0xdbea20b

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Landroid/view/InflateException;

    const/16 v1, 0x31

    new-array v1, v1, [B

    fill-array-data v1, :array_4

    const-string v2, "5ed149"

    const/16 v3, 0x6413

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-array v0, v8, [B

    fill-array-data v0, :array_5

    const-string v1, "15a87e"

    invoke-static {v0, v1, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Landroid/view/InflateException;

    const/16 v1, 0x31

    new-array v1, v1, [B

    fill-array-data v1, :array_6

    const-string v2, "3a2a7a"

    invoke-static {v1, v2, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-array v0, v8, [B

    fill-array-data v0, :array_7

    const-string v1, "1424ca"

    invoke-static {v0, v1, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0, v11, v10}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    new-array v1, v8, [B

    fill-array-data v1, :array_8

    const-string v2, "8e7a46"

    const-wide v4, 0x41d145b4f4000000L    # 1.15912392E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v1, v9, v10}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v1

    new-array v2, v8, [B

    fill-array-data v2, :array_9

    const-string v3, "32bb58"

    const-wide/32 v4, -0x69777d55

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    new-array v3, v8, [B

    fill-array-data v3, :array_a

    const-string v4, "cff4c7"

    const-wide/32 v6, -0x7c7d0222

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eq v2, v3, :cond_4

    new-instance v0, Landroid/view/InflateException;

    const/16 v1, 0x49

    new-array v1, v1, [B

    fill-array-data v1, :array_b

    const-string v2, "028750"

    invoke-static {v1, v2, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    if-nez v2, :cond_5

    invoke-direct {p0, v0, v1}, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->initQuad(FF)V

    goto/16 :goto_0

    :cond_5
    new-array v2, v8, [B

    fill-array-data v2, :array_c

    const-string v3, "86c59d"

    const v4, 0x4ef9aa21

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {p1, p2, v2, v3, v10}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v2

    new-array v3, v8, [B

    fill-array-data v3, :array_d

    const-string v4, "7cde1e"

    invoke-static {v3, v4, v9, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {p1, p2, v3, v4, v10}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->initCubic(FFFF)V

    goto/16 :goto_0

    :array_0
    .array-data 1
        0x45t
        0x57t
        0x4ct
        0x5dt
        0x25t
        0x3t
        0x41t
        0x57t
    .end array-data

    :array_1
    .array-data 1
        0x40t
        0x58t
        0x11t
        0xbt
        0x20t
        0x50t
        0x44t
        0x58t
    .end array-data

    :array_2
    .array-data 1
        0x60t
        0x9t
        0x5dt
        0x41t
        0x12t
        0x0t
        0x40t
        0x9t
        0x18t
        0x8t
        0x11t
        0x41t
        0x5at
        0x14t
        0x54t
        0xdt
        0x4et
        0x41t
        0x43t
        0x9t
        0x51t
        0x2t
        0xat
        0x41t
        0x5dt
        0x12t
        0x18t
        0x2t
        0x10t
        0x4t
        0x55t
        0x15t
        0x5dt
        0x5t
        0x42t
        0x7t
        0x46t
        0xet
        0x55t
        0x41t
    .end array-data

    :array_3
    .array-data 1
        0x5t
        0xdt
        0x58t
        0x4ct
        0x11t
        0x5at
        0xat
        0x3at
        0x7t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x45t
        0x4t
        0x10t
        0x59t
        0x7dt
        0x57t
        0x41t
        0x0t
        0x16t
        0x41t
        0x5bt
        0x55t
        0x54t
        0x11t
        0xbt
        0x43t
        0x14t
        0x4bt
        0x50t
        0x14t
        0x11t
        0x58t
        0x46t
        0x5ct
        0x46t
        0x45t
        0x10t
        0x59t
        0x51t
        0x19t
        0x56t
        0xat
        0xat
        0x45t
        0x46t
        0x56t
        0x59t
        0x3dt
        0x55t
        0x11t
        0x55t
        0x4dt
        0x41t
        0x17t
        0xdt
        0x53t
        0x41t
        0x4dt
        0x50t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x52t
        0x5at
        0xft
        0x4ct
        0x45t
        0xat
        0x5dt
        0x6ct
        0x50t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x43t
        0x0t
        0x46t
        0x9t
        0x7et
        0xft
        0x47t
        0x4t
        0x40t
        0x11t
        0x58t
        0xdt
        0x52t
        0x15t
        0x5dt
        0x13t
        0x17t
        0x13t
        0x56t
        0x10t
        0x47t
        0x8t
        0x45t
        0x4t
        0x40t
        0x41t
        0x46t
        0x9t
        0x52t
        0x41t
        0x50t
        0xet
        0x5ct
        0x15t
        0x45t
        0xet
        0x5ft
        0x38t
        0x3t
        0x41t
        0x56t
        0x15t
        0x47t
        0x13t
        0x5bt
        0x3t
        0x42t
        0x15t
        0x56t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x52t
        0x5bt
        0x5ct
        0x40t
        0x11t
        0xet
        0x5dt
        0x6ct
        0x3t
    .end array-data

    nop

    :array_8
    .array-data 1
        0x5bt
        0xat
        0x59t
        0x15t
        0x46t
        0x59t
        0x54t
        0x3ct
        0x6t
    .end array-data

    nop

    :array_9
    .array-data 1
        0x50t
        0x5dt
        0xct
        0x16t
        0x47t
        0x57t
        0x5ft
        0x6at
        0x50t
    .end array-data

    nop

    :array_a
    .array-data 1
        0x0t
        0x9t
        0x8t
        0x40t
        0x11t
        0x58t
        0xft
        0x3ft
        0x54t
    .end array-data

    nop

    :array_b
    .array-data 1
        0x40t
        0x53t
        0x4ct
        0x5ft
        0x7ct
        0x5et
        0x44t
        0x57t
        0x4at
        0x47t
        0x5at
        0x5ct
        0x51t
        0x46t
        0x57t
        0x45t
        0x15t
        0x42t
        0x55t
        0x43t
        0x4dt
        0x5et
        0x47t
        0x55t
        0x43t
        0x12t
        0x5at
        0x58t
        0x41t
        0x58t
        0x10t
        0x51t
        0x57t
        0x59t
        0x41t
        0x42t
        0x5ft
        0x5et
        0x60t
        0x5t
        0x15t
        0x51t
        0x5et
        0x56t
        0x18t
        0x54t
        0x5at
        0x5et
        0x44t
        0x40t
        0x57t
        0x5bt
        0x6ct
        0x2t
        0x10t
        0x54t
        0x57t
        0x45t
        0x15t
        0x53t
        0x45t
        0x50t
        0x51t
        0x54t
        0x15t
        0x72t
        0x55t
        0x48t
        0x51t
        0x52t
        0x47t
        0x43t
        0x1et
    .end array-data

    nop

    :array_c
    .array-data 1
        0x5bt
        0x59t
        0xdt
        0x41t
        0x4bt
        0xbt
        0x54t
        0x6et
        0x51t
    .end array-data

    nop

    :array_d
    .array-data 1
        0x54t
        0xct
        0xat
        0x11t
        0x43t
        0xat
        0x5bt
        0x3at
        0x56t
    .end array-data
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 5

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    cmpg-float v2, p1, v0

    if-gtz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    cmpl-float v2, p1, v1

    if-gez v2, :cond_4

    const/4 v2, 0x0

    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->mX:[F

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    move v3, v2

    :goto_1
    sub-int v2, v1, v3

    const/4 v4, 0x1

    if-le v2, v4, :cond_2

    add-int v2, v3, v1

    div-int/lit8 v2, v2, 0x2

    iget-object v4, p0, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->mX:[F

    aget v4, v4, v2

    cmpg-float v4, p1, v4

    if-gez v4, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v3, v2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->mX:[F

    aget v2, v2, v1

    iget-object v4, p0, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->mX:[F

    aget v4, v4, v3

    sub-float/2addr v2, v4

    cmpl-float v0, v2, v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->mY:[F

    aget v0, v0, v3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->mX:[F

    aget v0, v0, v3

    sub-float v0, p1, v0

    div-float/2addr v0, v2

    iget-object v2, p0, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->mY:[F

    aget v2, v2, v3

    iget-object v3, p0, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->mY:[F

    aget v1, v3, v1

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method
