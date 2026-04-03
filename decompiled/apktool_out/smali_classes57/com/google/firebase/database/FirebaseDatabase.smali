.class public Lcom/google/firebase/database/FirebaseDatabase;
.super Ljava/lang/Object;


# static fields
.field private static final SDK_VERSION:Ljava/lang/String;


# instance fields
.field private final app:Lcom/google/firebase/FirebaseApp;

.field private final config:Lcom/google/firebase/database/core/DatabaseConfig;

.field private repo:Lcom/google/firebase/database/core/Repo;

.field private final repoInfo:Lcom/google/firebase/database/core/RepoInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "e45967"

    const-wide v2, 0x41df13b016000000L    # 2.085535832E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/FirebaseDatabase;->SDK_VERSION:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x54t
        0xdt
        0x1bt
        0xat
        0x18t
        0x6t
    .end array-data
.end method

.method constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/database/core/RepoInfo;Lcom/google/firebase/database/core/DatabaseConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/database/FirebaseDatabase;->app:Lcom/google/firebase/FirebaseApp;

    iput-object p2, p0, Lcom/google/firebase/database/FirebaseDatabase;->repoInfo:Lcom/google/firebase/database/core/RepoInfo;

    iput-object p3, p0, Lcom/google/firebase/database/FirebaseDatabase;->config:Lcom/google/firebase/database/core/DatabaseConfig;

    return-void
.end method

.method static synthetic access$000(Lcom/google/firebase/database/FirebaseDatabase;)Lcom/google/firebase/database/core/Repo;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/FirebaseDatabase;->repo:Lcom/google/firebase/database/core/Repo;

    return-object v0
.end method

.method private assertUnfrozen(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/google/firebase/database/FirebaseDatabase;->repo:Lcom/google/firebase/database/core/Repo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/google/firebase/database/DatabaseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x9

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "740fef"

    const v4, -0x338d39f9    # -6.3641628E7f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x44

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "775036"

    const-wide/32 v4, 0x24c9fa2e

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x74t
        0x55t
        0x5ct
        0xat
        0x16t
        0x46t
        0x43t
        0x5bt
        0x10t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x1ft
        0x1et
        0x15t
        0x5dt
        0x46t
        0x45t
        0x43t
        0x17t
        0x57t
        0x55t
        0x13t
        0x5bt
        0x56t
        0x53t
        0x50t
        0x10t
        0x51t
        0x53t
        0x51t
        0x58t
        0x47t
        0x55t
        0x13t
        0x57t
        0x59t
        0x4et
        0x15t
        0x5ft
        0x47t
        0x5et
        0x52t
        0x45t
        0x15t
        0x45t
        0x40t
        0x57t
        0x50t
        0x52t
        0x15t
        0x5ft
        0x55t
        0x16t
        0x71t
        0x5et
        0x47t
        0x55t
        0x51t
        0x57t
        0x44t
        0x52t
        0x71t
        0x51t
        0x47t
        0x57t
        0x55t
        0x56t
        0x46t
        0x55t
        0x13t
        0x5ft
        0x59t
        0x44t
        0x41t
        0x51t
        0x5dt
        0x55t
        0x52t
        0x19t
    .end array-data
.end method

.method static createForTests(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/database/core/RepoInfo;Lcom/google/firebase/database/core/DatabaseConfig;)Lcom/google/firebase/database/FirebaseDatabase;
    .locals 1

    new-instance v0, Lcom/google/firebase/database/FirebaseDatabase;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/firebase/database/FirebaseDatabase;-><init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/database/core/RepoInfo;Lcom/google/firebase/database/core/DatabaseConfig;)V

    invoke-direct {v0}, Lcom/google/firebase/database/FirebaseDatabase;->ensureRepo()V

    return-object v0
.end method

.method private ensureRepo()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/database/FirebaseDatabase;->repo:Lcom/google/firebase/database/core/Repo;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/FirebaseDatabase;->config:Lcom/google/firebase/database/core/DatabaseConfig;

    iget-object v1, p0, Lcom/google/firebase/database/FirebaseDatabase;->repoInfo:Lcom/google/firebase/database/core/RepoInfo;

    invoke-static {v0, v1, p0}, Lcom/google/firebase/database/core/RepoManager;->createRepo(Lcom/google/firebase/database/core/Context;Lcom/google/firebase/database/core/RepoInfo;Lcom/google/firebase/database/FirebaseDatabase;)Lcom/google/firebase/database/core/Repo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/FirebaseDatabase;->repo:Lcom/google/firebase/database/core/Repo;
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

