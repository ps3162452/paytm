.class public Lcom/google/firebase/database/core/Context;
.super Ljava/lang/Object;


# static fields
.field private static final DEFAULT_CACHE_SIZE:J = 0xa00000L


# instance fields
.field protected authTokenProvider:Lcom/google/firebase/database/core/AuthTokenProvider;

.field protected cacheSize:J

.field protected eventTarget:Lcom/google/firebase/database/core/EventTarget;

.field protected firebaseApp:Lcom/google/firebase/FirebaseApp;

.field private forcedPersistenceManager:Lcom/google/firebase/database/core/persistence/PersistenceManager;

.field private frozen:Z

.field protected logLevel:Lcom/google/firebase/database/logging/Logger$Level;

.field protected loggedComponents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected logger:Lcom/google/firebase/database/logging/Logger;

.field protected persistenceEnabled:Z

.field protected persistenceKey:Ljava/lang/String;

.field private platform:Lcom/google/firebase/database/core/Platform;

.field protected runLoop:Lcom/google/firebase/database/core/RunLoop;

.field private stopped:Z

.field protected userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/firebase/database/logging/Logger$Level;->INFO:Lcom/google/firebase/database/logging/Logger$Level;

    iput-object v0, p0, Lcom/google/firebase/database/core/Context;->logLevel:Lcom/google/firebase/database/logging/Logger$Level;

    const-wide/32 v0, 0xa00000

    iput-wide v0, p0, Lcom/google/firebase/database/core/Context;->cacheSize:J

    iput-boolean v2, p0, Lcom/google/firebase/database/core/Context;->frozen:Z

    iput-boolean v2, p0, Lcom/google/firebase/database/core/Context;->stopped:Z

    return-void
.end method

