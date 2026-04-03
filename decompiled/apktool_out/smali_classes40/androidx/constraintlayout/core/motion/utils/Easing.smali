.class public Landroidx/constraintlayout/core/motion/utils/Easing;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;
    }
.end annotation


# static fields
.field private static final ACCELERATE:Ljava/lang/String;

.field private static final ACCELERATE_NAME:Ljava/lang/String;

.field private static final ANTICIPATE:Ljava/lang/String;

.field private static final ANTICIPATE_NAME:Ljava/lang/String;

.field private static final DECELERATE:Ljava/lang/String;

.field private static final DECELERATE_NAME:Ljava/lang/String;

.field private static final LINEAR:Ljava/lang/String;

.field private static final LINEAR_NAME:Ljava/lang/String;

.field public static NAMED_EASING:[Ljava/lang/String;

.field private static final OVERSHOOT:Ljava/lang/String;

.field private static final OVERSHOOT_NAME:Ljava/lang/String;

.field private static final STANDARD:Ljava/lang/String;

.field private static final STANDARD_NAME:Ljava/lang/String;

.field static sDefault:Landroidx/constraintlayout/core/motion/utils/Easing;


# instance fields
.field str:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x6

    const/16 v7, 0x1a

    const/16 v6, 0xa

    const/4 v4, 0x1

    const/4 v5, 0x0

    new-array v0, v7, [B

    fill-array-data v0, :array_0

    const-string v1, "c6b345"

    const-wide/32 v2, -0x85b1ec8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/Easing;->ACCELERATE:Ljava/lang/String;

    new-array v0, v6, [B

    fill-array-data v0, :array_1

    const-string v1, "8a89fa"

    invoke-static {v0, v1, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/Easing;->ACCELERATE_NAME:Ljava/lang/String;

    const/16 v0, 0x1b

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "56dd61"

    invoke-static {v0, v1, v5, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/Easing;->ANTICIPATE:Ljava/lang/String;

    new-array v0, v6, [B

    fill-array-data v0, :array_3

    const-string v1, "cc5fb4"

    const-wide/32 v2, -0x218feffd

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/Easing;->ANTICIPATE_NAME:Ljava/lang/String;

    new-array v0, v7, [B

    fill-array-data v0, :array_4

    const-string v1, "453aa0"

    const-wide v2, -0x3e2ae80693800000L    # -1.415570866E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/Easing;->DECELERATE:Ljava/lang/String;

    new-array v0, v6, [B

    fill-array-data v0, :array_5

    const-string v1, "2b60bf"

    const-wide v2, -0x3e2eba7939400000L    # -1.159076635E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/Easing;->DECELERATE_NAME:Ljava/lang/String;

    const/16 v0, 0x11

    new-array v0, v0, [B

    fill-array-data v0, :array_6

    const-string v1, "f4fd33"

    const-wide/32 v2, -0x1759b9be

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/Easing;->LINEAR:Ljava/lang/String;

    new-array v0, v8, [B

    fill-array-data v0, :array_7

    const-string v1, "355824"

    invoke-static {v0, v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/Easing;->LINEAR_NAME:Ljava/lang/String;

    new-array v0, v7, [B

    fill-array-data v0, :array_8

    const-string v1, "8fa64a"

    const/16 v2, 0x4f84

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/Easing;->OVERSHOOT:Ljava/lang/String;

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_9

    const-string v1, "f80033"

    const-wide/32 v2, -0x5c543cee

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/Easing;->OVERSHOOT_NAME:Ljava/lang/String;

    const/16 v0, 0x17

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    const-string v1, "521a32"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/Easing;->STANDARD:Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_b

    const-string v1, "ad33c9"

    invoke-static {v0, v1, v5, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/Easing;->STANDARD_NAME:Ljava/lang/String;

    new-instance v0, Landroidx/constraintlayout/core/motion/utils/Easing;

    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/utils/Easing;-><init>()V

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/Easing;->sDefault:Landroidx/constraintlayout/core/motion/utils/Easing;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/16 v1, 0x8

    new-array v1, v1, [B

    fill-array-data v1, :array_c

    const-string v2, "8583d9"

    invoke-static {v1, v2, v5, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    new-array v1, v6, [B

    fill-array-data v1, :array_d

    const-string v2, "2b85ae"

    invoke-static {v1, v2, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x2

    new-array v2, v6, [B

    fill-array-data v2, :array_e

    const-string v3, "ecc470"

    const/16 v4, -0x16e7

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v8, [B

    fill-array-data v2, :array_f

    const-string v3, "800926"

    invoke-static {v2, v3, v5, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/Easing;->NAMED_EASING:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x0t
        0x43t
        0x0t
        0x5at
        0x57t
        0x1dt
        0x53t
        0x18t
        0x56t
        0x1ft
        0x14t
        0x5t
        0x4dt
        0x6t
        0x57t
        0x1ft
        0x14t
        0x5t
        0x4dt
        0xet
        0x4et
        0x13t
        0x4t
        0x1bt
        0x54t
        0x1ft
    .end array-data

    nop

    :array_1
    .array-data 1
        0x59t
        0x2t
        0x5bt
        0x5ct
        0xat
        0x4t
        0x4at
        0x0t
        0x4ct
        0x5ct
    .end array-data

    nop

    :array_2
    .array-data 1
        0x56t
        0x43t
        0x6t
        0xdt
        0x55t
        0x19t
        0x5t
        0x18t
        0x57t
        0x52t
        0x1at
        0x11t
        0x5t
        0x1at
        0x44t
        0x54t
        0x18t
        0x7t
        0x3t
        0x1at
        0x44t
        0x49t
        0x6t
        0x1ft
        0x0t
        0x0t
        0x4dt
    .end array-data

    :array_3
    .array-data 1
        0x2t
        0xdt
        0x41t
        0xft
        0x1t
        0x5dt
        0x13t
        0x2t
        0x41t
        0x3t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x57t
        0x40t
        0x51t
        0x8t
        0x2t
        0x18t
        0x4t
        0x1bt
        0x3t
        0x4dt
        0x41t
        0x0t
        0x1at
        0x5t
        0x1ft
        0x41t
        0x51t
        0x1et
        0x6t
        0x19t
        0x13t
        0x51t
        0x4ft
        0x9t
        0x1t
        0x1ct
    .end array-data

    nop

    :array_5
    .array-data 1
        0x56t
        0x7t
        0x55t
        0x55t
        0xet
        0x3t
        0x40t
        0x3t
        0x42t
        0x55t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x5t
        0x41t
        0x4t
        0xdt
        0x50t
        0x1bt
        0x57t
        0x18t
        0x46t
        0x55t
        0x1ft
        0x13t
        0x56t
        0x18t
        0x46t
        0x54t
        0x1at
    .end array-data

    nop

    :array_7
    .array-data 1
        0x5ft
        0x5ct
        0x5bt
        0x5dt
        0x53t
        0x46t
    .end array-data

    nop

    :array_8
    .array-data 1
        0x5bt
        0x13t
        0x3t
        0x5ft
        0x57t
        0x49t
        0x8t
        0x48t
        0x52t
        0x2t
        0x18t
        0x41t
        0x9t
        0x48t
        0x54t
        0x0t
        0x18t
        0x41t
        0x8t
        0x48t
        0x57t
        0x2t
        0x18t
        0x41t
        0x9t
        0x4ft
    .end array-data

    nop

    :array_9
    .array-data 1
        0x9t
        0x4et
        0x55t
        0x42t
        0x40t
        0x5bt
        0x9t
        0x57t
        0x44t
    .end array-data

    nop

    :array_a
    .array-data 1
        0x56t
        0x47t
        0x53t
        0x8t
        0x50t
        0x1at
        0x5t
        0x1ct
        0x5t
        0x4dt
        0x13t
        0x2t
        0x1bt
        0x2t
        0x1dt
        0x41t
        0x3t
        0x1ct
        0x7t
        0x1et
        0x11t
        0x50t
        0x1at
    .end array-data

    :array_b
    .array-data 1
        0x12t
        0x10t
        0x52t
        0x5dt
        0x7t
        0x58t
        0x13t
        0x0t
    .end array-data

    :array_c
    .array-data 1
        0x4bt
        0x41t
        0x59t
        0x5dt
        0x0t
        0x58t
        0x4at
        0x51t
    .end array-data

    :array_d
    .array-data 1
        0x53t
        0x1t
        0x5bt
        0x50t
        0xdt
        0x0t
        0x40t
        0x3t
        0x4ct
        0x50t
    .end array-data

    nop

    :array_e
    .array-data 1
        0x1t
        0x6t
        0x0t
        0x51t
        0x5bt
        0x55t
        0x17t
        0x2t
        0x17t
        0x51t
    .end array-data

    nop

    :array_f
    .array-data 1
        0x54t
        0x59t
        0x5et
        0x5ct
        0x53t
        0x44t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "cd56c7"

    const v2, -0x31262a0e

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/Easing;->str:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0xat
        0x0t
        0x50t
        0x58t
        0x17t
        0x5et
        0x17t
        0x1dt
    .end array-data
.end method

.method public static getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;
    .locals 8

    const/4 v2, 0x5

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-array v0, v2, [B

    fill-array-data v0, :array_0

    const-string v4, "a0c1ab"

    invoke-static {v0, v4, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v4, "0f669d"

    const-wide v6, -0x3e4fffa8f2000000L    # -2.68457742E8

    invoke-static {v0, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroidx/constraintlayout/core/motion/utils/StepCurve;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/motion/utils/StepCurve;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v4, "4ba802"

    invoke-static {v0, v4, v1, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Landroidx/constraintlayout/core/motion/utils/Schlick;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/motion/utils/Schlick;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_4
    :goto_1
    packed-switch v0, :pswitch_data_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x52

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const-string v3, "b6f61e"

    const-wide v4, -0x3e3b0d64f6000000L    # -7.02887444E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroidx/constraintlayout/core/motion/utils/Easing;->NAMED_EASING:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Landroidx/constraintlayout/core/motion/utils/Easing;->sDefault:Landroidx/constraintlayout/core/motion/utils/Easing;

    goto/16 :goto_0

    :sswitch_0
    sget-object v2, Landroidx/constraintlayout/core/motion/utils/Easing;->STANDARD_NAME:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_1

    :sswitch_1
    sget-object v1, Landroidx/constraintlayout/core/motion/utils/Easing;->OVERSHOOT_NAME:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v0, v2

    goto :goto_1

    :sswitch_2
    sget-object v1, Landroidx/constraintlayout/core/motion/utils/Easing;->LINEAR_NAME:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_3
    sget-object v1, Landroidx/constraintlayout/core/motion/utils/Easing;->ANTICIPATE_NAME:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_4
    sget-object v1, Landroidx/constraintlayout/core/motion/utils/Easing;->DECELERATE_NAME:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_5
    sget-object v1, Landroidx/constraintlayout/core/motion/utils/Easing;->ACCELERATE_NAME:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v0, v3

    goto :goto_1

    :pswitch_0
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;

    sget-object v1, Landroidx/constraintlayout/core/motion/utils/Easing;->OVERSHOOT:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;

    sget-object v1, Landroidx/constraintlayout/core/motion/utils/Easing;->ANTICIPATE:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;

    sget-object v1, Landroidx/constraintlayout/core/motion/utils/Easing;->LINEAR:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;

    sget-object v1, Landroidx/constraintlayout/core/motion/utils/Easing;->DECELERATE:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;

    sget-object v1, Landroidx/constraintlayout/core/motion/utils/Easing;->ACCELERATE:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_5
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;

    sget-object v1, Landroidx/constraintlayout/core/motion/utils/Easing;->STANDARD:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    :array_0
    .array-data 1
        0x2t
        0x45t
        0x1t
        0x58t
        0x2t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x43t
        0x16t
        0x5at
        0x5ft
        0x57t
        0x1t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x67t
        0x1t
        0x9t
        0x54t
        0x59t
        0x51t
        0x5ft
    .end array-data

    :sswitch_data_0
    .sparse-switch
        -0x50bb8523 -> :sswitch_5
        -0x4b5653c4 -> :sswitch_4
        -0x47620096 -> :sswitch_3
        -0x41b970db -> :sswitch_2
        -0x2ca5d435 -> :sswitch_1
        0x4e3d1ebd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_3
    .array-data 1
        0x16t
        0x44t
        0x7t
        0x58t
        0x42t
        0xct
        0x16t
        0x5ft
        0x9t
        0x58t
        0x74t
        0x4t
        0x11t
        0x5ft
        0x8t
        0x51t
        0x11t
        0x16t
        0x1bt
        0x58t
        0x12t
        0x57t
        0x49t
        0x45t
        0x7t
        0x44t
        0x14t
        0x59t
        0x43t
        0x45t
        0x11t
        0x4ft
        0x8t
        0x42t
        0x50t
        0x1dt
        0x58t
        0x42t
        0x14t
        0x57t
        0x5ft
        0x16t
        0xbt
        0x42t
        0xft
        0x59t
        0x5ft
        0x20t
        0x3t
        0x45t
        0xft
        0x58t
        0x56t
        0x58t
        0x40t
        0x55t
        0x13t
        0x54t
        0x58t
        0x6t
        0x4at
        0x7t
        0x48t
        0x6t
        0x1dt
        0x55t
        0x4ct
        0x3t
        0x4at
        0x6t
        0x1ft
        0x55t
        0x4et
        0x6t
        0x48t
        0x0t
        0x18t
        0x47t
        0x42t
        0x59t
        0x14t
        0x16t
    .end array-data
.end method


# virtual methods
.method public get(D)D
    .locals 1

    return-wide p1
.end method

.method public getDiff(D)D
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/Easing;->str:Ljava/lang/String;

    return-object v0
.end method