.method public static getInstance()Lcom/google/firebase/database/FirebaseDatabase;
    .locals 4

    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseOptions;->getDatabaseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/firebase/database/DatabaseException;

    const/16 v1, 0x2d

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "3ba6df"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x6at
        0xdt
        0x14t
        0x16t
        0x9t
        0x13t
        0x40t
        0x16t
        0x41t
        0x55t
        0x5t
        0xat
        0x5ft
        0x42t
        0x27t
        0x5ft
        0x16t
        0x3t
        0x51t
        0x3t
        0x12t
        0x53t
        0x25t
        0x16t
        0x43t
        0x4ct
        0x8t
        0x58t
        0xdt
        0x12t
        0x5at
        0x3t
        0xdt
        0x5ft
        0x1et
        0x3t
        0x1bt
        0x4bt
        0x41t
        0x50t
        0xdt
        0x14t
        0x40t
        0x16t
        0x4ft
    .end array-data
.end method

.method public static getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/database/FirebaseDatabase;
    .locals 1

    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseOptions;->getDatabaseUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)Lcom/google/firebase/database/FirebaseDatabase;
    .locals 8

    const-class v0, Lcom/google/firebase/database/FirebaseDatabase;

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/google/firebase/database/core/utilities/Utilities;->parseUrl(Ljava/lang/String;)Lcom/google/firebase/database/core/utilities/ParsedUrl;

    move-result-object v1

    iget-object v0, v1, Lcom/google/firebase/database/core/utilities/ParsedUrl;->path:Lcom/google/firebase/database/core/Path;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x26

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v2, "558528"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/google/firebase/database/FirebaseDatabaseComponent;

    invoke-virtual {p0, v0}, Lcom/google/firebase/FirebaseApp;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/FirebaseDatabaseComponent;

    const/16 v2, 0x2b

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "ba382f"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v1, Lcom/google/firebase/database/core/utilities/ParsedUrl;->repoInfo:Lcom/google/firebase/database/core/RepoInfo;

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/FirebaseDatabaseComponent;->get(Lcom/google/firebase/database/core/RepoInfo;)Lcom/google/firebase/database/FirebaseDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    const-class v1, Lcom/google/firebase/database/FirebaseDatabase;

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/firebase/database/DatabaseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x18

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v4, "14ee2c"

    const-wide/32 v6, 0x328906ac

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x59

    new-array v3, v3, [B

    fill-array-data v3, :array_3

    const-string v4, "d6345a"

    const-wide/32 v6, 0x455a2693

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Lcom/google/firebase/database/core/utilities/ParsedUrl;->path:Lcom/google/firebase/database/core/Path;

    invoke-virtual {v1}, Lcom/google/firebase/database/core/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    const-class v1, Lcom/google/firebase/database/FirebaseDatabase;

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_2
    new-instance v0, Lcom/google/firebase/database/DatabaseException;

    const/16 v1, 0x70

    new-array v1, v1, [B

    fill-array-data v1, :array_4

    const-string v2, "309565"

    const-wide v4, -0x3e3689a3d7000000L    # -8.54374482E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :array_0
    .array-data 1
        0x65t
        0x47t
        0x57t
        0x43t
        0x5bt
        0x5ct
        0x50t
        0x51t
        0x18t
        0x73t
        0x5bt
        0x4at
        0x50t
        0x57t
        0x59t
        0x46t
        0x57t
        0x79t
        0x45t
        0x45t
        0x18t
        0x58t
        0x47t
        0x4bt
        0x41t
        0x15t
        0x56t
        0x5at
        0x46t
        0x18t
        0x57t
        0x50t
        0x18t
        0x5bt
        0x47t
        0x54t
        0x59t
        0x1bt
    .end array-data

    nop

    :array_1
    .array-data 1
        0x24t
        0x8t
        0x41t
        0x5dt
        0x50t
        0x7t
        0x11t
        0x4t
        0x13t
        0x7ct
        0x53t
        0x12t
        0x3t
        0x3t
        0x52t
        0x4bt
        0x57t
        0x46t
        0x1t
        0xet
        0x5et
        0x48t
        0x5dt
        0x8t
        0x7t
        0xft
        0x47t
        0x18t
        0x5bt
        0x15t
        0x42t
        0xft
        0x5ct
        0x4ct
        0x12t
        0x16t
        0x10t
        0x4t
        0x40t
        0x5dt
        0x5ct
        0x12t
        0x4ct
    .end array-data

    :array_2
    .array-data 1
        0x62t
        0x44t
        0x0t
        0x6t
        0x5bt
        0x5t
        0x58t
        0x51t
        0x1t
        0x45t
        0x76t
        0x2t
        0x45t
        0x55t
        0x7t
        0x4t
        0x41t
        0x6t
        0x11t
        0x61t
        0x37t
        0x29t
        0x12t
        0x44t
    .end array-data

    :array_3
    .array-data 1
        0x43t
        0x16t
        0x5at
        0x47t
        0x15t
        0x8t
        0xat
        0x40t
        0x52t
        0x58t
        0x5ct
        0x5t
        0x4at
        0x16t
        0x7at
        0x40t
        0x15t
        0x12t
        0xct
        0x59t
        0x46t
        0x58t
        0x51t
        0x41t
        0x14t
        0x59t
        0x5at
        0x5at
        0x41t
        0x41t
        0x10t
        0x59t
        0x13t
        0x40t
        0x5dt
        0x4t
        0x44t
        0x44t
        0x5ct
        0x5bt
        0x41t
        0x41t
        0xbt
        0x50t
        0x13t
        0x55t
        0x15t
        0x27t
        0xdt
        0x44t
        0x56t
        0x56t
        0x54t
        0x12t
        0x1t
        0x16t
        0x77t
        0x55t
        0x41t
        0x0t
        0x6t
        0x57t
        0x40t
        0x51t
        0x15t
        0x3t
        0x11t
        0x42t
        0x13t
        0x5dt
        0x41t
        0x41t
        0xdt
        0x58t
        0x50t
        0x58t
        0x40t
        0x5t
        0x1t
        0x45t
        0x13t
        0x55t
        0x15t
        0x11t
        0x5t
        0x42t
        0x5bt
        0xet
        0x15t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x75t
        0x51t
        0x50t
        0x59t
        0x53t
        0x51t
        0x13t
        0x44t
        0x56t
        0x15t
        0x51t
        0x50t
        0x47t
        0x10t
        0x7ft
        0x5ct
        0x44t
        0x50t
        0x51t
        0x51t
        0x4at
        0x50t
        0x72t
        0x54t
        0x47t
        0x51t
        0x5bt
        0x54t
        0x45t
        0x50t
        0x13t
        0x59t
        0x57t
        0x46t
        0x42t
        0x54t
        0x5dt
        0x53t
        0x5ct
        0xft
        0x16t
        0x66t
        0x43t
        0x55t
        0x5at
        0x5ct
        0x50t
        0x4ct
        0x13t
        0x74t
        0x58t
        0x41t
        0x57t
        0x57t
        0x52t
        0x43t
        0x5ct
        0x60t
        0x64t
        0x79t
        0x13t
        0x47t
        0x50t
        0x41t
        0x5et
        0x5ct
        0x5dt
        0x10t
        0x7ft
        0x5ct
        0x44t
        0x50t
        0x51t
        0x51t
        0x4at
        0x50t
        0x77t
        0x45t
        0x43t
        0x10t
        0x56t
        0x47t
        0x16t
        0x53t
        0x41t
        0x5ft
        0x54t
        0x15t
        0x4ft
        0x5at
        0x46t
        0x42t
        0x19t
        0x52t
        0x53t
        0x41t
        0x7at
        0x5et
        0x4at
        0x41t
        0x57t
        0x5bt
        0x50t
        0x55t
        0x11t
        0x1ct
        0x16t
        0x56t
        0x52t
        0x5ct
        0x55t
        0x1bt
    .end array-data
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/google/firebase/database/FirebaseDatabase;
    .locals 4

    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p0}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/firebase/database/DatabaseException;

    const/16 v1, 0x2d

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "7cb934"

    const/16 v3, 0x27ee

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x6et
        0xct
        0x17t
        0x19t
        0x5et
        0x41t
        0x44t
        0x17t
        0x42t
        0x5at
        0x52t
        0x58t
        0x5bt
        0x43t
        0x24t
        0x50t
        0x41t
        0x51t
        0x55t
        0x2t
        0x11t
        0x5ct
        0x72t
        0x44t
        0x47t
        0x4dt
        0xbt
        0x57t
        0x5at
        0x40t
        0x5et
        0x2t
        0xet
        0x50t
        0x49t
        0x51t
        0x1ft
        0x4at
        0x42t
        0x5ft
        0x5at
        0x46t
        0x44t
        0x17t
        0x4ct
    .end array-data
.end method

.method public static getSdkVersion()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/firebase/database/FirebaseDatabase;->SDK_VERSION:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getApp()Lcom/google/firebase/FirebaseApp;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/FirebaseDatabase;->app:Lcom/google/firebase/FirebaseApp;

    return-object v0
.end method

.method getConfig()Lcom/google/firebase/database/core/DatabaseConfig;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/FirebaseDatabase;->config:Lcom/google/firebase/database/core/DatabaseConfig;

    return-object v0
.end method

.method public getReference()Lcom/google/firebase/database/DatabaseReference;
    .locals 3

    invoke-direct {p0}, Lcom/google/firebase/database/FirebaseDatabase;->ensureRepo()V

    new-instance v0, Lcom/google/firebase/database/DatabaseReference;

    iget-object v1, p0, Lcom/google/firebase/database/FirebaseDatabase;->repo:Lcom/google/firebase/database/core/Repo;

    invoke-static {}, Lcom/google/firebase/database/core/Path;->getEmptyPath()Lcom/google/firebase/database/core/Path;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/database/DatabaseReference;-><init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/Path;)V

    return-object v0
