.class Landroidx/core/provider/FontRequestWorker;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/provider/FontRequestWorker$TypefaceResult;
    }
.end annotation


# static fields
.field private static final DEFAULT_EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;

.field static final LOCK:Ljava/lang/Object;

.field static final PENDING_REPLIES:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/core/util/Consumer",
            "<",
            "Landroidx/core/provider/FontRequestWorker$TypefaceResult;",
            ">;>;>;"
        }
    .end annotation
.end field

.field static final sTypefaceCache:Landroidx/collection/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/collection/LruCache;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroidx/collection/LruCache;-><init>(I)V

    sput-object v0, Landroidx/core/provider/FontRequestWorker;->sTypefaceCache:Landroidx/collection/LruCache;

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "0c1a27"

    const v2, -0x330fe07e

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    const/16 v2, 0x2710

    invoke-static {v0, v1, v2}, Landroidx/core/provider/RequestExecutor;->createDefaultExecutor(Ljava/lang/String;II)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    sput-object v0, Landroidx/core/provider/FontRequestWorker;->DEFAULT_EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/core/provider/FontRequestWorker;->LOCK:Ljava/lang/Object;

    new-instance v0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    sput-object v0, Landroidx/core/provider/FontRequestWorker;->PENDING_REPLIES:Landroidx/collection/SimpleArrayMap;

    return-void

    :array_0
    .array-data 1
        0x56t
        0xct
        0x5ft
        0x15t
        0x41t
        0x1at
        0x51t
        0xdt
        0x55t
        0x13t
        0x5dt
        0x5et
        0x54t
        0x1bt
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createCacheId(Landroidx/core/provider/FontRequest;I)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/core/provider/FontRequest;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/16 v3, 0x1b

    aput-byte v3, v1, v2

    const-string v2, "679e80"

    const-wide v4, 0x41cb030dca800000L    # 9.06369941E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getFontFamilyResultStatus(Landroidx/core/provider/FontsContractCompat$FontFamilyResult;)I
    .locals 6

    const/4 v2, 0x0

    const/4 v0, -0x3

    invoke-virtual {p0}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->getStatusCode()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->getStatusCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    const/4 v0, -0x2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->getFonts()[Landroidx/core/provider/FontsContractCompat$FontInfo;

    move-result-object v4

    if-eqz v4, :cond_2

    array-length v1, v4

    if-nez v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    array-length v5, v4

    move v3, v2

    :goto_1
    if-ge v3, v5, :cond_5

    aget-object v1, v4, v3

    invoke-virtual {v1}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getResultCode()I

    move-result v1

    if-eqz v1, :cond_4

    if-ltz v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static getFontSync(Ljava/lang/String;Landroid/content/Context;Landroidx/core/provider/FontRequest;I)Landroidx/core/provider/FontRequestWorker$TypefaceResult;
    .locals 4

    const/4 v3, 0x0

    sget-object v1, Landroidx/core/provider/FontRequestWorker;->sTypefaceCache:Landroidx/collection/LruCache;

    invoke-virtual {v1, p0}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    invoke-direct {v1, v0}, Landroidx/core/provider/FontRequestWorker$TypefaceResult;-><init>(Landroid/graphics/Typeface;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, p2, v0}, Landroidx/core/provider/FontProvider;->getFontFamilyResult(Landroid/content/Context;Landroidx/core/provider/FontRequest;Landroid/os/CancellationSignal;)Landroidx/core/provider/FontsContractCompat$FontFamilyResult;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-static {v0}, Landroidx/core/provider/FontRequestWorker;->getFontFamilyResultStatus(Landroidx/core/provider/FontsContractCompat$FontFamilyResult;)I

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    invoke-direct {v0, v2}, Landroidx/core/provider/FontRequestWorker$TypefaceResult;-><init>(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->getFonts()[Landroidx/core/provider/FontsContractCompat$FontInfo;

    move-result-object v0

    invoke-static {p1, v3, v0, p3}, Landroidx/core/graphics/TypefaceCompat;->createFromFontInfo(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroid/graphics/Typeface;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, p0, v2}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    invoke-direct {v0, v2}, Landroidx/core/provider/FontRequestWorker$TypefaceResult;-><init>(Landroid/graphics/Typeface;)V

    goto :goto_0

    :cond_2
    new-instance v0, Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    const/4 v1, -0x3

    invoke-direct {v0, v1}, Landroidx/core/provider/FontRequestWorker$TypefaceResult;-><init>(I)V

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroidx/core/provider/FontRequestWorker$TypefaceResult;-><init>(I)V

    goto :goto_0
.end method

.method static requestFontAsync(Landroid/content/Context;Landroidx/core/provider/FontRequest;ILjava/util/concurrent/Executor;Landroidx/core/provider/CallbackWithHandler;)Landroid/graphics/Typeface;
    .locals 6

    const/4 v1, 0x0

    invoke-static {p1, p2}, Landroidx/core/provider/FontRequestWorker;->createCacheId(Landroidx/core/provider/FontRequest;I)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Landroidx/core/provider/FontRequestWorker;->sTypefaceCache:Landroidx/collection/LruCache;

    invoke-virtual {v0, v2}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    invoke-direct {v1, v0}, Landroidx/core/provider/FontRequestWorker$TypefaceResult;-><init>(Landroid/graphics/Typeface;)V

    invoke-virtual {p4, v1}, Landroidx/core/provider/CallbackWithHandler;->onTypefaceResult(Landroidx/core/provider/FontRequestWorker$TypefaceResult;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v3, Landroidx/core/provider/FontRequestWorker$2;

    invoke-direct {v3, p4}, Landroidx/core/provider/FontRequestWorker$2;-><init>(Landroidx/core/provider/CallbackWithHandler;)V

    sget-object v4, Landroidx/core/provider/FontRequestWorker;->LOCK:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    sget-object v5, Landroidx/core/provider/FontRequestWorker;->PENDING_REPLIES:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v5, v2}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v4

    move-object v0, v1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v2, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Landroidx/core/provider/FontRequestWorker$3;

    invoke-direct {v0, v2, p0, p1, p2}, Landroidx/core/provider/FontRequestWorker$3;-><init>(Ljava/lang/String;Landroid/content/Context;Landroidx/core/provider/FontRequest;I)V

    if-nez p3, :cond_2

    sget-object p3, Landroidx/core/provider/FontRequestWorker;->DEFAULT_EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;

    :cond_2
    new-instance v3, Landroidx/core/provider/FontRequestWorker$4;

    invoke-direct {v3, v2}, Landroidx/core/provider/FontRequestWorker$4;-><init>(Ljava/lang/String;)V

    invoke-static {p3, v0, v3}, Landroidx/core/provider/RequestExecutor;->execute(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;Landroidx/core/util/Consumer;)V

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static requestFontSync(Landroid/content/Context;Landroidx/core/provider/FontRequest;Landroidx/core/provider/CallbackWithHandler;II)Landroid/graphics/Typeface;
    .locals 2

    invoke-static {p1, p3}, Landroidx/core/provider/FontRequestWorker;->createCacheId(Landroidx/core/provider/FontRequest;I)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Landroidx/core/provider/FontRequestWorker;->sTypefaceCache:Landroidx/collection/LruCache;

    invoke-virtual {v0, v1}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    invoke-direct {v1, v0}, Landroidx/core/provider/FontRequestWorker$TypefaceResult;-><init>(Landroid/graphics/Typeface;)V

    invoke-virtual {p2, v1}, Landroidx/core/provider/CallbackWithHandler;->onTypefaceResult(Landroidx/core/provider/FontRequestWorker$TypefaceResult;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, -0x1

    if-ne p4, v0, :cond_1

    invoke-static {v1, p0, p1, p3}, Landroidx/core/provider/FontRequestWorker;->getFontSync(Ljava/lang/String;Landroid/content/Context;Landroidx/core/provider/FontRequest;I)Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/provider/CallbackWithHandler;->onTypefaceResult(Landroidx/core/provider/FontRequestWorker$TypefaceResult;)V

    iget-object v0, v0, Landroidx/core/provider/FontRequestWorker$TypefaceResult;->mTypeface:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_1
    new-instance v0, Landroidx/core/provider/FontRequestWorker$1;

    invoke-direct {v0, v1, p0, p1, p3}, Landroidx/core/provider/FontRequestWorker$1;-><init>(Ljava/lang/String;Landroid/content/Context;Landroidx/core/provider/FontRequest;I)V

    :try_start_0
    sget-object v1, Landroidx/core/provider/FontRequestWorker;->DEFAULT_EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;

    invoke-static {v1, v0, p4}, Landroidx/core/provider/RequestExecutor;->submit(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Callable;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    invoke-virtual {p2, v0}, Landroidx/core/provider/CallbackWithHandler;->onTypefaceResult(Landroidx/core/provider/FontRequestWorker$TypefaceResult;)V

    iget-object v0, v0, Landroidx/core/provider/FontRequestWorker$TypefaceResult;->mTypeface:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    const/4 v1, -0x3

    invoke-direct {v0, v1}, Landroidx/core/provider/FontRequestWorker$TypefaceResult;-><init>(I)V

    invoke-virtual {p2, v0}, Landroidx/core/provider/CallbackWithHandler;->onTypefaceResult(Landroidx/core/provider/FontRequestWorker$TypefaceResult;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static resetTypefaceCache()V
    .locals 1

    sget-object v0, Landroidx/core/provider/FontRequestWorker;->sTypefaceCache:Landroidx/collection/LruCache;

    invoke-virtual {v0}, Landroidx/collection/LruCache;->evictAll()V

    return-void
.end method
