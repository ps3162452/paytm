.class Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CycleOscillator"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field static final UNSET:I = -0x1


# instance fields
.field private final OFFST:I

.field private final PHASE:I

.field private final VALUE:I

.field mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

.field mOffset:[F

.field mOscillator:Landroidx/constraintlayout/core/motion/utils/Oscillator;

.field mPathLength:F

.field mPeriod:[F

.field mPhase:[F

.field mPosition:[D

.field mScale:[F

.field mSplineSlopeCache:[D

.field mSplineValueCache:[D

.field mValues:[F

.field private final mVariesBy:I

.field mWaveShape:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "e59952"

    const-wide/32 v2, -0x78a25b65

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->TAG:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x26t
        0x4ct
        0x5at
        0x55t
        0x50t
        0x7dt
        0x16t
        0x56t
        0x50t
        0x55t
        0x59t
        0x53t
        0x11t
        0x5at
        0x4bt
    .end array-data
.end method

.method constructor <init>(ILjava/lang/String;II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/constraintlayout/core/motion/utils/Oscillator;

    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/utils/Oscillator;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mOscillator:Landroidx/constraintlayout/core/motion/utils/Oscillator;

    const/4 v1, 0x0

    iput v1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->OFFST:I

    const/4 v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->PHASE:I

    const/4 v1, 0x2

    iput v1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->VALUE:I

    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mWaveShape:I

    iput p3, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mVariesBy:I

    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/Oscillator;->setType(ILjava/lang/String;)V

    new-array v0, p4, [F

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mValues:[F

    new-array v0, p4, [D

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPosition:[D

    new-array v0, p4, [F

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPeriod:[F

    new-array v0, p4, [F

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mOffset:[F

    new-array v0, p4, [F

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPhase:[F

    new-array v0, p4, [F

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mScale:[F

    return-void
.end method


# virtual methods
.method public getLastPhase()D
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getSlope(F)D
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x2

    const-wide/16 v2, 0x0

    const/4 v6, 0x1

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    if-eqz v0, :cond_0

    float-to-double v2, p1

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineSlopeCache:[D

    invoke-virtual {v0, v2, v3, v1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    float-to-double v2, p1

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    invoke-virtual {v0, v2, v3, v1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mOscillator:Landroidx/constraintlayout/core/motion/utils/Oscillator;

    float-to-double v2, p1

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    aget-wide v4, v1, v6

    invoke-virtual {v0, v2, v3, v4, v5}, Landroidx/constraintlayout/core/motion/utils/Oscillator;->getValue(DD)D

    move-result-wide v8

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mOscillator:Landroidx/constraintlayout/core/motion/utils/Oscillator;

    float-to-double v2, p1

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    aget-wide v4, v0, v6

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineSlopeCache:[D

    aget-wide v6, v0, v6

    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/core/motion/utils/Oscillator;->getSlope(DDD)D

    move-result-wide v0

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineSlopeCache:[D

    aget-wide v4, v2, v11

    aget-wide v2, v2, v10

    mul-double/2addr v2, v8

    add-double/2addr v2, v4

    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    aget-wide v4, v4, v10

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    return-wide v0

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineSlopeCache:[D

    aput-wide v2, v0, v11

    aput-wide v2, v0, v6

    aput-wide v2, v0, v10

    goto :goto_0
.end method

.method public getValues(F)D
    .locals 9

    const/4 v8, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    if-eqz v0, :cond_0

    float-to-double v2, p1

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    invoke-virtual {v0, v2, v3, v1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    aget-wide v2, v0, v4

    aget-wide v0, v0, v5

    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mOscillator:Landroidx/constraintlayout/core/motion/utils/Oscillator;

    float-to-double v6, p1

    invoke-virtual {v4, v6, v7, v0, v1}, Landroidx/constraintlayout/core/motion/utils/Oscillator;->getValue(DD)D

    move-result-wide v0

    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    aget-wide v4, v4, v8

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    return-wide v0

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mOffset:[F

    aget v1, v1, v4

    float-to-double v2, v1

    aput-wide v2, v0, v4

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPhase:[F

    aget v1, v1, v4

    float-to-double v2, v1

    aput-wide v2, v0, v5

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mValues:[F

    aget v1, v1, v4

    float-to-double v2, v1

    aput-wide v2, v0, v8

    goto :goto_0
.end method

.method public setPoint(IIFFFF)V
    .locals 6

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPosition:[D

    int-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    aput-wide v2, v0, p1

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPeriod:[F

    aput p3, v0, p1

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mOffset:[F

    aput p4, v0, p1

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPhase:[F

    aput p5, v0, p1

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mValues:[F

    aput p6, v0, p1

    return-void
.end method

.method public setup(F)V
    .locals 11

    const/4 v10, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPathLength:F

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPosition:[D

    array-length v0, v0

    const/4 v1, 0x3

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mValues:[F

    array-length v3, v1

    add-int/lit8 v3, v3, 0x2

    new-array v3, v3, [D

    iput-object v3, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    array-length v1, v1

    add-int/lit8 v1, v1, 0x2

    new-array v1, v1, [D

    iput-object v1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineSlopeCache:[D

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPosition:[D

    aget-wide v4, v1, v2

    cmpl-double v1, v4, v6

    if-lez v1, :cond_0

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mOscillator:Landroidx/constraintlayout/core/motion/utils/Oscillator;

    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPeriod:[F

    aget v3, v3, v2

    invoke-virtual {v1, v6, v7, v3}, Landroidx/constraintlayout/core/motion/utils/Oscillator;->addPoint(DF)V

    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPosition:[D

    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-wide v4, v1, v3

    cmpg-double v1, v4, v8

    if-gez v1, :cond_1

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mOscillator:Landroidx/constraintlayout/core/motion/utils/Oscillator;

    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPeriod:[F

    aget v3, v4, v3

    invoke-virtual {v1, v8, v9, v3}, Landroidx/constraintlayout/core/motion/utils/Oscillator;->addPoint(DF)V

    :cond_1
    move v1, v2

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_2

    aget-object v3, v0, v1

    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mOffset:[F

    aget v4, v4, v1

    float-to-double v4, v4

    aput-wide v4, v3, v2

    aget-object v3, v0, v1

    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPhase:[F

    aget v4, v4, v1

    float-to-double v4, v4

    aput-wide v4, v3, v10

    aget-object v3, v0, v1

    const/4 v4, 0x2

    iget-object v5, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mValues:[F

    aget v5, v5, v1

    float-to-double v6, v5

    aput-wide v6, v3, v4

    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mOscillator:Landroidx/constraintlayout/core/motion/utils/Oscillator;

    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPosition:[D

    aget-wide v4, v4, v1

    iget-object v6, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPeriod:[F

    aget v6, v6, v1

    invoke-virtual {v3, v4, v5, v6}, Landroidx/constraintlayout/core/motion/utils/Oscillator;->addPoint(DF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mOscillator:Landroidx/constraintlayout/core/motion/utils/Oscillator;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/utils/Oscillator;->normalize()V

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPosition:[D

    array-length v3, v1

    if-le v3, v10, :cond_3

    invoke-static {v2, v1, v0}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    :goto_1
    return-void

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    goto :goto_1
.end method
