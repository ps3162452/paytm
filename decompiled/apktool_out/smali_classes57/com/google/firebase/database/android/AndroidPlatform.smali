.class public Lcom/google/firebase/database/android/AndroidPlatform;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/database/core/Platform;


# static fields
.field private static final APP_IN_BACKGROUND_INTERRUPT_REASON:Ljava/lang/String;


# instance fields
.field private final applicationContext:Landroid/content/Context;

.field private final createdPersistenceCaches:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final firebaseApp:Lcom/google/firebase/FirebaseApp;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x11

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "b4d2da"

    const-wide v2, 0x41ca7ad47f800000L    # 8.88514815E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/android/AndroidPlatform;->APP_IN_BACKGROUND_INTERRUPT_REASON:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x3t
        0x44t
        0x14t
        0x6dt
        0xdt
        0xft
        0x3dt
        0x56t
        0x5t
        0x51t
        0xft
        0x6t
        0x10t
        0x5bt
        0x11t
        0x5ct
        0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/google/firebase/FirebaseApp;)V
    .locals 8

    const/16 v7, 0x50

    const/16 v6, 0x10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/database/android/AndroidPlatform;->createdPersistenceCaches:Ljava/util/Set;

    iput-object p1, p0, Lcom/google/firebase/database/android/AndroidPlatform;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/android/AndroidPlatform;->applicationContext:Landroid/content/Context;

    return-void

    :cond_0
    new-array v0, v6, [B

    fill-array-data v0, :array_0

    const-string v1, "49f995"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [B

    fill-array-data v1, :array_1

    const-string v2, "77ee20"

    const-wide v4, 0x41d3f95fbac00000L    # 1.340440299E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v6, [B

    fill-array-data v0, :array_2

    const-string v1, "070af4"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [B

    fill-array-data v1, :array_3

    const-string v2, "8884a1"

    const v3, 0x4e45406b    # 8.273333E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v6, [B

    fill-array-data v0, :array_4

    const-string v1, "8b4268"

    const v2, 0x4e85ca69    # 1.1223174E9f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [B

    fill-array-data v1, :array_5

    const-string v2, "2492b9"

    const-wide v4, 0x41daf3a5c0c00000L    # 1.808701187E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/RuntimeException;

    const/16 v1, 0x4c

    new-array v1, v1, [B

    fill-array-data v1, :array_6

    const-string v2, "1ebc6f"

    const-wide v4, -0x3e26b128ac000000L    # -1.698389328E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x72t
        0x50t
        0x14t
        0x5ct
        0x5bt
        0x54t
        0x47t
        0x5ct
        0x22t
        0x58t
        0x4dt
        0x54t
        0x56t
        0x58t
        0x15t
        0x5ct
    .end array-data

    :array_1
    .array-data 1
        0x16t
        0x16t
        0x44t
        0x44t
        0x13t
        0x11t
        0x16t
        0x16t
        0x44t
        0x44t
        0x13t
        0x11t
        0x16t
        0x16t
        0x44t
        0x44t
        0x13t
        0x11t
        0x16t
        0x16t
        0x44t
        0x44t
        0x13t
        0x11t
        0x16t
        0x16t
        0x44t
        0x44t
        0x13t
        0x11t
        0x16t
        0x16t
        0x44t
        0x44t
        0x13t
        0x11t
        0x16t
        0x16t
        0x44t
        0x44t
        0x13t
        0x11t
        0x16t
        0x16t
        0x44t
        0x44t
        0x13t
        0x11t
        0x16t
        0x16t
        0x44t
        0x44t
        0x13t
        0x11t
        0x16t
        0x16t
        0x44t
        0x44t
        0x13t
        0x11t
        0x16t
        0x16t
        0x44t
        0x44t
        0x13t
        0x11t
        0x16t
        0x16t
        0x44t
        0x44t
        0x13t
        0x11t
        0x16t
        0x16t
        0x44t
        0x44t
        0x13t
        0x11t
        0x16t
        0x16t
    .end array-data

    :array_2
    .array-data 1
        0x76t
        0x5et
        0x42t
        0x4t
        0x4t
        0x55t
        0x43t
        0x52t
        0x74t
        0x0t
        0x12t
        0x55t
        0x52t
        0x56t
        0x43t
        0x4t
    .end array-data

    :array_3
    .array-data 1
        0x7dt
        0x6at
        0x6at
        0x7bt
        0x33t
        0xbt
        0x18t
        0x61t
        0x57t
        0x41t
        0x41t
        0x5ct
        0x4dt
        0x4bt
        0x4ct
        0x14t
        0x2t
        0x50t
        0x54t
        0x54t
        0x18t
        0x72t
        0x8t
        0x43t
        0x5dt
        0x5at
        0x59t
        0x47t
        0x4t
        0x70t
        0x48t
        0x48t
        0x16t
        0x5dt
        0xft
        0x58t
        0x4ct
        0x51t
        0x59t
        0x58t
        0x8t
        0x4bt
        0x5dt
        0x79t
        0x48t
        0x44t
        0x49t
        0x18t
        0x18t
        0x5at
        0x5dt
        0x52t
        0xet
        0x43t
        0x5dt
        0x18t
        0x4dt
        0x47t
        0x8t
        0x5ft
        0x5ft
        0x18t
        0x7et
        0x5dt
        0x13t
        0x54t
        0x5at
        0x59t
        0x4bt
        0x51t
        0x41t
        0x75t
        0x59t
        0x4ct
        0x59t
        0x56t
        0x0t
        0x42t
        0x5dt
        0x16t
    .end array-data

    :array_4
    .array-data 1
        0x7et
        0xbt
        0x46t
        0x57t
        0x54t
        0x59t
        0x4bt
        0x7t
        0x70t
        0x53t
        0x42t
        0x59t
        0x5at
        0x3t
        0x47t
        0x57t
    .end array-data

    :array_5
    .array-data 1
        0x13t
        0x15t
        0x18t
        0x13t
        0x43t
        0x18t
        0x13t
        0x15t
        0x18t
        0x13t
        0x43t
        0x18t
        0x13t
        0x15t
        0x18t
        0x13t
        0x43t
        0x18t
        0x13t
        0x15t
        0x18t
        0x13t
        0x43t
        0x18t
        0x13t
        0x15t
        0x18t
        0x13t
        0x43t
        0x18t
        0x13t
        0x15t
        0x18t
        0x13t
        0x43t
        0x18t
        0x13t
        0x15t
        0x18t
        0x13t
        0x43t
        0x18t
        0x13t
        0x15t
        0x18t
        0x13t
        0x43t
        0x18t
        0x13t
        0x15t
        0x18t
        0x13t
        0x43t
        0x18t
        0x13t
        0x15t
        0x18t
        0x13t
        0x43t
        0x18t
        0x13t
        0x15t
        0x18t
        0x13t
        0x43t
        0x18t
        0x13t
        0x15t
        0x18t
        0x13t
        0x43t
        0x18t
        0x13t
        0x15t
        0x18t
        0x13t
        0x43t
        0x18t
        0x13t
        0x15t
    .end array-data

    :array_6
    .array-data 1
        0x68t
        0xat
        0x17t
        0x43t
        0x58t
        0x3t
        0x54t
        0x1t
        0x42t
        0x17t
        0x59t
        0x46t
        0x52t
        0x4t
        0xet
        0xft
        0x16t
        0x20t
        0x58t
        0x17t
        0x7t
        0x1t
        0x57t
        0x15t
        0x54t
        0x24t
        0x12t
        0x13t
        0x18t
        0xft
        0x5ft
        0xct
        0x16t
        0xat
        0x57t
        0xat
        0x58t
        0x1ft
        0x7t
        0x22t
        0x46t
        0x16t
        0x19t
        0x4ct
        0x42t
        0x1t
        0x53t
        0x0t
        0x5et
        0x17t
        0x7t
        0x43t
        0x43t
        0x15t
        0x58t
        0xbt
        0x5t
        0x43t
        0x70t
        0xft
        0x43t
        0x0t
        0x0t
        0x2t
        0x45t
        0x3t
        0x11t
        0x21t
        0x3t
        0x17t
        0x57t
        0x4t
        0x50t
        0x16t
        0x7t
        0x4dt
    .end array-data
.end method

.method static synthetic access$000(Lcom/google/firebase/database/android/AndroidPlatform;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/android/AndroidPlatform;->applicationContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public createPersistenceManager(Lcom/google/firebase/database/core/Context;Ljava/lang/String;)Lcom/google/firebase/database/core/persistence/PersistenceManager;
    .locals 6

    invoke-virtual {p1}, Lcom/google/firebase/database/core/Context;->getSessionPersistenceKey()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/16 v4, 0x68

    aput-byte v4, v2, v3

    const-string v3, "712963"

    const v4, 0x4e3f7888    # 8.0308685E8f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/database/android/AndroidPlatform;->createdPersistenceCaches:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/android/AndroidPlatform;->createdPersistenceCaches:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/firebase/database/core/persistence/DefaultPersistenceManager;

    new-instance v2, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;

    iget-object v3, p0, Lcom/google/firebase/database/android/AndroidPlatform;->applicationContext:Landroid/content/Context;

    invoke-direct {v2, v3, p1, v1}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;-><init>(Landroid/content/Context;Lcom/google/firebase/database/core/Context;Ljava/lang/String;)V

    new-instance v1, Lcom/google/firebase/database/core/persistence/LRUCachePolicy;

    invoke-virtual {p1}, Lcom/google/firebase/database/core/Context;->getPersistenceCacheSizeBytes()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Lcom/google/firebase/database/core/persistence/LRUCachePolicy;-><init>(J)V

    invoke-direct {v0, p1, v2, v1}, Lcom/google/firebase/database/core/persistence/DefaultPersistenceManager;-><init>(Lcom/google/firebase/database/core/Context;Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;Lcom/google/firebase/database/core/persistence/CachePolicy;)V

    return-object v0

    :cond_0
    new-instance v1, Lcom/google/firebase/database/DatabaseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x17

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "deedb4"

    const/16 v5, -0x75ea

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x18

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "e5bc0e"

    const-wide/32 v4, -0x71878b46

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :array_0
    .array-data 1
        0x37t
        0x0t
        0x16t
        0x17t
        0xbt
        0x5bt
        0xat
        0x35t
        0x0t
        0x16t
        0x11t
        0x5dt
        0x17t
        0x11t
        0x0t
        0xat
        0x1t
        0x51t
        0x2ft
        0x0t
        0x1ct
        0x44t
        0x45t
    .end array-data

    :array_1
    .array-data 1
        0x42t
        0x15t
        0xat
        0x2t
        0x43t
        0x45t
        0x4t
        0x59t
        0x10t
        0x6t
        0x51t
        0x1t
        0x1ct
        0x15t
        0x0t
        0x6t
        0x55t
        0xbt
        0x45t
        0x40t
        0x11t
        0x6t
        0x54t
        0x4bt
    .end array-data
.end method

.method public getPlatformVersion()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x8

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "37abbb"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getSdkVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x52t
        0x59t
        0x5t
        0x10t
        0xdt
        0xbt
        0x57t
        0x1at
    .end array-data
.end method

.method public getSSLCacheDirectory()Ljava/io/File;
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/database/android/AndroidPlatform;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x8

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "2e90ef"

    const/16 v3, -0x3ca5

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x41t
        0x16t
        0x55t
        0x53t
        0x4t
        0x5t
        0x5at
        0x0t
    .end array-data
.end method

.method public getUserAgent(Lcom/google/firebase/database/core/Context;)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x8

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "48cd98"

    const-wide/32 v4, -0x3e085899

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x1bt
        0x79t
        0xdt
        0x0t
        0x4bt
        0x57t
        0x5dt
        0x5ct
    .end array-data
.end method

.method public newEventTarget(Lcom/google/firebase/database/core/Context;)Lcom/google/firebase/database/core/EventTarget;
    .locals 1

    new-instance v0, Lcom/google/firebase/database/android/AndroidEventTarget;

    invoke-direct {v0}, Lcom/google/firebase/database/android/AndroidEventTarget;-><init>()V

    return-object v0
.end method

.method public newLogger(Lcom/google/firebase/database/core/Context;Lcom/google/firebase/database/logging/Logger$Level;Ljava/util/List;)Lcom/google/firebase/database/logging/Logger;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/Context;",
            "Lcom/google/firebase/database/logging/Logger$Level;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/firebase/database/logging/Logger;"
        }
    .end annotation

    new-instance v0, Lcom/google/firebase/database/logging/AndroidLogger;

    invoke-direct {v0, p2, p3}, Lcom/google/firebase/database/logging/AndroidLogger;-><init>(Lcom/google/firebase/database/logging/Logger$Level;Ljava/util/List;)V

    return-object v0
.end method

.method public newPersistentConnection(Lcom/google/firebase/database/core/Context;Lcom/google/firebase/database/connection/ConnectionContext;Lcom/google/firebase/database/connection/HostInfo;Lcom/google/firebase/database/connection/PersistentConnection$Delegate;)Lcom/google/firebase/database/connection/PersistentConnection;
    .locals 3

    new-instance v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-direct {v0, p2, p3, p4}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;-><init>(Lcom/google/firebase/database/connection/ConnectionContext;Lcom/google/firebase/database/connection/HostInfo;Lcom/google/firebase/database/connection/PersistentConnection$Delegate;)V

    iget-object v1, p0, Lcom/google/firebase/database/android/AndroidPlatform;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    new-instance v2, Lcom/google/firebase/database/android/AndroidPlatform$2;

    invoke-direct {v2, p0, v0}, Lcom/google/firebase/database/android/AndroidPlatform$2;-><init>(Lcom/google/firebase/database/android/AndroidPlatform;Lcom/google/firebase/database/connection/PersistentConnection;)V

    invoke-virtual {v1, v2}, Lcom/google/firebase/FirebaseApp;->addBackgroundStateChangeListener(Lcom/google/firebase/FirebaseApp$BackgroundStateChangeListener;)V

    return-object v0
.end method

.method public newRunLoop(Lcom/google/firebase/database/core/Context;)Lcom/google/firebase/database/core/RunLoop;
    .locals 4

    new-instance v0, Lcom/google/firebase/database/android/AndroidPlatform$1;

    const/4 v1, 0x7

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "7cb4b1"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/firebase/database/core/Context;->getLogger(Ljava/lang/String;)Lcom/google/firebase/database/logging/LogWrapper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/database/android/AndroidPlatform$1;-><init>(Lcom/google/firebase/database/android/AndroidPlatform;Lcom/google/firebase/database/logging/LogWrapper;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        0x65t
        0x16t
        0xct
        0x78t
        0xdt
        0x5et
        0x47t
    .end array-data
.end method
