.class public abstract Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;,
        Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomVarSet;,
        Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$Sort;
    }
.end annotation


# static fields
.field protected static final CURVE_OFFSET:I = 0x2

.field protected static final CURVE_PERIOD:I = 0x1

.field protected static final CURVE_VALUE:I

.field private static final TAG:Ljava/lang/String;

.field protected static VAL_2PI:F


# instance fields
.field protected count:I

.field protected last_cycle:F

.field protected last_time:J

.field protected mCache:[F

.field protected mContinue:Z

.field protected mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

.field protected mTimePoints:[I

.field protected mType:Ljava/lang/String;

.field protected mValues:[[F

.field protected mWaveShape:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "43ef8b"

    const/16 v2, 0x6d33

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->TAG:Ljava/lang/String;

    const v0, 0x40c90fdb

    sput v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->VAL_2PI:F

    return-void

    nop

    :array_0
    .array-data 1
        0x67t
        0x43t
        0x9t
        0xft
        0x56t
        0x7t
        0x67t
        0x56t
        0x11t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    const/16 v1, 0xa

    const/4 v3, 0x3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mWaveShape:I

    new-array v0, v1, [I

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mTimePoints:[I

    filled-new-array {v1, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mValues:[[F

    new-array v0, v3, [F

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mCache:[F

    iput-boolean v2, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mContinue:Z

    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->last_cycle:F

    return-void
.end method


# virtual methods
.method protected calcWave(F)F
    .locals 4

    const/high16 v3, 0x40800000    # 4.0f

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v1, 0x3f800000    # 1.0f

    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mWaveShape:I

    packed-switch v0, :pswitch_data_0

    sget v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->VAL_2PI:F

    mul-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    :goto_0
    return v0

    :pswitch_0
    mul-float v0, p1, v3

    rem-float/2addr v0, v3

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v0, v1, v0

    mul-float/2addr v0, v0

    sub-float v0, v1, v0

    goto :goto_0

    :pswitch_1
    sget v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->VAL_2PI:F

    mul-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_0

    :pswitch_2
    mul-float v0, p1, v2

    add-float/2addr v0, v1

    rem-float/2addr v0, v2

    sub-float v0, v1, v0

    goto :goto_0

    :pswitch_3
    mul-float v0, p1, v2

    add-float/2addr v0, v1

    rem-float/2addr v0, v2

    sub-float/2addr v0, v1

    goto :goto_0

    :pswitch_4
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v0, v1, v0

    goto :goto_0

    :pswitch_5
    sget v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->VAL_2PI:F

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCurveFit()Landroidx/constraintlayout/core/motion/utils/CurveFit;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    return-object v0
.end method

.method public setPoint(IFFIF)V
    .locals 4

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mTimePoints:[I

    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->count:I

    aput p1, v0, v1

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mValues:[[F

    aget-object v2, v0, v1

    const/4 v3, 0x0

    aput p2, v2, v3

    aget-object v2, v0, v1

    const/4 v3, 0x1

    aput p3, v2, v3

    aget-object v0, v0, v1

    const/4 v1, 0x2

    aput p5, v0, v1

    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mWaveShape:I

    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mWaveShape:I

    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->count:I

    return-void
.end method

.method protected setStartTime(J)V
    .locals 1

    iput-wide p1, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->last_time:J

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mType:Ljava/lang/String;

    return-void
.end method

.method public setup(I)V
    .locals 11

    const/4 v10, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->count:I

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x19

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "c98f16"

    const v4, -0x31cd30a0

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mTimePoints:[I

    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mValues:[[F

    add-int/lit8 v0, v0, -0x1

    invoke-static {v2, v4, v3, v0}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$Sort;->doubleQuickSort([I[[FII)V

    move v0, v1

    move v2, v3

    :goto_1
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mTimePoints:[I

    array-length v5, v4

    if-ge v0, v5, :cond_2

    aget v5, v4, v0

    add-int/lit8 v6, v0, -0x1

    aget v4, v4, v6

    if-eq v5, v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    if-nez v2, :cond_3

    move v2, v1

    :cond_3
    new-array v5, v2, [D

    const/4 v0, 0x3

    filled-new-array {v2, v0}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    move v2, v3

    move v4, v3

    :goto_2
    iget v6, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->count:I

    if-ge v4, v6, :cond_5

    if-lez v4, :cond_4

    iget-object v6, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mTimePoints:[I

    aget v7, v6, v4

    add-int/lit8 v8, v4, -0x1

    aget v6, v6, v8

    if-ne v7, v6, :cond_4

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    iget-object v6, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mTimePoints:[I

    aget v6, v6, v4

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    const-wide v8, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v6, v8

    aput-wide v6, v5, v2

    aget-object v6, v0, v2

    iget-object v7, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mValues:[[F

    aget-object v8, v7, v4

    aget v8, v8, v3

    float-to-double v8, v8

    aput-wide v8, v6, v3

    aget-object v6, v0, v2

    aget-object v8, v7, v4

    aget v8, v8, v1

    float-to-double v8, v8

    aput-wide v8, v6, v1

    aget-object v6, v0, v2

    aget-object v7, v7, v4

    aget v7, v7, v10

    float-to-double v8, v7

    aput-wide v8, v6, v10

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    invoke-static {p1, v5, v0}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x26t
        0x4bt
        0x4at
        0x9t
        0x43t
        0x16t
        0xdt
        0x56t
        0x18t
        0x16t
        0x5et
        0x5ft
        0xdt
        0x4dt
        0x4bt
        0x46t
        0x50t
        0x52t
        0x7t
        0x5ct
        0x5ct
        0x46t
        0x45t
        0x59t
        0x43t
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    const/4 v7, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mType:Ljava/lang/String;

    new-instance v3, Ljava/text/DecimalFormat;

    const/4 v2, 0x5

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v4, "240b01"

    invoke-static {v2, v4, v1, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    move v0, v1

    :goto_0
    iget v4, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->count:I

    if-ge v0, v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v7, [B

    const/16 v5, 0x3e

    aput-byte v5, v2, v1

    const-string v5, "e02f8d"

    const v6, -0x31203174

    invoke-static {v2, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mTimePoints:[I

    aget v2, v2, v0

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v5, "b824d0"

    invoke-static {v2, v5, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mValues:[[F

    aget-object v2, v2, v0

    invoke-virtual {v3, v2}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v5, "4327cc"

    const/16 v6, -0x1b1c

    invoke-static {v2, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2

    nop

    :array_0
    .array-data 1
        0x11t
        0x17t
        0x1et
        0x41t
        0x13t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x42t
        0x14t
        0x12t
    .end array-data

    :array_2
    .array-data 1
        0x69t
        0x13t
    .end array-data
.end method
