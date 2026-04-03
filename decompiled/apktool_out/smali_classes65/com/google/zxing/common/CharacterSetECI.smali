.class public final enum Lcom/google/zxing/common/CharacterSetECI;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/zxing/common/CharacterSetECI;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ASCII:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum Big5:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum Cp1250:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum Cp1251:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum Cp1252:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum Cp1256:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum Cp437:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum EUC_KR:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum GB18030:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_1:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_10:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_11:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_13:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_14:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_15:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_16:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_2:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_3:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_4:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_5:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_6:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_7:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_8:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_9:Lcom/google/zxing/common/CharacterSetECI;

.field private static final NAME_TO_ECI:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/zxing/common/CharacterSetECI;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum SJIS:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum UTF8:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum UnicodeBigUnmarked:Lcom/google/zxing/common/CharacterSetECI;

.field private static final VALUE_TO_ECI:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/zxing/common/CharacterSetECI;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final otherEncodingNames:[Ljava/lang/String;

.field private final values:[I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/4 v15, 0x6

    const/16 v14, 0x9

    const/16 v13, 0xa

    const/4 v12, 0x1

    const/4 v1, 0x0

    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    const/4 v2, 0x5

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "a21d00"

    invoke-static {v2, v3, v12}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_1

    new-array v4, v1, [Ljava/lang/String;

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->Cp437:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    new-array v2, v14, [B

    fill-array-data v2, :array_2

    const-string v3, "f6897f"

    const-wide/32 v4, -0x3775849a

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_3

    new-array v4, v12, [Ljava/lang/String;

    new-array v5, v13, [B

    fill-array-data v5, :array_4

    const-string v6, "3bd281"

    invoke-static {v5, v6, v12, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-direct {v0, v2, v12, v3, v4}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_1:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    new-array v2, v14, [B

    fill-array-data v2, :array_5

    const-string v3, "d84eef"

    const-wide/32 v4, -0x7b810de5

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x4

    new-array v5, v12, [Ljava/lang/String;

    new-array v6, v13, [B

    fill-array-data v6, :array_6

    const-string v7, "2add06"

    const v8, -0x310200bf

    invoke-static {v6, v7, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_2:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    new-array v2, v14, [B

    fill-array-data v2, :array_7

    const-string v3, "a7ee3d"

    const v4, 0x4ee55c35

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x5

    new-array v5, v12, [Ljava/lang/String;

    new-array v6, v13, [B

    fill-array-data v6, :array_8

    const-string v7, "a1c9d7"

    invoke-static {v6, v7, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_3:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    new-array v2, v14, [B

    fill-array-data v2, :array_9

    const-string v3, "230ce0"

    const/16 v4, 0x5ae9

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    new-array v4, v12, [Ljava/lang/String;

    new-array v5, v13, [B

    fill-array-data v5, :array_a

    const-string v6, "e8691f"

    const/16 v7, 0x4cde

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-direct {v0, v2, v3, v15, v4}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_4:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    new-array v2, v14, [B

    fill-array-data v2, :array_b

    const-string v3, "dc2208"

    const v4, -0x3151ccf8

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    const/4 v4, 0x7

    new-array v5, v12, [Ljava/lang/String;

    new-array v6, v13, [B

    fill-array-data v6, :array_c

    const-string v7, "4221de"

    invoke-static {v6, v7, v12, v12}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_5:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    new-array v2, v14, [B

    fill-array-data v2, :array_d

    const-string v3, "31ff3e"

    const-wide/32 v4, 0x2e1fb317

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    new-array v4, v12, [Ljava/lang/String;

    new-array v5, v13, [B

    fill-array-data v5, :array_e

    const-string v6, "35755b"

    const v7, 0x4e4951fd    # 8.443984E8f

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-direct {v0, v2, v15, v3, v4}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_6:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    new-array v2, v14, [B

    fill-array-data v2, :array_f

    const-string v3, "854558"

    const v4, -0x311a0a6b

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    new-array v4, v12, [Ljava/lang/String;

    new-array v5, v13, [B

    fill-array-data v5, :array_10

    const-string v6, "f8f3cc"

    invoke-static {v5, v6, v12, v12}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-direct {v0, v2, v3, v14, v4}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_7:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    new-array v2, v14, [B

    fill-array-data v2, :array_11

    const-string v3, "42b9ea"

    const-wide/32 v4, -0x7a71fad0

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    new-array v4, v12, [Ljava/lang/String;

    new-array v5, v13, [B

    fill-array-data v5, :array_12

    const-string v6, "610968"

    const/16 v7, 0x3d10

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-direct {v0, v2, v3, v13, v4}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_8:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    new-array v2, v14, [B

    fill-array-data v2, :array_13

    const-string v3, "d2f80e"

    const-wide v4, 0x41c45d3f77000000L    # 6.8331083E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xb

    new-array v4, v12, [Ljava/lang/String;

    new-array v5, v13, [B

    fill-array-data v5, :array_14

    const-string v6, "2b997a"

    const-wide v8, -0x3e2b79bc76400000L    # -1.377373735E9

    invoke-static {v5, v6, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-direct {v0, v2, v14, v3, v4}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_9:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    new-array v2, v13, [B

    fill-array-data v2, :array_15

    const-string v3, "6dab3d"

    const/16 v4, -0x2cef

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xc

    new-array v4, v12, [Ljava/lang/String;

    const/16 v5, 0xb

    new-array v5, v5, [B

    fill-array-data v5, :array_16

    const-string v6, "55b30a"

    const/16 v7, -0x53d7

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-direct {v0, v2, v13, v3, v4}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_10:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    new-array v2, v13, [B

    fill-array-data v2, :array_17

    const-string v3, "8bdfd9"

    const v4, -0x31d63dc8

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xb

    const/16 v4, 0xd

    new-array v5, v12, [Ljava/lang/String;

    const/16 v6, 0xb

    new-array v6, v6, [B

    fill-array-data v6, :array_18

    const-string v7, "89ce54"

    const-wide/32 v8, 0x4c66d137

    invoke-static {v6, v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_11:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    new-array v2, v13, [B

    fill-array-data v2, :array_19

    const-string v3, "e927be"

    invoke-static {v2, v3, v12}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xc

    const/16 v4, 0xf

    new-array v5, v12, [Ljava/lang/String;

    const/16 v6, 0xb

    new-array v6, v6, [B

    fill-array-data v6, :array_1a

    const-string v7, "35389d"

    const-wide v8, 0x41d54bdf82400000L    # 1.429175817E9

    invoke-static {v6, v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_13:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    new-array v2, v13, [B

    fill-array-data v2, :array_1b

    const-string v3, "10f164"

    const-wide v4, -0x3e2cea4b1a800000L    # -1.280758678E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xd

    const/16 v4, 0x10

    new-array v5, v12, [Ljava/lang/String;

    const/16 v6, 0xb

    new-array v6, v6, [B

    fill-array-data v6, :array_1c

    const-string v7, "b4d15c"

    const/16 v8, 0x31ca

    invoke-static {v6, v7, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_14:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    new-array v2, v13, [B

    fill-array-data v2, :array_1d

    const-string v3, "6ffc79"

    const-wide/32 v4, 0x1c74a43f

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xe

    const/16 v4, 0x11

    new-array v5, v12, [Ljava/lang/String;

    const/16 v6, 0xb

    new-array v6, v6, [B

    fill-array-data v6, :array_1e

    const-string v7, "c417c9"

    const-wide v8, -0x3e36ca8a19800000L    # -8.45867981E8

    invoke-static {v6, v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_15:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    new-array v2, v13, [B

    fill-array-data v2, :array_1f

    const-string v3, "6e1272"

    invoke-static {v2, v3, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xf

    const/16 v4, 0x12

    new-array v5, v12, [Ljava/lang/String;

    const/16 v6, 0xb

    new-array v6, v6, [B

    fill-array-data v6, :array_20

    const-string v7, "d68547"

    invoke-static {v6, v7, v1, v12}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_16:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    const/4 v2, 0x4

    new-array v2, v2, [B

    fill-array-data v2, :array_21

    const-string v3, "71699e"

    const-wide v4, 0x419e280794000000L    # 1.26484965E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    const/16 v4, 0x14

    new-array v5, v12, [Ljava/lang/String;

    new-array v6, v14, [B

    fill-array-data v6, :array_22

    const-string v7, "0093e8"

    const v8, 0x4e5867b2    # 9.076686E8f

    invoke-static {v6, v7, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->SJIS:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    new-array v2, v15, [B

    fill-array-data v2, :array_23

    const-string v3, "e4da83"

    invoke-static {v2, v3, v1, v12}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x11

    const/16 v4, 0x15

    new-array v5, v12, [Ljava/lang/String;

    const/16 v6, 0xc

    new-array v6, v6, [B

    fill-array-data v6, :array_24

    const-string v7, "dd47f5"

    const/16 v8, 0x4b2e

    invoke-static {v6, v7, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->Cp1250:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    new-array v2, v15, [B

    fill-array-data v2, :array_25

    const-string v3, "2bf5cd"

    invoke-static {v2, v3, v1, v12}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x12

    const/16 v4, 0x16

    new-array v5, v12, [Ljava/lang/String;

    const/16 v6, 0xc

    new-array v6, v6, [B

    fill-array-data v6, :array_26

    const-string v7, "c727c0"

    const-wide v8, 0x41babbb452000000L    # 4.4850901E8

    invoke-static {v6, v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->Cp1251:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    new-array v2, v15, [B

    fill-array-data v2, :array_27

    const-string v3, "0513f1"

    invoke-static {v2, v3, v1, v12}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x13

    const/16 v4, 0x17

    new-array v5, v12, [Ljava/lang/String;

    const/16 v6, 0xc

    new-array v6, v6, [B

    fill-array-data v6, :array_28

    const-string v7, "66272d"

    const-wide/32 v8, -0xe79fc3f

    invoke-static {v6, v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->Cp1252:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    new-array v2, v15, [B

    fill-array-data v2, :array_29

    const-string v3, "99c14e"

    invoke-static {v2, v3, v1, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x14

    const/16 v4, 0x18

    new-array v5, v12, [Ljava/lang/String;

    const/16 v6, 0xc

    new-array v6, v6, [B

    fill-array-data v6, :array_2a

    const-string v7, "70af6d"

    const-wide/32 v8, 0x362074e1

    invoke-static {v6, v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->Cp1256:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    const/16 v2, 0x12

    new-array v2, v2, [B

    fill-array-data v2, :array_2b

    const-string v3, "24a3de"

    invoke-static {v2, v3, v12}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x15

    const/16 v4, 0x19

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/16 v6, 0x8

    new-array v6, v6, [B

    fill-array-data v6, :array_2c

    const-string v7, "8a4b5f"

    const v8, 0x4e8749ad

    invoke-static {v6, v7, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    new-array v6, v13, [B

    fill-array-data v6, :array_2d

    const-string v7, "60ab01"

    const v8, 0x4ec67a28    # 1.6649472E9f

    invoke-static {v6, v7, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v12

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->UnicodeBigUnmarked:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    const/4 v2, 0x4

    new-array v2, v2, [B

    fill-array-data v2, :array_2e

    const-string v3, "c7bd8c"

    invoke-static {v2, v3, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x16

    const/16 v4, 0x1a

    new-array v5, v12, [Ljava/lang/String;

    const/4 v6, 0x5

    new-array v6, v6, [B

    fill-array-data v6, :array_2f

    const-string v7, "36e188"

    invoke-static {v6, v7, v12, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->UTF8:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    const/4 v2, 0x5

    new-array v2, v2, [B

    fill-array-data v2, :array_30

    const-string v3, "e62e3d"

    invoke-static {v2, v3, v12}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x17

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_31

    new-array v5, v12, [Ljava/lang/String;

    const/16 v6, 0x8

    new-array v6, v6, [B

    fill-array-data v6, :array_32

    const-string v7, "813634"

    const v8, 0x4b4635c7    # 1.2989895E7f

    invoke-static {v6, v7, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->ASCII:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    const/4 v2, 0x4

    new-array v2, v2, [B

    fill-array-data v2, :array_33

    const-string v3, "40adcd"

    const/16 v4, -0x3b30

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x18

    const/16 v4, 0x1c

    invoke-direct {v0, v2, v3, v4}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->Big5:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    const/4 v2, 0x7

    new-array v2, v2, [B

    fill-array-data v2, :array_34

    const-string v3, "999c54"

    const-wide/32 v4, 0x65141c07

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x19

    const/16 v4, 0x1d

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    new-array v6, v15, [B

    fill-array-data v6, :array_35

    const-string v7, "e2b053"

    const-wide v8, -0x3e2958435ec00000L    # -1.520366213E9

    invoke-static {v6, v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    new-array v6, v15, [B

    fill-array-data v6, :array_36

    const-string v7, "a6c14c"

    invoke-static {v6, v7, v12, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v12

    const/4 v6, 0x2

    const/4 v7, 0x3

    new-array v7, v7, [B

    fill-array-data v7, :array_37

    const-string v8, "78fe23"

    const-wide v10, 0x41c84de837800000L    # 8.15517807E8

    invoke-static {v7, v8, v10, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->GB18030:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    new-array v2, v15, [B

    fill-array-data v2, :array_38

    const-string v3, "670ea3"

    const-wide/32 v4, 0x59cd2f97

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1a

    const/16 v4, 0x1e

    new-array v5, v12, [Ljava/lang/String;

    new-array v6, v15, [B

    fill-array-data v6, :array_39

    const-string v7, "f71751"

    const-wide v8, -0x3e34fdeaf2800000L    # -9.06242587E8

    invoke-static {v6, v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->EUC_KR:Lcom/google/zxing/common/CharacterSetECI;

    const/16 v0, 0x1b

    new-array v0, v0, [Lcom/google/zxing/common/CharacterSetECI;

    sget-object v2, Lcom/google/zxing/common/CharacterSetECI;->Cp437:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v2, v0, v1

    sget-object v2, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_1:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v2, v0, v12

    const/4 v2, 0x2

    sget-object v3, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_2:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v3, v0, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_3:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v3, v0, v2

    const/4 v2, 0x4

    sget-object v3, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_4:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v3, v0, v2

    const/4 v2, 0x5

    sget-object v3, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_5:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v3, v0, v2

    sget-object v2, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_6:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v2, v0, v15

    const/4 v2, 0x7

    sget-object v3, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_7:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v3, v0, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_8:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v3, v0, v2

    sget-object v2, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_9:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v2, v0, v14

    sget-object v2, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_10:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v2, v0, v13

    const/16 v2, 0xb

    sget-object v3, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_11:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v3, v0, v2

    const/16 v2, 0xc

    sget-object v3, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_13:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v3, v0, v2

    const/16 v2, 0xd

    sget-object v3, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_14:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v3, v0, v2

    const/16 v2, 0xe

    sget-object v3, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_15:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v3, v0, v2

    const/16 v2, 0xf

    sget-object v3, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_16:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v3, v0, v2

    const/16 v2, 0x10

    sget-object v3, Lcom/google/zxing/common/CharacterSetECI;->SJIS:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v3, v0, v2

    const/16 v2, 0x11

    sget-object v3, Lcom/google/zxing/common/CharacterSetECI;->Cp1250:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v3, v0, v2

    const/16 v2, 0x12

    sget-object v3, Lcom/google/zxing/common/CharacterSetECI;->Cp1251:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v3, v0, v2

    const/16 v2, 0x13

    sget-object v3, Lcom/google/zxing/common/CharacterSetECI;->Cp1252:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v3, v0, v2

    const/16 v2, 0x14

    sget-object v3, Lcom/google/zxing/common/CharacterSetECI;->Cp1256:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v3, v0, v2

    const/16 v2, 0x15

    sget-object v3, Lcom/google/zxing/common/CharacterSetECI;->UnicodeBigUnmarked:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v3, v0, v2

    const/16 v2, 0x16

    sget-object v3, Lcom/google/zxing/common/CharacterSetECI;->UTF8:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v3, v0, v2

    const/16 v2, 0x17

    sget-object v3, Lcom/google/zxing/common/CharacterSetECI;->ASCII:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v3, v0, v2

    const/16 v2, 0x18

    sget-object v3, Lcom/google/zxing/common/CharacterSetECI;->Big5:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v3, v0, v2

    const/16 v2, 0x19

    sget-object v3, Lcom/google/zxing/common/CharacterSetECI;->GB18030:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v3, v0, v2

    const/16 v2, 0x1a

    sget-object v3, Lcom/google/zxing/common/CharacterSetECI;->EUC_KR:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v3, v0, v2

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->$VALUES:[Lcom/google/zxing/common/CharacterSetECI;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->VALUE_TO_ECI:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->NAME_TO_ECI:Ljava/util/Map;

    invoke-static {}, Lcom/google/zxing/common/CharacterSetECI;->values()[Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    iget-object v6, v5, Lcom/google/zxing/common/CharacterSetECI;->values:[I

    array-length v7, v6

    move v0, v1

    :goto_1
    if-ge v0, v7, :cond_0

    aget v8, v6, v0

    sget-object v9, Lcom/google/zxing/common/CharacterSetECI;->VALUE_TO_ECI:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v9, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/google/zxing/common/CharacterSetECI;->NAME_TO_ECI:Ljava/util/Map;

    invoke-virtual {v5}, Lcom/google/zxing/common/CharacterSetECI;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v5, Lcom/google/zxing/common/CharacterSetECI;->otherEncodingNames:[Ljava/lang/String;

    array-length v7, v6

    move v0, v1

    :goto_2
    if-ge v0, v7, :cond_1

    aget-object v8, v6, v0

    sget-object v9, Lcom/google/zxing/common/CharacterSetECI;->NAME_TO_ECI:Ljava/util/Map;

    invoke-interface {v9, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    return-void

    nop

    :array_0
    .array-data 1
        0x22t
        0x42t
        0x5t
        0x57t
        0x7t
    .end array-data

    nop

    :array_1
    .array-data 4
        0x0
        0x2
    .end array-data

    :array_2
    .array-data 1
        0x2ft
        0x65t
        0x77t
        0x1t
        0xft
        0x53t
        0x5ft
        0x69t
        0x9t
    .end array-data

    nop

    :array_3
    .array-data 4
        0x1
        0x3
    .end array-data

    :array_4
    .array-data 1
        0x7at
        0x31t
        0x2bt
        0x1ft
        0x0t
        0x9t
        0x6t
        0x5bt
        0x49t
        0x3t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x2dt
        0x6bt
        0x7bt
        0x5dt
        0x5dt
        0x53t
        0x5dt
        0x67t
        0x6t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x7bt
        0x32t
        0x2bt
        0x49t
        0x8t
        0xet
        0x7t
        0x58t
        0x49t
        0x56t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x28t
        0x64t
        0x2at
        0x5dt
        0xbt
        0x51t
        0x58t
        0x68t
        0x56t
    .end array-data

    nop

    :array_8
    .array-data 1
        0x28t
        0x62t
        0x2ct
        0x14t
        0x5ct
        0xft
        0x54t
        0x8t
        0x4et
        0xat
    .end array-data

    nop

    :array_9
    .array-data 1
        0x7bt
        0x60t
        0x7ft
        0x5bt
        0x5dt
        0x5t
        0xbt
        0x6ct
        0x4t
    .end array-data

    nop

    :array_a
    .array-data 1
        0x2ct
        0x6bt
        0x79t
        0x14t
        0x9t
        0x5et
        0x50t
        0x1t
        0x1bt
        0xdt
    .end array-data

    nop

    :array_b
    .array-data 1
        0x2dt
        0x30t
        0x7dt
        0xat
        0x8t
        0xdt
        0x5dt
        0x3ct
        0x7t
    .end array-data

    nop

    :array_c
    .array-data 1
        0x7dt
        0x61t
        0x7dt
        0x1ct
        0x5ct
        0x5dt
        0x1t
        0xbt
        0x1ft
        0x4t
    .end array-data

    nop

    :array_d
    .array-data 1
        0x7at
        0x62t
        0x29t
        0x5et
        0xbt
        0x50t
        0xat
        0x6et
        0x50t
    .end array-data

    nop

    :array_e
    .array-data 1
        0x7at
        0x66t
        0x78t
        0x18t
        0xdt
        0x5at
        0x6t
        0xct
        0x1at
        0x3t
    .end array-data

    nop

    :array_f
    .array-data 1
        0x71t
        0x66t
        0x7bt
        0xdt
        0xdt
        0xdt
        0x1t
        0x6at
        0x3t
    .end array-data

    nop

    :array_10
    .array-data 1
        0x2ft
        0x6bt
        0x29t
        0x1et
        0x5bt
        0x5bt
        0x53t
        0x1t
        0x4bt
        0x4t
    .end array-data

    nop

    :array_11
    .array-data 1
        0x7dt
        0x61t
        0x2dt
        0x1t
        0x5dt
        0x54t
        0xdt
        0x6dt
        0x5at
    .end array-data

    nop

    :array_12
    .array-data 1
        0x7ft
        0x62t
        0x7ft
        0x14t
        0xet
        0x0t
        0x3t
        0x8t
        0x1dt
        0x1t
    .end array-data

    nop

    :array_13
    .array-data 1
        0x2dt
        0x61t
        0x29t
        0x0t
        0x8t
        0x50t
        0x5dt
        0x6dt
        0x5ft
    .end array-data

    nop

    :array_14
    .array-data 1
        0x7bt
        0x31t
        0x76t
        0x14t
        0xft
        0x59t
        0x7t
        0x5bt
        0x14t
        0x0t
    .end array-data

    nop

    :array_15
    .array-data 1
        0x7ft
        0x37t
        0x2et
        0x5at
        0xbt
        0x51t
        0xft
        0x3bt
        0x50t
        0x52t
    .end array-data

    nop

    :array_16
    .array-data 1
        0x7ct
        0x66t
        0x2dt
        0x1et
        0x8t
        0x59t
        0x0t
        0xct
        0x4ft
        0x2t
        0x0t
    .end array-data

    :array_17
    .array-data 1
        0x71t
        0x31t
        0x2bt
        0x5et
        0x5ct
        0xct
        0x1t
        0x3dt
        0x55t
        0x57t
    .end array-data

    nop

    :array_18
    .array-data 1
        0x71t
        0x6at
        0x2ct
        0x48t
        0xdt
        0xct
        0xdt
        0x0t
        0x4et
        0x54t
        0x4t
    .end array-data

    :array_19
    .array-data 1
        0x2ct
        0x6at
        0x7dt
        0xft
        0x5at
        0x50t
        0x5ct
        0x66t
        0x3t
        0x4t
    .end array-data

    nop

    :array_1a
    .array-data 1
        0x7at
        0x66t
        0x7ct
        0x15t
        0x1t
        0x5ct
        0x6t
        0xct
        0x1et
        0x9t
        0xat
    .end array-data

    :array_1b
    .array-data 1
        0x78t
        0x63t
        0x29t
        0x9t
        0xet
        0x1t
        0x8t
        0x6ft
        0x57t
        0x5t
    .end array-data

    nop

    :array_1c
    .array-data 1
        0x2bt
        0x67t
        0x2bt
        0x1ct
        0xdt
        0x5bt
        0x57t
        0xdt
        0x49t
        0x0t
        0x1t
    .end array-data

    :array_1d
    .array-data 1
        0x7ft
        0x35t
        0x29t
        0x5bt
        0xft
        0xct
        0xft
        0x39t
        0x57t
        0x56t
    .end array-data

    nop

    :array_1e
    .array-data 1
        0x2at
        0x67t
        0x7et
        0x1at
        0x5bt
        0x1t
        0x56t
        0xdt
        0x1ct
        0x6t
        0x56t
    .end array-data

    :array_1f
    .array-data 1
        0x7ft
        0x36t
        0x7et
        0xat
        0xft
        0x7t
        0xft
        0x3at
        0x0t
        0x4t
    .end array-data

    nop

    :array_20
    .array-data 1
        0x2dt
        0x65t
        0x77t
        0x18t
        0xct
        0xft
        0x51t
        0xft
        0x15t
        0x4t
        0x2t
    .end array-data

    :array_21
    .array-data 1
        0x64t
        0x7bt
        0x7ft
        0x6at
    .end array-data

    :array_22
    .array-data 1
        0x63t
        0x58t
        0x50t
        0x55t
        0x11t
        0x67t
        0x7at
        0x79t
        0x6at
    .end array-data

    nop

    :array_23
    .array-data 1
        0x26t
        0x44t
        0x55t
        0x53t
        0xdt
        0x3t
    .end array-data

    nop

    :array_24
    .array-data 1
        0x13t
        0xdt
        0x5at
        0x53t
        0x9t
        0x42t
        0x17t
        0x49t
        0x5t
        0x5t
        0x53t
        0x5t
    .end array-data

    :array_25
    .array-data 1
        0x71t
        0x12t
        0x57t
        0x7t
        0x56t
        0x55t
    .end array-data

    nop

    :array_26
    .array-data 1
        0x14t
        0x5et
        0x5ct
        0x53t
        0xct
        0x47t
        0x10t
        0x1at
        0x3t
        0x5t
        0x56t
        0x1t
    .end array-data

    :array_27
    .array-data 1
        0x73t
        0x45t
        0x0t
        0x1t
        0x53t
        0x3t
    .end array-data

    nop

    :array_28
    .array-data 1
        0x41t
        0x5ft
        0x5ct
        0x53t
        0x5dt
        0x13t
        0x45t
        0x1bt
        0x3t
        0x5t
        0x7t
        0x56t
    .end array-data

    :array_29
    .array-data 1
        0x7at
        0x49t
        0x52t
        0x3t
        0x1t
        0x53t
    .end array-data

    nop

    :array_2a
    .array-data 1
        0x40t
        0x59t
        0xft
        0x2t
        0x59t
        0x13t
        0x44t
        0x1dt
        0x50t
        0x54t
        0x3t
        0x52t
    .end array-data

    :array_2b
    .array-data 1
        0x67t
        0x5at
        0x8t
        0x50t
        0xbt
        0x1t
        0x57t
        0x76t
        0x8t
        0x54t
        0x31t
        0xbt
        0x5ft
        0x55t
        0x13t
        0x58t
        0x1t
        0x1t
    .end array-data

    nop

    :array_2c
    .array-data 1
        0x6dt
        0x35t
        0x72t
        0x4ft
        0x4t
        0x50t
        0x7at
        0x24t
    .end array-data

    :array_2d
    .array-data 1
        0x63t
        0x5et
        0x8t
        0x1t
        0x5ft
        0x55t
        0x53t
        0x72t
        0x8t
        0x5t
    .end array-data

    nop

    :array_2e
    .array-data 1
        0x36t
        0x63t
        0x24t
        0x5ct
    .end array-data

    :array_2f
    .array-data 1
        0x66t
        0x62t
        0x23t
        0x1ct
        0x0t
    .end array-data

    nop

    :array_30
    .array-data 1
        0x24t
        0x65t
        0x71t
        0x2ct
        0x7at
    .end array-data

    nop

    :array_31
    .array-data 4
        0x1b
        0xaa
    .end array-data

    :array_32
    .array-data 1
        0x6dt
        0x62t
        0x1et
        0x77t
        0x60t
        0x77t
        0x71t
        0x78t
    .end array-data

    :array_33
    .array-data 1
        0x76t
        0x59t
        0x6t
        0x51t
    .end array-data

    :array_34
    .array-data 1
        0x7et
        0x7bt
        0x8t
        0x5bt
        0x5t
        0x7t
        0x9t
    .end array-data

    :array_35
    .array-data 1
        0x22t
        0x70t
        0x50t
        0x3t
        0x4t
        0x1t
    .end array-data

    nop

    :array_36
    .array-data 1
        0x24t
        0x63t
        0x20t
        0x6et
        0x77t
        0x2dt
    .end array-data

    nop

    :array_37
    .array-data 1
        0x70t
        0x7at
        0x2dt
    .end array-data

    :array_38
    .array-data 1
        0x73t
        0x62t
        0x73t
        0x3at
        0x2at
        0x61t
    .end array-data

    nop

    :array_39
    .array-data 1
        0x23t
        0x62t
        0x72t
        0x1at
        0x7et
        0x63t
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [I

    aput p3, v0, v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;II[Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p3, v0, v1

    iput-object v0, p0, Lcom/google/zxing/common/CharacterSetECI;->values:[I

    iput-object p4, p0, Lcom/google/zxing/common/CharacterSetECI;->otherEncodingNames:[Ljava/lang/String;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;I[I[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/zxing/common/CharacterSetECI;->values:[I

    iput-object p4, p0, Lcom/google/zxing/common/CharacterSetECI;->otherEncodingNames:[Ljava/lang/String;

    return-void
.end method

.method public static getCharacterSetECIByName(Ljava/lang/String;)Lcom/google/zxing/common/CharacterSetECI;
    .locals 1

    sget-object v0, Lcom/google/zxing/common/CharacterSetECI;->NAME_TO_ECI:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/common/CharacterSetECI;

    return-object v0
.end method

.method public static getCharacterSetECIByValue(I)Lcom/google/zxing/common/CharacterSetECI;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    if-ltz p0, :cond_0

    const/16 v0, 0x384

    if-lt p0, v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_1
    sget-object v0, Lcom/google/zxing/common/CharacterSetECI;->VALUE_TO_ECI:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/common/CharacterSetECI;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/common/CharacterSetECI;
    .locals 1

    const-class v0, Lcom/google/zxing/common/CharacterSetECI;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/common/CharacterSetECI;

    return-object v0
.end method

.method public static values()[Lcom/google/zxing/common/CharacterSetECI;
    .locals 1

    sget-object v0, Lcom/google/zxing/common/CharacterSetECI;->$VALUES:[Lcom/google/zxing/common/CharacterSetECI;

    invoke-virtual {v0}, [Lcom/google/zxing/common/CharacterSetECI;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/common/CharacterSetECI;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 2

    iget-object v0, p0, Lcom/google/zxing/common/CharacterSetECI;->values:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method
