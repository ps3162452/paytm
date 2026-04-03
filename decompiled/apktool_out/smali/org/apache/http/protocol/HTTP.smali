.class public final Lorg/apache/http/protocol/HTTP;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ASCII:Ljava/lang/String;

.field public static final CHARSET_PARAM:Ljava/lang/String;

.field public static final CHUNK_CODING:Ljava/lang/String;

.field public static final CONN_CLOSE:Ljava/lang/String;

.field public static final CONN_DIRECTIVE:Ljava/lang/String;

.field public static final CONN_KEEP_ALIVE:Ljava/lang/String;

.field public static final CONTENT_ENCODING:Ljava/lang/String;

.field public static final CONTENT_LEN:Ljava/lang/String;

.field public static final CONTENT_TYPE:Ljava/lang/String;

.field public static final CR:I = 0xd

.field public static final DATE_HEADER:Ljava/lang/String;

.field public static final DEFAULT_CONTENT_CHARSET:Ljava/lang/String;

.field public static final DEFAULT_CONTENT_TYPE:Ljava/lang/String;

.field public static final DEFAULT_PROTOCOL_CHARSET:Ljava/lang/String;

.field public static final EXPECT_CONTINUE:Ljava/lang/String;

.field public static final EXPECT_DIRECTIVE:Ljava/lang/String;

.field public static final HT:I = 0x9

.field public static final IDENTITY_CODING:Ljava/lang/String;

.field public static final ISO_8859_1:Ljava/lang/String;

.field public static final LF:I = 0xa

.field public static final OCTET_STREAM_TYPE:Ljava/lang/String;

.field public static final PLAIN_TEXT_TYPE:Ljava/lang/String;

.field public static final SERVER_HEADER:Ljava/lang/String;

.field public static final SP:I = 0x20

.field public static final TARGET_HOST:Ljava/lang/String;

.field public static final TRANSFER_ENCODING:Ljava/lang/String;

.field public static final USER_AGENT:Ljava/lang/String;

.field public static final US_ASCII:Ljava/lang/String;

.field public static final UTF_16:Ljava/lang/String;

