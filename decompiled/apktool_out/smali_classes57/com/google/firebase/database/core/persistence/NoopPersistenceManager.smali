.class public Lcom/google/firebase/database/core/persistence/NoopPersistenceManager;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/database/core/persistence/PersistenceManager;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private insideTransaction:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x16

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "fc8ba5"

    const v2, 0x4ee8cafe

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/core/persistence/NoopPersistenceManager;->TAG:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x28t
        0xct
        0x57t
        0x12t
        0x31t
        0x50t
        0x14t
        0x10t
        0x51t
        0x11t
        0x15t
        0x50t
        0x8t
        0x0t
        0x5dt
        0x2ft
        0x0t
        0x5bt
        0x7t
        0x4t
        0x5dt
        0x10t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/database/core/persistence/NoopPersistenceManager;->insideTransaction:Z

    return-void
.end method

.method private verifyInsideTransaction()V
    .locals 4

    iget-boolean v0, p0, Lcom/google/firebase/database/core/persistence/NoopPersistenceManager;->insideTransaction:Z

    const/16 v1, 0x2f

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "11e97f"

    const v3, -0x3375f350    # -7.237773E7f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    return-void

    :array_0
    .array-data 1
        0x65t
        0x43t
        0x4t
        0x57t
        0x44t
        0x7t
        0x52t
        0x45t
        0xct
        0x56t
        0x59t
        0x46t
        0x54t
        0x49t
        0x15t
        0x5ct
        0x54t
        0x12t
        0x54t
        0x55t
        0x45t
        0x4dt
        0x58t
        0x46t
        0x50t
        0x5dt
        0x17t
        0x5ct
        0x56t
        0x2t
        0x48t
        0x11t
        0x7t
        0x5ct
        0x17t
        0xft
        0x5ft
        0x11t
        0x15t
        0x4bt
        0x58t
        0x1t
        0x43t
        0x54t
        0x16t
        0x4at
        0x19t
    .end array-data
.end method


# virtual methods
.method public applyUserWriteToServerCache(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/database/core/persistence/NoopPersistenceManager;->verifyInsideTransaction()V

    return-void
.end method

.method public applyUserWriteToServerCache(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/database/core/persistence/NoopPersistenceManager;->verifyInsideTransaction()V

    return-void
.end method

.method public loadUserWrites()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/firebase/database/core/UserWriteRecord;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeAllUserWrites()V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/database/core/persistence/NoopPersistenceManager;->verifyInsideTransaction()V

    return-void
.end method

.method public removeUserWrite(J)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/database/core/persistence/NoopPersistenceManager;->verifyInsideTransaction()V

    return-void
.end method

.method public runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)TT;"
        }
    .end annotation

    const/4 v6, 0x0

    iget-boolean v0, p0, Lcom/google/firebase/database/core/persistence/NoopPersistenceManager;->insideTransaction:Z

    xor-int/lit8 v0, v0, 0x1

    const/16 v1, 0x4c

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "176abf"

    const/16 v3, 0x4bd7

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/database/core/persistence/NoopPersistenceManager;->insideTransaction:Z

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iput-boolean v6, p0, Lcom/google/firebase/database/core/persistence/NoopPersistenceManager;->insideTransaction:Z

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    sget-object v1, Lcom/google/firebase/database/core/persistence/NoopPersistenceManager;->TAG:Ljava/lang/String;

    const/16 v2, 0x11

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "168041"

    const-wide v4, -0x3e24cd7012800000L    # -1.82519391E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    iput-boolean v6, p0, Lcom/google/firebase/database/core/persistence/NoopPersistenceManager;->insideTransaction:Z

    throw v0

    nop

    :array_0
    .array-data 1
        0x43t
        0x42t
        0x58t
        0x28t
        0xct
        0x32t
        0x43t
        0x56t
        0x58t
        0x12t
        0x3t
        0x5t
        0x45t
        0x5et
        0x59t
        0xft
        0x42t
        0x5t
        0x50t
        0x5bt
        0x5at
        0x4t
        0x6t
        0x46t
        0x46t
        0x5ft
        0x53t
        0xft
        0x42t
        0x7t
        0x5ft
        0x17t
        0x53t
        0x19t
        0xbt
        0x15t
        0x45t
        0x5et
        0x58t
        0x6t
        0x42t
        0x12t
        0x43t
        0x56t
        0x58t
        0x12t
        0x3t
        0x5t
        0x45t
        0x5et
        0x59t
        0xft
        0x42t
        0xft
        0x42t
        0x17t
        0x57t
        0xdt
        0x10t
        0x3t
        0x50t
        0x53t
        0x4ft
        0x41t
        0xbt
        0x8t
        0x11t
        0x47t
        0x44t
        0xet
        0x5t
        0x14t
        0x54t
        0x44t
        0x45t
        0x4ft
    .end array-data

    :array_1
    .array-data 1
        0x72t
        0x57t
        0x4dt
        0x57t
        0x5ct
        0x45t
        0x11t
        0x62t
        0x50t
        0x42t
        0x5bt
        0x46t
        0x50t
        0x54t
        0x54t
        0x55t
        0x1at
    .end array-data
.end method

.method public saveUserMerge(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;J)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/database/core/persistence/NoopPersistenceManager;->verifyInsideTransaction()V

    return-void
.end method

.method public saveUserOverwrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;J)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/database/core/persistence/NoopPersistenceManager;->verifyInsideTransaction()V

    return-void
.end method

.method public serverCache(Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/view/CacheNode;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/google/firebase/database/core/view/CacheNode;

    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->getIndex()Lcom/google/firebase/database/snapshot/Index;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/firebase/database/snapshot/IndexedNode;->from(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Index;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v1

    invoke-direct {v0, v1, v3, v3}, Lcom/google/firebase/database/core/view/CacheNode;-><init>(Lcom/google/firebase/database/snapshot/IndexedNode;ZZ)V

    return-object v0
.end method

.method public setQueryActive(Lcom/google/firebase/database/core/view/QuerySpec;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/database/core/persistence/NoopPersistenceManager;->verifyInsideTransaction()V

    return-void
.end method

.method public setQueryComplete(Lcom/google/firebase/database/core/view/QuerySpec;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/database/core/persistence/NoopPersistenceManager;->verifyInsideTransaction()V

    return-void
.end method

.method public setQueryInactive(Lcom/google/firebase/database/core/view/QuerySpec;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/database/core/persistence/NoopPersistenceManager;->verifyInsideTransaction()V

    return-void
.end method

.method public setTrackedQueryKeys(Lcom/google/firebase/database/core/view/QuerySpec;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/view/QuerySpec;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/firebase/database/snapshot/ChildKey;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/firebase/database/core/persistence/NoopPersistenceManager;->verifyInsideTransaction()V

    return-void
.end method

.method public updateServerCache(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/database/core/persistence/NoopPersistenceManager;->verifyInsideTransaction()V

    return-void
.end method

.method public updateServerCache(Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/snapshot/Node;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/database/core/persistence/NoopPersistenceManager;->verifyInsideTransaction()V

    return-void
.end method

.method public updateTrackedQueryKeys(Lcom/google/firebase/database/core/view/QuerySpec;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/view/QuerySpec;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/firebase/database/snapshot/ChildKey;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/firebase/database/snapshot/ChildKey;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/firebase/database/core/persistence/NoopPersistenceManager;->verifyInsideTransaction()V

    return-void
.end method
