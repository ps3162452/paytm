.class public Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;
.super Landroidx/constraintlayout/core/motion/key/MotionKey;


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


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v6, 0xa

    const/16 v5, 0x9

    const/16 v2, 0x8

    const/4 v4, 0x0

    new-array v0, v2, [B

    fill-array-data v0, :array_0

    const-string v1, "f61cab"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->NAME:Ljava/lang/String;

    new-array v0, v2, [B

    fill-array-data v0, :array_1

    const-string v1, "91b6f0"

    const-wide/32 v2, 0x203767ae

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->TAG:Ljava/lang/String;

    new-array v0, v6, [B

    fill-array-data v0, :array_2

    const-string v1, "afe7d5"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->WAVE_OFFSET:Ljava/lang/String;

    new-array v0, v6, [B

    fill-array-data v0, :array_3

    const-string v1, "daee4d"

    const-wide/32 v2, 0x49585416

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->WAVE_PERIOD:Ljava/lang/String;

    new-array v0, v5, [B

    fill-array-data v0, :array_4

    const-string v1, "ec33b8"

    const-wide v2, 0x41c8f1a461000000L    # 8.36978882E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->WAVE_PHASE:Ljava/lang/String;

    new-array v0, v5, [B

    fill-array-data v0, :array_5

    const-string v1, "cacf59"

    const-wide v2, 0x41ca9851db000000L    # 8.92380086E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->WAVE_SHAPE:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x2dt
        0x53t
        0x48t
        0x20t
        0x18t
        0x1t
        0xat
        0x53t
    .end array-data

    :array_1
    .array-data 1
        0x72t
        0x54t
        0x1bt
        0x75t
        0x1ft
        0x53t
        0x55t
        0x54t
    .end array-data

    :array_2
    .array-data 1
        0x16t
        0x7t
        0x13t
        0x52t
        0x2bt
        0x53t
        0x7t
        0x15t
        0x0t
        0x43t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x13t
        0x0t
        0x13t
        0x0t
        0x64t
        0x1t
        0x16t
        0x8t
        0xat
        0x1t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x12t
        0x2t
        0x45t
        0x56t
        0x32t
        0x50t
        0x4t
        0x10t
        0x56t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x14t
        0x0t
        0x15t
        0x3t
        0x66t
        0x51t
        0x2t
        0x11t
        0x6t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/high16 v1, 0x7fc00000    # Float.NaN

    invoke-direct {p0}, Landroidx/constraintlayout/core/motion/key/MotionKey;-><init>()V

    iput-object v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTransitionEasing:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mCurveFit:I

    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWaveShape:I

    iput-object v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mCustomWaveShape:Ljava/lang/String;

    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWavePeriod:F

    iput v2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWaveOffset:F

    iput v2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWavePhase:F

    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mProgress:F

    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mAlpha:F

    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mElevation:F

    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mRotation:F

    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTransitionPathRotate:F

    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mRotationX:F

    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mRotationY:F

    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mScaleX:F

    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mScaleY:F

    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTranslationX:F

    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTranslationY:F

    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTranslationZ:F

    const/4 v0, 0x4

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mType:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mCustom:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public addCycleValues(Ljava/util/HashMap;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;",
            ">;)V"
        }
    .end annotation

    const/4 v12, 0x6

    const/4 v11, 0x0

    const/4 v4, -0x1

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

    new-array v1, v12, [B

    fill-array-data v1, :array_0

    const-string v2, "37f013"

    invoke-static {v1, v2, v11, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-array v1, v12, [B

    fill-array-data v1, :array_1

    const-string v2, "191774"

    const/16 v3, 0x4dd0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mCustom:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/core/motion/CustomVariable;

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroidx/constraintlayout/core/motion/CustomVariable;->getType()I

    move-result v1

    const/16 v2, 0x385

    if-ne v1, v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

    if-eqz v0, :cond_0

    iget v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mFramePosition:I

    iget v2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWaveShape:I

    iget-object v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mCustomWaveShape:Ljava/lang/String;

    iget v5, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWavePeriod:F

    iget v6, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWaveOffset:F

    iget v7, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWavePhase:F

    invoke-virtual {v9}, Landroidx/constraintlayout/core/motion/CustomVariable;->getValueToInterpolate()F

    move-result v8

    invoke-virtual/range {v0 .. v9}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->setPoint(IILjava/lang/String;IFFFFLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->getValue(Ljava/lang/String;)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

    if-eqz v0, :cond_0

    iget v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mFramePosition:I

    iget v2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWaveShape:I

    iget-object v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mCustomWaveShape:Ljava/lang/String;

    iget v5, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWavePeriod:F

    iget v6, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWaveOffset:F

    iget v7, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWavePhase:F

    invoke-virtual/range {v0 .. v8}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->setPoint(IILjava/lang/String;IFFFF)V

    goto/16 :goto_0

    :cond_2
    return-void

    nop

    :array_0
    .array-data 1
        0x70t
        0x62t
        0x35t
        0x64t
        0x7et
        0x7et
    .end array-data

    nop

    :array_1
    .array-data 1
        0x72t
        0x6ct
        0x62t
        0x63t
        0x78t
        0x79t
    .end array-data
.end method

.method public addValues(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/core/motion/utils/SplineSet;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public clone()Landroidx/constraintlayout/core/motion/key/MotionKey;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->clone()Landroidx/constraintlayout/core/motion/key/MotionKey;

    move-result-object v0

    return-object v0
.end method

.method public dump()V
    .locals 6

    const/16 v5, 0xe

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1a

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "b2e3bf"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWaveShape:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-array v2, v5, [B

    fill-array-data v2, :array_1

    const-string v3, "038a39"

    const/16 v4, 0x32e0

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWavePeriod:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    new-array v2, v5, [B

    fill-array-data v2, :array_2

    const-string v3, "3f7130"

    const v4, 0x4e60e57a    # 9.4328384E8f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWaveOffset:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v2, 0xd

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const-string v3, "86b505"

    const-wide/32 v4, -0x2d35cafe

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWavePhase:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v2, 0xc

    new-array v2, v2, [B

    fill-array-data v2, :array_4

    const-string v3, "20831e"

    const-wide/32 v4, -0x531ff35e

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mRotation:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 1
        0x2ft
        0x5dt
        0x11t
        0x5at
        0xdt
        0x8t
        0x29t
        0x57t
        0x1ct
        0x70t
        0x1bt
        0x5t
        0xet
        0x57t
        0x1et
        0x5et
        0x35t
        0x7t
        0x14t
        0x57t
        0x36t
        0x5bt
        0x3t
        0x16t
        0x7t
        0xft
    .end array-data

    nop

    :array_1
    .array-data 1
        0x1ct
        0x13t
        0x55t
        0x36t
        0x52t
        0x4ft
        0x55t
        0x63t
        0x5dt
        0x13t
        0x5at
        0x56t
        0x54t
        0xet
    .end array-data

    nop

    :array_2
    .array-data 1
        0x1ft
        0x46t
        0x5at
        0x66t
        0x52t
        0x46t
        0x56t
        0x29t
        0x51t
        0x57t
        0x40t
        0x55t
        0x47t
        0x5bt
    .end array-data

    nop

    :array_3
    .array-data 1
        0x14t
        0x16t
        0xft
        0x62t
        0x51t
        0x43t
        0x5dt
        0x66t
        0xat
        0x54t
        0x43t
        0x50t
        0x5t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x1et
        0x10t
        0x55t
        0x61t
        0x5et
        0x11t
        0x53t
        0x44t
        0x51t
        0x5ct
        0x5ft
        0x58t
    .end array-data
.end method

.method public getAttributeNames(Ljava/util/HashSet;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x6

    const/16 v5, 0xc

    const/16 v3, 0x9

    const/4 v4, 0x1

    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mAlpha:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "61029c"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mElevation:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    new-array v0, v3, [B

    fill-array-data v0, :array_1

    const-string v1, "0727f1"

    const/16 v2, 0x1bb5

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mRotation:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2

    new-array v0, v3, [B

    fill-array-data v0, :array_2

    const-string v1, "b7dd15"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mRotationX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_3

    new-array v0, v3, [B

    fill-array-data v0, :array_3

    const-string v1, "b6a4da"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mRotationY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_4

    new-array v0, v3, [B

    fill-array-data v0, :array_4

    const-string v1, "b6b2f7"

    const v2, -0x313d0d8e

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mScaleX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_5

    new-array v0, v6, [B

    fill-array-data v0, :array_5

    const-string v1, "04e06d"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_5
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mScaleY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_6

    new-array v0, v6, [B

    fill-array-data v0, :array_6

    const-string v1, "f852d5"

    const-wide v2, 0x41d8c16d8d000000L    # 1.661318708E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_6
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTransitionPathRotate:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_7

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_7

    const-string v1, "6a0a12"

    const v2, -0x3180f6ee

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_7
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTranslationX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_8

    new-array v0, v5, [B

    fill-array-data v0, :array_8

    const-string v1, "cd01bf"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_8
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTranslationY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_9

    new-array v0, v5, [B

    fill-array-data v0, :array_9

    const-string v1, "aa285b"

    const-wide/32 v2, 0x77fceee2

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_9
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTranslationZ:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_a

    new-array v0, v5, [B

    fill-array-data v0, :array_a

    const-string v1, "b6ed23"

    const v2, -0x3134b820

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_a
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mCustom:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_b

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mCustom:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x7

    new-array v3, v3, [B

    fill-array-data v3, :array_b

    const-string v4, "5af42b"

    const-wide v6, -0x3e261357a4800000L    # -1.739759982E9

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_b
    return-void

    :array_0
    .array-data 1
        0x57t
        0x5dt
        0x40t
        0x5at
        0x58t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x55t
        0x5bt
        0x57t
        0x41t
        0x7t
        0x45t
        0x59t
        0x58t
        0x5ct
    .end array-data

    nop

    :array_2
    .array-data 1
        0x10t
        0x58t
        0x10t
        0x5t
        0x45t
        0x5ct
        0xdt
        0x59t
        0x3et
    .end array-data

    nop

    :array_3
    .array-data 1
        0x10t
        0x59t
        0x15t
        0x55t
        0x10t
        0x8t
        0xdt
        0x58t
        0x39t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x10t
        0x59t
        0x16t
        0x53t
        0x12t
        0x5et
        0xdt
        0x58t
        0x3bt
    .end array-data

    nop

    :array_5
    .array-data 1
        0x43t
        0x57t
        0x4t
        0x5ct
        0x53t
        0x3ct
    .end array-data

    nop

    :array_6
    .array-data 1
        0x15t
        0x5bt
        0x54t
        0x5et
        0x1t
        0x6ct
    .end array-data

    nop

    :array_7
    .array-data 1
        0x46t
        0x0t
        0x44t
        0x9t
        0x63t
        0x5dt
        0x42t
        0x0t
        0x44t
        0x4t
    .end array-data

    nop

    :array_8
    .array-data 1
        0x17t
        0x16t
        0x51t
        0x5ft
        0x11t
        0xat
        0x2t
        0x10t
        0x59t
        0x5et
        0xct
        0x3et
    .end array-data

    :array_9
    .array-data 1
        0x15t
        0x13t
        0x53t
        0x56t
        0x46t
        0xet
        0x0t
        0x15t
        0x5bt
        0x57t
        0x5bt
        0x3bt
    .end array-data

    :array_a
    .array-data 1
        0x16t
        0x44t
        0x4t
        0xat
        0x41t
        0x5ft
        0x3t
        0x42t
        0xct
        0xbt
        0x5ct
        0x69t
    .end array-data

    :array_b
    .array-data 1
        0x76t
        0x34t
        0x35t
        0x60t
        0x7dt
        0x2ft
        0x19t
    .end array-data
.end method

.method public getId(Ljava/lang/String;)I
    .locals 6

    const/16 v2, 0xa

    const/16 v3, 0x9

    const/4 v1, 0x0

    const/4 v0, 0x1

    const/4 v4, 0x6

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    const/4 v0, -0x1

    :goto_1
    return v0

    :sswitch_0
    new-array v1, v2, [B

    fill-array-data v1, :array_0

    const-string v2, "ab669a"

    const-wide v4, 0x41b819397e000000L    # 4.04306302E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :sswitch_1
    sget-object v0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->WAVE_SHAPE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto :goto_0

    :sswitch_2
    new-array v0, v2, [B

    fill-array-data v0, :array_1

    const-string v1, "784959"

    const-wide v2, -0x3e26c717e4000000L    # -1.692639344E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v2, "bee24f"

    const/16 v3, 0x4882

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_4
    const/4 v2, 0x5

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const-string v3, "082066"

    invoke-static {v2, v3, v0, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto :goto_0

    :sswitch_5
    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    const-string v1, "169e27"

    const-wide v2, -0x3e27269620400000L    # -1.667606399E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_0

    :sswitch_6
    new-array v0, v4, [B

    fill-array-data v0, :array_5

    const-string v1, "79b1a8"

    const-wide/32 v4, -0x6500f89e

    invoke-static {v0, v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto/16 :goto_0

    :sswitch_7
    new-array v2, v4, [B

    fill-array-data v2, :array_6

    const-string v4, "5ecbb0"

    invoke-static {v2, v4, v1, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto/16 :goto_0

    :sswitch_8
    new-array v0, v4, [B

    fill-array-data v0, :array_7

    const-string v1, "946f78"

    const/16 v2, -0x1ec7

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_0

    :sswitch_9
    new-array v2, v4, [B

    fill-array-data v2, :array_8

    const-string v3, "8741ca"

    invoke-static {v2, v3, v1, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_0

    :sswitch_a
    new-array v0, v4, [B

    fill-array-data v0, :array_9

    const-string v1, "071fd0"

    const-wide v2, 0x41dbeceabd800000L    # 1.874045686E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_0

    :sswitch_b
    const/16 v1, 0x8

    new-array v1, v1, [B

    fill-array-data v1, :array_a

    const-string v2, "5e2aa9"

    invoke-static {v1, v2, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_0

    :sswitch_c
    new-array v0, v4, [B

    fill-array-data v0, :array_b

    const-string v1, "477b68"

    const/16 v2, 0x6029

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_0

    :sswitch_d
    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_c

    const-string v1, "e2d929"

    const/16 v2, -0x1889

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_0

    :sswitch_e
    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_d

    const-string v2, "c158a3"

    invoke-static {v1, v2, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_0

    :sswitch_f
    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_e

    const-string v1, "49e95b"

    const-wide/32 v2, -0x388a7583

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_0

    :sswitch_10
    new-array v0, v3, [B

    fill-array-data v0, :array_f

    const-string v1, "521e78"

    const-wide/32 v2, -0x19a1b9de

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_0

    :sswitch_11
    new-array v0, v3, [B

    fill-array-data v0, :array_10

    const-string v1, "1abd62"

    const v2, 0x4b6b7e4e    # 1.5433294E7f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_0

    :sswitch_12
    new-array v0, v3, [B

    fill-array-data v0, :array_11

    const-string v1, "049e72"

    const v2, -0x315b98fd    # -1.3791072E9f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto/16 :goto_0

    :sswitch_13
    new-array v0, v4, [B

    fill-array-data v0, :array_12

    const-string v1, "48abf9"

    const-wide v2, -0x3e2b13e99ec00000L    # -1.404066181E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_0

    :sswitch_14
    new-array v0, v2, [B

    fill-array-data v0, :array_13

    const-string v1, "e25e66"

    const v2, 0x4e8cf80e

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto/16 :goto_0

    :pswitch_0
    const/16 v0, 0x1a6

    goto/16 :goto_1

    :pswitch_1
    const/16 v0, 0x1a8

    goto/16 :goto_1

    :pswitch_2
    const/16 v0, 0x1a9

    goto/16 :goto_1

    :pswitch_3
    const/16 v0, 0x1a5

    goto/16 :goto_1

    :pswitch_4
    const/16 v0, 0x1a7

    goto/16 :goto_1

    :pswitch_5
    const/16 v0, 0x1a4

    goto/16 :goto_1

    :pswitch_6
    const/16 v0, 0x1a0

    goto/16 :goto_1

    :pswitch_7
    const/16 v0, 0x13b

    goto/16 :goto_1

    :pswitch_8
    const/16 v0, 0x13a

    goto/16 :goto_1

    :pswitch_9
    const/16 v0, 0x139

    goto/16 :goto_1

    :pswitch_a
    const/16 v0, 0x138

    goto/16 :goto_1

    :pswitch_b
    const/16 v0, 0x137

    goto/16 :goto_1

    :pswitch_c
    const/16 v0, 0x136

    goto/16 :goto_1

    :pswitch_d
    const/16 v0, 0x135

    goto/16 :goto_1

    :pswitch_e
    const/16 v0, 0x134

    goto/16 :goto_1

    :pswitch_f
    const/16 v0, 0x132

    goto/16 :goto_1

    :pswitch_10
    const/16 v0, 0x131

    goto/16 :goto_1

    :pswitch_11
    const/16 v0, 0x130

    goto/16 :goto_1

    :pswitch_12
    const/16 v0, 0x193

    goto/16 :goto_1

    :pswitch_13
    const/16 v0, 0x192

    goto/16 :goto_1

    :pswitch_14
    const/16 v0, 0x191

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5e458df6 -> :sswitch_14
        -0x4e19c2d5 -> :sswitch_13
        -0x4a771f66 -> :sswitch_12
        -0x4a771f65 -> :sswitch_11
        -0x4a771f64 -> :sswitch_10
        -0x490b9c39 -> :sswitch_f
        -0x490b9c38 -> :sswitch_e
        -0x490b9c37 -> :sswitch_d
        -0x3cc89b6d -> :sswitch_c
        -0x3bab3dd3 -> :sswitch_b
        -0x3b1c8a3f -> :sswitch_a
        -0x3ae243aa -> :sswitch_9
        -0x3ae243a9 -> :sswitch_8
        -0x3621dfb2 -> :sswitch_7
        -0x3621dfb1 -> :sswitch_6
        0x589b15e -> :sswitch_5
        0x65b097b -> :sswitch_4
        0x2283b8a2 -> :sswitch_3
        0x2fdfbde0 -> :sswitch_2
        0x5b5cc028 -> :sswitch_1
        0x73b66312 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
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
        0x17t
        0xbt
        0x45t
        0x5ft
        0x5bt
        0x8t
        0xdt
        0xbt
        0x42t
        0x4ft
    .end array-data

    nop

    :array_1
    .array-data 1
        0x47t
        0x59t
        0x40t
        0x51t
        0x67t
        0x56t
        0x43t
        0x59t
        0x40t
        0x5ct
    .end array-data

    nop

    :array_2
    .array-data 1
        0x1t
        0x10t
        0x17t
        0x44t
        0x51t
        0x20t
        0xbt
        0x11t
    .end array-data

    :array_3
    .array-data 1
        0x40t
        0x50t
        0x53t
        0x43t
        0x53t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x50t
        0x5at
        0x49t
        0xdt
        0x53t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x44t
        0x5at
        0x3t
        0x5dt
        0x4t
        0x61t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x46t
        0x6t
        0x2t
        0xet
        0x7t
        0x68t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x49t
        0x5dt
        0x40t
        0x9t
        0x43t
        0x61t
    .end array-data

    nop

    :array_8
    .array-data 1
        0x48t
        0x5et
        0x42t
        0x5et
        0x17t
        0x39t
    .end array-data

    nop

    :array_9
    .array-data 1
        0x40t
        0x52t
        0x43t
        0xft
        0xbt
        0x54t
    .end array-data

    nop

    :array_a
    .array-data 1
        0x45t
        0x17t
        0x5dt
        0x6t
        0x13t
        0x5ct
        0x46t
        0x16t
    .end array-data

    :array_b
    .array-data 1
        0x5bt
        0x51t
        0x51t
        0x11t
        0x53t
        0x4ct
    .end array-data

    nop

    :array_c
    .array-data 1
        0x11t
        0x40t
        0x5t
        0x57t
        0x41t
        0x55t
        0x4t
        0x46t
        0xdt
        0x56t
        0x5ct
        0x63t
    .end array-data

    :array_d
    .array-data 1
        0x17t
        0x43t
        0x54t
        0x56t
        0x12t
        0x5ft
        0x2t
        0x45t
        0x5ct
        0x57t
        0xft
        0x6at
    .end array-data

    :array_e
    .array-data 1
        0x40t
        0x4bt
        0x4t
        0x57t
        0x46t
        0xet
        0x55t
        0x4dt
        0xct
        0x56t
        0x5bt
        0x3at
    .end array-data

    :array_f
    .array-data 1
        0x47t
        0x5dt
        0x45t
        0x4t
        0x43t
        0x51t
        0x5at
        0x5ct
        0x6bt
    .end array-data

    nop

    :array_10
    .array-data 1
        0x43t
        0xet
        0x16t
        0x5t
        0x42t
        0x5bt
        0x5et
        0xft
        0x3bt
    .end array-data

    nop

    :array_11
    .array-data 1
        0x42t
        0x5bt
        0x4dt
        0x4t
        0x43t
        0x5bt
        0x5ft
        0x5at
        0x61t
    .end array-data

    nop

    :array_12
    .array-data 1
        0x51t
        0x59t
        0x12t
        0xbt
        0x8t
        0x5et
    .end array-data

    nop

    :array_13
    .array-data 1
        0x6t
        0x47t
        0x46t
        0x11t
        0x59t
        0x5bt
        0x32t
        0x53t
        0x43t
        0x0t
    .end array-data
.end method

.method public getValue(Ljava/lang/String;)F
    .locals 6

    const/16 v0, 0xc

    const/4 v3, 0x6

    const/4 v2, 0x1

    const/16 v4, 0x9

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    const/high16 v0, 0x7fc00000    # Float.NaN

    :goto_1
    return v0

    :sswitch_0
    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v2, "a1b51f"

    invoke-static {v0, v2, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_1
    const/4 v2, 0x5

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "e80909"

    invoke-static {v2, v3, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v2, "80915d"

    const/16 v3, 0x4241

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_3
    new-array v0, v4, [B

    fill-array-data v0, :array_3

    const-string v1, "94963c"

    const-wide v4, -0x3e2a6847bf400000L    # -1.449058563E9

    invoke-static {v0, v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :sswitch_4
    new-array v0, v3, [B

    fill-array-data v0, :array_4

    const-string v1, "bc7336"

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_5
    new-array v0, v3, [B

    fill-array-data v0, :array_5

    const-string v4, "6e3b2a"

    invoke-static {v0, v4, v2, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto/16 :goto_0

    :sswitch_6
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_6

    const-string v2, "e2c50b"

    invoke-static {v0, v2, v1, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_0

    :sswitch_7
    new-array v0, v3, [B

    fill-array-data v0, :array_7

    const-string v1, "24f7d1"

    const v2, 0x4efe84ea    # 2.1350618E9f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_0

    :sswitch_8
    new-array v0, v0, [B

    fill-array-data v0, :array_8

    const-string v3, "b965c5"

    invoke-static {v0, v3, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_0

    :sswitch_9
    new-array v0, v0, [B

    fill-array-data v0, :array_9

    const-string v1, "085c18"

    const v2, -0x31f4e052

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto/16 :goto_0

    :sswitch_a
    new-array v0, v0, [B

    fill-array-data v0, :array_a

    const-string v2, "3ea17d"

    invoke-static {v0, v2, v1, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_0

    :sswitch_b
    new-array v0, v4, [B

    fill-array-data v0, :array_b

    const-string v1, "7d5699"

    const/16 v2, 0x2201

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_0

    :sswitch_c
    new-array v0, v4, [B

    fill-array-data v0, :array_c

    const-string v2, "d03534"

    invoke-static {v0, v2, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_0

    :sswitch_d
    new-array v0, v4, [B

    fill-array-data v0, :array_d

    const-string v2, "7547e2"

    invoke-static {v0, v2, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_0

    :pswitch_0
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mProgress:F

    goto/16 :goto_1

    :pswitch_1
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWavePhase:F

    goto/16 :goto_1

    :pswitch_2
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWaveOffset:F

    goto/16 :goto_1

    :pswitch_3
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTranslationZ:F

    goto/16 :goto_1

    :pswitch_4
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTranslationY:F

    goto/16 :goto_1

    :pswitch_5
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTranslationX:F

    goto/16 :goto_1

    :pswitch_6
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mScaleY:F

    goto/16 :goto_1

    :pswitch_7
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mScaleX:F

    goto/16 :goto_1

    :pswitch_8
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTransitionPathRotate:F

    goto/16 :goto_1

    :pswitch_9
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mRotationY:F

    goto/16 :goto_1

    :pswitch_a
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mRotationX:F

    goto/16 :goto_1

    :pswitch_b
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mRotation:F

    goto/16 :goto_1

    :pswitch_c
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mElevation:F

    goto/16 :goto_1

    :pswitch_d
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mAlpha:F

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x4a771f66 -> :sswitch_d
        -0x4a771f65 -> :sswitch_c
        -0x4a771f64 -> :sswitch_b
        -0x490b9c39 -> :sswitch_a
        -0x490b9c38 -> :sswitch_9
        -0x490b9c37 -> :sswitch_8
        -0x3cc89b6d -> :sswitch_7
        -0x3bab3dd3 -> :sswitch_6
        -0x3621dfb2 -> :sswitch_5
        -0x3621dfb1 -> :sswitch_4
        -0x42d1a3 -> :sswitch_3
        0x589b15e -> :sswitch_2
        0x65b097b -> :sswitch_1
        0x2fdfbde0 -> :sswitch_0
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
        0x11t
        0x50t
        0x16t
        0x5dt
        0x63t
        0x9t
        0x15t
        0x50t
        0x16t
        0x50t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x15t
        0x50t
        0x51t
        0x4at
        0x55t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x59t
        0x5ct
        0x49t
        0x59t
        0x54t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x5ct
        0x58t
        0x5ct
        0x40t
        0x52t
        0x17t
        0x50t
        0x5bt
        0x57t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x11t
        0x0t
        0x56t
        0x5ft
        0x56t
        0x6ft
    .end array-data

    nop

    :array_5
    .array-data 1
        0x45t
        0x6t
        0x52t
        0xet
        0x57t
        0x39t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x15t
        0x40t
        0xct
        0x52t
        0x42t
        0x7t
        0x16t
        0x41t
    .end array-data

    :array_7
    .array-data 1
        0x5dt
        0x52t
        0x0t
        0x44t
        0x1t
        0x45t
    .end array-data

    nop

    :array_8
    .array-data 1
        0x16t
        0x4bt
        0x57t
        0x5bt
        0x10t
        0x59t
        0x3t
        0x4dt
        0x5ft
        0x5at
        0xdt
        0x6ft
    .end array-data

    :array_9
    .array-data 1
        0x44t
        0x4at
        0x54t
        0xdt
        0x42t
        0x54t
        0x51t
        0x4ct
        0x5ct
        0xct
        0x5ft
        0x61t
    .end array-data

    :array_a
    .array-data 1
        0x47t
        0x17t
        0x0t
        0x5ft
        0x44t
        0x8t
        0x52t
        0x11t
        0x8t
        0x5et
        0x59t
        0x3ct
    .end array-data

    :array_b
    .array-data 1
        0x45t
        0xbt
        0x41t
        0x57t
        0x4dt
        0x50t
        0x58t
        0xat
        0x6ft
    .end array-data

    nop

    :array_c
    .array-data 1
        0x16t
        0x5ft
        0x47t
        0x54t
        0x47t
        0x5dt
        0xbt
        0x5et
        0x6at
    .end array-data

    nop

    :array_d
    .array-data 1
        0x45t
        0x5at
        0x40t
        0x56t
        0x11t
        0x5bt
        0x58t
        0x5bt
        0x6ct
    .end array-data
.end method

.method public printAttributes()V
    .locals 10

    const/16 v9, 0x9

    const/4 v2, 0x0

    const/4 v8, 0x1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->getAttributeNames(Ljava/util/HashSet;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0xf

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "7f1aef"

    const v5, -0x31453d04

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mFramePosition:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0xe

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "e8d976"

    const-wide v6, -0x3e2d0bae96800000L    # -1.272006054E9

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/constraintlayout/core/motion/utils/Utils;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x15

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v4, "252693"

    const/16 v5, -0x5adb

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWaveShape:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-array v3, v9, [B

    fill-array-data v3, :array_3

    const-string v4, "0ff89d"

    invoke-static {v3, v4, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWavePeriod:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    new-array v3, v9, [B

    fill-array-data v3, :array_4

    const-string v4, "859efc"

    invoke-static {v3, v4, v8, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWaveOffset:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v3, 0x8

    new-array v3, v3, [B

    fill-array-data v3, :array_5

    const-string v4, "93082f"

    invoke-static {v3, v4, v2, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWavePhase:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v3, 0x7d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/constraintlayout/core/motion/utils/Utils;->log(Ljava/lang/String;)V

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move v1, v2

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    aget-object v3, v0, v1

    invoke-static {v3}, Landroidx/constraintlayout/core/motion/utils/TypedValues$Attributes$-CC;->getId(Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v4, v8, [B

    const/16 v5, 0xb

    aput-byte v5, v4, v2

    const-string v5, "148341"

    const/16 v6, -0x635e

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v1

    invoke-virtual {p0, v4}, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->getValue(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/constraintlayout/core/motion/utils/Utils;->log(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :array_0
    .array-data 1
        0x17t
        0x4bt
        0x1ct
        0x4ct
        0x48t
        0x4bt
        0x1at
        0x4bt
        0x1ct
        0x4ct
        0x48t
        0x4bt
        0x1at
        0x4bt
        0x11t
    .end array-data

    :array_1
    .array-data 1
        0x45t
        0x15t
        0x49t
        0x14t
        0x1at
        0x1bt
        0x48t
        0x15t
        0x49t
        0x14t
        0x1at
        0x1bt
        0x48t
        0x15t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x7ft
        0x5at
        0x46t
        0x5ft
        0x56t
        0x5dt
        0x79t
        0x50t
        0x4bt
        0x75t
        0x40t
        0x50t
        0x5et
        0x50t
        0x49t
        0x65t
        0x51t
        0x52t
        0x42t
        0x50t
        0xft
    .end array-data

    nop

    :array_3
    .array-data 1
        0x1ct
        0x46t
        0x36t
        0x5dt
        0x4bt
        0xdt
        0x5ft
        0x2t
        0x5bt
    .end array-data

    nop

    :array_4
    .array-data 1
        0x14t
        0x15t
        0x76t
        0x3t
        0x0t
        0x10t
        0x5dt
        0x41t
        0x4t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x15t
        0x13t
        0x60t
        0x50t
        0x53t
        0x15t
        0x5ct
        0xet
    .end array-data
.end method

.method public setValue(IF)Z
    .locals 1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/motion/key/MotionKey;->setValue(IF)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWavePhase:F

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWaveOffset:F

    goto :goto_1

    :sswitch_2
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWavePeriod:F

    goto :goto_1

    :sswitch_3
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTransitionPathRotate:F

    goto :goto_1

    :sswitch_4
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mAlpha:F

    goto :goto_1

    :sswitch_5
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mProgress:F

    goto :goto_1

    :sswitch_6
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mScaleY:F

    goto :goto_1

    :sswitch_7
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mScaleX:F

    goto :goto_1

    :sswitch_8
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mRotation:F

    goto :goto_1

    :sswitch_9
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mRotationY:F

    goto :goto_1

    :sswitch_a
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mRotationX:F

    goto :goto_1

    :sswitch_b
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mElevation:F

    goto :goto_1

    :sswitch_c
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTranslationZ:F

    goto :goto_1

    :sswitch_d
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTranslationY:F

    goto :goto_1

    :sswitch_e
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTranslationX:F

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x130 -> :sswitch_e
        0x131 -> :sswitch_d
        0x132 -> :sswitch_c
        0x133 -> :sswitch_b
        0x134 -> :sswitch_a
        0x135 -> :sswitch_9
        0x136 -> :sswitch_8
        0x137 -> :sswitch_7
        0x138 -> :sswitch_6
        0x13b -> :sswitch_5
        0x193 -> :sswitch_4
        0x1a0 -> :sswitch_3
        0x1a7 -> :sswitch_2
        0x1a8 -> :sswitch_1
        0x1a9 -> :sswitch_0
    .end sparse-switch
.end method

.method public setValue(II)Z
    .locals 2

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    int-to-float v1, p2

    invoke-virtual {p0, p1, v1}, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->setValue(IF)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :sswitch_0
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWaveShape:I

    goto :goto_0

    :sswitch_1
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mCurveFit:I

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/motion/key/MotionKey;->setValue(II)Z

    move-result v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x191 -> :sswitch_1
        0x1a5 -> :sswitch_0
    .end sparse-switch
.end method

.method public setValue(ILjava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/motion/key/MotionKey;->setValue(ILjava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_1
    iput-object p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mCustomWaveShape:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    iput-object p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTransitionEasing:Ljava/lang/String;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1a4
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
