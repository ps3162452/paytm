.class public abstract Landroidx/constraintlayout/motion/widget/Key;
.super Ljava/lang/Object;


# static fields
.field public static final ALPHA:Ljava/lang/String;

.field public static final CURVEFIT:Ljava/lang/String;

.field public static final CUSTOM:Ljava/lang/String;

.field public static final ELEVATION:Ljava/lang/String;

.field public static final MOTIONPROGRESS:Ljava/lang/String;

.field public static final PIVOT_X:Ljava/lang/String;

.field public static final PIVOT_Y:Ljava/lang/String;

.field public static final PROGRESS:Ljava/lang/String;

.field public static final ROTATION:Ljava/lang/String;

.field public static final ROTATION_X:Ljava/lang/String;

.field public static final ROTATION_Y:Ljava/lang/String;

.field public static final SCALE_X:Ljava/lang/String;

.field public static final SCALE_Y:Ljava/lang/String;

.field public static final TRANSITIONEASING:Ljava/lang/String;

.field public static final TRANSITION_PATH_ROTATE:Ljava/lang/String;

.field public static final TRANSLATION_X:Ljava/lang/String;

.field public static final TRANSLATION_Y:Ljava/lang/String;

.field public static final TRANSLATION_Z:Ljava/lang/String;

.field public static UNSET:I

.field public static final VISIBILITY:Ljava/lang/String;

.field public static final WAVE_OFFSET:Ljava/lang/String;

.field public static final WAVE_PERIOD:Ljava/lang/String;

.field public static final WAVE_PHASE:Ljava/lang/String;

.field public static final WAVE_VARIES_BY:Ljava/lang/String;


# instance fields
.field mCustomConstraints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;"
        }
    .end annotation
.end field

.field mFramePosition:I

.field mTargetId:I

.field mTargetString:Ljava/lang/String;

