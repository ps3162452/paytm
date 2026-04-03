.class public final Landroid/net/http/Headers;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/http/Headers$HeaderCallback;
    }
.end annotation


# static fields
.field public static final ACCEPT_RANGES:Ljava/lang/String;

.field public static final CACHE_CONTROL:Ljava/lang/String;

.field public static final CONN_CLOSE:I = 0x1

.field public static final CONN_DIRECTIVE:Ljava/lang/String;

.field public static final CONN_KEEP_ALIVE:I = 0x2

.field public static final CONTENT_DISPOSITION:Ljava/lang/String;

.field public static final CONTENT_ENCODING:Ljava/lang/String;

.field public static final CONTENT_LEN:Ljava/lang/String;

.field public static final CONTENT_TYPE:Ljava/lang/String;

.field public static final ETAG:Ljava/lang/String;

.field public static final EXPIRES:Ljava/lang/String;

.field public static final LAST_MODIFIED:Ljava/lang/String;

.field public static final LOCATION:Ljava/lang/String;

.field public static final NO_CONN_TYPE:I = 0x0

.field public static final NO_CONTENT_LENGTH:J = -0x1L

.field public static final NO_TRANSFER_ENCODING:J

.field public static final PRAGMA:Ljava/lang/String;

.field public static final PROXY_AUTHENTICATE:Ljava/lang/String;

.field public static final PROXY_CONNECTION:Ljava/lang/String;

.field public static final REFRESH:Ljava/lang/String;

.field public static final SET_COOKIE:Ljava/lang/String;

.field public static final TRANSFER_ENCODING:Ljava/lang/String;

.field public static final WWW_AUTHENTICATE:Ljava/lang/String;