.end method

.method public getReference(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;
    .locals 4

    invoke-direct {p0}, Lcom/google/firebase/database/FirebaseDatabase;->ensureRepo()V

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/google/firebase/database/core/utilities/Validation;->validateRootPathString(Ljava/lang/String;)V

    new-instance v0, Lcom/google/firebase/database/core/Path;

    invoke-direct {v0, p1}, Lcom/google/firebase/database/core/Path;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/firebase/database/DatabaseReference;

    iget-object v2, p0, Lcom/google/firebase/database/FirebaseDatabase;->repo:Lcom/google/firebase/database/core/Repo;

    invoke-direct {v1, v2, v0}, Lcom/google/firebase/database/DatabaseReference;-><init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/Path;)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const/16 v1, 0x4c

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "46d93f"

    const v3, 0x4ed1972e

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x77t
        0x57t
        0xat
        0x1et
        0x47t
        0x46t
        0x44t
        0x57t
        0x17t
        0x4at
        0x13t
        0x8t
        0x41t
        0x5at
        0x8t
        0x19t
        0x55t
        0x9t
        0x46t
        0x16t
        0x5t
        0x4bt
        0x54t
        0x13t
        0x59t
        0x53t
        0xat
        0x4dt
        0x13t
        0x41t
        0x44t
        0x57t
        0x10t
        0x51t
        0x60t
        0x12t
        0x46t
        0x5ft
        0xat
        0x5et
        0x14t
        0x46t
        0x5dt
        0x58t
        0x44t
        0x7ft
        0x5at
        0x14t
        0x51t
        0x54t
        0x5t
        0x4at
        0x56t
        0x22t
        0x55t
        0x42t
        0x5t
        0x5bt
        0x52t
        0x15t
        0x51t
        0x18t
        0x3t
        0x5ct
        0x47t
        0x34t
        0x51t
        0x50t
        0x1t
        0x4bt
        0x56t
        0x8t
        0x57t
        0x53t
        0x4ct
        0x10t
    .end array-data
