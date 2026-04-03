.class public final Landroidx/dynamicanimation/animation/SpringForce;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/dynamicanimation/animation/Force;


# static fields
.field public static final DAMPING_RATIO_HIGH_BOUNCY:F = 0.2f

.field public static final DAMPING_RATIO_LOW_BOUNCY:F = 0.75f

.field public static final DAMPING_RATIO_MEDIUM_BOUNCY:F = 0.5f

.field public static final DAMPING_RATIO_NO_BOUNCY:F = 1.0f

.field public static final STIFFNESS_HIGH:F = 10000.0f

.field public static final STIFFNESS_LOW:F = 200.0f

.field public static final STIFFNESS_MEDIUM:F = 1500.0f

.field public static final STIFFNESS_VERY_LOW:F = 50.0f

.field private static final UNSET:D = 1.7976931348623157E308

.field private static final VELOCITY_THRESHOLD_MULTIPLIER:D = 62.5


# instance fields
.field private mDampedFreq:D

.field mDampingRatio:D

.field private mFinalPosition:D

.field private mGammaMinus:D

.field private mGammaPlus:D

.field private mInitialized:Z

.field private final mMassState:Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

.field mNaturalFreq:D

.field private mValueThreshold:D

.field private mVelocityThreshold:D


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x4097700000000000L    # 1500.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mInitialized:Z

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    invoke-direct {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;-><init>()V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mMassState:Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    return-void
.end method

.method public constructor <init>(F)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x4097700000000000L    # 1500.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mInitialized:Z

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    invoke-direct {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;-><init>()V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mMassState:Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    float-to-double v0, p1

    iput-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    return-void
.end method

.method private init()V
    .locals 10

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    iget-boolean v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mInitialized:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x4b

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "8d0cce"

    const-wide v4, 0x41d6dd7c37800000L    # 1.53445603E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    cmpl-double v0, v0, v8

    if-lez v0, :cond_3

    iget-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    neg-double v0, v0

    iget-wide v2, p0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    iget-wide v4, p0, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    iget-wide v6, p0, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    mul-double/2addr v4, v6

    sub-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mGammaPlus:D

    iget-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    neg-double v0, v0

    iget-wide v2, p0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    iget-wide v4, p0, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    iget-wide v6, p0, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    mul-double/2addr v4, v6

    sub-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iput-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mGammaMinus:D

    :cond_2
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mInitialized:Z

    goto :goto_0

    :cond_3
    iget-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_2

    iget-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    cmpg-double v0, v0, v8

    if-gez v0, :cond_2

    iget-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    iget-wide v2, p0, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    iget-wide v4, p0, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    mul-double/2addr v2, v4

    sub-double v2, v8, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iput-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mDampedFreq:D

    goto :goto_1

    nop

    :array_0
    .array-data 1
        0x7dt
        0x16t
        0x42t
        0xct
        0x11t
        0x5ft
        0x18t
        0x22t
        0x59t
        0xdt
        0x2t
        0x9t
        0x18t
        0x14t
        0x5ft
        0x10t
        0xat
        0x11t
        0x51t
        0xbt
        0x5et
        0x43t
        0xct
        0x3t
        0x18t
        0x10t
        0x58t
        0x6t
        0x43t
        0x16t
        0x48t
        0x16t
        0x59t
        0xdt
        0x4t
        0x45t
        0x55t
        0x11t
        0x43t
        0x17t
        0x43t
        0x7t
        0x5dt
        0x44t
        0x43t
        0x6t
        0x17t
        0x45t
        0x5at
        0x1t
        0x56t
        0xct
        0x11t
        0x0t
        0x18t
        0x10t
        0x58t
        0x6t
        0x43t
        0x4t
        0x56t
        0xdt
        0x5dt
        0x2t
        0x17t
        0xct
        0x57t
        0xat
        0x10t
        0x10t
        0x17t
        0x4t
        0x4at
        0x10t
        0x43t
    .end array-data
.end method


# virtual methods
.method public getAcceleration(FF)F
    .locals 10
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result v0

    iget-wide v2, p0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    iget-wide v4, p0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    iget-wide v6, p0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    iget-wide v8, p0, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    mul-double/2addr v2, v4

    neg-double v2, v2

    sub-float v0, p1, v0

    float-to-double v0, v0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v6

    mul-double/2addr v2, v8

    float-to-double v4, p2

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public getDampingRatio()F
    .locals 2

    iget-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    double-to-float v0, v0

    return v0
.end method

.method public getFinalPosition()F
    .locals 2

    iget-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    double-to-float v0, v0

    return v0
.end method

.method public getStiffness()F
    .locals 4

    iget-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    iget-wide v2, p0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    mul-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public isAtEquilibrium(FF)Z
    .locals 4
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    iget-wide v2, p0, Landroidx/dynamicanimation/animation/SpringForce;->mVelocityThreshold:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result v0

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    iget-wide v2, p0, Landroidx/dynamicanimation/animation/SpringForce;->mValueThreshold:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;
    .locals 6
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
        .end annotation
    .end param

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x22

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "b3280a"

    const-wide/32 v4, 0x6375c437

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    float-to-double v0, p1

    iput-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mInitialized:Z

    return-object p0

    :array_0
    .array-data 1
        0x26t
        0x52t
        0x5ft
        0x48t
        0x59t
        0xft
        0x5t
        0x13t
        0x40t
        0x59t
        0x44t
        0x8t
        0xdt
        0x13t
        0x5ft
        0x4dt
        0x43t
        0x15t
        0x42t
        0x51t
        0x57t
        0x18t
        0x5et
        0xet
        0xct
        0x1et
        0x5ct
        0x5dt
        0x57t
        0x0t
        0x16t
        0x5at
        0x44t
        0x5dt
    .end array-data
.end method

.method public setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;
    .locals 2

    float-to-double v0, p1

    iput-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    return-object p0
.end method

.method public setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;
    .locals 4
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            fromInclusive = false
        .end annotation
    .end param

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x2b

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "fa24a0"

    const/16 v3, -0x7f41

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mInitialized:Z

    return-object p0

    nop

    :array_0
    .array-data 1
        0x35t
        0x11t
        0x40t
        0x5dt
        0xft
        0x57t
        0x46t
        0x12t
        0x46t
        0x5dt
        0x7t
        0x56t
        0x8t
        0x4t
        0x41t
        0x47t
        0x41t
        0x53t
        0x9t
        0xft
        0x41t
        0x40t
        0x0t
        0x5et
        0x12t
        0x41t
        0x5ft
        0x41t
        0x12t
        0x44t
        0x46t
        0x3t
        0x57t
        0x14t
        0x11t
        0x5ft
        0x15t
        0x8t
        0x46t
        0x5dt
        0x17t
        0x55t
        0x48t
    .end array-data
.end method

.method setValueThreshold(D)V
    .locals 5

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iput-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mValueThreshold:D

    iget-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mValueThreshold:D

    const-wide v2, 0x404f400000000000L    # 62.5

    mul-double/2addr v0, v2

    iput-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mVelocityThreshold:D

    return-void
.end method

.method updateValues(DDJ)Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;
    .locals 19

    invoke-direct/range {p0 .. p0}, Landroidx/dynamicanimation/animation/SpringForce;->init()V

    move-wide/from16 v0, p5

    long-to-double v2, v0

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    sub-double v6, p1, v4

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v4, v8

    if-lez v4, :cond_0

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroidx/dynamicanimation/animation/SpringForce;->mGammaMinus:D

    mul-double/2addr v4, v6

    sub-double v4, v4, p3

    move-object/from16 v0, p0

    iget-wide v8, v0, Landroidx/dynamicanimation/animation/SpringForce;->mGammaMinus:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroidx/dynamicanimation/animation/SpringForce;->mGammaPlus:D

    sub-double/2addr v8, v10

    div-double/2addr v4, v8

    sub-double v8, v6, v4

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroidx/dynamicanimation/animation/SpringForce;->mGammaMinus:D

    mul-double/2addr v4, v6

    sub-double v4, v4, p3

    move-object/from16 v0, p0

    iget-wide v6, v0, Landroidx/dynamicanimation/animation/SpringForce;->mGammaMinus:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroidx/dynamicanimation/animation/SpringForce;->mGammaPlus:D

    sub-double/2addr v6, v10

    div-double v6, v4, v6

    const-wide v4, 0x4005bf0a8b145769L    # Math.E

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroidx/dynamicanimation/animation/SpringForce;->mGammaMinus:D

    mul-double/2addr v10, v2

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v4, v8

    const-wide v10, 0x4005bf0a8b145769L    # Math.E

    move-object/from16 v0, p0

    iget-wide v12, v0, Landroidx/dynamicanimation/animation/SpringForce;->mGammaPlus:D

    mul-double/2addr v12, v2

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    mul-double/2addr v10, v6

    add-double/2addr v4, v10

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroidx/dynamicanimation/animation/SpringForce;->mGammaMinus:D

    mul-double/2addr v8, v10

    const-wide v10, 0x4005bf0a8b145769L    # Math.E

    move-object/from16 v0, p0

    iget-wide v12, v0, Landroidx/dynamicanimation/animation/SpringForce;->mGammaMinus:D

    mul-double/2addr v12, v2

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroidx/dynamicanimation/animation/SpringForce;->mGammaPlus:D

    mul-double/2addr v6, v10

    const-wide v10, 0x4005bf0a8b145769L    # Math.E

    move-object/from16 v0, p0

    iget-wide v12, v0, Landroidx/dynamicanimation/animation/SpringForce;->mGammaPlus:D

    mul-double/2addr v2, v12

    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v2, v6

    add-double/2addr v2, v8

    :goto_0
    move-object/from16 v0, p0

    iget-object v6, v0, Landroidx/dynamicanimation/animation/SpringForce;->mMassState:Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    move-object/from16 v0, p0

    iget-wide v8, v0, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    add-double/2addr v4, v8

    double-to-float v4, v4

    iput v4, v6, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/dynamicanimation/animation/SpringForce;->mMassState:Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    double-to-float v2, v2

    iput v2, v4, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/dynamicanimation/animation/SpringForce;->mMassState:Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    return-object v2

    :cond_0
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v4, v8

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    mul-double/2addr v4, v6

    add-double v8, p3, v4

    mul-double v4, v8, v2

    add-double/2addr v4, v6

    const-wide v10, 0x4005bf0a8b145769L    # Math.E

    move-object/from16 v0, p0

    iget-wide v12, v0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    neg-double v12, v12

    mul-double/2addr v12, v2

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    mul-double/2addr v4, v10

    mul-double v10, v8, v2

    add-double/2addr v6, v10

    const-wide v10, 0x4005bf0a8b145769L    # Math.E

    move-object/from16 v0, p0

    iget-wide v12, v0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    neg-double v12, v12

    mul-double/2addr v12, v2

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    mul-double/2addr v6, v10

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    neg-double v10, v10

    mul-double/2addr v6, v10

    const-wide v10, 0x4005bf0a8b145769L    # Math.E

    move-object/from16 v0, p0

    iget-wide v12, v0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    neg-double v12, v12

    mul-double/2addr v2, v12

    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v2, v8

    add-double/2addr v2, v6

    goto :goto_0

    :cond_1
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-wide v8, v0, Landroidx/dynamicanimation/animation/SpringForce;->mDampedFreq:D

    div-double/2addr v4, v8

    move-object/from16 v0, p0

    iget-wide v8, v0, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    mul-double/2addr v8, v10

    mul-double/2addr v8, v6

    add-double v8, v8, p3

    mul-double/2addr v8, v4

    const-wide v4, 0x4005bf0a8b145769L    # Math.E

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    neg-double v10, v10

    move-object/from16 v0, p0

    iget-wide v12, v0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    mul-double/2addr v10, v12

    mul-double/2addr v10, v2

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroidx/dynamicanimation/animation/SpringForce;->mDampedFreq:D

    mul-double/2addr v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v10, v6

    move-object/from16 v0, p0

    iget-wide v12, v0, Landroidx/dynamicanimation/animation/SpringForce;->mDampedFreq:D

    mul-double/2addr v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v12, v8

    add-double/2addr v10, v12

    mul-double/2addr v4, v10

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    neg-double v10, v10

    mul-double/2addr v10, v4

    move-object/from16 v0, p0

    iget-wide v12, v0, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    mul-double/2addr v10, v12

    const-wide v12, 0x4005bf0a8b145769L    # Math.E

    move-object/from16 v0, p0

    iget-wide v14, v0, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    neg-double v14, v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    mul-double/2addr v14, v2

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Landroidx/dynamicanimation/animation/SpringForce;->mDampedFreq:D

    neg-double v14, v14

    mul-double/2addr v6, v14

    move-object/from16 v0, p0

    iget-wide v14, v0, Landroidx/dynamicanimation/animation/SpringForce;->mDampedFreq:D

    mul-double/2addr v14, v2

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v6, v14

    move-object/from16 v0, p0

    iget-wide v14, v0, Landroidx/dynamicanimation/animation/SpringForce;->mDampedFreq:D

    mul-double/2addr v8, v14

    move-object/from16 v0, p0

    iget-wide v14, v0, Landroidx/dynamicanimation/animation/SpringForce;->mDampedFreq:D

    mul-double/2addr v2, v14

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v2, v8

    add-double/2addr v2, v6

    mul-double/2addr v2, v12

    add-double/2addr v2, v10

    goto/16 :goto_0
.end method