.field public static final X_PERMITTED_CROSS_DOMAIN_POLICIES:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x7

    const/16 v7, 0x10

    const/16 v6, 0xd

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-array v0, v6, [B

    fill-array-data v0, :array_0

    const-string v1, "0dc478"

    invoke-static {v0, v1, v5, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/http/Headers;->ACCEPT_RANGES:Ljava/lang/String;

    new-array v0, v6, [B

    fill-array-data v0, :array_1

    const-string v1, "cb8f9b"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/http/Headers;->CACHE_CONTROL:Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "20cf75"

    invoke-static {v0, v1, v5, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/http/Headers;->CONN_DIRECTIVE:Ljava/lang/String;

    const/16 v0, 0x13

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v1, "98949c"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/http/Headers;->CONTENT_DISPOSITION:Ljava/lang/String;

    new-array v0, v7, [B

    fill-array-data v0, :array_4

    const-string v1, "2a894a"

    invoke-static {v0, v1, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/http/Headers;->CONTENT_ENCODING:Ljava/lang/String;

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    const-string v1, "7cb666"

    const-wide v2, 0x41db78ce90400000L    # 1.843608129E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/http/Headers;->CONTENT_LEN:Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_6

    const-string v1, "552d04"

    const/16 v2, 0x622c

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/http/Headers;->CONTENT_TYPE:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_7

    const-string v1, "ca76dc"

    invoke-static {v0, v1, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/http/Headers;->ETAG:Ljava/lang/String;

    new-array v0, v8, [B

    fill-array-data v0, :array_8

    const-string v1, "06e9aa"

    const-wide/32 v2, 0x3d7fbbd0

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/http/Headers;->EXPIRES:Ljava/lang/String;

    new-array v0, v6, [B

    fill-array-data v0, :array_9

    const-string v1, "4edf63"

    invoke-static {v0, v1, v5, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/http/Headers;->LAST_MODIFIED:Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    const-string v1, "b86d6d"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/http/Headers;->LOCATION:Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_b

    const-string v1, "c1d6e0"

    invoke-static {v0, v1, v5, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/http/Headers;->PRAGMA:Ljava/lang/String;

    const/16 v0, 0x12

    new-array v0, v0, [B

    fill-array-data v0, :array_c

    const-string v1, "eab737"

    const-wide/32 v2, -0xcc7b33b

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/http/Headers;->PROXY_AUTHENTICATE:Ljava/lang/String;

    new-array v0, v7, [B

    fill-array-data v0, :array_d

    const-string v1, "176709"

    invoke-static {v0, v1, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/http/Headers;->PROXY_CONNECTION:Ljava/lang/String;

    new-array v0, v8, [B

    fill-array-data v0, :array_e

    const-string v1, "984048"

    invoke-static {v0, v1, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/http/Headers;->REFRESH:Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_f

    const-string v1, "7e2eb9"

    const-wide/32 v2, 0x63847b52

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/http/Headers;->SET_COOKIE:Ljava/lang/String;

    const/16 v0, 0x11

    new-array v0, v0, [B

    fill-array-data v0, :array_10

    const-string v1, "f687fa"

    invoke-static {v0, v1, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/http/Headers;->TRANSFER_ENCODING:Ljava/lang/String;

    new-array v0, v7, [B

    fill-array-data v0, :array_11

    const-string v1, "547c9f"

    const-wide/32 v2, -0x3b780de

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/http/Headers;->WWW_AUTHENTICATE:Ljava/lang/String;

    const/16 v0, 0x21

    new-array v0, v0, [B

    fill-array-data v0, :array_12

    const-string v1, "674d84"

    invoke-static {v0, v1, v5, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/http/Headers;->X_PERMITTED_CROSS_DOMAIN_POLICIES:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x51t
        0x7t
        0x0t
        0x51t
        0x47t
        0x4ct
        0x1dt
        0x16t
        0x2t
        0x5at
        0x50t
        0x5dt
        0x43t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x0t
        0x3t
        0x5bt
        0xet
        0x5ct
        0x4ft
        0x0t
        0xdt
        0x56t
        0x12t
        0x4bt
        0xdt
        0xft
    .end array-data

    nop

    :array_2
    .array-data 1
        0x51t
        0x5ft
        0xdt
        0x8t
        0x52t
        0x56t
        0x46t
        0x59t
        0xct
        0x8t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x5at
        0x57t
        0x57t
        0x40t
        0x5ct
        0xdt
        0x4dt
        0x15t
        0x5dt
        0x5dt
        0x4at
        0x13t
        0x56t
        0x4bt
        0x50t
        0x40t
        0x50t
        0xct
        0x57t
    .end array-data

    :array_4
    .array-data 1
        0x51t
        0xet
        0x56t
        0x4dt
        0x51t
        0xft
        0x46t
        0x4ct
        0x5dt
        0x57t
        0x57t
        0xet
        0x56t
        0x8t
        0x56t
        0x5et
    .end array-data

    :array_5
    .array-data 1
        0x54t
        0xct
        0xct
        0x42t
        0x53t
        0x58t
        0x43t
        0x4et
        0xet
        0x53t
        0x58t
        0x51t
        0x43t
        0xbt
    .end array-data

    nop

    :array_6
    .array-data 1
        0x56t
        0x5at
        0x5ct
        0x10t
        0x55t
        0x5at
        0x41t
        0x18t
        0x46t
        0x1dt
        0x40t
        0x51t
    .end array-data

    :array_7
    .array-data 1
        0x6t
        0x15t
        0x56t
        0x51t
    .end array-data

    :array_8
    .array-data 1
        0x55t
        0x4et
        0x15t
        0x50t
        0x13t
        0x4t
        0x43t
    .end array-data

    :array_9
    .array-data 1
        0x58t
        0x4t
        0x17t
        0x12t
        0x1bt
        0x5et
        0x5bt
        0x1t
        0xdt
        0x0t
        0x5ft
        0x56t
        0x50t
    .end array-data

    nop

    :array_a
    .array-data 1
        0xet
        0x57t
        0x55t
        0x5t
        0x42t
        0xdt
        0xdt
        0x56t
    .end array-data

    :array_b
    .array-data 1
        0x13t
        0x43t
        0x5t
        0x51t
        0x8t
        0x51t
    .end array-data

    nop

    :array_c
    .array-data 1
        0x15t
        0x13t
        0xdt
        0x4ft
        0x4at
        0x1at
        0x4t
        0x14t
        0x16t
        0x5ft
        0x56t
        0x59t
        0x11t
        0x8t
        0x1t
        0x56t
        0x47t
        0x52t
    .end array-data

    nop

    :array_d
    .array-data 1
        0x41t
        0x45t
        0x59t
        0x4ft
        0x49t
        0x14t
        0x52t
        0x58t
        0x58t
        0x59t
        0x55t
        0x5at
        0x45t
        0x5et
        0x59t
        0x59t
    .end array-data

    :array_e
    .array-data 1
        0x4bt
        0x5dt
        0x52t
        0x42t
        0x51t
        0x4bt
        0x51t
    .end array-data

    :array_f
    .array-data 1
        0x44t
        0x0t
        0x46t
        0x48t
        0x1t
        0x56t
        0x58t
        0xet
        0x5bt
        0x0t
    .end array-data

    nop

    :array_10
    .array-data 1
        0x12t
        0x44t
        0x59t
        0x59t
        0x15t
        0x7t
        0x3t
        0x44t
        0x15t
        0x52t
        0x8t
        0x2t
        0x9t
        0x52t
        0x51t
        0x59t
        0x1t
    .end array-data

    nop

    :array_11
    .array-data 1
        0x42t
        0x43t
        0x40t
        0x4et
        0x58t
        0x13t
        0x41t
        0x5ct
        0x52t
        0xdt
        0x4dt
        0xft
        0x56t
        0x55t
        0x43t
        0x6t
    .end array-data

    :array_12
    .array-data 1
        0x4et
        0x1at
        0x44t
        0x1t
        0x4at
        0x59t
        0x5ft
        0x43t
        0x40t
        0x1t
        0x5ct
        0x19t
        0x55t
        0x45t
        0x5bt
        0x17t
        0x4bt
        0x19t
        0x52t
        0x58t
        0x59t
        0x5t
        0x51t
        0x5at
        0x1bt
        0x47t
        0x5bt
        0x8t
        0x51t
        0x57t
        0x5ft
        0x52t
        0x47t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "f5b751"

    const-wide v4, 0x41d70bb3b4000000L    # 1.546571472E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x35t
        0x41t
        0x17t
        0x55t
        0x14t
    .end array-data
.end method


# virtual methods
.method public getAcceptRanges()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "299b1b"

    const v3, -0x3131c8d8

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x61t
        0x4dt
        0x4ct
        0x0t
        0x10t
    .end array-data
.end method

.method public getCacheControl()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "81ffb1"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x6bt
        0x45t
        0x13t
        0x4t
        0x43t
    .end array-data
.end method

.method public getConnectionType()I
    .locals 4

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "4f2948"

    const v3, 0x4e8a40ea

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x67t
        0x12t
        0x47t
        0x5bt
        0x15t
    .end array-data
.end method

.method public getContentDisposition()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "b8a179"

    const v3, -0x333fff13

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x31t
        0x4ct
        0x14t
        0x53t
        0x16t
    .end array-data
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "3fed9a"

    const/16 v3, 0x69e8

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x60t
        0x12t
        0x10t
        0x6t
        0x18t
    .end array-data
.end method

.method public getContentLength()J
    .locals 4

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "883b3f"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x6bt
        0x4ct
        0x46t
        0x0t
        0x12t
    .end array-data
.end method

.method public getContentType()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "831957"

    const-wide/32 v4, 0x2539ba5a

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x6bt
        0x47t
        0x44t
        0x5bt
        0x14t
    .end array-data
.end method

.method public getEtag()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "bb3bf8"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x31t
        0x16t
        0x46t
        0x0t
        0x47t
    .end array-data
.end method

.method public getExpires()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "f53285"

    const-wide/32 v4, -0xe51f4af

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x35t
        0x41t
        0x46t
        0x50t
        0x19t
    .end array-data
.end method

.method public getHeaders(Landroid/net/http/Headers$HeaderCallback;)V
    .locals 4

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "1e138b"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x62t
        0x11t
        0x44t
        0x51t
        0x19t
    .end array-data
.end method

.method public getLastModified()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "46b265"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x67t
        0x42t
        0x17t
        0x50t
        0x17t
    .end array-data
.end method

.method public getLocation()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "8a07dd"

    const-wide v4, 0x41c545a9c3000000L    # 7.13773958E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x6bt
        0x15t
        0x45t
        0x55t
        0x45t
    .end array-data
.end method

.method public getPragma()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "48fc6e"

    const/16 v3, 0x4c0f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x67t
        0x4ct
        0x13t
        0x1t
        0x17t
    .end array-data
.end method

.method public getProxyAuthenticate()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "599d20"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x66t
        0x4dt
        0x4ct
        0x6t
        0x13t
    .end array-data
.end method

.method public getRefresh()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "cc55e6"

    const/16 v3, -0x7eb0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x30t
        0x17t
        0x40t
        0x57t
        0x44t
    .end array-data
.end method

.method public getSetCookie()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "d26c3b"

    const/16 v3, -0x5bd6

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x37t
        0x46t
        0x43t
        0x1t
        0x12t
    .end array-data
.end method

.method public getTransferEncoding()J
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "76f953"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x64t
        0x42t
        0x13t
        0x5bt
        0x14t
    .end array-data
.end method

.method public getWwwAuthenticate()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "162925"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x62t
        0x42t
        0x47t
        0x5bt
        0x13t
    .end array-data
.end method

.method public getXPermittedCrossDomainPolicies()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "b8d5a2"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x31t
        0x4ct
        0x11t
        0x57t
        0x40t
    .end array-data
.end method

.method public parseHeader(Lorg/apache/http/util/CharArrayBuffer;)V
    .locals 6

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "2fd8ed"

    const-wide/32 v4, -0x79576906

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x61t
        0x12t
        0x11t
        0x5at
        0x44t
    .end array-data
.end method

.method public setAcceptRanges(Ljava/lang/String;)V
    .locals 6

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "f7634c"

    const-wide v4, 0x41de78be7c800000L    # 2.044918258E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x35t
        0x43t
        0x43t
        0x51t
        0x15t
    .end array-data
.end method

.method public setCacheControl(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "58b86d"

    const v3, 0x4e3d15e4    # 7.930821E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x66t
        0x4ct
        0x17t
        0x5at
        0x17t
    .end array-data
.end method

.method public setContentDisposition(Ljava/lang/String;)V
    .locals 6

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "b24bac"

    const-wide/32 v4, 0x13695439

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x31t
        0x46t
        0x41t
        0x0t
        0x40t
    .end array-data
.end method

.method public setContentEncoding(Ljava/lang/String;)V
    .locals 6

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "ebc65e"

    const-wide v4, -0x3e2c02ea4a400000L    # -1.341413079E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x36t
        0x16t
        0x16t
        0x54t
        0x14t
    .end array-data
.end method

.method public setContentLength(J)V
    .locals 6

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "8acdeb"

    const-wide/32 v4, 0x70068301

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x6bt
        0x15t
        0x16t
        0x6t
        0x44t
    .end array-data
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "ac8b6e"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x32t
        0x17t
        0x4dt
        0x0t
        0x17t
    .end array-data
.end method

.method public setEtag(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "67cf7c"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x65t
        0x43t
        0x16t
        0x4t
        0x16t
    .end array-data
.end method

.method public setExpires(Ljava/lang/String;)V
    .locals 6

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "26b724"

    const-wide/32 v4, -0x77303094

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x61t
        0x42t
        0x17t
        0x55t
        0x13t
    .end array-data
.end method

.method public setLastModified(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "30949c"

    const/16 v3, -0x716e

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x60t
        0x44t
        0x4ct
        0x56t
        0x18t
    .end array-data
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 6

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "c793a8"

    const-wide/32 v4, 0x5a32b789

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x30t
        0x43t
        0x4ct
        0x51t
        0x40t
    .end array-data
.end method

.method public setProxyAuthenticate(Ljava/lang/String;)V
    .locals 6

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "bd395a"

    const-wide/32 v4, 0x17e88a4a

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x31t
        0x10t
        0x46t
        0x5bt
        0x14t
    .end array-data
.end method

.method public setWwwAuthenticate(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "3664f1"

    const v3, -0x31cd7baf

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x60t
        0x42t
        0x43t
        0x56t
        0x47t
    .end array-data
.end method

.method public setXPermittedCrossDomainPolicies(Ljava/lang/String;)V
    .locals 6

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "889341"

    const-wide v4, -0x3e25b5be07c00000L    # -1.764296673E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x6bt
        0x4ct
        0x4ct
        0x51t
        0x15t
    .end array-data
.end method
