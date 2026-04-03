.class public final Lokhttp3/OkHttpClient$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/OkHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field authenticator:Lokhttp3/Authenticator;

.field cache:Lokhttp3/Cache;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field certificatePinner:Lokhttp3/CertificatePinner;

.field connectTimeout:I

.field connectionPool:Lokhttp3/ConnectionPool;

.field connectionSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field cookieJar:Lokhttp3/CookieJar;

.field dispatcher:Lokhttp3/Dispatcher;

.field dns:Lokhttp3/Dns;

.field eventListenerFactory:Lokhttp3/EventListener$Factory;

.field followRedirects:Z

.field followSslRedirects:Z

.field hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field internalCache:Lokhttp3/internal/cache/InternalCache;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final networkInterceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field pingInterval:I

.field protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field proxy:Ljava/net/Proxy;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field proxyAuthenticator:Lokhttp3/Authenticator;

.field proxySelector:Ljava/net/ProxySelector;

.field readTimeout:I

.field retryOnConnectionFailure:Z

.field socketFactory:Ljavax/net/SocketFactory;

.field sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field writeTimeout:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v2, 0x2710

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    new-instance v0, Lokhttp3/Dispatcher;

    invoke-direct {v0}, Lokhttp3/Dispatcher;-><init>()V

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->dispatcher:Lokhttp3/Dispatcher;

    sget-object v0, Lokhttp3/OkHttpClient;->DEFAULT_PROTOCOLS:Ljava/util/List;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->protocols:Ljava/util/List;

    sget-object v0, Lokhttp3/OkHttpClient;->DEFAULT_CONNECTION_SPECS:Ljava/util/List;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->connectionSpecs:Ljava/util/List;

    sget-object v0, Lokhttp3/EventListener;->NONE:Lokhttp3/EventListener;

    invoke-static {v0}, Lokhttp3/EventListener;->factory(Lokhttp3/EventListener;)Lokhttp3/EventListener$Factory;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->eventListenerFactory:Lokhttp3/EventListener$Factory;

    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->proxySelector:Ljava/net/ProxySelector;

    sget-object v0, Lokhttp3/CookieJar;->NO_COOKIES:Lokhttp3/CookieJar;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->cookieJar:Lokhttp3/CookieJar;

    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->socketFactory:Ljavax/net/SocketFactory;

    sget-object v0, Lokhttp3/internal/tls/OkHostnameVerifier;->INSTANCE:Lokhttp3/internal/tls/OkHostnameVerifier;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    sget-object v0, Lokhttp3/CertificatePinner;->DEFAULT:Lokhttp3/CertificatePinner;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->certificatePinner:Lokhttp3/CertificatePinner;

    sget-object v0, Lokhttp3/Authenticator;->NONE:Lokhttp3/Authenticator;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->proxyAuthenticator:Lokhttp3/Authenticator;

    sget-object v0, Lokhttp3/Authenticator;->NONE:Lokhttp3/Authenticator;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->authenticator:Lokhttp3/Authenticator;

    new-instance v0, Lokhttp3/ConnectionPool;

    invoke-direct {v0}, Lokhttp3/ConnectionPool;-><init>()V

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->connectionPool:Lokhttp3/ConnectionPool;

    sget-object v0, Lokhttp3/Dns;->SYSTEM:Lokhttp3/Dns;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->dns:Lokhttp3/Dns;

    iput-boolean v1, p0, Lokhttp3/OkHttpClient$Builder;->followSslRedirects:Z

    iput-boolean v1, p0, Lokhttp3/OkHttpClient$Builder;->followRedirects:Z

    iput-boolean v1, p0, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure:Z

    iput v2, p0, Lokhttp3/OkHttpClient$Builder;->connectTimeout:I

    iput v2, p0, Lokhttp3/OkHttpClient$Builder;->readTimeout:I

    iput v2, p0, Lokhttp3/OkHttpClient$Builder;->writeTimeout:I

    const/4 v0, 0x0

    iput v0, p0, Lokhttp3/OkHttpClient$Builder;->pingInterval:I

    return-void
.end method

