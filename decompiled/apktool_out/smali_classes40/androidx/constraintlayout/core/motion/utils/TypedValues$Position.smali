.class public interface abstract Landroidx/constraintlayout/core/motion/utils/TypedValues$Position;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/TypedValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Position"
.end annotation


# static fields
.field public static final KEY_WORDS:[Ljava/lang/String;

.field public static final NAME:Ljava/lang/String;

.field public static final S_DRAWPATH:Ljava/lang/String;

.field public static final S_PERCENT_HEIGHT:Ljava/lang/String;

.field public static final S_PERCENT_WIDTH:Ljava/lang/String;

.field public static final S_PERCENT_X:Ljava/lang/String;

.field public static final S_PERCENT_Y:Ljava/lang/String;

.field public static final S_SIZE_PERCENT:Ljava/lang/String;

.field public static final S_TRANSITION_EASING:Ljava/lang/String;

.field public static final TYPE_CURVE_FIT:I = 0x1fc

.field public static final TYPE_DRAWPATH:I = 0x1f6

.field public static final TYPE_PATH_MOTION_ARC:I = 0x1fd

.field public static final TYPE_PERCENT_HEIGHT:I = 0x1f8

.field public static final TYPE_PERCENT_WIDTH:I = 0x1f7

.field public static final TYPE_PERCENT_X:I = 0x1fa

.field public static final TYPE_PERCENT_Y:I = 0x1fb

.field public static final TYPE_POSITION_TYPE:I = 0x1fe

.field public static final TYPE_SIZE_PERCENT:I = 0x1f9

.field public static final TYPE_TRANSITION_EASING:I = 0x1f5


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/16 v9, 0xc

    const/16 v8, 0xb

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/16 v6, 0x8

    new-array v0, v8, [B

    fill-array-data v0, :array_0

    const-string v1, "326831"

    invoke-static {v0, v1, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$Position;->NAME:Ljava/lang/String;

    new-array v0, v6, [B

    fill-array-data v0, :array_1

    const-string v1, "4dc8e6"

    const-wide/32 v2, -0x572a835e

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$Position;->S_DRAWPATH:Ljava/lang/String;

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "dc7fc5"

    invoke-static {v0, v1, v4, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$Position;->S_PERCENT_HEIGHT:Ljava/lang/String;

    new-array v0, v9, [B

    fill-array-data v0, :array_3

    const-string v1, "0f26e5"

    const v2, -0x32c4e172

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$Position;->S_PERCENT_WIDTH:Ljava/lang/String;

    new-array v0, v6, [B

    fill-array-data v0, :array_4

    const-string v1, "50e741"

    const-wide/32 v2, -0x13c9c26d

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$Position;->S_PERCENT_X:Ljava/lang/String;

    new-array v0, v6, [B

    fill-array-data v0, :array_5

    const-string v1, "d1ccbd"

    const-wide/32 v2, 0x46d34378

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$Position;->S_PERCENT_Y:Ljava/lang/String;

    new-array v0, v8, [B

    fill-array-data v0, :array_6

    const-string v1, "3813ab"

    const/16 v2, -0x423f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$Position;->S_SIZE_PERCENT:Ljava/lang/String;

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_7

    const-string v1, "bf18c3"

    invoke-static {v0, v1, v4, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$Position;->S_TRANSITION_EASING:Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/16 v1, 0x10

    new-array v1, v1, [B

    fill-array-data v1, :array_8

    const-string v2, "cdb41f"

    const v3, 0x4edfacb4    # 1.8763187E9f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    new-array v1, v6, [B

    fill-array-data v1, :array_9

    const-string v2, "4e7906"

    const-wide v4, -0x3e7e39c2b8000000L    # -3.7275561E7

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x2

    new-array v2, v9, [B

    fill-array-data v2, :array_a

    const-string v3, "1231ab"

    const v4, -0x31d4c5e3

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0xd

    new-array v2, v2, [B

    fill-array-data v2, :array_b

    const-string v3, "1b6b3e"

    const-wide v4, -0x3e36bb0e31000000L    # -8.47897502E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v8, [B

    fill-array-data v2, :array_c

    const-string v3, "90c077"

    const/16 v4, 0x19a

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v6, [B

    fill-array-data v2, :array_d

    const-string v3, "84ec49"

    const-wide/32 v4, 0x6e9c4de7

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [B

    fill-array-data v2, :array_e

    const-string v3, "58a08b"

    const v4, -0x31e1051e

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$Position;->KEY_WORDS:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x78t
        0x57t
        0x4ft
        0x68t
        0x5ct
        0x42t
        0x5at
        0x46t
        0x5ft
        0x57t
        0x5dt
    .end array-data

    :array_1
    .array-data 1
        0x50t
        0x16t
        0x2t
        0x4ft
        0x35t
        0x57t
        0x40t
        0xct
    .end array-data

    :array_2
    .array-data 1
        0x14t
        0x6t
        0x45t
        0x5t
        0x6t
        0x5bt
        0x10t
        0x2bt
        0x52t
        0xft
        0x4t
        0x5dt
        0x10t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x40t
        0x3t
        0x40t
        0x55t
        0x0t
        0x5bt
        0x44t
        0x31t
        0x5bt
        0x52t
        0x11t
        0x5dt
    .end array-data

    :array_4
    .array-data 1
        0x45t
        0x55t
        0x17t
        0x54t
        0x51t
        0x5ft
        0x41t
        0x68t
    .end array-data

    :array_5
    .array-data 1
        0x14t
        0x54t
        0x11t
        0x0t
        0x7t
        0xat
        0x10t
        0x68t
    .end array-data

    :array_6
    .array-data 1
        0x40t
        0x51t
        0x4bt
        0x56t
        0x31t
        0x7t
        0x41t
        0x5bt
        0x54t
        0x5dt
        0x15t
    .end array-data

    :array_7
    .array-data 1
        0x16t
        0x14t
        0x50t
        0x56t
        0x10t
        0x5at
        0x16t
        0xft
        0x5et
        0x56t
        0x26t
        0x52t
        0x11t
        0xft
        0x5ft
        0x5ft
    .end array-data

    :array_8
    .array-data 1
        0x17t
        0x16t
        0x3t
        0x5at
        0x42t
        0xft
        0x17t
        0xdt
        0xdt
        0x5at
        0x74t
        0x7t
        0x10t
        0xdt
        0xct
        0x53t
    .end array-data

    :array_9
    .array-data 1
        0x50t
        0x17t
        0x56t
        0x4et
        0x60t
        0x57t
        0x40t
        0xdt
    .end array-data

    :array_a
    .array-data 1
        0x41t
        0x57t
        0x41t
        0x52t
        0x4t
        0xct
        0x45t
        0x65t
        0x5at
        0x55t
        0x15t
        0xat
    .end array-data

    :array_b
    .array-data 1
        0x41t
        0x7t
        0x44t
        0x1t
        0x56t
        0xbt
        0x45t
        0x2at
        0x53t
        0xbt
        0x54t
        0xdt
        0x45t
    .end array-data

    nop

    :array_c
    .array-data 1
        0x4at
        0x59t
        0x19t
        0x55t
        0x67t
        0x52t
        0x4bt
        0x53t
        0x6t
        0x5et
        0x43t
    .end array-data

    :array_d
    .array-data 1
        0x48t
        0x51t
        0x17t
        0x0t
        0x51t
        0x57t
        0x4ct
        0x6ct
    .end array-data

    :array_e
    .array-data 1
        0x45t
        0x5dt
        0x13t
        0x53t
        0x5dt
        0xct
        0x41t
        0x61t
    .end array-data
.end method
