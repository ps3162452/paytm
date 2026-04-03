.class public abstract Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CoreSpline;,
        Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;,
        Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$IntDoubleSort;,
        Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$IntFloatFloatSort;,
        Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$PathRotateSet;,
        Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

.field private mCycleOscillator:Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;

.field private mType:Ljava/lang/String;

.field public mVariesBy:I

.field mWavePoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;",
            ">;"
        }
    .end annotation
.end field

.field private mWaveShape:I

.field private mWaveString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x12

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "cb07b1"

    const/16 v2, 0x73e3

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->TAG:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x28t
        0x7t
        0x49t
        0x74t
        0x1bt
        0x52t
        0xft
        0x7t
        0x7ft
        0x44t
        0x1t
        0x58t
        0xft
        0xet
        0x51t
        0x43t
        0xdt
        0x43t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mWaveShape:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mWaveString:Ljava/lang/String;

    iput v1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mVariesBy:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mWavePoints:Ljava/util/ArrayList;

    return-void
.end method

.method public static makeWidgetCycle(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "84a7a3"

    const/16 v2, 0x1cf6

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$PathRotateSet;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$PathRotateSet;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CoreSpline;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CoreSpline;-><init>(Ljava/lang/String;)V

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x48t
        0x55t
        0x15t
        0x5ft
        0x33t
        0x5ct
        0x4ct
        0x55t
        0x15t
        0x52t
    .end array-data
.end method


# virtual methods
.method public get(F)F
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mCycleOscillator:Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->getValues(F)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getCurveFit()Landroidx/constraintlayout/core/motion/utils/CurveFit;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    return-object v0
.end method

.method public getSlope(F)F
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mCycleOscillator:Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->getSlope(F)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method protected setCustom(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setPoint(IILjava/lang/String;IFFFF)V
    .locals 7

    iget-object v6, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mWavePoints:Ljava/util/ArrayList;

    new-instance v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;

    move v1, p1

    move v2, p5

    move v3, p6

    move v4, p7

    move v5, p8

    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;-><init>(IFFFF)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, -0x1

    if-eq p4, v0, :cond_0

    iput p4, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mVariesBy:I

    :cond_0
    iput p2, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mWaveShape:I

    iput-object p3, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mWaveString:Ljava/lang/String;

    return-void
.end method

.method public setPoint(IILjava/lang/String;IFFFFLjava/lang/Object;)V
    .locals 8

    iget-object v7, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mWavePoints:Ljava/util/ArrayList;

    new-instance v1, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;

    move v2, p1

    move v3, p5

    move v4, p6

    move v5, p7

    move/from16 v6, p8

    invoke-direct/range {v1 .. v6}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;-><init>(IFFFF)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, -0x1

    if-eq p4, v1, :cond_0

    iput p4, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mVariesBy:I

    :cond_0
    iput p2, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mWaveShape:I

    move-object/from16 v0, p9

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->setCustom(Ljava/lang/Object;)V

    iput-object p3, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mWaveString:Ljava/lang/String;

    return-void
.end method

.method public setProperty(Landroidx/constraintlayout/core/motion/MotionWidget;F)V
    .locals 0

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mType:Ljava/lang/String;

    return-void
.end method

.method public setup(F)V
    .locals 11

    const/4 v8, 0x0

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mWavePoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mWavePoints:Ljava/util/ArrayList;

    new-instance v2, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$1;

    invoke-direct {v2, p0}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$1;-><init>(Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-array v9, v1, [D

    const/4 v0, 0x3

    filled-new-array {v1, v0}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, [[D

    new-instance v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;

    iget v2, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mWaveShape:I

    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mWaveString:Ljava/lang/String;

    iget v4, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mVariesBy:I

    invoke-direct {v0, v2, v3, v4, v1}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;-><init>(ILjava/lang/String;II)V

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mCycleOscillator:Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mWavePoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v1, v8

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;

    iget v0, v6, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;->mPeriod:F

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v2, v4

    aput-wide v2, v9, v1

    aget-object v0, v7, v1

    iget v2, v6, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;->mValue:F

    float-to-double v2, v2

    aput-wide v2, v0, v8

    aget-object v0, v7, v1

    const/4 v2, 0x1

    iget v3, v6, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;->mOffset:F

    float-to-double v4, v3

    aput-wide v4, v0, v2

    aget-object v0, v7, v1

    const/4 v2, 0x2

    iget v3, v6, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;->mPhase:F

    float-to-double v4, v3

    aput-wide v4, v0, v2

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mCycleOscillator:Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;

    iget v2, v6, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;->mPosition:I

    iget v3, v6, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;->mPeriod:F

    iget v4, v6, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;->mOffset:F

    iget v5, v6, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;->mPhase:F

    iget v6, v6, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;->mValue:F

    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->setPoint(IIFFFF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mCycleOscillator:Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->setup(F)V

    invoke-static {v8, v9, v7}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    const/4 v8, 0x1

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mType:Ljava/lang/String;

    new-instance v2, Ljava/text/DecimalFormat;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v3, "4cd247"

    const-wide v4, -0x3e4c075fd6000000L    # -3.35061034E8

    invoke-static {v1, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mWavePoints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v8, [B

    const/4 v5, 0x0

    const/16 v6, 0x63

    aput-byte v6, v1, v5

    const-string v5, "8a070b"

    invoke-static {v1, v5, v8, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;->mPosition:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v5, "688115"

    const-wide/32 v6, -0x9620b74

    invoke-static {v1, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;->mValue:F

    float-to-double v0, v0

    invoke-virtual {v2, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "f8080b"

    const-wide v6, -0x3e49b75dfe000000L    # -3.73858818E8

    invoke-static {v0, v1, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_0
    return-object v1

    :array_0
    .array-data 1
        0x17t
        0x40t
        0x4at
        0x11t
        0x17t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x16t
        0x14t
        0x18t
    .end array-data

    :array_2
    .array-data 1
        0x3bt
        0x18t
    .end array-data
.end method

.method public variesByPath()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mVariesBy:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
