.class public Landroidx/constraintlayout/core/motion/utils/HyperSpline;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;
    }
.end annotation


# instance fields
.field mCtl:[[D

.field mCurve:[[Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

.field mCurveLength:[D

.field mDimensionality:I

.field mPoints:I

.field mTotalLength:D


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([[D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->setup([[D)V

    return-void
.end method

.method static calcNaturalCubic(I[D)[Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;
    .locals 18

    move/from16 v0, p0

    new-array v3, v0, [D

    move/from16 v0, p0

    new-array v4, v0, [D

    move/from16 v0, p0

    new-array v12, v0, [D

    add-int/lit8 v13, p0, -0x1

    const/4 v2, 0x0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    aput-wide v6, v3, v2

    const/4 v2, 0x1

    :goto_0
    if-ge v2, v13, :cond_0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    add-int/lit8 v5, v2, -0x1

    aget-wide v10, v3, v5

    sub-double/2addr v8, v10

    div-double/2addr v6, v8

    aput-wide v6, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    add-int/lit8 v2, v13, -0x1

    aget-wide v10, v3, v2

    sub-double/2addr v8, v10

    div-double/2addr v6, v8

    aput-wide v6, v3, v13

    const/4 v2, 0x0

    const/4 v5, 0x1

    aget-wide v6, p1, v5

    const/4 v5, 0x0

    aget-wide v8, p1, v5

    sub-double/2addr v6, v8

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    mul-double/2addr v6, v8

    const/4 v5, 0x0

    aget-wide v8, v3, v5

    mul-double/2addr v6, v8

    aput-wide v6, v4, v2

    const/4 v2, 0x1

    :goto_1
    if-ge v2, v13, :cond_1

    add-int/lit8 v5, v2, 0x1

    aget-wide v6, p1, v5

    add-int/lit8 v5, v2, -0x1

    aget-wide v8, p1, v5

    sub-double/2addr v6, v8

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    mul-double/2addr v6, v8

    add-int/lit8 v5, v2, -0x1

    aget-wide v8, v4, v5

    sub-double/2addr v6, v8

    aget-wide v8, v3, v2

    mul-double/2addr v6, v8

    aput-wide v6, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    aget-wide v6, p1, v13

    add-int/lit8 v2, v13, -0x1

    aget-wide v8, p1, v2

    sub-double/2addr v6, v8

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    mul-double/2addr v6, v8

    add-int/lit8 v2, v13, -0x1

    aget-wide v8, v4, v2

    sub-double/2addr v6, v8

    aget-wide v8, v3, v13

    mul-double/2addr v6, v8

    aput-wide v6, v4, v13

    aget-wide v6, v4, v13

    aput-wide v6, v12, v13

    add-int/lit8 v2, v13, -0x1

    :goto_2
    if-ltz v2, :cond_2

    aget-wide v6, v4, v2

    aget-wide v8, v3, v2

    add-int/lit8 v5, v2, 0x1

    aget-wide v10, v12, v5

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    aput-wide v6, v12, v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_2
    new-array v14, v13, [Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v13, :cond_3

    new-instance v3, Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

    aget-wide v4, p1, v2

    double-to-float v4, v4

    float-to-double v4, v4

    aget-wide v6, v12, v2

    add-int/lit8 v8, v2, 0x1

    aget-wide v8, p1, v8

    aget-wide v10, p1, v2

    sub-double/2addr v8, v10

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    mul-double/2addr v8, v10

    aget-wide v10, v12, v2

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v10, v10, v16

    sub-double/2addr v8, v10

    add-int/lit8 v10, v2, 0x1

    aget-wide v10, v12, v10

    sub-double/2addr v8, v10

    aget-wide v10, p1, v2

    add-int/lit8 v15, v2, 0x1

    aget-wide v16, p1, v15

    sub-double v10, v10, v16

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v10, v10, v16

    aget-wide v16, v12, v2

    add-double v10, v10, v16

    add-int/lit8 v15, v2, 0x1

    aget-wide v16, v12, v15

    add-double v10, v10, v16

    invoke-direct/range {v3 .. v11}, Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;-><init>(DDDD)V

    aput-object v3, v14, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    return-object v14
.end method


# virtual methods
.method public approxLength([Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;)D
    .locals 14

    const-wide/16 v4, 0x0

    array-length v0, p1

    array-length v0, p1

    new-array v8, v0, [D

    const-wide/16 v0, 0x0

    move-wide v6, v0

    :goto_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v6, v0

    if-gez v0, :cond_1

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_0

    aget-wide v10, v8, v2

    aget-object v3, p1, v2

    invoke-virtual {v3, v6, v7}, Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;->eval(D)D

    move-result-wide v12

    aput-wide v12, v8, v2

    sub-double/2addr v10, v12

    mul-double/2addr v10, v10

    add-double/2addr v0, v10

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    const-wide/16 v2, 0x0

    cmpl-double v2, v6, v2

    if-lez v2, :cond_3

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    add-double/2addr v0, v4

    :goto_2
    const-wide v2, 0x3fb999999999999aL    # 0.1

    add-double/2addr v2, v6

    move-wide v6, v2

    move-wide v4, v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    array-length v3, p1

    if-ge v2, v3, :cond_2

    aget-wide v6, v8, v2

    aget-object v3, p1, v2

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v3, v10, v11}, Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;->eval(D)D

    move-result-wide v10

    aput-wide v10, v8, v2

    sub-double/2addr v6, v10

    mul-double/2addr v6, v6

    add-double/2addr v0, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    add-double/2addr v0, v4

    return-wide v0

    :cond_3
    move-wide v0, v4

    goto :goto_2
.end method

.method public getPos(DI)D
    .locals 7

    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mTotalLength:D

    mul-double v2, v0, p1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurveLength:[D

    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_0

    aget-wide v4, v1, v0

    cmpg-double v4, v4, v2

    if-gez v4, :cond_0

    aget-wide v4, v1, v0

    sub-double/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurve:[[Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

    aget-object v4, v4, p3

    aget-object v4, v4, v0

    aget-wide v0, v1, v0

    div-double v0, v2, v0

    invoke-virtual {v4, v0, v1}, Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;->eval(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getPos(D[D)V
    .locals 9

    const/4 v1, 0x0

    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mTotalLength:D

    mul-double/2addr v2, p1

    move v0, v1

    :goto_0
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurveLength:[D

    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    if-ge v0, v5, :cond_0

    aget-wide v6, v4, v0

    cmpg-double v5, v6, v2

    if-gez v5, :cond_0

    aget-wide v4, v4, v0

    sub-double/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    array-length v4, p3

    if-ge v1, v4, :cond_1

    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurve:[[Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

    aget-object v4, v4, v1

    aget-object v4, v4, v0

    iget-object v5, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurveLength:[D

    aget-wide v6, v5, v0

    div-double v6, v2, v6

    invoke-virtual {v4, v6, v7}, Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;->eval(D)D

    move-result-wide v4

    aput-wide v4, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public getPos(D[F)V
    .locals 9

    const/4 v1, 0x0

    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mTotalLength:D

    mul-double/2addr v2, p1

    move v0, v1

    :goto_0
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurveLength:[D

    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    if-ge v0, v5, :cond_0

    aget-wide v6, v4, v0

    cmpg-double v5, v6, v2

    if-gez v5, :cond_0

    aget-wide v4, v4, v0

    sub-double/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    array-length v4, p3

    if-ge v1, v4, :cond_1

    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurve:[[Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

    aget-object v4, v4, v1

    aget-object v4, v4, v0

    iget-object v5, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurveLength:[D

    aget-wide v6, v5, v0

    div-double v6, v2, v6

    invoke-virtual {v4, v6, v7}, Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;->eval(D)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public getVelocity(D[D)V
    .locals 9

    const/4 v1, 0x0

    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mTotalLength:D

    mul-double/2addr v2, p1

    move v0, v1

    :goto_0
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurveLength:[D

    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    if-ge v0, v5, :cond_0

    aget-wide v6, v4, v0

    cmpg-double v5, v6, v2

    if-gez v5, :cond_0

    aget-wide v4, v4, v0

    sub-double/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    array-length v4, p3

    if-ge v1, v4, :cond_1

    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurve:[[Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

    aget-object v4, v4, v1

    aget-object v4, v4, v0

    iget-object v5, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurveLength:[D

    aget-wide v6, v5, v0

    div-double v6, v2, v6

    invoke-virtual {v4, v6, v7}, Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;->vel(D)D

    move-result-wide v4

    aput-wide v4, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setup([[D)V
    .locals 8

    const/4 v1, 0x0

    aget-object v0, p1, v1

    array-length v0, v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mDimensionality:I

    array-length v2, p1

    iput v2, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mPoints:I

    filled-new-array {v0, v2}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCtl:[[D

    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mDimensionality:I

    new-array v0, v0, [[Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurve:[[Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

    move v0, v1

    :goto_0
    iget v2, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mDimensionality:I

    if-ge v0, v2, :cond_1

    move v2, v1

    :goto_1
    iget v3, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mPoints:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCtl:[[D

    aget-object v3, v3, v0

    aget-object v4, p1, v2

    aget-wide v4, v4, v0

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_2
    iget v2, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mDimensionality:I

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurve:[[Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCtl:[[D

    aget-object v4, v3, v0

    array-length v4, v4

    aget-object v3, v3, v0

    invoke-static {v4, v3}, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->calcNaturalCubic(I[D)[Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mPoints:I

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [D

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurveLength:[D

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mTotalLength:D

    new-array v3, v2, [Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

    move v0, v1

    :goto_3
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurveLength:[D

    array-length v2, v2

    if-ge v0, v2, :cond_4

    move v2, v1

    :goto_4
    iget v4, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mDimensionality:I

    if-ge v2, v4, :cond_3

    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurve:[[Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

    aget-object v4, v4, v2

    aget-object v4, v4, v0

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_3
    iget-wide v4, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mTotalLength:D

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurveLength:[D

    invoke-virtual {p0, v3}, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->approxLength([Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;)D

    move-result-wide v6

    aput-wide v6, v2, v0

    add-double/2addr v4, v6

    iput-wide v4, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mTotalLength:D

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method
