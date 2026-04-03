.class public Lokhttp3/internal/cache/CacheStrategy$Factory;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/cache/CacheStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# instance fields
.field private ageSeconds:I

.field final cacheResponse:Lokhttp3/Response;

.field private etag:Ljava/lang/String;

.field private expires:Ljava/util/Date;

.field private lastModified:Ljava/util/Date;

.field private lastModifiedString:Ljava/lang/String;

.field final nowMillis:J

.field private receivedResponseMillis:J

.field final request:Lokhttp3/Request;

.field private sentRequestMillis:J

.field private servedDate:Ljava/util/Date;

.field private servedDateString:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLokhttp3/Request;Lokhttp3/Response;)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->ageSeconds:I

    iput-wide p1, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->nowMillis:J

    iput-object p3, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    iput-object p4, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    if-eqz p4, :cond_5

    invoke-virtual {p4}, Lokhttp3/Response;->sentRequestAtMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->sentRequestMillis:J

    invoke-virtual {p4}, Lokhttp3/Response;->receivedResponseAtMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->receivedResponseMillis:J

    invoke-virtual {p4}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1}, Lokhttp3/Headers;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_5

    invoke-virtual {v1, v0}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [B

    fill-array-data v5, :array_0

    const-string v6, "ea7bd0"

    const-wide v8, -0x3e29ca2868800000L    # -1.490509406E9

    invoke-static {v5, v6, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v4}, Lokhttp3/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    iput-object v4, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDateString:Ljava/lang/String;

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x7

    new-array v5, v5, [B

    fill-array-data v5, :array_1

    const-string v6, "8ea25e"

    const-wide v8, -0x3e3ed644e3000000L    # -5.75895098E8

    invoke-static {v5, v6, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v4}, Lokhttp3/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->expires:Ljava/util/Date;

    goto :goto_1

    :cond_2
    const/16 v5, 0xd

    new-array v5, v5, [B

    fill-array-data v5, :array_2

    const-string v6, "a7432b"

    const/16 v7, 0x6bc9

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v4}, Lokhttp3/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    iput-object v4, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->lastModifiedString:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const/4 v5, 0x4

    new-array v5, v5, [B

    fill-array-data v5, :array_3

    const-string v6, "1a6974"

    const/16 v7, 0x3f36

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    iput-object v4, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->etag:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const/4 v5, 0x3

    new-array v5, v5, [B

    fill-array-data v5, :array_4

    const-string v6, "b543be"

    const-wide/32 v8, 0x5781eac2

    invoke-static {v5, v6, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, -0x1

    invoke-static {v4, v3}, Lokhttp3/internal/http/HttpHeaders;->parseSeconds(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->ageSeconds:I

    goto :goto_1

    :cond_5
    return-void

    :array_0
    .array-data 1
        0x21t
        0x0t
        0x43t
        0x7t
    .end array-data

    :array_1
    .array-data 1
        0x7dt
        0x1dt
        0x11t
        0x5bt
        0x47t
        0x0t
        0x4bt
    .end array-data

    :array_2
    .array-data 1
        0x2dt
        0x56t
        0x47t
        0x47t
        0x1ft
        0x2ft
        0xet
        0x53t
        0x5dt
        0x55t
        0x5bt
        0x7t
        0x5t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x74t
        0x35t
        0x57t
        0x5et
    .end array-data

    :array_4
    .array-data 1
        0x23t
        0x52t
        0x51t
    .end array-data
.end method

.method private cacheResponseAge()J
    .locals 6

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->receivedResponseMillis:J

    iget-object v4, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_0
    iget v2, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->ageSeconds:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v3, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->ageSeconds:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_1
    iget-wide v2, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->receivedResponseMillis:J

    iget-wide v4, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->sentRequestMillis:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iget-wide v2, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->nowMillis:J

    iget-wide v4, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->receivedResponseMillis:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private computeFreshnessLifetime()J
    .locals 6

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    invoke-virtual {v2}, Lokhttp3/Response;->cacheControl()Lokhttp3/CacheControl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/CacheControl;->maxAgeSeconds()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2}, Lokhttp3/CacheControl;->maxAgeSeconds()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    iget-object v2, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->expires:Ljava/util/Date;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    :goto_1
    iget-object v4, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->expires:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long v2, v4, v2

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    move-wide v0, v2

    goto :goto_0

    :cond_2
    iget-wide v2, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->receivedResponseMillis:J

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    invoke-virtual {v2}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->query()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    :goto_2
    iget-object v4, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    const-wide/16 v0, 0xa

    div-long v0, v2, v0

    goto :goto_0

    :cond_4
    iget-wide v2, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->sentRequestMillis:J

    goto :goto_2
.end method

.method private getCandidate()Lokhttp3/internal/cache/CacheStrategy;
    .locals 12

    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    if-nez v0, :cond_0

    new-instance v0, Lokhttp3/internal/cache/CacheStrategy;

    iget-object v1, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    invoke-virtual {v0}, Lokhttp3/Request;->isHttps()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->handshake()Lokhttp3/Handshake;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lokhttp3/internal/cache/CacheStrategy;

    iget-object v1, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    iget-object v1, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    invoke-static {v0, v1}, Lokhttp3/internal/cache/CacheStrategy;->isCacheable(Lokhttp3/Response;Lokhttp3/Request;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lokhttp3/internal/cache/CacheStrategy;

    iget-object v1, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    invoke-virtual {v0}, Lokhttp3/Request;->cacheControl()Lokhttp3/CacheControl;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/CacheControl;->noCache()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    invoke-static {v0}, Lokhttp3/internal/cache/CacheStrategy$Factory;->hasConditions(Lokhttp3/Request;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    new-instance v0, Lokhttp3/internal/cache/CacheStrategy;

    iget-object v1, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->cacheControl()Lokhttp3/CacheControl;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/CacheControl;->immutable()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lokhttp3/internal/cache/CacheStrategy;

    const/4 v1, 0x0

    iget-object v2, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    invoke-direct {v0, v1, v2}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponseAge()J

    move-result-wide v8

    invoke-direct {p0}, Lokhttp3/internal/cache/CacheStrategy$Factory;->computeFreshnessLifetime()J

    move-result-wide v0

    invoke-virtual {v6}, Lokhttp3/CacheControl;->maxAgeSeconds()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6}, Lokhttp3/CacheControl;->maxAgeSeconds()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_6
    const-wide/16 v2, 0x0

    invoke-virtual {v6}, Lokhttp3/CacheControl;->minFreshSeconds()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_7

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6}, Lokhttp3/CacheControl;->minFreshSeconds()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    :cond_7
    const-wide/16 v4, 0x0

    invoke-virtual {v7}, Lokhttp3/CacheControl;->mustRevalidate()Z

    move-result v10

    if-nez v10, :cond_8

    invoke-virtual {v6}, Lokhttp3/CacheControl;->maxStaleSeconds()I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6}, Lokhttp3/CacheControl;->maxStaleSeconds()I

    move-result v5

    int-to-long v10, v5

    invoke-virtual {v4, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    :cond_8
    invoke-virtual {v7}, Lokhttp3/CacheControl;->noCache()Z

    move-result v6

    if-nez v6, :cond_b

    add-long v6, v8, v2

    add-long/2addr v4, v0

    cmp-long v4, v6, v4

    if-gez v4, :cond_b

    iget-object v4, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    invoke-virtual {v4}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v4

    add-long/2addr v2, v8

    cmp-long v0, v2, v0

    if-ltz v0, :cond_9

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "2f0018"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x29

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "47c3db"

    const-wide v6, -0x3e2b3a84dd000000L    # -1.39394574E9

    invoke-static {v1, v2, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lokhttp3/Response$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response$Builder;

    :cond_9
    const-wide/32 v0, 0x5265c00

    cmp-long v0, v8, v0

    if-lez v0, :cond_a

    invoke-direct {p0}, Lokhttp3/internal/cache/CacheStrategy$Factory;->isFreshnessLifetimeHeuristic()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "3acfd2"

    const-wide/32 v2, 0x1dd5c6d

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2c

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "de95e7"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lokhttp3/Response$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response$Builder;

    :cond_a
    new-instance v0, Lokhttp3/internal/cache/CacheStrategy;

    const/4 v1, 0x0

    invoke-virtual {v4}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->etag:Ljava/lang/String;

    if-eqz v0, :cond_c

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    const-string v1, "1857fd"

    const/16 v2, 0x4484

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->etag:Ljava/lang/String;

    :goto_1
    iget-object v2, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    invoke-virtual {v2}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    move-result-object v2

    sget-object v3, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    invoke-virtual {v3, v2, v1, v0}, Lokhttp3/internal/Internal;->addLenient(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lokhttp3/internal/cache/CacheStrategy;

    iget-object v1, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    invoke-virtual {v1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v2}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    invoke-direct {v0, v1, v2}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    if-eqz v0, :cond_d

    const/16 v0, 0x11

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    const-string v1, "da6b26"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->lastModifiedString:Ljava/lang/String;

    goto :goto_1

    :cond_d
    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-eqz v0, :cond_e

    const/16 v0, 0x11

    new-array v0, v0, [B

    fill-array-data v0, :array_6

    const-string v1, "2e3e3c"

    const v2, 0x4e9b8ddc

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDateString:Ljava/lang/String;

    goto :goto_1

    :cond_e
    new-instance v0, Lokhttp3/internal/cache/CacheStrategy;

    iget-object v1, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    goto/16 :goto_0

    :array_0
    .array-data 1
        0x65t
        0x7t
        0x42t
        0x5et
        0x58t
        0x56t
        0x55t
    .end array-data

    :array_1
    .array-data 1
        0x5t
        0x6t
        0x53t
        0x13t
        0x2ct
        0x16t
        0x40t
        0x47t
        0x36t
        0x61t
        0x28t
        0x21t
        0x5bt
        0x59t
        0xdt
        0x56t
        0x7t
        0x16t
        0x5dt
        0x58t
        0xdt
        0x13t
        0x46t
        0x30t
        0x51t
        0x44t
        0x13t
        0x5ct
        0xat
        0x11t
        0x51t
        0x17t
        0xat
        0x40t
        0x44t
        0x11t
        0x40t
        0x56t
        0xft
        0x56t
        0x46t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x64t
        0x0t
        0x11t
        0x8t
        0xdt
        0x5ct
        0x54t
    .end array-data

    :array_3
    .array-data 1
        0x55t
        0x54t
        0xat
        0x15t
        0x2dt
        0x43t
        0x10t
        0x15t
        0x6ct
        0x67t
        0x29t
        0x74t
        0xbt
        0xbt
        0x57t
        0x50t
        0x6t
        0x43t
        0xdt
        0xat
        0x57t
        0x15t
        0x47t
        0x7ft
        0x1t
        0x10t
        0x4bt
        0x5ct
        0x16t
        0x43t
        0xdt
        0x6t
        0x19t
        0x50t
        0x1dt
        0x47t
        0xdt
        0x17t
        0x58t
        0x41t
        0xct
        0x58t
        0xat
        0x47t
    .end array-data

    :array_4
    .array-data 1
        0x78t
        0x5et
        0x18t
        0x79t
        0x9t
        0xat
        0x54t
        0x15t
        0x78t
        0x56t
        0x12t
        0x7t
        0x59t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x2dt
        0x7t
        0x1bt
        0x2ft
        0x5dt
        0x52t
        0xdt
        0x7t
        0x5ft
        0x7t
        0x56t
        0x1bt
        0x37t
        0x8t
        0x58t
        0x1t
        0x57t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x7bt
        0x3t
        0x1et
        0x28t
        0x5ct
        0x7t
        0x5bt
        0x3t
        0x5at
        0x0t
        0x57t
        0x4et
        0x61t
        0xct
        0x5dt
        0x6t
        0x56t
    .end array-data
.end method

.method private static hasConditions(Lokhttp3/Request;)Z
    .locals 4

    const/16 v0, 0x11

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "68d921"

    const-wide/32 v2, -0x20501a24

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "f1588f"

    const/16 v2, 0x3388

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x7ft
        0x5et
        0x49t
        0x74t
        0x5dt
        0x55t
        0x5ft
        0x5et
        0xdt
        0x5ct
        0x56t
        0x1ct
        0x65t
        0x51t
        0xat
        0x5at
        0x57t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x2ft
        0x57t
        0x18t
        0x76t
        0x57t
        0x8t
        0x3t
        0x1ct
        0x78t
        0x59t
        0x4ct
        0x5t
        0xet
    .end array-data
.end method

.method private isFreshnessLifetimeHeuristic()Z
    .locals 2

    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->cacheControl()Lokhttp3/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/CacheControl;->maxAgeSeconds()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->expires:Ljava/util/Date;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public get()Lokhttp3/internal/cache/CacheStrategy;
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lokhttp3/internal/cache/CacheStrategy$Factory;->getCandidate()Lokhttp3/internal/cache/CacheStrategy;

    move-result-object v0

    iget-object v1, v0, Lokhttp3/internal/cache/CacheStrategy;->networkRequest:Lokhttp3/Request;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    invoke-virtual {v1}, Lokhttp3/Request;->cacheControl()Lokhttp3/CacheControl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/CacheControl;->onlyIfCached()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lokhttp3/internal/cache/CacheStrategy;

    invoke-direct {v0, v2, v2}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    :cond_0
    return-object v0
.end method
