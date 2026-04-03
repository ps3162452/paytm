.class public interface abstract Landroidx/constraintlayout/core/motion/utils/TypedValues$OnSwipe;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/TypedValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnSwipe"
.end annotation


# static fields
.field public static final AUTOCOMPLETE_MODE:Ljava/lang/String;

.field public static final AUTOCOMPLETE_MODE_ENUM:[Ljava/lang/String;

.field public static final DRAG_DIRECTION:Ljava/lang/String;

.field public static final DRAG_SCALE:Ljava/lang/String;

.field public static final DRAG_THRESHOLD:Ljava/lang/String;

.field public static final LIMIT_BOUNDS_TO:Ljava/lang/String;

.field public static final MAX_ACCELERATION:Ljava/lang/String;

.field public static final MAX_VELOCITY:Ljava/lang/String;

.field public static final MOVE_WHEN_SCROLLAT_TOP:Ljava/lang/String;

.field public static final NESTED_SCROLL_FLAGS:Ljava/lang/String;

.field public static final NESTED_SCROLL_FLAGS_ENUM:[Ljava/lang/String;

.field public static final ON_TOUCH_UP:Ljava/lang/String;

.field public static final ON_TOUCH_UP_ENUM:[Ljava/lang/String;

.field public static final ROTATION_CENTER_ID:Ljava/lang/String;

.field public static final SPRINGS_TOP_THRESHOLD:Ljava/lang/String;

.field public static final SPRING_BOUNDARY:Ljava/lang/String;

.field public static final SPRING_BOUNDARY_ENUM:[Ljava/lang/String;

.field public static final SPRING_DAMPING:Ljava/lang/String;

.field public static final SPRING_MASS:Ljava/lang/String;

.field public static final SPRING_STIFFNESS:Ljava/lang/String;

.field public static final TOUCH_ANCHOR_ID:Ljava/lang/String;

.field public static final TOUCH_ANCHOR_SIDE:Ljava/lang/String;

.field public static final TOUCH_REGION_ID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x4

    const/16 v8, 0xd

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "17a059"

    invoke-static {v0, v1, v7, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$OnSwipe;->AUTOCOMPLETE_MODE:Ljava/lang/String;

    new-array v0, v8, [B

    fill-array-data v0, :array_1

    const-string v1, "fac662"

    invoke-static {v0, v1, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$OnSwipe;->DRAG_DIRECTION:Ljava/lang/String;

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "da7ab9"

    invoke-static {v0, v1, v7, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$OnSwipe;->DRAG_SCALE:Ljava/lang/String;

    new-array v0, v8, [B

    fill-array-data v0, :array_3

    const-string v1, "fd13e3"

    invoke-static {v0, v1, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$OnSwipe;->DRAG_THRESHOLD:Ljava/lang/String;

    new-array v0, v8, [B

    fill-array-data v0, :array_4

    const-string v1, "739b91"

    invoke-static {v0, v1, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$OnSwipe;->LIMIT_BOUNDS_TO:Ljava/lang/String;

    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    const-string v1, "d0dee8"

    const v2, -0x317fb0f2

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$OnSwipe;->MAX_ACCELERATION:Ljava/lang/String;

    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_6

    const-string v1, "cbc10b"

    const v2, -0x3104e72e

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$OnSwipe;->MAX_VELOCITY:Ljava/lang/String;

    const/16 v0, 0x13

    new-array v0, v0, [B

    fill-array-data v0, :array_7

    const-string v1, "6f8a43"

    const-wide v2, -0x3e59f7d708000000L    # -1.84816764E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$OnSwipe;->MOVE_WHEN_SCROLLAT_TOP:Ljava/lang/String;

    const/16 v0, 0x11

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    const-string v1, "961d2f"

    invoke-static {v0, v1, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$OnSwipe;->NESTED_SCROLL_FLAGS:Ljava/lang/String;

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_9

    const-string v1, "f21fce"

    const/16 v2, -0x33d9

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$OnSwipe;->ON_TOUCH_UP:Ljava/lang/String;

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    const-string v1, "e2d2f3"

    invoke-static {v0, v1, v7, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$OnSwipe;->ROTATION_CENTER_ID:Ljava/lang/String;

    const/16 v0, 0x13

    new-array v0, v0, [B

    fill-array-data v0, :array_b

    const-string v1, "a8703e"

    const-wide v2, 0x41d19a56e1800000L    # 1.18130983E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$OnSwipe;->SPRINGS_TOP_THRESHOLD:Ljava/lang/String;

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_c

    const-string v1, "c83882"

    const-wide/32 v2, 0x5e542772

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$OnSwipe;->SPRING_BOUNDARY:Ljava/lang/String;

    new-array v0, v8, [B

    fill-array-data v0, :array_d

    const-string v1, "6d0013"

    const/16 v2, 0x7acd

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$OnSwipe;->SPRING_DAMPING:Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_e

    const-string v1, "379cdb"

    invoke-static {v0, v1, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$OnSwipe;->SPRING_MASS:Ljava/lang/String;

    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_f

    const-string v1, "0d396e"

    const/16 v2, -0x1aae

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$OnSwipe;->SPRING_STIFFNESS:Ljava/lang/String;

    new-array v0, v8, [B

    fill-array-data v0, :array_10

    const-string v1, "80ed0e"

    const v2, -0x31afa30e

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$OnSwipe;->TOUCH_ANCHOR_ID:Ljava/lang/String;

    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_11

    const-string v1, "2989fe"

    const-wide/32 v2, 0x559f5472

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$OnSwipe;->TOUCH_ANCHOR_SIDE:Ljava/lang/String;

    new-array v0, v8, [B

    fill-array-data v0, :array_12

    const-string v1, "3ab6a2"

    const-wide/32 v2, -0x2287ef7c

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$OnSwipe;->TOUCH_REGION_ID:Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_13

    const-string v2, "fa0f4a"

    invoke-static {v1, v2, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const/16 v1, 0x13

    new-array v1, v1, [B

    fill-array-data v1, :array_14

    const-string v2, "dcf7bf"

    const v3, 0x4eb96f92

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const/16 v1, 0x11

    new-array v1, v1, [B

    fill-array-data v1, :array_15

    const-string v2, "393c6a"

    invoke-static {v1, v2, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    const/4 v1, 0x3

    new-array v2, v9, [B

    fill-array-data v2, :array_16

    const-string v3, "710659"

    const v4, 0x4ea95751

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v1, v1, [B

    fill-array-data v1, :array_17

    const-string v2, "236422"

    invoke-static {v1, v2, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    const/4 v1, 0x5

    const/16 v2, 0x15

    new-array v2, v2, [B

    fill-array-data v2, :array_18

    const-string v3, "29182f"

    const v4, -0x31ea2b64

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x14

    new-array v2, v2, [B

    fill-array-data v2, :array_19

    const-string v3, "0ad308"

    const-wide v4, -0x3e2176a7fb800000L    # -2.049269778E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x12

    new-array v2, v2, [B

    fill-array-data v2, :array_1a

    const-string v3, "44a3fb"

    const v4, -0x31543d23

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$OnSwipe;->ON_TOUCH_UP_ENUM:[Ljava/lang/String;

    new-array v0, v9, [Ljava/lang/String;

    const/16 v1, 0x9

    new-array v1, v1, [B

    fill-array-data v1, :array_1b

    const-string v2, "2ece29"

    const-wide v4, -0x3e242b2b35000000L    # -1.867731756E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const/16 v1, 0xb

    new-array v1, v1, [B

    fill-array-data v1, :array_1c

    const-string v2, "a4be36"

    const/16 v3, 0x488f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const/16 v1, 0x9

    new-array v1, v1, [B

    fill-array-data v1, :array_1d

    const-string v2, "56c50e"

    const-wide v4, 0x418b912488000000L    # 5.7812113E7

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    const/4 v1, 0x3

    const/16 v2, 0xa

    new-array v2, v2, [B

    fill-array-data v2, :array_1e

    const-string v3, "f25f61"

    invoke-static {v2, v3, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$OnSwipe;->SPRING_BOUNDARY_ENUM:[Ljava/lang/String;

    new-array v0, v10, [Ljava/lang/String;

    const/16 v1, 0x12

    new-array v1, v1, [B

    fill-array-data v1, :array_1f

    const-string v2, "664d5f"

    invoke-static {v1, v2, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v1, 0x6

    new-array v1, v1, [B

    fill-array-data v1, :array_20

    const-string v2, "487767"

    invoke-static {v1, v2, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$OnSwipe;->AUTOCOMPLETE_MODE_ENUM:[Ljava/lang/String;

    new-array v0, v9, [Ljava/lang/String;

    new-array v1, v9, [B

    fill-array-data v1, :array_21

    const-string v2, "5f2c27"

    invoke-static {v1, v2, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const/16 v1, 0x11

    new-array v1, v1, [B

    fill-array-data v1, :array_22

    const-string v2, "aca48a"

    invoke-static {v1, v2, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    new-array v1, v8, [B

    fill-array-data v1, :array_23

    const-string v2, "a38f19"

    const/16 v3, -0x2ae

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    const/4 v1, 0x3

    const/16 v2, 0xf

    new-array v2, v2, [B

    fill-array-data v2, :array_24

    const-string v3, "459b55"

    invoke-static {v2, v3, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$OnSwipe;->NESTED_SCROLL_FLAGS_ENUM:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x50t
        0x42t
        0x15t
        0x5ft
        0x56t
        0x56t
        0x5ct
        0x47t
        0xdt
        0x55t
        0x41t
        0x5ct
        0x5ct
        0x58t
        0x5t
        0x55t
    .end array-data

    :array_1
    .array-data 1
        0x2t
        0x13t
        0x2t
        0x51t
        0x52t
        0x5bt
        0x14t
        0x4t
        0x0t
        0x42t
        0x5ft
        0x5dt
        0x8t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x0t
        0x13t
        0x56t
        0x6t
        0x11t
        0x5at
        0x5t
        0xdt
        0x52t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x2t
        0x16t
        0x50t
        0x54t
        0x11t
        0x5bt
        0x14t
        0x1t
        0x42t
        0x5bt
        0xat
        0x5ft
        0x2t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x5bt
        0x5at
        0x54t
        0xbt
        0x4dt
        0x53t
        0x58t
        0x46t
        0x57t
        0x6t
        0x4at
        0x45t
        0x58t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x9t
        0x51t
        0x1ct
        0x4t
        0x6t
        0x5bt
        0x1t
        0x5ct
        0x1t
        0x17t
        0x4t
        0x4ct
        0xdt
        0x5ft
        0xat
    .end array-data

    :array_6
    .array-data 1
        0xet
        0x3t
        0x1bt
        0x47t
        0x55t
        0xet
        0xct
        0x1t
        0xat
        0x45t
        0x49t
    .end array-data

    :array_7
    .array-data 1
        0x5bt
        0x9t
        0x4et
        0x4t
        0x43t
        0x5bt
        0x53t
        0x8t
        0x4bt
        0x2t
        0x46t
        0x5ct
        0x5at
        0xat
        0x59t
        0x15t
        0x40t
        0x5ct
        0x46t
    .end array-data

    :array_8
    .array-data 1
        0x57t
        0x53t
        0x42t
        0x10t
        0x57t
        0x2t
        0x4at
        0x55t
        0x43t
        0xbt
        0x5et
        0xat
        0x5ft
        0x5at
        0x50t
        0x3t
        0x41t
    .end array-data

    nop

    :array_9
    .array-data 1
        0x9t
        0x5ct
        0x45t
        0x9t
        0x16t
        0x6t
        0xet
        0x47t
        0x41t
    .end array-data

    nop

    :array_a
    .array-data 1
        0x17t
        0x5dt
        0x10t
        0x53t
        0x12t
        0x5at
        0xat
        0x5ct
        0x7t
        0x57t
        0x8t
        0x47t
        0x0t
        0x40t
        0xdt
        0x56t
    .end array-data

    :array_b
    .array-data 1
        0x12t
        0x48t
        0x45t
        0x59t
        0x5dt
        0x2t
        0x12t
        0x4ct
        0x58t
        0x40t
        0x47t
        0xdt
        0x13t
        0x5dt
        0x44t
        0x58t
        0x5ct
        0x9t
        0x5t
    .end array-data

    :array_c
    .array-data 1
        0x10t
        0x48t
        0x41t
        0x51t
        0x56t
        0x55t
        0x1t
        0x57t
        0x46t
        0x56t
        0x5ct
        0x53t
        0x11t
        0x41t
    .end array-data

    nop

    :array_d
    .array-data 1
        0x45t
        0x14t
        0x42t
        0x59t
        0x5ft
        0x54t
        0x52t
        0x5t
        0x5dt
        0x40t
        0x58t
        0x5dt
        0x51t
    .end array-data

    nop

    :array_e
    .array-data 1
        0x40t
        0x47t
        0x4bt
        0xat
        0xat
        0x5t
        0x5et
        0x56t
        0x4at
        0x10t
    .end array-data

    nop

    :array_f
    .array-data 1
        0x43t
        0x14t
        0x41t
        0x50t
        0x58t
        0x2t
        0x43t
        0x10t
        0x5at
        0x5ft
        0x50t
        0xbt
        0x55t
        0x17t
        0x40t
    .end array-data

    :array_10
    .array-data 1
        0x4ct
        0x5ft
        0x10t
        0x7t
        0x58t
        0x4t
        0x56t
        0x53t
        0xdt
        0xbt
        0x42t
        0xct
        0x5ct
    .end array-data

    nop

    :array_11
    .array-data 1
        0x46t
        0x56t
        0x4dt
        0x5at
        0xet
        0x4t
        0x5ct
        0x5at
        0x50t
        0x56t
        0x14t
        0x16t
        0x5bt
        0x5dt
        0x5dt
    .end array-data

    :array_12
    .array-data 1
        0x47t
        0xet
        0x17t
        0x55t
        0x9t
        0x40t
        0x56t
        0x6t
        0xbt
        0x59t
        0xft
        0x5bt
        0x57t
    .end array-data

    nop

    :array_13
    .array-data 1
        0x7t
        0x14t
        0x44t
        0x9t
        0x77t
        0xet
        0xbt
        0x11t
        0x5ct
        0x3t
        0x40t
        0x4t
    .end array-data

    :array_14
    .array-data 1
        0x5t
        0x16t
        0x12t
        0x58t
        0x21t
        0x9t
        0x9t
        0x13t
        0xat
        0x52t
        0x16t
        0x3t
        0x30t
        0xct
        0x35t
        0x43t
        0x3t
        0x14t
        0x10t
    .end array-data

    :array_15
    .array-data 1
        0x52t
        0x4ct
        0x47t
        0xct
        0x75t
        0xet
        0x5et
        0x49t
        0x5ft
        0x6t
        0x42t
        0x4t
        0x67t
        0x56t
        0x76t
        0xdt
        0x52t
    .end array-data

    nop

    :array_16
    .array-data 1
        0x44t
        0x45t
        0x5ft
        0x46t
    .end array-data

    :array_17
    .array-data 1
        0x56t
        0x56t
        0x55t
        0x51t
        0x5et
        0x57t
        0x40t
        0x52t
        0x42t
        0x51t
    .end array-data

    nop

    :array_18
    .array-data 1
        0x56t
        0x5ct
        0x52t
        0x5dt
        0x5et
        0x3t
        0x40t
        0x58t
        0x45t
        0x5dt
        0x73t
        0x8t
        0x56t
        0x7at
        0x5et
        0x55t
        0x42t
        0xat
        0x57t
        0x4dt
        0x54t
    .end array-data

    nop

    :array_19
    .array-data 1
        0x5et
        0x4t
        0x12t
        0x56t
        0x42t
        0x7bt
        0x5ft
        0xct
        0x14t
        0x5ft
        0x55t
        0x4ct
        0x55t
        0x35t
        0xbt
        0x60t
        0x44t
        0x59t
        0x42t
        0x15t
    .end array-data

    :array_1a
    .array-data 1
        0x5at
        0x51t
        0x17t
        0x56t
        0x14t
        0x21t
        0x5bt
        0x59t
        0x11t
        0x5ft
        0x3t
        0x16t
        0x51t
        0x60t
        0xet
        0x76t
        0x8t
        0x6t
    .end array-data

    nop

    :array_1b
    .array-data 1
        0x5dt
        0x13t
        0x6t
        0x17t
        0x41t
        0x51t
        0x5dt
        0xat
        0x17t
    .end array-data

    nop

    :array_1c
    .array-data 1
        0x3t
        0x5bt
        0x17t
        0xbt
        0x50t
        0x53t
        0x32t
        0x40t
        0x3t
        0x17t
        0x47t
    .end array-data

    :array_1d
    .array-data 1
        0x57t
        0x59t
        0x16t
        0x5bt
        0x53t
        0x0t
        0x70t
        0x58t
        0x7t
    .end array-data

    nop

    :array_1e
    .array-data 1
        0x4t
        0x5dt
        0x40t
        0x8t
        0x55t
        0x54t
        0x24t
        0x5dt
        0x41t
        0xet
    .end array-data

    nop

    :array_1f
    .array-data 1
        0x55t
        0x59t
        0x5at
        0x10t
        0x5ct
        0x8t
        0x43t
        0x59t
        0x41t
        0x17t
        0x63t
        0x3t
        0x5at
        0x59t
        0x57t
        0xdt
        0x41t
        0x1ft
    .end array-data

    nop

    :array_20
    .array-data 1
        0x47t
        0x48t
        0x45t
        0x5et
        0x58t
        0x50t
    .end array-data

    nop

    :array_21
    .array-data 1
        0x5bt
        0x9t
        0x5ct
        0x6t
    .end array-data

    :array_22
    .array-data 1
        0x5t
        0xat
        0x12t
        0x55t
        0x5at
        0xdt
        0x4t
        0x33t
        0xet
        0x47t
        0x4ct
        0x32t
        0x2t
        0x11t
        0xet
        0x58t
        0x54t
    .end array-data

    nop

    :array_23
    .array-data 1
        0x5t
        0x5at
        0x4bt
        0x7t
        0x53t
        0x55t
        0x4t
        0x60t
        0x5bt
        0x14t
        0x5et
        0x55t
        0xdt
    .end array-data

    nop

    :array_24
    .array-data 1
        0x47t
        0x40t
        0x49t
        0x12t
        0x5at
        0x47t
        0x40t
        0x66t
        0x5at
        0x10t
        0x5at
        0x59t
        0x58t
        0x60t
        0x49t
    .end array-data
.end method
