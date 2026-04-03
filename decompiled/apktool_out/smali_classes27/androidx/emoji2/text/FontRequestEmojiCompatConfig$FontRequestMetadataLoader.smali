.class Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/FontRequestEmojiCompatConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FontRequestMetadataLoader"
.end annotation


# static fields
.field private static final S_TRACE_BUILD_TYPEFACE:Ljava/lang/String;


# instance fields
.field mCallback:Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;

.field private final mContext:Landroid/content/Context;

.field private mExecutor:Ljava/util/concurrent/Executor;

.field private final mFontProviderHelper:Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontProviderHelper;

.field private final mLock:Ljava/lang/Object;

.field private mMainHandler:Landroid/os/Handler;

.field private mMainHandlerLoadCallback:Ljava/lang/Runnable;

.field private mMyThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private mObserver:Landroid/database/ContentObserver;

.field private final mRequest:Landroidx/core/provider/FontRequest;

.field private mRetryPolicy:Landroidx/emoji2/text/FontRequestEmojiCompatConfig$RetryPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/16 v0, 0x36

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "8928fd"

    invoke-static {v0, v1, v2, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->S_TRACE_BUILD_TYPEFACE:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x7dt
        0x54t
        0x5dt
        0x52t
        0xft
        0x27t
        0x57t
        0x54t
        0x42t
        0x59t
        0x12t
        0x4at
        0x7et
        0x56t
        0x5ct
        0x4ct
        0x34t
        0x1t
        0x49t
        0x4ct
        0x57t
        0x4bt
        0x12t
        0x21t
        0x55t
        0x56t
        0x58t
        0x51t
        0x25t
        0xbt
        0x55t
        0x49t
        0x53t
        0x4ct
        0x25t
        0xbt
        0x56t
        0x5ft
        0x5bt
        0x5ft
        0x48t
        0x6t
        0x4dt
        0x50t
        0x5et
        0x5ct
        0x32t
        0x1dt
        0x48t
        0x5ct
        0x54t
        0x59t
        0x5t
        0x1t
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Landroidx/core/provider/FontRequest;Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontProviderHelper;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mLock:Ljava/lang/Object;

    const/16 v0, 0x16

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "ac9899"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x1a

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "2590cc"

    const v2, 0x4e8f4e78

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mRequest:Landroidx/core/provider/FontRequest;

    iput-object p3, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mFontProviderHelper:Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontProviderHelper;

    return-void

    :array_0
    .array-data 1
        0x22t
        0xct
        0x57t
        0x4ct
        0x5ct
        0x41t
        0x15t
        0x43t
        0x5at
        0x59t
        0x57t
        0x57t
        0xet
        0x17t
        0x19t
        0x5at
        0x5ct
        0x19t
        0xft
        0x16t
        0x55t
        0x54t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x74t
        0x5at
        0x57t
        0x44t
        0x31t
        0x6t
        0x43t
        0x40t
        0x5ct
        0x43t
        0x17t
        0x43t
        0x51t
        0x54t
        0x57t
        0x5et
        0xct
        0x17t
        0x12t
        0x57t
        0x5ct
        0x10t
        0xdt
        0x16t
        0x5et
        0x59t
    .end array-data
.end method

.method private cleanUp()V
    .locals 4

    iget-object v1, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mCallback:Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;

    iget-object v0, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    iget-object v2, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mFontProviderHelper:Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontProviderHelper;

    iget-object v3, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontProviderHelper;->unregisterObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mObserver:Landroid/database/ContentObserver;

    :cond_0
    iget-object v0, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v2, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mMainHandlerLoadCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mMainHandler:Landroid/os/Handler;

    iget-object v0, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mMyThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mExecutor:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mMyThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private retrieveFontInfo()Landroidx/core/provider/FontsContractCompat$FontInfo;
    .locals 8

    const/4 v5, 0x0

    :try_start_0
    iget-object v0, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mFontProviderHelper:Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontProviderHelper;

    iget-object v1, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mRequest:Landroidx/core/provider/FontRequest;

    invoke-virtual {v0, v1, v2}, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontProviderHelper;->fetchFonts(Landroid/content/Context;Landroidx/core/provider/FontRequest;)Landroidx/core/provider/FontsContractCompat$FontFamilyResult;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->getStatusCode()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->getFonts()[Landroidx/core/provider/FontsContractCompat$FontInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-eqz v1, :cond_0

    aget-object v0, v0, v5

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const/16 v1, 0x20

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "5c45e1"

    invoke-static {v1, v2, v5, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x13

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "0f52c6"

    const-wide/32 v6, -0x17509d1b

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->getStatusCode()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [B

    const/16 v3, 0x48

    aput-byte v3, v2, v5

    const-string v3, "a7ae80"

    const-wide/32 v4, 0x3e702e38

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const/16 v2, 0x12

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v3, "4c4b11"

    const/16 v4, 0xf76

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    nop

    :array_0
    .array-data 1
        0x53t
        0x6t
        0x40t
        0x56t
        0xdt
        0x77t
        0x5at
        0xdt
        0x40t
        0x46t
        0x45t
        0x57t
        0x54t
        0xat
        0x58t
        0x50t
        0x1t
        0x11t
        0x1dt
        0x6t
        0x59t
        0x45t
        0x11t
        0x48t
        0x15t
        0x11t
        0x51t
        0x46t
        0x10t
        0x5dt
        0x41t
        0x4at
    .end array-data

    :array_1
    .array-data 1
        0x56t
        0x3t
        0x41t
        0x51t
        0xbt
        0x70t
        0x5ft
        0x8t
        0x41t
        0x41t
        0x43t
        0x50t
        0x51t
        0xft
        0x59t
        0x57t
        0x7t
        0x16t
        0x18t
    .end array-data

    :array_2
    .array-data 1
        0x44t
        0x11t
        0x5bt
        0x14t
        0x58t
        0x55t
        0x51t
        0x11t
        0x14t
        0xct
        0x5et
        0x45t
        0x14t
        0x5t
        0x5bt
        0x17t
        0x5ft
        0x55t
    .end array-data
.end method

.method private scheduleRetry(Landroid/net/Uri;J)V
    .locals 6

    iget-object v1, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mMainHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    invoke-static {}, Landroidx/emoji2/text/ConcurrencyHelpers;->mainHandlerAsync()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mMainHandler:Landroid/os/Handler;

    :cond_0
    iget-object v2, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mObserver:Landroid/database/ContentObserver;

    if-nez v2, :cond_1

    new-instance v2, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader$1;

    invoke-direct {v2, p0, v0}, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader$1;-><init>(Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;Landroid/os/Handler;)V

    iput-object v2, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mObserver:Landroid/database/ContentObserver;

    iget-object v3, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mFontProviderHelper:Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontProviderHelper;

    iget-object v4, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, p1, v2}, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontProviderHelper;->registerObserver(Landroid/content/Context;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_1
    iget-object v2, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mMainHandlerLoadCallback:Ljava/lang/Runnable;

    if-nez v2, :cond_2

    new-instance v2, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader$$ExternalSyntheticLambda1;-><init>(Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;)V

    iput-object v2, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mMainHandlerLoadCallback:Ljava/lang/Runnable;

    :cond_2
    iget-object v2, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mMainHandlerLoadCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method createMetadata()V
    .locals 8

    iget-object v1, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mCallback:Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    :try_start_1
    invoke-direct {p0}, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->retrieveFontInfo()Landroidx/core/provider/FontsContractCompat$FontInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getResultCode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    iget-object v2, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v3, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mRetryPolicy:Landroidx/emoji2/text/FontRequestEmojiCompatConfig$RetryPolicy;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$RetryPolicy;->getRetryDelay()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-ltz v3, :cond_2

    invoke-virtual {v0}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, v4, v5}, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->scheduleRetry(Landroid/net/Uri;J)V

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    iget-object v2, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mCallback:Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;->onFailed(Ljava/lang/Throwable;)V

    :cond_1
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    invoke-direct {p0}, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->cleanUp()V

    goto :goto_0

    :cond_2
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_3
    if-nez v1, :cond_6

    :try_start_6
    sget-object v1, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->S_TRACE_BUILD_TYPEFACE:Ljava/lang/String;

    invoke-static {v1}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mFontProviderHelper:Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontProviderHelper;

    iget-object v2, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontProviderHelper;->buildTypeface(Landroid/content/Context;Landroidx/core/provider/FontsContractCompat$FontInfo;)Landroid/graphics/Typeface;

    move-result-object v1

    iget-object v2, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v2, v3, v0}, Landroidx/core/graphics/TypefaceCompatUtil;->mmap(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/net/Uri;)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    invoke-static {v1, v0}, Landroidx/emoji2/text/MetadataRepo;->create(Landroid/graphics/Typeface;Ljava/nio/ByteBuffer;)Landroidx/emoji2/text/MetadataRepo;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-result-object v0

    :try_start_7
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    iget-object v1, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    iget-object v2, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mCallback:Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;

    if-eqz v2, :cond_4

    invoke-virtual {v2, v0}, Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;->onLoaded(Landroidx/emoji2/text/MetadataRepo;)V

    :cond_4
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    invoke-direct {p0}, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->cleanUp()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :cond_5
    :try_start_c
    new-instance v0, Ljava/lang/RuntimeException;

    const/16 v1, 0x14

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "766f9d"

    const-wide v4, -0x3e50f6e46e000000L    # -2.60345289E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :catchall_3
    move-exception v0

    :try_start_d
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x1e

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "985b52"

    const-wide v6, 0x41da3dc3ba800000L    # 1.761021674E9

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/16 v4, 0x18

    aput-byte v4, v2, v3

    const-string v3, "181661"

    const-wide/32 v4, -0xdd09c4e

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :catchall_4
    move-exception v0

    :try_start_e
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    throw v0

    :catchall_5
    move-exception v0

    :try_start_f
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    throw v0

    nop

    :array_0
    .array-data 1
        0x62t
        0x58t
        0x57t
        0x4t
        0x55t
        0x1t
        0x17t
        0x42t
        0x59t
        0x46t
        0x56t
        0x14t
        0x52t
        0x58t
        0x16t
        0x0t
        0x50t
        0x8t
        0x52t
        0x18t
    .end array-data

    :array_1
    .array-data 1
        0x5ft
        0x5dt
        0x41t
        0x1t
        0x5dt
        0x74t
        0x56t
        0x56t
        0x41t
        0x11t
        0x15t
        0x40t
        0x5ct
        0x4bt
        0x40t
        0xet
        0x41t
        0x12t
        0x50t
        0x4bt
        0x15t
        0xct
        0x5at
        0x46t
        0x19t
        0x77t
        0x7et
        0x4ct
        0x15t
        0x1at
    .end array-data
.end method

.method public load(Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;)V
    .locals 3

    const/16 v0, 0x1d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "482465"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mCallback:Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->loadInternal()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :array_0
    .array-data 1
        0x78t
        0x57t
        0x53t
        0x50t
        0x53t
        0x47t
        0x77t
        0x59t
        0x5et
        0x58t
        0x54t
        0x54t
        0x57t
        0x53t
        0x12t
        0x57t
        0x57t
        0x5bt
        0x5at
        0x57t
        0x46t
        0x14t
        0x54t
        0x50t
        0x14t
        0x56t
        0x47t
        0x58t
        0x5at
    .end array-data
.end method

.method loadInternal()V
    .locals 5

    iget-object v1, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mCallback:Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_1

    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v2, "b56e32"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/emoji2/text/ConcurrencyHelpers;->createBackgroundPriorityExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mMyThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object v0, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mExecutor:Ljava/util/concurrent/Executor;

    :cond_1
    iget-object v0, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader$$ExternalSyntheticLambda0;-><init>(Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    nop

    :array_0
    .array-data 1
        0x7t
        0x58t
        0x59t
        0xft
        0x5at
        0x71t
        0xdt
        0x58t
        0x46t
        0x4t
        0x47t
    .end array-data
.end method

.method public setExecutor(Ljava/util/concurrent/Executor;)V
    .locals 2

    iget-object v1, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mExecutor:Ljava/util/concurrent/Executor;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setRetryPolicy(Landroidx/emoji2/text/FontRequestEmojiCompatConfig$RetryPolicy;)V
    .locals 2

    iget-object v1, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mRetryPolicy:Landroidx/emoji2/text/FontRequestEmojiCompatConfig$RetryPolicy;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