.field protected mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v8, 0x8

    const/4 v7, 0x6

    const/16 v6, 0xc

    const/16 v5, 0x9

    const/4 v4, 0x1

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "93734f"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/motion/widget/Key;->ALPHA:Ljava/lang/String;

    new-array v0, v8, [B

    fill-array-data v0, :array_1

    const-string v1, "ffa9ca"

    const-wide v2, -0x3e2c5e4811800000L    # -1.317461946E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/motion/widget/Key;->CURVEFIT:Ljava/lang/String;

    new-array v0, v7, [B

    fill-array-data v0, :array_2

    const-string v1, "88557a"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/motion/widget/Key;->CUSTOM:Ljava/lang/String;

    new-array v0, v5, [B

    fill-array-data v0, :array_3

    const-string v1, "671ab9"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/motion/widget/Key;->ELEVATION:Ljava/lang/String;

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    const-string v1, "2aaeca"

    const/16 v2, -0x12fb

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/motion/widget/Key;->MOTIONPROGRESS:Ljava/lang/String;

    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    const-string v1, "a2af9a"

    const/16 v2, -0x5783

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/motion/widget/Key;->PIVOT_X:Ljava/lang/String;

    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_6

    const-string v1, "7de30b"

    const-wide v2, 0x4199131e18000000L    # 1.05170822E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/motion/widget/Key;->PIVOT_Y:Ljava/lang/String;

    new-array v0, v8, [B

    fill-array-data v0, :array_7

    const-string v1, "1e3d7e"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/motion/widget/Key;->PROGRESS:Ljava/lang/String;

    new-array v0, v8, [B

    fill-array-data v0, :array_8

    const-string v1, "0fc0f2"

    const-wide/32 v2, 0x7da85f1d

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/motion/widget/Key;->ROTATION:Ljava/lang/String;

    new-array v0, v5, [B

    fill-array-data v0, :array_9

    const-string v1, "1660b1"

    const v2, 0x4ecdebe9

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/motion/widget/Key;->ROTATION_X:Ljava/lang/String;

    new-array v0, v5, [B

    fill-array-data v0, :array_a

    const-string v1, "f9ec66"

    const-wide/32 v2, -0x7a871efe

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/motion/widget/Key;->ROTATION_Y:Ljava/lang/String;

    new-array v0, v7, [B

    fill-array-data v0, :array_b

    const-string v1, "88a792"

    const v2, 0x4da3a28f    # 3.4316746E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/motion/widget/Key;->SCALE_X:Ljava/lang/String;

    new-array v0, v7, [B

    fill-array-data v0, :array_c

    const-string v1, "a25e61"

    const/16 v2, 0x6c67

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/motion/widget/Key;->SCALE_Y:Ljava/lang/String;

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_d

    const-string v1, "af2860"

    const-wide v2, 0x41b40bc09e000000L    # 3.36314526E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/motion/widget/Key;->TRANSITIONEASING:Ljava/lang/String;

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_e

    const-string v1, "17e56b"

    const-wide v2, -0x3e4a2c681c000000L    # -3.66188516E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/motion/widget/Key;->TRANSITION_PATH_ROTATE:Ljava/lang/String;

    new-array v0, v6, [B

    fill-array-data v0, :array_f

    const-string v1, "c0db1e"

    const v2, -0x31f6009d

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/motion/widget/Key;->TRANSLATION_X:Ljava/lang/String;

    new-array v0, v6, [B

    fill-array-data v0, :array_10

    const-string v1, "55faae"

    const-wide/32 v2, -0x5a4bf22a

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/motion/widget/Key;->TRANSLATION_Y:Ljava/lang/String;

    new-array v0, v6, [B

    fill-array-data v0, :array_11

    const-string v1, "b84a6e"

    const v2, -0x33961e5e    # -6.13106E7f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/motion/widget/Key;->TRANSLATION_Z:Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_12

    const-string v1, "550c6a"

    const-wide v2, -0x3e4b83c012000000L    # -3.4368715E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/motion/widget/Key;->VISIBILITY:Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_13

    const-string v1, "dae89c"

    const/16 v2, 0x5779

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/motion/widget/Key;->WAVE_OFFSET:Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_14

    const-string v1, "b2269c"

    const v2, 0x4d80c161    # 2.7001962E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/motion/widget/Key;->WAVE_PERIOD:Ljava/lang/String;

    new-array v0, v5, [B

    fill-array-data v0, :array_15

    const-string v1, "92abac"

    const-wide/32 v2, 0xbbcb17c

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/motion/widget/Key;->WAVE_PHASE:Ljava/lang/String;

    new-array v0, v6, [B

    fill-array-data v0, :array_16

    const-string v1, "f59522"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/motion/widget/Key;->WAVE_VARIES_BY:Ljava/lang/String;

    const/4 v0, -0x1

    sput v0, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    return-void

    :array_0
    .array-data 1
        0x58t
        0x5ft
        0x47t
        0x5bt
        0x55t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x5t
        0x13t
        0x13t
        0x4ft
        0x6t
        0x27t
        0xft
        0x12t
    .end array-data

    :array_2
    .array-data 1
        0x7bt
        0x6dt
        0x66t
        0x61t
        0x78t
        0x2ct
    .end array-data

    nop

    :array_3
    .array-data 1
        0x53t
        0x5bt
        0x54t
        0x17t
        0x3t
        0x4dt
        0x5ft
        0x58t
        0x5ft
    .end array-data

    nop

    :array_4
    .array-data 1
        0x5ft
        0xet
        0x15t
        0xct
        0xct
        0xft
        0x62t
        0x13t
        0xet
        0x2t
        0x11t
        0x4t
        0x41t
        0x12t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x15t
        0x40t
        0x0t
        0x8t
        0x4at
        0x7t
        0xet
        0x40t
        0xct
        0x36t
        0x50t
        0x17t
        0xet
        0x46t
        0x39t
    .end array-data

    :array_6
    .array-data 1
        0x43t
        0x16t
        0x4t
        0x5dt
        0x43t
        0x4t
        0x58t
        0x16t
        0x8t
        0x63t
        0x59t
        0x14t
        0x58t
        0x10t
        0x3ct
    .end array-data

    :array_7
    .array-data 1
        0x41t
        0x17t
        0x5ct
        0x3t
        0x45t
        0x0t
        0x42t
        0x16t
    .end array-data

    :array_8
    .array-data 1
        0x42t
        0x9t
        0x17t
        0x51t
        0x12t
        0x5bt
        0x5ft
        0x8t
    .end array-data

    :array_9
    .array-data 1
        0x43t
        0x59t
        0x42t
        0x51t
        0x16t
        0x58t
        0x5et
        0x58t
        0x6et
    .end array-data

    nop

    :array_a
    .array-data 1
        0x14t
        0x56t
        0x11t
        0x2t
        0x42t
        0x5ft
        0x9t
        0x57t
        0x3ct
    .end array-data

    nop

    :array_b
    .array-data 1
        0x4bt
        0x5bt
        0x0t
        0x5bt
        0x5ct
        0x6at
    .end array-data

    nop

    :array_c
    .array-data 1
        0x12t
        0x51t
        0x54t
        0x9t
        0x53t
        0x68t
    .end array-data

    nop

    :array_d
    .array-data 1
        0x15t
        0x14t
        0x53t
        0x56t
        0x45t
        0x59t
        0x15t
        0xft
        0x5dt
        0x56t
        0x73t
        0x51t
        0x12t
        0xft
        0x5ct
        0x5ft
    .end array-data

    :array_e
    .array-data 1
        0x45t
        0x45t
        0x4t
        0x5bt
        0x45t
        0xbt
        0x45t
        0x5et
        0xat
        0x5bt
        0x66t
        0x3t
        0x45t
        0x5ft
        0x37t
        0x5at
        0x42t
        0x3t
        0x45t
        0x52t
    .end array-data

    :array_f
    .array-data 1
        0x17t
        0x42t
        0x5t
        0xct
        0x42t
        0x9t
        0x2t
        0x44t
        0xdt
        0xdt
        0x5ft
        0x3dt
    .end array-data

    :array_10
    .array-data 1
        0x41t
        0x47t
        0x7t
        0xft
        0x12t
        0x9t
        0x54t
        0x41t
        0xft
        0xet
        0xft
        0x3ct
    .end array-data

    :array_11
    .array-data 1
        0x16t
        0x4at
        0x55t
        0xft
        0x45t
        0x9t
        0x3t
        0x4ct
        0x5dt
        0xet
        0x58t
        0x3ft
    .end array-data

    :array_12
    .array-data 1
        0x43t
        0x5ct
        0x43t
        0xat
        0x54t
        0x8t
        0x59t
        0x5ct
        0x44t
        0x1at
    .end array-data

    nop

    :array_13
    .array-data 1
        0x13t
        0x0t
        0x13t
        0x5dt
        0x76t
        0x5t
        0x2t
        0x12t
        0x0t
        0x4ct
    .end array-data

    nop

    :array_14
    .array-data 1
        0x15t
        0x53t
        0x44t
        0x53t
        0x69t
        0x6t
        0x10t
        0x5bt
        0x5dt
        0x52t
    .end array-data

    nop

    :array_15
    .array-data 1
        0x4et
        0x53t
        0x17t
        0x7t
        0x31t
        0xbt
        0x58t
        0x41t
        0x4t
    .end array-data

    nop

    :array_16
    .array-data 1
        0x11t
        0x54t
        0x4ft
        0x50t
        0x64t
        0x53t
        0x14t
        0x5ct
        0x5ct
        0x46t
        0x70t
        0x4bt
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/Key;->mTargetId:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/Key;->mTargetString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract addValues(Ljava/util/HashMap;)V
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
.end method

.method public abstract clone()Landroidx/constraintlayout/motion/widget/Key;
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/Key;->clone()Landroidx/constraintlayout/motion/widget/Key;

    move-result-object v0

    return-object v0
.end method

.method public copy(Landroidx/constraintlayout/motion/widget/Key;)Landroidx/constraintlayout/motion/widget/Key;
    .locals 1

    iget v0, p1, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    iget v0, p1, Landroidx/constraintlayout/motion/widget/Key;->mTargetId:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/Key;->mTargetId:I

    iget-object v0, p1, Landroidx/constraintlayout/motion/widget/Key;->mTargetString:Ljava/lang/String;

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/Key;->mTargetString:Ljava/lang/String;

    iget v0, p1, Landroidx/constraintlayout/motion/widget/Key;->mType:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/Key;->mType:I

    iget-object v0, p1, Landroidx/constraintlayout/motion/widget/Key;->mCustomConstraints:Ljava/util/HashMap;

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/Key;->mCustomConstraints:Ljava/util/HashMap;

    return-object p0
.end method

.method abstract getAttributeNames(Ljava/util/HashSet;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public getFramePosition()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    return v0
.end method

.method abstract load(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end method

.method matches(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/Key;->mTargetString:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setFramePosition(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    return-void
.end method

.method public setInterpolation(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public abstract setValue(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public setViewId(I)Landroidx/constraintlayout/motion/widget/Key;
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/Key;->mTargetId:I

    return-object p0
.end method

.method toBoolean(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method toFloat(Ljava/lang/Object;)F
    .locals 1

    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    goto :goto_0
.end method

.method toInt(Ljava/lang/Object;)I
    .locals 1

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
