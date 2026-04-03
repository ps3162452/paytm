.class public Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/constraintlayout/core/motion/utils/StopEngine;


# static fields
.field private static final UNSET:D = 1.7976931348623157E308


# instance fields
.field private mBoundaryMode:I

.field mDamping:D

.field private mInitialized:Z

.field private mLastTime:F

.field private mLastVelocity:D

.field private mMass:F

.field private mPos:F

.field private mStiffness:D

.field private mStopThreshold:F

.field private mTargetPos:D

.field private mV:F


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mDamping:D

    iput-boolean v2, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mInitialized:Z

    iput v2, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mBoundaryMode:I

    return-void
.end method

.method private compute(D)V
    .locals 25

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mStiffness:D

    move-object/from16 v0, p0

    iget-wide v6, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mDamping:D

    move-object/from16 v0, p0

    iget-wide v2, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mStiffness:D

    move-object/from16 v0, p0

    iget v8, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mMass:F

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    const-wide/high16 v10, 0x4022000000000000L    # 9.0

    div-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double v2, v2, p1

    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    mul-double/2addr v2, v8

    div-double v2, v10, v2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v8

    double-to-int v3, v2

    int-to-double v8, v3

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    div-double v8, p1, v8

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    move-object/from16 v0, p0

    iget v10, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mPos:F

    float-to-double v12, v10

    move-object/from16 v0, p0

    iget-wide v14, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mTargetPos:D

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    neg-double v0, v4

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget v11, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mV:F

    float-to-double v0, v11

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->isNaN(D)Z

    move-object/from16 v0, p0

    iget v0, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mMass:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v12, v14

    mul-double v12, v12, v16

    mul-double v16, v18, v6

    sub-double v12, v12, v16

    div-double v12, v12, v22

    float-to-double v0, v11

    move-wide/from16 v16, v0

    mul-double/2addr v12, v8

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    div-double v12, v12, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->isNaN(D)Z

    add-double v12, v12, v16

    float-to-double v0, v10

    move-wide/from16 v16, v0

    mul-double v18, v8, v12

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v18, v18, v22

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->isNaN(D)Z

    add-double v16, v16, v18

    sub-double v14, v16, v14

    neg-double v14, v14

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->isNaN(D)Z

    mul-double/2addr v14, v4

    mul-double/2addr v12, v6

    sub-double v12, v14, v12

    div-double v12, v12, v16

    mul-double/2addr v12, v8

    float-to-double v14, v11

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v16, v12, v16

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    float-to-double v0, v11

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->isNaN(D)Z

    add-double v12, v12, v18

    double-to-float v11, v12

    move-object/from16 v0, p0

    iput v11, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mV:F

    float-to-double v12, v10

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    add-double v14, v14, v16

    mul-double/2addr v14, v8

    add-double/2addr v12, v14

    double-to-float v10, v12

    move-object/from16 v0, p0

    iput v10, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mPos:F

    move-object/from16 v0, p0

    iget v12, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mBoundaryMode:I

    if-lez v12, :cond_1

    const/4 v13, 0x0

    cmpg-float v13, v10, v13

    if-gez v13, :cond_0

    and-int/lit8 v13, v12, 0x1

    const/4 v14, 0x1

    if-ne v13, v14, :cond_0

    neg-float v10, v10

    move-object/from16 v0, p0

    iput v10, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mPos:F

    neg-float v10, v11

    move-object/from16 v0, p0

    iput v10, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mV:F

    :cond_0
    move-object/from16 v0, p0

    iget v10, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mPos:F

    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v11, v10, v11

    if-lez v11, :cond_1

    and-int/lit8 v11, v12, 0x2

    const/4 v12, 0x2

    if-ne v11, v12, :cond_1

    const/high16 v11, 0x40000000    # 2.0f

    sub-float v10, v11, v10

    move-object/from16 v0, p0

    iput v10, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mPos:F

    move-object/from16 v0, p0

    iget v10, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mV:F

    neg-float v10, v10

    move-object/from16 v0, p0

    iput v10, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mV:F

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;F)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAcceleration()F
    .locals 10

    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mStiffness:D

    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mDamping:D

    iget v4, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mPos:F

    float-to-double v4, v4

    iget-wide v6, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mTargetPos:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    neg-double v0, v0

    iget v8, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mV:F

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v4, v6

    mul-double/2addr v0, v4

    mul-double/2addr v2, v8

    sub-double/2addr v0, v2

    double-to-float v0, v0

    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mMass:F

    div-float/2addr v0, v1

    return v0
.end method

.method public getInterpolation(F)F
    .locals 2

    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mLastTime:F

    sub-float v0, p1, v0

    float-to-double v0, v0

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->compute(D)V

    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mLastTime:F

    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mPos:F

    return v0
.end method

.method public getVelocity()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getVelocity(F)F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mV:F

    return v0
.end method

.method public isStopped()Z
    .locals 8

    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mPos:F

    float-to-double v0, v0

    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mTargetPos:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v0, v2

    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mStiffness:D

    iget v4, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mV:F

    float-to-double v4, v4

    iget v6, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mMass:F

    float-to-double v6, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double/2addr v4, v4

    mul-double/2addr v4, v6

    mul-double v6, v2, v0

    mul-double/2addr v0, v6

    add-double/2addr v0, v4

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iget v2, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mStopThreshold:F

    float-to-double v2, v2

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method log(Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    aget-object v0, v0, v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-array v2, v7, [B

    fill-array-data v2, :array_0

    const-string v3, "fb7829"

    const-wide v4, 0x41d20970b0800000L    # 1.210434242E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v6, [B

    const/4 v3, 0x0

    const/16 v4, 0xf

    aput-byte v4, v2, v3

    const-string v3, "546e58"

    const v4, -0x3151da73

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-array v2, v7, [B

    fill-array-data v2, :array_1

    const-string v3, "1076d3"

    const/16 v4, 0x7bb2

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v2, "652f3f"

    const/16 v3, 0x2c8d

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 1
        0x48t
        0x4at
    .end array-data

    nop

    :array_1
    .array-data 1
        0x18t
        0x10t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x1et
        0x1ct
        0x12t
    .end array-data
.end method

.method public springConfig(FFFFFFFI)V
    .locals 2

    float-to-double v0, p2

    iput-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mTargetPos:D

    float-to-double v0, p6

    iput-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mDamping:D

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mInitialized:Z

    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mPos:F

    float-to-double v0, p3

    iput-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mLastVelocity:D

    float-to-double v0, p5

    iput-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mStiffness:D

    iput p4, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mMass:F

    iput p7, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mStopThreshold:F

    iput p8, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mBoundaryMode:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mLastTime:F

    return-void
.end method
