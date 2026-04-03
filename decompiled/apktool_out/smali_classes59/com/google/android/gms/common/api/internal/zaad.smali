.class public final Lcom/google/android/gms/common/api/internal/zaad;
.super Ljava/lang/Object;


# instance fields
.field private final zaa:Ljava/util/Map;

.field private final zab:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zaad;->zaa:Ljava/util/Map;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zaad;->zab:Ljava/util/Map;

    return-void
.end method

.method static bridge synthetic zaa(Lcom/google/android/gms/common/api/internal/zaad;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaad;->zaa:Ljava/util/Map;

    return-object v0
.end method

.method static bridge synthetic zab(Lcom/google/android/gms/common/api/internal/zaad;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaad;->zab:Ljava/util/Map;

    return-object v0
.end method

.method private final zah(ZLcom/google/android/gms/common/api/Status;)V
    .locals 4

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaad;->zaa:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zaad;->zaa:Ljava/util/Map;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaad;->zab:Ljava/util/Map;

    monitor-enter v1

    :try_start_1
    new-instance v2, Ljava/util/HashMap;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zaad;->zab:Ljava/util/Map;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    if-nez p1, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/BasePendingResult;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->forceFailureUnlessReady(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    if-nez p1, :cond_4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v1, Lcom/google/android/gms/common/api/ApiException;

    invoke-direct {v1, p2}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_5
    return-void
.end method


# virtual methods
.method final zac(Lcom/google/android/gms/common/api/internal/BasePendingResult;Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaad;->zaa:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/common/api/internal/zaab;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/api/internal/zaab;-><init>(Lcom/google/android/gms/common/api/internal/zaad;Lcom/google/android/gms/common/api/internal/BasePendingResult;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/PendingResult;->addStatusListener(Lcom/google/android/gms/common/api/PendingResult$StatusListener;)V

    return-void
.end method

.method final zad(Lcom/google/android/gms/tasks/TaskCompletionSource;Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaad;->zab:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/api/internal/zaac;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/common/api/internal/zaac;-><init>(Lcom/google/android/gms/common/api/internal/zaad;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method final zae(ILjava/lang/String;)V
    .locals 6

    const/16 v5, 0x1e

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "e2b155"

    invoke-static {v1, v2, v4, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-ne p1, v4, :cond_2

    new-array v1, v5, [B

    fill-array-data v1, :array_1

    const-string v2, "30ecab"

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    const/16 v1, 0x1d

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "0a5dfc"

    invoke-static {v1, v2, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x14

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v4, v1}, Lcom/google/android/gms/common/api/internal/zaad;->zah(ZLcom/google/android/gms/common/api/Status;)V

    return-void

    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    new-array v1, v5, [B

    fill-array-data v1, :array_3

    const-string v2, "0d26dc"

    const/16 v3, 0x541c

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :array_0
    .array-data 1
        0x31t
        0x5at
        0x7t
        0x11t
        0x56t
        0x5at
        0xbt
        0x5ct
        0x7t
        0x52t
        0x41t
        0x5ct
        0xat
        0x5ct
        0x42t
        0x45t
        0x5at
        0x15t
        0x22t
        0x5dt
        0xdt
        0x56t
        0x59t
        0x50t
        0x45t
        0x62t
        0xet
        0x50t
        0x4ct
        0x15t
        0x16t
        0x57t
        0x10t
        0x47t
        0x5ct
        0x56t
        0x0t
        0x41t
        0x42t
        0x46t
        0x54t
        0x46t
        0x45t
        0x5et
        0xdt
        0x42t
        0x41t
    .end array-data

    :array_1
    .array-data 1
        0x13t
        0x54t
        0x10t
        0x6t
        0x41t
        0x16t
        0x5ct
        0x10t
        0x16t
        0x6t
        0x13t
        0x14t
        0x5at
        0x53t
        0x0t
        0x43t
        0x5t
        0xbt
        0x40t
        0x53t
        0xat
        0xdt
        0xft
        0x7t
        0x50t
        0x44t
        0xct
        0xct
        0xft
        0x4ct
    .end array-data

    nop

    :array_2
    .array-data 1
        0x10t
        0x2dt
        0x54t
        0x17t
        0x12t
        0x43t
        0x42t
        0x4t
        0x54t
        0x17t
        0x9t
        0xdt
        0x10t
        0x7t
        0x5at
        0x16t
        0x46t
        0x7t
        0x59t
        0x12t
        0x56t
        0xbt
        0x8t
        0xdt
        0x55t
        0x2t
        0x41t
        0x5et
        0x46t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x10t
        0x0t
        0x47t
        0x53t
        0x44t
        0x17t
        0x5ft
        0x44t
        0x56t
        0x53t
        0x5t
        0x7t
        0x10t
        0xbt
        0x50t
        0x5ct
        0x1t
        0x0t
        0x44t
        0x44t
        0x57t
        0x4et
        0x7t
        0x6t
        0x40t
        0x10t
        0x5bt
        0x59t
        0xat
        0x4dt
    .end array-data
.end method

.method public final zaf()V
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaa:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/common/api/internal/zaad;->zah(ZLcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method final zag()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaad;->zaa:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaad;->zab:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
