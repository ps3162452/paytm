.class public Landroidx/constraintlayout/motion/widget/KeyCycle;
.super Landroidx/constraintlayout/motion/widget/Key;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;
    }
.end annotation


# static fields
.field public static final KEY_TYPE:I = 0x4

.field static final NAME:Ljava/lang/String;

.field public static final SHAPE_BOUNCE:I = 0x6

.field public static final SHAPE_COS_WAVE:I = 0x5

.field public static final SHAPE_REVERSE_SAW_WAVE:I = 0x4

.field public static final SHAPE_SAW_WAVE:I = 0x3

.field public static final SHAPE_SIN_WAVE:I = 0x0

.field public static final SHAPE_SQUARE_WAVE:I = 0x1

.field public static final SHAPE_TRIANGLE_WAVE:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field public static final WAVE_OFFSET:Ljava/lang/String;

.field public static final WAVE_PERIOD:Ljava/lang/String;

.field public static final WAVE_PHASE:Ljava/lang/String;

.field public static final WAVE_SHAPE:Ljava/lang/String;


# instance fields
.field private mAlpha:F

.field private mCurveFit:I

.field private mCustomWaveShape:Ljava/lang/String;

.field private mElevation:F

.field private mProgress:F

.field private mRotation:F

.field private mRotationX:F

.field private mRotationY:F

.field private mScaleX:F

.field private mScaleY:F

.field private mTransitionEasing:Ljava/lang/String;

.field private mTransitionPathRotate:F

.field private mTranslationX:F

.field private mTranslationY:F

.field private mTranslationZ:F

.field private mWaveOffset:F

.field private mWavePeriod:F

.field private mWavePhase:F

.field private mWaveShape:I

