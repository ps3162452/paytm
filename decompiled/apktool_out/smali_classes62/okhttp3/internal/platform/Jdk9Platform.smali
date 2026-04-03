.class final Lokhttp3/internal/platform/Jdk9Platform;
.super Lokhttp3/internal/platform/Platform;


# instance fields
.field final getProtocolMethod:Ljava/lang/reflect/Method;

.field final setProtocolMethod:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 0

    invoke-direct {p0}, Lokhttp3/internal/platform/Platform;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/platform/Jdk9Platform;->setProtocolMethod:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lokhttp3/internal/platform/Jdk9Platform;->getProtocolMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method public static buildIfSupported()Lokhttp3/internal/platform/Jdk9Platform;
    .locals 5

    :try_start_0
    const-class v0, Ljavax/net/ssl/SSLParameters;

    const/16 v1, 0x17

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "6b9c30"

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, [Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const-class v0, Ljavax/net/ssl/SSLSocket;

    const/16 v2, 0x16

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "f46e05"

    const/16 v4, -0x1f8b

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-instance v0, Lokhttp3/internal/platform/Jdk9Platform;

    invoke-direct {v0, v1, v2}, Lokhttp3/internal/platform/Jdk9Platform;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    :array_0
    .array-data 1
        0x45t
        0x7t
        0x4dt
        0x22t
        0x43t
        0x40t
        0x5at
        0xbt
        0x5at
        0x2t
        0x47t
        0x59t
        0x59t
        0xct
        0x69t
        0x11t
        0x5ct
        0x44t
        0x59t
        0x1t
        0x56t
        0xft
        0x40t
    .end array-data

    :array_1
    .array-data 1
        0x1t
        0x51t
        0x42t
        0x24t
        0x40t
        0x45t
        0xat
        0x5dt
        0x55t
        0x4t
        0x44t
        0x5ct
        0x9t
        0x5at
        0x66t
        0x17t
        0x5ft
        0x41t
        0x9t
        0x57t
        0x59t
        0x9t
    .end array-data
.end method


# virtual methods
.method public configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Protocol;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    invoke-static {p3}, Lokhttp3/internal/platform/Jdk9Platform;->alpnProtocolNames(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/platform/Jdk9Platform;->setProtocolMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    :goto_0
    const/16 v1, 0x1c

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "9eb4ba"

    const-wide v4, -0x3e25c44f30400000L    # -1.760478015E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lokhttp3/internal/Util;->assertionError(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0

    :catch_1
    move-exception v0

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x4ct
        0xbt
        0x3t
        0x56t
        0xet
        0x4t
        0x19t
        0x11t
        0xdt
        0x14t
        0x11t
        0x4t
        0x4dt
        0x45t
        0x11t
        0x47t
        0xet
        0x41t
        0x49t
        0x4t
        0x10t
        0x55t
        0xft
        0x4t
        0x4dt
        0x0t
        0x10t
        0x47t
    .end array-data
.end method

.method public getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 6

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/platform/Jdk9Platform;->getProtocolMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    :goto_0
    const/16 v1, 0x20

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "6b01d8"

    const-wide/32 v4, 0x1851df82

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lokhttp3/internal/Util;->assertionError(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0

    :catch_1
    move-exception v0

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x43t
        0xct
        0x51t
        0x53t
        0x8t
        0x5dt
        0x16t
        0x16t
        0x5ft
        0x11t
        0x3t
        0x5dt
        0x42t
        0x42t
        0x43t
        0x54t
        0x8t
        0x5dt
        0x55t
        0x16t
        0x55t
        0x55t
        0x44t
        0x48t
        0x44t
        0xdt
        0x44t
        0x5et
        0x7t
        0x57t
        0x5at
        0x11t
    .end array-data
.end method

.method public trustManager(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;
    .locals 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x48

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "986e20"

    const/16 v3, -0x5aec

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x5at
        0x54t
        0x5ft
        0x0t
        0x5ct
        0x44t
        0x7bt
        0x4dt
        0x5ft
        0x9t
        0x56t
        0x55t
        0x4bt
        0x16t
        0x45t
        0x16t
        0x5et
        0x63t
        0x56t
        0x5bt
        0x5dt
        0x0t
        0x46t
        0x76t
        0x58t
        0x5bt
        0x42t
        0xat
        0x40t
        0x49t
        0x11t
        0x6bt
        0x65t
        0x29t
        0x61t
        0x5ft
        0x5at
        0x53t
        0x53t
        0x11t
        0x74t
        0x51t
        0x5at
        0x4ct
        0x59t
        0x17t
        0x4bt
        0x19t
        0x19t
        0x56t
        0x59t
        0x11t
        0x12t
        0x43t
        0x4ct
        0x48t
        0x46t
        0xat
        0x40t
        0x44t
        0x5ct
        0x5ct
        0x16t
        0xat
        0x5ct
        0x10t
        0x73t
        0x7ct
        0x7dt
        0x45t
        0xbt
        0x1bt
    .end array-data
.end method
