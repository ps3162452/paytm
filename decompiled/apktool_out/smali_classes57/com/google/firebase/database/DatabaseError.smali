.class public Lcom/google/firebase/database/DatabaseError;
.super Ljava/lang/Object;


# static fields
.field public static final DATA_STALE:I = -0x1

.field public static final DISCONNECTED:I = -0x4

.field public static final EXPIRED_TOKEN:I = -0x6

.field public static final INVALID_TOKEN:I = -0x7

.field public static final MAX_RETRIES:I = -0x8

.field public static final NETWORK_ERROR:I = -0x18

.field public static final OPERATION_FAILED:I = -0x2

.field public static final OVERRIDDEN_BY_SET:I = -0x9

.field public static final PERMISSION_DENIED:I = -0x3

.field public static final UNAVAILABLE:I = -0xa

.field public static final UNKNOWN_ERROR:I = -0x3e7

.field public static final USER_CODE_EXCEPTION:I = -0xb

.field public static final WRITE_CANCELED:I = -0x19

.field private static final errorCodes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final errorReasons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final code:I

.field private final details:Ljava/lang/String;

.field private final message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/firebase/database/DatabaseError;->errorReasons:Ljava/util/Map;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x37

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "97e4be"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, -0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x2f

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "c5e1bf"

    const/16 v5, 0x1c96

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, -0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x3e

    new-array v4, v4, [B

    fill-array-data v4, :array_2

    const-string v5, "a2b61c"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, -0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x3b

    new-array v5, v5, [B

    fill-array-data v5, :array_3

    const-string v6, "deff5a"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, -0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x23

    new-array v6, v6, [B

    fill-array-data v6, :array_4

    const-string v7, "a8705a"

    const v8, -0x3193327c

    invoke-static {v6, v7, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, -0x7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0x23

    new-array v7, v7, [B

    fill-array-data v7, :array_5

    const-string v8, "83455e"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, -0x8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v8, 0x24

    new-array v8, v8, [B

    fill-array-data v8, :array_6

    const-string v9, "34f715"

    const-wide v10, -0x3e211b9eeb400000L    # -2.073134163E9

    invoke-static {v8, v9, v10, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v8, -0x9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v9, 0x32

    new-array v9, v9, [B

    fill-array-data v9, :array_7

    const-string v10, "cf0d36"

    const/16 v11, 0x7e9f

    invoke-static {v9, v10, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v9, -0xa

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v10, 0x1a

    new-array v10, v10, [B

    fill-array-data v10, :array_8

    const-string v11, "67d449"

    const-wide v12, -0x3e34ad413d000000L    # -9.16815238E8

    invoke-static {v10, v11, v12, v13}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v10, -0xb

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v11, 0x48

    new-array v11, v11, [B

    fill-array-data v11, :array_9

    const-string v12, "f3c32b"

    const-wide v14, -0x3e214ae205800000L    # -2.060744682E9

    invoke-static {v11, v12, v14, v15}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v10, -0x18

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v11, 0x3b

    new-array v11, v11, [B

    fill-array-data v11, :array_a

    const-string v12, "29b6d8"

    const-wide/32 v14, -0x11fd55b7

    invoke-static {v11, v12, v14, v15}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v11, -0x19

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v12, 0x23

    new-array v12, v12, [B

    fill-array-data v12, :array_b

    const-string v13, "5da921"

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v12, -0x3e7

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v13, 0x19

    new-array v13, v13, [B

    fill-array-data v13, :array_c

    const-string v14, "42fc5c"

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-static/range {v13 .. v16}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/firebase/database/DatabaseError;->errorCodes:Ljava/util/Map;

    const/16 v12, 0x9

    new-array v12, v12, [B

    fill-array-data v12, :array_d

    const-string v13, "4d60cd"

    const-wide/32 v14, -0x3f27e434

    invoke-static {v12, v13, v14, v15}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x7

    new-array v1, v1, [B

    fill-array-data v1, :array_e

    const-string v12, "f991f8"

    const v13, 0x4e0e2da2    # 5.963388E8f

    invoke-static {v1, v12, v13}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x11

    new-array v1, v1, [B

    fill-array-data v1, :array_f

    const-string v2, "ae5d4e"

    const-wide/32 v12, 0x57a8b8c3

    invoke-static {v1, v2, v12, v13}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_10

    const-string v2, "00835e"

    const/4 v3, 0x1

    const/4 v12, 0x1

    invoke-static {v1, v2, v3, v12}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xd

    new-array v1, v1, [B

    fill-array-data v1, :array_11

    const-string v2, "227468"

    const v3, 0x4e937857

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xd

    new-array v1, v1, [B

    fill-array-data v1, :array_12

    const-string v2, "dcfa8f"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xa

    new-array v1, v1, [B

    fill-array-data v1, :array_13

    const-string v2, "7539c4"

    const v3, -0x324c7f35    # -3.7644528E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xf

    new-array v1, v1, [B

    fill-array-data v1, :array_14

    const-string v2, "2000ef"

    const-wide/32 v4, -0x7c496025

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xb

    new-array v1, v1, [B

    fill-array-data v1, :array_15

    const-string v2, "ee007a"

    const-wide/32 v4, 0xd14ddbe

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xd

    new-array v1, v1, [B

    fill-array-data v1, :array_16

    const-string v2, "443494"

    const-wide/32 v4, -0x33a514df

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xe

    new-array v1, v1, [B

    fill-array-data v1, :array_17

    const-string v2, "2ebfb0"

    const/16 v3, 0x387

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :array_0
    .array-data 1
        0x6dt
        0x5ft
        0x0t
        0x14t
        0x16t
        0x17t
        0x58t
        0x59t
        0x16t
        0x55t
        0x1t
        0x11t
        0x50t
        0x58t
        0xbt
        0x14t
        0xct
        0x0t
        0x5ct
        0x53t
        0x16t
        0x14t
        0x16t
        0xat
        0x19t
        0x55t
        0x0t
        0x14t
        0x10t
        0x10t
        0x57t
        0x17t
        0x4t
        0x53t
        0x3t
        0xct
        0x57t
        0x17t
        0x12t
        0x5dt
        0x16t
        0xdt
        0x19t
        0x54t
        0x10t
        0x46t
        0x10t
        0x0t
        0x57t
        0x43t
        0x45t
        0x50t
        0x3t
        0x11t
        0x58t
    .end array-data

    :array_1
    .array-data 1
        0x37t
        0x5dt
        0x0t
        0x11t
        0x11t
        0x3t
        0x11t
        0x43t
        0x0t
        0x43t
        0x42t
        0xft
        0xdt
        0x51t
        0xct
        0x52t
        0x3t
        0x12t
        0x6t
        0x51t
        0x45t
        0x45t
        0xat
        0x7t
        0x17t
        0x15t
        0x11t
        0x59t
        0xbt
        0x15t
        0x43t
        0x5at
        0x15t
        0x54t
        0x10t
        0x7t
        0x17t
        0x5ct
        0xat
        0x5ft
        0x42t
        0x0t
        0x2t
        0x5ct
        0x9t
        0x54t
        0x6t
    .end array-data

    :array_2
    .array-data 1
        0x35t
        0x5at
        0xbt
        0x45t
        0x11t
        0x0t
        0xdt
        0x5bt
        0x7t
        0x58t
        0x45t
        0x43t
        0x5t
        0x5dt
        0x7t
        0x45t
        0x11t
        0xdt
        0xet
        0x46t
        0x42t
        0x5et
        0x50t
        0x15t
        0x4t
        0x12t
        0x12t
        0x53t
        0x43t
        0xet
        0x8t
        0x41t
        0x11t
        0x5ft
        0x5et
        0xdt
        0x41t
        0x46t
        0xdt
        0x16t
        0x41t
        0x6t
        0x13t
        0x54t
        0xdt
        0x44t
        0x5ct
        0x43t
        0x15t
        0x5at
        0xbt
        0x45t
        0x11t
        0xct
        0x11t
        0x57t
        0x10t
        0x57t
        0x45t
        0xat
        0xet
        0x5ct
    .end array-data

    nop

    :array_3
    .array-data 1
        0x30t
        0xdt
        0x3t
        0x46t
        0x5at
        0x11t
        0x1t
        0x17t
        0x7t
        0x12t
        0x5ct
        0xet
        0xat
        0x45t
        0xet
        0x7t
        0x51t
        0x41t
        0x10t
        0xat
        0x46t
        0x4t
        0x50t
        0x41t
        0x5t
        0x7t
        0x9t
        0x14t
        0x41t
        0x4t
        0x0t
        0x45t
        0x2t
        0x13t
        0x50t
        0x41t
        0x10t
        0xat
        0x46t
        0x7t
        0x15t
        0xft
        0x1t
        0x11t
        0x11t
        0x9t
        0x47t
        0xat
        0x44t
        0x1t
        0xft
        0x15t
        0x56t
        0xet
        0xat
        0xbt
        0x3t
        0x5t
        0x41t
    .end array-data

    :array_4
    .array-data 1
        0x35t
        0x50t
        0x52t
        0x10t
        0x46t
        0x14t
        0x11t
        0x48t
        0x5bt
        0x59t
        0x50t
        0x5t
        0x41t
        0x59t
        0x42t
        0x44t
        0x5dt
        0x41t
        0x15t
        0x57t
        0x5ct
        0x55t
        0x5bt
        0x41t
        0x9t
        0x59t
        0x44t
        0x10t
        0x50t
        0x19t
        0x11t
        0x51t
        0x45t
        0x55t
        0x51t
    .end array-data

    :array_5
    .array-data 1
        0x6ct
        0x5bt
        0x51t
        0x15t
        0x46t
        0x10t
        0x48t
        0x43t
        0x58t
        0x5ct
        0x50t
        0x1t
        0x18t
        0x52t
        0x41t
        0x41t
        0x5dt
        0x45t
        0x4ct
        0x5ct
        0x5ft
        0x50t
        0x5bt
        0x45t
        0x4ft
        0x52t
        0x47t
        0x15t
        0x5ct
        0xbt
        0x4et
        0x52t
        0x58t
        0x5ct
        0x51t
    .end array-data

    :array_6
    .array-data 1
        0x67t
        0x5ct
        0x3t
        0x17t
        0x45t
        0x47t
        0x52t
        0x5at
        0x15t
        0x56t
        0x52t
        0x41t
        0x5at
        0x5bt
        0x8t
        0x17t
        0x59t
        0x54t
        0x57t
        0x14t
        0x12t
        0x58t
        0x5et
        0x15t
        0x5et
        0x55t
        0x8t
        0x4et
        0x11t
        0x47t
        0x56t
        0x40t
        0x14t
        0x5et
        0x54t
        0x46t
    .end array-data

    :array_7
    .array-data 1
        0x37t
        0xet
        0x55t
        0x44t
        0x47t
        0x44t
        0x2t
        0x8t
        0x43t
        0x5t
        0x50t
        0x42t
        0xat
        0x9t
        0x5et
        0x44t
        0x44t
        0x57t
        0x10t
        0x46t
        0x5ft
        0x12t
        0x56t
        0x44t
        0x11t
        0xft
        0x54t
        0x0t
        0x56t
        0x58t
        0x43t
        0x4t
        0x49t
        0x44t
        0x52t
        0x16t
        0x10t
        0x13t
        0x52t
        0x17t
        0x56t
        0x47t
        0x16t
        0x3t
        0x5et
        0x10t
        0x13t
        0x45t
        0x6t
        0x12t
    .end array-data

    nop

    :array_8
    .array-data 1
        0x62t
        0x5ft
        0x1t
        0x14t
        0x47t
        0x5ct
        0x44t
        0x41t
        0xdt
        0x57t
        0x51t
        0x19t
        0x5ft
        0x44t
        0x44t
        0x41t
        0x5at
        0x58t
        0x40t
        0x56t
        0xdt
        0x58t
        0x55t
        0x5bt
        0x5at
        0x52t
    .end array-data

    nop

    :array_9
    .array-data 1
        0x33t
        0x40t
        0x6t
        0x41t
        0x12t
        0x1t
        0x9t
        0x57t
        0x6t
        0x13t
        0x51t
        0x3t
        0xat
        0x5ft
        0x6t
        0x57t
        0x12t
        0x4t
        0x14t
        0x5ct
        0xet
        0x13t
        0x46t
        0xat
        0x3t
        0x13t
        0x25t
        0x5at
        0x40t
        0x7t
        0x4t
        0x52t
        0x10t
        0x56t
        0x12t
        0x26t
        0x7t
        0x47t
        0x2t
        0x51t
        0x53t
        0x11t
        0x3t
        0x13t
        0x11t
        0x46t
        0x5ct
        0xet
        0x9t
        0x5ct
        0x13t
        0x13t
        0x46t
        0xat
        0x14t
        0x56t
        0x14t
        0x13t
        0x53t
        0xct
        0x46t
        0x56t
        0x1bt
        0x50t
        0x57t
        0x12t
        0x12t
        0x5at
        0xct
        0x5dt
        0x8t
        0x68t
    .end array-data

    :array_a
    .array-data 1
        0x66t
        0x51t
        0x7t
        0x16t
        0xbt
        0x48t
        0x57t
        0x4bt
        0x3t
        0x42t
        0xdt
        0x57t
        0x5ct
        0x19t
        0x1t
        0x59t
        0x11t
        0x54t
        0x56t
        0x19t
        0xct
        0x59t
        0x10t
        0x18t
        0x50t
        0x5ct
        0x42t
        0x46t
        0x1t
        0x4at
        0x54t
        0x56t
        0x10t
        0x5bt
        0x1t
        0x5ct
        0x12t
        0x5dt
        0x17t
        0x53t
        0x44t
        0x4ct
        0x5dt
        0x19t
        0x3t
        0x16t
        0xat
        0x5dt
        0x46t
        0x4et
        0xdt
        0x44t
        0xft
        0x18t
        0x57t
        0x4bt
        0x10t
        0x59t
        0x16t
    .end array-data

    :array_b
    .array-data 1
        0x61t
        0xct
        0x4t
        0x19t
        0x45t
        0x43t
        0x5ct
        0x10t
        0x4t
        0x19t
        0x45t
        0x50t
        0x46t
        0x44t
        0x2t
        0x58t
        0x5ct
        0x52t
        0x50t
        0x8t
        0x4t
        0x5dt
        0x12t
        0x53t
        0x4ct
        0x44t
        0x15t
        0x51t
        0x57t
        0x11t
        0x40t
        0x17t
        0x4t
        0x4bt
        0x1ct
    .end array-data

    :array_c
    .array-data 1
        0x75t
        0x5ct
        0x46t
        0x16t
        0x5bt
        0x8t
        0x5at
        0x5dt
        0x11t
        0xdt
        0x15t
        0x6t
        0x46t
        0x40t
        0x9t
        0x11t
        0x15t
        0xct
        0x57t
        0x51t
        0x13t
        0x11t
        0x47t
        0x6t
        0x50t
    .end array-data

    nop

    :array_d
    .array-data 1
        0x50t
        0x5t
        0x42t
        0x51t
        0x10t
        0x10t
        0x55t
        0x8t
        0x53t
    .end array-data

    nop

    :array_e
    .array-data 1
        0x0t
        0x58t
        0x50t
        0x5dt
        0x13t
        0x4at
        0x3t
    .end array-data

    :array_f
    .array-data 1
        0x11t
        0x0t
        0x47t
        0x9t
        0x5dt
        0x16t
        0x12t
        0xct
        0x5at
        0xat
        0x6bt
        0x1t
        0x4t
        0xbt
        0x5ct
        0x1t
        0x50t
    .end array-data

    nop

    :array_10
    .array-data 1
        0x54t
        0x59t
        0x4bt
        0x50t
        0x5at
        0xbt
        0x5et
        0x55t
        0x5bt
        0x47t
        0x50t
        0x1t
    .end array-data

    :array_11
    .array-data 1
        0x57t
        0x4at
        0x47t
        0x5dt
        0x44t
        0x5dt
        0x56t
        0x6dt
        0x43t
        0x5bt
        0x5dt
        0x5dt
        0x5ct
    .end array-data

    nop

    :array_12
    .array-data 1
        0xdt
        0xdt
        0x10t
        0x0t
        0x54t
        0xft
        0x0t
        0x3ct
        0x12t
        0xet
        0x53t
        0x3t
        0xat
    .end array-data

    nop

    :array_13
    .array-data 1
        0x5at
        0x54t
        0x4bt
        0x4bt
        0x6t
        0x40t
        0x45t
        0x5ct
        0x56t
        0x4at
    .end array-data

    nop

    :array_14
    .array-data 1
        0x5dt
        0x46t
        0x55t
        0x42t
        0x17t
        0xft
        0x56t
        0x54t
        0x55t
        0x5et
        0x7t
        0x1ft
        0x41t
        0x55t
        0x44t
    .end array-data

    :array_15
    .array-data 1
        0x10t
        0xbt
        0x51t
        0x46t
        0x56t
        0x8t
        0x9t
        0x4t
        0x52t
        0x5ct
        0x52t
    .end array-data

    :array_16
    .array-data 1
        0x5at
        0x51t
        0x47t
        0x43t
        0x56t
        0x46t
        0x5ft
        0x6bt
        0x56t
        0x46t
        0x4bt
        0x5bt
        0x46t
    .end array-data

    nop

    :array_17
    .array-data 1
        0x45t
        0x17t
        0xbt
        0x12t
        0x7t
        0x6ft
        0x51t
        0x4t
        0xct
        0x5t
        0x7t
        0x5ct
        0x57t
        0x1t
    .end array-data
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/firebase/database/DatabaseError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/firebase/database/DatabaseError;->code:I

    iput-object p2, p0, Lcom/google/firebase/database/DatabaseError;->message:Ljava/lang/String;

    if-nez p3, :cond_0

    const-string p3, ""

    :cond_0
    iput-object p3, p0, Lcom/google/firebase/database/DatabaseError;->details:Ljava/lang/String;

    return-void
.end method

.method public static fromCode(I)Lcom/google/firebase/database/DatabaseError;
    .locals 6

    sget-object v0, Lcom/google/firebase/database/DatabaseError;->errorReasons:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/firebase/database/DatabaseError;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/google/firebase/database/DatabaseError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x26

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "e6cfc6"

    const-wide/32 v4, 0x611cebe2

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x2ct
        0x58t
        0x15t
        0x7t
        0xft
        0x5ft
        0x1t
        0x16t
        0x25t
        0xft
        0x11t
        0x53t
        0x7t
        0x57t
        0x10t
        0x3t
        0x43t
        0x72t
        0x4t
        0x42t
        0x2t
        0x4t
        0x2t
        0x45t
        0x0t
        0x16t
        0x6t
        0x14t
        0x11t
        0x59t
        0x17t
        0x16t
        0x0t
        0x9t
        0x7t
        0x53t
        0x5ft
        0x16t
    .end array-data
.end method

.method public static fromException(Ljava/lang/Throwable;)Lcom/google/firebase/database/DatabaseError;
    .locals 6

    const/16 v5, -0xb

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    new-instance v2, Lcom/google/firebase/database/DatabaseError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/google/firebase/database/DatabaseError;->errorReasons:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v5, v0}, Lcom/google/firebase/database/DatabaseError;-><init>(ILjava/lang/String;)V

    return-object v2
.end method

.method public static fromStatus(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseError;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/firebase/database/DatabaseError;->fromStatus(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/DatabaseError;

    move-result-object v0

    return-object v0
.end method

.method public static fromStatus(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/DatabaseError;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/firebase/database/DatabaseError;->fromStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/DatabaseError;

    move-result-object v0

    return-object v0
.end method

.method public static fromStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/DatabaseError;
    .locals 3

    sget-object v0, Lcom/google/firebase/database/DatabaseError;->errorCodes:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    const/16 v0, -0x3e7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v1, v0

    :goto_0
    if-nez p1, :cond_0

    sget-object v0, Lcom/google/firebase/database/DatabaseError;->errorReasons:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_1
    new-instance v2, Lcom/google/firebase/database/DatabaseError;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v2, v1, v0, p2}, Lcom/google/firebase/database/DatabaseError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    move-object v0, p1

    goto :goto_1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    iget v0, p0, Lcom/google/firebase/database/DatabaseError;->code:I

    return v0
.end method

.method public getDetails()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/DatabaseError;->details:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/DatabaseError;->message:Ljava/lang/String;

    return-object v0
.end method

.method public toException()Lcom/google/firebase/database/DatabaseException;
    .locals 6

    new-instance v0, Lcom/google/firebase/database/DatabaseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x19

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "04985d"

    const-wide/32 v4, 0x2d1ce65a

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/database/DatabaseError;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        0x76t
        0x5dt
        0x4bt
        0x5dt
        0x57t
        0x5t
        0x43t
        0x51t
        0x19t
        0x7ct
        0x54t
        0x10t
        0x51t
        0x56t
        0x58t
        0x4bt
        0x50t
        0x44t
        0x55t
        0x46t
        0x4bt
        0x57t
        0x47t
        0x5et
        0x10t
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0xf

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "fbd5b7"

    const v3, -0x31281263

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/DatabaseError;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x22t
        0x3t
        0x10t
        0x54t
        0x0t
        0x56t
        0x15t
        0x7t
        0x21t
        0x47t
        0x10t
        0x58t
        0x14t
        0x58t
        0x44t
    .end array-data
.end method