.method constructor <init>(Lokhttp3/OkHttpClient;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    iget-object v0, p1, Lokhttp3/OkHttpClient;->dispatcher:Lokhttp3/Dispatcher;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->dispatcher:Lokhttp3/Dispatcher;

    iget-object v0, p1, Lokhttp3/OkHttpClient;->proxy:Ljava/net/Proxy;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->proxy:Ljava/net/Proxy;

    iget-object v0, p1, Lokhttp3/OkHttpClient;->protocols:Ljava/util/List;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->protocols:Ljava/util/List;

    iget-object v0, p1, Lokhttp3/OkHttpClient;->connectionSpecs:Ljava/util/List;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->connectionSpecs:Ljava/util/List;

    iget-object v0, p0, Lokhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    iget-object v1, p1, Lokhttp3/OkHttpClient;->interceptors:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lokhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    iget-object v1, p1, Lokhttp3/OkHttpClient;->networkInterceptors:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p1, Lokhttp3/OkHttpClient;->eventListenerFactory:Lokhttp3/EventListener$Factory;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->eventListenerFactory:Lokhttp3/EventListener$Factory;

    iget-object v0, p1, Lokhttp3/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->proxySelector:Ljava/net/ProxySelector;

    iget-object v0, p1, Lokhttp3/OkHttpClient;->cookieJar:Lokhttp3/CookieJar;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->cookieJar:Lokhttp3/CookieJar;

    iget-object v0, p1, Lokhttp3/OkHttpClient;->internalCache:Lokhttp3/internal/cache/InternalCache;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->internalCache:Lokhttp3/internal/cache/InternalCache;

    iget-object v0, p1, Lokhttp3/OkHttpClient;->cache:Lokhttp3/Cache;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->cache:Lokhttp3/Cache;

    iget-object v0, p1, Lokhttp3/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->socketFactory:Ljavax/net/SocketFactory;

    iget-object v0, p1, Lokhttp3/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v0, p1, Lokhttp3/OkHttpClient;->certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;

    iget-object v0, p1, Lokhttp3/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iget-object v0, p1, Lokhttp3/OkHttpClient;->certificatePinner:Lokhttp3/CertificatePinner;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->certificatePinner:Lokhttp3/CertificatePinner;

    iget-object v0, p1, Lokhttp3/OkHttpClient;->proxyAuthenticator:Lokhttp3/Authenticator;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->proxyAuthenticator:Lokhttp3/Authenticator;

    iget-object v0, p1, Lokhttp3/OkHttpClient;->authenticator:Lokhttp3/Authenticator;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->authenticator:Lokhttp3/Authenticator;

    iget-object v0, p1, Lokhttp3/OkHttpClient;->connectionPool:Lokhttp3/ConnectionPool;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->connectionPool:Lokhttp3/ConnectionPool;

    iget-object v0, p1, Lokhttp3/OkHttpClient;->dns:Lokhttp3/Dns;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->dns:Lokhttp3/Dns;

    iget-boolean v0, p1, Lokhttp3/OkHttpClient;->followSslRedirects:Z

    iput-boolean v0, p0, Lokhttp3/OkHttpClient$Builder;->followSslRedirects:Z

    iget-boolean v0, p1, Lokhttp3/OkHttpClient;->followRedirects:Z

    iput-boolean v0, p0, Lokhttp3/OkHttpClient$Builder;->followRedirects:Z

    iget-boolean v0, p1, Lokhttp3/OkHttpClient;->retryOnConnectionFailure:Z

    iput-boolean v0, p0, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure:Z

    iget v0, p1, Lokhttp3/OkHttpClient;->connectTimeout:I

    iput v0, p0, Lokhttp3/OkHttpClient$Builder;->connectTimeout:I

    iget v0, p1, Lokhttp3/OkHttpClient;->readTimeout:I

    iput v0, p0, Lokhttp3/OkHttpClient$Builder;->readTimeout:I

    iget v0, p1, Lokhttp3/OkHttpClient;->writeTimeout:I

    iput v0, p0, Lokhttp3/OkHttpClient$Builder;->writeTimeout:I

    iget v0, p1, Lokhttp3/OkHttpClient;->pingInterval:I

    iput v0, p0, Lokhttp3/OkHttpClient$Builder;->pingInterval:I

    return-void
.end method


# virtual methods
.method public addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;
    .locals 4

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x13

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "f0221c"

    const v3, -0x31540e8d

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lokhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :array_0
    .array-data 1
        0xft
        0x5et
        0x46t
        0x57t
        0x43t
        0x0t
        0x3t
        0x40t
        0x46t
        0x5dt
        0x43t
        0x43t
        0x5bt
        0xdt
        0x12t
        0x5ct
        0x44t
        0xft
        0xat
    .end array-data
.end method

.method public addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;
    .locals 4

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x13

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "926517"

    const v3, 0x4e95305b

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lokhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :array_0
    .array-data 1
        0x50t
        0x5ct
        0x42t
        0x50t
        0x43t
        0x54t
        0x5ct
        0x42t
        0x42t
        0x5at
        0x43t
        0x17t
        0x4t
        0xft
        0x16t
        0x5bt
        0x44t
        0x5bt
        0x55t
    .end array-data
.end method

.method public authenticator(Lokhttp3/Authenticator;)Lokhttp3/OkHttpClient$Builder;
    .locals 5

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const/16 v1, 0x15

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "8a0b67"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->authenticator:Lokhttp3/Authenticator;

    return-object p0

    :array_0
    .array-data 1
        0x59t
        0x14t
        0x44t
        0xat
        0x53t
        0x59t
        0x4ct
        0x8t
        0x53t
        0x3t
        0x42t
        0x58t
        0x4at
        0x41t
        0xdt
        0x5ft
        0x16t
        0x59t
        0x4dt
        0xdt
        0x5ct
    .end array-data
.end method

.method public build()Lokhttp3/OkHttpClient;
    .locals 1

    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0, p0}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$Builder;)V

    return-object v0