.end method

.method public getReferenceFromUrl(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;
    .locals 6

    invoke-direct {p0}, Lcom/google/firebase/database/FirebaseDatabase;->ensureRepo()V

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/google/firebase/database/core/utilities/Utilities;->parseUrl(Ljava/lang/String;)Lcom/google/firebase/database/core/utilities/ParsedUrl;

    move-result-object v0

    iget-object v1, v0, Lcom/google/firebase/database/core/utilities/ParsedUrl;->repoInfo:Lcom/google/firebase/database/core/RepoInfo;

    iget-object v1, v1, Lcom/google/firebase/database/core/RepoInfo;->host:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/firebase/database/FirebaseDatabase;->repo:Lcom/google/firebase/database/core/Repo;

    invoke-virtual {v2}, Lcom/google/firebase/database/core/Repo;->getRepoInfo()Lcom/google/firebase/database/core/RepoInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/google/firebase/database/core/RepoInfo;->host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/firebase/database/DatabaseReference;

    iget-object v2, p0, Lcom/google/firebase/database/FirebaseDatabase;->repo:Lcom/google/firebase/database/core/Repo;

    iget-object v0, v0, Lcom/google/firebase/database/core/utilities/ParsedUrl;->path:Lcom/google/firebase/database/core/Path;

    invoke-direct {v1, v2, v0}, Lcom/google/firebase/database/DatabaseReference;-><init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/Path;)V

    return-object v1

    :cond_0
    new-instance v0, Lcom/google/firebase/database/DatabaseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xd

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "73d98a"

    const-wide v4, -0x3e41caa861000000L    # -5.06812319E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x50

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "a7c03d"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/firebase/database/FirebaseDatabase;->getReference()Lcom/google/firebase/database/DatabaseReference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/database/DatabaseReference;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const/16 v1, 0x4c

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "557406"

    const-wide/32 v4, -0x53454fa5

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x7et
        0x5dt
        0x12t
        0x58t
        0x54t
        0x8t
        0x53t
        0x13t
        0x31t
        0x6bt
        0x74t
        0x41t
        0x1ft
    .end array-data

    nop

    :array_1
    .array-data 1
        0x48t
        0x17t
        0x13t
        0x51t
        0x40t
        0x17t
        0x4t
        0x53t
        0x43t
        0x44t
        0x5ct
        0x44t
        0x6t
        0x52t
        0x17t
        0x62t
        0x56t
        0x2t
        0x4t
        0x45t
        0x6t
        0x5et
        0x50t
        0x1t
        0x49t
        0x1et
        0x4dt
        0x10t
        0x13t
        0x31t
        0x33t
        0x7bt
        0x43t
        0x47t
        0x52t
        0x17t
        0x41t
        0x52t
        0x1bt
        0x40t
        0x56t
        0x7t
        0x15t
        0x52t
        0x7t
        0x10t
        0x47t
        0xbt
        0x41t
        0x5at
        0x2t
        0x44t
        0x50t
        0xct
        0x41t
        0x54t
        0xct
        0x5et
        0x55t
        0xdt
        0x6t
        0x42t
        0x11t
        0x55t
        0x57t
        0x44t
        0x25t
        0x56t
        0x17t
        0x51t
        0x51t
        0x5t
        0x12t
        0x52t
        0x43t
        0x65t
        0x61t
        0x28t
        0x5bt
        0x17t
    .end array-data

    :array_2
    .array-data 1
        0x76t
        0x54t
        0x59t
        0x13t
        0x44t
        0x16t
        0x45t
        0x54t
        0x44t
        0x47t
        0x10t
        0x58t
        0x40t
        0x59t
        0x5bt
        0x14t
        0x56t
        0x59t
        0x47t
        0x15t
        0x56t
        0x46t
        0x57t
        0x43t
        0x58t
        0x50t
        0x59t
        0x40t
        0x10t
        0x11t
        0x40t
        0x47t
        0x5bt
        0x13t
        0x10t
        0x5ft
        0x5bt
        0x15t
        0x71t
        0x5dt
        0x42t
        0x53t
        0x57t
        0x54t
        0x44t
        0x51t
        0x74t
        0x57t
        0x41t
        0x54t
        0x55t
        0x55t
        0x43t
        0x53t
        0x1bt
        0x52t
        0x52t
        0x40t
        0x62t
        0x53t
        0x53t
        0x50t
        0x45t
        0x51t
        0x5et
        0x55t
        0x50t
        0x73t
        0x45t
        0x5bt
        0x5dt
        0x63t
        0x47t
        0x59t
        0x1ft
        0x1dt
    .end array-data
