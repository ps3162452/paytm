.class public interface abstract Landroidx/constraintlayout/core/motion/utils/TypedValues$Transition;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/TypedValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Transition"
.end annotation


# static fields
.field public static final KEY_WORDS:[Ljava/lang/String;

.field public static final NAME:Ljava/lang/String;

.field public static final S_AUTO_TRANSITION:Ljava/lang/String;

.field public static final S_DURATION:Ljava/lang/String;

.field public static final S_FROM:Ljava/lang/String;

.field public static final S_INTERPOLATOR:Ljava/lang/String;

.field public static final S_PATH_MOTION_ARC:Ljava/lang/String;

.field public static final S_STAGGERED:Ljava/lang/String;

.field public static final S_TO:Ljava/lang/String;

.field public static final S_TRANSITION_FLAGS:Ljava/lang/String;

.field public static final TYPE_AUTO_TRANSITION:I = 0x2c0

.field public static final TYPE_DURATION:I = 0x2bc

.field public static final TYPE_FROM:I = 0x2bd

.field public static final TYPE_INTERPOLATOR:I = 0x2c1

.field public static final TYPE_PATH_MOTION_ARC:I = 0x1fd

.field public static final TYPE_STAGGERED:I = 0x2c2

.field public static final TYPE_TO:I = 0x2be

.field public static final TYPE_TRANSITION_FLAGS:I = 0x2c3


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/16 v9, 0x8

    const/4 v8, 0x2

    const/4 v4, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "9efdc6"

    const v2, -0x31f2f2a9

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$Transition;->NAME:Ljava/lang/String;

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "09a752"

    const/16 v2, 0x6799

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$Transition;->S_AUTO_TRANSITION:Ljava/lang/String;

    new-array v0, v9, [B

    fill-array-data v0, :array_2

    const-string v1, "16263e"

    const-wide/32 v2, -0x74069f66

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$Transition;->S_DURATION:Ljava/lang/String;

    new-array v0, v7, [B

    fill-array-data v0, :array_3

    const-string v1, "20d790"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$Transition;->S_FROM:Ljava/lang/String;

    const/16 v0, 0x12

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    const-string v1, "fd1a4a"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$Transition;->S_INTERPOLATOR:Ljava/lang/String;

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    const-string v1, "27cc1b"

    invoke-static {v0, v1, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$Transition;->S_PATH_MOTION_ARC:Ljava/lang/String;

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_6

    const-string v1, "67ffc5"

    const-wide v2, -0x3e26b35e27c00000L    # -1.697810273E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$Transition;->S_STAGGERED:Ljava/lang/String;

    new-array v0, v8, [B

    fill-array-data v0, :array_7

    const-string v1, "2a515b"

    invoke-static {v0, v1, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$Transition;->S_TO:Ljava/lang/String;

    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    const-string v1, "95b4ef"

    const/16 v2, 0x6898

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$Transition;->S_TRANSITION_FLAGS:Ljava/lang/String;

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    new-array v1, v9, [B

    fill-array-data v1, :array_9

    const-string v2, "9fa4de"

    const v3, 0x4eab6f95

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    new-array v1, v7, [B

    fill-array-data v1, :array_a

    const-string v2, "9ea78a"

    const-wide/32 v4, 0x4da35ff9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    new-array v1, v8, [B

    fill-array-data v1, :array_b

    const-string v2, "570d4d"

    const v3, 0x4e207ff9    # 6.7318534E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    const/4 v1, 0x3

    const/16 v2, 0xd

    new-array v2, v2, [B

    fill-array-data v2, :array_c

    const-string v3, "78a3a6"

    const v4, -0x311e3134

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v1, v1, [B

    fill-array-data v1, :array_d

    const-string v2, "d51749"

    const v3, 0x4e009907    # 5.393781E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const/16 v2, 0x12

    new-array v2, v2, [B

    fill-array-data v2, :array_e

    const-string v3, "adcd88"

    const-wide v4, 0x41cb905025000000L    # 9.24885066E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x9

    new-array v2, v2, [B

    fill-array-data v2, :array_f

    const-string v3, "823882"

    const/16 v4, 0x2c5e

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v7, [B

    fill-array-data v2, :array_10

    const-string v3, "6a5f40"

    invoke-static {v2, v3, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v1, v1, [B

    fill-array-data v1, :array_11

    const-string v2, "717599"

    const/16 v3, -0x1100

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$Transition;->KEY_WORDS:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x6dt
        0x17t
        0x7t
        0xat
        0x10t
        0x5ft
        0x4dt
        0xct
        0x9t
        0xat
        0x10t
    .end array-data

    :array_1
    .array-data 1
        0x51t
        0x4ct
        0x15t
        0x58t
        0x61t
        0x40t
        0x51t
        0x57t
        0x12t
        0x5et
        0x41t
        0x5bt
        0x5ft
        0x57t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x55t
        0x43t
        0x40t
        0x57t
        0x47t
        0xct
        0x5et
        0x58t
    .end array-data

    :array_3
    .array-data 1
        0x54t
        0x42t
        0xbt
        0x5at
    .end array-data

    :array_4
    .array-data 1
        0xbt
        0xbt
        0x45t
        0x8t
        0x5bt
        0xft
        0x2ft
        0xat
        0x45t
        0x4t
        0x46t
        0x11t
        0x9t
        0x8t
        0x50t
        0x15t
        0x5bt
        0x13t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x42t
        0x56t
        0x17t
        0xbt
        0x7ct
        0xdt
        0x46t
        0x5et
        0xct
        0xdt
        0x70t
        0x10t
        0x51t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x45t
        0x43t
        0x7t
        0x1t
        0x4t
        0x50t
        0x44t
        0x52t
        0x2t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x46t
        0xet
    .end array-data

    nop

    :array_8
    .array-data 1
        0x4dt
        0x47t
        0x3t
        0x5at
        0x16t
        0xft
        0x4dt
        0x5ct
        0xdt
        0x5at
        0x23t
        0xat
        0x58t
        0x52t
        0x11t
    .end array-data

    :array_9
    .array-data 1
        0x5dt
        0x13t
        0x13t
        0x55t
        0x10t
        0xct
        0x56t
        0x8t
    .end array-data

    :array_a
    .array-data 1
        0x5ft
        0x17t
        0xet
        0x5at
    .end array-data

    :array_b
    .array-data 1
        0x41t
        0x58t
    .end array-data

    nop

    :array_c
    .array-data 1
        0x47t
        0x59t
        0x15t
        0x5bt
        0x2ct
        0x59t
        0x43t
        0x51t
        0xet
        0x5dt
        0x20t
        0x44t
        0x54t
    .end array-data

    nop

    :array_d
    .array-data 1
        0x5t
        0x40t
        0x45t
        0x58t
        0x60t
        0x4bt
        0x5t
        0x5bt
        0x42t
        0x5et
        0x40t
        0x50t
        0xbt
        0x5bt
    .end array-data

    nop

    :array_e
    .array-data 1
        0xct
        0xbt
        0x17t
        0xdt
        0x57t
        0x56t
        0x28t
        0xat
        0x17t
        0x1t
        0x4at
        0x48t
        0xet
        0x8t
        0x2t
        0x10t
        0x57t
        0x4at
    .end array-data

    nop

    :array_f
    .array-data 1
        0x4bt
        0x46t
        0x52t
        0x5ft
        0x5ft
        0x57t
        0x4at
        0x57t
        0x57t
    .end array-data

    nop

    :array_10
    .array-data 1
        0x50t
        0x13t
        0x5at
        0xbt
    .end array-data

    :array_11
    .array-data 1
        0x43t
        0x43t
        0x56t
        0x5bt
        0x4at
        0x50t
        0x43t
        0x58t
        0x58t
        0x5bt
        0x7ft
        0x55t
        0x56t
        0x56t
        0x44t
    .end array-data
.end method