.end method

.method public cache(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;
    .locals 1
    .param p1    # Lokhttp3/Cache;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->cache:Lokhttp3/Cache;

    const/4 v0, 0x0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->internalCache:Lokhttp3/internal/cache/InternalCache;

    return-object p0
.end method

.method public certificatePinner(Lokhttp3/CertificatePinner;)Lokhttp3/OkHttpClient$Builder;
    .locals 6

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const/16 v1, 0x19

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "de59dc"

    const-wide v4, 0x41a419572a000000L    # 1.68602517E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->certificatePinner:Lokhttp3/CertificatePinner;

    return-object p0

    nop

    :array_0
    .array-data 1
        0x7t
        0x0t
        0x47t
        0x4dt
        0xdt
        0x5t
        0xdt
        0x6t
        0x54t
        0x4dt
        0x1t
        0x33t
        0xdt
        0xbt
        0x5bt
        0x5ct
        0x16t
        0x43t
        0x59t
        0x58t
        0x15t
        0x57t
        0x11t
        0xft
        0x8t
    .end array-data
.end method

.method public connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;
    .locals 5

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "2cf3e8"

    const-wide/32 v2, 0x61e06792

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lokhttp3/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v0

    iput v0, p0, Lokhttp3/OkHttpClient$Builder;->connectTimeout:I

    return-object p0

    :array_0
    .array-data 1
        0x46t
        0xat
        0xbt
        0x56t
        0xat
        0x4dt
        0x46t
    .end array-data
.end method

.method public connectionPool(Lokhttp3/ConnectionPool;)Lokhttp3/OkHttpClient$Builder;
    .locals 4

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const/16 v1, 0x16

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "dd41f7"

    const v3, -0x31fbe2ee

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->connectionPool:Lokhttp3/ConnectionPool;

    return-object p0

    nop

    :array_0
    .array-data 1
        0x7t
        0xbt
        0x5at
        0x5ft
        0x3t
        0x54t
        0x10t
        0xdt
        0x5bt
        0x5ft
        0x36t
        0x58t
        0xbt
        0x8t
        0x14t
        0xct
        0x5bt
        0x17t
        0xat
        0x11t
        0x58t
        0x5dt
    .end array-data
.end method

.method public connectionSpecs(Ljava/util/List;)Lokhttp3/OkHttpClient$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/ConnectionSpec;",
            ">;)",
            "Lokhttp3/OkHttpClient$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lokhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->connectionSpecs:Ljava/util/List;

    return-object p0
.end method

.method public cookieJar(Lokhttp3/CookieJar;)Lokhttp3/OkHttpClient$Builder;
    .locals 4

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const/16 v1, 0x11

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "21a5c1"

    const/16 v3, -0x6f6

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->cookieJar:Lokhttp3/CookieJar;

    return-object p0

    :array_0
    .array-data 1
        0x51t
        0x5et
        0xet
        0x5et
        0xat
        0x54t
        0x78t
        0x50t
        0x13t
        0x15t
        0x5et
        0xct
        0x12t
        0x5ft
        0x14t
        0x59t
        0xft
    .end array-data
.end method

.method public dispatcher(Lokhttp3/Dispatcher;)Lokhttp3/OkHttpClient$Builder;
    .locals 5

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x12

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "dba247"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->dispatcher:Lokhttp3/Dispatcher;

    return-object p0

    :array_0
    .array-data 1
        0x0t
        0xbt
        0x12t
        0x42t
        0x55t
        0x43t
        0x7t
        0xat
        0x4t
        0x40t
        0x14t
        0xat
        0x59t
        0x42t
        0xft
        0x47t
        0x58t
        0x5bt
    .end array-data
.end method

.method public dns(Lokhttp3/Dns;)Lokhttp3/OkHttpClient$Builder;
    .locals 4

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const/16 v1, 0xb

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "6f2088"

    const/16 v3, -0x40ff

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->dns:Lokhttp3/Dns;

    return-object p0

    :array_0
    .array-data 1
        0x52t
        0x8t
        0x41t
        0x10t
        0x5t
        0x5t
        0x16t
        0x8t
        0x47t
        0x5ct
        0x54t
    .end array-data
.end method

.method public eventListener(Lokhttp3/EventListener;)Lokhttp3/OkHttpClient$Builder;
    .locals 6

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const/16 v1, 0x15

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "b0389b"

    const-wide/32 v4, -0x297f387

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Lokhttp3/EventListener;->factory(Lokhttp3/EventListener;)Lokhttp3/EventListener$Factory;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->eventListenerFactory:Lokhttp3/EventListener$Factory;

    return-object p0

    nop

    :array_0
    .array-data 1
        0x7t
        0x46t
        0x56t
        0x56t
        0x4dt
        0x2et
        0xbt
        0x43t
        0x47t
        0x5dt
        0x57t
        0x7t
        0x10t
        0x10t
        0xet
        0x5t
        0x19t
        0xct
        0x17t
        0x5ct
        0x5ft
    .end array-data
.end method

.method public eventListenerFactory(Lokhttp3/EventListener$Factory;)Lokhttp3/OkHttpClient$Builder;
    .locals 6

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const/16 v1, 0x1c

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "20baf1"

    const-wide v4, -0x3e3a102a87000000L    # -7.36078578E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->eventListenerFactory:Lokhttp3/EventListener$Factory;

    return-object p0

    nop

    :array_0
    .array-data 1
        0x57t
        0x46t
        0x7t
        0xft
        0x12t
        0x7dt
        0x5bt
        0x43t
        0x16t
        0x4t
        0x8t
        0x54t
        0x40t
        0x76t
        0x3t
        0x2t
        0x12t
        0x5et
        0x40t
        0x49t
        0x42t
        0x5ct
        0x5bt
        0x11t
        0x5ct
        0x45t
        0xet
        0xdt
    .end array-data
.end method

.method public followRedirects(Z)Lokhttp3/OkHttpClient$Builder;
    .locals 0

    iput-boolean p1, p0, Lokhttp3/OkHttpClient$Builder;->followRedirects:Z

    return-object p0
.end method

.method public followSslRedirects(Z)Lokhttp3/OkHttpClient$Builder;
    .locals 0

    iput-boolean p1, p0, Lokhttp3/OkHttpClient$Builder;->followSslRedirects:Z

    return-object p0
.end method

.method public hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;
    .locals 6

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const/16 v1, 0x18

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "d4d7f9"

    const-wide v4, 0x41d21e4382000000L    # 1.215893E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object p0

    nop

    :array_0
    .array-data 1
        0xct
        0x5bt
        0x17t
        0x43t
        0x8t
        0x58t
        0x9t
        0x51t
        0x32t
        0x52t
        0x14t
        0x50t
        0x2t
        0x5dt
        0x1t
        0x45t
        0x46t
        0x4t
        0x59t
        0x14t
        0xat
        0x42t
        0xat
        0x55t
    .end array-data
.end method

.method public interceptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    return-object v0
.end method

.method public networkInterceptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    return-object v0
.end method

.method public pingInterval(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;
    .locals 5

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "3ea718"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lokhttp3/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v0

    iput v0, p0, Lokhttp3/OkHttpClient$Builder;->pingInterval:I

    return-object p0

    :array_0
    .array-data 1
        0x5at
        0xbt
        0x15t
        0x52t
        0x43t
        0x4et
        0x52t
        0x9t
    .end array-data
.end method

.method public protocols(Ljava/util/List;)Lokhttp3/OkHttpClient$Builder;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Protocol;",
            ">;)",
            "Lokhttp3/OkHttpClient$Builder;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v1, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x24

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "e777e3"

    const-wide v6, 0x41d0169447000000L    # 1.079660828E9

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    sget-object v1, Lokhttp3/Protocol;->HTTP_1_0:Lokhttp3/Protocol;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x25

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "1cf889"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x1f

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "9987f6"

    const-wide/32 v4, -0x3cf6bafc

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sget-object v1, Lokhttp3/Protocol;->SPDY_3:Lokhttp3/Protocol;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->protocols:Ljava/util/List;

    return-object p0

    :array_0
    .array-data 1
        0x15t
        0x45t
        0x58t
        0x43t
        0xat
        0x50t
        0xat
        0x5bt
        0x44t
        0x17t
        0x1t
        0x5ct
        0x0t
        0x44t
        0x59t
        0x10t
        0x11t
        0x13t
        0x6t
        0x58t
        0x59t
        0x43t
        0x4t
        0x5at
        0xbt
        0x17t
        0x5ft
        0x43t
        0x11t
        0x43t
        0x4at
        0x6t
        0x19t
        0x6t
        0x5ft
        0x13t
    .end array-data

    :array_1
    .array-data 1
        0x41t
        0x11t
        0x9t
        0x4ct
        0x57t
        0x5at
        0x5et
        0xft
        0x15t
        0x18t
        0x55t
        0x4ct
        0x42t
        0x17t
        0x46t
        0x56t
        0x57t
        0x4dt
        0x11t
        0x0t
        0x9t
        0x56t
        0x4ct
        0x58t
        0x58t
        0xdt
        0x46t
        0x50t
        0x4ct
        0x4dt
        0x41t
        0x4ct
        0x57t
        0x16t
        0x8t
        0x3t
        0x11t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x49t
        0x4bt
        0x57t
        0x43t
        0x9t
        0x55t
        0x56t
        0x55t
        0x4bt
        0x17t
        0xbt
        0x43t
        0x4at
        0x4dt
        0x18t
        0x59t
        0x9t
        0x42t
        0x19t
        0x5at
        0x57t
        0x59t
        0x12t
        0x57t
        0x50t
        0x57t
        0x18t
        0x59t
        0x13t
        0x5at
        0x55t
    .end array-data
.end method

.method public proxy(Ljava/net/Proxy;)Lokhttp3/OkHttpClient$Builder;
    .locals 0
    .param p1    # Ljava/net/Proxy;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->proxy:Ljava/net/Proxy;

    return-object p0
.end method

.method public proxyAuthenticator(Lokhttp3/Authenticator;)Lokhttp3/OkHttpClient$Builder;
    .locals 4

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const/16 v1, 0x1a

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "be521b"

    const v3, -0x32cf352a

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->proxyAuthenticator:Lokhttp3/Authenticator;

    return-object p0

    nop

    :array_0
    .array-data 1
        0x12t
        0x17t
        0x5at
        0x4at
        0x48t
        0x23t
        0x17t
        0x11t
        0x5dt
        0x57t
        0x5ft
        0x16t
        0xbt
        0x6t
        0x54t
        0x46t
        0x5et
        0x10t
        0x42t
        0x58t
        0x8t
        0x12t
        0x5ft
        0x17t
        0xet
        0x9t
    .end array-data
.end method

.method public proxySelector(Ljava/net/ProxySelector;)Lokhttp3/OkHttpClient$Builder;
    .locals 0

    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->proxySelector:Ljava/net/ProxySelector;

    return-object p0
.end method

.method public readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;
    .locals 5

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "b680b1"

    const-wide v2, -0x3e29475e41c00000L    # -1.524795129E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lokhttp3/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v0

    iput v0, p0, Lokhttp3/OkHttpClient$Builder;->readTimeout:I

    return-object p0

    :array_0
    .array-data 1
        0x16t
        0x5ft
        0x55t
        0x55t
        0xdt
        0x44t
        0x16t
    .end array-data
.end method

.method public retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;
    .locals 0

    iput-boolean p1, p0, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure:Z

    return-object p0
.end method

.method setInternalCache(Lokhttp3/internal/cache/InternalCache;)V
    .locals 1
    .param p1    # Lokhttp3/internal/cache/InternalCache;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->internalCache:Lokhttp3/internal/cache/InternalCache;

    const/4 v0, 0x0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->cache:Lokhttp3/Cache;

    return-void
.end method

.method public socketFactory(Ljavax/net/SocketFactory;)Lokhttp3/OkHttpClient$Builder;
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const/16 v1, 0x15

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "a37476"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->socketFactory:Ljavax/net/SocketFactory;

    return-object p0

    nop

    :array_0
    .array-data 1
        0x12t
        0x5ct
        0x54t
        0x5ft
        0x52t
        0x42t
        0x27t
        0x52t
        0x54t
        0x40t
        0x58t
        0x44t
        0x18t
        0x13t
        0xat
        0x9t
        0x17t
        0x58t
        0x14t
        0x5ft
        0x5bt
    .end array-data
.end method

.method public sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lokhttp3/OkHttpClient$Builder;
    .locals 4

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const/16 v1, 0x18

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "2e5ce6"

    const/16 v3, -0x512b

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokhttp3/internal/platform/Platform;->buildCertificateChainCleaner(Ljavax/net/ssl/SSLSocketFactory;)Lokhttp3/internal/tls/CertificateChainCleaner;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;

    return-object p0

    :array_0
    .array-data 1
        0x41t
        0x16t
        0x59t
        0x30t
        0xat
        0x55t
        0x59t
        0x0t
        0x41t
        0x25t
        0x4t
        0x55t
        0x46t
        0xat
        0x47t
        0x1at
        0x45t
        0xbt
        0xft
        0x45t
        0x5bt
        0x16t
        0x9t
        0x5at
    .end array-data
.end method

.method public sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;
    .locals 5

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const/16 v1, 0x18

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "8a2df6"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const/16 v1, 0x14

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "5a3c14"

    const/16 v3, 0x6998

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {p2}, Lokhttp3/internal/tls/CertificateChainCleaner;->get(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/tls/CertificateChainCleaner;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;

    return-object p0

    nop

    :array_0
    .array-data 1
        0x4bt
        0x12t
        0x5et
        0x37t
        0x9t
        0x55t
        0x53t
        0x4t
        0x46t
        0x22t
        0x7t
        0x55t
        0x4ct
        0xet
        0x40t
        0x1dt
        0x46t
        0xbt
        0x5t
        0x41t
        0x5ct
        0x11t
        0xat
        0x5at
    .end array-data

    :array_1
    .array-data 1
        0x41t
        0x13t
        0x46t
        0x10t
        0x45t
        0x79t
        0x54t
        0xft
        0x52t
        0x4t
        0x54t
        0x46t
        0x15t
        0x5ct
        0xet
        0x43t
        0x5ft
        0x41t
        0x59t
        0xdt
    .end array-data
.end method

.method public writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "43fe7b"

    const/16 v2, 0x2117

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lokhttp3/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v0

    iput v0, p0, Lokhttp3/OkHttpClient$Builder;->writeTimeout:I

    return-object p0

    nop

    :array_0
    .array-data 1
        0x40t
        0x5at
        0xbt
        0x0t
        0x58t
        0x17t
        0x40t
    .end array-data
.end method
