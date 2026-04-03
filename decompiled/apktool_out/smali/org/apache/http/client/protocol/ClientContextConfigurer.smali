.class public Lorg/apache/http/client/protocol/ClientContextConfigurer;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/client/protocol/ClientContext;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/http/protocol/HttpContext;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "eaa022"

    const/16 v3, 0x572b

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x36t
        0x15t
        0x14t
        0x52t
        0x13t
    .end array-data
.end method


# virtual methods
.method public setAuthSchemePref(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "5bd53a"

    const v3, 0x4e31cb86    # 7.4572634E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x66t
        0x16t
        0x11t
        0x57t
        0x12t
    .end array-data
.end method

.method public setAuthSchemeRegistry(Lorg/apache/http/auth/AuthSchemeRegistry;)V
    .locals 6

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "15fd4e"

    const-wide v4, 0x41c24d18ba800000L    # 6.14084981E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x62t
        0x41t
        0x13t
        0x6t
        0x15t
    .end array-data
.end method

.method public setCookieSpecRegistry(Lorg/apache/http/cookie/CookieSpecRegistry;)V
    .locals 6

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "0637bb"

    const-wide v4, 0x41d9c8b412c00000L    # 1.730334795E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x63t
        0x42t
        0x46t
        0x55t
        0x43t
    .end array-data
.end method

.method public setCookieStore(Lorg/apache/http/client/CookieStore;)V
    .locals 6

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "eb925b"

    const-wide v4, -0x3e3a99f33c000000L    # -7.18018952E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x36t
        0x16t
        0x4ct
        0x50t
        0x14t
    .end array-data
.end method

.method public setCredentialsProvider(Lorg/apache/http/client/CredentialsProvider;)V
    .locals 4

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "fbadcc"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x35t
        0x16t
        0x14t
        0x6t
        0x42t
    .end array-data
.end method
