.class public Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;
.super Landroidx/constraintlayout/core/motion/utils/CurveFit;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mExtrapolate:Z

.field mSlopeTemp:[D

.field private mT:[D

.field private mTangent:[[D

.field private mY:[[D


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x11

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "defcfc"

    const/16 v2, -0x4eaa

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->TAG:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x29t
        0xat
        0x8t
        0xct
        0x12t
        0xct
        0xat
        0xct
        0x5t
        0x20t
        0x13t
        0x11t
        0x12t
        0x0t
        0x20t
        0xat
        0x12t
    .end array-data
.end method

.method public constructor <init>([D[[D)V
    .locals 18

    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/core/motion/utils/CurveFit;-><init>()V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mExtrapolate:Z

    move-object/from16 v0, p1

    array-length v6, v0

    const/4 v2, 0x0

    aget-object v2, p2, v2

    array-length v7, v2

    new-array v2, v7, [D

    move-object/from16 v0, p0

    iput-object v2, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mSlopeTemp:[D

    add-int/lit8 v2, v6, -0x1

    filled-new-array {v2, v7}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    filled-new-array {v6, v7}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v7, :cond_2

    const/4 v4, 0x0

    :goto_1
    add-int/lit8 v8, v6, -0x1

    if-ge v4, v8, :cond_1

    add-int/lit8 v8, v4, 0x1

    aget-wide v8, p1, v8

    aget-wide v10, p1, v4

    aget-object v12, v2, v4

    add-int/lit8 v13, v4, 0x1

    aget-object v13, p2, v13

    aget-wide v14, v13, v5

    aget-object v13, p2, v4

    aget-wide v16, v13, v5

    sub-double v14, v14, v16

    sub-double/2addr v8, v10

    div-double v8, v14, v8

    aput-wide v8, v12, v5

    if-nez v4, :cond_0

    aget-object v8, v3, v4

    aget-object v9, v2, v4

    aget-wide v10, v9, v5

    aput-wide v10, v8, v5

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    aget-object v8, v3, v4

    add-int/lit8 v9, v4, -0x1

    aget-object v9, v2, v9

    aget-wide v10, v9, v5

    aget-object v9, v2, v4

    aget-wide v12, v9, v5

    add-double/2addr v10, v12

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v10, v12

    aput-wide v10, v8, v5

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v6, -0x1

    aget-object v4, v3, v4

    add-int/lit8 v8, v6, -0x2

    aget-object v8, v2, v8

    aget-wide v8, v8, v5

    aput-wide v8, v4, v5

    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    move v5, v4

    :goto_3
    add-int/lit8 v4, v6, -0x1

    if-ge v5, v4, :cond_6

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v7, :cond_5

    aget-object v8, v2, v5

    aget-wide v8, v8, v4

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-nez v8, :cond_4

    aget-object v8, v3, v5

    const-wide/16 v10, 0x0

    aput-wide v10, v8, v4

    add-int/lit8 v8, v5, 0x1

    aget-object v8, v3, v8

    const-wide/16 v10, 0x0

    aput-wide v10, v8, v4

    :cond_3
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_4
    aget-object v8, v3, v5

    aget-wide v8, v8, v4

    aget-object v10, v2, v5

    aget-wide v10, v10, v4

    div-double/2addr v8, v10

    add-int/lit8 v10, v5, 0x1

    aget-object v10, v3, v10

    aget-wide v10, v10, v4

    aget-object v12, v2, v5

    aget-wide v12, v12, v4

    div-double/2addr v10, v12

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v12

    const-wide/high16 v14, 0x4022000000000000L    # 9.0

    cmpl-double v14, v12, v14

    if-lez v14, :cond_3

    const-wide/high16 v14, 0x4008000000000000L    # 3.0

    div-double v12, v14, v12

    aget-object v14, v3, v5

    mul-double/2addr v8, v12

    aget-object v15, v2, v5

    aget-wide v16, v15, v4

    mul-double v8, v8, v16

    aput-wide v8, v14, v4

    add-int/lit8 v8, v5, 0x1

    aget-object v8, v3, v8

    mul-double/2addr v10, v12

    aget-object v9, v2, v5

    aget-wide v12, v9, v4

    mul-double/2addr v10, v12

    aput-wide v10, v8, v4

    goto :goto_5

    :cond_5
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_3

    :cond_6
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    move-object/from16 v0, p0

    iput-object v3, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mTangent:[[D

    return-void
.end method

.method public static buildWave(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;
    .locals 7

    const/16 v6, 0x2c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v3, v0, [D

    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    aput-wide v4, v3, v0

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x29

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    aput-wide v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v0

    invoke-static {v0}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->buildWave([D)Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;

    move-result-object v0

    return-object v0
.end method

.method private static buildWave([D)Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;
    .locals 14

    const/4 v2, 0x0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v1, v0, -0x2

    array-length v0, p0

    add-int/lit8 v3, v0, -0x1

    int-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double v4, v12, v4

    const/4 v0, 0x1

    filled-new-array {v1, v0}, [I

    move-result-object v0

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    new-array v6, v1, [D

    move v1, v2

    :goto_0
    array-length v7, p0

    if-ge v1, v7, :cond_1

    aget-wide v8, p0, v1

    add-int v7, v1, v3

    aget-object v7, v0, v7

    aput-wide v8, v7, v2

    int-to-double v10, v1

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    add-int v7, v1, v3

    mul-double/2addr v10, v4

    aput-wide v10, v6, v7

    if-lez v1, :cond_0

    mul-int/lit8 v7, v3, 0x2

    add-int/2addr v7, v1

    aget-object v7, v0, v7

    add-double v10, v8, v12

    aput-wide v10, v7, v2

    int-to-double v10, v1

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-int/lit8 v7, v3, 0x2

    add-int/2addr v7, v1

    mul-double/2addr v10, v4

    add-double/2addr v10, v12

    aput-wide v10, v6, v7

    add-int/lit8 v7, v1, -0x1

    aget-object v7, v0, v7

    sub-double/2addr v8, v12

    sub-double/2addr v8, v4

    aput-wide v8, v7, v2

    int-to-double v8, v1

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    add-int/lit8 v7, v1, -0x1

    mul-double/2addr v8, v4

    sub-double/2addr v8, v12

    sub-double/2addr v8, v4

    aput-wide v8, v6, v7

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;

    invoke-direct {v1, v6, v0}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;-><init>([D[[D)V

    return-object v1
.end method

.method private static diff(DDDDDD)D
    .locals 6

    mul-double v0, p2, p2

    const-wide/high16 v2, -0x3fe8000000000000L    # -6.0

    mul-double/2addr v2, v0

    mul-double/2addr v2, p6

    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    mul-double/2addr v4, p2

    mul-double/2addr v4, p6

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    mul-double/2addr v4, v0

    mul-double/2addr v4, p4

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    mul-double/2addr v4, p2

    mul-double/2addr v4, p4

    sub-double/2addr v2, v4

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    mul-double/2addr v4, p0

    mul-double v4, v4, p10

    mul-double/2addr v4, v0

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    mul-double/2addr v4, p0

    mul-double/2addr v4, p8

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, p0

    mul-double v2, v2, p10

    mul-double/2addr v2, p2

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    mul-double/2addr v2, p0

    mul-double/2addr v2, p8

    mul-double/2addr v2, p2

    sub-double/2addr v0, v2

    mul-double v2, p0, p8

    add-double/2addr v0, v2

    return-wide v0
.end method

.method private static interpolate(DDDDDD)D
    .locals 8

    mul-double v0, p2, p2

    mul-double v2, v0, p2

    const-wide/high16 v4, -0x4000000000000000L    # -2.0

    mul-double/2addr v4, v2

    mul-double/2addr v4, p6

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    mul-double/2addr v6, v0

    mul-double/2addr v6, p6

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v2

    mul-double/2addr v6, p4

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    mul-double/2addr v6, v0

    mul-double/2addr v6, p4

    sub-double/2addr v4, v6

    add-double/2addr v4, p4

    mul-double v6, p0, p10

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    mul-double v6, p0, p8

    mul-double/2addr v2, v6

    add-double/2addr v2, v4

    mul-double v4, p0, p10

    mul-double/2addr v4, v0

    sub-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, p0

    mul-double v4, v4, p8

    mul-double/2addr v0, v4

    sub-double v0, v2, v0

    mul-double v2, p0, p8

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public getPos(DI)D
    .locals 15

    const/4 v2, 0x0

    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    array-length v4, v3

    iget-boolean v5, p0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mExtrapolate:Z

    if-eqz v5, :cond_1

    aget-wide v6, v3, v2

    cmpg-double v5, p1, v6

    if-gtz v5, :cond_0

    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    aget-object v4, v4, v2

    aget-wide v4, v4, p3

    aget-wide v6, v3, v2

    sub-double v6, p1, v6

    aget-wide v2, v3, v2

    move/from16 v0, p3

    invoke-virtual {p0, v2, v3, v0}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->getSlope(DI)D

    move-result-wide v2

    mul-double/2addr v2, v6

    add-double/2addr v2, v4

    :goto_0
    return-wide v2

    :cond_0
    add-int/lit8 v5, v4, -0x1

    aget-wide v6, v3, v5

    cmpl-double v5, p1, v6

    if-ltz v5, :cond_3

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    add-int/lit8 v5, v4, -0x1

    aget-object v2, v2, v5

    aget-wide v6, v2, p3

    add-int/lit8 v2, v4, -0x1

    aget-wide v8, v3, v2

    sub-double v8, p1, v8

    add-int/lit8 v2, v4, -0x1

    aget-wide v2, v3, v2

    move/from16 v0, p3

    invoke-virtual {p0, v2, v3, v0}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->getSlope(DI)D

    move-result-wide v2

    mul-double/2addr v2, v8

    add-double/2addr v2, v6

    goto :goto_0

    :cond_1
    aget-wide v6, v3, v2

    cmpg-double v5, p1, v6

    if-gtz v5, :cond_2

    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    aget-object v2, v3, v2

    aget-wide v2, v2, p3

    goto :goto_0

    :cond_2
    add-int/lit8 v5, v4, -0x1

    aget-wide v6, v3, v5

    cmpl-double v3, p1, v6

    if-ltz v3, :cond_3

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    add-int/lit8 v3, v4, -0x1

    aget-object v2, v2, v3

    aget-wide v2, v2, p3

    goto :goto_0

    :cond_3
    move v12, v2

    :goto_1
    add-int/lit8 v2, v4, -0x1

    if-ge v12, v2, :cond_6

    iget-object v5, p0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    aget-wide v2, v5, v12

    cmpl-double v2, p1, v2

    if-nez v2, :cond_4

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    aget-object v2, v2, v12

    aget-wide v2, v2, p3

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v12, 0x1

    aget-wide v2, v5, v2

    cmpg-double v2, p1, v2

    if-gez v2, :cond_5

    add-int/lit8 v2, v12, 0x1

    aget-wide v2, v5, v2

    aget-wide v6, v5, v12

    sub-double/2addr v2, v6

    aget-wide v4, v5, v12

    sub-double v4, p1, v4

    div-double/2addr v4, v2

    iget-object v8, p0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    aget-object v6, v8, v12

    aget-wide v6, v6, p3

    add-int/lit8 v9, v12, 0x1

    aget-object v8, v8, v9

    aget-wide v8, v8, p3

    iget-object v13, p0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mTangent:[[D

    aget-object v10, v13, v12

    aget-wide v10, v10, p3

    add-int/lit8 v12, v12, 0x1

    aget-object v12, v13, v12

    aget-wide v12, v12, p3

    invoke-static/range {v2 .. v13}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->interpolate(DDDDDD)D

    move-result-wide v2

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v2, v12, 0x1

    move v12, v2

    goto :goto_1

    :cond_6
    const-wide/16 v2, 0x0

    goto/16 :goto_0
.end method

.method public getPos(D[D)V
    .locals 15

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    array-length v1, v0

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    const/4 v3, 0x0

    aget-object v2, v2, v3

    array-length v14, v2

    iget-boolean v2, p0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mExtrapolate:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    cmpg-double v2, p1, v2

    if-gtz v2, :cond_0

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mSlopeTemp:[D

    invoke-virtual {p0, v0, v1, v2}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->getSlope(D[D)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v14, :cond_6

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    const/4 v2, 0x0

    aget-object v1, v1, v2

    aget-wide v2, v1, v0

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    sub-double v4, p1, v4

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mSlopeTemp:[D

    aget-wide v6, v1, v0

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    aput-wide v2, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v1, -0x1

    aget-wide v2, v0, v2

    cmpl-double v2, p1, v2

    if-ltz v2, :cond_3

    add-int/lit8 v2, v1, -0x1

    aget-wide v2, v0, v2

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mSlopeTemp:[D

    invoke-virtual {p0, v2, v3, v0}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->getSlope(D[D)V

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v14, :cond_6

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    add-int/lit8 v3, v1, -0x1

    aget-object v2, v2, v3

    aget-wide v2, v2, v0

    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    add-int/lit8 v5, v1, -0x1

    aget-wide v4, v4, v5

    sub-double v4, p1, v4

    iget-object v6, p0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mSlopeTemp:[D

    aget-wide v6, v6, v0

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    aput-wide v2, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    aget-wide v2, v0, v2

    cmpg-double v2, p1, v2

    if-gtz v2, :cond_2

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v14, :cond_6

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    const/4 v2, 0x0

    aget-object v1, v1, v2

    aget-wide v2, v1, v0

    aput-wide v2, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v1, -0x1

    aget-wide v2, v0, v2

    cmpl-double v0, p1, v2

    if-ltz v0, :cond_3

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v14, :cond_6

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    add-int/lit8 v3, v1, -0x1

    aget-object v2, v2, v3

    aget-wide v2, v2, v0

    aput-wide v2, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    move v13, v0

    :goto_4
    add-int/lit8 v0, v1, -0x1

    if-ge v13, v0, :cond_6

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    aget-wide v2, v0, v13

    cmpl-double v0, p1, v2

    if-nez v0, :cond_4

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v14, :cond_4

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    aget-object v2, v2, v13

    aget-wide v2, v2, v0

    aput-wide v2, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_4
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    add-int/lit8 v0, v13, 0x1

    aget-wide v4, v2, v0

    cmpg-double v0, p1, v4

    if-gez v0, :cond_5

    add-int/lit8 v0, v13, 0x1

    aget-wide v0, v2, v0

    aget-wide v4, v2, v13

    sub-double/2addr v0, v4

    aget-wide v2, v2, v13

    sub-double v2, p1, v2

    div-double/2addr v2, v0

    const/4 v4, 0x0

    move v12, v4

    :goto_6
    if-ge v12, v14, :cond_6

    iget-object v6, p0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    aget-object v4, v6, v13

    aget-wide v4, v4, v12

    add-int/lit8 v7, v13, 0x1

    aget-object v6, v6, v7

    aget-wide v6, v6, v12

    iget-object v10, p0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mTangent:[[D

    aget-object v8, v10, v13

    aget-wide v8, v8, v12

    add-int/lit8 v11, v13, 0x1

    aget-object v10, v10, v11

    aget-wide v10, v10, v12

    invoke-static/range {v0 .. v11}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->interpolate(DDDDDD)D

    move-result-wide v4

    aput-wide v4, p3, v12

    add-int/lit8 v4, v12, 0x1

    move v12, v4

    goto :goto_6

    :cond_5
    add-int/lit8 v0, v13, 0x1

    move v13, v0

    goto :goto_4

    :cond_6
    return-void
.end method

.method public getPos(D[F)V
    .locals 15

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    array-length v1, v0

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    const/4 v3, 0x0

    aget-object v2, v2, v3

    array-length v14, v2

    iget-boolean v2, p0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mExtrapolate:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    cmpg-double v2, p1, v2

    if-gtz v2, :cond_0

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mSlopeTemp:[D

    invoke-virtual {p0, v0, v1, v2}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->getSlope(D[D)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v14, :cond_6

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    const/4 v2, 0x0

    aget-object v1, v1, v2

    aget-wide v2, v1, v0

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    sub-double v4, p1, v4

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mSlopeTemp:[D

    aget-wide v6, v1, v0

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v1, v2

    aput v1, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v1, -0x1

    aget-wide v2, v0, v2

    cmpl-double v2, p1, v2

    if-ltz v2, :cond_3

    add-int/lit8 v2, v1, -0x1

    aget-wide v2, v0, v2

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mSlopeTemp:[D

    invoke-virtual {p0, v2, v3, v0}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->getSlope(D[D)V

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v14, :cond_6

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    add-int/lit8 v3, v1, -0x1

    aget-object v2, v2, v3

    aget-wide v2, v2, v0

    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    add-int/lit8 v5, v1, -0x1

    aget-wide v4, v4, v5

    sub-double v4, p1, v4

    iget-object v6, p0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mSlopeTemp:[D

    aget-wide v6, v6, v0

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    aput v2, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    aget-wide v2, v0, v2

    cmpg-double v2, p1, v2

    if-gtz v2, :cond_2

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v14, :cond_6

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    const/4 v2, 0x0

    aget-object v1, v1, v2

    aget-wide v2, v1, v0

    double-to-float v1, v2

    aput v1, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v1, -0x1

    aget-wide v2, v0, v2

    cmpl-double v0, p1, v2

    if-ltz v0, :cond_3

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v14, :cond_6

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    add-int/lit8 v3, v1, -0x1

    aget-object v2, v2, v3

    aget-wide v2, v2, v0

    double-to-float v2, v2

    aput v2, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    move v13, v0

    :goto_4
    add-int/lit8 v0, v1, -0x1

    if-ge v13, v0, :cond_6

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    aget-wide v2, v0, v13

    cmpl-double v0, p1, v2

    if-nez v0, :cond_4

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v14, :cond_4

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    aget-object v2, v2, v13

    aget-wide v2, v2, v0

    double-to-float v2, v2

    aput v2, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_4
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    add-int/lit8 v0, v13, 0x1

    aget-wide v4, v2, v0

    cmpg-double v0, p1, v4

    if-gez v0, :cond_5

    add-int/lit8 v0, v13, 0x1

    aget-wide v0, v2, v0

    aget-wide v4, v2, v13

    sub-double/2addr v0, v4

    aget-wide v2, v2, v13

    sub-double v2, p1, v2

    div-double/2addr v2, v0

    const/4 v4, 0x0

    move v12, v4

    :goto_6
    if-ge v12, v14, :cond_6

    iget-object v6, p0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    aget-object v4, v6, v13

    aget-wide v4, v4, v12

    add-int/lit8 v7, v13, 0x1

    aget-object v6, v6, v7

    aget-wide v6, v6, v12

    iget-object v10, p0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mTangent:[[D

    aget-object v8, v10, v13

    aget-wide v8, v8, v12

    add-int/lit8 v11, v13, 0x1

    aget-object v10, v10, v11

    aget-wide v10, v10, v12

    invoke-static/range {v0 .. v11}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->interpolate(DDDDDD)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, p3, v12

    add-int/lit8 v4, v12, 0x1

    move v12, v4

    goto :goto_6

    :cond_5
    add-int/lit8 v0, v13, 0x1

    move v13, v0

    goto :goto_4

    :cond_6
    return-void
.end method

.method public getSlope(DI)D
    .locals 13

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    array-length v2, v1

    aget-wide v4, v1, v0

    cmpg-double v3, p1, v4

    if-gez v3, :cond_1

    aget-wide p1, v1, v0

    :cond_0
    :goto_0
    move v10, v0

    :goto_1
    add-int/lit8 v0, v2, -0x1

    if-ge v10, v0, :cond_3

    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    add-int/lit8 v0, v10, 0x1

    aget-wide v0, v3, v0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_2

    add-int/lit8 v0, v10, 0x1

    aget-wide v0, v3, v0

    aget-wide v4, v3, v10

    sub-double/2addr v0, v4

    aget-wide v2, v3, v10

    sub-double v2, p1, v2

    div-double/2addr v2, v0

    iget-object v6, p0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    aget-object v4, v6, v10

    aget-wide v4, v4, p3

    add-int/lit8 v7, v10, 0x1

    aget-object v6, v6, v7

    aget-wide v6, v6, p3

    iget-object v11, p0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mTangent:[[D

    aget-object v8, v11, v10

    aget-wide v8, v8, p3

    add-int/lit8 v10, v10, 0x1

    aget-object v10, v11, v10

    aget-wide v10, v10, p3

    invoke-static/range {v0 .. v11}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->diff(DDDDDD)D

    move-result-wide v2

    div-double v0, v2, v0

    :goto_2
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
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_1

    :cond_3
    const-wide/16 v0, 0x0

    goto :goto_2
.end method

.method public getSlope(D[D)V
    .locals 15

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    array-length v1, v0

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    const/4 v3, 0x0

    aget-object v2, v2, v3

    array-length v14, v2

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    cmpg-double v2, p1, v2

    if-gtz v2, :cond_1

    const/4 v2, 0x0

    aget-wide p1, v0, v2

    :cond_0
    :goto_0
    const/4 v0, 0x0

    move v13, v0

    :goto_1
    add-int/lit8 v0, v1, -0x1

    if-ge v13, v0, :cond_3

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    add-int/lit8 v0, v13, 0x1

    aget-wide v4, v2, v0

    cmpg-double v0, p1, v4

    if-gtz v0, :cond_2

    add-int/lit8 v0, v13, 0x1

    aget-wide v0, v2, v0

    aget-wide v4, v2, v13

    sub-double/2addr v0, v4

    aget-wide v2, v2, v13

    sub-double v2, p1, v2

    div-double/2addr v2, v0

    const/4 v4, 0x0

    move v12, v4

    :goto_2
    if-ge v12, v14, :cond_3

    iget-object v6, p0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    aget-object v4, v6, v13

    aget-wide v4, v4, v12

    add-int/lit8 v7, v13, 0x1

    aget-object v6, v6, v7

    aget-wide v6, v6, v12

    iget-object v10, p0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mTangent:[[D

    aget-object v8, v10, v13

    aget-wide v8, v8, v12

    add-int/lit8 v11, v13, 0x1

    aget-object v10, v10, v11

    aget-wide v10, v10, v12

    invoke-static/range {v0 .. v11}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->diff(DDDDDD)D

    move-result-wide v4

    div-double/2addr v4, v0

    aput-wide v4, p3, v12

    add-int/lit8 v4, v12, 0x1

    move v12, v4

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v1, -0x1

    aget-wide v2, v0, v2

    cmpl-double v2, p1, v2

    if-ltz v2, :cond_0

    add-int/lit8 v2, v1, -0x1

    aget-wide p1, v0, v2

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v13, 0x1

    move v13, v0

    goto :goto_1

    :cond_3
    return-void
.end method

.method public getTimePoints()[D
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    return-object v0
.end method
