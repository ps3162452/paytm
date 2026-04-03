.class public Landroidx/constraintlayout/motion/widget/DesignTool;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/constraintlayout/motion/widget/ProxyInterface;


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field static final allAttributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final allMargins:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mLastEndState:Ljava/lang/String;

.field private mLastEndStateId:I

.field private mLastStartState:Ljava/lang/String;

.field private mLastStartStateId:I

.field private final mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

.field private mSceneCache:Landroidx/constraintlayout/motion/widget/MotionScene;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/16 v14, 0x10

    const/16 v13, 0x1e

    const/16 v12, 0x1f

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "cc6c8c"

    invoke-static {v0, v1, v10, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/motion/widget/DesignTool;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/constraintlayout/motion/widget/DesignTool;->allAttributes:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroidx/constraintlayout/motion/widget/DesignTool;->allMargins:Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    const/16 v4, 0x22

    new-array v4, v4, [B

    fill-array-data v4, :array_1

    const-string v5, "3f0ef0"

    const/16 v6, 0x37f9

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    new-array v5, v12, [B

    fill-array-data v5, :array_2

    const-string v6, "d95308"

    const-wide v8, 0x417669b710000000L    # 2.3501681E7

    invoke-static {v5, v6, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    new-array v4, v12, [B

    fill-array-data v4, :array_3

    const-string v5, "89980d"

    const/16 v6, -0x52e3

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const/16 v3, 0x1c

    new-array v3, v3, [B

    fill-array-data v3, :array_4

    const-string v4, "606d89"

    const v5, -0x32d14ca6

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    const/16 v4, 0x20

    new-array v4, v4, [B

    fill-array-data v4, :array_5

    const-string v5, "6d86a2"

    invoke-static {v4, v5, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    new-array v5, v13, [B

    fill-array-data v5, :array_6

    const-string v6, "f4cddd"

    const-wide/32 v8, -0x78bc4205

    invoke-static {v5, v6, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    new-array v4, v13, [B

    fill-array-data v4, :array_7

    const-string v5, "d72a27"

    const-wide v6, 0x41d001820ac00000L    # 1.074137131E9

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const/16 v3, 0x1c

    new-array v3, v3, [B

    fill-array-data v3, :array_8

    const-string v4, "e34a1e"

    const-wide/32 v6, 0x4d041209

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    new-array v4, v13, [B

    fill-array-data v4, :array_9

    const-string v5, "7b6620"

    invoke-static {v4, v5, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    new-array v5, v12, [B

    fill-array-data v5, :array_a

    const-string v6, "ebe046"

    const-wide/32 v8, -0x59e6232b

    invoke-static {v5, v6, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    const/16 v5, 0x20

    new-array v5, v5, [B

    fill-array-data v5, :array_b

    const-string v6, "388bff"

    const-wide v8, 0x41d539d4fd400000L    # 1.424446453E9

    invoke-static {v5, v6, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    new-array v3, v12, [B

    fill-array-data v3, :array_c

    const-string v4, "43ee21"

    const-wide/32 v6, -0x63f43dd8

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const/16 v3, 0x26

    new-array v3, v3, [B

    fill-array-data v3, :array_d

    const-string v4, "4caf83"

    const-wide/32 v6, 0x4a8c7811

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x22

    new-array v0, v0, [B

    fill-array-data v0, :array_e

    const-string v2, "ec0f70"

    invoke-static {v0, v2, v10, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x13

    new-array v2, v2, [B

    fill-array-data v2, :array_f

    const-string v3, "6b98ab"

    invoke-static {v2, v3, v10, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v12, [B

    fill-array-data v0, :array_10

    const-string v2, "b15e38"

    invoke-static {v0, v2, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x13

    new-array v2, v2, [B

    fill-array-data v2, :array_11

    const-string v3, "f59f3a"

    const/16 v4, 0x7e4e

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v12, [B

    fill-array-data v0, :array_12

    const-string v2, "edfe93"

    const/16 v3, 0x37b0

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v14, [B

    fill-array-data v2, :array_13

    const-string v3, "9e55c8"

    const-wide/32 v4, -0x36fe8ad3

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x1c

    new-array v0, v0, [B

    fill-array-data v0, :array_14

    const-string v2, "a5b6d0"

    const v3, 0x4e37baa0    # 7.706153E8f

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    new-array v2, v14, [B

    fill-array-data v2, :array_15

    const-string v3, "e8e3f9"

    const/16 v4, 0x1c41

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_16

    const-string v2, "dc1565"

    const-wide/32 v4, 0x67ab2c84

    invoke-static {v0, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x12

    new-array v2, v2, [B

    fill-array-data v2, :array_17

    const-string v3, "e37c82"

    const-wide/32 v4, 0x926406a

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v13, [B

    fill-array-data v0, :array_18

    const-string v2, "82cbeb"

    invoke-static {v0, v2, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x12

    new-array v2, v2, [B

    fill-array-data v2, :array_19

    const-string v3, "6dd077"

    const-wide v4, -0x3e311c5e74800000L    # -1.036469015E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v13, [B

    fill-array-data v0, :array_1a

    const-string v2, "b88b86"

    invoke-static {v0, v2, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    new-array v2, v14, [B

    fill-array-data v2, :array_1b

    const-string v3, "909c2d"

    invoke-static {v2, v3, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x1c

    new-array v0, v0, [B

    fill-array-data v0, :array_1c

    const-string v2, "5af898"

    const-wide v4, -0x3e23cb306a400000L    # -1.892892247E9

    invoke-static {v0, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    new-array v2, v14, [B

    fill-array-data v2, :array_1d

    const-string v3, "5a495a"

    invoke-static {v2, v3, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v13, [B

    fill-array-data v0, :array_1e

    const-string v2, "3c6656"

    invoke-static {v0, v2, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x11

    new-array v2, v2, [B

    fill-array-data v2, :array_1f

    const-string v3, "0b93f5"

    const/16 v4, -0x3e21

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v12, [B

    fill-array-data v0, :array_20

    const-string v2, "eb8167"

    const/16 v3, 0x2453

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x11

    new-array v2, v2, [B

    fill-array-data v2, :array_21

    const-string v3, "a26ff0"

    invoke-static {v2, v3, v11, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_22

    const-string v2, "3926ed"

    invoke-static {v0, v2, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x12

    new-array v2, v2, [B

    fill-array-data v2, :array_23

    const-string v3, "491617"

    const/16 v4, 0x3096

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v12, [B

    fill-array-data v0, :array_24

    const-string v2, "7da95c"

    const v3, 0x4e799df0

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x12

    new-array v2, v2, [B

    fill-array-data v2, :array_25

    const-string v3, "b6dc6b"

    const-wide/32 v4, 0x47dc0cd5

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :array_0
    .array-data 1
        0x27t
        0x6t
        0x45t
        0xat
        0x5ft
        0xdt
        0x37t
        0xct
        0x59t
        0xft
    .end array-data

    nop

    :array_1
    .array-data 1
        0x5ft
        0x7t
        0x49t
        0xat
        0x13t
        0x44t
        0x6ct
        0x5t
        0x5ft
        0xbt
        0x15t
        0x44t
        0x41t
        0x7t
        0x59t
        0xbt
        0x12t
        0x72t
        0x5ct
        0x12t
        0x44t
        0xat
        0xbt
        0x6ft
        0x47t
        0x9t
        0x72t
        0xat
        0x12t
        0x44t
        0x5ct
        0xbt
        0x7ft
        0x3t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x8t
        0x58t
        0x4ct
        0x5ct
        0x45t
        0x4ct
        0x3bt
        0x5at
        0x5at
        0x5dt
        0x43t
        0x4ct
        0x16t
        0x58t
        0x5ct
        0x5dt
        0x44t
        0x7at
        0xbt
        0x4dt
        0x41t
        0x5ct
        0x5dt
        0x67t
        0x10t
        0x56t
        0x61t
        0x5ct
        0x40t
        0x77t
        0x2t
    .end array-data

    :array_3
    .array-data 1
        0x54t
        0x58t
        0x40t
        0x57t
        0x45t
        0x10t
        0x67t
        0x5at
        0x56t
        0x56t
        0x43t
        0x10t
        0x4at
        0x58t
        0x50t
        0x56t
        0x44t
        0x30t
        0x57t
        0x49t
        0x66t
        0x4ct
        0x5ft
        0x26t
        0x57t
        0x4dt
        0x4dt
        0x57t
        0x5dt
        0x2bt
        0x5et
    .end array-data

    :array_4
    .array-data 1
        0x5at
        0x51t
        0x4ft
        0xbt
        0x4dt
        0x4dt
        0x69t
        0x53t
        0x59t
        0xat
        0x4bt
        0x4dt
        0x44t
        0x51t
        0x5ft
        0xat
        0x4ct
        0x6dt
        0x59t
        0x40t
        0x69t
        0x10t
        0x57t
        0x6dt
        0x59t
        0x40t
        0x79t
        0x2t
    .end array-data

    :array_5
    .array-data 1
        0x5at
        0x5t
        0x41t
        0x59t
        0x14t
        0x46t
        0x69t
        0x7t
        0x57t
        0x58t
        0x12t
        0x46t
        0x44t
        0x5t
        0x51t
        0x58t
        0x15t
        0x61t
        0x42t
        0x5t
        0x4at
        0x42t
        0x3et
        0x46t
        0x59t
        0x37t
        0x4ct
        0x57t
        0x13t
        0x46t
        0x79t
        0x2t
    .end array-data

    :array_6
    .array-data 1
        0xat
        0x55t
        0x1at
        0xbt
        0x11t
        0x10t
        0x39t
        0x57t
        0xct
        0xat
        0x17t
        0x10t
        0x14t
        0x55t
        0xat
        0xat
        0x10t
        0x37t
        0x12t
        0x55t
        0x11t
        0x10t
        0x3bt
        0x10t
        0x9t
        0x71t
        0xdt
        0x0t
        0x2bt
        0x2t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x8t
        0x56t
        0x4bt
        0xet
        0x47t
        0x43t
        0x3bt
        0x54t
        0x5dt
        0xft
        0x41t
        0x43t
        0x16t
        0x56t
        0x5bt
        0xft
        0x46t
        0x72t
        0xat
        0x53t
        0x6dt
        0x15t
        0x5dt
        0x64t
        0x10t
        0x56t
        0x40t
        0x15t
        0x7dt
        0x51t
    .end array-data

    nop

    :array_8
    .array-data 1
        0x9t
        0x52t
        0x4dt
        0xet
        0x44t
        0x11t
        0x3at
        0x50t
        0x5bt
        0xft
        0x42t
        0x11t
        0x17t
        0x52t
        0x5dt
        0xft
        0x45t
        0x20t
        0xbt
        0x57t
        0x6bt
        0x15t
        0x5et
        0x20t
        0xbt
        0x57t
        0x7bt
        0x7t
    .end array-data

    :array_9
    .array-data 1
        0x5bt
        0x3t
        0x4ft
        0x59t
        0x47t
        0x44t
        0x68t
        0x1t
        0x59t
        0x58t
        0x41t
        0x44t
        0x45t
        0x3t
        0x5ft
        0x58t
        0x46t
        0x7ct
        0x52t
        0x4t
        0x42t
        0x69t
        0x46t
        0x5ft
        0x7bt
        0x7t
        0x50t
        0x42t
        0x7dt
        0x56t
    .end array-data

    nop

    :array_a
    .array-data 1
        0x9t
        0x3t
        0x1ct
        0x5ft
        0x41t
        0x42t
        0x3at
        0x1t
        0xat
        0x5et
        0x47t
        0x42t
        0x17t
        0x3t
        0xct
        0x5et
        0x40t
        0x7at
        0x0t
        0x4t
        0x11t
        0x6ft
        0x40t
        0x59t
        0x37t
        0xbt
        0x2t
        0x58t
        0x40t
        0x79t
        0x3t
    .end array-data

    :array_b
    .array-data 1
        0x5ft
        0x59t
        0x41t
        0xdt
        0x13t
        0x12t
        0x6ct
        0x5bt
        0x57t
        0xct
        0x15t
        0x12t
        0x41t
        0x59t
        0x51t
        0xct
        0x12t
        0x34t
        0x5at
        0x5ft
        0x50t
        0x16t
        0x39t
        0x12t
        0x5ct
        0x6at
        0x51t
        0x5t
        0xet
        0x12t
        0x7ct
        0x5et
    .end array-data

    :array_c
    .array-data 1
        0x58t
        0x52t
        0x1ct
        0xat
        0x47t
        0x45t
        0x6bt
        0x50t
        0xat
        0xbt
        0x41t
        0x45t
        0x46t
        0x52t
        0xct
        0xbt
        0x46t
        0x63t
        0x5dt
        0x54t
        0xdt
        0x11t
        0x6dt
        0x45t
        0x5bt
        0x7ft
        0x0t
        0x3t
        0x46t
        0x7et
        0x52t
    .end array-data

    :array_d
    .array-data 1
        0x58t
        0x2t
        0x18t
        0x9t
        0x4dt
        0x47t
        0x6bt
        0x0t
        0xet
        0x8t
        0x4bt
        0x47t
        0x46t
        0x2t
        0x8t
        0x8t
        0x4ct
        0x71t
        0x55t
        0x10t
        0x4t
        0xat
        0x51t
        0x5dt
        0x51t
        0x3ct
        0x15t
        0x9t
        0x7at
        0x52t
        0x47t
        0x6t
        0xdt
        0xft
        0x56t
        0x56t
        0x7bt
        0x5t
    .end array-data

    nop

    :array_e
    .array-data 1
        0x9t
        0x2t
        0x49t
        0x9t
        0x42t
        0x44t
        0x3at
        0x0t
        0x5ft
        0x8t
        0x44t
        0x44t
        0x17t
        0x2t
        0x59t
        0x8t
        0x43t
        0x72t
        0xat
        0x17t
        0x44t
        0x9t
        0x5at
        0x6ft
        0x11t
        0xct
        0x72t
        0x9t
        0x43t
        0x44t
        0xat
        0xet
        0x7ft
        0x0t
    .end array-data

    nop

    :array_f
    .array-data 1
        0x5at
        0x3t
        0x40t
        0x57t
        0x14t
        0x16t
        0x69t
        0xft
        0x58t
        0x4at
        0x6t
        0xbt
        0x58t
        0x20t
        0x56t
        0x4ct
        0x15t
        0xdt
        0x5bt
    .end array-data

    :array_10
    .array-data 1
        0xet
        0x50t
        0x4ct
        0xat
        0x46t
        0x4ct
        0x3dt
        0x52t
        0x5at
        0xbt
        0x40t
        0x4ct
        0x10t
        0x50t
        0x5ct
        0xbt
        0x47t
        0x7at
        0xdt
        0x45t
        0x41t
        0xat
        0x5et
        0x67t
        0x16t
        0x5et
        0x61t
        0xat
        0x43t
        0x77t
        0x4t
    .end array-data

    :array_11
    .array-data 1
        0xat
        0x54t
        0x40t
        0x9t
        0x46t
        0x15t
        0x39t
        0x58t
        0x58t
        0x14t
        0x54t
        0x8t
        0x8t
        0x77t
        0x56t
        0x12t
        0x47t
        0xet
        0xbt
    .end array-data

    :array_12
    .array-data 1
        0x9t
        0x5t
        0x1ft
        0xat
        0x4ct
        0x47t
        0x3at
        0x7t
        0x9t
        0xbt
        0x4at
        0x47t
        0x17t
        0x5t
        0xft
        0xbt
        0x4dt
        0x67t
        0xat
        0x14t
        0x39t
        0x11t
        0x56t
        0x71t
        0xat
        0x10t
        0x12t
        0xat
        0x54t
        0x7ct
        0x3t
    .end array-data

    :array_13
    .array-data 1
        0x55t
        0x4t
        0x4ct
        0x5at
        0x16t
        0x4ct
        0x66t
        0x8t
        0x54t
        0x47t
        0x4t
        0x51t
        0x57t
        0x31t
        0x5at
        0x45t
    .end array-data

    :array_14
    .array-data 1
        0xdt
        0x54t
        0x1bt
        0x59t
        0x11t
        0x44t
        0x3et
        0x56t
        0xdt
        0x58t
        0x17t
        0x44t
        0x13t
        0x54t
        0xbt
        0x58t
        0x10t
        0x64t
        0xet
        0x45t
        0x3dt
        0x42t
        0xbt
        0x64t
        0xet
        0x45t
        0x2dt
        0x50t
    .end array-data

    :array_15
    .array-data 1
        0x9t
        0x59t
        0x1ct
        0x5ct
        0x13t
        0x4dt
        0x3at
        0x55t
        0x4t
        0x41t
        0x1t
        0x50t
        0xbt
        0x6ct
        0xat
        0x43t
    .end array-data

    :array_16
    .array-data 1
        0x8t
        0x2t
        0x48t
        0x5at
        0x43t
        0x41t
        0x3bt
        0x0t
        0x5et
        0x5bt
        0x45t
        0x41t
        0x16t
        0x2t
        0x58t
        0x5bt
        0x42t
        0x66t
        0x10t
        0x2t
        0x43t
        0x41t
        0x69t
        0x41t
        0xbt
        0x30t
        0x45t
        0x54t
        0x44t
        0x41t
        0x2bt
        0x5t
    .end array-data

    :array_17
    .array-data 1
        0x9t
        0x52t
        0x4et
        0xct
        0x4dt
        0x46t
        0x3at
        0x5et
        0x56t
        0x11t
        0x5ft
        0x5bt
        0xbt
        0x60t
        0x43t
        0x2t
        0x4at
        0x46t
    .end array-data

    nop

    :array_18
    .array-data 1
        0x54t
        0x53t
        0x1at
        0xdt
        0x10t
        0x16t
        0x67t
        0x51t
        0xct
        0xct
        0x16t
        0x16t
        0x4at
        0x53t
        0xat
        0xct
        0x11t
        0x31t
        0x4ct
        0x53t
        0x11t
        0x16t
        0x3at
        0x16t
        0x57t
        0x77t
        0xdt
        0x6t
        0x2at
        0x4t
    .end array-data

    nop

    :array_19
    .array-data 1
        0x5at
        0x5t
        0x1dt
        0x5ft
        0x42t
        0x43t
        0x69t
        0x9t
        0x5t
        0x42t
        0x50t
        0x5et
        0x58t
        0x37t
        0x10t
        0x51t
        0x45t
        0x43t
    .end array-data

    nop

    :array_1a
    .array-data 1
        0xet
        0x59t
        0x41t
        0xdt
        0x4dt
        0x42t
        0x3dt
        0x5bt
        0x57t
        0xct
        0x4bt
        0x42t
        0x10t
        0x59t
        0x51t
        0xct
        0x4ct
        0x73t
        0xct
        0x5ct
        0x67t
        0x16t
        0x57t
        0x65t
        0x16t
        0x59t
        0x4at
        0x16t
        0x77t
        0x50t
    .end array-data

    nop

    :array_1b
    .array-data 1
        0x55t
        0x51t
        0x40t
        0xct
        0x47t
        0x10t
        0x66t
        0x5dt
        0x58t
        0x11t
        0x55t
        0xdt
        0x57t
        0x75t
        0x57t
        0x7t
    .end array-data

    :array_1c
    .array-data 1
        0x59t
        0x0t
        0x1ft
        0x57t
        0x4ct
        0x4ct
        0x6at
        0x2t
        0x9t
        0x56t
        0x4at
        0x4ct
        0x47t
        0x0t
        0xft
        0x56t
        0x4dt
        0x7dt
        0x5bt
        0x5t
        0x39t
        0x4ct
        0x56t
        0x7dt
        0x5bt
        0x5t
        0x29t
        0x5et
    .end array-data

    :array_1d
    .array-data 1
        0x59t
        0x0t
        0x4dt
        0x56t
        0x40t
        0x15t
        0x6at
        0xct
        0x55t
        0x4bt
        0x52t
        0x8t
        0x5bt
        0x24t
        0x5at
        0x5dt
    .end array-data

    :array_1e
    .array-data 1
        0x5ft
        0x2t
        0x4ft
        0x59t
        0x40t
        0x42t
        0x6ct
        0x0t
        0x59t
        0x58t
        0x46t
        0x42t
        0x41t
        0x2t
        0x5ft
        0x58t
        0x41t
        0x7at
        0x56t
        0x5t
        0x42t
        0x69t
        0x41t
        0x59t
        0x7ft
        0x6t
        0x50t
        0x42t
        0x7at
        0x50t
    .end array-data

    nop

    :array_1f
    .array-data 1
        0x5ct
        0x3t
        0x40t
        0x5ct
        0x13t
        0x41t
        0x6ft
        0xft
        0x58t
        0x41t
        0x1t
        0x5ct
        0x5et
        0x2et
        0x5ct
        0x55t
        0x12t
    .end array-data

    nop

    :array_20
    .array-data 1
        0x9t
        0x3t
        0x41t
        0x5et
        0x43t
        0x43t
        0x3at
        0x1t
        0x57t
        0x5ft
        0x45t
        0x43t
        0x17t
        0x3t
        0x51t
        0x5ft
        0x42t
        0x7bt
        0x0t
        0x4t
        0x4ct
        0x6et
        0x42t
        0x58t
        0x37t
        0xbt
        0x5ft
        0x59t
        0x42t
        0x78t
        0x3t
    .end array-data

    :array_21
    .array-data 1
        0xdt
        0x53t
        0x4ft
        0x9t
        0x13t
        0x44t
        0x3et
        0x5ft
        0x57t
        0x14t
        0x1t
        0x59t
        0xft
        0x7et
        0x53t
        0x0t
        0x12t
    .end array-data

    nop

    :array_22
    .array-data 1
        0x5ft
        0x58t
        0x4bt
        0x59t
        0x10t
        0x10t
        0x6ct
        0x5at
        0x5dt
        0x58t
        0x16t
        0x10t
        0x41t
        0x58t
        0x5bt
        0x58t
        0x11t
        0x36t
        0x5at
        0x5et
        0x5at
        0x42t
        0x3at
        0x10t
        0x5ct
        0x6bt
        0x5bt
        0x51t
        0xdt
        0x10t
        0x7ct
        0x5ft
    .end array-data

    :array_23
    .array-data 1
        0x58t
        0x58t
        0x48t
        0x59t
        0x44t
        0x43t
        0x6bt
        0x54t
        0x50t
        0x44t
        0x56t
        0x5et
        0x5at
        0x6bt
        0x58t
        0x51t
        0x59t
        0x43t
    .end array-data

    nop

    :array_24
    .array-data 1
        0x5bt
        0x5t
        0x18t
        0x56t
        0x40t
        0x17t
        0x68t
        0x7t
        0xet
        0x57t
        0x46t
        0x17t
        0x45t
        0x5t
        0x8t
        0x57t
        0x41t
        0x31t
        0x5et
        0x3t
        0x9t
        0x4dt
        0x6at
        0x17t
        0x58t
        0x28t
        0x4t
        0x5ft
        0x41t
        0x2ct
        0x51t
    .end array-data

    :array_25
    .array-data 1
        0xet
        0x57t
        0x1dt
        0xct
        0x43t
        0x16t
        0x3dt
        0x5bt
        0x5t
        0x11t
        0x51t
        0xbt
        0xct
        0x64t
        0xdt
        0x4t
        0x5et
        0x16t
    .end array-data
.end method

.method public constructor <init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mLastStartState:Ljava/lang/String;

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mLastEndState:Ljava/lang/String;

    iput v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mLastStartStateId:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mLastEndStateId:I

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    return-void
.end method

.method private static Connect(ILandroidx/constraintlayout/widget/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/constraintlayout/widget/ConstraintSet;",
            "Landroid/view/View;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    sget-object v0, Landroidx/constraintlayout/motion/widget/DesignTool;->allAttributes:Ljava/util/HashMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    const/4 v5, 0x0

    sget-object v2, Landroidx/constraintlayout/motion/widget/DesignTool;->allMargins:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Landroidx/constraintlayout/motion/widget/DesignTool;->GetPxFromDp(ILjava/lang/String;)I

    move-result v5

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v1

    move-object v0, p1

    move v2, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    :cond_1
    return-void
.end method

.method private static GetPxFromDp(ILjava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x64

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/2addr v0, p0

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method private static SetAbsolutePositions(ILandroidx/constraintlayout/widget/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/constraintlayout/widget/ConstraintSet;",
            "Landroid/view/View;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/16 v4, 0x17

    new-array v0, v4, [B

    fill-array-data v0, :array_0

    const-string v1, "ce19b2"

    const-wide v2, -0x3e6bde7c1c000000L    # -8.4435193E7

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {p0, v0}, Landroidx/constraintlayout/motion/widget/DesignTool;->GetPxFromDp(ILjava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->setEditorAbsoluteX(II)V

    :cond_0
    new-array v0, v4, [B

    fill-array-data v0, :array_1

    const-string v1, "5b1cfa"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {p0, v0}, Landroidx/constraintlayout/motion/widget/DesignTool;->GetPxFromDp(ILjava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->setEditorAbsoluteY(II)V

    :cond_1
    return-void

    nop

    :array_0
    .array-data 1
        0xft
        0x4t
        0x48t
        0x56t
        0x17t
        0x46t
        0x3ct
        0x0t
        0x55t
        0x50t
        0x16t
        0x5dt
        0x11t
        0x3at
        0x50t
        0x5bt
        0x11t
        0x5dt
        0xft
        0x10t
        0x45t
        0x5ct
        0x3at
    .end array-data

    :array_1
    .array-data 1
        0x59t
        0x3t
        0x48t
        0xct
        0x13t
        0x15t
        0x6at
        0x7t
        0x55t
        0xat
        0x12t
        0xet
        0x47t
        0x3dt
        0x50t
        0x1t
        0x15t
        0xet
        0x59t
        0x17t
        0x45t
        0x6t
        0x3ft
    .end array-data
.end method

.method private static SetBias(Landroidx/constraintlayout/widget/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/widget/ConstraintSet;",
            "Landroid/view/View;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const/4 v3, 0x1

    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "ffc100"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    if-ne p3, v3, :cond_0

    const/16 v0, 0x1e

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "76b3dd"

    const v2, -0x317faace

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    if-nez p3, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->setHorizontalBias(IF)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-ne p3, v3, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->setVerticalBias(IF)V

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0xat
        0x7t
        0x1at
        0x5et
        0x45t
        0x44t
        0x39t
        0x5t
        0xct
        0x5ft
        0x43t
        0x44t
        0x14t
        0x7t
        0xat
        0x5ft
        0x44t
        0x78t
        0x9t
        0x14t
        0xat
        0x4bt
        0x5ft
        0x5et
        0x12t
        0x7t
        0xft
        0x6et
        0x52t
        0x59t
        0x7t
        0x15t
    .end array-data

    :array_1
    .array-data 1
        0x5bt
        0x57t
        0x1bt
        0x5ct
        0x11t
        0x10t
        0x68t
        0x55t
        0xdt
        0x5dt
        0x17t
        0x10t
        0x45t
        0x57t
        0xbt
        0x5dt
        0x10t
        0x32t
        0x52t
        0x44t
        0x16t
        0x5at
        0x7t
        0x5t
        0x5bt
        0x69t
        0x0t
        0x5at
        0x5t
        0x17t
    .end array-data
.end method

.method private static SetDimensions(ILandroidx/constraintlayout/widget/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/constraintlayout/widget/ConstraintSet;",
            "Landroid/view/View;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const/16 v4, 0xc

    new-array v0, v4, [B

    fill-array-data v0, :array_0

    const-string v1, "61e3a7"

    const-wide/32 v2, 0x66ceca5d

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p4, v1, :cond_0

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "8d7e7d"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v1, -0x2

    new-array v2, v4, [B

    fill-array-data v2, :array_2

    const-string v3, "dc742b"

    const/16 v4, 0x7731

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {p0, v0}, Landroidx/constraintlayout/motion/widget/DesignTool;->GetPxFromDp(ILjava/lang/String;)I

    move-result v0

    :goto_0
    if-nez p4, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p1, v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p1, v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x5at
        0x50t
        0x1ct
        0x5ct
        0x14t
        0x43t
        0x69t
        0x46t
        0xct
        0x57t
        0x15t
        0x5ft
    .end array-data

    :array_1
    .array-data 1
        0x54t
        0x5t
        0x4et
        0xat
        0x42t
        0x10t
        0x67t
        0xct
        0x52t
        0xct
        0x50t
        0xct
        0x4ct
    .end array-data

    nop

    :array_2
    .array-data 1
        0x13t
        0x11t
        0x56t
        0x44t
        0x6dt
        0x1t
        0xbt
        0xdt
        0x43t
        0x51t
        0x5ct
        0x16t
    .end array-data
.end method


# virtual methods
.method public designAccess(ILjava/lang/String;Ljava/lang/Object;[FI[FI)I
    .locals 4

    const/4 v3, 0x0

    const/4 v1, -0x1

    check-cast p3, Landroid/view/View;

    if-eqz p1, :cond_3

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    if-eqz p3, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionController;

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move-object v2, v0

    :goto_1
    packed-switch p1, :pswitch_data_0

    move v0, v1

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getDuration()I

    move-result v0

    div-int/lit8 v0, v0, 0x10

    invoke-virtual {v2, p2, p6, p7}, Landroidx/constraintlayout/motion/widget/MotionController;->getAttributeValues(Ljava/lang/String;[FI)I

    move-result v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getDuration()I

    move-result v0

    div-int/lit8 v0, v0, 0x10

    invoke-virtual {v2, p6, v3}, Landroidx/constraintlayout/motion/widget/MotionController;->buildKeyFrames([F[I)I

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getDuration()I

    move-result v0

    div-int/lit8 v0, v0, 0x10

    invoke-virtual {v2, p6, v0}, Landroidx/constraintlayout/motion/widget/MotionController;->buildPath([FI)V

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move-object v2, v3

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public disableAutoTransition(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->disableAutoTransition(Z)V

    return-void
.end method

.method public dumpConstraintSet(Ljava/lang/String;)V
    .locals 8

    const/4 v5, 0x0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mSceneCache:Landroidx/constraintlayout/motion/widget/MotionScene;

    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->lookUpConstraintId(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x18

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v3, 0xa

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "c4dc5e"

    const-wide v6, 0x41b60b92f0000000L    # 3.69857264E8

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "9a6148"

    const-wide v6, -0x3e2a1581ed800000L    # -1.470756938E9

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    new-array v3, v3, [B

    const/16 v4, 0x4d

    aput-byte v4, v3, v5

    const-string v4, "d86706"

    invoke-static {v3, v4, v5, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    const/4 v2, 0x0

    new-array v2, v2, [I

    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->dump(Landroidx/constraintlayout/motion/widget/MotionScene;[I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :array_0
    .array-data 1
        0x43t
        0x50t
        0x11t
        0xet
        0x45t
        0xct
        0xdt
        0x53t
        0x44t
        0x43t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x19t
        0x49t
    .end array-data
.end method

.method public getAnimationKeyFrames(Ljava/lang/Object;[F)I
    .locals 3

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getDuration()I

    move-result v0

    div-int/lit8 v1, v0, 0x10

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionController;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroidx/constraintlayout/motion/widget/MotionController;->buildKeyFrames([F[I)I

    move v0, v1

    goto :goto_0
.end method

.method public getAnimationPath(Ljava/lang/Object;[FI)I
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v0, :cond_0

    const/4 p3, -0x1

    :goto_0
    return p3

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionController;

    if-nez v0, :cond_1

    const/4 p3, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p2, p3}, Landroidx/constraintlayout/motion/widget/MotionController;->buildPath([FI)V

    goto :goto_0
.end method

.method public getAnimationRectangles(Ljava/lang/Object;[F)V
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getDuration()I

    move-result v0

    div-int/lit8 v1, v0, 0x10

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionController;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, v1}, Landroidx/constraintlayout/motion/widget/MotionController;->buildRectangles([FI)V

    goto :goto_0
.end method

.method public getEndState()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getEndState()I

    move-result v1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mLastEndStateId:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mLastEndState:Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSetNames(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mLastEndState:Ljava/lang/String;

    iput v1, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mLastEndStateId:I

    goto :goto_0
.end method

.method public getKeyFrameInfo(Ljava/lang/Object;I[I)I
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionController;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, p2, p3}, Landroidx/constraintlayout/motion/widget/MotionController;->getKeyFrameInfo(I[I)I

    move-result v0

    goto :goto_0
.end method

.method public getKeyFramePosition(Ljava/lang/Object;IFF)F
    .locals 2

    const/4 v1, 0x0

    instance-of v0, p1, Landroid/view/View;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionController;

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p2, p3, p4}, Landroidx/constraintlayout/motion/widget/MotionController;->getKeyFrameParameter(IFF)F

    move-result v0

    goto :goto_0
.end method

.method public getKeyFramePositions(Ljava/lang/Object;[I[F)I
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionController;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, p2, p3}, Landroidx/constraintlayout/motion/widget/MotionController;->getKeyFramePositions([I[F)I

    move-result v0

    goto :goto_0
.end method

.method public getKeyframe(III)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Landroidx/constraintlayout/motion/widget/MotionScene;->getKeyFrame(Landroid/content/Context;III)Landroidx/constraintlayout/motion/widget/Key;

    move-result-object v0

    goto :goto_0
.end method

.method public getKeyframe(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p2, v0, p3}, Landroidx/constraintlayout/motion/widget/MotionScene;->getKeyFrame(Landroid/content/Context;III)Landroidx/constraintlayout/motion/widget/Key;

    move-result-object v0

    goto :goto_0
.end method

.method public getKeyframeAtLocation(Ljava/lang/Object;FF)Ljava/lang/Object;
    .locals 3

    const/4 v1, 0x0

    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionController;

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    invoke-virtual {v0, v2, v1, p2, p3}, Landroidx/constraintlayout/motion/widget/MotionController;->getPositionKeyframe(IIFF)Landroidx/constraintlayout/motion/widget/KeyPositionBase;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public getPositionKeyframe(Ljava/lang/Object;Ljava/lang/Object;FF[Ljava/lang/String;[F)Ljava/lang/Boolean;
    .locals 8

    const/4 v7, 0x1

    instance-of v0, p1, Landroidx/constraintlayout/motion/widget/KeyPositionBase;

    if-eqz v0, :cond_0

    move-object v2, p1

    check-cast v2, Landroidx/constraintlayout/motion/widget/KeyPositionBase;

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    move-object v0, p2

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionController;

    move-object v1, p2

    check-cast v1, Landroid/view/View;

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/motion/widget/MotionController;->positionKeyframe(Landroid/view/View;Landroidx/constraintlayout/motion/widget/KeyPositionBase;FF[Ljava/lang/String;[F)V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->rebuildScene()V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public getProgress()F
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v0

    return v0
.end method

.method public getStartState()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getStartState()I

    move-result v0

    iget v1, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mLastStartStateId:I

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mLastStartState:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSetNames(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mLastStartState:Ljava/lang/String;

    iput v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mLastStartStateId:I

    :cond_1
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSetNames(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getState()Ljava/lang/String;
    .locals 3

    const v2, 0x3c23d70a    # 0.01f

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mLastStartState:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mLastEndState:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/DesignTool;->getProgress()F

    move-result v0

    cmpg-float v1, v0, v2

    if-gtz v1, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mLastStartState:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mLastEndState:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mLastStartState:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTransitionTimeMs()J
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getTransitionTimeMs()J

    move-result-wide v0

    return-wide v0
.end method

.method public isInTransition()Z
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mLastStartState:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mLastEndState:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAttributes(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    move-object v2, p3

    check-cast v2, Landroid/view/View;

    move-object v3, p4

    check-cast v3, Ljava/util/HashMap;

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->lookUpConstraintId(Ljava/lang/String;)I

    move-result v6

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v0, v6}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(I)V

    const/4 v0, 0x0

    invoke-static {p1, v1, v2, v3, v0}, Landroidx/constraintlayout/motion/widget/DesignTool;->SetDimensions(ILandroidx/constraintlayout/widget/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;I)V

    const/4 v0, 0x1

    invoke-static {p1, v1, v2, v3, v0}, Landroidx/constraintlayout/motion/widget/DesignTool;->SetDimensions(ILandroidx/constraintlayout/widget/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;I)V

    const/4 v4, 0x6

    const/4 v5, 0x6

    move v0, p1

    invoke-static/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/DesignTool;->Connect(ILandroidx/constraintlayout/widget/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;II)V

    const/4 v4, 0x6

    const/4 v5, 0x7

    move v0, p1

    invoke-static/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/DesignTool;->Connect(ILandroidx/constraintlayout/widget/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;II)V

    const/4 v4, 0x7

    const/4 v5, 0x7

    move v0, p1

    invoke-static/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/DesignTool;->Connect(ILandroidx/constraintlayout/widget/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;II)V

    const/4 v4, 0x7

    const/4 v5, 0x6

    move v0, p1

    invoke-static/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/DesignTool;->Connect(ILandroidx/constraintlayout/widget/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;II)V

    const/4 v4, 0x1

    const/4 v5, 0x1

    move v0, p1

    invoke-static/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/DesignTool;->Connect(ILandroidx/constraintlayout/widget/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;II)V

    const/4 v4, 0x1

    const/4 v5, 0x2

    move v0, p1

    invoke-static/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/DesignTool;->Connect(ILandroidx/constraintlayout/widget/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;II)V

    const/4 v4, 0x2

    const/4 v5, 0x2

    move v0, p1

    invoke-static/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/DesignTool;->Connect(ILandroidx/constraintlayout/widget/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;II)V

    const/4 v4, 0x2

    const/4 v5, 0x1

    move v0, p1

    invoke-static/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/DesignTool;->Connect(ILandroidx/constraintlayout/widget/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;II)V

    const/4 v4, 0x3

    const/4 v5, 0x3

    move v0, p1

    invoke-static/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/DesignTool;->Connect(ILandroidx/constraintlayout/widget/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;II)V

    const/4 v4, 0x3

    const/4 v5, 0x4

    move v0, p1

    invoke-static/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/DesignTool;->Connect(ILandroidx/constraintlayout/widget/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;II)V

    const/4 v4, 0x4

    const/4 v5, 0x3

    move v0, p1

    invoke-static/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/DesignTool;->Connect(ILandroidx/constraintlayout/widget/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;II)V

    const/4 v4, 0x4

    const/4 v5, 0x4

    move v0, p1

    invoke-static/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/DesignTool;->Connect(ILandroidx/constraintlayout/widget/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;II)V

    const/4 v4, 0x5

    const/4 v5, 0x5

    move v0, p1

    invoke-static/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/DesignTool;->Connect(ILandroidx/constraintlayout/widget/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;II)V

    const/4 v0, 0x0

    invoke-static {v1, v2, v3, v0}, Landroidx/constraintlayout/motion/widget/DesignTool;->SetBias(Landroidx/constraintlayout/widget/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;I)V

    const/4 v0, 0x1

    invoke-static {v1, v2, v3, v0}, Landroidx/constraintlayout/motion/widget/DesignTool;->SetBias(Landroidx/constraintlayout/widget/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;I)V

    invoke-static {p1, v1, v2, v3}, Landroidx/constraintlayout/motion/widget/DesignTool;->SetAbsolutePositions(ILandroidx/constraintlayout/widget/ConstraintSet;Landroid/view/View;Ljava/util/HashMap;)V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0, v6, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->updateState(ILandroidx/constraintlayout/widget/ConstraintSet;)V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    goto :goto_0
.end method

.method public setKeyFrame(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/constraintlayout/motion/widget/MotionScene;->setKeyframe(Landroid/view/View;ILjava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    int-to-float v1, p2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    const/4 v1, 0x0

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->rebuildScene()V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->evaluate(Z)V

    :cond_0
    return-void
.end method

.method public setKeyFramePosition(Ljava/lang/Object;IIFF)Z
    .locals 10

    instance-of v0, p1, Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionController;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v2, v1

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v3, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    move-object v1, p1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v3, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->hasKeyFramePosition(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p4, p5}, Landroidx/constraintlayout/motion/widget/MotionController;->getKeyFrameParameter(IFF)F

    move-result v1

    const/4 v3, 0x5

    invoke-virtual {v0, v3, p4, p5}, Landroidx/constraintlayout/motion/widget/MotionController;->getKeyFrameParameter(IFF)F

    move-result v3

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    move-object v0, p1

    check-cast v0, Landroid/view/View;

    const/16 v5, 0xf

    new-array v5, v5, [B

    fill-array-data v5, :array_0

    const-string v6, "5d7690"

    const-wide v8, -0x3e2b504327800000L    # -1.388245858E9

    invoke-static {v5, v6, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v4, v0, v2, v5, v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->setKeyframe(Landroid/view/View;ILjava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    check-cast p1, Landroid/view/View;

    const/16 v1, 0xf

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v4, "7765c0"

    const/16 v5, -0x4931

    invoke-static {v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, p1, v2, v1, v3}, Landroidx/constraintlayout/motion/widget/MotionScene;->setKeyframe(Landroid/view/View;ILjava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->rebuildScene()V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->evaluate(Z)V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->invalidate()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_0

    :array_0
    .array-data 1
        0x58t
        0xbt
        0x43t
        0x5ft
        0x56t
        0x5et
        0xft
        0x14t
        0x52t
        0x44t
        0x5at
        0x55t
        0x5bt
        0x10t
        0x6ft
    .end array-data

    :array_1
    .array-data 1
        0x5at
        0x58t
        0x42t
        0x5ct
        0xct
        0x5et
        0xdt
        0x47t
        0x53t
        0x47t
        0x0t
        0x55t
        0x59t
        0x43t
        0x6ft
    .end array-data
.end method

.method public setKeyframe(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    instance-of v0, p1, Landroidx/constraintlayout/motion/widget/Key;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/constraintlayout/motion/widget/Key;

    invoke-virtual {p1, p2, p3}, Landroidx/constraintlayout/motion/widget/Key;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->rebuildScene()V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    :cond_0
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    if-nez p1, :cond_0

    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "77adbd"

    const-wide v2, -0x3e4b94c7ef000000L    # -3.42571025E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mLastStartState:Ljava/lang/String;

    if-ne v0, p1, :cond_1

    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mLastStartState:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mLastEndState:Ljava/lang/String;

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mSceneCache:Landroidx/constraintlayout/motion/widget/MotionScene;

    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->lookUpConstraintId(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mLastStartStateId:I

    if-eqz v0, :cond_3

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getStartState()I

    move-result v1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    :cond_3
    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getEndState()I

    move-result v1

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToState(I)V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    goto :goto_1

    nop

    :array_0
    .array-data 1
        0x5at
        0x58t
        0x15t
        0xdt
        0xdt
        0xat
        0x68t
        0x55t
        0x0t
        0x17t
        0x7t
    .end array-data
.end method

.method public setToolPosition(F)V
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mSceneCache:Landroidx/constraintlayout/motion/widget/MotionScene;

    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->evaluate(Z)V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->invalidate()V

    return-void
.end method

.method public setTransition(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mSceneCache:Landroidx/constraintlayout/motion/widget/MotionScene;

    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->lookUpConstraintId(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->lookUpConstraintId(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v2, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(II)V

    iput v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mLastStartStateId:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mLastEndStateId:I

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mLastStartState:Ljava/lang/String;

    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mLastEndState:Ljava/lang/String;

    return-void
.end method

.method public setViewDebug(Ljava/lang/Object;I)V
    .locals 1

    instance-of v0, p1, Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionController;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroidx/constraintlayout/motion/widget/MotionController;->setDrawPath(I)V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/DesignTool;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->invalidate()V

    goto :goto_0
.end method
