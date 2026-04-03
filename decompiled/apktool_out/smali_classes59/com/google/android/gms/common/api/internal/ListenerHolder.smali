.class public final Lcom/google/android/gms/common/api/internal/ListenerHolder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;,
        Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final zaa:Ljava/util/concurrent/Executor;

.field private volatile zab:Ljava/lang/Object;

.field private volatile zac:Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;


# direct methods
.method constructor <init>(Landroid/os/Looper;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "T",
            "L;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/common/util/concurrent/HandlerExecutor;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/util/concurrent/HandlerExecutor;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/ListenerHolder;->zaa:Ljava/util/concurrent/Executor;

    const/16 v0, 0x19

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "a2f3da"

    const-wide/32 v2, -0x64d9b9af

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/ListenerHolder;->zab:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/ListenerHolder;->zac:Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    return-void

    :array_0
    .array-data 1
        0x2dt
        0x5bt
        0x15t
        0x47t
        0x1t
        0xft
        0x4t
        0x40t
        0x46t
        0x5et
        0x11t
        0x12t
        0x15t
        0x12t
        0x8t
        0x5ct
        0x10t
        0x41t
        0x3t
        0x57t
        0x46t
        0x5dt
        0x11t
        0xdt
        0xdt
    .end array-data
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "T",
            "L;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/16 v3, 0x19

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    const-string v1, "92ff67"

    const/16 v2, 0x4c2b

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/ListenerHolder;->zaa:Ljava/util/concurrent/Executor;

    new-array v0, v3, [B

    fill-array-data v0, :array_1

    const-string v1, "0710b8"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/ListenerHolder;->zab:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/ListenerHolder;->zac:Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    return-void

    nop

    :array_0
    .array-data 1
        0x7ct
        0x4at
        0x3t
        0x5t
        0x43t
        0x43t
        0x56t
        0x40t
        0x46t
        0xbt
        0x43t
        0x44t
        0x4dt
        0x12t
        0x8t
        0x9t
        0x42t
        0x17t
        0x5bt
        0x57t
        0x46t
        0x8t
        0x43t
        0x5bt
        0x55t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x7ct
        0x5et
        0x42t
        0x44t
        0x7t
        0x56t
        0x55t
        0x45t
        0x11t
        0x5dt
        0x17t
        0x4bt
        0x44t
        0x17t
        0x5ft
        0x5ft
        0x16t
        0x18t
        0x52t
        0x52t
        0x11t
        0x5et
        0x17t
        0x54t
        0x5ct
    .end array-data
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/ListenerHolder;->zab:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/ListenerHolder;->zac:Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    return-void
.end method

.method public getListenerKey()Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey",
            "<T",
            "L;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ListenerHolder;->zac:Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    return-object v0
.end method

.method public hasListener()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ListenerHolder;->zab:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyListener(Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier",
            "<-T",
            "L;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x19

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "713772"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ListenerHolder;->zaa:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/common/api/internal/zacb;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/common/api/internal/zacb;-><init>(Lcom/google/android/gms/common/api/internal/ListenerHolder;Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :array_0
    .array-data 1
        0x79t
        0x5et
        0x47t
        0x5et
        0x51t
        0x5bt
        0x52t
        0x43t
        0x13t
        0x5at
        0x42t
        0x41t
        0x43t
        0x11t
        0x5dt
        0x58t
        0x43t
        0x12t
        0x55t
        0x54t
        0x13t
        0x59t
        0x42t
        0x5et
        0x5bt
    .end array-data
.end method

.method final zaa(Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ListenerHolder;->zab:Ljava/lang/Object;

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;->onNotifyListenerFailed()V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;->notifyListener(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-interface {p1}, Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;->onNotifyListenerFailed()V

    throw v0
.end method
