.class final Lcom/google/android/material/color/ViewingConditions;
.super Ljava/lang/Object;


# static fields
.field public static final DEFAULT:Lcom/google/android/material/color/ViewingConditions;


# instance fields
.field private final aw:F

.field private final c:F

.field private final fl:F

.field private final flRoot:F

.field private final n:F

.field private final nbb:F

.field private final nc:F

.field private final ncb:F

.field private final rgbD:[F

.field private final z:F


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/high16 v6, 0x42480000    # 50.0f

    invoke-static {}, Lcom/google/android/material/color/ColorUtils;->whitePointD65()[F

    move-result-object v0

    invoke-static {v6}, Lcom/google/android/material/color/ColorUtils;->yFromLstar(F)F

    move-result v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    const-wide v4, 0x404fd4bbab8b494cL    # 63.66197723675813

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    double-to-float v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    invoke-static {v0, v1, v6, v2, v3}, Lcom/google/android/material/color/ViewingConditions;->make([FFFFZ)Lcom/google/android/material/color/ViewingConditions;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/color/ViewingConditions;->DEFAULT:Lcom/google/android/material/color/ViewingConditions;

    return-void
.end method

.method private constructor <init>(FFFFFF[FFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/material/color/ViewingConditions;->n:F

    iput p2, p0, Lcom/google/android/material/color/ViewingConditions;->aw:F

    iput p3, p0, Lcom/google/android/material/color/ViewingConditions;->nbb:F

    iput p4, p0, Lcom/google/android/material/color/ViewingConditions;->ncb:F

    iput p5, p0, Lcom/google/android/material/color/ViewingConditions;->c:F

    iput p6, p0, Lcom/google/android/material/color/ViewingConditions;->nc:F

    iput-object p7, p0, Lcom/google/android/material/color/ViewingConditions;->rgbD:[F

    iput p8, p0, Lcom/google/android/material/color/ViewingConditions;->fl:F

    iput p9, p0, Lcom/google/android/material/color/ViewingConditions;->flRoot:F

    iput p10, p0, Lcom/google/android/material/color/ViewingConditions;->z:F

    return-void
.end method

.method static make([FFFFZ)Lcom/google/android/material/color/ViewingConditions;
    .locals 18

    sget-object v2, Lcom/google/android/material/color/Cam16;->XYZ_TO_CAM16RGB:[[F

    const/4 v3, 0x0

    aget v3, p0, v3

    const/4 v4, 0x0

    aget-object v4, v2, v4

    const/4 v5, 0x0

    aget v4, v4, v5

    mul-float/2addr v3, v4

    const/4 v4, 0x1

    aget v4, p0, v4

    const/4 v5, 0x0

    aget-object v5, v2, v5

    const/4 v6, 0x1

    aget v5, v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    const/4 v4, 0x2

    aget v4, p0, v4

    const/4 v5, 0x0

    aget-object v5, v2, v5

    const/4 v6, 0x2

    aget v5, v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v4, v3

    const/4 v3, 0x0

    aget v3, p0, v3

    const/4 v5, 0x1

    aget-object v5, v2, v5

    const/4 v6, 0x0

    aget v5, v5, v6

    mul-float/2addr v3, v5

    const/4 v5, 0x1

    aget v5, p0, v5

    const/4 v6, 0x1

    aget-object v6, v2, v6

    const/4 v7, 0x1

    aget v6, v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v3, v5

    const/4 v5, 0x2

    aget v5, p0, v5

    const/4 v6, 0x1

    aget-object v6, v2, v6

    const/4 v7, 0x2

    aget v6, v6, v7

    mul-float/2addr v5, v6

    add-float v6, v3, v5

    const/4 v3, 0x0

    aget v3, p0, v3

    const/4 v5, 0x2

    aget-object v5, v2, v5

    const/4 v7, 0x0

    aget v5, v5, v7

    mul-float/2addr v3, v5

    const/4 v5, 0x1

    aget v5, p0, v5

    const/4 v7, 0x2

    aget-object v7, v2, v7

    const/4 v8, 0x1

    aget v7, v7, v8

    mul-float/2addr v5, v7

    add-float/2addr v3, v5

    const/4 v5, 0x2

    aget v5, p0, v5

    const/4 v7, 0x2

    aget-object v2, v2, v7

    const/4 v7, 0x2

    aget v2, v2, v7

    mul-float/2addr v2, v5

    add-float v11, v3, v2

    const/high16 v2, 0x41200000    # 10.0f

    div-float v2, p3, v2

    const v3, 0x3f4ccccd    # 0.8f

    add-float v8, v2, v3

    float-to-double v2, v8

    const-wide v12, 0x3feccccccccccccdL    # 0.9

    cmpl-double v2, v2, v12

    if-ltz v2, :cond_1

    const v2, 0x3f170a3d    # 0.59f

    const v3, 0x3f30a3d7    # 0.69f

    const v5, 0x3f666666    # 0.9f

    sub-float v5, v8, v5

    const/high16 v7, 0x41200000    # 10.0f

    mul-float/2addr v5, v7

    invoke-static {v2, v3, v5}, Lcom/google/android/material/color/MathUtils;->lerp(FFF)F

    move-result v7

    :goto_0
    if-eqz p4, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_1
    float-to-double v12, v2

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, v12, v14

    if-lez v3, :cond_3

    const/high16 v2, 0x3f800000    # 1.0f

    :cond_0
    :goto_2
    const/4 v3, 0x3

    new-array v9, v3, [F

    const/4 v3, 0x0

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v5, v4

    mul-float/2addr v5, v2

    const/high16 v10, 0x3f800000    # 1.0f

    add-float/2addr v5, v10

    sub-float/2addr v5, v2

    aput v5, v9, v3

    const/4 v3, 0x1

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    mul-float/2addr v5, v2

    const/high16 v10, 0x3f800000    # 1.0f

    add-float/2addr v5, v10

    sub-float/2addr v5, v2

    aput v5, v9, v3

    const/4 v3, 0x2

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v5, v11

    mul-float/2addr v5, v2

    const/high16 v10, 0x3f800000    # 1.0f

    add-float/2addr v5, v10

    sub-float v2, v5, v2

    aput v2, v9, v3

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x40a00000    # 5.0f

    mul-float v3, v3, p1

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v3, v5

    div-float/2addr v2, v3

    mul-float v3, v2, v2

    mul-float/2addr v3, v2

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v2

    move/from16 v0, p1

    float-to-double v12, v0

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    mul-float v2, v2, p1

    const v5, 0x3dcccccd    # 0.1f

    mul-float/2addr v5, v3

    mul-float/2addr v3, v5

    const-wide/high16 v14, 0x4014000000000000L    # 5.0

    mul-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v12

    double-to-float v5, v12

    mul-float/2addr v3, v5

    add-float v10, v2, v3

    invoke-static/range {p2 .. p2}, Lcom/google/android/material/color/ColorUtils;->yFromLstar(F)F

    move-result v2

    const/4 v3, 0x1

    aget v3, p0, v3

    div-float v3, v2, v3

    float-to-double v12, v3

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v12, v12

    const v2, 0x3f39999a    # 0.725f

    float-to-double v14, v3

    const-wide v16, 0x3fc999999999999aL    # 0.2

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    double-to-float v5, v14

    div-float v5, v2, v5

    const/4 v2, 0x3

    new-array v2, v2, [F

    const/4 v13, 0x0

    aget v13, v9, v13

    mul-float/2addr v13, v10

    mul-float/2addr v4, v13

    float-to-double v14, v4

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    const/4 v4, 0x0

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    div-double v14, v14, v16

    const-wide v16, 0x3fdae147ae147ae1L    # 0.42

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    double-to-float v13, v14

    aput v13, v2, v4

    const/4 v4, 0x1

    aget v4, v9, v4

    mul-float/2addr v4, v10

    mul-float/2addr v4, v6

    float-to-double v14, v4

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    const/4 v4, 0x1

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    div-double v14, v14, v16

    const-wide v16, 0x3fdae147ae147ae1L    # 0.42

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    double-to-float v6, v14

    aput v6, v2, v4

    const/4 v4, 0x2

    aget v4, v9, v4

    mul-float/2addr v4, v10

    mul-float/2addr v4, v11

    float-to-double v14, v4

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    const/4 v4, 0x2

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    div-double v14, v14, v16

    const-wide v16, 0x3fdae147ae147ae1L    # 0.42

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    double-to-float v6, v14

    aput v6, v2, v4

    const/4 v4, 0x3

    new-array v4, v4, [F

    const/4 v6, 0x0

    const/4 v11, 0x0

    aget v11, v2, v11

    const/high16 v13, 0x43c80000    # 400.0f

    mul-float/2addr v11, v13

    const/4 v13, 0x0

    aget v13, v2, v13

    const v14, 0x41d90a3d    # 27.13f

    add-float/2addr v13, v14

    div-float/2addr v11, v13

    aput v11, v4, v6

    const/4 v6, 0x1

    const/4 v11, 0x1

    aget v11, v2, v11

    const/high16 v13, 0x43c80000    # 400.0f

    mul-float/2addr v11, v13

    const/4 v13, 0x1

    aget v13, v2, v13

    const v14, 0x41d90a3d    # 27.13f

    add-float/2addr v13, v14

    div-float/2addr v11, v13

    aput v11, v4, v6

    const/4 v6, 0x2

    const/4 v11, 0x2

    aget v11, v2, v11

    const/high16 v13, 0x43c80000    # 400.0f

    mul-float/2addr v11, v13

    const/4 v13, 0x2

    aget v2, v2, v13

    const v13, 0x41d90a3d    # 27.13f

    add-float/2addr v2, v13

    div-float v2, v11, v2

    aput v2, v4, v6

    new-instance v2, Lcom/google/android/material/color/ViewingConditions;

    const/4 v6, 0x0

    aget v6, v4, v6

    const/high16 v11, 0x40000000    # 2.0f

    mul-float/2addr v6, v11

    const/4 v11, 0x1

    aget v11, v4, v11

    add-float/2addr v6, v11

    const/4 v11, 0x2

    aget v4, v4, v11

    const v11, 0x3d4ccccd    # 0.05f

    mul-float/2addr v4, v11

    add-float/2addr v4, v6

    mul-float/2addr v4, v5

    float-to-double v14, v10

    const-wide/high16 v16, 0x3fd0000000000000L    # 0.25

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    double-to-float v11, v14

    const v6, 0x3fbd70a4    # 1.48f

    add-float/2addr v12, v6

    move v6, v5

    invoke-direct/range {v2 .. v12}, Lcom/google/android/material/color/ViewingConditions;-><init>(FFFFFF[FFFF)V

    return-object v2

    :cond_1
    const v2, 0x3f066666    # 0.525f

    const v3, 0x3f170a3d    # 0.59f

    const v5, 0x3f4ccccd    # 0.8f

    sub-float v5, v8, v5

    const/high16 v7, 0x41200000    # 10.0f

    mul-float/2addr v5, v7

    invoke-static {v2, v3, v5}, Lcom/google/android/material/color/MathUtils;->lerp(FFF)F

    move-result v7

    goto/16 :goto_0

    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    move/from16 v0, p1

    neg-float v3, v0

    const/high16 v5, 0x42280000    # 42.0f

    sub-float/2addr v3, v5

    const/high16 v5, 0x42b80000    # 92.0f

    div-float/2addr v3, v5

    float-to-double v12, v3

    invoke-static {v12, v13}, Ljava/lang/Math;->exp(D)D

    move-result-wide v12

    double-to-float v3, v12

    const v5, 0x3e8e38e4

    mul-float/2addr v3, v5

    sub-float/2addr v2, v3

    mul-float/2addr v2, v8

    goto/16 :goto_1

    :cond_3
    float-to-double v12, v2

    const-wide/16 v14, 0x0

    cmpg-double v3, v12, v14

    if-gez v3, :cond_0

    const/4 v2, 0x0

    goto/16 :goto_2
.end method


# virtual methods
.method public getAw()F
    .locals 1

    iget v0, p0, Lcom/google/android/material/color/ViewingConditions;->aw:F

    return v0
.end method

.method getC()F
    .locals 1

    iget v0, p0, Lcom/google/android/material/color/ViewingConditions;->c:F

    return v0
.end method

.method getFl()F
    .locals 1

    iget v0, p0, Lcom/google/android/material/color/ViewingConditions;->fl:F

    return v0
.end method

.method public getFlRoot()F
    .locals 1

    iget v0, p0, Lcom/google/android/material/color/ViewingConditions;->flRoot:F

    return v0
.end method

.method public getN()F
    .locals 1

    iget v0, p0, Lcom/google/android/material/color/ViewingConditions;->n:F

    return v0
.end method

.method public getNbb()F
    .locals 1

    iget v0, p0, Lcom/google/android/material/color/ViewingConditions;->nbb:F

    return v0
.end method

.method getNc()F
    .locals 1

    iget v0, p0, Lcom/google/android/material/color/ViewingConditions;->nc:F

    return v0
.end method

.method getNcb()F
    .locals 1

    iget v0, p0, Lcom/google/android/material/color/ViewingConditions;->ncb:F

    return v0
.end method

.method public getRgbD()[F
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/color/ViewingConditions;->rgbD:[F

    return-object v0
.end method

.method getZ()F
    .locals 1

    iget v0, p0, Lcom/google/android/material/color/ViewingConditions;->z:F

    return v0
.end method
