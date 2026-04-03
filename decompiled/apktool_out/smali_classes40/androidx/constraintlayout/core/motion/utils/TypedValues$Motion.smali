.class public interface abstract Landroidx/constraintlayout/core/motion/utils/TypedValues$Motion;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/TypedValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Motion"
.end annotation


# static fields
.field public static final KEY_WORDS:[Ljava/lang/String;

.field public static final NAME:Ljava/lang/String;

.field public static final S_ANIMATE_CIRCLEANGLE_TO:Ljava/lang/String;

.field public static final S_ANIMATE_RELATIVE_TO:Ljava/lang/String;

.field public static final S_DRAW_PATH:Ljava/lang/String;

.field public static final S_EASING:Ljava/lang/String;

.field public static final S_PATHMOTION_ARC:Ljava/lang/String;

.field public static final S_PATH_ROTATE:Ljava/lang/String;

.field public static final S_POLAR_RELATIVETO:Ljava/lang/String;

.field public static final S_QUANTIZE_INTERPOLATOR:Ljava/lang/String;

.field public static final S_QUANTIZE_INTERPOLATOR_ID:Ljava/lang/String;

.field public static final S_QUANTIZE_INTERPOLATOR_TYPE:Ljava/lang/String;

.field public static final S_QUANTIZE_MOTIONSTEPS:Ljava/lang/String;

.field public static final S_QUANTIZE_MOTION_PHASE:Ljava/lang/String;

.field public static final S_STAGGER:Ljava/lang/String;

.field public static final TYPE_ANIMATE_CIRCLEANGLE_TO:I = 0x25e

.field public static final TYPE_ANIMATE_RELATIVE_TO:I = 0x25d

.field public static final TYPE_DRAW_PATH:I = 0x260

.field public static final TYPE_EASING:I = 0x25b

.field public static final TYPE_PATHMOTION_ARC:I = 0x25f

.field public static final TYPE_PATH_ROTATE:I = 0x259

.field public static final TYPE_POLAR_RELATIVETO:I = 0x261

.field public static final TYPE_QUANTIZE_INTERPOLATOR:I = 0x25c

.field public static final TYPE_QUANTIZE_INTERPOLATOR_ID:I = 0x264

.field public static final TYPE_QUANTIZE_INTERPOLATOR_TYPE:I = 0x263

.field public static final TYPE_QUANTIZE_MOTIONSTEPS:I = 0x262

.field public static final TYPE_QUANTIZE_MOTION_PHASE:I = 0x25a

.field public static final TYPE_STAGGER:I = 0x258


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v10, 0x7

    const/16 v9, 0x14

    const/16 v8, 0x13

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "fa0c31"

    invoke-static {v0, v1, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$Motion;->NAME:Ljava/lang/String;

    new-array v0, v9, [B

    fill-array-data v0, :array_1

    const-string v1, "fc2ca5"

    const v2, 0x4d12d150    # 1.5394944E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$Motion;->S_ANIMATE_CIRCLEANGLE_TO:Ljava/lang/String;

    const/16 v0, 0x11

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "1a2646"

    invoke-static {v0, v1, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$Motion;->S_ANIMATE_RELATIVE_TO:Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v1, "7ec1d4"

    const v2, 0x4e8e5706    # 1.1940339E9f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$Motion;->S_DRAW_PATH:Ljava/lang/String;

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    const-string v1, "571e36"

    invoke-static {v0, v1, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$Motion;->S_EASING:Ljava/lang/String;

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    const-string v1, "9507b1"

    const-wide/32 v2, 0x6474129d

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$Motion;->S_PATHMOTION_ARC:Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_6

    const-string v1, "e3a9f0"

    invoke-static {v0, v1, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$Motion;->S_PATH_ROTATE:Ljava/lang/String;

    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_7

    const-string v1, "b7848a"

    const-wide/32 v2, 0xa83c66c

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$Motion;->S_POLAR_RELATIVETO:Ljava/lang/String;

    new-array v0, v9, [B

    fill-array-data v0, :array_8

    const-string v1, "1e7ab5"

    const-wide/32 v2, 0x29d70f7e

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$Motion;->S_QUANTIZE_INTERPOLATOR:Ljava/lang/String;

    const/16 v0, 0x16

    new-array v0, v0, [B

    fill-array-data v0, :array_9

    const-string v1, "a407a2"

    const v2, 0x4dc97769    # 4.2250576E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$Motion;->S_QUANTIZE_INTERPOLATOR_ID:Ljava/lang/String;

    const/16 v0, 0x18

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    const-string v1, "31cfa5"

    const/16 v2, 0x5df6

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$Motion;->S_QUANTIZE_INTERPOLATOR_TYPE:Ljava/lang/String;

    new-array v0, v8, [B

    fill-array-data v0, :array_b

    const-string v1, "cf9709"

    invoke-static {v0, v1, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$Motion;->S_QUANTIZE_MOTIONSTEPS:Ljava/lang/String;

    new-array v0, v8, [B

    fill-array-data v0, :array_c

    const-string v1, "f317a8"

    invoke-static {v0, v1, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$Motion;->S_QUANTIZE_MOTION_PHASE:Ljava/lang/String;

    new-array v0, v10, [B

    fill-array-data v0, :array_d

    const-string v1, "e4ec46"

    const-wide/32 v2, 0xe05325d

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$Motion;->S_STAGGER:Ljava/lang/String;

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    new-array v1, v10, [B

    fill-array-data v1, :array_e

    const-string v2, "b5640d"

    invoke-static {v1, v2, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const/16 v1, 0xa

    new-array v1, v1, [B

    fill-array-data v1, :array_f

    const-string v2, "00cf91"

    invoke-static {v1, v2, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x2

    new-array v2, v8, [B

    fill-array-data v2, :array_10

    const-string v3, "4cb09f"

    const/16 v4, 0x7a1c

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x10

    new-array v2, v2, [B

    fill-array-data v2, :array_11

    const-string v3, "7c14be"

    const-wide v4, 0x41a8f7c3fe000000L    # 2.09445375E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v9, [B

    fill-array-data v2, :array_12

    const-string v3, "d0ba6b"

    const/16 v4, -0x3270

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x11

    new-array v2, v2, [B

    fill-array-data v2, :array_13

    const-string v3, "2b9cb3"

    const-wide/32 v4, 0x6de95a6c

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v9, [B

    fill-array-data v2, :array_14

    const-string v3, "0d664b"

    const-wide/32 v4, -0x7aeb0df2

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v1, v1, [B

    fill-array-data v1, :array_15

    const-string v2, "5b3f57"

    invoke-static {v1, v2, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    const/16 v1, 0x8

    const/16 v2, 0x8

    new-array v2, v2, [B

    fill-array-data v2, :array_16

    const-string v3, "bda63e"

    const-wide v4, -0x3e35da15e1000000L    # -8.77384766E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0xf

    new-array v2, v2, [B

    fill-array-data v2, :array_17

    const-string v3, "de9695"

    const/16 v4, 0x3ac1

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v8, [B

    fill-array-data v2, :array_18

    const-string v3, "b27c0c"

    const/16 v4, -0x2199

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x18

    new-array v2, v2, [B

    fill-array-data v2, :array_19

    const-string v3, "d34324"

    const v4, -0x314200f3

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x16

    new-array v2, v2, [B

    fill-array-data v2, :array_1a

    const-string v3, "5226aa"

    invoke-static {v2, v3, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$Motion;->KEY_WORDS:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x2bt
        0xet
        0x44t
        0xat
        0x5ct
        0x5ft
    .end array-data

    nop

    :array_1
    .array-data 1
        0x27t
        0xdt
        0x5bt
        0xet
        0x0t
        0x41t
        0x3t
        0x20t
        0x5bt
        0x11t
        0x2t
        0x59t
        0x3t
        0x22t
        0x5ct
        0x4t
        0xdt
        0x50t
        0x32t
        0xct
    .end array-data

    :array_2
    .array-data 1
        0x70t
        0xft
        0x5bt
        0x5bt
        0x55t
        0x42t
        0x54t
        0x33t
        0x57t
        0x5at
        0x55t
        0x42t
        0x58t
        0x17t
        0x57t
        0x62t
        0x5bt
    .end array-data

    nop

    :array_3
    .array-data 1
        0x73t
        0x17t
        0x2t
        0x46t
        0x34t
        0x55t
        0x43t
        0xdt
    .end array-data

    :array_4
    .array-data 1
        0x61t
        0x45t
        0x50t
        0xbt
        0x40t
        0x5ft
        0x41t
        0x5et
        0x5et
        0xbt
        0x76t
        0x57t
        0x46t
        0x5et
        0x5ft
        0x2t
    .end array-data

    :array_5
    .array-data 1
        0x69t
        0x54t
        0x44t
        0x5ft
        0x2ft
        0x5et
        0x4dt
        0x5ct
        0x5ft
        0x59t
        0x23t
        0x43t
        0x5at
    .end array-data

    nop

    :array_6
    .array-data 1
        0x35t
        0x52t
        0x15t
        0x51t
        0x34t
        0x5ft
        0x11t
        0x52t
        0x15t
        0x5ct
    .end array-data

    nop

    :array_7
    .array-data 1
        0x32t
        0x58t
        0x54t
        0x55t
        0x4at
        0x33t
        0x7t
        0x5bt
        0x59t
        0x40t
        0x51t
        0x17t
        0x7t
        0x63t
        0x57t
    .end array-data

    :array_8
    .array-data 1
        0x60t
        0x10t
        0x56t
        0xft
        0x16t
        0x5ct
        0x4bt
        0x0t
        0x7et
        0xft
        0x16t
        0x50t
        0x43t
        0x15t
        0x58t
        0xdt
        0x3t
        0x41t
        0x5et
        0x17t
    .end array-data

    :array_9
    .array-data 1
        0x30t
        0x41t
        0x51t
        0x59t
        0x15t
        0x5bt
        0x1bt
        0x51t
        0x79t
        0x59t
        0x15t
        0x57t
        0x13t
        0x44t
        0x5ft
        0x5bt
        0x0t
        0x46t
        0xet
        0x46t
        0x79t
        0x73t
    .end array-data

    nop

    :array_a
    .array-data 1
        0x62t
        0x44t
        0x2t
        0x8t
        0x15t
        0x5ct
        0x49t
        0x54t
        0x2at
        0x8t
        0x15t
        0x50t
        0x41t
        0x41t
        0xct
        0xat
        0x0t
        0x41t
        0x5ct
        0x43t
        0x37t
        0x1ft
        0x11t
        0x50t
    .end array-data

    :array_b
    .array-data 1
        0x32t
        0x13t
        0x58t
        0x59t
        0x44t
        0x50t
        0x19t
        0x3t
        0x74t
        0x58t
        0x44t
        0x50t
        0xct
        0x8t
        0x6at
        0x43t
        0x55t
        0x49t
        0x10t
    .end array-data

    :array_c
    .array-data 1
        0x37t
        0x46t
        0x50t
        0x59t
        0x15t
        0x51t
        0x1ct
        0x56t
        0x7ct
        0x58t
        0x15t
        0x51t
        0x9t
        0x5dt
        0x61t
        0x5ft
        0x0t
        0x4bt
        0x3t
    .end array-data

    :array_d
    .array-data 1
        0x36t
        0x40t
        0x4t
        0x4t
        0x53t
        0x53t
        0x17t
    .end array-data

    :array_e
    .array-data 1
        0x31t
        0x41t
        0x57t
        0x53t
        0x57t
        0x1t
        0x10t
    .end array-data

    :array_f
    .array-data 1
        0x60t
        0x51t
        0x17t
        0xet
        0x6bt
        0x5et
        0x44t
        0x51t
        0x17t
        0x3t
    .end array-data

    nop

    :array_10
    .array-data 1
        0x65t
        0x16t
        0x3t
        0x5et
        0x4dt
        0xft
        0x4et
        0x6t
        0x2ft
        0x5ft
        0x4dt
        0xft
        0x5bt
        0xdt
        0x32t
        0x58t
        0x58t
        0x15t
        0x51t
    .end array-data

    :array_11
    .array-data 1
        0x63t
        0x11t
        0x50t
        0x5at
        0x11t
        0xct
        0x43t
        0xat
        0x5et
        0x5at
        0x27t
        0x4t
        0x44t
        0xat
        0x5ft
        0x53t
    .end array-data

    :array_12
    .array-data 1
        0x35t
        0x45t
        0x3t
        0xft
        0x42t
        0xbt
        0x1et
        0x55t
        0x2bt
        0xft
        0x42t
        0x7t
        0x16t
        0x40t
        0xdt
        0xdt
        0x57t
        0x16t
        0xbt
        0x42t
    .end array-data

    :array_13
    .array-data 1
        0x73t
        0xct
        0x50t
        0xet
        0x3t
        0x47t
        0x57t
        0x30t
        0x5ct
        0xft
        0x3t
        0x47t
        0x5bt
        0x14t
        0x5ct
        0x37t
        0xdt
    .end array-data

    nop

    :array_14
    .array-data 1
        0x71t
        0xat
        0x5ft
        0x5bt
        0x55t
        0x16t
        0x55t
        0x27t
        0x5ft
        0x44t
        0x57t
        0xet
        0x55t
        0x25t
        0x58t
        0x51t
        0x58t
        0x7t
        0x64t
        0xbt
    .end array-data

    :array_15
    .array-data 1
        0x65t
        0x3t
        0x47t
        0xet
        0x78t
        0x58t
        0x41t
        0xbt
        0x5ct
        0x8t
        0x74t
        0x45t
        0x56t
    .end array-data

    nop

    :array_16
    .array-data 1
        0x26t
        0x16t
        0x0t
        0x41t
        0x63t
        0x4t
        0x16t
        0xct
    .end array-data

    :array_17
    .array-data 1
        0x34t
        0xat
        0x55t
        0x57t
        0x4bt
        0x67t
        0x1t
        0x9t
        0x58t
        0x42t
        0x50t
        0x43t
        0x1t
        0x31t
        0x56t
    .end array-data

    :array_18
    .array-data 1
        0x33t
        0x47t
        0x56t
        0xdt
        0x44t
        0xat
        0x18t
        0x57t
        0x7at
        0xct
        0x44t
        0xat
        0xdt
        0x5ct
        0x64t
        0x17t
        0x55t
        0x13t
        0x11t
    .end array-data

    :array_19
    .array-data 1
        0x35t
        0x46t
        0x55t
        0x5dt
        0x46t
        0x5dt
        0x1et
        0x56t
        0x7dt
        0x5dt
        0x46t
        0x51t
        0x16t
        0x43t
        0x5bt
        0x5ft
        0x53t
        0x40t
        0xbt
        0x41t
        0x60t
        0x4at
        0x42t
        0x51t
    .end array-data

    :array_1a
    .array-data 1
        0x64t
        0x47t
        0x53t
        0x58t
        0x15t
        0x8t
        0x4ft
        0x57t
        0x7bt
        0x58t
        0x15t
        0x4t
        0x47t
        0x42t
        0x5dt
        0x5at
        0x0t
        0x15t
        0x5at
        0x40t
        0x7bt
        0x72t
    .end array-data
.end method
