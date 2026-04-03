.class public Landroidx/constraintlayout/core/motion/utils/Oscillator;
.super Ljava/lang/Object;


# static fields
.field public static final BOUNCE:I = 0x6

.field public static final COS_WAVE:I = 0x5

.field public static final CUSTOM:I = 0x7

.field public static final REVERSE_SAW_WAVE:I = 0x4

.field public static final SAW_WAVE:I = 0x3

.field public static final SIN_WAVE:I = 0x0

.field public static final SQUARE_WAVE:I = 0x1

.field public static TAG:Ljava/lang/String; = null

.field public static final TRIANGLE_WAVE:I = 0x2


# instance fields
.field PI2:D

.field mArea:[D

.field mCustomCurve:Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;

.field mCustomType:Ljava/lang/String;

.field private mNormalized:Z

.field mPeriod:[F

.field mPosition:[D

.field mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "616ee9"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->TAG:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x79t
        0x42t
        0x55t
        0xct
        0x9t
        0x55t
        0x57t
        0x45t
        0x59t
        0x17t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v2, [F

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    new-array v0, v2, [D

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    const-wide v0, 0x401921fb54442d18L    # 6.283185307179586

    iput-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->PI2:D

    iput-boolean v2, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mNormalized:Z

    return-void
.end method


# virtual methods
.method public addPoint(DF)V
    .locals 5

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    array-length v0, v0

    add-int/lit8 v1, v0, 0x1

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->binarySearch([DD)I

    move-result v0

    if-gez v0, :cond_0

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v2

    iput-object v2, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    iput-object v2, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    new-array v2, v1, [D

    iput-object v2, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mArea:[D

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    add-int/lit8 v3, v0, 0x1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-static {v2, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    aput-wide p1, v1, v0

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    aput p3, v1, v0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mNormalized:Z

    return-void
.end method

.method getDP(D)D
    .locals 11

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-gtz v2, :cond_2

    const-wide p1, 0x3ee4f8b588e368f1L    # 1.0E-5

    :cond_0
    :goto_0
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    invoke-static {v2, p1, p2}, Ljava/util/Arrays;->binarySearch([DD)I

    move-result v2

    if-lez v2, :cond_3

    :cond_1
    :goto_1
    return-wide v0

    :cond_2
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p1, v2

    if-ltz v2, :cond_0

    const-wide p1, 0x3feffffde7210be9L    # 0.999999

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_1

    neg-int v0, v2

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    aget v2, v1, v0

    add-int/lit8 v3, v0, -0x1

    aget v3, v1, v3

    sub-float/2addr v2, v3

    float-to-double v2, v2

    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    aget-wide v6, v4, v0

    add-int/lit8 v5, v0, -0x1

    aget-wide v8, v4, v5

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v6, v8

    div-double/2addr v2, v6

    add-int/lit8 v5, v0, -0x1

    aget v1, v1, v5

    float-to-double v6, v1

    add-int/lit8 v0, v0, -0x1

    aget-wide v0, v4, v0

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v2, p1

    mul-double/2addr v0, v2

    sub-double v0, v6, v0

    add-double/2addr v0, v4

    goto :goto_1
.end method

.method getP(D)D
    .locals 13

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/16 v0, 0x0

    cmpg-double v4, p1, v0

    if-gez v4, :cond_1

    move-wide p1, v0

    :cond_0
    :goto_0
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    invoke-static {v4, p1, p2}, Ljava/util/Arrays;->binarySearch([DD)I

    move-result v4

    if-lez v4, :cond_2

    :goto_1
    return-wide v2

    :cond_1
    cmpl-double v4, p1, v2

    if-lez v4, :cond_0

    move-wide p1, v2

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_3

    neg-int v0, v4

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    aget v2, v1, v0

    add-int/lit8 v3, v0, -0x1

    aget v3, v1, v3

    sub-float/2addr v2, v3

    float-to-double v2, v2

    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    aget-wide v6, v4, v0

    add-int/lit8 v5, v0, -0x1

    aget-wide v8, v4, v5

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v6, v8

    div-double/2addr v2, v6

    iget-object v5, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mArea:[D

    add-int/lit8 v6, v0, -0x1

    aget-wide v6, v5, v6

    add-int/lit8 v5, v0, -0x1

    aget v1, v1, v5

    float-to-double v8, v1

    add-int/lit8 v1, v0, -0x1

    aget-wide v10, v4, v1

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double/2addr v10, v2

    sub-double/2addr v8, v10

    add-int/lit8 v1, v0, -0x1

    aget-wide v10, v4, v1

    sub-double v10, p1, v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    mul-double v8, p1, p1

    add-int/lit8 v1, v0, -0x1

    aget-wide v10, v4, v1

    add-int/lit8 v0, v0, -0x1

    aget-wide v0, v4, v0

    mul-double/2addr v0, v10

    sub-double v0, v8, v0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    add-double v2, v6, v0

    goto :goto_1

    :cond_3
    move-wide v2, v0

    goto :goto_1
.end method

.method public getSlope(DDD)D
    .locals 9

    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/Oscillator;->getP(D)D

    move-result-wide v0

    add-double/2addr v0, p3

    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/Oscillator;->getDP(D)D

    move-result-wide v2

    add-double/2addr v2, p5

    iget v4, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mType:I

    packed-switch v4, :pswitch_data_0

    iget-wide v4, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->PI2:D

    mul-double/2addr v2, v4

    mul-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    :goto_0
    return-wide v0

    :pswitch_0
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mCustomCurve:Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    rem-double/2addr v0, v4

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->getSlope(DI)D

    move-result-wide v0

    goto :goto_0

    :pswitch_1
    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    mul-double/2addr v0, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    add-double/2addr v0, v4

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    rem-double/2addr v0, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    sub-double/2addr v0, v4

    mul-double/2addr v0, v2

    goto :goto_0

    :pswitch_2
    iget-wide v4, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->PI2:D

    neg-double v6, v4

    mul-double/2addr v2, v6

    mul-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    goto :goto_0

    :pswitch_3
    neg-double v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    goto :goto_0

    :pswitch_4
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    goto :goto_0

    :pswitch_5
    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    mul-double/2addr v0, v4

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    add-double/2addr v0, v4

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    rem-double/2addr v0, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    sub-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->signum(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    goto :goto_0

    :pswitch_6
    const-wide/16 v0, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getValue(DD)D
    .locals 11

    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/Oscillator;->getP(D)D

    move-result-wide v0

    add-double/2addr v0, p3

    iget v2, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mType:I

    packed-switch v2, :pswitch_data_0

    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->PI2:D

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    :goto_0
    return-wide v0

    :pswitch_0
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mCustomCurve:Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;

    rem-double/2addr v0, v4

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->getPos(DI)D

    move-result-wide v0

    goto :goto_0

    :pswitch_1
    mul-double/2addr v0, v8

    rem-double/2addr v0, v8

    sub-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    sub-double v0, v4, v0

    mul-double/2addr v0, v0

    sub-double v0, v4, v0

    goto :goto_0

    :pswitch_2
    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->PI2:D

    add-double/2addr v0, p3

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    goto :goto_0

    :pswitch_3
    mul-double/2addr v0, v6

    add-double/2addr v0, v4

    rem-double/2addr v0, v6

    sub-double v0, v4, v0

    goto :goto_0

    :pswitch_4
    mul-double/2addr v0, v6

    add-double/2addr v0, v4

    rem-double/2addr v0, v6

    sub-double/2addr v0, v4

    goto :goto_0

    :pswitch_5
    mul-double/2addr v0, v8

    add-double/2addr v0, v4

    rem-double/2addr v0, v8

    sub-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    sub-double v0, v4, v0

    goto :goto_0

    :pswitch_6
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    rem-double/2addr v0, v4

    sub-double v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->signum(D)D

    move-result-wide v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public normalize()V
    .locals 12

    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    array-length v6, v1

    if-ge v0, v6, :cond_0

    aget v1, v1, v0

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    array-length v6, v1

    if-ge v0, v6, :cond_1

    add-int/lit8 v6, v0, -0x1

    aget v6, v1, v6

    aget v1, v1, v0

    add-float/2addr v1, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v1, v6

    iget-object v6, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    aget-wide v8, v6, v0

    add-int/lit8 v7, v0, -0x1

    aget-wide v6, v6, v7

    float-to-double v10, v1

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v6, v8, v6

    mul-double/2addr v6, v10

    add-double/2addr v4, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    array-length v6, v1

    if-ge v0, v6, :cond_2

    aget v6, v1, v0

    float-to-double v6, v6

    div-double v8, v2, v4

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double/2addr v6, v8

    double-to-float v6, v6

    aput v6, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mArea:[D

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    const/4 v0, 0x1

    :goto_3
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    array-length v2, v1

    if-ge v0, v2, :cond_3

    add-int/lit8 v2, v0, -0x1

    aget v2, v1, v2

    aget v1, v1, v0

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    aget-wide v4, v2, v0

    add-int/lit8 v3, v0, -0x1

    aget-wide v2, v2, v3

    iget-object v6, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mArea:[D

    add-int/lit8 v7, v0, -0x1

    aget-wide v8, v6, v7

    float-to-double v10, v1

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v2, v4, v2

    mul-double/2addr v2, v10

    add-double/2addr v2, v8

    aput-wide v2, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mNormalized:Z

    return-void
.end method

.method public setType(ILjava/lang/String;)V
    .locals 1

    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mType:I

    iput-object p2, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mCustomType:Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-static {p2}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->buildWave(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mCustomCurve:Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "052676"

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    invoke-static {v1}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "bb3677"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x40t
        0x5at
        0x41t
        0x16t
        0xat
    .end array-data

    nop

    :array_1
    .array-data 1
        0x42t
        0x12t
        0x56t
        0x44t
        0x5et
        0x58t
        0x6t
        0x5ft
    .end array-data
.end method