.end method

.method public goOffline()V
    .locals 1

    invoke-direct {p0}, Lcom/google/firebase/database/FirebaseDatabase;->ensureRepo()V

    iget-object v0, p0, Lcom/google/firebase/database/FirebaseDatabase;->repo:Lcom/google/firebase/database/core/Repo;

    invoke-static {v0}, Lcom/google/firebase/database/core/RepoManager;->interrupt(Lcom/google/firebase/database/core/Repo;)V

    return-void
.end method

.method public goOnline()V
    .locals 1

    invoke-direct {p0}, Lcom/google/firebase/database/FirebaseDatabase;->ensureRepo()V

    iget-object v0, p0, Lcom/google/firebase/database/FirebaseDatabase;->repo:Lcom/google/firebase/database/core/Repo;

    invoke-static {v0}, Lcom/google/firebase/database/core/RepoManager;->resume(Lcom/google/firebase/database/core/Repo;)V

    return-void
.end method

.method public purgeOutstandingWrites()V
    .locals 2

    invoke-direct {p0}, Lcom/google/firebase/database/FirebaseDatabase;->ensureRepo()V

    iget-object v0, p0, Lcom/google/firebase/database/FirebaseDatabase;->repo:Lcom/google/firebase/database/core/Repo;

    new-instance v1, Lcom/google/firebase/database/FirebaseDatabase$1;

    invoke-direct {v1, p0}, Lcom/google/firebase/database/FirebaseDatabase$1;-><init>(Lcom/google/firebase/database/FirebaseDatabase;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/core/Repo;->scheduleNow(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setLogLevel(Lcom/google/firebase/database/Logger$Level;)V
    .locals 3

    monitor-enter p0

    const/16 v0, 0xb

    :try_start_0
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "8cf29a"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/database/FirebaseDatabase;->assertUnfrozen(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/firebase/database/FirebaseDatabase;->config:Lcom/google/firebase/database/core/DatabaseConfig;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/core/DatabaseConfig;->setLogLevel(Lcom/google/firebase/database/Logger$Level;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :array_0
    .array-data 1
        0x4bt
        0x6t
        0x12t
        0x7et
        0x56t
        0x6t
        0x74t
        0x6t
        0x10t
        0x57t
        0x55t
    .end array-data
.end method

.method public setPersistenceCacheSizeBytes(J)V
    .locals 3

    monitor-enter p0

    const/16 v0, 0x1c

    :try_start_0
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "265af4"

    const v2, 0x4df66f51    # 5.168113E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/database/FirebaseDatabase;->assertUnfrozen(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/firebase/database/FirebaseDatabase;->config:Lcom/google/firebase/database/core/DatabaseConfig;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/database/core/DatabaseConfig;->setPersistenceCacheSizeBytes(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :array_0
    .array-data 1
        0x41t
        0x53t
        0x41t
        0x31t
        0x3t
        0x46t
        0x41t
        0x5ft
        0x46t
        0x15t
        0x3t
        0x5at
        0x51t
        0x53t
        0x76t
        0x0t
        0x5t
        0x5ct
        0x57t
        0x65t
        0x5ct
        0x1bt
        0x3t
        0x76t
        0x4bt
        0x42t
        0x50t
        0x12t
    .end array-data
.end method

.method public setPersistenceEnabled(Z)V
    .locals 4

    monitor-enter p0

    const/16 v0, 0x15

    :try_start_0
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "c2d294"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/database/FirebaseDatabase;->assertUnfrozen(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/firebase/database/FirebaseDatabase;->config:Lcom/google/firebase/database/core/DatabaseConfig;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/core/DatabaseConfig;->setPersistenceEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    :array_0
    .array-data 1
        0x10t
        0x57t
        0x10t
        0x62t
        0x5ct
        0x46t
        0x10t
        0x5bt
        0x17t
        0x46t
        0x5ct
        0x5at
        0x0t
        0x57t
        0x21t
        0x5ct
        0x58t
        0x56t
        0xft
        0x57t
        0x0t
    .end array-data
.end method
