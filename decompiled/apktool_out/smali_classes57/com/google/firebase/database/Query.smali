.class public Lcom/google/firebase/database/Query;
.super Ljava/lang/Object;


# static fields
.field static final $assertionsDisabled:Z


# instance fields
.field private final orderByCalled:Z

.field protected final params:Lcom/google/firebase/database/core/view/QueryParams;

.field protected final path:Lcom/google/firebase/database/core/Path;

.field protected final repo:Lcom/google/firebase/database/core/Repo;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/Path;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/database/Query;->repo:Lcom/google/firebase/database/core/Repo;

    iput-object p2, p0, Lcom/google/firebase/database/Query;->path:Lcom/google/firebase/database/core/Path;

    sget-object v0, Lcom/google/firebase/database/core/view/QueryParams;->DEFAULT_PARAMS:Lcom/google/firebase/database/core/view/QueryParams;

    iput-object v0, p0, Lcom/google/firebase/database/Query;->params:Lcom/google/firebase/database/core/view/QueryParams;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/database/Query;->orderByCalled:Z

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/view/QueryParams;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/database/DatabaseException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/database/Query;->repo:Lcom/google/firebase/database/core/Repo;

    iput-object p2, p0, Lcom/google/firebase/database/Query;->path:Lcom/google/firebase/database/core/Path;

    iput-object p3, p0, Lcom/google/firebase/database/Query;->params:Lcom/google/firebase/database/core/view/QueryParams;

    iput-boolean p4, p0, Lcom/google/firebase/database/Query;->orderByCalled:Z

    invoke-virtual {p3}, Lcom/google/firebase/database/core/view/QueryParams;->isValid()Z

    move-result v0

    const/16 v1, 0x1d

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "cd6700"

    const-wide/32 v4, -0x577f2d65

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 1
        0x35t
        0x5t
        0x5at
        0x5et
        0x54t
        0x51t
        0x17t
        0xdt
        0x59t
        0x59t
        0x10t
        0x5ft
        0x5t
        0x44t
        0x47t
        0x42t
        0x55t
        0x42t
        0xat
        0x1t
        0x45t
        0x17t
        0x56t
        0x51t
        0xat
        0x8t
        0x53t
        0x53t
        0x1et
    .end array-data
.end method

