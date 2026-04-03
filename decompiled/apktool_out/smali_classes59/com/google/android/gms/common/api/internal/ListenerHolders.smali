.class public Lcom/google/android/gms/common/api/internal/ListenerHolders;
.super Ljava/lang/Object;


# instance fields
.field private final zaa:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/ListenerHolders;->zaa:Ljava/util/Set;

    return-void
.end method

.method public static createListenerHolder(Ljava/lang/Object;Landroid/os/Looper;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/ListenerHolder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(T",
            "L;",
            "Landroid/os/Looper;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/internal/ListenerHolder",
            "<T",
            "L;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x19

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "d9c4f9"

    const-wide v2, -0x3e232ddff3400000L    # -1.934131251E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x17

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "e4b37a"

    const-wide v2, 0x41d2ddaa4e000000L    # 1.266067768E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x1e

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "c08644"

    const-wide v2, -0x3e69b0248c000000L    # -9.3583069E7

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/common/api/internal/ListenerHolder;

    invoke-direct {v0, p1, p0, p2}, Lcom/google/android/gms/common/api/internal/ListenerHolder;-><init>(Landroid/os/Looper;Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        0x28t
        0x50t
        0x10t
        0x40t
        0x3t
        0x57t
        0x1t
        0x4bt
        0x43t
        0x59t
        0x13t
        0x4at
        0x10t
        0x19t
        0xdt
        0x5bt
        0x12t
        0x19t
        0x6t
        0x5ct
        0x43t
        0x5at
        0x13t
        0x55t
        0x8t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x29t
        0x5bt
        0xdt
        0x43t
        0x52t
        0x13t
        0x45t
        0x59t
        0x17t
        0x40t
        0x43t
        0x41t
        0xbt
        0x5bt
        0x16t
        0x13t
        0x55t
        0x4t
        0x45t
        0x5at
        0x17t
        0x5ft
        0x5bt
    .end array-data

    :array_2
    .array-data 1
        0x2ft
        0x59t
        0x4bt
        0x42t
        0x51t
        0x5at
        0x6t
        0x42t
        0x18t
        0x42t
        0x4dt
        0x44t
        0x6t
        0x10t
        0x55t
        0x43t
        0x47t
        0x40t
        0x43t
        0x5et
        0x57t
        0x42t
        0x14t
        0x56t
        0x6t
        0x10t
        0x56t
        0x43t
        0x58t
        0x58t
    .end array-data
.end method

.method public static createListenerHolder(Ljava/lang/Object;Ljava/util/concurrent/Executor;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/ListenerHolder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(T",
            "L;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/internal/ListenerHolder",
            "<T",
            "L;",
            ">;"
        }
    .end annotation

    const/16 v3, 0x19

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    const-string v1, "1bc2c9"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v3, [B

    fill-array-data v0, :array_1

    const-string v1, "bfde6b"

    const v2, -0x31a456dc

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x1e

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "f830fa"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/common/api/internal/ListenerHolder;

    invoke-direct {v0, p1, p0, p2}, Lcom/google/android/gms/common/api/internal/ListenerHolder;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        0x7dt
        0xbt
        0x10t
        0x46t
        0x6t
        0x57t
        0x54t
        0x10t
        0x43t
        0x5ft
        0x16t
        0x4at
        0x45t
        0x42t
        0xdt
        0x5dt
        0x17t
        0x19t
        0x53t
        0x7t
        0x43t
        0x5ct
        0x16t
        0x55t
        0x5dt
    .end array-data

    nop

    :array_1
    .array-data 1
        0x27t
        0x1et
        0x1t
        0x6t
        0x43t
        0x16t
        0xdt
        0x14t
        0x44t
        0x8t
        0x43t
        0x11t
        0x16t
        0x46t
        0xat
        0xat
        0x42t
        0x42t
        0x0t
        0x3t
        0x44t
        0xbt
        0x43t
        0xet
        0xet
    .end array-data

    nop

    :array_2
    .array-data 1
        0x2at
        0x51t
        0x40t
        0x44t
        0x3t
        0xft
        0x3t
        0x4at
        0x13t
        0x44t
        0x1ft
        0x11t
        0x3t
        0x18t
        0x5et
        0x45t
        0x15t
        0x15t
        0x46t
        0x56t
        0x5ct
        0x44t
        0x46t
        0x3t
        0x3t
        0x18t
        0x5dt
        0x45t
        0xat
        0xdt
    .end array-data
.end method

.method public static createListenerKey(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(T",
            "L;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey",
            "<T",
            "L;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x19

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "b6910e"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x1e

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "44cb7d"

    const-wide v2, -0x3e337acd00800000L    # -9.56982783E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x1f

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "ad7342"

    const-wide/32 v2, -0x37b1d1f9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :array_0
    .array-data 1
        0x2et
        0x5ft
        0x4at
        0x45t
        0x55t
        0xbt
        0x7t
        0x44t
        0x19t
        0x5ct
        0x45t
        0x16t
        0x16t
        0x16t
        0x57t
        0x5et
        0x44t
        0x45t
        0x0t
        0x53t
        0x19t
        0x5ft
        0x45t
        0x9t
        0xet
    .end array-data

    nop

    :array_1
    .array-data 1
        0x78t
        0x5dt
        0x10t
        0x16t
        0x52t
        0xat
        0x51t
        0x46t
        0x43t
        0x16t
        0x4et
        0x14t
        0x51t
        0x14t
        0xet
        0x17t
        0x44t
        0x10t
        0x14t
        0x5at
        0xct
        0x16t
        0x17t
        0x6t
        0x51t
        0x14t
        0xdt
        0x17t
        0x5bt
        0x8t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x2dt
        0xdt
        0x44t
        0x47t
        0x51t
        0x5ct
        0x4t
        0x16t
        0x17t
        0x47t
        0x4dt
        0x42t
        0x4t
        0x44t
        0x5at
        0x46t
        0x47t
        0x46t
        0x41t
        0xat
        0x58t
        0x47t
        0x14t
        0x50t
        0x4t
        0x44t
        0x52t
        0x5et
        0x44t
        0x46t
        0x18t
    .end array-data
.end method


# virtual methods
.method public final zaa(Ljava/lang/Object;Landroid/os/Looper;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/ListenerHolder;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "c90c87"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/common/api/internal/ListenerHolders;->createListenerHolder(Ljava/lang/Object;Landroid/os/Looper;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/ListenerHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/ListenerHolders;->zaa:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0

    nop

    :array_0
    .array-data 1
        0x2dt
        0x76t
        0x6ft
        0x37t
        0x61t
        0x67t
        0x26t
    .end array-data
.end method

.method public final zab()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ListenerHolders;->zaa:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/ListenerHolder;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->clear()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ListenerHolders;->zaa:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method
