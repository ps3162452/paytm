.class public Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;
.super Landroidx/constraintlayout/core/motion/utils/CurveFit;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mExtrapolate:Z

.field mSlopeTemp:[D

.field private mT:[D

.field private mTotalLength:D

.field private mY:[[D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "323eb5"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->TAG:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x7ft
        0x5bt
        0x5dt
        0x0t
        0x3t
        0x47t
        0x70t
        0x47t
        0x41t
        0x13t
        0x7t
        0x73t
        0x5at
        0x46t
    .end array-data
.end method

.method public constructor <init>([D[[D)V
    .locals 11

    invoke-direct {p0}, Landroidx/constraintlayout/core/motion/utils/CurveFit;-><init>()V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mTotalLength:D

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mExtrapolate:Z

    array-length v0, p1

    const/4 v0, 0x0

    aget-object v0, p2, v0

    array-length v0, v0

    new-array v1, v0, [D

    iput-object v1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mSlopeTemp:[D

    iput-object p1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    iput-object p2, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v0, 0x0

    const/4 v6, 0x0

    move-wide v8, v4

    move v10, v6

    move-wide v4, v2

    :goto_0
    array-length v2, p1

    if-ge v10, v2, :cond_0

    aget-object v2, p2, v10

    const/4 v3, 0x0

    aget-wide v6, v2, v3

    aget-object v2, p2, v10

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    if-lez v10, :cond_2

    sub-double v4, v6, v4

    sub-double v0, v2, v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    add-double/2addr v0, v8

    :goto_1
    add-int/lit8 v4, v10, 0x1

    move-wide v8, v0

    move v10, v4

    move-wide v0, v2

    move-wide v4, v6

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mTotalLength:D

    :cond_1
    return-void

    :cond_2
    move-wide v0, v8

    goto :goto_1
.end method

.method private getLength2D(D)D
    .locals 21

    move-object/from16 v0, p0

    iget-wide v2, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mTotalLength:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x0

    :cond_0
    :goto_0
    return-wide v2

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    array-length v14, v2

    const/4 v3, 0x0

    aget-wide v4, v2, v3

    cmpg-double v3, p1, v4

    if-gtz v3, :cond_2

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v14, -0x1

    aget-wide v2, v2, v3

    cmpl-double v2, p1, v2

    if-ltz v2, :cond_3

    move-object/from16 v0, p0

    iget-wide v2, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mTotalLength:D

    goto :goto_0

    :cond_3
    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    move-wide v10, v6

    move-wide v6, v4

    move v4, v2

    move-wide v2, v8

    :goto_1
    add-int/lit8 v5, v14, -0x1

    if-ge v4, v5, :cond_6

    move-object/from16 v0, p0

    iget-object v5, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v8, v5, v4

    const/4 v9, 0x0

    aget-wide v12, v8, v9

    aget-object v5, v5, v4

    const/4 v8, 0x1

    aget-wide v8, v5, v8

    if-lez v4, :cond_4

    sub-double v10, v12, v10

    sub-double v6, v8, v6

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    add-double/2addr v2, v6

    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    aget-wide v6, v5, v4

    cmpl-double v6, p1, v6

    if-eqz v6, :cond_0

    add-int/lit8 v6, v4, 0x1

    aget-wide v6, v5, v6

    cmpg-double v6, p1, v6

    if-gez v6, :cond_5

    add-int/lit8 v6, v4, 0x1

    aget-wide v6, v5, v6

    aget-wide v10, v5, v4

    aget-wide v14, v5, v4

    sub-double v14, p1, v14

    sub-double/2addr v6, v10

    div-double v6, v14, v6

    move-object/from16 v0, p0

    iget-object v5, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v10, v5, v4

    const/4 v11, 0x0

    aget-wide v10, v10, v11

    add-int/lit8 v14, v4, 0x1

    aget-object v14, v5, v14

    const/4 v15, 0x0

    aget-wide v14, v14, v15

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    sub-double v16, v16, v6

    aget-object v18, v5, v4

    const/16 v19, 0x1

    aget-wide v18, v18, v19

    mul-double v16, v16, v18

    add-int/lit8 v4, v4, 0x1

    aget-object v4, v5, v4

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    mul-double/2addr v4, v6

    add-double v4, v4, v16

    sub-double v4, v8, v4

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v8, v6

    mul-double/2addr v8, v10

    mul-double/2addr v6, v14

    add-double/2addr v6, v8

    sub-double v6, v12, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v4, v4, 0x1

    move-wide v6, v8

    move-wide v10, v12

    goto :goto_1

    :cond_6
    const-wide/16 v2, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public getPos(DI)D
    .locals 9

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    array-length v2, v1

    iget-boolean v3, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mExtrapolate:Z

    if-eqz v3, :cond_1

    aget-wide v4, v1, v0

    cmpg-double v3, p1, v4

    if-gtz v3, :cond_0

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v2, v2, v0

    aget-wide v2, v2, p3

    aget-wide v4, v1, v0

    sub-double v4, p1, v4

    aget-wide v0, v1, v0

    invoke-virtual {p0, v0, v1, p3}, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->getSlope(DI)D

    move-result-wide v0

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_0
    add-int/lit8 v3, v2, -0x1

    aget-wide v4, v1, v3

    cmpl-double v3, p1, v4

    if-ltz v3, :cond_4

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    add-int/lit8 v3, v2, -0x1

    aget-object v0, v0, v3

    aget-wide v4, v0, p3

    add-int/lit8 v0, v2, -0x1

    aget-wide v6, v1, v0

    sub-double v6, p1, v6

    add-int/lit8 v0, v2, -0x1

    aget-wide v0, v1, v0

    invoke-virtual {p0, v0, v1, p3}, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->getSlope(DI)D

    move-result-wide v0

    mul-double/2addr v0, v6

    add-double/2addr v0, v4

    goto :goto_0

    :cond_1
    aget-wide v4, v1, v0

    cmpg-double v3, p1, v4

    if-gtz v3, :cond_2

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v0, v1, v0

    aget-wide v0, v0, p3

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v2, -0x1

    aget-wide v4, v1, v3

    cmpl-double v1, p1, v4

    if-ltz v1, :cond_4

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    add-int/lit8 v1, v2, -0x1

    aget-object v0, v0, v1

    aget-wide v0, v0, p3

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    :cond_4
    add-int/lit8 v1, v2, -0x1

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    aget-wide v4, v1, v0

    cmpl-double v3, p1, v4

    if-nez v3, :cond_5

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v0, v1, v0

    aget-wide v0, v0, p3

    goto :goto_0

    :cond_5
    add-int/lit8 v3, v0, 0x1

    aget-wide v4, v1, v3

    cmpg-double v3, p1, v4

    if-gez v3, :cond_3

    add-int/lit8 v2, v0, 0x1

    aget-wide v2, v1, v2

    aget-wide v4, v1, v0

    aget-wide v6, v1, v0

    sub-double v6, p1, v6

    sub-double/2addr v2, v4

    div-double v2, v6, v2

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v2

    aget-object v6, v1, v0

    aget-wide v6, v6, p3

    mul-double/2addr v4, v6

    add-int/lit8 v0, v0, 0x1

    aget-object v0, v1, v0

    aget-wide v0, v0, p3

    mul-double/2addr v0, v2

    add-double/2addr v0, v4

    goto :goto_0

    :cond_6
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getPos(D[D)V
    .locals 13

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    array-length v3, v1

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v2, v2, v0

    array-length v4, v2

    iget-boolean v2, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mExtrapolate:Z

    if-eqz v2, :cond_1

    aget-wide v6, v1, v0

    cmpg-double v2, p1, v6

    if-gtz v2, :cond_0

    aget-wide v2, v1, v0

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mSlopeTemp:[D

    invoke-virtual {p0, v2, v3, v1}, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->getSlope(D[D)V

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_6

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v2, v2, v0

    aget-wide v2, v2, v1

    iget-object v5, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    aget-wide v6, v5, v0

    sub-double v6, p1, v6

    iget-object v5, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mSlopeTemp:[D

    aget-wide v8, v5, v1

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    aput-wide v2, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v3, -0x1

    aget-wide v6, v1, v2

    cmpl-double v2, p1, v6

    if-ltz v2, :cond_3

    add-int/lit8 v2, v3, -0x1

    aget-wide v6, v1, v2

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mSlopeTemp:[D

    invoke-virtual {p0, v6, v7, v1}, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->getSlope(D[D)V

    :goto_1
    if-ge v0, v4, :cond_6

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    add-int/lit8 v2, v3, -0x1

    aget-object v1, v1, v2

    aget-wide v6, v1, v0

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    add-int/lit8 v2, v3, -0x1

    aget-wide v8, v1, v2

    sub-double v8, p1, v8

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mSlopeTemp:[D

    aget-wide v10, v1, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    aput-wide v6, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    aget-wide v6, v1, v0

    cmpg-double v2, p1, v6

    if-gtz v2, :cond_2

    move v1, v0

    :goto_2
    if-ge v1, v4, :cond_6

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v2, v2, v0

    aget-wide v2, v2, v1

    aput-wide v2, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v3, -0x1

    aget-wide v6, v1, v2

    cmpl-double v1, p1, v6

    if-ltz v1, :cond_3

    :goto_3
    if-ge v0, v4, :cond_6

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    add-int/lit8 v2, v3, -0x1

    aget-object v1, v1, v2

    aget-wide v6, v1, v0

    aput-wide v6, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    move v2, v0

    :goto_4
    add-int/lit8 v1, v3, -0x1

    if-ge v2, v1, :cond_6

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    aget-wide v6, v1, v2

    cmpl-double v1, p1, v6

    if-nez v1, :cond_4

    move v1, v0

    :goto_5
    if-ge v1, v4, :cond_4

    iget-object v5, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v5, v5, v2

    aget-wide v6, v5, v1

    aput-wide v6, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_4
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    add-int/lit8 v5, v2, 0x1

    aget-wide v6, v1, v5

    cmpg-double v5, p1, v6

    if-gez v5, :cond_5

    add-int/lit8 v3, v2, 0x1

    aget-wide v6, v1, v3

    aget-wide v8, v1, v2

    aget-wide v10, v1, v2

    sub-double v10, p1, v10

    sub-double/2addr v6, v8

    div-double v6, v10, v6

    :goto_6
    if-ge v0, v4, :cond_6

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v8, v6

    aget-object v3, v1, v2

    aget-wide v10, v3, v0

    mul-double/2addr v8, v10

    add-int/lit8 v3, v2, 0x1

    aget-object v1, v1, v3

    aget-wide v10, v1, v0

    mul-double/2addr v10, v6

    add-double/2addr v8, v10

    aput-wide v8, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_5
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_4

    :cond_6
    return-void
.end method

.method public getPos(D[F)V
    .locals 13

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    array-length v3, v1

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v2, v2, v0

    array-length v4, v2

    iget-boolean v2, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mExtrapolate:Z

    if-eqz v2, :cond_1

    aget-wide v6, v1, v0

    cmpg-double v2, p1, v6

    if-gtz v2, :cond_0

    aget-wide v2, v1, v0

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mSlopeTemp:[D

    invoke-virtual {p0, v2, v3, v1}, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->getSlope(D[D)V

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_6

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v2, v2, v0

    aget-wide v2, v2, v1

    iget-object v5, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    aget-wide v6, v5, v0

    sub-double v6, p1, v6

    iget-object v5, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mSlopeTemp:[D

    aget-wide v8, v5, v1

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    double-to-float v2, v2

    aput v2, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v3, -0x1

    aget-wide v6, v1, v2

    cmpl-double v2, p1, v6

    if-ltz v2, :cond_3

    add-int/lit8 v2, v3, -0x1

    aget-wide v6, v1, v2

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mSlopeTemp:[D

    invoke-virtual {p0, v6, v7, v1}, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->getSlope(D[D)V

    :goto_1
    if-ge v0, v4, :cond_6

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    add-int/lit8 v2, v3, -0x1

    aget-object v1, v1, v2

    aget-wide v6, v1, v0

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    add-int/lit8 v2, v3, -0x1

    aget-wide v8, v1, v2

    sub-double v8, p1, v8

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mSlopeTemp:[D

    aget-wide v10, v1, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v1, v6

    aput v1, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    aget-wide v6, v1, v0

    cmpg-double v2, p1, v6

    if-gtz v2, :cond_2

    move v1, v0

    :goto_2
    if-ge v1, v4, :cond_6

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v2, v2, v0

    aget-wide v2, v2, v1

    double-to-float v2, v2

    aput v2, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v3, -0x1

    aget-wide v6, v1, v2

    cmpl-double v1, p1, v6

    if-ltz v1, :cond_3

    :goto_3
    if-ge v0, v4, :cond_6

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    add-int/lit8 v2, v3, -0x1

    aget-object v1, v1, v2

    aget-wide v6, v1, v0

    double-to-float v1, v6

    aput v1, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    move v2, v0

    :goto_4
    add-int/lit8 v1, v3, -0x1

    if-ge v2, v1, :cond_6

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    aget-wide v6, v1, v2

    cmpl-double v1, p1, v6

    if-nez v1, :cond_4

    move v1, v0

    :goto_5
    if-ge v1, v4, :cond_4

    iget-object v5, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v5, v5, v2

    aget-wide v6, v5, v1

    double-to-float v5, v6

    aput v5, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_4
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    add-int/lit8 v5, v2, 0x1

    aget-wide v6, v1, v5

    cmpg-double v5, p1, v6

    if-gez v5, :cond_5

    add-int/lit8 v3, v2, 0x1

    aget-wide v6, v1, v3

    aget-wide v8, v1, v2

    aget-wide v10, v1, v2

    sub-double v10, p1, v10

    sub-double/2addr v6, v8

    div-double v6, v10, v6

    :goto_6
    if-ge v0, v4, :cond_6

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v8, v6

    aget-object v3, v1, v2

    aget-wide v10, v3, v0

    mul-double/2addr v8, v10

    add-int/lit8 v3, v2, 0x1

    aget-object v1, v1, v3

    aget-wide v10, v1, v0

    mul-double/2addr v10, v6

    add-double/2addr v8, v10

    double-to-float v1, v8

    aput v1, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_5
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_4

    :cond_6
    return-void
.end method

.method public getSlope(DI)D
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    array-length v2, v1

    aget-wide v4, v1, v0

    cmpg-double v3, p1, v4

    if-gez v3, :cond_1

    aget-wide p1, v1, v0

    :cond_0
    :goto_0
    add-int/lit8 v1, v2, -0x1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    add-int/lit8 v3, v0, 0x1

    aget-wide v4, v1, v3

    cmpg-double v3, p1, v4

    if-gtz v3, :cond_2

    add-int/lit8 v2, v0, 0x1

    aget-wide v2, v1, v2

    aget-wide v4, v1, v0

    sub-double/2addr v2, v4

    aget-wide v4, v1, v0

    sub-double v4, p1, v4

    div-double/2addr v4, v2

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v4, v1, v0

    aget-wide v4, v4, p3

    add-int/lit8 v0, v0, 0x1

    aget-object v0, v1, v0

    aget-wide v0, v0, p3

    sub-double/2addr v0, v4

    div-double/2addr v0, v2

    :goto_1
    return-wide v0

    :cond_1
    add-int/lit8 v3, v2, -0x1

    aget-wide v4, v1, v3

    cmpl-double v3, p1, v4

    if-ltz v3, :cond_0

    add-int/lit8 v3, v2, -0x1

    aget-wide p1, v1, v3

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method public getSlope(D[D)V
    .locals 11

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    array-length v2, v1

    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v3, v3, v0

    array-length v3, v3

    aget-wide v4, v1, v0

    cmpg-double v4, p1, v4

    if-gtz v4, :cond_1

    aget-wide p1, v1, v0

    :cond_0
    :goto_0
    move v1, v0

    :goto_1
    add-int/lit8 v4, v2, -0x1

    if-ge v1, v4, :cond_3

    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    add-int/lit8 v5, v1, 0x1

    aget-wide v6, v4, v5

    cmpg-double v5, p1, v6

    if-gtz v5, :cond_2

    add-int/lit8 v2, v1, 0x1

    aget-wide v6, v4, v2

    aget-wide v8, v4, v1

    sub-double/2addr v6, v8

    aget-wide v4, v4, v1

    sub-double v4, p1, v4

    div-double/2addr v4, v6

    :goto_2
    if-ge v0, v3, :cond_3

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v4, v2, v1

    aget-wide v4, v4, v0

    add-int/lit8 v8, v1, 0x1

    aget-object v2, v2, v8

    aget-wide v8, v2, v0

    sub-double v4, v8, v4

    div-double/2addr v4, v6

    aput-wide v4, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v2, -0x1

    aget-wide v4, v1, v4

    cmpl-double v4, p1, v4

    if-ltz v4, :cond_0

    add-int/lit8 v4, v2, -0x1

    aget-wide p1, v1, v4

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public getTimePoints()[D
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    return-object v0
.end method