.method private addEventRegistration(Lcom/google/firebase/database/core/EventRegistration;)V
    .locals 2

    invoke-static {}, Lcom/google/firebase/database/core/ZombieEventManager;->getInstance()Lcom/google/firebase/database/core/ZombieEventManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/core/ZombieEventManager;->recordEventRegistration(Lcom/google/firebase/database/core/EventRegistration;)V

    iget-object v0, p0, Lcom/google/firebase/database/Query;->repo:Lcom/google/firebase/database/core/Repo;

    new-instance v1, Lcom/google/firebase/database/Query$3;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/database/Query$3;-><init>(Lcom/google/firebase/database/Query;Lcom/google/firebase/database/core/EventRegistration;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/core/Repo;->scheduleNow(Ljava/lang/Runnable;)V

    return-void
.end method

.method private endAt(Lcom/google/firebase/database/snapshot/Node;Ljava/lang/String;)Lcom/google/firebase/database/Query;
    .locals 6

    invoke-static {p2}, Lcom/google/firebase/database/core/utilities/Validation;->validateNullableKey(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/google/firebase/database/snapshot/Node;->isLeafNode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    invoke-static {p2}, Lcom/google/firebase/database/snapshot/ChildKey;->fromString(Ljava/lang/String;)Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/google/firebase/database/Query;->params:Lcom/google/firebase/database/core/view/QueryParams;

    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/QueryParams;->hasEnd()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/firebase/database/Query;->params:Lcom/google/firebase/database/core/view/QueryParams;

    invoke-virtual {v1, p1, v0}, Lcom/google/firebase/database/core/view/QueryParams;->endAt(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/view/QueryParams;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/database/Query;->validateLimit(Lcom/google/firebase/database/core/view/QueryParams;)V

    invoke-direct {p0, v0}, Lcom/google/firebase/database/Query;->validateQueryEndpoints(Lcom/google/firebase/database/core/view/QueryParams;)V

    new-instance v1, Lcom/google/firebase/database/Query;

    iget-object v2, p0, Lcom/google/firebase/database/Query;->repo:Lcom/google/firebase/database/core/Repo;

    iget-object v3, p0, Lcom/google/firebase/database/Query;->path:Lcom/google/firebase/database/core/Path;

    iget-boolean v4, p0, Lcom/google/firebase/database/Query;->orderByCalled:Z

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/google/firebase/database/Query;-><init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/view/QueryParams;Z)V

    return-object v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x26

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "757403"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x2e

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "6d2e46"

    const-wide/32 v4, 0x34df4b6c

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x74t
        0x54t
        0x59t
        0x14t
        0x5ft
        0x5dt
        0x5bt
        0x4ct
        0x17t
        0x41t
        0x43t
        0x56t
        0x17t
        0x46t
        0x5et
        0x59t
        0x40t
        0x5ft
        0x52t
        0x15t
        0x41t
        0x55t
        0x5ct
        0x46t
        0x52t
        0x46t
        0x17t
        0x52t
        0x5ft
        0x41t
        0x17t
        0x50t
        0x59t
        0x50t
        0x71t
        0x47t
        0x1ft
        0x1ct
    .end array-data

    nop

    :array_1
    .array-data 1
        0x75t
        0x5t
        0x5ct
        0x42t
        0x40t
        0x16t
        0x55t
        0x5t
        0x5et
        0x9t
        0x14t
        0x53t
        0x58t
        0x0t
        0x73t
        0x11t
        0x1ct
        0x1ft
        0x16t
        0xbt
        0x40t
        0x45t
        0x51t
        0x47t
        0x43t
        0x5t
        0x5et
        0x31t
        0x5bt
        0x1et
        0x1ft
        0x44t
        0x5ft
        0x10t
        0x58t
        0x42t
        0x5ft
        0x14t
        0x5et
        0x0t
        0x14t
        0x42t
        0x5ft
        0x9t
        0x57t
        0x16t
    .end array-data
.end method

.method private removeEventRegistration(Lcom/google/firebase/database/core/EventRegistration;)V
    .locals 2

    invoke-static {}, Lcom/google/firebase/database/core/ZombieEventManager;->getInstance()Lcom/google/firebase/database/core/ZombieEventManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/core/ZombieEventManager;->zombifyForRemove(Lcom/google/firebase/database/core/EventRegistration;)V

    iget-object v0, p0, Lcom/google/firebase/database/Query;->repo:Lcom/google/firebase/database/core/Repo;

    new-instance v1, Lcom/google/firebase/database/Query$2;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/database/Query$2;-><init>(Lcom/google/firebase/database/Query;Lcom/google/firebase/database/core/EventRegistration;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/core/Repo;->scheduleNow(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startAt(Lcom/google/firebase/database/snapshot/Node;Ljava/lang/String;)Lcom/google/firebase/database/Query;
    .locals 6

    invoke-static {p2}, Lcom/google/firebase/database/core/utilities/Validation;->validateNullableKey(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/google/firebase/database/snapshot/Node;->isLeafNode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/Query;->params:Lcom/google/firebase/database/core/view/QueryParams;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/QueryParams;->hasStart()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    invoke-static {p2}, Lcom/google/firebase/database/snapshot/ChildKey;->fromString(Ljava/lang/String;)Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/google/firebase/database/Query;->params:Lcom/google/firebase/database/core/view/QueryParams;

    invoke-virtual {v1, p1, v0}, Lcom/google/firebase/database/core/view/QueryParams;->startAt(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/view/QueryParams;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/database/Query;->validateLimit(Lcom/google/firebase/database/core/view/QueryParams;)V

    invoke-direct {p0, v0}, Lcom/google/firebase/database/Query;->validateQueryEndpoints(Lcom/google/firebase/database/core/view/QueryParams;)V

    new-instance v1, Lcom/google/firebase/database/Query;

    iget-object v2, p0, Lcom/google/firebase/database/Query;->repo:Lcom/google/firebase/database/core/Repo;

    iget-object v3, p0, Lcom/google/firebase/database/Query;->path:Lcom/google/firebase/database/core/Path;

    iget-boolean v4, p0, Lcom/google/firebase/database/Query;->orderByCalled:Z

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/google/firebase/database/Query;-><init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/view/QueryParams;Z)V

    return-object v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x28

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "d081a0"

    const-wide/32 v4, 0x1eb00fde

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x30

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "03284e"

    const-wide v4, -0x3e24a31b75000000L    # -1.836290604E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x27t
        0x51t
        0x56t
        0x11t
        0xet
        0x5et
        0x8t
        0x49t
        0x18t
        0x44t
        0x12t
        0x55t
        0x44t
        0x43t
        0x51t
        0x5ct
        0x11t
        0x5ct
        0x1t
        0x10t
        0x4et
        0x50t
        0xdt
        0x45t
        0x1t
        0x43t
        0x18t
        0x57t
        0xet
        0x42t
        0x44t
        0x43t
        0x4ct
        0x50t
        0x13t
        0x44t
        0x25t
        0x44t
        0x10t
        0x18t
    .end array-data

    :array_1
    .array-data 1
        0x73t
        0x52t
        0x5ct
        0x1ft
        0x40t
        0x45t
        0x53t
        0x52t
        0x5et
        0x54t
        0x14t
        0x16t
        0x44t
        0x52t
        0x40t
        0x4ct
        0x75t
        0x11t
        0x18t
        0x1at
        0x12t
        0x57t
        0x46t
        0x45t
        0x55t
        0x42t
        0x47t
        0x59t
        0x58t
        0x31t
        0x5ft
        0x1bt
        0x1bt
        0x18t
        0x59t
        0x10t
        0x5ct
        0x47t
        0x5bt
        0x48t
        0x58t
        0x0t
        0x10t
        0x47t
        0x5bt
        0x55t
        0x51t
        0x16t
    .end array-data
.end method

.method private validateEqualToCall()V
    .locals 6

    iget-object v0, p0, Lcom/google/firebase/database/Query;->params:Lcom/google/firebase/database/core/view/QueryParams;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/QueryParams;->hasStart()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/database/Query;->params:Lcom/google/firebase/database/core/view/QueryParams;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/QueryParams;->hasEnd()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x29

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "1d46ae"

    const-wide/32 v4, 0x5a98b11b

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x2b

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "87fb22"

    const/16 v3, -0x458b

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x72t
        0x5t
        0x5at
        0x11t
        0x15t
        0x45t
        0x52t
        0x5t
        0x58t
        0x5at
        0x41t
        0x0t
        0x40t
        0x11t
        0x55t
        0x5at
        0x35t
        0xat
        0x19t
        0x4dt
        0x14t
        0x57t
        0xft
        0x1t
        0x11t
        0x1t
        0x5at
        0x52t
        0x20t
        0x11t
        0x19t
        0x4dt
        0x14t
        0x55t
        0xet
        0x8t
        0x53t
        0xdt
        0x5at
        0x53t
        0x5t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x7bt
        0x56t
        0x8t
        0x45t
        0x46t
        0x12t
        0x5bt
        0x56t
        0xat
        0xet
        0x12t
        0x57t
        0x49t
        0x42t
        0x7t
        0xet
        0x66t
        0x5dt
        0x10t
        0x1et
        0x46t
        0x3t
        0x5ct
        0x56t
        0x18t
        0x44t
        0x12t
        0x3t
        0x40t
        0x46t
        0x79t
        0x43t
        0x4et
        0x4bt
        0x12t
        0x51t
        0x57t
        0x5at
        0x4t
        0xbt
        0x5ct
        0x57t
        0x5ct
    .end array-data
.end method

.method private validateLimit(Lcom/google/firebase/database/core/view/QueryParams;)V
    .locals 6

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QueryParams;->hasStart()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QueryParams;->hasEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QueryParams;->hasLimit()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QueryParams;->hasAnchoredLimit()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x59

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "0556c1"

    const-wide v4, -0x3e251e709d800000L    # -1.80395969E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x73t
        0x54t
        0x5bt
        0x11t
        0x17t
        0x11t
        0x53t
        0x5at
        0x58t
        0x54t
        0xat
        0x5ft
        0x55t
        0x15t
        0x46t
        0x42t
        0x2t
        0x43t
        0x44t
        0x74t
        0x41t
        0x1et
        0x4at
        0x1dt
        0x10t
        0x50t
        0x5bt
        0x52t
        0x22t
        0x45t
        0x18t
        0x1ct
        0x15t
        0x57t
        0xdt
        0x55t
        0x10t
        0x59t
        0x5ct
        0x5bt
        0xat
        0x45t
        0x18t
        0x1ct
        0x1bt
        0x16t
        0x36t
        0x42t
        0x55t
        0x15t
        0x59t
        0x5ft
        0xet
        0x58t
        0x44t
        0x61t
        0x5at
        0x70t
        0xat
        0x43t
        0x43t
        0x41t
        0x1dt
        0x1ft
        0x43t
        0x5et
        0x42t
        0x15t
        0x59t
        0x5ft
        0xet
        0x58t
        0x44t
        0x61t
        0x5at
        0x7at
        0x2t
        0x42t
        0x44t
        0x1dt
        0x1ct
        0x16t
        0xat
        0x5ft
        0x43t
        0x41t
        0x50t
        0x57t
        0x7t
    .end array-data
.end method

.method private validateNoOrderByCall()V
    .locals 6

    iget-boolean v0, p0, Lcom/google/firebase/database/Query;->orderByCalled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x29

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "59f9bc"

    const-wide v4, 0x41d27decc8c00000L    # 1.240970019E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x6ct
        0x56t
        0x13t
        0x19t
        0x1t
        0x2t
        0x5bt
        0x1et
        0x12t
        0x19t
        0x1t
        0xct
        0x58t
        0x5bt
        0xft
        0x57t
        0x7t
        0x43t
        0x58t
        0x4ct
        0xat
        0x4dt
        0xbt
        0x13t
        0x59t
        0x5ct
        0x46t
        0x56t
        0x10t
        0x7t
        0x50t
        0x4bt
        0x24t
        0x40t
        0x42t
        0x0t
        0x54t
        0x55t
        0xat
        0x4at
        0x43t
    .end array-data
.end method

.method private validateQueryEndpoints(Lcom/google/firebase/database/core/view/QueryParams;)V
    .locals 6

    const/16 v3, 0xbf

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QueryParams;->getIndex()Lcom/google/firebase/database/snapshot/Index;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/database/snapshot/KeyIndex;->getInstance()Lcom/google/firebase/database/snapshot/KeyIndex;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QueryParams;->hasStart()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QueryParams;->getIndexStartValue()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QueryParams;->getIndexStartName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v1

    invoke-static {}, Lcom/google/firebase/database/snapshot/ChildKey;->getMinName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    instance-of v0, v0, Lcom/google/firebase/database/snapshot/StringNode;

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QueryParams;->hasEnd()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QueryParams;->getIndexEndValue()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QueryParams;->getIndexEndName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v1

    invoke-static {}, Lcom/google/firebase/database/snapshot/ChildKey;->getMaxName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/database/snapshot/ChildKey;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    instance-of v0, v0, Lcom/google/firebase/database/snapshot/StringNode;

    if-eqz v0, :cond_3

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v3, [B

    fill-array-data v1, :array_0

    const-string v2, "8b1d05"

    const/16 v3, -0x4567

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v3, [B

    fill-array-data v1, :array_1

    const-string v2, "6b5440"

    const-wide v4, 0x41ad911a74000000L    # 2.48024378E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QueryParams;->getIndex()Lcom/google/firebase/database/snapshot/Index;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/database/snapshot/PriorityIndex;->getInstance()Lcom/google/firebase/database/snapshot/PriorityIndex;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QueryParams;->hasStart()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QueryParams;->getIndexStartValue()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/database/snapshot/PriorityUtilities;->isValidPriority(Lcom/google/firebase/database/snapshot/Node;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QueryParams;->hasEnd()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QueryParams;->getIndexEndValue()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/database/snapshot/PriorityUtilities;->isValidPriority(Lcom/google/firebase/database/snapshot/Node;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x6b

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "56bbfa"

    const/16 v3, 0x7eb0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x61t
        0xdt
        0x44t
        0x44t
        0x5dt
        0x40t
        0x4bt
        0x16t
        0x11t
        0x11t
        0x43t
        0x50t
        0x18t
        0x11t
        0x45t
        0x5t
        0x42t
        0x41t
        0x79t
        0x16t
        0x19t
        0x37t
        0x44t
        0x47t
        0x51t
        0xct
        0x56t
        0x44t
        0x46t
        0x54t
        0x54t
        0x17t
        0x54t
        0x4dt
        0x1ct
        0x15t
        0x5dt
        0xct
        0x55t
        0x25t
        0x44t
        0x1dt
        0x6bt
        0x16t
        0x43t
        0xdt
        0x5et
        0x52t
        0x18t
        0x14t
        0x50t
        0x8t
        0x45t
        0x50t
        0x11t
        0x42t
        0x5et
        0x16t
        0x10t
        0x50t
        0x49t
        0x17t
        0x50t
        0x8t
        0x64t
        0x5at
        0x10t
        0x31t
        0x45t
        0x16t
        0x59t
        0x5bt
        0x5ft
        0x42t
        0x47t
        0x5t
        0x5ct
        0x40t
        0x5dt
        0x4bt
        0x11t
        0xdt
        0x5et
        0x15t
        0x5bt
        0xdt
        0x5ct
        0x6t
        0x59t
        0x5bt
        0x59t
        0x16t
        0x58t
        0xbt
        0x5et
        0x15t
        0x4ft
        0xbt
        0x45t
        0xct
        0x10t
        0x5at
        0x4at
        0x6t
        0x54t
        0x16t
        0x72t
        0x4ct
        0x73t
        0x7t
        0x48t
        0x4ct
        0x19t
        0x1bt
        0x18t
        0x2dt
        0x45t
        0xct
        0x55t
        0x47t
        0x18t
        0x16t
        0x48t
        0x14t
        0x55t
        0x15t
        0x57t
        0x4t
        0x11t
        0x12t
        0x51t
        0x59t
        0x4dt
        0x7t
        0x42t
        0x44t
        0x5ft
        0x47t
        0x18t
        0x17t
        0x42t
        0xdt
        0x5et
        0x52t
        0x18t
        0x16t
        0x59t
        0x1t
        0x10t
        0x43t
        0x5dt
        0x10t
        0x42t
        0xdt
        0x5ft
        0x5bt
        0x18t
        0x15t
        0x58t
        0x10t
        0x58t
        0x15t
        0xat
        0x42t
        0x41t
        0x5t
        0x42t
        0x54t
        0x55t
        0x7t
        0x45t
        0x1t
        0x42t
        0x46t
        0x18t
        0xbt
        0x42t
        0x44t
        0x5et
        0x5at
        0x4ct
        0x42t
        0x42t
        0x11t
        0x40t
        0x45t
        0x57t
        0x10t
        0x45t
        0x1t
        0x54t
    .end array-data

    :array_1
    .array-data 1
        0x6ft
        0xdt
        0x40t
        0x14t
        0x59t
        0x45t
        0x45t
        0x16t
        0x15t
        0x41t
        0x47t
        0x55t
        0x16t
        0x11t
        0x41t
        0x55t
        0x46t
        0x44t
        0x77t
        0x16t
        0x1dt
        0x67t
        0x40t
        0x42t
        0x5ft
        0xct
        0x52t
        0x14t
        0x42t
        0x51t
        0x5at
        0x17t
        0x50t
        0x1dt
        0x18t
        0x10t
        0x53t
        0xct
        0x51t
        0x75t
        0x40t
        0x18t
        0x65t
        0x16t
        0x47t
        0x5dt
        0x5at
        0x57t
        0x16t
        0x14t
        0x54t
        0x58t
        0x41t
        0x55t
        0x1ft
        0x42t
        0x5at
        0x46t
        0x14t
        0x55t
        0x47t
        0x17t
        0x54t
        0x58t
        0x60t
        0x5ft
        0x1et
        0x31t
        0x41t
        0x46t
        0x5dt
        0x5et
        0x51t
        0x42t
        0x43t
        0x55t
        0x58t
        0x45t
        0x53t
        0x4bt
        0x15t
        0x5dt
        0x5at
        0x10t
        0x55t
        0xdt
        0x58t
        0x56t
        0x5dt
        0x5et
        0x57t
        0x16t
        0x5ct
        0x5bt
        0x5at
        0x10t
        0x41t
        0xbt
        0x41t
        0x5ct
        0x14t
        0x5ft
        0x44t
        0x6t
        0x50t
        0x46t
        0x76t
        0x49t
        0x7dt
        0x7t
        0x4ct
        0x1ct
        0x1dt
        0x1et
        0x16t
        0x2dt
        0x41t
        0x5ct
        0x51t
        0x42t
        0x16t
        0x16t
        0x4ct
        0x44t
        0x51t
        0x10t
        0x59t
        0x4t
        0x15t
        0x42t
        0x55t
        0x5ct
        0x43t
        0x7t
        0x46t
        0x14t
        0x5bt
        0x42t
        0x16t
        0x17t
        0x46t
        0x5dt
        0x5at
        0x57t
        0x16t
        0x16t
        0x5dt
        0x51t
        0x14t
        0x46t
        0x53t
        0x10t
        0x46t
        0x5dt
        0x5bt
        0x5et
        0x16t
        0x15t
        0x5ct
        0x40t
        0x5ct
        0x10t
        0x4t
        0x42t
        0x45t
        0x55t
        0x46t
        0x51t
        0x5bt
        0x7t
        0x41t
        0x51t
        0x46t
        0x43t
        0x16t
        0xbt
        0x46t
        0x14t
        0x5at
        0x5ft
        0x42t
        0x42t
        0x46t
        0x41t
        0x44t
        0x40t
        0x59t
        0x10t
        0x41t
        0x51t
        0x50t
    .end array-data

    :array_2
    .array-data 1
        0x62t
        0x5et
        0x7t
        0xct
        0x46t
        0x14t
        0x46t
        0x5ft
        0xct
        0x5t
        0x46t
        0xet
        0x47t
        0x52t
        0x7t
        0x10t
        0x24t
        0x18t
        0x65t
        0x44t
        0xbt
        0xdt
        0x14t
        0x8t
        0x41t
        0x4ft
        0x4at
        0x4bt
        0x4at
        0x41t
        0x43t
        0x57t
        0xet
        0x17t
        0x3t
        0x12t
        0x15t
        0x46t
        0x10t
        0xdt
        0x10t
        0x8t
        0x51t
        0x53t
        0x6t
        0x42t
        0x12t
        0xet
        0x15t
        0x45t
        0x16t
        0x3t
        0x14t
        0x15t
        0x74t
        0x42t
        0x4at
        0x4bt
        0x4at
        0x41t
        0x50t
        0x58t
        0x6t
        0x23t
        0x12t
        0x49t
        0x1ct
        0x1at
        0x42t
        0xdt
        0x14t
        0x41t
        0x50t
        0x47t
        0x17t
        0x3t
        0xat
        0x35t
        0x5at
        0x1et
        0x4bt
        0x42t
        0xbt
        0x14t
        0x46t
        0x42t
        0x42t
        0x0t
        0x3t
        0x41t
        0x43t
        0x57t
        0xet
        0xbt
        0x2t
        0x41t
        0x45t
        0x44t
        0xbt
        0xdt
        0x14t
        0x8t
        0x41t
        0x5ft
        0x7t
        0x11t
        0x48t
    .end array-data
.end method


# virtual methods
.method public addChildEventListener(Lcom/google/firebase/database/ChildEventListener;)Lcom/google/firebase/database/ChildEventListener;
    .locals 3

    new-instance v0, Lcom/google/firebase/database/core/ChildEventRegistration;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->repo:Lcom/google/firebase/database/core/Repo;

    invoke-virtual {p0}, Lcom/google/firebase/database/Query;->getSpec()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/google/firebase/database/core/ChildEventRegistration;-><init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/ChildEventListener;Lcom/google/firebase/database/core/view/QuerySpec;)V

    invoke-direct {p0, v0}, Lcom/google/firebase/database/Query;->addEventRegistration(Lcom/google/firebase/database/core/EventRegistration;)V

    return-object p1
.end method

.method public addListenerForSingleValueEvent(Lcom/google/firebase/database/ValueEventListener;)V
    .locals 4

    new-instance v0, Lcom/google/firebase/database/core/ValueEventRegistration;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->repo:Lcom/google/firebase/database/core/Repo;

    new-instance v2, Lcom/google/firebase/database/Query$1;

    invoke-direct {v2, p0, p1}, Lcom/google/firebase/database/Query$1;-><init>(Lcom/google/firebase/database/Query;Lcom/google/firebase/database/ValueEventListener;)V

    invoke-virtual {p0}, Lcom/google/firebase/database/Query;->getSpec()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/firebase/database/core/ValueEventRegistration;-><init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/ValueEventListener;Lcom/google/firebase/database/core/view/QuerySpec;)V

    invoke-direct {p0, v0}, Lcom/google/firebase/database/Query;->addEventRegistration(Lcom/google/firebase/database/core/EventRegistration;)V

    return-void
.end method

.method public addValueEventListener(Lcom/google/firebase/database/ValueEventListener;)Lcom/google/firebase/database/ValueEventListener;
    .locals 3

    new-instance v0, Lcom/google/firebase/database/core/ValueEventRegistration;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->repo:Lcom/google/firebase/database/core/Repo;

    invoke-virtual {p0}, Lcom/google/firebase/database/Query;->getSpec()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/google/firebase/database/core/ValueEventRegistration;-><init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/ValueEventListener;Lcom/google/firebase/database/core/view/QuerySpec;)V

    invoke-direct {p0, v0}, Lcom/google/firebase/database/Query;->addEventRegistration(Lcom/google/firebase/database/core/EventRegistration;)V

    return-object p1
.end method

.method public endAt(D)Lcom/google/firebase/database/Query;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/firebase/database/Query;->endAt(DLjava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v0

    return-object v0
.end method

.method public endAt(DLjava/lang/String;)Lcom/google/firebase/database/Query;
    .locals 3

    new-instance v0, Lcom/google/firebase/database/snapshot/DoubleNode;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {}, Lcom/google/firebase/database/snapshot/PriorityUtilities;->NullPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/database/snapshot/DoubleNode;-><init>(Ljava/lang/Double;Lcom/google/firebase/database/snapshot/Node;)V

    invoke-direct {p0, v0, p3}, Lcom/google/firebase/database/Query;->endAt(Lcom/google/firebase/database/snapshot/Node;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v0

    return-object v0
.end method

.method public endAt(Ljava/lang/String;)Lcom/google/firebase/database/Query;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/database/Query;->endAt(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v0

    return-object v0
.end method

.method public endAt(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/Query;
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Lcom/google/firebase/database/snapshot/StringNode;

    invoke-static {}, Lcom/google/firebase/database/snapshot/PriorityUtilities;->NullPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/firebase/database/snapshot/StringNode;-><init>(Ljava/lang/String;Lcom/google/firebase/database/snapshot/Node;)V

    :goto_0
    invoke-direct {p0, v0, p2}, Lcom/google/firebase/database/Query;->endAt(Lcom/google/firebase/database/snapshot/Node;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object v0

    goto :goto_0
.end method

.method public endAt(Z)Lcom/google/firebase/database/Query;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/database/Query;->endAt(ZLjava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v0

    return-object v0
.end method

.method public endAt(ZLjava/lang/String;)Lcom/google/firebase/database/Query;
    .locals 3

    new-instance v0, Lcom/google/firebase/database/snapshot/BooleanNode;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {}, Lcom/google/firebase/database/snapshot/PriorityUtilities;->NullPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/database/snapshot/BooleanNode;-><init>(Ljava/lang/Boolean;Lcom/google/firebase/database/snapshot/Node;)V

    invoke-direct {p0, v0, p2}, Lcom/google/firebase/database/Query;->endAt(Lcom/google/firebase/database/snapshot/Node;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v0

    return-object v0
.end method

.method public equalTo(D)Lcom/google/firebase/database/Query;
    .locals 1

    invoke-direct {p0}, Lcom/google/firebase/database/Query;->validateEqualToCall()V

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/database/Query;->startAt(D)Lcom/google/firebase/database/Query;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/database/Query;->endAt(D)Lcom/google/firebase/database/Query;

    move-result-object v0

    return-object v0
.end method

.method public equalTo(DLjava/lang/String;)Lcom/google/firebase/database/Query;
    .locals 1

    invoke-direct {p0}, Lcom/google/firebase/database/Query;->validateEqualToCall()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/firebase/database/Query;->startAt(DLjava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/firebase/database/Query;->endAt(DLjava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v0

    return-object v0
.end method

.method public equalTo(Ljava/lang/String;)Lcom/google/firebase/database/Query;
    .locals 1

    invoke-direct {p0}, Lcom/google/firebase/database/Query;->validateEqualToCall()V

    invoke-virtual {p0, p1}, Lcom/google/firebase/database/Query;->startAt(Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/Query;->endAt(Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v0

    return-object v0
.end method

.method public equalTo(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/Query;
    .locals 1

    invoke-direct {p0}, Lcom/google/firebase/database/Query;->validateEqualToCall()V

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/database/Query;->startAt(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/database/Query;->endAt(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v0

    return-object v0
.end method

.method public equalTo(Z)Lcom/google/firebase/database/Query;
    .locals 1

    invoke-direct {p0}, Lcom/google/firebase/database/Query;->validateEqualToCall()V

    invoke-virtual {p0, p1}, Lcom/google/firebase/database/Query;->startAt(Z)Lcom/google/firebase/database/Query;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/Query;->endAt(Z)Lcom/google/firebase/database/Query;

    move-result-object v0

    return-object v0
.end method

.method public equalTo(ZLjava/lang/String;)Lcom/google/firebase/database/Query;
    .locals 1

    invoke-direct {p0}, Lcom/google/firebase/database/Query;->validateEqualToCall()V

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/database/Query;->startAt(ZLjava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/database/Query;->endAt(ZLjava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Lcom/google/firebase/database/core/Path;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/Query;->path:Lcom/google/firebase/database/core/Path;

    return-object v0
.end method

.method public getRef()Lcom/google/firebase/database/DatabaseReference;
    .locals 3

    new-instance v0, Lcom/google/firebase/database/DatabaseReference;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->repo:Lcom/google/firebase/database/core/Repo;

    invoke-virtual {p0}, Lcom/google/firebase/database/Query;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/database/DatabaseReference;-><init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/Path;)V

    return-object v0
.end method

.method public getRepo()Lcom/google/firebase/database/core/Repo;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/Query;->repo:Lcom/google/firebase/database/core/Repo;

    return-object v0
.end method

.method public getSpec()Lcom/google/firebase/database/core/view/QuerySpec;
    .locals 3

    new-instance v0, Lcom/google/firebase/database/core/view/QuerySpec;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->path:Lcom/google/firebase/database/core/Path;

    iget-object v2, p0, Lcom/google/firebase/database/Query;->params:Lcom/google/firebase/database/core/view/QueryParams;

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/database/core/view/QuerySpec;-><init>(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/view/QueryParams;)V

    return-object v0
.end method

.method public keepSynced(Z)V
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/database/Query;->path:Lcom/google/firebase/database/core/Path;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/Query;->path:Lcom/google/firebase/database/core/Path;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/database/snapshot/ChildKey;->getInfoKey()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/snapshot/ChildKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/Query;->repo:Lcom/google/firebase/database/core/Repo;

    new-instance v1, Lcom/google/firebase/database/Query$4;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/database/Query$4;-><init>(Lcom/google/firebase/database/Query;Z)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/core/Repo;->scheduleNow(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    new-instance v0, Lcom/google/firebase/database/DatabaseException;

    const/16 v1, 0x27

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "fdb172"

    const v3, 0x49b28270    # 1462350.0f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x25t
        0x5t
        0xct
        0x16t
        0x43t
        0x12t
        0x5t
        0x5t
        0xet
        0x5dt
        0x17t
        0x59t
        0x3t
        0x1t
        0x12t
        0x62t
        0x4et
        0x5ct
        0x5t
        0x1t
        0x6t
        0x19t
        0x1et
        0x12t
        0x9t
        0xat
        0x42t
        0x1ft
        0x5et
        0x5ct
        0x0t
        0xbt
        0x42t
        0x41t
        0x56t
        0x46t
        0xet
        0x17t
        0x4ct
    .end array-data
.end method

.method public limitToFirst(I)Lcom/google/firebase/database/Query;
    .locals 5

    if-lez p1, :cond_1

    iget-object v0, p0, Lcom/google/firebase/database/Query;->params:Lcom/google/firebase/database/core/view/QueryParams;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/QueryParams;->hasLimit()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/firebase/database/Query;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->repo:Lcom/google/firebase/database/core/Repo;

    iget-object v2, p0, Lcom/google/firebase/database/Query;->path:Lcom/google/firebase/database/core/Path;

    iget-object v3, p0, Lcom/google/firebase/database/Query;->params:Lcom/google/firebase/database/core/view/QueryParams;

    invoke-virtual {v3, p1}, Lcom/google/firebase/database/core/view/QueryParams;->limitToFirst(I)Lcom/google/firebase/database/core/view/QueryParams;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/firebase/database/Query;->orderByCalled:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/firebase/database/Query;-><init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/view/QueryParams;Z)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x3a

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "0a4f3f"

    const/16 v3, -0x392

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x21

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "1a3411"

    const/16 v3, 0x18d0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x73t
        0x0t
        0x5at
        0x41t
        0x47t
        0x46t
        0x53t
        0x0t
        0x58t
        0xat
        0x13t
        0xat
        0x59t
        0xct
        0x5dt
        0x12t
        0x67t
        0x9t
        0x7ct
        0x0t
        0x47t
        0x12t
        0x13t
        0x9t
        0x5et
        0x41t
        0x45t
        0x13t
        0x56t
        0x14t
        0x49t
        0x41t
        0x43t
        0xft
        0x47t
        0xet
        0x10t
        0x11t
        0x46t
        0x3t
        0x45t
        0xft
        0x5ft
        0x14t
        0x47t
        0xat
        0x4at
        0x46t
        0x43t
        0x4t
        0x40t
        0x46t
        0x5ft
        0xft
        0x5dt
        0x8t
        0x40t
        0x47t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x7dt
        0x8t
        0x5et
        0x5dt
        0x45t
        0x11t
        0x5ct
        0x14t
        0x40t
        0x40t
        0x11t
        0x53t
        0x54t
        0x41t
        0x52t
        0x14t
        0x41t
        0x5et
        0x42t
        0x8t
        0x47t
        0x5dt
        0x47t
        0x54t
        0x11t
        0x8t
        0x5dt
        0x40t
        0x54t
        0x56t
        0x54t
        0x13t
        0x12t
    .end array-data
.end method

.method public limitToLast(I)Lcom/google/firebase/database/Query;
    .locals 6

    if-lez p1, :cond_1

    iget-object v0, p0, Lcom/google/firebase/database/Query;->params:Lcom/google/firebase/database/core/view/QueryParams;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/QueryParams;->hasLimit()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/firebase/database/Query;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->repo:Lcom/google/firebase/database/core/Repo;

    iget-object v2, p0, Lcom/google/firebase/database/Query;->path:Lcom/google/firebase/database/core/Path;

    iget-object v3, p0, Lcom/google/firebase/database/Query;->params:Lcom/google/firebase/database/core/view/QueryParams;

    invoke-virtual {v3, p1}, Lcom/google/firebase/database/core/view/QueryParams;->limitToLast(I)Lcom/google/firebase/database/core/view/QueryParams;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/firebase/database/Query;->orderByCalled:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/firebase/database/Query;-><init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/view/QueryParams;Z)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x3a

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "98ccd0"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x21

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "20a6fa"

    const-wide v4, 0x41ce6cfce6800000L    # 1.020918221E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x7at
        0x59t
        0xdt
        0x44t
        0x10t
        0x10t
        0x5at
        0x59t
        0xft
        0xft
        0x44t
        0x5ct
        0x50t
        0x55t
        0xat
        0x17t
        0x30t
        0x5ft
        0x75t
        0x59t
        0x10t
        0x17t
        0x44t
        0x5ft
        0x57t
        0x18t
        0x12t
        0x16t
        0x1t
        0x42t
        0x40t
        0x18t
        0x14t
        0xat
        0x10t
        0x58t
        0x19t
        0x48t
        0x11t
        0x6t
        0x12t
        0x59t
        0x56t
        0x4dt
        0x10t
        0xft
        0x1dt
        0x10t
        0x4at
        0x5dt
        0x17t
        0x43t
        0x8t
        0x59t
        0x54t
        0x51t
        0x17t
        0x42t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x7et
        0x59t
        0xct
        0x5ft
        0x12t
        0x41t
        0x5ft
        0x45t
        0x12t
        0x42t
        0x46t
        0x3t
        0x57t
        0x10t
        0x0t
        0x16t
        0x16t
        0xet
        0x41t
        0x59t
        0x15t
        0x5ft
        0x10t
        0x4t
        0x12t
        0x59t
        0xft
        0x42t
        0x3t
        0x6t
        0x57t
        0x42t
        0x40t
    .end array-data
.end method

.method public orderByChild(Ljava/lang/String;)Lcom/google/firebase/database/Query;
    .locals 9

    const/4 v8, 0x6

    const/4 v7, 0x4

    const/4 v6, 0x0

    const/16 v4, 0xb

    const/4 v5, 0x1

    if-eqz p1, :cond_4

    new-array v0, v7, [B

    fill-array-data v0, :array_0

    const-string v1, "e4c536"

    const-wide/32 v2, 0x7312c626

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    new-array v0, v7, [B

    fill-array-data v0, :array_1

    const-string v1, "cdfaf3"

    const-wide v2, 0x41c7718a48800000L    # 7.86633873E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "5684bd"

    invoke-static {v0, v1, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v1, "8934ba"

    const-wide v2, -0x3e2da76337800000L    # -1.23118877E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-array v0, v8, [B

    fill-array-data v0, :array_4

    const-string v1, "34f039"

    const v2, -0x31830234

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-array v0, v8, [B

    fill-array-data v0, :array_5

    const-string v1, "70b73a"

    invoke-static {v0, v1, v5, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/google/firebase/database/core/utilities/Validation;->validatePathString(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/firebase/database/Query;->validateNoOrderByCall()V

    new-instance v0, Lcom/google/firebase/database/core/Path;

    invoke-direct {v0, p1}, Lcom/google/firebase/database/core/Path;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/firebase/database/core/Path;->size()I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/firebase/database/snapshot/PathIndex;

    invoke-direct {v1, v0}, Lcom/google/firebase/database/snapshot/PathIndex;-><init>(Lcom/google/firebase/database/core/Path;)V

    new-instance v0, Lcom/google/firebase/database/Query;

    iget-object v2, p0, Lcom/google/firebase/database/Query;->repo:Lcom/google/firebase/database/core/Repo;

    iget-object v3, p0, Lcom/google/firebase/database/Query;->path:Lcom/google/firebase/database/core/Path;

    iget-object v4, p0, Lcom/google/firebase/database/Query;->params:Lcom/google/firebase/database/core/view/QueryParams;

    invoke-virtual {v4, v1}, Lcom/google/firebase/database/core/view/QueryParams;->orderBy(Lcom/google/firebase/database/snapshot/Index;)Lcom/google/firebase/database/core/view/QueryParams;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1, v5}, Lcom/google/firebase/database/Query;-><init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/view/QueryParams;Z)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x31

    new-array v1, v1, [B

    fill-array-data v1, :array_6

    const-string v2, "f12558"

    const v3, 0x4ed01487

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-array v2, v4, [B

    fill-array-data v2, :array_7

    const-string v3, "854215"

    const v4, -0x31be9af0    # -8.111565E8f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2d

    new-array v2, v2, [B

    fill-array-data v2, :array_8

    const-string v3, "959b13"

    const-wide v4, 0x41cb50c7c6000000L    # 9.16557708E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-array v2, v4, [B

    fill-array-data v2, :array_9

    const-string v3, "f7a750"

    invoke-static {v2, v3, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x30

    new-array v2, v2, [B

    fill-array-data v2, :array_a

    const-string v3, "3ef526"

    const v4, -0x31a20f53

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-array v2, v4, [B

    fill-array-data v2, :array_b

    const-string v3, "1fa017"

    const-wide v4, -0x3e4b84464c000000L    # -3.43652788E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2b

    new-array v2, v2, [B

    fill-array-data v2, :array_c

    const-string v3, "8f7673"

    const-wide v4, -0x3e29cbe7bd000000L    # -1.49005134E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const/16 v1, 0x11

    new-array v1, v1, [B

    fill-array-data v1, :array_d

    const-string v2, "b556ad"

    const v3, 0x4d6b2c45    # 2.4659669E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x41t
        0x5ft
        0x6t
        0x4ct
    .end array-data

    :array_1
    .array-data 1
        0x4dt
        0xft
        0x3t
        0x18t
    .end array-data

    :array_2
    .array-data 1
        0x11t
        0x46t
        0x4at
        0x5dt
        0xdt
        0x16t
        0x5ct
        0x42t
        0x41t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x16t
        0x49t
        0x41t
        0x5dt
        0xdt
        0x13t
        0x51t
        0x4dt
        0x4at
    .end array-data

    nop

    :array_4
    .array-data 1
        0x17t
        0x42t
        0x7t
        0x5ct
        0x46t
        0x5ct
    .end array-data

    nop

    :array_5
    .array-data 1
        0x19t
        0x46t
        0x3t
        0x5bt
        0x46t
        0x4t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x25t
        0x50t
        0x5ct
        0x12t
        0x41t
        0x18t
        0x13t
        0x42t
        0x57t
        0x15t
        0x50t
        0x55t
        0x16t
        0x45t
        0x4bt
        0x15t
        0x45t
        0x59t
        0x12t
        0x59t
        0x1et
        0x15t
        0x40t
        0x4bt
        0x3t
        0x11t
        0x5dt
        0x47t
        0x51t
        0x5dt
        0x14t
        0x73t
        0x4bt
        0x63t
        0x54t
        0x54t
        0x13t
        0x54t
        0x1at
        0x1ct
        0x15t
        0x51t
        0x8t
        0x42t
        0x46t
        0x50t
        0x54t
        0x5ct
        0x47t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x7bt
        0x54t
        0x5at
        0x15t
        0x45t
        0x15t
        0x4dt
        0x46t
        0x51t
        0x12t
        0x16t
    .end array-data

    :array_8
    .array-data 1
        0x1et
        0x15t
        0x58t
        0x11t
        0x11t
        0x43t
        0x58t
        0x41t
        0x51t
        0x4et
        0x11t
        0x43t
        0x55t
        0x50t
        0x58t
        0x11t
        0x54t
        0x13t
        0x4ct
        0x46t
        0x5ct
        0x42t
        0x5et
        0x41t
        0x5dt
        0x50t
        0x4bt
        0x20t
        0x48t
        0x65t
        0x58t
        0x59t
        0x4ct
        0x7t
        0x19t
        0x1at
        0x19t
        0x5ct
        0x57t
        0x11t
        0x45t
        0x56t
        0x58t
        0x51t
        0x18t
    .end array-data

    nop

    :array_9
    .array-data 1
        0x25t
        0x56t
        0xft
        0x10t
        0x41t
        0x10t
        0x13t
        0x44t
        0x4t
        0x17t
        0x12t
    .end array-data

    :array_a
    .array-data 1
        0x14t
        0x45t
        0x7t
        0x46t
        0x12t
        0x46t
        0x52t
        0x11t
        0xet
        0x19t
        0x12t
        0x46t
        0x5ft
        0x0t
        0x7t
        0x46t
        0x57t
        0x16t
        0x46t
        0x16t
        0x3t
        0x15t
        0x5dt
        0x44t
        0x57t
        0x0t
        0x14t
        0x77t
        0x4bt
        0x66t
        0x41t
        0xct
        0x9t
        0x47t
        0x5bt
        0x42t
        0x4at
        0x4dt
        0x4ft
        0x15t
        0x5bt
        0x58t
        0x40t
        0x11t
        0x3t
        0x54t
        0x56t
        0x17t
    .end array-data

    :array_b
    .array-data 1
        0x72t
        0x7t
        0xft
        0x17t
        0x45t
        0x17t
        0x44t
        0x15t
        0x4t
        0x10t
        0x16t
    .end array-data

    :array_c
    .array-data 1
        0x1ft
        0x46t
        0x56t
        0x45t
        0x17t
        0x43t
        0x59t
        0x12t
        0x5ft
        0x1at
        0x17t
        0x43t
        0x54t
        0x3t
        0x56t
        0x45t
        0x52t
        0x13t
        0x4dt
        0x15t
        0x52t
        0x16t
        0x58t
        0x41t
        0x5ct
        0x3t
        0x45t
        0x74t
        0x4et
        0x78t
        0x5dt
        0x1ft
        0x1ft
        0x1ft
        0x17t
        0x5at
        0x56t
        0x15t
        0x43t
        0x53t
        0x56t
        0x57t
        0x19t
    .end array-data

    :array_d
    .array-data 1
        0x29t
        0x50t
        0x4ct
        0x16t
        0x2t
        0x5t
        0xct
        0x12t
        0x41t
        0x16t
        0x3t
        0x1t
        0x42t
        0x5bt
        0x40t
        0x5at
        0xdt
    .end array-data
.end method

.method public orderByKey()Lcom/google/firebase/database/Query;
    .locals 5

    invoke-direct {p0}, Lcom/google/firebase/database/Query;->validateNoOrderByCall()V

    iget-object v0, p0, Lcom/google/firebase/database/Query;->params:Lcom/google/firebase/database/core/view/QueryParams;

    invoke-static {}, Lcom/google/firebase/database/snapshot/KeyIndex;->getInstance()Lcom/google/firebase/database/snapshot/KeyIndex;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/core/view/QueryParams;->orderBy(Lcom/google/firebase/database/snapshot/Index;)Lcom/google/firebase/database/core/view/QueryParams;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/database/Query;->validateQueryEndpoints(Lcom/google/firebase/database/core/view/QueryParams;)V

    new-instance v1, Lcom/google/firebase/database/Query;

    iget-object v2, p0, Lcom/google/firebase/database/Query;->repo:Lcom/google/firebase/database/core/Repo;

    iget-object v3, p0, Lcom/google/firebase/database/Query;->path:Lcom/google/firebase/database/core/Path;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/google/firebase/database/Query;-><init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/view/QueryParams;Z)V

    return-object v1
.end method

.method public orderByPriority()Lcom/google/firebase/database/Query;
    .locals 5

    invoke-direct {p0}, Lcom/google/firebase/database/Query;->validateNoOrderByCall()V

    iget-object v0, p0, Lcom/google/firebase/database/Query;->params:Lcom/google/firebase/database/core/view/QueryParams;

    invoke-static {}, Lcom/google/firebase/database/snapshot/PriorityIndex;->getInstance()Lcom/google/firebase/database/snapshot/PriorityIndex;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/core/view/QueryParams;->orderBy(Lcom/google/firebase/database/snapshot/Index;)Lcom/google/firebase/database/core/view/QueryParams;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/database/Query;->validateQueryEndpoints(Lcom/google/firebase/database/core/view/QueryParams;)V

    new-instance v1, Lcom/google/firebase/database/Query;

    iget-object v2, p0, Lcom/google/firebase/database/Query;->repo:Lcom/google/firebase/database/core/Repo;

    iget-object v3, p0, Lcom/google/firebase/database/Query;->path:Lcom/google/firebase/database/core/Path;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/google/firebase/database/Query;-><init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/view/QueryParams;Z)V

    return-object v1
.end method

.method public orderByValue()Lcom/google/firebase/database/Query;
    .locals 5

    invoke-direct {p0}, Lcom/google/firebase/database/Query;->validateNoOrderByCall()V

    new-instance v0, Lcom/google/firebase/database/Query;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->repo:Lcom/google/firebase/database/core/Repo;

    iget-object v2, p0, Lcom/google/firebase/database/Query;->path:Lcom/google/firebase/database/core/Path;

    iget-object v3, p0, Lcom/google/firebase/database/Query;->params:Lcom/google/firebase/database/core/view/QueryParams;

    invoke-static {}, Lcom/google/firebase/database/snapshot/ValueIndex;->getInstance()Lcom/google/firebase/database/snapshot/ValueIndex;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/firebase/database/core/view/QueryParams;->orderBy(Lcom/google/firebase/database/snapshot/Index;)Lcom/google/firebase/database/core/view/QueryParams;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/firebase/database/Query;-><init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/view/QueryParams;Z)V

    return-object v0
.end method

.method public removeEventListener(Lcom/google/firebase/database/ChildEventListener;)V
    .locals 5

    if-eqz p1, :cond_0

    new-instance v0, Lcom/google/firebase/database/core/ChildEventRegistration;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->repo:Lcom/google/firebase/database/core/Repo;

    invoke-virtual {p0}, Lcom/google/firebase/database/Query;->getSpec()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/google/firebase/database/core/ChildEventRegistration;-><init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/ChildEventListener;Lcom/google/firebase/database/core/view/QuerySpec;)V

    invoke-direct {p0, v0}, Lcom/google/firebase/database/Query;->removeEventRegistration(Lcom/google/firebase/database/core/EventRegistration;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const/16 v1, 0x19

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "052095"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x5ct
        0x5ct
        0x41t
        0x44t
        0x5ct
        0x5bt
        0x55t
        0x47t
        0x12t
        0x5dt
        0x4ct
        0x46t
        0x44t
        0x15t
        0x5ct
        0x5ft
        0x4dt
        0x15t
        0x52t
        0x50t
        0x12t
        0x5et
        0x4ct
        0x59t
        0x5ct
    .end array-data
.end method

.method public removeEventListener(Lcom/google/firebase/database/ValueEventListener;)V
    .locals 4

    if-eqz p1, :cond_0

    new-instance v0, Lcom/google/firebase/database/core/ValueEventRegistration;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->repo:Lcom/google/firebase/database/core/Repo;

    invoke-virtual {p0}, Lcom/google/firebase/database/Query;->getSpec()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/google/firebase/database/core/ValueEventRegistration;-><init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/ValueEventListener;Lcom/google/firebase/database/core/view/QuerySpec;)V

    invoke-direct {p0, v0}, Lcom/google/firebase/database/Query;->removeEventRegistration(Lcom/google/firebase/database/core/EventRegistration;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const/16 v1, 0x19

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "8fbeea"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x54t
        0xft
        0x11t
        0x11t
        0x0t
        0xft
        0x5dt
        0x14t
        0x42t
        0x8t
        0x10t
        0x12t
        0x4ct
        0x46t
        0xct
        0xat
        0x11t
        0x41t
        0x5at
        0x3t
        0x42t
        0xbt
        0x10t
        0xdt
        0x54t
    .end array-data
.end method

.method public startAt(D)Lcom/google/firebase/database/Query;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/firebase/database/Query;->startAt(DLjava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v0

    return-object v0
.end method

.method public startAt(DLjava/lang/String;)Lcom/google/firebase/database/Query;
    .locals 3

    new-instance v0, Lcom/google/firebase/database/snapshot/DoubleNode;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {}, Lcom/google/firebase/database/snapshot/PriorityUtilities;->NullPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/database/snapshot/DoubleNode;-><init>(Ljava/lang/Double;Lcom/google/firebase/database/snapshot/Node;)V

    invoke-direct {p0, v0, p3}, Lcom/google/firebase/database/Query;->startAt(Lcom/google/firebase/database/snapshot/Node;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v0

    return-object v0
.end method

.method public startAt(Ljava/lang/String;)Lcom/google/firebase/database/Query;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/database/Query;->startAt(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v0

    return-object v0
.end method

.method public startAt(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/Query;
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Lcom/google/firebase/database/snapshot/StringNode;

    invoke-static {}, Lcom/google/firebase/database/snapshot/PriorityUtilities;->NullPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/firebase/database/snapshot/StringNode;-><init>(Ljava/lang/String;Lcom/google/firebase/database/snapshot/Node;)V

    :goto_0
    invoke-direct {p0, v0, p2}, Lcom/google/firebase/database/Query;->startAt(Lcom/google/firebase/database/snapshot/Node;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object v0

    goto :goto_0
.end method

.method public startAt(Z)Lcom/google/firebase/database/Query;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/database/Query;->startAt(ZLjava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v0

    return-object v0
.end method

.method public startAt(ZLjava/lang/String;)Lcom/google/firebase/database/Query;
    .locals 3

    new-instance v0, Lcom/google/firebase/database/snapshot/BooleanNode;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {}, Lcom/google/firebase/database/snapshot/PriorityUtilities;->NullPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/database/snapshot/BooleanNode;-><init>(Ljava/lang/Boolean;Lcom/google/firebase/database/snapshot/Node;)V

    invoke-direct {p0, v0, p2}, Lcom/google/firebase/database/Query;->startAt(Lcom/google/firebase/database/snapshot/Node;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v0

    return-object v0
.end method
