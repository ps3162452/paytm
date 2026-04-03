.class public Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;
.super Ljava/lang/Object;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field mDRotate:F

.field mDScaleX:F

.field mDScaleY:F

.field mDTranslateX:F

.field mDTranslateY:F

.field mRotate:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "2c5623"

    const-wide v2, -0x3e36909b3c000000L    # -8.53461384E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->TAG:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x64t
        0x6t
        0x59t
        0x59t
        0x51t
        0x5at
        0x46t
        0x1at
        0x78t
        0x57t
        0x46t
        0x41t
        0x5bt
        0x1bt
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransform(FFII[F)V
    .locals 22

    const/4 v2, 0x0

    aget v2, p5, v2

    const/4 v3, 0x1

    aget v3, p5, v3

    const/high16 v4, 0x3f000000    # 0.5f

    sub-float v4, p1, v4

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    sub-float v5, p2, v5

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDTranslateX:F

    move-object/from16 v0, p0

    iget v7, v0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDTranslateY:F

    move-object/from16 v0, p0

    iget v8, v0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDScaleX:F

    move-object/from16 v0, p0

    iget v9, v0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDScaleY:F

    move-object/from16 v0, p0

    iget v10, v0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mRotate:F

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    double-to-float v10, v10

    move-object/from16 v0, p0

    iget v11, v0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDRotate:F

    float-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    double-to-float v11, v12

    move/from16 v0, p3

    neg-int v12, v0

    int-to-float v12, v12

    mul-float/2addr v12, v4

    float-to-double v12, v12

    float-to-double v14, v10

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, v5

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    float-to-double v0, v10

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->isNaN(D)Z

    mul-double/2addr v12, v14

    mul-double v14, v16, v18

    sub-double/2addr v12, v14

    double-to-float v12, v12

    move/from16 v0, p3

    int-to-float v13, v0

    mul-float/2addr v13, v4

    float-to-double v14, v13

    float-to-double v0, v10

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    move/from16 v0, p4

    int-to-float v13, v0

    mul-float/2addr v13, v5

    float-to-double v0, v13

    move-wide/from16 v18, v0

    float-to-double v0, v10

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v14, v14, v16

    mul-double v16, v18, v20

    sub-double v14, v14, v16

    double-to-float v10, v14

    const/4 v13, 0x0

    add-float/2addr v2, v6

    mul-float/2addr v4, v8

    add-float/2addr v2, v4

    mul-float v4, v12, v11

    add-float/2addr v2, v4

    aput v2, p5, v13

    const/4 v2, 0x1

    add-float/2addr v3, v7

    mul-float v4, v9, v5

    add-float/2addr v3, v4

    mul-float v4, v10, v11

    add-float/2addr v3, v4

    aput v3, p5, v2

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDRotate:F

    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDTranslateY:F

    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDTranslateX:F

    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDScaleY:F

    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDScaleX:F

    return-void
.end method

.method public setRotationVelocity(Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;F)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->getSlope(F)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDRotate:F

    :cond_0
    return-void
.end method

.method public setRotationVelocity(Landroidx/constraintlayout/core/motion/utils/SplineSet;F)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->getSlope(F)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDRotate:F

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->get(F)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mRotate:F

    :cond_0
    return-void
.end method

.method public setScaleVelocity(Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;F)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p3}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->getSlope(F)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDScaleX:F

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2, p3}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->getSlope(F)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDScaleY:F

    :cond_1
    return-void
.end method

.method public setScaleVelocity(Landroidx/constraintlayout/core/motion/utils/SplineSet;Landroidx/constraintlayout/core/motion/utils/SplineSet;F)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p3}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->getSlope(F)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDScaleX:F

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2, p3}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->getSlope(F)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDScaleY:F

    :cond_1
    return-void
.end method

.method public setTranslationVelocity(Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;F)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p3}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->getSlope(F)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDTranslateX:F

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2, p3}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->getSlope(F)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDTranslateY:F

    :cond_1
    return-void
.end method

.method public setTranslationVelocity(Landroidx/constraintlayout/core/motion/utils/SplineSet;Landroidx/constraintlayout/core/motion/utils/SplineSet;F)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p3}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->getSlope(F)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDTranslateX:F

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2, p3}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->getSlope(F)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDTranslateY:F

    :cond_1
    return-void
.end method
