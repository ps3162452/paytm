.class public Lcom/airbnb/lottie/network/NetworkFetcher;
.super Ljava/lang/Object;


# instance fields
.field private final fetcher:Lcom/airbnb/lottie/network/LottieNetworkFetcher;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final networkCache:Lcom/airbnb/lottie/network/NetworkCache;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/network/NetworkCache;Lcom/airbnb/lottie/network/LottieNetworkFetcher;)V
    .locals 0
    .param p1    # Lcom/airbnb/lottie/network/NetworkCache;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/airbnb/lottie/network/LottieNetworkFetcher;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/network/NetworkFetcher;->networkCache:Lcom/airbnb/lottie/network/NetworkCache;

    iput-object p2, p0, Lcom/airbnb/lottie/network/NetworkFetcher;->fetcher:Lcom/airbnb/lottie/network/LottieNetworkFetcher;

    return-void
.end method

.method private fetchFromCache(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieComposition;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const/4 v2, 0x0

    if-nez p2, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/network/NetworkFetcher;->networkCache:Lcom/airbnb/lottie/network/NetworkCache;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/network/NetworkCache;->fetch(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/airbnb/lottie/network/FileExtension;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/io/InputStream;

    sget-object v3, Lcom/airbnb/lottie/network/FileExtension;->ZIP:Lcom/airbnb/lottie/network/FileExtension;

    if-ne v0, v3, :cond_1

    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromZipStreamSync(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieResult;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieResult;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieComposition;

    goto :goto_0

    :cond_1
    invoke-static {v1, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    goto :goto_0
.end method

.method private fetchFromNetwork(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieResult",
            "<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v7, 0x1f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x9

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    const-string v5, "36bb83"

    const v6, -0x313c114a

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/utils/Logger;->debug(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/airbnb/lottie/network/NetworkFetcher;->fetcher:Lcom/airbnb/lottie/network/LottieNetworkFetcher;

    invoke-interface {v0, p1}, Lcom/airbnb/lottie/network/LottieNetworkFetcher;->fetchSync(Ljava/lang/String;)Lcom/airbnb/lottie/network/LottieFetchResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    :try_start_1
    invoke-interface {v4}, Lcom/airbnb/lottie/network/LottieFetchResult;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Lcom/airbnb/lottie/network/LottieFetchResult;->bodyByteStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-interface {v4}, Lcom/airbnb/lottie/network/LottieFetchResult;->contentType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v0, v3, p2}, Lcom/airbnb/lottie/network/NetworkFetcher;->fromInputStream(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x27

    new-array v5, v5, [B

    fill-array-data v5, :array_1

    const-string v6, "007cbc"

    const-wide v8, 0x419230f6f4000000L    # 7.6299709E7

    invoke-static {v5, v6, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieResult;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/utils/Logger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_4

    :try_start_2
    invoke-interface {v4}, Lcom/airbnb/lottie/network/LottieFetchResult;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v3

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    new-array v4, v7, [B

    fill-array-data v4, :array_2

    const-string v5, "d7b141"

    invoke-static {v4, v5, v2, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v3

    goto :goto_1

    :cond_2
    :try_start_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-interface {v4}, Lcom/airbnb/lottie/network/LottieFetchResult;->error()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/airbnb/lottie/LottieResult;

    invoke-direct {v0, v2}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v4, :cond_0

    :try_start_4
    invoke-interface {v4}, Lcom/airbnb/lottie/network/LottieFetchResult;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    new-array v2, v7, [B

    fill-array-data v2, :array_3

    const-string v3, "7f24db"

    const v4, -0x3169fc18

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v2, v0

    :goto_2
    :try_start_5
    new-instance v0, Lcom/airbnb/lottie/LottieResult;

    invoke-direct {v0, v2}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v3, :cond_0

    :try_start_6
    invoke-interface {v3}, Lcom/airbnb/lottie/network/LottieFetchResult;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    :catch_3
    move-exception v2

    new-array v3, v7, [B

    fill-array-data v3, :array_4

    const-string v4, "2d8ad8"

    invoke-static {v3, v4, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v4, v3

    :goto_3
    if-eqz v4, :cond_3

    :try_start_7
    invoke-interface {v4}, Lcom/airbnb/lottie/network/LottieFetchResult;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_3
    :goto_4
    throw v0

    :catch_4
    move-exception v1

    new-array v2, v7, [B

    fill-array-data v2, :array_5

    const-string v3, "cbb642"

    const v4, -0x310624d5

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v4, v3

    goto :goto_3

    :catch_5
    move-exception v0

    move-object v2, v0

    move-object v3, v4

    goto :goto_2

    :cond_4
    move-object v0, v3

    goto :goto_1

    :array_0
    .array-data 1
        0x75t
        0x53t
        0x16t
        0x1t
        0x50t
        0x5at
        0x5dt
        0x51t
        0x42t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x73t
        0x5ft
        0x5at
        0x13t
        0xet
        0x6t
        0x44t
        0x55t
        0x53t
        0x43t
        0x4t
        0x6t
        0x44t
        0x53t
        0x5ft
        0x43t
        0x4t
        0x11t
        0x5ft
        0x5dt
        0x17t
        0xdt
        0x7t
        0x17t
        0x47t
        0x5ft
        0x45t
        0x8t
        0x4ct
        0x43t
        0x63t
        0x45t
        0x54t
        0x0t
        0x7t
        0x10t
        0x43t
        0xat
        0x17t
    .end array-data

    :array_2
    .array-data 1
        0x28t
        0x58t
        0x16t
        0x45t
        0x5dt
        0x54t
        0x22t
        0x52t
        0x16t
        0x52t
        0x5ct
        0x63t
        0x1t
        0x44t
        0x17t
        0x5dt
        0x40t
        0x11t
        0x7t
        0x5bt
        0xdt
        0x42t
        0x51t
        0x11t
        0x2t
        0x56t
        0xbt
        0x5dt
        0x51t
        0x55t
        0x44t
    .end array-data

    :array_3
    .array-data 1
        0x7bt
        0x9t
        0x46t
        0x40t
        0xdt
        0x7t
        0x71t
        0x3t
        0x46t
        0x57t
        0xct
        0x30t
        0x52t
        0x15t
        0x47t
        0x58t
        0x10t
        0x42t
        0x54t
        0xat
        0x5dt
        0x47t
        0x1t
        0x42t
        0x51t
        0x7t
        0x5bt
        0x58t
        0x1t
        0x6t
        0x17t
    .end array-data

    :array_4
    .array-data 1
        0x7et
        0xbt
        0x4ct
        0x15t
        0xdt
        0x5dt
        0x74t
        0x1t
        0x4ct
        0x2t
        0xct
        0x6at
        0x57t
        0x17t
        0x4dt
        0xdt
        0x10t
        0x18t
        0x51t
        0x8t
        0x57t
        0x12t
        0x1t
        0x18t
        0x54t
        0x5t
        0x51t
        0xdt
        0x1t
        0x5ct
        0x12t
    .end array-data

    :array_5
    .array-data 1
        0x2ft
        0xdt
        0x16t
        0x42t
        0x5dt
        0x57t
        0x25t
        0x7t
        0x16t
        0x55t
        0x5ct
        0x60t
        0x6t
        0x11t
        0x17t
        0x5at
        0x40t
        0x12t
        0x0t
        0xet
        0xdt
        0x45t
        0x51t
        0x12t
        0x5t
        0x3t
        0xbt
        0x5at
        0x51t
        0x56t
        0x43t
    .end array-data
.end method

.method private fromInputStream(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/InputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieResult",
            "<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-nez p3, :cond_0

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "f6f726"

    const-wide/32 v2, -0xd7d8758

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object p3

    :cond_0
    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "4da08a"

    invoke-static {v0, v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "63777a"

    const v2, 0x4eba09ff    # 1.5606086E9f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v4

    const/4 v1, 0x7

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "0e8e01"

    const/16 v3, -0x4d97

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const/16 v0, 0x16

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    const-string v1, "ffcc28"

    const-wide v2, 0x41d8dcd2b4800000L    # 1.668500178E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/utils/Logger;->debug(Ljava/lang/String;)V

    sget-object v1, Lcom/airbnb/lottie/network/FileExtension;->ZIP:Lcom/airbnb/lottie/network/FileExtension;

    invoke-direct {p0, p1, p2, p4}, Lcom/airbnb/lottie/network/NetworkFetcher;->fromZipStream(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v0

    :goto_0
    if-eqz p4, :cond_2

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieResult;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/airbnb/lottie/network/NetworkFetcher;->networkCache:Lcom/airbnb/lottie/network/NetworkCache;

    invoke-virtual {v2, p1, v1}, Lcom/airbnb/lottie/network/NetworkCache;->renameTempFile(Ljava/lang/String;Lcom/airbnb/lottie/network/FileExtension;)V

    :cond_2
    return-object v0

    :cond_3
    const/16 v0, 0x17

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    const-string v1, "329e7c"

    invoke-static {v0, v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/utils/Logger;->debug(Ljava/lang/String;)V

    sget-object v1, Lcom/airbnb/lottie/network/FileExtension;->JSON:Lcom/airbnb/lottie/network/FileExtension;

    invoke-direct {p0, p1, p2, p4}, Lcom/airbnb/lottie/network/NetworkFetcher;->fromJsonStream(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v0

    goto :goto_0

    :array_0
    .array-data 1
        0x7t
        0x46t
        0x16t
        0x5bt
        0x5bt
        0x55t
        0x7t
        0x42t
        0xft
        0x58t
        0x5ct
        0x19t
        0xct
        0x45t
        0x9t
        0x59t
    .end array-data

    :array_1
    .array-data 1
        0x55t
        0x14t
        0x11t
        0x5ct
        0x51t
        0x2t
        0x55t
        0x10t
        0x8t
        0x5ft
        0x56t
        0x4et
        0x4et
        0xdt
        0x11t
    .end array-data

    :array_2
    .array-data 1
        0x6at
        0xct
    .end array-data

    nop

    :array_3
    .array-data 1
        0x1et
        0x9t
        0x57t
        0x11t
        0x44t
        0x58t
        0x55t
    .end array-data

    :array_4
    .array-data 1
        0x2et
        0x7t
        0xdt
        0x7t
        0x5et
        0x51t
        0x8t
        0x1t
        0x43t
        0x19t
        0x5bt
        0x48t
        0x46t
        0x14t
        0x6t
        0x10t
        0x42t
        0x57t
        0x8t
        0x15t
        0x6t
        0x4dt
    .end array-data

    nop

    :array_5
    .array-data 1
        0x61t
        0x57t
        0x5at
        0x0t
        0x5et
        0x15t
        0x56t
        0x56t
        0x19t
        0xft
        0x44t
        0xct
        0x5dt
        0x12t
        0x4bt
        0x0t
        0x44t
        0x13t
        0x5ct
        0x5ct
        0x4at
        0x0t
        0x19t
    .end array-data
.end method

.method private fromJsonStream(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/InputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieResult",
            "<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/airbnb/lottie/network/NetworkFetcher;->networkCache:Lcom/airbnb/lottie/network/NetworkCache;

    sget-object v3, Lcom/airbnb/lottie/network/FileExtension;->JSON:Lcom/airbnb/lottie/network/FileExtension;

    invoke-virtual {v2, p1, p2, v3}, Lcom/airbnb/lottie/network/NetworkCache;->writeTempCacheFile(Ljava/lang/String;Ljava/io/InputStream;Lcom/airbnb/lottie/network/FileExtension;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v0

    goto :goto_0
.end method

.method private fromZipStream(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/InputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieResult",
            "<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-direct {v0, p2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromZipStreamSync(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/zip/ZipInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/airbnb/lottie/network/NetworkFetcher;->networkCache:Lcom/airbnb/lottie/network/NetworkCache;

    sget-object v3, Lcom/airbnb/lottie/network/FileExtension;->ZIP:Lcom/airbnb/lottie/network/FileExtension;

    invoke-virtual {v2, p1, p2, v3}, Lcom/airbnb/lottie/network/NetworkCache;->writeTempCacheFile(Ljava/lang/String;Ljava/io/InputStream;Lcom/airbnb/lottie/network/FileExtension;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromZipStreamSync(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public fetchSync(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieResult",
            "<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/network/NetworkFetcher;->fetchFromCache(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieComposition;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/airbnb/lottie/LottieResult;

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0xe

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "66ee3c"

    const v3, -0x3145e85e

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2b

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "e0c95b"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/utils/Logger;->debug(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/network/NetworkFetcher;->fetchFromNetwork(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v0

    goto :goto_0

    :array_0
    .array-data 1
        0x77t
        0x58t
        0xct
        0x8t
        0x52t
        0x17t
        0x5ft
        0x59t
        0xbt
        0x45t
        0x55t
        0xct
        0x44t
        0x16t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x45t
        0x5et
        0xct
        0x4dt
        0x15t
        0x4t
        0xat
        0x45t
        0xdt
        0x5dt
        0x15t
        0xbt
        0xbt
        0x10t
        0x0t
        0x58t
        0x56t
        0xat
        0x0t
        0x1et
        0x43t
        0x7ft
        0x50t
        0x16t
        0x6t
        0x58t
        0xat
        0x57t
        0x52t
        0x42t
        0x3t
        0x42t
        0xct
        0x54t
        0x15t
        0xct
        0x0t
        0x44t
        0x14t
        0x56t
        0x47t
        0x9t
        0x4bt
    .end array-data
.end method
