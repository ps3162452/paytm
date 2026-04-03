.class public Lcom/airbnb/lottie/L;
.super Ljava/lang/Object;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static DBG:Z = false

.field private static final MAX_DEPTH:I = 0x14

.field public static final TAG:Ljava/lang/String;

.field private static cacheProvider:Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;

.field private static depthPastMaxDepth:I

.field private static fetcher:Lcom/airbnb/lottie/network/LottieNetworkFetcher;

.field private static volatile networkCache:Lcom/airbnb/lottie/network/NetworkCache;

.field private static volatile networkFetcher:Lcom/airbnb/lottie/network/NetworkFetcher;

.field private static sections:[Ljava/lang/String;

.field private static startTimeNs:[J

.field private static traceDepth:I

.field private static traceEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "ee77ad"

    const-wide v2, 0x41da881721000000L    # 1.780505732E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/L;->TAG:Ljava/lang/String;

    sput-boolean v4, Lcom/airbnb/lottie/L;->DBG:Z

    sput-boolean v4, Lcom/airbnb/lottie/L;->traceEnabled:Z

    sput v4, Lcom/airbnb/lottie/L;->traceDepth:I

    sput v4, Lcom/airbnb/lottie/L;->depthPastMaxDepth:I

    return-void

    nop

    :array_0
    .array-data 1
        0x29t
        0x2at
        0x63t
        0x63t
        0x28t
        0x21t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beginSection(Ljava/lang/String;)V
    .locals 4

    sget-boolean v0, Lcom/airbnb/lottie/L;->traceEnabled:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget v0, Lcom/airbnb/lottie/L;->traceDepth:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_1

    sget v0, Lcom/airbnb/lottie/L;->depthPastMaxDepth:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/airbnb/lottie/L;->depthPastMaxDepth:I

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/airbnb/lottie/L;->sections:[Ljava/lang/String;

    sget v1, Lcom/airbnb/lottie/L;->traceDepth:I

    aput-object p0, v0, v1

    sget-object v0, Lcom/airbnb/lottie/L;->startTimeNs:[J

    sget v1, Lcom/airbnb/lottie/L;->traceDepth:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    aput-wide v2, v0, v1

    invoke-static {p0}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    sget v0, Lcom/airbnb/lottie/L;->traceDepth:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/airbnb/lottie/L;->traceDepth:I

    goto :goto_0
.end method

.method public static endSection(Ljava/lang/String;)F
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x0

    sget v1, Lcom/airbnb/lottie/L;->depthPastMaxDepth:I

    if-lez v1, :cond_1

    sget v1, Lcom/airbnb/lottie/L;->depthPastMaxDepth:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/airbnb/lottie/L;->depthPastMaxDepth:I

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-boolean v1, Lcom/airbnb/lottie/L;->traceEnabled:Z

    if-eqz v1, :cond_0

    sget v0, Lcom/airbnb/lottie/L;->traceDepth:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/airbnb/lottie/L;->traceDepth:I

    sget v0, Lcom/airbnb/lottie/L;->traceDepth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x28

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "df22bd"

    invoke-static {v1, v2, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sget-object v0, Lcom/airbnb/lottie/L;->sections:[Ljava/lang/String;

    sget v1, Lcom/airbnb/lottie/L;->traceDepth:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x16

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "234500"

    const-wide v4, 0x41cb52e36e000000L    # 9.16834012E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xb

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v3, "ad7acb"

    invoke-static {v2, v3, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/airbnb/lottie/L;->sections:[Ljava/lang/String;

    sget v3, Lcom/airbnb/lottie/L;->traceDepth:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v2, v7, [B

    const/16 v3, 0x4b

    aput-byte v3, v2, v6

    const-string v3, "e53f76"

    const v4, -0x329c7f5b    # -2.3855368E8f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sget-object v2, Lcom/airbnb/lottie/L;->startTimeNs:[J

    sget v3, Lcom/airbnb/lottie/L;->traceDepth:I

    aget-wide v2, v2, v3

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const v1, 0x49742400    # 1000000.0f

    div-float/2addr v0, v1

    goto/16 :goto_0

    :array_0
    .array-data 1
        0x27t
        0x7t
        0x5ct
        0x15t
        0x16t
        0x44t
        0x1t
        0x8t
        0x56t
        0x12t
        0x16t
        0x16t
        0x5t
        0x5t
        0x57t
        0x12t
        0x11t
        0x1t
        0x7t
        0x12t
        0x5bt
        0x5dt
        0xct
        0x4at
        0x44t
        0x32t
        0x5at
        0x57t
        0x10t
        0x1t
        0x44t
        0x7t
        0x40t
        0x57t
        0x42t
        0xat
        0xbt
        0x8t
        0x57t
        0x1ct
    .end array-data

    :array_1
    .array-data 1
        0x67t
        0x5dt
        0x56t
        0x54t
        0x5ct
        0x51t
        0x5ct
        0x50t
        0x51t
        0x51t
        0x10t
        0x44t
        0x40t
        0x52t
        0x57t
        0x50t
        0x10t
        0x53t
        0x53t
        0x5ft
        0x58t
        0x15t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x4ft
        0x44t
        0x72t
        0x19t
        0x13t
        0x7t
        0x2t
        0x10t
        0x52t
        0x5t
        0x43t
    .end array-data
.end method

.method public static networkCache(Landroid/content/Context;)Lcom/airbnb/lottie/network/NetworkCache;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/airbnb/lottie/L;->networkCache:Lcom/airbnb/lottie/network/NetworkCache;

    if-nez v0, :cond_1

    const-class v0, Lcom/airbnb/lottie/network/NetworkCache;

    monitor-enter v0

    :try_start_0
    sget-object v0, Lcom/airbnb/lottie/L;->networkCache:Lcom/airbnb/lottie/network/NetworkCache;

    if-nez v0, :cond_0

    new-instance v1, Lcom/airbnb/lottie/network/NetworkCache;

    sget-object v0, Lcom/airbnb/lottie/L;->cacheProvider:Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/airbnb/lottie/L;->cacheProvider:Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;

    :goto_0
    invoke-direct {v1, v0}, Lcom/airbnb/lottie/network/NetworkCache;-><init>(Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sput-object v1, Lcom/airbnb/lottie/L;->networkCache:Lcom/airbnb/lottie/network/NetworkCache;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    :cond_0
    :try_start_2
    const-class v1, Lcom/airbnb/lottie/network/NetworkCache;

    monitor-exit v1

    :cond_1
    return-object v0

    :cond_2
    new-instance v0, Lcom/airbnb/lottie/L$1;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/L$1;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_1
    const-class v1, Lcom/airbnb/lottie/network/NetworkCache;

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public static networkFetcher(Landroid/content/Context;)Lcom/airbnb/lottie/network/NetworkFetcher;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/airbnb/lottie/L;->networkFetcher:Lcom/airbnb/lottie/network/NetworkFetcher;

    if-nez v0, :cond_1

    const-class v0, Lcom/airbnb/lottie/network/NetworkFetcher;

    monitor-enter v0

    :try_start_0
    sget-object v0, Lcom/airbnb/lottie/L;->networkFetcher:Lcom/airbnb/lottie/network/NetworkFetcher;

    if-nez v0, :cond_0

    new-instance v1, Lcom/airbnb/lottie/network/NetworkFetcher;

    invoke-static {p0}, Lcom/airbnb/lottie/L;->networkCache(Landroid/content/Context;)Lcom/airbnb/lottie/network/NetworkCache;

    move-result-object v2

    sget-object v0, Lcom/airbnb/lottie/L;->fetcher:Lcom/airbnb/lottie/network/LottieNetworkFetcher;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/airbnb/lottie/L;->fetcher:Lcom/airbnb/lottie/network/LottieNetworkFetcher;

    :goto_0
    invoke-direct {v1, v2, v0}, Lcom/airbnb/lottie/network/NetworkFetcher;-><init>(Lcom/airbnb/lottie/network/NetworkCache;Lcom/airbnb/lottie/network/LottieNetworkFetcher;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sput-object v1, Lcom/airbnb/lottie/L;->networkFetcher:Lcom/airbnb/lottie/network/NetworkFetcher;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    :cond_0
    :try_start_2
    const-class v1, Lcom/airbnb/lottie/network/NetworkFetcher;

    monitor-exit v1

    :cond_1
    return-object v0

    :cond_2
    new-instance v0, Lcom/airbnb/lottie/network/DefaultLottieNetworkFetcher;

    invoke-direct {v0}, Lcom/airbnb/lottie/network/DefaultLottieNetworkFetcher;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_1
    const-class v1, Lcom/airbnb/lottie/network/NetworkFetcher;

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public static setCacheProvider(Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;)V
    .locals 0

    sput-object p0, Lcom/airbnb/lottie/L;->cacheProvider:Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;

    return-void
.end method

.method public static setFetcher(Lcom/airbnb/lottie/network/LottieNetworkFetcher;)V
    .locals 0

    sput-object p0, Lcom/airbnb/lottie/L;->fetcher:Lcom/airbnb/lottie/network/LottieNetworkFetcher;

    return-void
.end method

.method public static setTraceEnabled(Z)V
    .locals 2

    const/16 v1, 0x14

    sget-boolean v0, Lcom/airbnb/lottie/L;->traceEnabled:Z

    if-ne v0, p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sput-boolean p0, Lcom/airbnb/lottie/L;->traceEnabled:Z

    sget-boolean v0, Lcom/airbnb/lottie/L;->traceEnabled:Z

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/airbnb/lottie/L;->sections:[Ljava/lang/String;

    new-array v0, v1, [J

    sput-object v0, Lcom/airbnb/lottie/L;->startTimeNs:[J

    goto :goto_0
.end method
