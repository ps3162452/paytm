.class public Lcom/airbnb/lottie/network/NetworkCache;
.super Ljava/lang/Object;


# instance fields
.field private final cacheProvider:Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;)V
    .locals 0
    .param p1    # Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/network/NetworkCache;->cacheProvider:Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;

    return-void
.end method

.method private static filenameForUrl(Ljava/lang/String;Lcom/airbnb/lottie/network/FileExtension;Z)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0xd

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "1cad4d"

    const/16 v3, 0x29cb

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "6e7ff8"

    const-wide v4, 0x41d9cb5687000000L    # 1.731025436E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/airbnb/lottie/network/FileExtension;->tempExtension()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/airbnb/lottie/network/FileExtension;->extension:Ljava/lang/String;

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x5dt
        0xct
        0x15t
        0x10t
        0x5dt
        0x1t
        0x6et
        0x0t
        0x0t
        0x7t
        0x5ct
        0x1t
        0x6et
    .end array-data

    nop

    :array_1
    .array-data 1
        0x6at
        0x32t
        0x1ct
    .end array-data
.end method

.method private getCachedFile(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/airbnb/lottie/network/NetworkCache;->parentDir()Ljava/io/File;

    move-result-object v1

    sget-object v2, Lcom/airbnb/lottie/network/FileExtension;->JSON:Lcom/airbnb/lottie/network/FileExtension;

    invoke-static {p1, v2, v3}, Lcom/airbnb/lottie/network/NetworkCache;->filenameForUrl(Ljava/lang/String;Lcom/airbnb/lottie/network/FileExtension;Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/airbnb/lottie/network/NetworkCache;->parentDir()Ljava/io/File;

    move-result-object v1

    sget-object v2, Lcom/airbnb/lottie/network/FileExtension;->ZIP:Lcom/airbnb/lottie/network/FileExtension;

    invoke-static {p1, v2, v3}, Lcom/airbnb/lottie/network/NetworkCache;->filenameForUrl(Ljava/lang/String;Lcom/airbnb/lottie/network/FileExtension;Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parentDir()Ljava/io/File;
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/network/NetworkCache;->cacheProvider:Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;

    invoke-interface {v0}, Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 5

    invoke-direct {p0}, Lcom/airbnb/lottie/network/NetworkCache;->parentDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_1
    return-void
.end method

.method fetch(Ljava/lang/String;)Landroid/util/Pair;
    .locals 10
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lcom/airbnb/lottie/network/FileExtension;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    const/4 v9, 0x4

    const/4 v8, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/network/NetworkCache;->getCachedFile(Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-array v3, v9, [B

    fill-array-data v3, :array_0

    const-string v4, "3e554d"

    const v5, -0x313f13d7

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/airbnb/lottie/network/FileExtension;->ZIP:Lcom/airbnb/lottie/network/FileExtension;

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0xe

    new-array v4, v4, [B

    fill-array-data v4, :array_1

    const-string v5, "6b7278"

    const-wide v6, 0x41ddc6f3d7800000L    # 1.998311262E9

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-array v4, v9, [B

    fill-array-data v4, :array_2

    const-string v5, "c22681"

    invoke-static {v4, v5, v8, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/lottie/utils/Logger;->debug(Ljava/lang/String;)V

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/airbnb/lottie/network/FileExtension;->JSON:Lcom/airbnb/lottie/network/FileExtension;

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :array_0
    .array-data 1
        0x1dt
        0x1ft
        0x5ct
        0x45t
    .end array-data

    :array_1
    .array-data 1
        0x75t
        0x3t
        0x54t
        0x5at
        0x52t
        0x18t
        0x5et
        0xbt
        0x43t
        0x12t
        0x51t
        0x57t
        0x44t
        0x42t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x43t
        0x53t
        0x46t
        0x16t
    .end array-data
.end method

.method renameTempFile(Ljava/lang/String;Lcom/airbnb/lottie/network/FileExtension;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-static {p1, p2, v7}, Lcom/airbnb/lottie/network/NetworkCache;->filenameForUrl(Ljava/lang/String;Lcom/airbnb/lottie/network/FileExtension;Z)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Lcom/airbnb/lottie/network/NetworkCache;->parentDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "0d5e7c"

    invoke-static {v3, v4, v8, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x20

    new-array v4, v4, [B

    fill-array-data v4, :array_1

    const-string v5, "f64d64"

    const/16 v6, -0x2221

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-array v4, v7, [B

    const/16 v5, 0x4a

    aput-byte v5, v4, v8

    const-string v5, "cc0643"

    invoke-static {v4, v5, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/airbnb/lottie/utils/Logger;->debug(Ljava/lang/String;)V

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x1c

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v4, "a8635f"

    invoke-static {v3, v4, v8, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const-string v3, "a5ab84"

    const/16 v4, 0x36f6

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v7, [B

    const/16 v2, 0x17

    aput-byte v2, v1, v8

    const-string v2, "97803e"

    const-wide/32 v4, -0x2b01869d

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    :cond_0
    return-void

    :array_0
    .array-data 1
        0x1et
        0x10t
        0x50t
        0x8t
        0x47t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x25t
        0x59t
        0x44t
        0x1dt
        0x5ft
        0x5at
        0x1t
        0x16t
        0x40t
        0x1t
        0x5bt
        0x44t
        0x46t
        0x50t
        0x5dt
        0x8t
        0x53t
        0x14t
        0x12t
        0x59t
        0x14t
        0x16t
        0x53t
        0x55t
        0xat
        0x16t
        0x52t
        0xdt
        0x5at
        0x51t
        0x46t
        0x1et
    .end array-data

    :array_2
    .array-data 1
        0x34t
        0x56t
        0x57t
        0x51t
        0x59t
        0x3t
        0x41t
        0x4ct
        0x59t
        0x13t
        0x47t
        0x3t
        0xft
        0x59t
        0x5bt
        0x56t
        0x15t
        0x5t
        0x0t
        0x5bt
        0x5et
        0x56t
        0x15t
        0x0t
        0x8t
        0x54t
        0x53t
        0x13t
    .end array-data

    :array_3
    .array-data 1
        0x41t
        0x41t
        0xet
        0x42t
    .end array-data
.end method

.method writeTempCacheFile(Ljava/lang/String;Ljava/io/InputStream;Lcom/airbnb/lottie/network/FileExtension;)Ljava/io/File;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p1, p3, v0}, Lcom/airbnb/lottie/network/NetworkCache;->filenameForUrl(Ljava/lang/String;Lcom/airbnb/lottie/network/FileExtension;Z)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Lcom/airbnb/lottie/network/NetworkCache;->parentDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v0, 0x400

    :try_start_1
    new-array v0, v0, [B

    :goto_0
    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    throw v0

    :cond_0
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    return-object v1
.end method
