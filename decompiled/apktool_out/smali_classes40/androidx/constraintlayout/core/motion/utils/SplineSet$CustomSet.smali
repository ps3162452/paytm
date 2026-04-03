.class public Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSet;
.super Landroidx/constraintlayout/core/motion/utils/SplineSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/SplineSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomSet"
.end annotation


# instance fields
.field mAttributeName:Ljava/lang/String;

.field mConstraintAttributeList:Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomArray;

.field mTempValues:[F


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomArray;)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0}, Landroidx/constraintlayout/core/motion/utils/SplineSet;-><init>()V

    new-array v0, v3, [B

    const/4 v1, 0x0

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const-string v1, "98c08a"

    const/16 v2, 0x1c9e

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v3

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSet;->mAttributeName:Ljava/lang/String;

    iput-object p2, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSet;->mConstraintAttributeList:Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomArray;

    return-void
.end method


# virtual methods
.method public setPoint(IF)V
    .locals 4

    new-instance v0, Ljava/lang/RuntimeException;

    const/16 v1, 0x47

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "f98f25"

    const/16 v3, -0x3bc3

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x2t
        0x56t
        0x56t
        0x41t
        0x46t
        0x15t
        0x5t
        0x58t
        0x54t
        0xat
        0x12t
        0x53t
        0x9t
        0x4bt
        0x18t
        0x5t
        0x47t
        0x46t
        0x12t
        0x56t
        0x55t
        0x46t
        0x53t
        0x41t
        0x12t
        0x4bt
        0x51t
        0x4t
        0x47t
        0x41t
        0x3t
        0x19t
        0x5bt
        0x7t
        0x5et
        0x59t
        0x46t
        0x4at
        0x5dt
        0x12t
        0x62t
        0x5at
        0xft
        0x57t
        0x4ct
        0x4et
        0x42t
        0x5at
        0x15t
        0x15t
        0x18t
        0x25t
        0x5dt
        0x5bt
        0x15t
        0x4dt
        0x4at
        0x7t
        0x5bt
        0x5bt
        0x12t
        0x78t
        0x4ct
        0x12t
        0x40t
        0x5ct
        0x4t
        0x4ct
        0x4ct
        0x3t
        0x1bt
    .end array-data
.end method

.method public setPoint(ILandroidx/constraintlayout/core/motion/CustomAttribute;)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSet;->mConstraintAttributeList:Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomArray;

    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomArray;->append(ILandroidx/constraintlayout/core/motion/CustomAttribute;)V

    return-void
.end method

.method public setProperty(Landroidx/constraintlayout/core/state/WidgetFrame;F)V
    .locals 4

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSet;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    float-to-double v2, p2

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSet;->mTempValues:[F

    invoke-virtual {v0, v2, v3, v1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[F)V

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSet;->mConstraintAttributeList:Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomArray;->valueAt(I)Landroidx/constraintlayout/core/motion/CustomAttribute;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSet;->mTempValues:[F

    invoke-virtual {v0, p1, v1}, Landroidx/constraintlayout/core/motion/CustomAttribute;->setInterpolatedValue(Ljava/lang/Object;[F)V

    return-void
.end method

.method public setup(I)V
    .locals 12

    const/4 v2, 0x0

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSet;->mConstraintAttributeList:Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomArray;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomArray;->size()I

    move-result v4

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSet;->mConstraintAttributeList:Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomArray;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomArray;->valueAt(I)Landroidx/constraintlayout/core/motion/CustomAttribute;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/CustomAttribute;->numberOfInterpolatedValues()I

    move-result v0

    new-array v5, v4, [D

    new-array v1, v0, [F

    iput-object v1, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSet;->mTempValues:[F

    filled-new-array {v4, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_1

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSet;->mConstraintAttributeList:Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomArray;

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomArray;->keyAt(I)I

    move-result v1

    iget-object v6, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSet;->mConstraintAttributeList:Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomArray;

    invoke-virtual {v6, v3}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomArray;->valueAt(I)Landroidx/constraintlayout/core/motion/CustomAttribute;

    move-result-object v6

    int-to-double v8, v1

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    const-wide v10, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v8, v10

    aput-wide v8, v5, v3

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSet;->mTempValues:[F

    invoke-virtual {v6, v1}, Landroidx/constraintlayout/core/motion/CustomAttribute;->getValuesToInterpolate([F)V

    move v1, v2

    :goto_1
    iget-object v6, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSet;->mTempValues:[F

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

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSet;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    return-void
.end method