.field private mWaveVariesBy:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v8, 0xa

    const/16 v7, 0x9

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-array v0, v6, [B

    fill-array-data v0, :array_0

    const-string v1, "6ebbff"

    const-wide v2, -0x3e314dc2dc000000L    # -1.02999508E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->NAME:Ljava/lang/String;

    new-array v0, v6, [B

    fill-array-data v0, :array_1

    const-string v1, "696108"

    invoke-static {v0, v1, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->TAG:Ljava/lang/String;

    new-array v0, v8, [B

    fill-array-data v0, :array_2

    const-string v1, "683264"

    invoke-static {v0, v1, v5, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->WAVE_OFFSET:Ljava/lang/String;

    new-array v0, v8, [B

    fill-array-data v0, :array_3

    const-string v1, "7c193e"

    invoke-static {v0, v1, v5, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->WAVE_PERIOD:Ljava/lang/String;

    new-array v0, v7, [B

    fill-array-data v0, :array_4

    const-string v1, "bde669"

    const-wide/32 v2, -0x246efb18

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->WAVE_PHASE:Ljava/lang/String;

    new-array v0, v7, [B

    fill-array-data v0, :array_5

    const-string v1, "22445c"

    invoke-static {v0, v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->WAVE_SHAPE:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x7dt
        0x0t
        0x1bt
        0x21t
        0x1ft
        0x5t
        0x5at
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x7dt
        0x5ct
        0x4ft
        0x72t
        0x49t
        0x5bt
        0x5at
        0x5ct
    .end array-data

    :array_2
    .array-data 1
        0x41t
        0x59t
        0x45t
        0x57t
        0x79t
        0x52t
        0x50t
        0x4bt
        0x56t
        0x46t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x40t
        0x2t
        0x47t
        0x5ct
        0x63t
        0x0t
        0x45t
        0xat
        0x5et
        0x5dt
    .end array-data

    nop

    :array_4
    .array-data 1
        0x15t
        0x5t
        0x13t
        0x53t
        0x66t
        0x51t
        0x3t
        0x17t
        0x0t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x45t
        0x53t
        0x42t
        0x51t
        0x66t
        0xbt
        0x53t
        0x42t
        0x51t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/high16 v1, 0x7fc00000    # Float.NaN

    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/Key;-><init>()V

    iput-object v4, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTransitionEasing:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mCurveFit:I

    iput v3, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveShape:I

    iput-object v4, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mCustomWaveShape:Ljava/lang/String;

    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePeriod:F

    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveOffset:F

    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePhase:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mProgress:F

    iput v3, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveVariesBy:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mAlpha:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mElevation:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotation:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTransitionPathRotate:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationX:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationY:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleX:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleY:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationX:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationY:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationZ:F

    const/4 v0, 0x4

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mType:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mCustomConstraints:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$1000(Landroidx/constraintlayout/motion/widget/KeyCycle;)F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotation:F

    return v0
.end method

.method static synthetic access$1002(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotation:F

    return p1
.end method

.method static synthetic access$102(Landroidx/constraintlayout/motion/widget/KeyCycle;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTransitionEasing:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Landroidx/constraintlayout/motion/widget/KeyCycle;)F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationX:F

    return v0
.end method

.method static synthetic access$1102(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationX:F

    return p1
.end method

.method static synthetic access$1200(Landroidx/constraintlayout/motion/widget/KeyCycle;)F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationY:F

    return v0
.end method

.method static synthetic access$1202(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationY:F

    return p1
.end method

.method static synthetic access$1300(Landroidx/constraintlayout/motion/widget/KeyCycle;)F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTransitionPathRotate:F

    return v0
.end method

.method static synthetic access$1302(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTransitionPathRotate:F

    return p1
.end method

.method static synthetic access$1400(Landroidx/constraintlayout/motion/widget/KeyCycle;)F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleX:F

    return v0
.end method

.method static synthetic access$1402(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleX:F

    return p1
.end method

.method static synthetic access$1500(Landroidx/constraintlayout/motion/widget/KeyCycle;)F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleY:F

    return v0
.end method

.method static synthetic access$1502(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleY:F

    return p1
.end method

.method static synthetic access$1600(Landroidx/constraintlayout/motion/widget/KeyCycle;)F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationX:F

    return v0
.end method

.method static synthetic access$1602(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationX:F

    return p1
.end method

.method static synthetic access$1700(Landroidx/constraintlayout/motion/widget/KeyCycle;)F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationY:F

    return v0
.end method

.method static synthetic access$1702(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationY:F

    return p1
.end method

.method static synthetic access$1800(Landroidx/constraintlayout/motion/widget/KeyCycle;)F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationZ:F

    return v0
.end method

.method static synthetic access$1802(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationZ:F

    return p1
.end method

.method static synthetic access$1900(Landroidx/constraintlayout/motion/widget/KeyCycle;)F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mProgress:F

    return v0
.end method

.method static synthetic access$1902(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mProgress:F

    return p1
.end method

.method static synthetic access$200(Landroidx/constraintlayout/motion/widget/KeyCycle;)I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mCurveFit:I

    return v0
.end method

.method static synthetic access$2000(Landroidx/constraintlayout/motion/widget/KeyCycle;)F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePhase:F

    return v0
.end method

.method static synthetic access$2002(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePhase:F

    return p1
.end method

.method static synthetic access$202(Landroidx/constraintlayout/motion/widget/KeyCycle;I)I
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mCurveFit:I

    return p1
.end method

.method static synthetic access$302(Landroidx/constraintlayout/motion/widget/KeyCycle;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mCustomWaveShape:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Landroidx/constraintlayout/motion/widget/KeyCycle;)I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveShape:I

    return v0
.end method

.method static synthetic access$402(Landroidx/constraintlayout/motion/widget/KeyCycle;I)I
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveShape:I

    return p1
.end method

.method static synthetic access$500(Landroidx/constraintlayout/motion/widget/KeyCycle;)F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePeriod:F

    return v0
.end method

.method static synthetic access$502(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePeriod:F

    return p1
.end method

.method static synthetic access$600(Landroidx/constraintlayout/motion/widget/KeyCycle;)F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveOffset:F

    return v0
.end method

.method static synthetic access$602(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveOffset:F

    return p1
.end method

.method static synthetic access$700(Landroidx/constraintlayout/motion/widget/KeyCycle;)I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveVariesBy:I

    return v0
.end method

.method static synthetic access$702(Landroidx/constraintlayout/motion/widget/KeyCycle;I)I
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveVariesBy:I

    return p1
.end method

.method static synthetic access$800(Landroidx/constraintlayout/motion/widget/KeyCycle;)F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mAlpha:F

    return v0
.end method

.method static synthetic access$802(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mAlpha:F

    return p1
.end method

.method static synthetic access$900(Landroidx/constraintlayout/motion/widget/KeyCycle;)F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mElevation:F

    return v0
.end method

.method static synthetic access$902(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mElevation:F

    return p1
.end method


# virtual methods
.method public addCycleValues(Ljava/util/HashMap;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/motion/utils/ViewOscillator;",
            ">;)V"
        }
    .end annotation

    const/4 v11, 0x6

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-array v1, v11, [B

    fill-array-data v1, :array_0

    const-string v2, "101c70"

    const/16 v3, -0x1a3f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-array v1, v11, [B

    fill-array-data v1, :array_1

    const-string v2, "e02df1"

    const-wide/32 v4, 0x1aab1ede

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/widget/ConstraintAttribute;

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getType()Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    move-result-object v1

    sget-object v2, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->FLOAT_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    if-ne v1, v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    if-eqz v0, :cond_0

    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mFramePosition:I

    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveShape:I

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mCustomWaveShape:Ljava/lang/String;

    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveVariesBy:I

    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePeriod:F

    iget v6, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveOffset:F

    iget v7, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePhase:F

    invoke-virtual {v9}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getValueToInterpolate()F

    move-result v8

    invoke-virtual/range {v0 .. v9}, Landroidx/constraintlayout/motion/utils/ViewOscillator;->setPoint(IILjava/lang/String;IFFFFLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/KeyCycle;->getValue(Ljava/lang/String;)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    if-eqz v0, :cond_0

    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mFramePosition:I

    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveShape:I

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mCustomWaveShape:Ljava/lang/String;

    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveVariesBy:I

    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePeriod:F

    iget v6, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveOffset:F

    iget v7, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePhase:F

    invoke-virtual/range {v0 .. v8}, Landroidx/constraintlayout/motion/utils/ViewOscillator;->setPoint(IILjava/lang/String;IFFFF)V

    goto/16 :goto_0

    :cond_2
    return-void

    :array_0
    .array-data 1
        0x72t
        0x65t
        0x62t
        0x37t
        0x78t
        0x7dt
    .end array-data

    nop

    :array_1
    .array-data 1
        0x26t
        0x65t
        0x61t
        0x30t
        0x29t
        0x7ct
    .end array-data
.end method

.method public addValues(Ljava/util/HashMap;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/motion/utils/ViewSpline;",
            ">;)V"
        }
    .end annotation

    const/16 v7, 0x8

    const/16 v3, 0xc

    const/16 v6, 0x9

    const/4 v5, 0x6

    const/4 v4, 0x1

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x16

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x4

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v8, "0aa417"

    const v9, 0x4ea33497

    invoke-static {v2, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v2, "957751"

    const-wide/32 v8, 0x1c169d0e

    invoke-static {v0, v2, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->NAME:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroidx/constraintlayout/motion/widget/Debug;->logStack(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    if-eqz v0, :cond_0

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v2, :pswitch_data_0

    new-array v0, v5, [B

    fill-array-data v0, :array_2

    const-string v2, "725bd6"

    invoke-static {v0, v2, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0xb

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "26a456"

    const/16 v9, -0x3158

    invoke-static {v1, v2, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    const/16 v1, 0x10

    new-array v1, v1, [B

    fill-array-data v1, :array_4

    const-string v2, "45ea53"

    invoke-static {v1, v2, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_0
    sget-object v9, Landroidx/constraintlayout/motion/widget/KeyCycle;->WAVE_PHASE:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move v2, v3

    goto :goto_1

    :sswitch_1
    sget-object v9, Landroidx/constraintlayout/motion/widget/KeyCycle;->WAVE_OFFSET:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v2, 0xb

    goto :goto_1

    :sswitch_2
    const/4 v9, 0x5

    new-array v9, v9, [B

    fill-array-data v9, :array_5

    const-string v10, "3711cd"

    invoke-static {v9, v10, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_3
    const/16 v9, 0x14

    new-array v9, v9, [B

    fill-array-data v9, :array_6

    const-string v10, "263dcc"

    invoke-static {v9, v10, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_4
    new-array v9, v6, [B

    fill-array-data v9, :array_7

    const-string v10, "f29417"

    const-wide/32 v12, 0x3f9828cd

    invoke-static {v9, v10, v12, v13}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move v2, v4

    goto/16 :goto_1

    :sswitch_5
    new-array v9, v7, [B

    fill-array-data v9, :array_8

    const-string v10, "f7bae6"

    const v11, -0x322ea821

    invoke-static {v9, v10, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v2, 0x2

    goto/16 :goto_1

    :sswitch_6
    new-array v9, v5, [B

    fill-array-data v9, :array_9

    const-string v10, "7dc56b"

    const-wide v12, 0x41b308f344000000L    # 3.19353668E8

    invoke-static {v9, v10, v12, v13}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v2, 0x7

    goto/16 :goto_1

    :sswitch_7
    new-array v9, v5, [B

    fill-array-data v9, :array_a

    const-string v10, "92b637"

    const v11, -0x31ef4616

    invoke-static {v9, v10, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move v2, v5

    goto/16 :goto_1

    :sswitch_8
    new-array v9, v7, [B

    fill-array-data v9, :array_b

    const-string v10, "c20fc7"

    const-wide/32 v12, -0x47ee43ae

    invoke-static {v9, v10, v12, v13}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v2, 0xd

    goto/16 :goto_1

    :sswitch_9
    new-array v9, v3, [B

    fill-array-data v9, :array_c

    const-string v10, "05a35c"

    const-wide/32 v12, 0x312a75b3

    invoke-static {v9, v10, v12, v13}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v2, 0xa

    goto/16 :goto_1

    :sswitch_a
    new-array v9, v3, [B

    fill-array-data v9, :array_d

    const-string v10, "076907"

    const-wide v12, 0x41b728e4b9000000L    # 3.88555961E8

    invoke-static {v9, v10, v12, v13}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move v2, v6

    goto/16 :goto_1

    :sswitch_b
    new-array v9, v3, [B

    fill-array-data v9, :array_e

    const-string v10, "bc7a4c"

    const-wide v12, 0x41d12f083f400000L    # 1.153179901E9

    invoke-static {v9, v10, v12, v13}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move v2, v7

    goto/16 :goto_1

    :sswitch_c
    new-array v9, v6, [B

    fill-array-data v9, :array_f

    const-string v10, "188c37"

    const-wide v12, 0x41d1dd7108c00000L    # 1.198900259E9

    invoke-static {v9, v10, v12, v13}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v2, 0x4

    goto/16 :goto_1

    :sswitch_d
    new-array v9, v6, [B

    fill-array-data v9, :array_10

    const-string v10, "c960bd"

    const/16 v11, -0x47d6

    invoke-static {v9, v10, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v2, 0x3

    goto/16 :goto_1

    :pswitch_0
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mFramePosition:I

    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mProgress:F

    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/16 :goto_0

    :pswitch_1
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mFramePosition:I

    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePhase:F

    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/16 :goto_0

    :pswitch_2
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mFramePosition:I

    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveOffset:F

    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/16 :goto_0

    :pswitch_3
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mFramePosition:I

    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationZ:F

    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/16 :goto_0

    :pswitch_4
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mFramePosition:I

    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationY:F

    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/16 :goto_0

    :pswitch_5
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mFramePosition:I

    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationX:F

    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/16 :goto_0

    :pswitch_6
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mFramePosition:I

    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleY:F

    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/16 :goto_0

    :pswitch_7
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mFramePosition:I

    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleX:F

    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/16 :goto_0

    :pswitch_8
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mFramePosition:I

    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTransitionPathRotate:F

    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/16 :goto_0

    :pswitch_9
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mFramePosition:I

    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationY:F

    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/16 :goto_0

    :pswitch_a
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mFramePosition:I

    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationX:F

    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/16 :goto_0

    :pswitch_b
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mFramePosition:I

    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotation:F

    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/16 :goto_0

    :pswitch_c
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mFramePosition:I

    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mElevation:F

    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/16 :goto_0

    :pswitch_d
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mFramePosition:I

    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mAlpha:F

    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/16 :goto_0

    :cond_2
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0xb

    new-array v1, v1, [B

    fill-array-data v1, :array_11

    const-string v2, "ae4d8f"

    const-wide v10, -0x3e653390a8000000L    # -1.12401366E8

    invoke-static {v1, v2, v10, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_3
    return-void

    :array_0
    .array-data 1
        0x51t
        0x5t
        0x5t
        0x14t
    .end array-data

    :array_1
    .array-data 1
        0x19t
        0x43t
        0x56t
        0x5bt
        0x40t
        0x54t
        0x4at
    .end array-data

    :sswitch_data_0
    .sparse-switch
        -0x4a771f66 -> :sswitch_d
        -0x4a771f65 -> :sswitch_c
        -0x490b9c39 -> :sswitch_b
        -0x490b9c38 -> :sswitch_a
        -0x490b9c37 -> :sswitch_9
        -0x3bab3dd3 -> :sswitch_8
        -0x3621dfb2 -> :sswitch_7
        -0x3621dfb1 -> :sswitch_6
        -0x266f082 -> :sswitch_5
        -0x42d1a3 -> :sswitch_4
        0x2382115 -> :sswitch_3
        0x589b15e -> :sswitch_2
        0x94e04ec -> :sswitch_1
        0x5b327a02 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_2
    .array-data 1
        0x74t
        0x67t
        0x66t
        0x36t
        0x2bt
        0x7bt
    .end array-data

    nop

    :array_3
    .array-data 1
        0x12t
        0x16t
        0x34t
        0x7at
        0x7et
        0x78t
        0x7dt
        0x61t
        0x2ft
        0x14t
        0x15t
    .end array-data

    :array_4
    .array-data 1
        0x63t
        0x74t
        0x37t
        0x2ft
        0x7ct
        0x7dt
        0x73t
        0x15t
        0x2et
        0x4t
        0x4ct
        0x70t
        0x4dt
        0x56t
        0x9t
        0x4t
    .end array-data

    :array_5
    .array-data 1
        0x52t
        0x5bt
        0x41t
        0x59t
        0x2t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x46t
        0x44t
        0x52t
        0xat
        0x10t
        0xat
        0x46t
        0x5ft
        0x5ct
        0xat
        0x33t
        0x2t
        0x46t
        0x5et
        0x61t
        0xbt
        0x17t
        0x2t
        0x46t
        0x53t
    .end array-data

    :array_7
    .array-data 1
        0x3t
        0x5et
        0x5ct
        0x42t
        0x50t
        0x43t
        0xft
        0x5dt
        0x57t
    .end array-data

    nop

    :array_8
    .array-data 1
        0x14t
        0x58t
        0x16t
        0x0t
        0x11t
        0x5ft
        0x9t
        0x59t
    .end array-data

    :array_9
    .array-data 1
        0x44t
        0x7t
        0x2t
        0x59t
        0x53t
        0x3bt
    .end array-data

    nop

    :array_a
    .array-data 1
        0x4at
        0x51t
        0x3t
        0x5at
        0x56t
        0x6ft
    .end array-data

    nop

    :array_b
    .array-data 1
        0x13t
        0x40t
        0x5ft
        0x1t
        0x11t
        0x52t
        0x10t
        0x41t
    .end array-data

    :array_c
    .array-data 1
        0x44t
        0x47t
        0x0t
        0x5dt
        0x46t
        0xft
        0x51t
        0x41t
        0x8t
        0x5ct
        0x5bt
        0x39t
    .end array-data

    :array_d
    .array-data 1
        0x44t
        0x45t
        0x57t
        0x57t
        0x43t
        0x5bt
        0x51t
        0x43t
        0x5ft
        0x56t
        0x5et
        0x6et
    .end array-data

    :array_e
    .array-data 1
        0x16t
        0x11t
        0x56t
        0xft
        0x47t
        0xft
        0x3t
        0x17t
        0x5et
        0xet
        0x5at
        0x3bt
    .end array-data

    :array_f
    .array-data 1
        0x43t
        0x57t
        0x4ct
        0x2t
        0x47t
        0x5et
        0x5et
        0x56t
        0x61t
    .end array-data

    nop

    :array_10
    .array-data 1
        0x11t
        0x56t
        0x42t
        0x51t
        0x16t
        0xdt
        0xct
        0x57t
        0x6et
    .end array-data

    nop

    :array_11
    .array-data 1
        0x41t
        0x45t
        0x61t
        0x2at
        0x73t
        0x28t
        0x2et
        0x32t
        0x7at
        0x44t
        0x18t
    .end array-data
.end method

.method public clone()Landroidx/constraintlayout/motion/widget/Key;
    .locals 1

    new-instance v0, Landroidx/constraintlayout/motion/widget/KeyCycle;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/KeyCycle;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/motion/widget/KeyCycle;->copy(Landroidx/constraintlayout/motion/widget/Key;)Landroidx/constraintlayout/motion/widget/Key;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/KeyCycle;->clone()Landroidx/constraintlayout/motion/widget/Key;

    move-result-object v0

    return-object v0
.end method

.method public copy(Landroidx/constraintlayout/motion/widget/Key;)Landroidx/constraintlayout/motion/widget/Key;
    .locals 1

    invoke-super {p0, p1}, Landroidx/constraintlayout/motion/widget/Key;->copy(Landroidx/constraintlayout/motion/widget/Key;)Landroidx/constraintlayout/motion/widget/Key;

    check-cast p1, Landroidx/constraintlayout/motion/widget/KeyCycle;

    iget-object v0, p1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTransitionEasing:Ljava/lang/String;

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTransitionEasing:Ljava/lang/String;

    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mCurveFit:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mCurveFit:I

    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveShape:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveShape:I

    iget-object v0, p1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mCustomWaveShape:Ljava/lang/String;

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mCustomWaveShape:Ljava/lang/String;

    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePeriod:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePeriod:F

    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveOffset:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveOffset:F

    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePhase:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePhase:F

    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mProgress:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mProgress:F

    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveVariesBy:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveVariesBy:I

    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mAlpha:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mAlpha:F

    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mElevation:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mElevation:F

    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotation:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotation:F

    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTransitionPathRotate:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTransitionPathRotate:F

    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationX:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationX:F

    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationY:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationY:F

    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleX:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleX:F

    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleY:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleY:F

    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationX:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationX:F

    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationY:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationY:F

    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationZ:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationZ:F

    return-object p0
.end method

.method public getAttributeNames(Ljava/util/HashSet;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v8, 0x6

    const/16 v7, 0xc

    const/16 v6, 0x9

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mAlpha:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "8ce97b"

    const-wide/32 v2, 0x298ac42e

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mElevation:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    new-array v0, v6, [B

    fill-array-data v0, :array_1

    const-string v1, "253db3"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotation:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "dbac64"

    const v2, -0x316eb39e

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_3

    new-array v0, v6, [B

    fill-array-data v0, :array_3

    const-string v1, "0d3539"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_4

    new-array v0, v6, [B

    fill-array-data v0, :array_4

    const-string v1, "67eb8b"

    invoke-static {v0, v1, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_5

    new-array v0, v8, [B

    fill-array-data v0, :array_5

    const-string v1, "e954ae"

    const/16 v2, -0x4aad

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_5
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_6

    new-array v0, v8, [B

    fill-array-data v0, :array_6

    const-string v1, "6f3f96"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_6
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTransitionPathRotate:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_7

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_7

    const-string v1, "6df32c"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_7
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_8

    new-array v0, v7, [B

    fill-array-data v0, :array_8

    const-string v1, "fd8bc9"

    invoke-static {v0, v1, v5, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_8
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_9

    new-array v0, v7, [B

    fill-array-data v0, :array_9

    const-string v1, "fe29bd"

    invoke-static {v0, v1, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_9
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationZ:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_a

    new-array v0, v7, [B

    fill-array-data v0, :array_a

    const-string v1, "e04c9a"

    const v2, 0x4d927e1c    # 3.0721728E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_a
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_c

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x7

    new-array v2, v2, [B

    fill-array-data v2, :array_b

    const-string v3, "f9de29"

    invoke-static {v2, v3, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_b
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_c
    return-void

    :array_0
    .array-data 1
        0x59t
        0xft
        0x15t
        0x51t
        0x56t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x57t
        0x59t
        0x56t
        0x12t
        0x3t
        0x47t
        0x5bt
        0x5at
        0x5dt
    .end array-data

    nop

    :array_2
    .array-data 1
        0x16t
        0xdt
        0x15t
        0x2t
        0x42t
        0x5dt
        0xbt
        0xct
    .end array-data

    :array_3
    .array-data 1
        0x42t
        0xbt
        0x47t
        0x54t
        0x47t
        0x50t
        0x5ft
        0xat
        0x6bt
    .end array-data

    nop

    :array_4
    .array-data 1
        0x44t
        0x58t
        0x11t
        0x3t
        0x4ct
        0xbt
        0x59t
        0x59t
        0x3ct
    .end array-data

    nop

    :array_5
    .array-data 1
        0x16t
        0x5at
        0x54t
        0x58t
        0x4t
        0x3dt
    .end array-data

    nop

    :array_6
    .array-data 1
        0x45t
        0x5t
        0x52t
        0xat
        0x5ct
        0x6ft
    .end array-data

    nop

    :array_7
    .array-data 1
        0x42t
        0x16t
        0x7t
        0x5dt
        0x41t
        0xat
        0x42t
        0xdt
        0x9t
        0x5dt
        0x62t
        0x2t
        0x42t
        0xct
        0x34t
        0x5ct
        0x46t
        0x2t
        0x42t
        0x1t
    .end array-data

    :array_8
    .array-data 1
        0x12t
        0x16t
        0x59t
        0xct
        0x10t
        0x55t
        0x7t
        0x10t
        0x51t
        0xdt
        0xdt
        0x61t
    .end array-data

    :array_9
    .array-data 1
        0x12t
        0x17t
        0x53t
        0x57t
        0x11t
        0x8t
        0x7t
        0x11t
        0x5bt
        0x56t
        0xct
        0x3dt
    .end array-data

    :array_a
    .array-data 1
        0x11t
        0x42t
        0x55t
        0xdt
        0x4at
        0xdt
        0x4t
        0x44t
        0x5dt
        0xct
        0x57t
        0x3bt
    .end array-data

    :array_b
    .array-data 1
        0x25t
        0x6ct
        0x37t
        0x31t
        0x7dt
        0x74t
        0x4at
    .end array-data
.end method

.method public getValue(Ljava/lang/String;)F
    .locals 6

    const/16 v4, 0x8

    const/16 v0, 0xc

    const/16 v3, 0x9

    const/4 v2, 0x6

    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    new-array v0, v2, [B

    fill-array-data v0, :array_0

    const-string v1, "160d1c"

    const-wide/32 v2, -0x42ab2740

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0xb

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "3db199"

    const v3, -0x31924635    # -9.970941E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const/16 v1, 0x11

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "a7714d"

    const/16 v3, -0x5250

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/high16 v0, 0x7fc00000    # Float.NaN

    :goto_2
    return v0

    :sswitch_0
    sget-object v1, Landroidx/constraintlayout/motion/widget/KeyCycle;->WAVE_PHASE:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :sswitch_1
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->WAVE_OFFSET:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v1, "e1756e"

    const-wide/32 v4, 0x6d21f14a

    invoke-static {v0, v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    const-string v1, "4ed5c7"

    const-wide v4, -0x3e28885345800000L    # -1.574875882E9

    invoke-static {v0, v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_0

    :sswitch_4
    new-array v0, v3, [B

    fill-array-data v0, :array_5

    const-string v3, "48ad18"

    const-wide v4, -0x3e39463030000000L    # -7.62552224E8

    invoke-static {v0, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto/16 :goto_0

    :sswitch_5
    new-array v0, v4, [B

    fill-array-data v0, :array_6

    const-string v1, "5bf60f"

    const-wide v4, -0x3e43f4b692000000L    # -4.70501742E8

    invoke-static {v0, v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_0

    :sswitch_6
    new-array v0, v2, [B

    fill-array-data v0, :array_7

    const-string v3, "2b5491"

    invoke-static {v0, v3, v1, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_0

    :sswitch_7
    new-array v0, v2, [B

    fill-array-data v0, :array_8

    const-string v3, "c586d3"

    invoke-static {v0, v3, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto/16 :goto_0

    :sswitch_8
    new-array v0, v4, [B

    fill-array-data v0, :array_9

    const-string v1, "58bc32"

    const v3, -0x321a1aae    # -4.821264E8f

    invoke-static {v0, v1, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_0

    :sswitch_9
    new-array v0, v0, [B

    fill-array-data v0, :array_a

    const-string v1, "067a86"

    const v3, -0x3153065c

    invoke-static {v0, v1, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_0

    :sswitch_a
    new-array v0, v0, [B

    fill-array-data v0, :array_b

    const-string v1, "acd029"

    const-wide v4, -0x3e20cbe217c00000L    # -2.094036897E9

    invoke-static {v0, v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto/16 :goto_0

    :sswitch_b
    new-array v0, v0, [B

    fill-array-data v0, :array_c

    const-string v3, "67e791"

    const/4 v5, 0x0

    invoke-static {v0, v3, v1, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto/16 :goto_0

    :sswitch_c
    new-array v0, v3, [B

    fill-array-data v0, :array_d

    const-string v1, "f8a97c"

    const/16 v3, -0x4b7e

    invoke-static {v0, v1, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_0

    :sswitch_d
    new-array v0, v3, [B

    fill-array-data v0, :array_e

    const-string v1, "ed4a82"

    const v3, 0x4db58a2b    # 3.8071638E8f

    invoke-static {v0, v1, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_0

    :pswitch_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mProgress:F

    goto/16 :goto_2

    :pswitch_1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePhase:F

    goto/16 :goto_2

    :pswitch_2
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveOffset:F

    goto/16 :goto_2

    :pswitch_3
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationZ:F

    goto/16 :goto_2

    :pswitch_4
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationY:F

    goto/16 :goto_2

    :pswitch_5
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationX:F

    goto/16 :goto_2

    :pswitch_6
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleY:F

    goto/16 :goto_2

    :pswitch_7
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleX:F

    goto/16 :goto_2

    :pswitch_8
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTransitionPathRotate:F

    goto/16 :goto_2

    :pswitch_9
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationY:F

    goto/16 :goto_2

    :pswitch_a
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationX:F

    goto/16 :goto_2

    :pswitch_b
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotation:F

    goto/16 :goto_2

    :pswitch_c
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mElevation:F

    goto/16 :goto_2

    :pswitch_d
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mAlpha:F

    goto/16 :goto_2

    :cond_2
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0xb

    new-array v1, v1, [B

    fill-array-data v1, :array_f

    const-string v2, "bfdb93"

    const-wide/32 v4, 0x2a2745d2

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x4a771f66 -> :sswitch_d
        -0x4a771f65 -> :sswitch_c
        -0x490b9c39 -> :sswitch_b
        -0x490b9c38 -> :sswitch_a
        -0x490b9c37 -> :sswitch_9
        -0x3bab3dd3 -> :sswitch_8
        -0x3621dfb2 -> :sswitch_7
        -0x3621dfb1 -> :sswitch_6
        -0x266f082 -> :sswitch_5
        -0x42d1a3 -> :sswitch_4
        0x2382115 -> :sswitch_3
        0x589b15e -> :sswitch_2
        0x94e04ec -> :sswitch_1
        0x5b327a02 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x72t
        0x63t
        0x63t
        0x30t
        0x7et
        0x2et
    .end array-data

    nop

    :array_1
    .array-data 1
        0x13t
        0x44t
        0x37t
        0x7ft
        0x72t
        0x77t
        0x7ct
        0x33t
        0x2ct
        0x11t
        0x19t
    .end array-data

    :array_2
    .array-data 1
        0x36t
        0x76t
        0x65t
        0x7ft
        0x7dt
        0x2at
        0x26t
        0x16t
        0x17t
        0x7at
        0x51t
        0x1dt
        0x22t
        0x4et
        0x54t
        0x5dt
        0x51t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x4t
        0x5dt
        0x47t
        0x5dt
        0x57t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x40t
        0x17t
        0x5t
        0x5bt
        0x10t
        0x5et
        0x40t
        0xct
        0xbt
        0x5bt
        0x33t
        0x56t
        0x40t
        0xdt
        0x36t
        0x5at
        0x17t
        0x56t
        0x40t
        0x0t
    .end array-data

    :array_5
    .array-data 1
        0x51t
        0x54t
        0x4t
        0x12t
        0x50t
        0x4ct
        0x5dt
        0x57t
        0xft
    .end array-data

    nop

    :array_6
    .array-data 1
        0x47t
        0xdt
        0x12t
        0x57t
        0x44t
        0xft
        0x5at
        0xct
    .end array-data

    :array_7
    .array-data 1
        0x41t
        0x1t
        0x54t
        0x58t
        0x5ct
        0x68t
    .end array-data

    nop

    :array_8
    .array-data 1
        0x10t
        0x56t
        0x59t
        0x5at
        0x1t
        0x6bt
    .end array-data

    nop

    :array_9
    .array-data 1
        0x45t
        0x4at
        0xdt
        0x4t
        0x41t
        0x57t
        0x46t
        0x4bt
    .end array-data

    :array_a
    .array-data 1
        0x44t
        0x44t
        0x56t
        0xft
        0x4bt
        0x5at
        0x51t
        0x42t
        0x5et
        0xet
        0x56t
        0x6ct
    .end array-data

    :array_b
    .array-data 1
        0x15t
        0x11t
        0x5t
        0x5et
        0x41t
        0x55t
        0x0t
        0x17t
        0xdt
        0x5ft
        0x5ct
        0x60t
    .end array-data

    :array_c
    .array-data 1
        0x42t
        0x45t
        0x4t
        0x59t
        0x4at
        0x5dt
        0x57t
        0x43t
        0xct
        0x58t
        0x57t
        0x69t
    .end array-data

    :array_d
    .array-data 1
        0x14t
        0x57t
        0x15t
        0x58t
        0x43t
        0xat
        0x9t
        0x56t
        0x38t
    .end array-data

    nop

    :array_e
    .array-data 1
        0x17t
        0xbt
        0x40t
        0x0t
        0x4ct
        0x5bt
        0xat
        0xat
        0x6ct
    .end array-data

    nop

    :array_f
    .array-data 1
        0x42t
        0x46t
        0x31t
        0x2ct
        0x72t
        0x7dt
        0x2dt
        0x31t
        0x2at
        0x42t
        0x19t
    .end array-data
.end method

.method public load(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->KeyCycle:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->access$000(Landroidx/constraintlayout/motion/widget/KeyCycle;Landroid/content/res/TypedArray;)V

    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    const/4 v3, 0x6

    const/16 v2, 0xc

    const/16 v4, 0x9

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    :goto_1
    return-void

    :sswitch_0
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->WAVE_SHAPE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto :goto_0

    :sswitch_1
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->WAVE_PHASE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto :goto_0

    :sswitch_2
    const/16 v1, 0x8

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "1d0c08"

    const-wide/32 v4, 0x68377b84

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :sswitch_3
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->WAVE_PERIOD:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto :goto_0

    :sswitch_4
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->WAVE_OFFSET:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto :goto_0

    :sswitch_5
    const/4 v2, 0x5

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "7dfc96"

    invoke-static {v2, v3, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_6
    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "e5abde"

    const-wide v2, 0x41d91e031dc00000L    # 1.685589111E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :sswitch_7
    new-array v0, v4, [B

    fill-array-data v0, :array_3

    const-string v1, "bf5842"

    const/16 v2, 0x64c6

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_0

    :sswitch_8
    const/16 v1, 0x8

    new-array v1, v1, [B

    fill-array-data v1, :array_4

    const-string v2, "acb306"

    invoke-static {v1, v2, v0, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_0

    :sswitch_9
    new-array v0, v3, [B

    fill-array-data v0, :array_5

    const-string v1, "a34faa"

    const v2, -0x33037a46

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_0

    :sswitch_a
    new-array v0, v3, [B

    fill-array-data v0, :array_6

    const-string v1, "e9133c"

    const v2, -0x31a70f01

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_0

    :sswitch_b
    new-array v0, v2, [B

    fill-array-data v0, :array_7

    const-string v1, "91d9d4"

    const v2, 0x4ec5ea04    # 1.660224E9f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_0

    :sswitch_c
    new-array v3, v2, [B

    fill-array-data v3, :array_8

    const-string v4, "19d2df"

    invoke-static {v3, v4, v0, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto/16 :goto_0

    :sswitch_d
    new-array v0, v2, [B

    fill-array-data v0, :array_9

    const-string v1, "69159a"

    const-wide v2, -0x3e2f5b9f5e800000L    # -1.11683239E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_0

    :sswitch_e
    new-array v0, v4, [B

    fill-array-data v0, :array_a

    const-string v2, "ccefce"

    invoke-static {v0, v2, v1, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto/16 :goto_0

    :sswitch_f
    new-array v0, v4, [B

    fill-array-data v0, :array_b

    const-string v1, "4ede83"

    const-wide v2, -0x3e23a48efbc00000L    # -1.903019025E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_0

    :sswitch_10
    const/16 v1, 0x10

    new-array v1, v1, [B

    fill-array-data v1, :array_c

    const-string v2, "ecaaf7"

    invoke-static {v1, v2, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto/16 :goto_0

    :sswitch_11
    const/16 v1, 0xe

    new-array v1, v1, [B

    fill-array-data v1, :array_d

    const-string v2, "3d52b9"

    invoke-static {v1, v2, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_0

    :pswitch_0
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->toInt(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveShape:I

    goto/16 :goto_1

    :cond_1
    const/4 v0, 0x7

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveShape:I

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mCustomWaveShape:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePhase:F

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveOffset:F

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePeriod:F

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationZ:F

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationY:F

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationX:F

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTransitionPathRotate:F

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTransitionEasing:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleY:F

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleX:F

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationY:F

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationX:F

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotation:F

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mProgress:F

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mElevation:F

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->toInt(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mCurveFit:I

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mAlpha:F

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x72062ffd -> :sswitch_11
        -0x6c0d7d20 -> :sswitch_10
        -0x4a771f66 -> :sswitch_f
        -0x4a771f65 -> :sswitch_e
        -0x490b9c39 -> :sswitch_d
        -0x490b9c38 -> :sswitch_c
        -0x490b9c37 -> :sswitch_b
        -0x3621dfb2 -> :sswitch_a
        -0x3621dfb1 -> :sswitch_9
        -0x266f082 -> :sswitch_8
        -0x42d1a3 -> :sswitch_7
        0x2382115 -> :sswitch_6
        0x589b15e -> :sswitch_5
        0x94e04ec -> :sswitch_4
        0xafa161a -> :sswitch_3
        0x2283b8a2 -> :sswitch_2
        0x5b327a02 -> :sswitch_1
        0x5b5cc028 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x52t
        0x11t
        0x42t
        0x15t
        0x55t
        0x7et
        0x58t
        0x10t
    .end array-data

    :array_1
    .array-data 1
        0x56t
        0x8t
        0x16t
        0xbt
        0x58t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x11t
        0x47t
        0x0t
        0xct
        0x17t
        0xct
        0x11t
        0x5ct
        0xet
        0xct
        0x34t
        0x4t
        0x11t
        0x5dt
        0x33t
        0xdt
        0x10t
        0x4t
        0x11t
        0x50t
    .end array-data

    :array_3
    .array-data 1
        0x7t
        0xat
        0x50t
        0x4et
        0x55t
        0x46t
        0xbt
        0x9t
        0x5bt
    .end array-data

    nop

    :array_4
    .array-data 1
        0x13t
        0xct
        0x16t
        0x52t
        0x44t
        0x5ft
        0xet
        0xdt
    .end array-data

    :array_5
    .array-data 1
        0x12t
        0x50t
        0x55t
        0xat
        0x4t
        0x38t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x16t
        0x5at
        0x50t
        0x5ft
        0x56t
        0x3bt
    .end array-data

    nop

    :array_7
    .array-data 1
        0x4dt
        0x43t
        0x5t
        0x57t
        0x17t
        0x58t
        0x58t
        0x45t
        0xdt
        0x56t
        0xat
        0x6et
    .end array-data

    :array_8
    .array-data 1
        0x45t
        0x4bt
        0x5t
        0x5ct
        0x17t
        0xat
        0x50t
        0x4dt
        0xdt
        0x5dt
        0xat
        0x3ft
    .end array-data

    :array_9
    .array-data 1
        0x42t
        0x4bt
        0x50t
        0x5bt
        0x4at
        0xdt
        0x57t
        0x4dt
        0x58t
        0x5at
        0x57t
        0x39t
    .end array-data

    :array_a
    .array-data 1
        0x11t
        0xct
        0x11t
        0x7t
        0x17t
        0xct
        0xct
        0xdt
        0x3ct
    .end array-data

    nop

    :array_b
    .array-data 1
        0x46t
        0xat
        0x10t
        0x4t
        0x4ct
        0x5at
        0x5bt
        0xbt
        0x3ct
    .end array-data

    nop

    :array_c
    .array-data 1
        0x11t
        0x11t
        0x0t
        0xft
        0x15t
        0x5et
        0x11t
        0xat
        0xet
        0xft
        0x23t
        0x56t
        0x16t
        0xat
        0xft
        0x6t
    .end array-data

    :array_d
    .array-data 1
        0x5et
        0xbt
        0x41t
        0x5bt
        0xdt
        0x57t
        0x63t
        0x16t
        0x5at
        0x55t
        0x10t
        0x5ct
        0x40t
        0x17t
    .end array-data
.end method