.method private buildUserAgent(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/16 v8, 0x4a

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x9

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "267cdb"

    const v3, 0x4e24c49c    # 6.910871E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v7, [B

    const/16 v2, 0x50

    aput-byte v2, v1, v6

    const-string v2, "ebddc1"

    const-wide v4, -0x3e21b63a2a000000L    # -2.032605016E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v7, [B

    aput-byte v8, v1, v6

    const-string v2, "e55255"

    const-wide v4, -0x3e8420ca50000000L    # -2.9225819E7

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getSdkVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v7, [B

    aput-byte v8, v1, v6

    const-string v2, "ea6dfa"

    const v3, -0x32b7bfb3

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x74t
        0x5ft
        0x45t
        0x6t
        0x6t
        0x3t
        0x41t
        0x53t
        0x18t
    .end array-data
.end method

.method private ensureAuthTokenProvider()V
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/database/core/Context;->authTokenProvider:Lcom/google/firebase/database/core/AuthTokenProvider;

    const/16 v1, 0x43

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "17881d"

    const v3, 0x4dce09a6    # 4.3209235E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :array_0
    .array-data 1
        0x68t
        0x58t
        0x4dt
        0x18t
        0x5ct
        0x11t
        0x42t
        0x43t
        0x18t
        0x4at
        0x54t
        0x3t
        0x58t
        0x44t
        0x4ct
        0x5dt
        0x43t
        0x44t
        0x50t
        0x59t
        0x18t
        0x59t
        0x44t
        0x10t
        0x59t
        0x63t
        0x57t
        0x53t
        0x54t
        0xat
        0x61t
        0x45t
        0x57t
        0x4et
        0x58t
        0x0t
        0x54t
        0x45t
        0x18t
        0x5at
        0x54t
        0x2t
        0x5et
        0x45t
        0x5dt
        0x18t
        0x58t
        0xat
        0x58t
        0x43t
        0x51t
        0x59t
        0x5dt
        0xdt
        0x4bt
        0x5et
        0x56t
        0x5ft
        0x11t
        0x27t
        0x5et
        0x59t
        0x4ct
        0x5dt
        0x49t
        0x10t
        0x1ft
    .end array-data
.end method

.method private ensureEventTarget()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/core/Context;->eventTarget:Lcom/google/firebase/database/core/EventTarget;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/firebase/database/core/Context;->getPlatform()Lcom/google/firebase/database/core/Platform;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/firebase/database/core/Platform;->newEventTarget(Lcom/google/firebase/database/core/Context;)Lcom/google/firebase/database/core/EventTarget;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/core/Context;->eventTarget:Lcom/google/firebase/database/core/EventTarget;

    :cond_0
    return-void
.end method

.method private ensureLogger()V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/database/core/Context;->logger:Lcom/google/firebase/database/logging/Logger;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/firebase/database/core/Context;->getPlatform()Lcom/google/firebase/database/core/Platform;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/core/Context;->logLevel:Lcom/google/firebase/database/logging/Logger$Level;

    iget-object v2, p0, Lcom/google/firebase/database/core/Context;->loggedComponents:Ljava/util/List;

    invoke-interface {v0, p0, v1, v2}, Lcom/google/firebase/database/core/Platform;->newLogger(Lcom/google/firebase/database/core/Context;Lcom/google/firebase/database/logging/Logger$Level;Ljava/util/List;)Lcom/google/firebase/database/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/core/Context;->logger:Lcom/google/firebase/database/logging/Logger;

    :cond_0
    return-void
.end method

.method private ensureRunLoop()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/core/Context;->runLoop:Lcom/google/firebase/database/core/RunLoop;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/core/Context;->platform:Lcom/google/firebase/database/core/Platform;

    invoke-interface {v0, p0}, Lcom/google/firebase/database/core/Platform;->newRunLoop(Lcom/google/firebase/database/core/Context;)Lcom/google/firebase/database/core/RunLoop;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/core/Context;->runLoop:Lcom/google/firebase/database/core/RunLoop;

    :cond_0
    return-void
.end method

.method private ensureSessionIdentifier()V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/database/core/Context;->persistenceKey:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "615d9b"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/core/Context;->persistenceKey:Ljava/lang/String;

    :cond_0
    return-void

    :array_0
    .array-data 1
        0x52t
        0x54t
        0x53t
        0x5t
        0x4ct
        0xet
        0x42t
    .end array-data
.end method

.method private ensureUserAgent()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/core/Context;->userAgent:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/firebase/database/core/Context;->getPlatform()Lcom/google/firebase/database/core/Platform;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/firebase/database/core/Platform;->getUserAgent(Lcom/google/firebase/database/core/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/database/core/Context;->buildUserAgent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/core/Context;->userAgent:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private getExecutorService()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/firebase/database/core/Context;->getRunLoop()Lcom/google/firebase/database/core/RunLoop;

    move-result-object v0

    instance-of v1, v0, Lcom/google/firebase/database/core/utilities/DefaultRunLoop;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/firebase/database/core/utilities/DefaultRunLoop;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/utilities/DefaultRunLoop;->getExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const/16 v1, 0x23

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "27b7e2"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x71t
        0x42t
        0x11t
        0x43t
        0xat
        0x5ft
        0x12t
        0x45t
        0x17t
        0x59t
        0x45t
        0x5et
        0x5dt
        0x58t
        0x12t
        0x44t
        0x45t
        0x53t
        0x40t
        0x52t
        0x42t
        0x59t
        0xat
        0x46t
        0x12t
        0x44t
        0x17t
        0x47t
        0x15t
        0x5dt
        0x40t
        0x43t
        0x7t
        0x53t
        0x44t
    .end array-data
.end method

.method private getPlatform()Lcom/google/firebase/database/core/Platform;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/core/Context;->platform:Lcom/google/firebase/database/core/Platform;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/firebase/database/core/Context;->initializeAndroidPlatform()V

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/core/Context;->platform:Lcom/google/firebase/database/core/Platform;

    return-object v0
.end method

.method private initServices()V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/database/core/Context;->ensureLogger()V

    invoke-direct {p0}, Lcom/google/firebase/database/core/Context;->getPlatform()Lcom/google/firebase/database/core/Platform;

    invoke-direct {p0}, Lcom/google/firebase/database/core/Context;->ensureUserAgent()V

    invoke-direct {p0}, Lcom/google/firebase/database/core/Context;->ensureEventTarget()V

    invoke-direct {p0}, Lcom/google/firebase/database/core/Context;->ensureRunLoop()V

    invoke-direct {p0}, Lcom/google/firebase/database/core/Context;->ensureSessionIdentifier()V

    invoke-direct {p0}, Lcom/google/firebase/database/core/Context;->ensureAuthTokenProvider()V

    return-void
.end method

.method private initializeAndroidPlatform()V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/google/firebase/database/android/AndroidPlatform;

    iget-object v1, p0, Lcom/google/firebase/database/core/Context;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    invoke-direct {v0, v1}, Lcom/google/firebase/database/android/AndroidPlatform;-><init>(Lcom/google/firebase/FirebaseApp;)V

    iput-object v0, p0, Lcom/google/firebase/database/core/Context;->platform:Lcom/google/firebase/database/core/Platform;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic lambda$wrapAuthTokenProvider$0(Lcom/google/firebase/database/core/AuthTokenProvider;Ljava/util/concurrent/ScheduledExecutorService;ZLcom/google/firebase/database/connection/ConnectionAuthTokenProvider$GetTokenCallback;)V
    .locals 1

    new-instance v0, Lcom/google/firebase/database/core/Context$1;

    invoke-direct {v0, p1, p3}, Lcom/google/firebase/database/core/Context$1;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/firebase/database/connection/ConnectionAuthTokenProvider$GetTokenCallback;)V

    invoke-interface {p0, p2, v0}, Lcom/google/firebase/database/core/AuthTokenProvider;->getToken(ZLcom/google/firebase/database/core/AuthTokenProvider$GetTokenCompletionListener;)V

    return-void
.end method

.method private restartServices()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/core/Context;->eventTarget:Lcom/google/firebase/database/core/EventTarget;

    invoke-interface {v0}, Lcom/google/firebase/database/core/EventTarget;->restart()V

    iget-object v0, p0, Lcom/google/firebase/database/core/Context;->runLoop:Lcom/google/firebase/database/core/RunLoop;

    invoke-interface {v0}, Lcom/google/firebase/database/core/RunLoop;->restart()V

    return-void
.end method

.method private static wrapAuthTokenProvider(Lcom/google/firebase/database/core/AuthTokenProvider;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/firebase/database/connection/ConnectionAuthTokenProvider;
    .locals 1

    invoke-static {p0, p1}, Lcom/google/firebase/database/core/Context$$Lambda$1;->lambdaFactory$(Lcom/google/firebase/database/core/AuthTokenProvider;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/firebase/database/connection/ConnectionAuthTokenProvider;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected assertUnfrozen()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/firebase/database/core/Context;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/google/firebase/database/DatabaseException;

    const/16 v1, 0x49

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "887eb2"

    const v3, 0x4c4c867d    # 5.3615092E7f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x75t
        0x57t
        0x53t
        0xct
        0x4t
        0x5bt
        0x5bt
        0x59t
        0x43t
        0xct
        0xdt
        0x5ct
        0x4bt
        0x18t
        0x43t
        0xat
        0x42t
        0x76t
        0x59t
        0x4ct
        0x56t
        0x7t
        0x3t
        0x41t
        0x5dt
        0x7bt
        0x58t
        0xbt
        0x4t
        0x5bt
        0x5ft
        0x18t
        0x58t
        0x7t
        0x8t
        0x57t
        0x5bt
        0x4ct
        0x44t
        0x45t
        0xft
        0x47t
        0x4bt
        0x4ct
        0x17t
        0xat
        0x1t
        0x51t
        0x4dt
        0x4at
        0x17t
        0x7t
        0x7t
        0x54t
        0x57t
        0x4at
        0x52t
        0x45t
        0x16t
        0x5at
        0x5dt
        0x41t
        0x17t
        0x4t
        0x10t
        0x57t
        0x18t
        0x51t
        0x59t
        0x45t
        0x17t
        0x41t
        0x5dt
    .end array-data
.end method

.method forcePersistenceManager(Lcom/google/firebase/database/core/persistence/PersistenceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/database/core/Context;->forcedPersistenceManager:Lcom/google/firebase/database/core/persistence/PersistenceManager;

    return-void
.end method

.method freeze()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/firebase/database/core/Context;->frozen:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/database/core/Context;->frozen:Z

    invoke-direct {p0}, Lcom/google/firebase/database/core/Context;->initServices()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAuthTokenProvider()Lcom/google/firebase/database/core/AuthTokenProvider;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/core/Context;->authTokenProvider:Lcom/google/firebase/database/core/AuthTokenProvider;

    return-object v0
.end method

.method public getConnectionContext()Lcom/google/firebase/database/connection/ConnectionContext;
    .locals 9

    new-instance v0, Lcom/google/firebase/database/connection/ConnectionContext;

    invoke-virtual {p0}, Lcom/google/firebase/database/core/Context;->getLogger()Lcom/google/firebase/database/logging/Logger;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/firebase/database/core/Context;->getAuthTokenProvider()Lcom/google/firebase/database/core/AuthTokenProvider;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/firebase/database/core/Context;->getExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/firebase/database/core/Context;->wrapAuthTokenProvider(Lcom/google/firebase/database/core/AuthTokenProvider;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/firebase/database/connection/ConnectionAuthTokenProvider;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/firebase/database/core/Context;->getExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/firebase/database/core/Context;->isPersistenceEnabled()Z

    move-result v4

    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getSdkVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/firebase/database/core/Context;->getUserAgent()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/google/firebase/database/core/Context;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v7}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/firebase/FirebaseOptions;->getApplicationId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/google/firebase/database/core/Context;->getSSLCacheDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/google/firebase/database/connection/ConnectionContext;-><init>(Lcom/google/firebase/database/logging/Logger;Lcom/google/firebase/database/connection/ConnectionAuthTokenProvider;Ljava/util/concurrent/ScheduledExecutorService;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getEventTarget()Lcom/google/firebase/database/core/EventTarget;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/core/Context;->eventTarget:Lcom/google/firebase/database/core/EventTarget;

    return-object v0
.end method

.method public getLogLevel()Lcom/google/firebase/database/logging/Logger$Level;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/core/Context;->logLevel:Lcom/google/firebase/database/logging/Logger$Level;

    return-object v0
.end method

.method public getLogger(Ljava/lang/String;)Lcom/google/firebase/database/logging/LogWrapper;
    .locals 2

    new-instance v0, Lcom/google/firebase/database/logging/LogWrapper;

    iget-object v1, p0, Lcom/google/firebase/database/core/Context;->logger:Lcom/google/firebase/database/logging/Logger;

    invoke-direct {v0, v1, p1}, Lcom/google/firebase/database/logging/LogWrapper;-><init>(Lcom/google/firebase/database/logging/Logger;Ljava/lang/String;)V

    return-object v0
.end method

.method public getLogger(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/logging/LogWrapper;
    .locals 2

    new-instance v0, Lcom/google/firebase/database/logging/LogWrapper;

    iget-object v1, p0, Lcom/google/firebase/database/core/Context;->logger:Lcom/google/firebase/database/logging/Logger;

    invoke-direct {v0, v1, p1, p2}, Lcom/google/firebase/database/logging/LogWrapper;-><init>(Lcom/google/firebase/database/logging/Logger;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getLogger()Lcom/google/firebase/database/logging/Logger;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/core/Context;->logger:Lcom/google/firebase/database/logging/Logger;

    return-object v0
.end method

.method public getOptDebugLogComponents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/core/Context;->loggedComponents:Ljava/util/List;

    return-object v0
.end method

.method public getPersistenceCacheSizeBytes()J
    .locals 2

    iget-wide v0, p0, Lcom/google/firebase/database/core/Context;->cacheSize:J

    return-wide v0
.end method

.method getPersistenceManager(Ljava/lang/String;)Lcom/google/firebase/database/core/persistence/PersistenceManager;
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/database/core/Context;->forcedPersistenceManager:Lcom/google/firebase/database/core/persistence/PersistenceManager;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-boolean v0, p0, Lcom/google/firebase/database/core/Context;->persistenceEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/firebase/database/core/Context;->platform:Lcom/google/firebase/database/core/Platform;

    invoke-interface {v0, p0, p1}, Lcom/google/firebase/database/core/Platform;->createPersistenceManager(Lcom/google/firebase/database/core/Context;Ljava/lang/String;)Lcom/google/firebase/database/core/persistence/PersistenceManager;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x50

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "1cba78"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/google/firebase/database/core/persistence/NoopPersistenceManager;

    invoke-direct {v0}, Lcom/google/firebase/database/core/persistence/NoopPersistenceManager;-><init>()V

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x68t
        0xct
        0x17t
        0x41t
        0x5ft
        0x59t
        0x47t
        0x6t
        0x42t
        0x4t
        0x59t
        0x59t
        0x53t
        0xft
        0x7t
        0x5t
        0x17t
        0x48t
        0x54t
        0x11t
        0x11t
        0x8t
        0x44t
        0x4ct
        0x54t
        0xdt
        0x1t
        0x4t
        0x1bt
        0x18t
        0x53t
        0x16t
        0x16t
        0x41t
        0x47t
        0x5dt
        0x43t
        0x10t
        0xbt
        0x12t
        0x43t
        0x5dt
        0x5ft
        0x0t
        0x7t
        0x41t
        0x5et
        0x4bt
        0x11t
        0xdt
        0xdt
        0x15t
        0x17t
        0x4bt
        0x44t
        0x13t
        0x12t
        0xet
        0x45t
        0x4ct
        0x54t
        0x7t
        0x42t
        0xet
        0x59t
        0x18t
        0x45t
        0xbt
        0xbt
        0x12t
        0x17t
        0x48t
        0x5dt
        0x2t
        0x16t
        0x7t
        0x58t
        0x4at
        0x5ct
        0x4dt
    .end array-data
.end method

.method public getPlatformVersion()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/google/firebase/database/core/Context;->getPlatform()Lcom/google/firebase/database/core/Platform;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/database/core/Platform;->getPlatformVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRunLoop()Lcom/google/firebase/database/core/RunLoop;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/core/Context;->runLoop:Lcom/google/firebase/database/core/RunLoop;

    return-object v0
.end method

.method public getSSLCacheDirectory()Ljava/io/File;
    .locals 1

    invoke-direct {p0}, Lcom/google/firebase/database/core/Context;->getPlatform()Lcom/google/firebase/database/core/Platform;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/database/core/Platform;->getSSLCacheDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getSessionPersistenceKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/core/Context;->persistenceKey:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/core/Context;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public isFrozen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/firebase/database/core/Context;->frozen:Z

    return v0
.end method

.method public isPersistenceEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/firebase/database/core/Context;->persistenceEnabled:Z

    return v0
.end method

.method public isStopped()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/firebase/database/core/Context;->stopped:Z

    return v0
.end method

.method public newPersistentConnection(Lcom/google/firebase/database/connection/HostInfo;Lcom/google/firebase/database/connection/PersistentConnection$Delegate;)Lcom/google/firebase/database/connection/PersistentConnection;
    .locals 2

    invoke-direct {p0}, Lcom/google/firebase/database/core/Context;->getPlatform()Lcom/google/firebase/database/core/Platform;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/database/core/Context;->getConnectionContext()Lcom/google/firebase/database/connection/ConnectionContext;

    move-result-object v1

    invoke-interface {v0, p0, v1, p1, p2}, Lcom/google/firebase/database/core/Platform;->newPersistentConnection(Lcom/google/firebase/database/core/Context;Lcom/google/firebase/database/connection/ConnectionContext;Lcom/google/firebase/database/connection/HostInfo;Lcom/google/firebase/database/connection/PersistentConnection$Delegate;)Lcom/google/firebase/database/connection/PersistentConnection;

    move-result-object v0

    return-object v0
.end method

.method public requireStarted()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/firebase/database/core/Context;->stopped:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/firebase/database/core/Context;->restartServices()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/database/core/Context;->stopped:Z

    :cond_0
    return-void
.end method

.method stop()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/database/core/Context;->stopped:Z

    iget-object v0, p0, Lcom/google/firebase/database/core/Context;->eventTarget:Lcom/google/firebase/database/core/EventTarget;

    invoke-interface {v0}, Lcom/google/firebase/database/core/EventTarget;->shutdown()V

    iget-object v0, p0, Lcom/google/firebase/database/core/Context;->runLoop:Lcom/google/firebase/database/core/RunLoop;

    invoke-interface {v0}, Lcom/google/firebase/database/core/RunLoop;->shutdown()V

    return-void
.end method