.field public static final UTF_8:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x6

    const/4 v7, 0x5

    const/16 v6, 0xa

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-array v0, v7, [B

    fill-array-data v0, :array_0

    const-string v1, "ff0045"

    const-wide v2, -0x3e2a893974400000L    # -1.440422447E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/protocol/HTTP;->ASCII:Ljava/lang/String;

    new-array v0, v6, [B

    fill-array-data v0, :array_1

    const-string v1, "953ade"

    const/16 v2, 0x3a48

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/protocol/HTTP;->CHARSET_PARAM:Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "aa4f79"

    const/16 v2, -0x47bf

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/protocol/HTTP;->CHUNK_CODING:Ljava/lang/String;

    new-array v0, v7, [B

    fill-array-data v0, :array_3

    const-string v1, "673451"

    const v2, 0x4d4a5f4c    # 2.1220269E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/protocol/HTTP;->CONN_CLOSE:Ljava/lang/String;

    new-array v0, v6, [B

    fill-array-data v0, :array_4

    const-string v1, "e72c80"

    const-wide v2, 0x41bb7b6a50000000L    # 4.61072976E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/protocol/HTTP;->CONN_DIRECTIVE:Ljava/lang/String;

    new-array v0, v6, [B

    fill-array-data v0, :array_5

    const-string v1, "f4ea9e"

    const-wide/32 v2, -0x6d0938b

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/protocol/HTTP;->CONN_KEEP_ALIVE:Ljava/lang/String;

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_6

    const-string v1, "d6002a"

    const v2, -0x314555ff

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/protocol/HTTP;->CONTENT_ENCODING:Ljava/lang/String;

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_7

    const-string v1, "42fd6b"

    invoke-static {v0, v1, v5, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/protocol/HTTP;->CONTENT_LEN:Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    const-string v1, "2967d5"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/protocol/HTTP;->CONTENT_TYPE:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_9

    const-string v1, "354109"

    const-wide v2, 0x41dba16324000000L    # 1.854246032E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/protocol/HTTP;->DATE_HEADER:Ljava/lang/String;

    new-array v0, v6, [B

    fill-array-data v0, :array_a

    const-string v1, "4f51c8"

    invoke-static {v0, v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/protocol/HTTP;->DEFAULT_CONTENT_CHARSET:Ljava/lang/String;

    const/16 v0, 0x18

    new-array v0, v0, [B

    fill-array-data v0, :array_b

    const-string v1, "fb02f4"

    invoke-static {v0, v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/protocol/HTTP;->DEFAULT_CONTENT_TYPE:Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_c

    const-string v1, "7b67e7"

    invoke-static {v0, v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/protocol/HTTP;->DEFAULT_PROTOCOL_CHARSET:Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_d

    const-string v1, "1db958"

    const v2, 0x4afa6298    # 8204620.0f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/protocol/HTTP;->EXPECT_CONTINUE:Ljava/lang/String;

    new-array v0, v8, [B

    fill-array-data v0, :array_e

    const-string v1, "dff698"

    const/16 v2, -0x630f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/protocol/HTTP;->EXPECT_DIRECTIVE:Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_f

    const-string v1, "311a36"

    const v2, 0x4e78f3ae

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/protocol/HTTP;->IDENTITY_CODING:Ljava/lang/String;

    new-array v0, v6, [B

    fill-array-data v0, :array_10

    const-string v1, "96cbd5"

    const-wide v2, 0x41c98897c3000000L    # 8.56764294E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/protocol/HTTP;->ISO_8859_1:Ljava/lang/String;

    const/16 v0, 0x18

    new-array v0, v0, [B

    fill-array-data v0, :array_11

    const-string v1, "02b90f"

    const/16 v2, 0x17b1

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/protocol/HTTP;->OCTET_STREAM_TYPE:Ljava/lang/String;

    new-array v0, v6, [B

    fill-array-data v0, :array_12

    const-string v1, "0b576b"

    const-wide/32 v2, -0x1937d6c8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/protocol/HTTP;->PLAIN_TEXT_TYPE:Ljava/lang/String;

    new-array v0, v8, [B

    fill-array-data v0, :array_13

    const-string v1, "1a4ba5"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/protocol/HTTP;->SERVER_HEADER:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_14

    const-string v1, "e81dd9"

    invoke-static {v0, v1, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/protocol/HTTP;->TARGET_HOST:Ljava/lang/String;

    const/16 v0, 0x11

    new-array v0, v0, [B

    fill-array-data v0, :array_15

    const-string v1, "f6ade2"

    const v2, -0x314c3cb5

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/protocol/HTTP;->TRANSFER_ENCODING:Ljava/lang/String;

    new-array v0, v6, [B

    fill-array-data v0, :array_16

    const-string v1, "16caa5"

    invoke-static {v0, v1, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/protocol/HTTP;->USER_AGENT:Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_17

    const-string v1, "7f21bc"

    invoke-static {v0, v1, v5, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/protocol/HTTP;->US_ASCII:Ljava/lang/String;

    new-array v0, v8, [B

    fill-array-data v0, :array_18

    const-string v1, "21893d"

    const-wide v2, -0x3e2cdf4e26400000L    # -1.283639143E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/protocol/HTTP;->UTF_16:Ljava/lang/String;

    new-array v0, v7, [B

    fill-array-data v0, :array_19

    const-string v1, "a97cbe"

    const-wide v2, -0x3e2b28a86c000000L    # -1.39862792E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/protocol/HTTP;->UTF_8:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x27t
        0x35t
        0x73t
        0x79t
        0x7dt
    .end array-data

    nop

    :array_1
    .array-data 1
        0x2t
        0x15t
        0x50t
        0x9t
        0x5t
        0x17t
        0x4at
        0x50t
        0x47t
        0x5ct
    .end array-data

    nop

    :array_2
    .array-data 1
        0x2t
        0x9t
        0x41t
        0x8t
        0x5ct
        0x5ct
        0x5t
    .end array-data

    :array_3
    .array-data 1
        0x75t
        0x5bt
        0x5ct
        0x47t
        0x50t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x26t
        0x58t
        0x5ct
        0xdt
        0x5dt
        0x53t
        0x11t
        0x5et
        0x5dt
        0xdt
    .end array-data

    nop

    :array_5
    .array-data 1
        0x2dt
        0x51t
        0x0t
        0x11t
        0x14t
        0x24t
        0xat
        0x5dt
        0x13t
        0x4t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x27t
        0x59t
        0x5et
        0x44t
        0x57t
        0xft
        0x10t
        0x1bt
        0x75t
        0x5et
        0x51t
        0xet
        0x0t
        0x5ft
        0x5et
        0x57t
    .end array-data

    :array_7
    .array-data 1
        0x77t
        0x5dt
        0x8t
        0x10t
        0x53t
        0xct
        0x40t
        0x1ft
        0x2at
        0x1t
        0x58t
        0x5t
        0x40t
        0x5at
    .end array-data

    nop

    :array_8
    .array-data 1
        0x71t
        0x56t
        0x58t
        0x43t
        0x1t
        0x5bt
        0x46t
        0x14t
        0x62t
        0x4et
        0x14t
        0x50t
    .end array-data

    :array_9
    .array-data 1
        0x77t
        0x54t
        0x40t
        0x54t
    .end array-data

    :array_a
    .array-data 1
        0x7dt
        0x35t
        0x7at
        0x1ct
        0x5bt
        0x0t
        0x1t
        0x5ft
        0x18t
        0x0t
    .end array-data

    nop

    :array_b
    .array-data 1
        0x7t
        0x12t
        0x40t
        0x5et
        0xft
        0x57t
        0x7t
        0x16t
        0x59t
        0x5dt
        0x8t
        0x1bt
        0x9t
        0x1t
        0x44t
        0x57t
        0x12t
        0x19t
        0x15t
        0x16t
        0x42t
        0x57t
        0x7t
        0x59t
    .end array-data

    :array_c
    .array-data 1
        0x62t
        0x31t
        0x1bt
        0x76t
        0x36t
        0x74t
        0x7et
        0x2bt
    .end array-data

    :array_d
    .array-data 1
        0x0t
        0x54t
        0x52t
        0x14t
        0x56t
        0x57t
        0x5ft
        0x10t
        0xbt
        0x57t
        0x40t
        0x5dt
    .end array-data

    :array_e
    .array-data 1
        0x21t
        0x1et
        0x16t
        0x53t
        0x5at
        0x4ct
    .end array-data

    nop

    :array_f
    .array-data 1
        0x5at
        0x55t
        0x54t
        0xft
        0x47t
        0x5ft
        0x47t
        0x48t
    .end array-data

    :array_10
    .array-data 1
        0x70t
        0x65t
        0x2ct
        0x4ft
        0x5ct
        0xdt
        0xct
        0xft
        0x4et
        0x53t
    .end array-data

    nop

    :array_11
    .array-data 1
        0x51t
        0x42t
        0x12t
        0x55t
        0x59t
        0x5t
        0x51t
        0x46t
        0xbt
        0x56t
        0x5et
        0x49t
        0x5ft
        0x51t
        0x16t
        0x5ct
        0x44t
        0x4bt
        0x43t
        0x46t
        0x10t
        0x5ct
        0x51t
        0xbt
    .end array-data

    :array_12
    .array-data 1
        0x44t
        0x7t
        0x4dt
        0x43t
        0x19t
        0x12t
        0x5ct
        0x3t
        0x5ct
        0x59t
    .end array-data

    nop

    :array_13
    .array-data 1
        0x62t
        0x4t
        0x46t
        0x14t
        0x4t
        0x47t
    .end array-data

    nop

    :array_14
    .array-data 1
        0x2dt
        0x57t
        0x42t
        0x10t
    .end array-data

    :array_15
    .array-data 1
        0x32t
        0x44t
        0x0t
        0xat
        0x16t
        0x54t
        0x3t
        0x44t
        0x4ct
        0x21t
        0xbt
        0x51t
        0x9t
        0x52t
        0x8t
        0xat
        0x2t
    .end array-data

    nop

    :array_16
    .array-data 1
        0x64t
        0x45t
        0x6t
        0x13t
        0x4ct
        0x74t
        0x56t
        0x53t
        0xdt
        0x15t
    .end array-data

    nop

    :array_17
    .array-data 1
        0x62t
        0x35t
        0x1ft
        0x70t
        0x31t
        0x20t
        0x7et
        0x2ft
    .end array-data

    :array_18
    .array-data 1
        0x67t
        0x65t
        0x7et
        0x14t
        0x2t
        0x52t
    .end array-data

    nop

    :array_19
    .array-data 1
        0x34t
        0x6dt
        0x71t
        0x4et
        0x5at
    .end array-data
.end method

.method constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "f515c3"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x35t
        0x41t
        0x44t
        0x57t
        0x42t
    .end array-data
.end method

.method public static isWhitespace(C)Z
    .locals 6

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "5e5cef"

    const-wide v4, -0x3e80faaa40000000L    # -3.2527708E7

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x66t
        0x11t
        0x40t
        0x1t
        0x44t
    .end array-data
.end method
