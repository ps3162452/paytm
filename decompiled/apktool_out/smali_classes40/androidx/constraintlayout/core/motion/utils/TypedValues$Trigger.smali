.class public interface abstract Landroidx/constraintlayout/core/motion/utils/TypedValues$Trigger;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/TypedValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Trigger"
.end annotation


# static fields
.field public static final CROSS:Ljava/lang/String;

.field public static final KEY_WORDS:[Ljava/lang/String;

.field public static final NAME:Ljava/lang/String;

.field public static final NEGATIVE_CROSS:Ljava/lang/String;

.field public static final POSITIVE_CROSS:Ljava/lang/String;

.field public static final POST_LAYOUT:Ljava/lang/String;

.field public static final TRIGGER_COLLISION_ID:Ljava/lang/String;

.field public static final TRIGGER_COLLISION_VIEW:Ljava/lang/String;

.field public static final TRIGGER_ID:Ljava/lang/String;

.field public static final TRIGGER_RECEIVER:Ljava/lang/String;

.field public static final TRIGGER_SLACK:Ljava/lang/String;

.field public static final TYPE_CROSS:I = 0x138

.field public static final TYPE_NEGATIVE_CROSS:I = 0x136

.field public static final TYPE_POSITIVE_CROSS:I = 0x135

.field public static final TYPE_POST_LAYOUT:I = 0x130

.field public static final TYPE_TRIGGER_COLLISION_ID:I = 0x133

.field public static final TYPE_TRIGGER_COLLISION_VIEW:I = 0x132

.field public static final TYPE_TRIGGER_ID:I = 0x134

.field public static final TYPE_TRIGGER_RECEIVER:I = 0x137

.field public static final TYPE_TRIGGER_SLACK:I = 0x131

.field public static final TYPE_VIEW_TRANSITION_ON_CROSS:I = 0x12d

.field public static final TYPE_VIEW_TRANSITION_ON_NEGATIVE_CROSS:I = 0x12f

.field public static final TYPE_VIEW_TRANSITION_ON_POSITIVE_CROSS:I = 0x12e

.field public static final VIEW_TRANSITION_ON_CROSS:Ljava/lang/String;

.field public static final VIEW_TRANSITION_ON_NEGATIVE_CROSS:Ljava/lang/String;

.field public static final VIEW_TRANSITION_ON_POSITIVE_CROSS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/16 v10, 0x1d

    const/16 v9, 0xd

    const/16 v8, 0xa

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "97c611"

    const-wide/32 v2, -0x1b90202e

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$Trigger;->CROSS:Ljava/lang/String;

    new-array v0, v8, [B

    fill-array-data v0, :array_1

    const-string v1, "e8b4a3"

    invoke-static {v0, v1, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$Trigger;->NAME:Ljava/lang/String;

    new-array v0, v9, [B

    fill-array-data v0, :array_2

    const-string v1, "ee6997"

    invoke-static {v0, v1, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$Trigger;->NEGATIVE_CROSS:Ljava/lang/String;

    new-array v0, v9, [B

    fill-array-data v0, :array_3

    const-string v1, "f0754e"

    invoke-static {v0, v1, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$Trigger;->POSITIVE_CROSS:Ljava/lang/String;

    new-array v0, v8, [B

    fill-array-data v0, :array_4

    const-string v1, "21bc3e"

    invoke-static {v0, v1, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$Trigger;->POST_LAYOUT:Ljava/lang/String;

    const/16 v0, 0x12

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    const-string v1, "a20181"

    const v2, -0x3175e748

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$Trigger;->TRIGGER_COLLISION_ID:Ljava/lang/String;

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_6

    const-string v1, "7e6d10"

    const v2, 0x4ef44afb

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$Trigger;->TRIGGER_COLLISION_VIEW:Ljava/lang/String;

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_7

    const-string v1, "7a12a3"

    invoke-static {v0, v1, v7, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$Trigger;->TRIGGER_ID:Ljava/lang/String;

    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    const-string v1, "f141bd"

    invoke-static {v0, v1, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$Trigger;->TRIGGER_RECEIVER:Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_9

    const-string v1, "c9122a"

    const-wide v2, 0x417d48b850000000L    # 3.0706565E7

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$Trigger;->TRIGGER_SLACK:Ljava/lang/String;

    const/16 v0, 0x15

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    const-string v1, "b73650"

    const/16 v2, 0x48f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$Trigger;->VIEW_TRANSITION_ON_CROSS:Ljava/lang/String;

    new-array v0, v10, [B

    fill-array-data v0, :array_b

    const-string v1, "e7322c"

    invoke-static {v0, v1, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$Trigger;->VIEW_TRANSITION_ON_NEGATIVE_CROSS:Ljava/lang/String;

    new-array v0, v10, [B

    fill-array-data v0, :array_c

    const-string v1, "6c9bb5"

    const/16 v2, -0x57c

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$Trigger;->VIEW_TRANSITION_ON_POSITIVE_CROSS:Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/16 v1, 0x15

    new-array v1, v1, [B

    fill-array-data v1, :array_d

    const-string v2, "76ed8d"

    invoke-static {v1, v2, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    new-array v1, v10, [B

    fill-array-data v1, :array_e

    const-string v2, "75f312"

    const-wide v4, 0x41cdb30926000000L    # 9.965451E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v1, 0x2

    new-array v2, v10, [B

    fill-array-data v2, :array_f

    const-string v3, "8c34b0"

    invoke-static {v2, v3, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v8, [B

    fill-array-data v2, :array_10

    const-string v3, "9bd6b6"

    const v4, -0x3172d0e4

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0xc

    new-array v2, v2, [B

    fill-array-data v2, :array_11

    const-string v3, "a65898"

    const v4, -0x317e4dfa

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x14

    new-array v2, v2, [B

    fill-array-data v2, :array_12

    const-string v3, "11aede"

    invoke-static {v2, v3, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x12

    new-array v2, v2, [B

    fill-array-data v2, :array_13

    const-string v3, "abb062"

    invoke-static {v2, v3, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x9

    new-array v2, v2, [B

    fill-array-data v2, :array_14

    const-string v3, "08cb93"

    const/16 v4, -0xb01

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v9, [B

    fill-array-data v2, :array_15

    const-string v3, "e632e7"

    const v4, -0x31a02e51

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v9, [B

    fill-array-data v2, :array_16

    const-string v3, "407a5a"

    invoke-static {v2, v3, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v1, v1, [B

    fill-array-data v1, :array_17

    const-string v2, "ef5292"

    const-wide v4, -0x3e3dd0382d000000L    # -6.1024247E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    const/16 v1, 0xb

    const/4 v2, 0x5

    new-array v2, v2, [B

    fill-array-data v2, :array_18

    const-string v3, "151bc0"

    const/16 v4, -0x5f1c

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$Trigger;->KEY_WORDS:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x7at
        0x65t
        0x2ct
        0x65t
        0x62t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x2et
        0x5dt
        0x1bt
        0x60t
        0x13t
        0x5at
        0x2t
        0x5ft
        0x7t
        0x46t
    .end array-data

    nop

    :array_2
    .array-data 1
        0xbt
        0x0t
        0x51t
        0x58t
        0x4dt
        0x5et
        0x13t
        0x0t
        0x75t
        0x4bt
        0x56t
        0x44t
        0x16t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x16t
        0x5ft
        0x44t
        0x5ct
        0x40t
        0xct
        0x10t
        0x55t
        0x74t
        0x47t
        0x5bt
        0x16t
        0x15t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x42t
        0x5et
        0x11t
        0x17t
        0x7ft
        0x4t
        0x4bt
        0x5et
        0x17t
        0x17t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x15t
        0x40t
        0x59t
        0x56t
        0x5ft
        0x54t
        0x13t
        0x71t
        0x5ft
        0x5dt
        0x54t
        0x58t
        0x12t
        0x5bt
        0x5ft
        0x5ft
        0x71t
        0x55t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x43t
        0x17t
        0x5ft
        0x3t
        0x56t
        0x55t
        0x45t
        0x26t
        0x59t
        0x8t
        0x5dt
        0x59t
        0x44t
        0xct
        0x59t
        0xat
        0x67t
        0x59t
        0x52t
        0x12t
    .end array-data

    :array_7
    .array-data 1
        0x43t
        0x13t
        0x58t
        0x55t
        0x6t
        0x56t
        0x45t
        0x28t
        0x75t
    .end array-data

    nop

    :array_8
    .array-data 1
        0x12t
        0x43t
        0x5dt
        0x56t
        0x5t
        0x1t
        0x14t
        0x63t
        0x51t
        0x52t
        0x7t
        0xdt
        0x10t
        0x54t
        0x46t
    .end array-data

    :array_9
    .array-data 1
        0x17t
        0x4bt
        0x58t
        0x55t
        0x55t
        0x4t
        0x11t
        0x6at
        0x5dt
        0x53t
        0x51t
        0xat
    .end array-data

    :array_a
    .array-data 1
        0x14t
        0x5et
        0x56t
        0x41t
        0x61t
        0x42t
        0x3t
        0x59t
        0x40t
        0x5ft
        0x41t
        0x59t
        0xdt
        0x59t
        0x7ct
        0x58t
        0x76t
        0x42t
        0xdt
        0x44t
        0x40t
    .end array-data

    nop

    :array_b
    .array-data 1
        0x13t
        0x5et
        0x56t
        0x45t
        0x66t
        0x11t
        0x4t
        0x59t
        0x40t
        0x5bt
        0x46t
        0xat
        0xat
        0x59t
        0x7ct
        0x5ct
        0x7ct
        0x6t
        0x2t
        0x56t
        0x47t
        0x5bt
        0x44t
        0x6t
        0x26t
        0x45t
        0x5ct
        0x41t
        0x41t
    .end array-data

    nop

    :array_c
    .array-data 1
        0x40t
        0xat
        0x5ct
        0x15t
        0x36t
        0x47t
        0x57t
        0xdt
        0x4at
        0xbt
        0x16t
        0x5ct
        0x59t
        0xdt
        0x76t
        0xct
        0x32t
        0x5at
        0x45t
        0xat
        0x4dt
        0xbt
        0x14t
        0x50t
        0x75t
        0x11t
        0x56t
        0x11t
        0x11t
    .end array-data

    nop

    :array_d
    .array-data 1
        0x41t
        0x5ft
        0x0t
        0x13t
        0x6ct
        0x16t
        0x56t
        0x58t
        0x16t
        0xdt
        0x4ct
        0xdt
        0x58t
        0x58t
        0x2at
        0xat
        0x7bt
        0x16t
        0x58t
        0x45t
        0x16t
    .end array-data

    nop

    :array_e
    .array-data 1
        0x41t
        0x5ct
        0x3t
        0x44t
        0x65t
        0x40t
        0x56t
        0x5bt
        0x15t
        0x5at
        0x45t
        0x5bt
        0x58t
        0x5bt
        0x29t
        0x5dt
        0x61t
        0x5dt
        0x44t
        0x5ct
        0x12t
        0x5at
        0x47t
        0x57t
        0x74t
        0x47t
        0x9t
        0x40t
        0x42t
    .end array-data

    nop

    :array_f
    .array-data 1
        0x4et
        0xat
        0x56t
        0x43t
        0x36t
        0x42t
        0x59t
        0xdt
        0x40t
        0x5dt
        0x16t
        0x59t
        0x57t
        0xdt
        0x7ct
        0x5at
        0x2ct
        0x55t
        0x5ft
        0x2t
        0x47t
        0x5dt
        0x14t
        0x55t
        0x7bt
        0x11t
        0x5ct
        0x47t
        0x11t
    .end array-data

    nop

    :array_10
    .array-data 1
        0x49t
        0xdt
        0x17t
        0x42t
        0x2et
        0x57t
        0x40t
        0xdt
        0x11t
        0x42t
    .end array-data

    nop

    :array_11
    .array-data 1
        0x15t
        0x44t
        0x5ct
        0x5ft
        0x5et
        0x5dt
        0x13t
        0x65t
        0x59t
        0x59t
        0x5at
        0x53t
    .end array-data

    :array_12
    .array-data 1
        0x45t
        0x43t
        0x8t
        0x2t
        0x3t
        0x0t
        0x43t
        0x72t
        0xet
        0x9t
        0x8t
        0xct
        0x42t
        0x58t
        0xet
        0xbt
        0x32t
        0xct
        0x54t
        0x46t
    .end array-data

    :array_13
    .array-data 1
        0x15t
        0x10t
        0xbt
        0x57t
        0x51t
        0x57t
        0x13t
        0x21t
        0xdt
        0x5ct
        0x5at
        0x5bt
        0x12t
        0xbt
        0xdt
        0x5et
        0x7ft
        0x56t
    .end array-data

    nop

    :array_14
    .array-data 1
        0x44t
        0x4at
        0xat
        0x5t
        0x5et
        0x56t
        0x42t
        0x71t
        0x27t
    .end array-data

    nop

    :array_15
    .array-data 1
        0x15t
        0x59t
        0x40t
        0x5bt
        0x11t
        0x5et
        0x13t
        0x53t
        0x70t
        0x40t
        0xat
        0x44t
        0x16t
    .end array-data

    nop

    :array_16
    .array-data 1
        0x5at
        0x55t
        0x50t
        0x0t
        0x41t
        0x8t
        0x42t
        0x55t
        0x74t
        0x13t
        0x5at
        0x12t
        0x47t
    .end array-data

    nop

    :array_17
    .array-data 1
        0x11t
        0x14t
        0x5ct
        0x55t
        0x5et
        0x57t
        0x17t
        0x34t
        0x50t
        0x51t
        0x5ct
        0x5bt
        0x13t
        0x3t
        0x47t
    .end array-data

    :array_18
    .array-data 1
        0x72t
        0x67t
        0x7et
        0x31t
        0x30t
    .end array-data
.end method
