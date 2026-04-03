.class public Lcom/dz/scanner/RequestNetworkController;
.super Ljava/lang/Object;


# static fields
.field public static final DELETE:Ljava/lang/String;

.field public static final GET:Ljava/lang/String;

.field public static final POST:Ljava/lang/String;

.field public static final PUT:Ljava/lang/String;

.field private static final READ_TIMEOUT:I = 0x61a8

.field public static final REQUEST_BODY:I = 0x1

.field public static final REQUEST_PARAM:I = 0x0

.field private static final SOCKET_TIMEOUT:I = 0x3a98

.field private static mInstance:Lcom/dz/scanner/RequestNetworkController;


# instance fields
.field protected client:Lokhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "DELETE"

    sput-object v0, Lcom/dz/scanner/RequestNetworkController;->DELETE:Ljava/lang/String;

    const-string v0, "GET"

    sput-object v0, Lcom/dz/scanner/RequestNetworkController;->GET:Ljava/lang/String;

    const-string v0, "POST"

    sput-object v0, Lcom/dz/scanner/RequestNetworkController;->POST:Ljava/lang/String;

    const-string v0, "PUT"

    sput-object v0, Lcom/dz/scanner/RequestNetworkController;->PUT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getClient()Lokhttp3/OkHttpClient;
    .locals 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/dz/scanner/RequestNetworkController;->client:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_0

    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    new-instance v2, Lcom/dz/scanner/RequestNetworkController$1;

    invoke-direct {v2, p0}, Lcom/dz/scanner/RequestNetworkController$1;-><init>(Lcom/dz/scanner/RequestNetworkController;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    aput-object v2, v0, v3

    :try_start_1
    const-string v2, "TLS"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v0, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v0, v0, v3

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    const-wide/16 v2, 0x3a98

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v0}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    const-wide/16 v2, 0x61a8

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v0}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    const-wide/16 v2, 0x61a8

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v0}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    new-instance v0, Lcom/dz/scanner/RequestNetworkController$2;

    invoke-direct {v0, p0}, Lcom/dz/scanner/RequestNetworkController$2;-><init>(Lcom/dz/scanner/RequestNetworkController;)V

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/dz/scanner/RequestNetworkController;->client:Lokhttp3/OkHttpClient;

    :cond_0
    iget-object v0, p0, Lcom/dz/scanner/RequestNetworkController;->client:Lokhttp3/OkHttpClient;

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getInstance()Lcom/dz/scanner/RequestNetworkController;
    .locals 2

    const-class v0, Lcom/dz/scanner/RequestNetworkController;

    monitor-enter v0

    :try_start_0
    sget-object v0, Lcom/dz/scanner/RequestNetworkController;->mInstance:Lcom/dz/scanner/RequestNetworkController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/dz/scanner/RequestNetworkController;

    invoke-direct {v0}, Lcom/dz/scanner/RequestNetworkController;-><init>()V

    sput-object v0, Lcom/dz/scanner/RequestNetworkController;->mInstance:Lcom/dz/scanner/RequestNetworkController;

    :cond_0
    sget-object v0, Lcom/dz/scanner/RequestNetworkController;->mInstance:Lcom/dz/scanner/RequestNetworkController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-class v1, Lcom/dz/scanner/RequestNetworkController;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    const-class v1, Lcom/dz/scanner/RequestNetworkController;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public execute(Lcom/dz/scanner/RequestNetwork;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dz/scanner/RequestNetwork$RequestListener;)V
    .locals 6

    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    new-instance v3, Lokhttp3/Headers$Builder;

    invoke-direct {v3}, Lokhttp3/Headers$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/dz/scanner/RequestNetwork;->getHeaders()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/dz/scanner/RequestNetwork;->getHeaders()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/dz/scanner/RequestNetwork;->getRequestType()I

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/dz/scanner/RequestNetworkController;->GET:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_4

    :try_start_1
    invoke-static {p3}, Lokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    :try_start_2
    invoke-virtual {p1}, Lcom/dz/scanner/RequestNetwork;->getParams()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Lcom/dz/scanner/RequestNetwork;->getParams()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    invoke-virtual {v4}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v2, v0}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v3}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    :goto_2
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    invoke-direct {p0}, Lcom/dz/scanner/RequestNetworkController;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/dz/scanner/RequestNetworkController$3;

    invoke-direct {v1, p0, p1, p5, p4}, Lcom/dz/scanner/RequestNetworkController$3;-><init>(Lcom/dz/scanner/RequestNetworkController;Lcom/dz/scanner/RequestNetwork;Lcom/dz/scanner/RequestNetwork$RequestListener;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    return-void

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    goto :goto_0

    :cond_3
    :try_start_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p5, p4, v0}, Lcom/dz/scanner/RequestNetwork$RequestListener;->onErrorResponse(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_1
    move-exception v0

    :try_start_4
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v4, Lokhttp3/FormBody$Builder;

    invoke-direct {v4}, Lokhttp3/FormBody$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/dz/scanner/RequestNetwork;->getParams()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {p1}, Lcom/dz/scanner/RequestNetwork;->getParams()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    invoke-virtual {v4}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object v0

    invoke-virtual {v2, p3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v3}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v3

    invoke-virtual {v1, v3}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto/16 :goto_2

    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    goto :goto_4

    :cond_7
    const-string v0, "application/json"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1}, Lcom/dz/scanner/RequestNetwork;->getParams()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    sget-object v1, Lcom/dz/scanner/RequestNetworkController;->GET:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v2, p3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v3}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    goto/16 :goto_2

    :cond_8
    invoke-virtual {v2, p3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v3}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v3

    invoke-virtual {v1, v3}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2
.end method
