.class public final Lokhttp3/internal/http/BridgeInterceptor;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field private final cookieJar:Lokhttp3/CookieJar;


# direct methods
.method public constructor <init>(Lokhttp3/CookieJar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/http/BridgeInterceptor;->cookieJar:Lokhttp3/CookieJar;

    return-void
.end method

.method private cookieHeader(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Cookie;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    if-lez v1, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v4, "216efd"

    const v5, 0x4db589d2

    invoke-static {v0, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Cookie;

    invoke-virtual {v0}, Lokhttp3/Cookie;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lokhttp3/Cookie;->value()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x9t
        0x11t
    .end array-data
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v12, 0xe

    const/4 v11, 0x4

    const/16 v10, 0xa

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v4

    invoke-virtual {v3}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v5

    if-eqz v5, :cond_0

    const/16 v6, 0xc

    new-array v6, v6, [B

    fill-array-data v6, :array_0

    const-string v7, "7ab8b7"

    const-wide v8, 0x41d54b44c5400000L    # 1.429017365E9

    invoke-static {v6, v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    :cond_0
    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v0, v6, v8

    if-eqz v0, :cond_7

    new-array v0, v12, [B

    fill-array-data v0, :array_1

    const-string v5, "9550d5"

    const-wide v8, -0x3e21d01c99c00000L    # -2.025819545E9

    invoke-static {v0, v5, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    const/16 v0, 0x11

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v5, "d5911e"

    invoke-static {v0, v5, v2, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    :cond_1
    :goto_0
    new-array v0, v11, [B

    fill-array-data v0, :array_3

    const-string v5, "0e4ea5"

    const v6, 0x4ebb6192    # 1.5718669E9f

    invoke-static {v0, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    new-array v0, v11, [B

    fill-array-data v0, :array_4

    const-string v5, "365447"

    const v6, 0x4e756167    # 1.0292003E9f

    invoke-static {v0, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v5

    invoke-static {v5, v2}, Lokhttp3/internal/Util;->hostHeader(Lokhttp3/HttpUrl;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    :cond_2
    new-array v0, v10, [B

    fill-array-data v0, :array_5

    const-string v5, "0dff02"

    invoke-static {v0, v5, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    new-array v0, v10, [B

    fill-array-data v0, :array_6

    const-string v5, "2d10fb"

    const/16 v6, 0x5c9

    invoke-static {v0, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-array v5, v10, [B

    fill-array-data v5, :array_7

    const-string v6, "332d1c"

    invoke-static {v5, v6, v2, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    :cond_3
    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    const-string v5, "e840bb"

    invoke-static {v0, v5, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_9

    const-string v5, "279071"

    const-wide/32 v6, 0x27c10939

    invoke-static {v0, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    const-string v5, "99cced"

    const-wide v6, -0x3e3fb86ce9800000L    # -5.46252333E8

    invoke-static {v0, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    new-array v5, v11, [B

    fill-array-data v5, :array_b

    const-string v6, "cffb01"

    const/16 v7, 0x1cd7

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move v0, v1

    :goto_1
    iget-object v5, p0, Lokhttp3/internal/http/BridgeInterceptor;->cookieJar:Lokhttp3/CookieJar;

    invoke-virtual {v3}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v6

    invoke-interface {v5, v6}, Lokhttp3/CookieJar;->loadForRequest(Lokhttp3/HttpUrl;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    const/4 v6, 0x6

    new-array v6, v6, [B

    fill-array-data v6, :array_c

    const-string v7, "f834de"

    invoke-static {v6, v7, v2, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5}, Lokhttp3/internal/http/BridgeInterceptor;->cookieHeader(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    :cond_4
    new-array v5, v10, [B

    fill-array-data v5, :array_d

    const-string v6, "072c8a"

    invoke-static {v5, v6, v2, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    new-array v2, v10, [B

    fill-array-data v2, :array_e

    const-string v5, "40e9e7"

    const-wide/32 v6, 0x1e22a633

    invoke-static {v2, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lokhttp3/internal/Version;->userAgent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    :cond_5
    invoke-virtual {v4}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    invoke-interface {p1, v2}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v2

    iget-object v4, p0, Lokhttp3/internal/http/BridgeInterceptor;->cookieJar:Lokhttp3/CookieJar;

    invoke-virtual {v3}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v5

    invoke-virtual {v2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lokhttp3/internal/http/HttpHeaders;->receiveHeaders(Lokhttp3/CookieJar;Lokhttp3/HttpUrl;Lokhttp3/Headers;)V

    invoke-virtual {v2}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    move-result-object v3

    if-eqz v0, :cond_6

    new-array v0, v11, [B

    fill-array-data v0, :array_f

    const-string v4, "4e76c7"

    const/16 v5, -0x5842

    invoke-static {v0, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x10

    new-array v4, v4, [B

    fill-array-data v4, :array_10

    const-string v5, "2f0dfb"

    invoke-static {v4, v5, v1, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v2}, Lokhttp3/internal/http/HttpHeaders;->hasBody(Lokhttp3/Response;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lokio/GzipSource;

    invoke-virtual {v2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/GzipSource;-><init>(Lokio/Source;)V

    invoke-virtual {v2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    move-result-object v1

    const/16 v4, 0x10

    new-array v4, v4, [B

    fill-array-data v4, :array_11

    const-string v5, "98a75f"

    const-wide v6, 0x41d8ba829ec00000L    # 1.659505275E9

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object v1

    new-array v4, v12, [B

    fill-array-data v4, :array_12

    const-string v5, "e550b2"

    const-wide v6, -0x3e278adb9bc00000L    # -1.641320849E9

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v1

    invoke-virtual {v3, v1}, Lokhttp3/Response$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Response$Builder;

    new-instance v1, Lokhttp3/internal/http/RealResponseBody;

    const/16 v4, 0xc

    new-array v4, v4, [B

    fill-array-data v4, :array_13

    const-string v5, "cb9da4"

    const-wide v6, -0x3e2c576147800000L    # -1.319271138E9

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, -0x1

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    invoke-direct {v1, v2, v4, v5, v0}, Lokhttp3/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLokio/BufferedSource;)V

    invoke-virtual {v3, v1}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    :cond_6
    invoke-virtual {v3}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v0

    return-object v0

    :cond_7
    const/16 v0, 0x11

    new-array v0, v0, [B

    fill-array-data v0, :array_14

    const-string v5, "e8fe2c"

    const/16 v6, -0x50d

    invoke-static {v0, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x7

    new-array v5, v5, [B

    fill-array-data v5, :array_15

    const-string v6, "d78484"

    invoke-static {v5, v6, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    new-array v0, v12, [B

    fill-array-data v0, :array_16

    const-string v5, "88a281"

    invoke-static {v0, v5, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto/16 :goto_0

    :cond_8
    move v0, v2

    goto/16 :goto_1

    nop

    :array_0
    .array-data 1
        0x74t
        0xet
        0xct
        0x4ct
        0x7t
        0x59t
        0x43t
        0x4ct
        0x36t
        0x41t
        0x12t
        0x52t
    .end array-data

    :array_1
    .array-data 1
        0x7at
        0x5at
        0x5bt
        0x44t
        0x1t
        0x5bt
        0x4dt
        0x18t
        0x79t
        0x55t
        0xat
        0x52t
        0x4dt
        0x5dt
    .end array-data

    nop

    :array_2
    .array-data 1
        0x30t
        0x47t
        0x58t
        0x5ft
        0x42t
        0x3t
        0x1t
        0x47t
        0x14t
        0x74t
        0x5ft
        0x6t
        0xbt
        0x51t
        0x50t
        0x5ft
        0x56t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x78t
        0xat
        0x47t
        0x11t
    .end array-data

    :array_4
    .array-data 1
        0x7bt
        0x59t
        0x46t
        0x40t
    .end array-data

    :array_5
    .array-data 1
        0x73t
        0xbt
        0x8t
        0x8t
        0x55t
        0x51t
        0x44t
        0xdt
        0x9t
        0x8t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x71t
        0xbt
        0x5ft
        0x5et
        0x3t
        0x1t
        0x46t
        0xdt
        0x5et
        0x5et
    .end array-data

    nop

    :array_7
    .array-data 1
        0x78t
        0x56t
        0x57t
        0x14t
        0x1ct
        0x22t
        0x5ft
        0x5at
        0x44t
        0x1t
    .end array-data

    nop

    :array_8
    .array-data 1
        0x24t
        0x5bt
        0x57t
        0x55t
        0x12t
        0x16t
        0x48t
        0x7dt
        0x5at
        0x53t
        0xdt
        0x6t
        0xct
        0x56t
        0x53t
    .end array-data

    :array_9
    .array-data 1
        0x60t
        0x56t
        0x57t
        0x57t
        0x52t
    .end array-data

    nop

    :array_a
    .array-data 1
        0x78t
        0x5at
        0x0t
        0x6t
        0x15t
        0x10t
        0x14t
        0x7ct
        0xdt
        0x0t
        0xat
        0x0t
        0x50t
        0x57t
        0x4t
    .end array-data

    :array_b
    .array-data 1
        0x4t
        0x1ct
        0xft
        0x12t
    .end array-data

    :array_c
    .array-data 1
        0x25t
        0x57t
        0x5ct
        0x5ft
        0xdt
        0x0t
    .end array-data

    nop

    :array_d
    .array-data 1
        0x65t
        0x44t
        0x57t
        0x11t
        0x15t
        0x20t
        0x57t
        0x52t
        0x5ct
        0x17t
    .end array-data

    nop

    :array_e
    .array-data 1
        0x61t
        0x43t
        0x0t
        0x4bt
        0x48t
        0x76t
        0x53t
        0x55t
        0xbt
        0x4dt
    .end array-data

    nop

    :array_f
    .array-data 1
        0x53t
        0x1ft
        0x5et
        0x46t
    .end array-data

    :array_10
    .array-data 1
        0x71t
        0x9t
        0x5et
        0x10t
        0x3t
        0xct
        0x46t
        0x4bt
        0x75t
        0xat
        0x5t
        0xdt
        0x56t
        0xft
        0x5et
        0x3t
    .end array-data

    :array_11
    .array-data 1
        0x7at
        0x57t
        0xft
        0x43t
        0x50t
        0x8t
        0x4dt
        0x15t
        0x24t
        0x59t
        0x56t
        0x9t
        0x5dt
        0x51t
        0xft
        0x50t
    .end array-data

    :array_12
    .array-data 1
        0x26t
        0x5at
        0x5bt
        0x44t
        0x7t
        0x5ct
        0x11t
        0x18t
        0x79t
        0x55t
        0xct
        0x55t
        0x11t
        0x5dt
    .end array-data

    nop

    :array_13
    .array-data 1
        0x20t
        0xdt
        0x57t
        0x10t
        0x4t
        0x5at
        0x17t
        0x4ft
        0x6dt
        0x1dt
        0x11t
        0x51t
    .end array-data

    :array_14
    .array-data 1
        0x31t
        0x4at
        0x7t
        0xbt
        0x41t
        0x5t
        0x0t
        0x4at
        0x4bt
        0x20t
        0x5ct
        0x0t
        0xat
        0x5ct
        0xft
        0xbt
        0x55t
    .end array-data

    nop

    :array_15
    .array-data 1
        0x7t
        0x5ft
        0x4dt
        0x5at
        0x53t
        0x51t
        0x0t
    .end array-data

    :array_16
    .array-data 1
        0x7bt
        0x57t
        0xft
        0x46t
        0x5dt
        0x5ft
        0x4ct
        0x15t
        0x2dt
        0x57t
        0x56t
        0x56t
        0x4ct
        0x50t
    .end array-data
.end method
