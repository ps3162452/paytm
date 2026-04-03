.class public Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;
.super Landroidx/constraintlayout/motion/utils/ViewTimeCycle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomSet"
.end annotation


# instance fields
.field mAttributeName:Ljava/lang/String;

.field mCache:[F

.field mConstraintAttributeList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;"
        }
    .end annotation
.end field

.field mTempValues:[F

.field mWaveProperties:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[F>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/util/SparseArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray",
            "<",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x1

    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mWaveProperties:Landroid/util/SparseArray;

    new-array v0, v3, [B

    const/4 v1, 0x0

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const-string v1, "4c1313"

    const/16 v2, 0xb11

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v3

    iput-object v0, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mAttributeName:Ljava/lang/String;

    iput-object p2, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public setPoint(IFFIF)V
    .locals 6

    new-instance v0, Ljava/lang/RuntimeException;

    const/16 v1, 0x4b

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "bacc47"

    const-wide/32 v4, 0x47d7d6c8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x6t
        0xet
        0xdt
        0x44t
        0x40t
        0x17t
        0x1t
        0x0t
        0xft
        0xft
        0x14t
        0x51t
        0xdt
        0x13t
        0x43t
        0x0t
        0x41t
        0x44t
        0x16t
        0xet
        0xet
        0x43t
        0x55t
        0x43t
        0x16t
        0x13t
        0xat
        0x1t
        0x41t
        0x43t
        0x7t
        0x41t
        0x0t
        0x2t
        0x58t
        0x5bt
        0x42t
        0x12t
        0x6t
        0x17t
        0x64t
        0x58t
        0xbt
        0xft
        0x17t
        0x4bt
        0x44t
        0x58t
        0x11t
        0x4dt
        0x43t
        0x20t
        0x5bt
        0x59t
        0x11t
        0x15t
        0x11t
        0x2t
        0x5dt
        0x59t
        0x16t
        0x20t
        0x17t
        0x17t
        0x46t
        0x5et
        0x0t
        0x14t
        0x17t
        0x6t
        0x18t
        0x19t
        0x4ct
        0x4ft
        0x4at
    .end array-data
.end method

.method public setPoint(ILandroidx/constraintlayout/widget/ConstraintAttribute;FIF)V
    .locals 3

    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mWaveProperties:Landroid/util/SparseArray;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p3, v1, v2

    const/4 v2, 0x1

    aput p5, v1, v2

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget v0, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mWaveShape:I

    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mWaveShape:I

    return-void
.end method

.method public setProperty(Landroid/view/View;FJLandroidx/constraintlayout/core/motion/utils/KeyCache;)Z
    .locals 13

    iget-object v2, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    float-to-double v4, p2

    iget-object v3, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mTempValues:[F

    invoke-virtual {v2, v4, v5, v3}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[F)V

    iget-object v2, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mTempValues:[F

    array-length v3, v2

    add-int/lit8 v3, v3, -0x2

    aget v4, v2, v3

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget v5, v2, v3

    iget-wide v2, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->last_time:J

    iget v6, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->last_cycle:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mAttributeName:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, p1, v6, v7}, Landroidx/constraintlayout/core/motion/utils/KeyCache;->getFloatValue(Ljava/lang/Object;Ljava/lang/String;I)F

    move-result v6

    iput v6, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->last_cycle:F

    iget v6, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->last_cycle:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    iput v6, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->last_cycle:F

    :cond_0
    iget v6, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->last_cycle:F

    float-to-double v6, v6

    sub-long v2, p3, v2

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    float-to-double v8, v4

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    const-wide v10, 0x3e112e0be826d695L    # 1.0E-9

    mul-double/2addr v2, v10

    mul-double/2addr v2, v8

    add-double/2addr v2, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    rem-double/2addr v2, v6

    double-to-float v2, v2

    iput v2, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->last_cycle:F

    move-wide/from16 v0, p3

    iput-wide v0, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->last_time:J

    iget v2, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->last_cycle:F

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->calcWave(F)F

    move-result v6

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mContinue:Z

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mCache:[F

    array-length v3, v3

    if-ge v2, v3, :cond_2

    iget-boolean v7, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mContinue:Z

    iget-object v3, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mTempValues:[F

    aget v3, v3, v2

    float-to-double v8, v3

    const-wide/16 v10, 0x0

    cmpl-double v3, v8, v10

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    or-int/2addr v3, v7

    iput-boolean v3, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mContinue:Z

    iget-object v3, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mCache:[F

    iget-object v7, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mTempValues:[F

    aget v7, v7, v2

    mul-float/2addr v7, v6

    add-float/2addr v7, v5

    aput v7, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    iget-object v2, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintAttribute;

    iget-object v3, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mCache:[F

    invoke-virtual {v2, p1, v3}, Landroidx/constraintlayout/widget/ConstraintAttribute;->setInterpolatedValue(Landroid/view/View;[F)V

    const/4 v2, 0x0

    cmpl-float v2, v4, v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mContinue:Z

    :cond_3
    iget-boolean v2, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mContinue:Z

    return v2
.end method

.method public setup(I)V
    .locals 12

    const/4 v3, 0x0

    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v5

    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintAttribute;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintAttribute;->numberOfInterpolatedValues()I

    move-result v6

    new-array v7, v5, [D

    add-int/lit8 v0, v6, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mTempValues:[F

    new-array v0, v6, [F

    iput-object v0, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mCache:[F

    add-int/lit8 v0, v6, 0x2

    filled-new-array {v5, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_1

    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintAttribute;

    iget-object v2, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mWaveProperties:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    int-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    const-wide v10, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v8, v10

    aput-wide v8, v7, v4

    iget-object v8, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mTempValues:[F

    invoke-virtual {v1, v8}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getValuesToInterpolate([F)V

    move v1, v3

    :goto_1
    iget-object v8, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mTempValues:[F

    array-length v9, v8

    if-ge v1, v9, :cond_0

    aget-object v9, v0, v4

    aget v8, v8, v1

    float-to-double v10, v8

    aput-wide v10, v9, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    aget-object v1, v0, v4

    aget v8, v2, v3

    float-to-double v8, v8

    aput-wide v8, v1, v6

    aget-object v1, v0, v4

    add-int/lit8 v8, v6, 0x1

    const/4 v9, 0x1

    aget v2, v2, v9

    float-to-double v10, v2

    aput-wide v10, v1, v8

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_0

    :cond_1
    invoke-static {p1, v7, v0}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    return-void
.end method
