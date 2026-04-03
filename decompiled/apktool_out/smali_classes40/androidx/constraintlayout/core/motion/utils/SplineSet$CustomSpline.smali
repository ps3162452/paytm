.class public Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSpline;
.super Landroidx/constraintlayout/core/motion/utils/SplineSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/SplineSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomSpline"
.end annotation


# instance fields
.field mAttributeName:Ljava/lang/String;

.field mConstraintAttributeList:Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;

.field mTempValues:[F


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0}, Landroidx/constraintlayout/core/motion/utils/SplineSet;-><init>()V

    new-array v0, v3, [B

    const/4 v1, 0x0

    const/16 v2, 0x48

    aput-byte v2, v0, v1

    const-string v1, "ddfae4"

    const v2, 0x4ca96a63    # 8.882255E7f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v3

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSpline;->mAttributeName:Ljava/lang/String;

    iput-object p2, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSpline;->mConstraintAttributeList:Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;

    return-void
.end method


# virtual methods
.method public setPoint(IF)V
    .locals 6

    new-instance v0, Ljava/lang/RuntimeException;

    const/16 v1, 0x47

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "aa30e0"

    const-wide/32 v4, -0x7ed4b060

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x5t
        0xet
        0x5dt
        0x17t
        0x11t
        0x10t
        0x2t
        0x0t
        0x5ft
        0x5ct
        0x45t
        0x56t
        0xet
        0x13t
        0x13t
        0x53t
        0x10t
        0x43t
        0x15t
        0xet
        0x5et
        0x10t
        0x4t
        0x44t
        0x15t
        0x13t
        0x5at
        0x52t
        0x10t
        0x44t
        0x4t
        0x41t
        0x50t
        0x51t
        0x9t
        0x5ct
        0x41t
        0x12t
        0x56t
        0x44t
        0x35t
        0x5ft
        0x8t
        0xft
        0x47t
        0x18t
        0x15t
        0x5ft
        0x12t
        0x4dt
        0x13t
        0x73t
        0xat
        0x5et
        0x12t
        0x15t
        0x41t
        0x51t
        0xct
        0x5et
        0x15t
        0x20t
        0x47t
        0x44t
        0x17t
        0x59t
        0x3t
        0x14t
        0x47t
        0x55t
        0x4ct
    .end array-data
.end method

.method public setPoint(ILandroidx/constraintlayout/core/motion/CustomVariable;)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSpline;->mConstraintAttributeList:Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;

    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->append(ILandroidx/constraintlayout/core/motion/CustomVariable;)V

    return-void
.end method

.method public setProperty(Landroidx/constraintlayout/core/motion/MotionWidget;F)V
    .locals 4

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSpline;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    float-to-double v2, p2

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSpline;->mTempValues:[F

    invoke-virtual {v0, v2, v3, v1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[F)V

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSpline;->mConstraintAttributeList:Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->valueAt(I)Landroidx/constraintlayout/core/motion/CustomVariable;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSpline;->mTempValues:[F

    invoke-virtual {v0, p1, v1}, Landroidx/constraintlayout/core/motion/CustomVariable;->setInterpolatedValue(Landroidx/constraintlayout/core/motion/MotionWidget;[F)V

    return-void
.end method

.method public setProperty(Landroidx/constraintlayout/core/motion/utils/TypedValues;F)V
    .locals 0

    check-cast p1, Landroidx/constraintlayout/core/motion/MotionWidget;

    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSpline;->setProperty(Landroidx/constraintlayout/core/motion/MotionWidget;F)V

    return-void
.end method

.method public setup(I)V
    .locals 12

    const/4 v2, 0x0

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSpline;->mConstraintAttributeList:Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->size()I

    move-result v4

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSpline;->mConstraintAttributeList:Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->valueAt(I)Landroidx/constraintlayout/core/motion/CustomVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/CustomVariable;->numberOfInterpolatedValues()I

    move-result v0

    new-array v5, v4, [D

    new-array v1, v0, [F

    iput-object v1, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSpline;->mTempValues:[F

    filled-new-array {v4, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_1

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSpline;->mConstraintAttributeList:Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->keyAt(I)I

    move-result v1

    iget-object v6, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSpline;->mConstraintAttributeList:Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;

    invoke-virtual {v6, v3}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->valueAt(I)Landroidx/constraintlayout/core/motion/CustomVariable;

    move-result-object v6

    int-to-double v8, v1

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    const-wide v10, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v8, v10

    aput-wide v8, v5, v3

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSpline;->mTempValues:[F

    invoke-virtual {v6, v1}, Landroidx/constraintlayout/core/motion/CustomVariable;->getValuesToInterpolate([F)V

    move v1, v2

    :goto_1
    iget-object v6, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSpline;->mTempValues:[F

    array-length v7, v6

    if-ge v1, v7, :cond_0

    aget-object v7, v0, v3

    aget v6, v6, v1

    float-to-double v8, v6

    aput-wide v8, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_1
    invoke-static {p1, v5, v0}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSpline;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    return-void
.end method
