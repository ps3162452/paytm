.class final Lokhttp3/internal/http2/Hpack;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http2/Hpack$Reader;,
        Lokhttp3/internal/http2/Hpack$Writer;
    }
.end annotation


# static fields
.field static final NAME_TO_FIRST_INDEX:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lokio/ByteString;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final PREFIX_4_BITS:I = 0xf

.field private static final PREFIX_5_BITS:I = 0x1f

.field private static final PREFIX_6_BITS:I = 0x3f

.field private static final PREFIX_7_BITS:I = 0x7f

.field static final STATIC_HEADER_TABLE:[Lokhttp3/internal/http2/Header;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/16 v12, 0xd

    const/4 v11, 0x4

    const/4 v10, 0x0

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/16 v0, 0x3d

    new-array v0, v0, [Lokhttp3/internal/http2/Header;

    new-instance v1, Lokhttp3/internal/http2/Header;

    sget-object v2, Lokhttp3/internal/http2/Header;->TARGET_AUTHORITY:Lokio/ByteString;

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v1, v0, v10

    new-instance v1, Lokhttp3/internal/http2/Header;

    sget-object v2, Lokhttp3/internal/http2/Header;->TARGET_METHOD:Lokio/ByteString;

    new-array v3, v9, [B

    fill-array-data v3, :array_0

    const-string v4, "0cb58c"

    const-wide/32 v6, -0x4b678624

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v1, v0, v8

    const/4 v1, 0x2

    new-instance v2, Lokhttp3/internal/http2/Header;

    sget-object v3, Lokhttp3/internal/http2/Header;->TARGET_METHOD:Lokio/ByteString;

    new-array v4, v11, [B

    fill-array-data v4, :array_1

    const-string v5, "ffc146"

    invoke-static {v4, v5, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v2, v0, v1

    new-instance v1, Lokhttp3/internal/http2/Header;

    sget-object v2, Lokhttp3/internal/http2/Header;->TARGET_PATH:Lokio/ByteString;

    new-array v3, v8, [B

    const/16 v4, 0x4e

    aput-byte v4, v3, v10

    const-string v4, "af1ec0"

    invoke-static {v3, v4, v8, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v1, v0, v9

    new-instance v1, Lokhttp3/internal/http2/Header;

    sget-object v2, Lokhttp3/internal/http2/Header;->TARGET_PATH:Lokio/ByteString;

    const/16 v3, 0xb

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v4, "b55cc2"

    const-wide/32 v6, 0x37b9907

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v1, v0, v11

    const/4 v1, 0x5

    new-instance v2, Lokhttp3/internal/http2/Header;

    sget-object v3, Lokhttp3/internal/http2/Header;->TARGET_SCHEME:Lokio/ByteString;

    new-array v4, v11, [B

    fill-array-data v4, :array_3

    const-string v5, "06aee6"

    const v6, -0x3202e646

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lokhttp3/internal/http2/Header;

    sget-object v3, Lokhttp3/internal/http2/Header;->TARGET_SCHEME:Lokio/ByteString;

    const/4 v4, 0x5

    new-array v4, v4, [B

    fill-array-data v4, :array_4

    const-string v5, "665b43"

    invoke-static {v4, v5, v10, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lokhttp3/internal/http2/Header;

    sget-object v3, Lokhttp3/internal/http2/Header;->RESPONSE_STATUS:Lokio/ByteString;

    new-array v4, v9, [B

    fill-array-data v4, :array_5

    const-string v5, "a353c5"

    const-wide v6, 0x41da406233c00000L    # 1.761708239E9

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lokhttp3/internal/http2/Header;

    sget-object v3, Lokhttp3/internal/http2/Header;->RESPONSE_STATUS:Lokio/ByteString;

    new-array v4, v9, [B

    fill-array-data v4, :array_6

    const-string v5, "a3ad76"

    const-wide/32 v6, -0x56b5a5b5

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lokhttp3/internal/http2/Header;

    sget-object v3, Lokhttp3/internal/http2/Header;->RESPONSE_STATUS:Lokio/ByteString;

    new-array v4, v9, [B

    fill-array-data v4, :array_7

    const-string v5, "f53bdf"

    const v6, 0x4ee242db

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lokhttp3/internal/http2/Header;

    sget-object v3, Lokhttp3/internal/http2/Header;->RESPONSE_STATUS:Lokio/ByteString;

    new-array v4, v9, [B

    fill-array-data v4, :array_8

    const-string v5, "214f6d"

    const v6, -0x3170a9c4

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lokhttp3/internal/http2/Header;

    sget-object v3, Lokhttp3/internal/http2/Header;->RESPONSE_STATUS:Lokio/ByteString;

    new-array v4, v9, [B

    fill-array-data v4, :array_9

    const-string v5, "467221"

    const-wide/32 v6, 0x2cec52db

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lokhttp3/internal/http2/Header;

    sget-object v3, Lokhttp3/internal/http2/Header;->RESPONSE_STATUS:Lokio/ByteString;

    new-array v4, v9, [B

    fill-array-data v4, :array_a

    const-string v5, "131a6c"

    const/16 v6, -0x3a5c

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v2, v0, v1

    new-instance v1, Lokhttp3/internal/http2/Header;

    sget-object v2, Lokhttp3/internal/http2/Header;->RESPONSE_STATUS:Lokio/ByteString;

    new-array v3, v9, [B

    fill-array-data v3, :array_b

    const-string v4, "0000d5"

    const v5, -0x31204a98

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v1, v0, v12

    const/16 v1, 0xe

    new-instance v2, Lokhttp3/internal/http2/Header;

    const/16 v3, 0xe

    new-array v3, v3, [B

    fill-array-data v3, :array_c

    const-string v4, "3be3a9"

    invoke-static {v3, v4, v8, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lokhttp3/internal/http2/Header;

    const/16 v3, 0xf

    new-array v3, v3, [B

    fill-array-data v3, :array_d

    const-string v4, "6c71e3"

    const/16 v5, 0x3d2f

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v12, [B

    fill-array-data v4, :array_e

    const-string v5, "c96afa"

    const-wide/32 v6, -0x1f13f74d

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lokhttp3/internal/http2/Header;

    const/16 v3, 0xf

    new-array v3, v3, [B

    fill-array-data v3, :array_f

    const-string v4, "31f266"

    const-wide v6, 0x41cc2ee512000000L    # 9.45670692E8

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lokhttp3/internal/http2/Header;

    new-array v3, v12, [B

    fill-array-data v3, :array_10

    const-string v4, "b33a6e"

    const/16 v5, 0x7a28

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lokhttp3/internal/http2/Header;

    const/4 v3, 0x6

    new-array v3, v3, [B

    fill-array-data v3, :array_11

    const-string v4, "4e317d"

    const v5, -0x31c41818    # -7.881344E8f

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Lokhttp3/internal/http2/Header;

    const/16 v3, 0x1b

    new-array v3, v3, [B

    fill-array-data v3, :array_12

    const-string v4, "728b5c"

    const-wide/32 v6, -0x42eb37cf

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Lokhttp3/internal/http2/Header;

    new-array v3, v9, [B

    fill-array-data v3, :array_13

    const-string v4, "6340c8"

    const/16 v5, 0x75a7

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Lokhttp3/internal/http2/Header;

    const/4 v3, 0x5

    new-array v3, v3, [B

    fill-array-data v3, :array_14

    const-string v4, "399569"

    const-wide v6, 0x4198d2df30000000L    # 1.0411822E8

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Lokhttp3/internal/http2/Header;

    new-array v3, v12, [B

    fill-array-data v3, :array_15

    const-string v4, "9eb735"

    const-wide v6, 0x41bc06e99d000000L    # 4.70215069E8

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Lokhttp3/internal/http2/Header;

    new-array v3, v12, [B

    fill-array-data v3, :array_16

    const-string v4, "b802e5"

    const/16 v5, 0x4bbf

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Lokhttp3/internal/http2/Header;

    const/16 v3, 0x13

    new-array v3, v3, [B

    fill-array-data v3, :array_17

    const-string v4, "8304df"

    const-wide v6, 0x41aaa0d64c000000L    # 2.23374118E8

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Lokhttp3/internal/http2/Header;

    const/16 v3, 0x10

    new-array v3, v3, [B

    fill-array-data v3, :array_18

    const-string v4, "94be62"

    invoke-static {v3, v4, v8, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Lokhttp3/internal/http2/Header;

    const/16 v3, 0x10

    new-array v3, v3, [B

    fill-array-data v3, :array_19

    const-string v4, "b18ecf"

    invoke-static {v3, v4, v8, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Lokhttp3/internal/http2/Header;

    const/16 v3, 0xe

    new-array v3, v3, [B

    fill-array-data v3, :array_1a

    const-string v4, "6b086c"

    invoke-static {v3, v4, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Lokhttp3/internal/http2/Header;

    const/16 v3, 0x10

    new-array v3, v3, [B

    fill-array-data v3, :array_1b

    const-string v4, "e47f91"

    const-wide/32 v6, 0x666f5484

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Lokhttp3/internal/http2/Header;

    new-array v3, v12, [B

    fill-array-data v3, :array_1c

    const-string v4, "9a7b22"

    const/16 v5, 0x3c87

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-instance v2, Lokhttp3/internal/http2/Header;

    const/16 v3, 0xc

    new-array v3, v3, [B

    fill-array-data v3, :array_1d

    const-string v4, "a00944"

    const/16 v5, 0x2e9e

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-instance v2, Lokhttp3/internal/http2/Header;

    const/4 v3, 0x6

    new-array v3, v3, [B

    fill-array-data v3, :array_1e

    const-string v4, "1deef8"

    const/16 v5, 0x1f2a

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-instance v2, Lokhttp3/internal/http2/Header;

    new-array v3, v11, [B

    fill-array-data v3, :array_1f

    const-string v4, "1562f6"

    const-wide/32 v6, 0x73e6740e

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-instance v2, Lokhttp3/internal/http2/Header;

    new-array v3, v11, [B

    fill-array-data v3, :array_20

    const-string v4, "3d24c3"

    invoke-static {v3, v4, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-instance v2, Lokhttp3/internal/http2/Header;

    const/4 v3, 0x6

    new-array v3, v3, [B

    fill-array-data v3, :array_21

    const-string v4, "e58bad"

    const-wide v6, 0x41dfb5dbff000000L    # 2.128048124E9

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-instance v2, Lokhttp3/internal/http2/Header;

    const/4 v3, 0x7

    new-array v3, v3, [B

    fill-array-data v3, :array_22

    const-string v4, "3306e4"

    const-wide/32 v6, -0x188fae8a

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-instance v2, Lokhttp3/internal/http2/Header;

    new-array v3, v11, [B

    fill-array-data v3, :array_23

    const-string v4, "5810d0"

    const v5, -0x31fa9f02

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-instance v2, Lokhttp3/internal/http2/Header;

    new-array v3, v11, [B

    fill-array-data v3, :array_24

    const-string v4, "951267"

    const v5, -0x31429190

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-instance v2, Lokhttp3/internal/http2/Header;

    const/16 v3, 0x8

    new-array v3, v3, [B

    fill-array-data v3, :array_25

    const-string v4, "3fb78a"

    invoke-static {v3, v4, v8, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-instance v2, Lokhttp3/internal/http2/Header;

    const/16 v3, 0x11

    new-array v3, v3, [B

    fill-array-data v3, :array_26

    const-string v4, "1be8d5"

    const-wide/32 v6, 0x4311cceb

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-instance v2, Lokhttp3/internal/http2/Header;

    new-array v3, v12, [B

    fill-array-data v3, :array_27

    const-string v4, "4a000e"

    const v5, -0x315a9bf2

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-instance v2, Lokhttp3/internal/http2/Header;

    const/16 v3, 0x8

    new-array v3, v3, [B

    fill-array-data v3, :array_28

    const-string v4, "1912a0"

    const/16 v5, 0x2359

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-instance v2, Lokhttp3/internal/http2/Header;

    const/16 v3, 0x13

    new-array v3, v3, [B

    fill-array-data v3, :array_29

    const-string v4, "13e0a6"

    invoke-static {v3, v4, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-instance v2, Lokhttp3/internal/http2/Header;

    new-array v3, v12, [B

    fill-array-data v3, :array_2a

    const-string v4, "cbf844"

    const-wide v6, -0x3e23f293bac00000L    # -1.882566933E9

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-instance v2, Lokhttp3/internal/http2/Header;

    new-array v3, v11, [B

    fill-array-data v3, :array_2b

    const-string v4, "4cfb76"

    const-wide/32 v6, -0x73812007

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-instance v2, Lokhttp3/internal/http2/Header;

    const/16 v3, 0x8

    new-array v3, v3, [B

    fill-array-data v3, :array_2c

    const-string v4, "3b2ce8"

    const/16 v5, -0x2f90

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-instance v2, Lokhttp3/internal/http2/Header;

    const/16 v3, 0xc

    new-array v3, v3, [B

    fill-array-data v3, :array_2d

    const-string v4, "e9b429"

    const v5, 0x4dc50b0c    # 4.1322944E8f

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-instance v2, Lokhttp3/internal/http2/Header;

    const/16 v3, 0x12

    new-array v3, v3, [B

    fill-array-data v3, :array_2e

    const-string v4, "32834b"

    invoke-static {v3, v4, v10, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-instance v2, Lokhttp3/internal/http2/Header;

    const/16 v3, 0x13

    new-array v3, v3, [B

    fill-array-data v3, :array_2f

    const-string v4, "361a0b"

    const/16 v5, 0x71ef

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-instance v2, Lokhttp3/internal/http2/Header;

    const/4 v3, 0x5

    new-array v3, v3, [B

    fill-array-data v3, :array_30

    const-string v4, "6065c4"

    const/16 v5, -0x1671

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-instance v2, Lokhttp3/internal/http2/Header;

    const/4 v3, 0x7

    new-array v3, v3, [B

    fill-array-data v3, :array_31

    const-string v4, "cbd9c7"

    invoke-static {v3, v4, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-instance v2, Lokhttp3/internal/http2/Header;

    const/4 v3, 0x7

    new-array v3, v3, [B

    fill-array-data v3, :array_32

    const-string v4, "9c297c"

    invoke-static {v3, v4, v10, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-instance v2, Lokhttp3/internal/http2/Header;

    const/16 v3, 0xb

    new-array v3, v3, [B

    fill-array-data v3, :array_33

    const-string v4, "2ad05a"

    invoke-static {v3, v4, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-instance v2, Lokhttp3/internal/http2/Header;

    const/4 v3, 0x6

    new-array v3, v3, [B

    fill-array-data v3, :array_34

    const-string v4, "af5158"

    const/16 v5, -0x6cb9

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-instance v2, Lokhttp3/internal/http2/Header;

    const/16 v3, 0xa

    new-array v3, v3, [B

    fill-array-data v3, :array_35

    const-string v4, "f63c6f"

    const-wide/32 v6, -0x41d440d

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-instance v2, Lokhttp3/internal/http2/Header;

    const/16 v3, 0x19

    new-array v3, v3, [B

    fill-array-data v3, :array_36

    const-string v4, "05194d"

    const-wide v6, -0x3e295deabe000000L    # -1.518884104E9

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-instance v2, Lokhttp3/internal/http2/Header;

    const/16 v3, 0x11

    new-array v3, v3, [B

    fill-array-data v3, :array_37

    const-string v4, "f4a4a2"

    invoke-static {v3, v4, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-instance v2, Lokhttp3/internal/http2/Header;

    const/16 v3, 0xa

    new-array v3, v3, [B

    fill-array-data v3, :array_38

    const-string v4, "ddfbc2"

    const/16 v5, 0x800

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-instance v2, Lokhttp3/internal/http2/Header;

    new-array v3, v11, [B

    fill-array-data v3, :array_39

    const-string v4, "a3d3eb"

    const v5, -0x31badf8e

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-instance v2, Lokhttp3/internal/http2/Header;

    new-array v3, v9, [B

    fill-array-data v3, :array_3a

    const-string v4, "e3715a"

    invoke-static {v3, v4, v8, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-instance v2, Lokhttp3/internal/http2/Header;

    const/16 v3, 0x10

    new-array v3, v3, [B

    fill-array-data v3, :array_3b

    const-string v4, "b97520"

    const-wide v6, 0x41c416845d800000L    # 6.74039995E8

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    sput-object v0, Lokhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lokhttp3/internal/http2/Header;

    invoke-static {}, Lokhttp3/internal/http2/Hpack;->nameToFirstIndex()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/Hpack;->NAME_TO_FIRST_INDEX:Ljava/util/Map;

    return-void

    nop

    :array_0
    .array-data 1
        0x77t
        0x26t
        0x36t
    .end array-data

    :array_1
    .array-data 1
        0x36t
        0x29t
        0x30t
        0x65t
    .end array-data

    :array_2
    .array-data 1
        0x4dt
        0x5ct
        0x5bt
        0x7t
        0x6t
        0x4at
        0x4ct
        0x5dt
        0x41t
        0xet
        0xft
    .end array-data

    :array_3
    .array-data 1
        0x58t
        0x42t
        0x15t
        0x15t
    .end array-data

    :array_4
    .array-data 1
        0x5et
        0x42t
        0x41t
        0x12t
        0x47t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x53t
        0x3t
        0x5t
    .end array-data

    :array_6
    .array-data 1
        0x53t
        0x3t
        0x55t
    .end array-data

    :array_7
    .array-data 1
        0x54t
        0x5t
        0x5t
    .end array-data

    :array_8
    .array-data 1
        0x1t
        0x1t
        0x0t
    .end array-data

    :array_9
    .array-data 1
        0x0t
        0x6t
        0x7t
    .end array-data

    :array_a
    .array-data 1
        0x5t
        0x3t
        0x5t
    .end array-data

    :array_b
    .array-data 1
        0x5t
        0x0t
        0x0t
    .end array-data

    :array_c
    .array-data 1
        0x52t
        0x1t
        0x6t
        0x56t
        0x11t
        0x4dt
        0x1et
        0x1t
        0xdt
        0x52t
        0x13t
        0x4at
        0x56t
        0x16t
    .end array-data

    nop

    :array_d
    .array-data 1
        0x57t
        0x0t
        0x54t
        0x54t
        0x15t
        0x47t
        0x1bt
        0x6t
        0x59t
        0x52t
        0xat
        0x57t
        0x5ft
        0xdt
        0x50t
    .end array-data

    :array_e
    .array-data 1
        0x4t
        0x43t
        0x5ft
        0x11t
        0x4at
        0x41t
        0x7t
        0x5ct
        0x50t
        0xdt
        0x7t
        0x15t
        0x6t
    .end array-data

    nop

    :array_f
    .array-data 1
        0x52t
        0x52t
        0x5t
        0x57t
        0x46t
        0x42t
        0x1et
        0x5dt
        0x7t
        0x5ct
        0x51t
        0x43t
        0x52t
        0x56t
        0x3t
    .end array-data

    :array_10
    .array-data 1
        0x3t
        0x50t
        0x50t
        0x4t
        0x46t
        0x11t
        0x4ft
        0x41t
        0x52t
        0xft
        0x51t
        0x0t
        0x11t
    .end array-data

    nop

    :array_11
    .array-data 1
        0x55t
        0x6t
        0x50t
        0x54t
        0x47t
        0x10t
    .end array-data

    nop

    :array_12
    .array-data 1
        0x56t
        0x51t
        0x5bt
        0x7t
        0x46t
        0x10t
        0x1at
        0x51t
        0x57t
        0xct
        0x41t
        0x11t
        0x58t
        0x5et
        0x15t
        0x3t
        0x59t
        0xft
        0x58t
        0x45t
        0x15t
        0xdt
        0x47t
        0xat
        0x50t
        0x5bt
        0x56t
    .end array-data

    :array_13
    .array-data 1
        0x57t
        0x54t
        0x51t
    .end array-data

    :array_14
    .array-data 1
        0x52t
        0x55t
        0x55t
        0x5at
        0x41t
    .end array-data

    nop

    :array_15
    .array-data 1
        0x58t
        0x10t
        0x16t
        0x5ft
        0x5ct
        0x47t
        0x50t
        0x1ft
        0x3t
        0x43t
        0x5at
        0x5at
        0x57t
    .end array-data

    nop

    :array_16
    .array-data 1
        0x1t
        0x59t
        0x53t
        0x5at
        0x0t
        0x18t
        0x1t
        0x57t
        0x5et
        0x46t
        0x17t
        0x5at
        0xet
    .end array-data

    nop

    :array_17
    .array-data 1
        0x5bt
        0x5ct
        0x5et
        0x40t
        0x1t
        0x8t
        0x4ct
        0x1et
        0x54t
        0x5dt
        0x17t
        0x16t
        0x57t
        0x40t
        0x59t
        0x40t
        0xdt
        0x9t
        0x56t
    .end array-data

    :array_18
    .array-data 1
        0x5at
        0x5bt
        0xct
        0x11t
        0x53t
        0x5ct
        0x4dt
        0x19t
        0x7t
        0xbt
        0x55t
        0x5dt
        0x5dt
        0x5dt
        0xct
        0x2t
    .end array-data

    :array_19
    .array-data 1
        0x1t
        0x5et
        0x56t
        0x11t
        0x6t
        0x8t
        0x16t
        0x1ct
        0x54t
        0x4t
        0xdt
        0x1t
        0x17t
        0x50t
        0x5ft
        0x0t
    .end array-data

    :array_1a
    .array-data 1
        0x55t
        0xdt
        0x5et
        0x4ct
        0x53t
        0xdt
        0x42t
        0x4ft
        0x5ct
        0x5dt
        0x58t
        0x4t
        0x42t
        0xat
    .end array-data

    nop

    :array_1b
    .array-data 1
        0x6t
        0x5bt
        0x59t
        0x12t
        0x5ct
        0x5ft
        0x11t
        0x19t
        0x5bt
        0x9t
        0x5at
        0x50t
        0x11t
        0x5dt
        0x58t
        0x8t
    .end array-data

    :array_1c
    .array-data 1
        0x5at
        0xet
        0x59t
        0x16t
        0x57t
        0x5ct
        0x4dt
        0x4ct
        0x45t
        0x3t
        0x5ct
        0x55t
        0x5ct
    .end array-data

    nop

    :array_1d
    .array-data 1
        0x2t
        0x5ft
        0x5et
        0x4dt
        0x51t
        0x5at
        0x15t
        0x1dt
        0x44t
        0x40t
        0x44t
        0x51t
    .end array-data

    :array_1e
    .array-data 1
        0x52t
        0xbt
        0xat
        0xet
        0xft
        0x5dt
    .end array-data

    nop

    :array_1f
    .array-data 1
        0x55t
        0x54t
        0x42t
        0x57t
    .end array-data

    :array_20
    .array-data 1
        0x56t
        0x10t
        0x53t
        0x53t
    .end array-data

    :array_21
    .array-data 1
        0x0t
        0x4dt
        0x48t
        0x7t
        0x2t
        0x10t
    .end array-data

    nop

    :array_22
    .array-data 1
        0x56t
        0x4bt
        0x40t
        0x5ft
        0x17t
        0x51t
        0x40t
    .end array-data

    :array_23
    .array-data 1
        0x53t
        0x4at
        0x5et
        0x5dt
    .end array-data

    :array_24
    .array-data 1
        0x51t
        0x5at
        0x42t
        0x46t
    .end array-data

    :array_25
    .array-data 1
        0x5at
        0x0t
        0x4ft
        0x5at
        0x59t
        0x15t
        0x50t
        0xet
    .end array-data

    :array_26
    .array-data 1
        0x58t
        0x4t
        0x48t
        0x55t
        0xbt
        0x51t
        0x58t
        0x4t
        0xct
        0x5dt
        0x0t
        0x18t
        0x42t
        0xbt
        0xbt
        0x5bt
        0x1t
    .end array-data

    nop

    :array_27
    .array-data 1
        0x5dt
        0x7t
        0x1dt
        0x5et
        0x5ft
        0xbt
        0x51t
        0x4ct
        0x5dt
        0x51t
        0x44t
        0x6t
        0x5ct
    .end array-data

    nop

    :array_28
    .array-data 1
        0x58t
        0x5ft
        0x1ct
        0x40t
        0x0t
        0x5et
        0x56t
        0x5ct
    .end array-data

    :array_29
    .array-data 1
        0x58t
        0x55t
        0x48t
        0x45t
        0xft
        0x5bt
        0x5et
        0x57t
        0xct
        0x56t
        0x8t
        0x53t
        0x55t
        0x1et
        0x16t
        0x59t
        0xft
        0x55t
        0x54t
    .end array-data

    :array_2a
    .array-data 1
        0xft
        0x3t
        0x15t
        0x4ct
        0x19t
        0x59t
        0xct
        0x6t
        0xft
        0x5et
        0x5dt
        0x51t
        0x7t
    .end array-data

    nop

    :array_2b
    .array-data 1
        0x58t
        0xat
        0x8t
        0x9t
    .end array-data

    :array_2c
    .array-data 1
        0x5ft
        0xdt
        0x51t
        0x2t
        0x11t
        0x51t
        0x5ct
        0xct
    .end array-data

    :array_2d
    .array-data 1
        0x8t
        0x58t
        0x1at
        0x19t
        0x54t
        0x56t
        0x17t
        0x4et
        0x3t
        0x46t
        0x56t
        0x4at
    .end array-data

    :array_2e
    .array-data 1
        0x43t
        0x40t
        0x57t
        0x4bt
        0x4dt
        0x4ft
        0x52t
        0x47t
        0x4ct
        0x5bt
        0x51t
        0xct
        0x47t
        0x5bt
        0x5bt
        0x52t
        0x40t
        0x7t
    .end array-data

    nop

    :array_2f
    .array-data 1
        0x43t
        0x44t
        0x5et
        0x19t
        0x49t
        0x4ft
        0x52t
        0x43t
        0x45t
        0x9t
        0x5ft
        0x10t
        0x5at
        0x4ct
        0x50t
        0x15t
        0x59t
        0xdt
        0x5dt
    .end array-data

    :array_30
    .array-data 1
        0x44t
        0x51t
        0x58t
        0x52t
        0x6t
    .end array-data

    nop

    :array_31
    .array-data 1
        0x11t
        0x7t
        0x2t
        0x5ct
        0x11t
        0x52t
        0x11t
    .end array-data

    :array_32
    .array-data 1
        0x4bt
        0x6t
        0x54t
        0x4bt
        0x52t
        0x10t
        0x51t
    .end array-data

    :array_33
    .array-data 1
        0x40t
        0x4t
        0x10t
        0x42t
        0x4ct
        0x4ct
        0x53t
        0x7t
        0x10t
        0x55t
        0x47t
    .end array-data

    :array_34
    .array-data 1
        0x12t
        0x3t
        0x47t
        0x47t
        0x50t
        0x4at
    .end array-data

    nop

    :array_35
    .array-data 1
        0x15t
        0x53t
        0x47t
        0x4et
        0x55t
        0x9t
        0x9t
        0x5dt
        0x5at
        0x6t
    .end array-data

    nop

    :array_36
    .array-data 1
        0x43t
        0x41t
        0x43t
        0x50t
        0x57t
        0x10t
        0x1dt
        0x41t
        0x43t
        0x58t
        0x5at
        0x17t
        0x40t
        0x5at
        0x43t
        0x4dt
        0x19t
        0x17t
        0x55t
        0x56t
        0x44t
        0x4bt
        0x5dt
        0x10t
        0x49t
    .end array-data

    nop

    :array_37
    .array-data 1
        0x12t
        0x46t
        0x0t
        0x5at
        0x12t
        0x54t
        0x3t
        0x46t
        0x4ct
        0x51t
        0xft
        0x51t
        0x9t
        0x50t
        0x8t
        0x5at
        0x6t
    .end array-data

    nop

    :array_38
    .array-data 1
        0x11t
        0x17t
        0x3t
        0x10t
        0x4et
        0x53t
        0x3t
        0x1t
        0x8t
        0x16t
    .end array-data

    nop

    :array_39
    .array-data 1
        0x17t
        0x52t
        0x16t
        0x4at
    .end array-data

    :array_3a
    .array-data 1
        0x13t
        0x5at
        0x56t
    .end array-data

    :array_3b
    .array-data 1
        0x15t
        0x4et
        0x40t
        0x18t
        0x53t
        0x45t
        0x16t
        0x51t
        0x52t
        0x5bt
        0x46t
        0x59t
        0x1t
        0x58t
        0x43t
        0x50t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkLowercase(Lokio/ByteString;)Lokio/ByteString;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lokio/ByteString;->getByte(I)B

    move-result v2

    const/16 v3, 0x41

    if-lt v2, v3, :cond_0

    const/16 v3, 0x5a

    if-gt v2, v3, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x34

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "57374c"

    const/16 v4, -0x1399

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0

    nop

    :array_0
    .array-data 1
        0x65t
        0x65t
        0x7ct
        0x63t
        0x7bt
        0x20t
        0x7at
        0x7bt
        0x6ct
        0x72t
        0x66t
        0x31t
        0x7at
        0x65t
        0x13t
        0x45t
        0x51t
        0x10t
        0x45t
        0x58t
        0x5dt
        0x44t
        0x51t
        0x43t
        0x58t
        0x56t
        0x5ft
        0x51t
        0x5bt
        0x11t
        0x58t
        0x52t
        0x57t
        0xdt
        0x14t
        0xet
        0x5ct
        0x4ft
        0x56t
        0x53t
        0x14t
        0x0t
        0x54t
        0x44t
        0x56t
        0x17t
        0x5at
        0x2t
        0x58t
        0x52t
        0x9t
        0x17t
    .end array-data
.end method

.method private static nameToFirstIndex()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lokio/ByteString;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/LinkedHashMap;

    sget-object v0, Lokhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lokhttp3/internal/http2/Header;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lokhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lokhttp3/internal/http2/Header;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    sget-object v2, Lokhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lokhttp3/internal/http2/Header;

    aget-object v2, v2, v0

    iget-object v2, v2, Lokhttp3/internal/http2/Header;->name:Lokio/ByteString;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lokhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lokhttp3/internal/http2/Header;

    aget-object v2, v2, v0

    iget-object v2, v2, Lokhttp3/internal/http2/Header;->name:Lokio/ByteString;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
