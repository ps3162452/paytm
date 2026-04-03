.class public final Lokhttp3/Address;
.super Ljava/lang/Object;


# instance fields
.field final certificatePinner:Lokhttp3/CertificatePinner;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final connectionSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field final dns:Lokhttp3/Dns;

.field final hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field final proxy:Ljava/net/Proxy;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final proxyAuthenticator:Lokhttp3/Authenticator;

.field final proxySelector:Ljava/net/ProxySelector;

.field final socketFactory:Ljavax/net/SocketFactory;

.field final sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final url:Lokhttp3/HttpUrl;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILokhttp3/Dns;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lokhttp3/CertificatePinner;Lokhttp3/Authenticator;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V
    .locals 8
    .param p5    # Ljavax/net/ssl/SSLSocketFactory;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljavax/net/ssl/HostnameVerifier;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lokhttp3/CertificatePinner;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/net/Proxy;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lokhttp3/Dns;",
            "Ljavax/net/SocketFactory;",
            "Ljavax/net/ssl/SSLSocketFactory;",
            "Ljavax/net/ssl/HostnameVerifier;",
            "Lokhttp3/CertificatePinner;",
            "Lokhttp3/Authenticator;",
            "Ljava/net/Proxy;",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Protocol;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lokhttp3/ConnectionSpec;",
            ">;",
            "Ljava/net/ProxySelector;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Lokhttp3/HttpUrl$Builder;

    invoke-direct {v3}, Lokhttp3/HttpUrl$Builder;-><init>()V

    if-eqz p5, :cond_0

    const/4 v2, 0x5

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v4, "817eb7"

    const-wide/32 v6, -0xe9d8a93

    invoke-static {v2, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v3, v2}, Lokhttp3/HttpUrl$Builder;->scheme(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lokhttp3/HttpUrl$Builder;->host(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Lokhttp3/HttpUrl$Builder;->port(I)Lokhttp3/HttpUrl$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v2

    iput-object v2, p0, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    if-nez p3, :cond_1

    new-instance v2, Ljava/lang/NullPointerException;

    const/16 v3, 0xb

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "59dcd4"

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v4, "0ade65"

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    iput-object p3, p0, Lokhttp3/Address;->dns:Lokhttp3/Dns;

    if-nez p4, :cond_2

    new-instance v2, Ljava/lang/NullPointerException;

    const/16 v3, 0x15

    new-array v3, v3, [B

    fill-array-data v3, :array_3

    const-string v4, "fb896e"

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    iput-object p4, p0, Lokhttp3/Address;->socketFactory:Ljavax/net/SocketFactory;

    if-nez p8, :cond_3

    new-instance v2, Ljava/lang/NullPointerException;

    const/16 v3, 0x1a

    new-array v3, v3, [B

    fill-array-data v3, :array_4

    const-string v4, "73d59a"

    const/16 v5, 0x524b

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    move-object/from16 v0, p8

    iput-object v0, p0, Lokhttp3/Address;->proxyAuthenticator:Lokhttp3/Authenticator;

    if-nez p10, :cond_4

    new-instance v2, Ljava/lang/NullPointerException;

    const/16 v3, 0x11

    new-array v3, v3, [B

    fill-array-data v3, :array_5

    const-string v4, "749db2"

    const v5, -0x315f85d1

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    invoke-static/range {p10 .. p10}, Lokhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lokhttp3/Address;->protocols:Ljava/util/List;

    if-nez p11, :cond_5

    new-instance v2, Ljava/lang/NullPointerException;

    const/16 v3, 0x17

    new-array v3, v3, [B

    fill-array-data v3, :array_6

    const-string v4, "9d0464"

    const-wide v6, 0x41adb16edc000000L    # 2.49083758E8

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    invoke-static/range {p11 .. p11}, Lokhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lokhttp3/Address;->connectionSpecs:Ljava/util/List;

    if-nez p12, :cond_6

    new-instance v2, Ljava/lang/NullPointerException;

    const/16 v3, 0x15

    new-array v3, v3, [B

    fill-array-data v3, :array_7

    const-string v4, "4fe89f"

    const v5, -0x31bea15b

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    move-object/from16 v0, p12

    iput-object v0, p0, Lokhttp3/Address;->proxySelector:Ljava/net/ProxySelector;

    move-object/from16 v0, p9

    iput-object v0, p0, Lokhttp3/Address;->proxy:Ljava/net/Proxy;

    iput-object p5, p0, Lokhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iput-object p6, p0, Lokhttp3/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iput-object p7, p0, Lokhttp3/Address;->certificatePinner:Lokhttp3/CertificatePinner;

    return-void

    nop

    :array_0
    .array-data 1
        0x50t
        0x45t
        0x43t
        0x15t
        0x11t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x51t
        0x57t
        0x17t
        0x43t
        0x59t
        0x9t
        0x15t
        0x57t
        0x11t
        0xft
        0x8t
    .end array-data

    :array_2
    .array-data 1
        0x58t
        0x15t
        0x10t
        0x15t
    .end array-data

    :array_3
    .array-data 1
        0x15t
        0xdt
        0x5bt
        0x52t
        0x53t
        0x11t
        0x20t
        0x3t
        0x5bt
        0x4dt
        0x59t
        0x17t
        0x1ft
        0x42t
        0x5t
        0x4t
        0x16t
        0xbt
        0x13t
        0xet
        0x54t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x47t
        0x41t
        0xbt
        0x4dt
        0x40t
        0x20t
        0x42t
        0x47t
        0xct
        0x50t
        0x57t
        0x15t
        0x5et
        0x50t
        0x5t
        0x41t
        0x56t
        0x13t
        0x17t
        0xet
        0x59t
        0x15t
        0x57t
        0x14t
        0x5bt
        0x5ft
    .end array-data

    nop

    :array_5
    .array-data 1
        0x47t
        0x46t
        0x56t
        0x10t
        0xdt
        0x51t
        0x58t
        0x58t
        0x4at
        0x44t
        0x5ft
        0xft
        0x17t
        0x5at
        0x4ct
        0x8t
        0xet
    .end array-data

    nop

    :array_6
    .array-data 1
        0x5at
        0xbt
        0x5et
        0x5at
        0x53t
        0x57t
        0x4dt
        0xdt
        0x5ft
        0x5at
        0x65t
        0x44t
        0x5ct
        0x7t
        0x43t
        0x14t
        0xbt
        0x9t
        0x19t
        0xat
        0x45t
        0x58t
        0x5at
    .end array-data

    :array_7
    .array-data 1
        0x44t
        0x14t
        0xat
        0x40t
        0x40t
        0x35t
        0x51t
        0xat
        0x0t
        0x5bt
        0x4dt
        0x9t
        0x46t
        0x46t
        0x58t
        0x5t
        0x19t
        0x8t
        0x41t
        0xat
        0x9t
    .end array-data
.end method


# virtual methods
.method public certificatePinner()Lokhttp3/CertificatePinner;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lokhttp3/Address;->certificatePinner:Lokhttp3/CertificatePinner;

    return-object v0
.end method

.method public connectionSpecs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/Address;->connectionSpecs:Ljava/util/List;

    return-object v0
.end method

.method public dns()Lokhttp3/Dns;
    .locals 1

    iget-object v0, p0, Lokhttp3/Address;->dns:Lokhttp3/Dns;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lokhttp3/Address;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    move-object v0, p1

    check-cast v0, Lokhttp3/Address;

    iget-object v0, v0, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    invoke-virtual {v1, v0}, Lokhttp3/HttpUrl;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lokhttp3/Address;

    invoke-virtual {p0, p1}, Lokhttp3/Address;->equalsNonHost(Lokhttp3/Address;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method equalsNonHost(Lokhttp3/Address;)Z
    .locals 2

    iget-object v0, p0, Lokhttp3/Address;->dns:Lokhttp3/Dns;

    iget-object v1, p1, Lokhttp3/Address;->dns:Lokhttp3/Dns;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/Address;->proxyAuthenticator:Lokhttp3/Authenticator;

    iget-object v1, p1, Lokhttp3/Address;->proxyAuthenticator:Lokhttp3/Authenticator;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/Address;->protocols:Ljava/util/List;

    iget-object v1, p1, Lokhttp3/Address;->protocols:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/Address;->connectionSpecs:Ljava/util/List;

    iget-object v1, p1, Lokhttp3/Address;->connectionSpecs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/Address;->proxySelector:Ljava/net/ProxySelector;

    iget-object v1, p1, Lokhttp3/Address;->proxySelector:Ljava/net/ProxySelector;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/Address;->proxy:Ljava/net/Proxy;

    iget-object v1, p1, Lokhttp3/Address;->proxy:Ljava/net/Proxy;

    invoke-static {v0, v1}, Lokhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v1, p1, Lokhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {v0, v1}, Lokhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iget-object v1, p1, Lokhttp3/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-static {v0, v1}, Lokhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/Address;->certificatePinner:Lokhttp3/CertificatePinner;

    iget-object v1, p1, Lokhttp3/Address;->certificatePinner:Lokhttp3/CertificatePinner;

    invoke-static {v0, v1}, Lokhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->port()I

    move-result v0

    invoke-virtual {p1}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->port()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 11

    const/4 v1, 0x0

    iget-object v0, p0, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->hashCode()I

    move-result v4

    iget-object v0, p0, Lokhttp3/Address;->dns:Lokhttp3/Dns;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    iget-object v0, p0, Lokhttp3/Address;->proxyAuthenticator:Lokhttp3/Authenticator;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v6

    iget-object v0, p0, Lokhttp3/Address;->protocols:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v7

    iget-object v0, p0, Lokhttp3/Address;->connectionSpecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v8

    iget-object v0, p0, Lokhttp3/Address;->proxySelector:Ljava/net/ProxySelector;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v9

    iget-object v0, p0, Lokhttp3/Address;->proxy:Ljava/net/Proxy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lokhttp3/Address;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->hashCode()I

    move-result v0

    :goto_0
    iget-object v2, p0, Lokhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lokhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    iget-object v3, p0, Lokhttp3/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lokhttp3/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2
    iget-object v10, p0, Lokhttp3/Address;->certificatePinner:Lokhttp3/CertificatePinner;

    if-eqz v10, :cond_0

    iget-object v1, p0, Lokhttp3/Address;->certificatePinner:Lokhttp3/CertificatePinner;

    invoke-virtual {v1}, Lokhttp3/CertificatePinner;->hashCode()I

    move-result v1

    :cond_0
    add-int/lit16 v4, v4, 0x20f

    mul-int/lit8 v4, v4, 0x1f

    add-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x1f

    add-int/2addr v4, v6

    mul-int/lit8 v4, v4, 0x1f

    add-int/2addr v4, v7

    mul-int/lit8 v4, v4, 0x1f

    add-int/2addr v4, v8

    mul-int/lit8 v4, v4, 0x1f

    add-int/2addr v4, v9

    mul-int/lit8 v4, v4, 0x1f

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    move v3, v1

    goto :goto_2
.end method

.method public hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lokhttp3/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public protocols()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/Address;->protocols:Ljava/util/List;

    return-object v0
.end method

.method public proxy()Ljava/net/Proxy;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lokhttp3/Address;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public proxyAuthenticator()Lokhttp3/Authenticator;
    .locals 1

    iget-object v0, p0, Lokhttp3/Address;->proxyAuthenticator:Lokhttp3/Authenticator;

    return-object v0
.end method

.method public proxySelector()Ljava/net/ProxySelector;
    .locals 1

    iget-object v0, p0, Lokhttp3/Address;->proxySelector:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public socketFactory()Ljavax/net/SocketFactory;
    .locals 1

    iget-object v0, p0, Lokhttp3/Address;->socketFactory:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lokhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const/16 v3, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v1, v3, [B

    fill-array-data v1, :array_0

    const-string v2, "bffaf3"

    invoke-static {v1, v2, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v4, [B

    const/16 v2, 0x9

    aput-byte v2, v1, v5

    const-string v2, "3a9597"

    invoke-static {v1, v2, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->port()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/Address;->proxy:Ljava/net/Proxy;

    if-eqz v1, :cond_0

    new-array v1, v3, [B

    fill-array-data v1, :array_1

    const-string v2, "e42788"

    invoke-static {v1, v2, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/Address;->proxy:Ljava/net/Proxy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_0
    new-array v1, v4, [B

    const/16 v2, 0x4f

    aput-byte v2, v1, v5

    const-string v2, "24e5b6"

    const-wide v4, 0x41d11afab5400000L    # 1.147923157E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v1, 0x10

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "d4bef8"

    const/16 v3, 0x7e94

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/Address;->proxySelector:Ljava/net/ProxySelector;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :array_0
    .array-data 1
        0x23t
        0x2t
        0x2t
        0x13t
        0x3t
        0x40t
        0x11t
        0x1dt
    .end array-data

    :array_1
    .array-data 1
        0x49t
        0x14t
        0x42t
        0x45t
        0x57t
        0x40t
        0x1ct
        0x9t
    .end array-data

    :array_2
    .array-data 1
        0x48t
        0x14t
        0x12t
        0x17t
        0x9t
        0x40t
        0x1dt
        0x67t
        0x7t
        0x9t
        0x3t
        0x5bt
        0x10t
        0x5bt
        0x10t
        0x58t
    .end array-data
.end method

.method public url()Lokhttp3/HttpUrl;
    .locals 1

    iget-object v0, p0, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    return-object v0
.end method
