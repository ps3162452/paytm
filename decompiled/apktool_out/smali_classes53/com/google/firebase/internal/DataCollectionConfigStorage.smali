.class public Lcom/google/firebase/internal/DataCollectionConfigStorage;
.super Ljava/lang/Object;


# static fields
.field public static final DATA_COLLECTION_DEFAULT_ENABLED:Ljava/lang/String;

.field private static final FIREBASE_APP_PREFS:Ljava/lang/String;


# instance fields
.field private dataCollectionDefaultEnabled:Z

.field private final deviceProtectedContext:Landroid/content/Context;

.field private final publisher:Lcom/google/firebase/events/Publisher;

.field private final sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x28

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "e9d64d"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/internal/DataCollectionConfigStorage;->DATA_COLLECTION_DEFAULT_ENABLED:Ljava/lang/String;

    const/16 v0, 0x21

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "83815d"

    const-wide/32 v2, -0x741db397

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/internal/DataCollectionConfigStorage;->FIREBASE_APP_PREFS:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x3t
        0x50t
        0x16t
        0x53t
        0x56t
        0x5t
        0x16t
        0x5ct
        0x3bt
        0x52t
        0x55t
        0x10t
        0x4t
        0x66t
        0x7t
        0x59t
        0x58t
        0x8t
        0x0t
        0x5at
        0x10t
        0x5ft
        0x5bt
        0xat
        0x3at
        0x5dt
        0x1t
        0x50t
        0x55t
        0x11t
        0x9t
        0x4dt
        0x3bt
        0x53t
        0x5at
        0x5t
        0x7t
        0x55t
        0x1t
        0x52t
    .end array-data

    :array_1
    .array-data 1
        0x5bt
        0x5ct
        0x55t
        0x1ft
        0x52t
        0xbt
        0x57t
        0x54t
        0x54t
        0x54t
        0x1bt
        0x2t
        0x51t
        0x41t
        0x5dt
        0x53t
        0x54t
        0x17t
        0x5dt
        0x1dt
        0x5bt
        0x5et
        0x58t
        0x9t
        0x57t
        0x5dt
        0x16t
        0x41t
        0x47t
        0x1t
        0x5et
        0x40t
        0x2t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/events/Publisher;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/firebase/internal/DataCollectionConfigStorage;->directBootSafe(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/internal/DataCollectionConfigStorage;->deviceProtectedContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x21

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "722218"

    const-wide v4, -0x3e3227d881000000L    # -1.001410302E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/internal/DataCollectionConfigStorage;->sharedPreferences:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/google/firebase/internal/DataCollectionConfigStorage;->publisher:Lcom/google/firebase/events/Publisher;

    invoke-direct {p0}, Lcom/google/firebase/internal/DataCollectionConfigStorage;->readAutoDataCollectionEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/firebase/internal/DataCollectionConfigStorage;->dataCollectionDefaultEnabled:Z

    return-void

    :array_0
    .array-data 1
        0x54t
        0x5dt
        0x5ft
        0x1ct
        0x56t
        0x57t
        0x58t
        0x55t
        0x5et
        0x57t
        0x1ft
        0x5et
        0x5et
        0x40t
        0x57t
        0x50t
        0x50t
        0x4bt
        0x52t
        0x1ct
        0x51t
        0x5dt
        0x5ct
        0x55t
        0x58t
        0x5ct
        0x1ct
        0x42t
        0x43t
        0x5dt
        0x51t
        0x41t
        0x8t
    .end array-data
.end method

.method private static directBootSafe(Landroid/content/Context;)Landroid/content/Context;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-static {p0}, Landroidx/core/content/ContextCompat;->createDeviceProtectedStorageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    goto :goto_0
.end method

.method private readAutoDataCollectionEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/internal/DataCollectionConfigStorage;->sharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/google/firebase/internal/DataCollectionConfigStorage;->DATA_COLLECTION_DEFAULT_ENABLED:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/internal/DataCollectionConfigStorage;->sharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/google/firebase/internal/DataCollectionConfigStorage;->DATA_COLLECTION_DEFAULT_ENABLED:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/internal/DataCollectionConfigStorage;->readManifestDataCollectionEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method private readManifestDataCollectionEnabled()Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/internal/DataCollectionConfigStorage;->deviceProtectedContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/firebase/internal/DataCollectionConfigStorage;->deviceProtectedContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    sget-object v2, Lcom/google/firebase/internal/DataCollectionConfigStorage;->DATA_COLLECTION_DEFAULT_ENABLED:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    sget-object v1, Lcom/google/firebase/internal/DataCollectionConfigStorage;->DATA_COLLECTION_DEFAULT_ENABLED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateDataCollectionDefaultEnabled(Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/firebase/internal/DataCollectionConfigStorage;->dataCollectionDefaultEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/firebase/internal/DataCollectionConfigStorage;->dataCollectionDefaultEnabled:Z

    iget-object v0, p0, Lcom/google/firebase/internal/DataCollectionConfigStorage;->publisher:Lcom/google/firebase/events/Publisher;

    new-instance v1, Lcom/google/firebase/events/Event;

    new-instance v2, Lcom/google/firebase/DataCollectionDefaultChange;

    invoke-direct {v2, p1}, Lcom/google/firebase/DataCollectionDefaultChange;-><init>(Z)V

    const-class v3, Lcom/google/firebase/DataCollectionDefaultChange;

    invoke-direct {v1, v3, v2}, Lcom/google/firebase/events/Event;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/google/firebase/events/Publisher;->publish(Lcom/google/firebase/events/Event;)V
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


# virtual methods
.method public isEnabled()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/firebase/internal/DataCollectionConfigStorage;->dataCollectionDefaultEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setEnabled(Ljava/lang/Boolean;)V
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/internal/DataCollectionConfigStorage;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/internal/DataCollectionConfigStorage;->DATA_COLLECTION_DEFAULT_ENABLED:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-direct {p0}, Lcom/google/firebase/internal/DataCollectionConfigStorage;->readManifestDataCollectionEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/firebase/internal/DataCollectionConfigStorage;->updateDataCollectionDefaultEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/google/firebase/internal/DataCollectionConfigStorage;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/google/firebase/internal/DataCollectionConfigStorage;->DATA_COLLECTION_DEFAULT_ENABLED:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-direct {p0, v0}, Lcom/google/firebase/internal/DataCollectionConfigStorage;->updateDataCollectionDefaultEnabled(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
