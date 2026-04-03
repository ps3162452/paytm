.class public abstract Lcom/google/android/gms/common/api/internal/BasePendingResult;
.super Lcom/google/android/gms/common/api/PendingResult;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Lcom/google/android/gms/common/api/PendingResult",
        "<TR;>;"
    }
.end annotation


# static fields
.field static final zaa:Ljava/lang/ThreadLocal;

.field public static final zad:I


# instance fields
.field private mResultGuardian:Lcom/google/android/gms/common/api/internal/zas;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/zas;"
        }
    .end annotation
.end field

.field protected final zab:Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;

.field protected final zac:Ljava/lang/ref/WeakReference;

.field private final zae:Ljava/lang/Object;

.field private final zaf:Ljava/util/concurrent/CountDownLatch;

.field private final zag:Ljava/util/ArrayList;

.field private zah:Lcom/google/android/gms/common/api/ResultCallback;

.field private final zai:Ljava/util/concurrent/atomic/AtomicReference;

.field private zaj:Lcom/google/android/gms/common/api/Result;

.field private zak:Lcom/google/android/gms/common/api/Status;

.field private volatile zal:Z

.field private zam:Z

.field private zan:Z

.field private zao:Lcom/google/android/gms/common/internal/ICancelToken;

.field private volatile zap:Lcom/google/android/gms/common/api/internal/zada;

.field private zaq:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/api/internal/zaq;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/internal/zaq;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaa:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/api/PendingResult;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zae:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaf:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zag:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zai:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaq:Z

    new-instance v0, Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zab:Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zac:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Looper;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/api/PendingResult;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zae:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaf:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zag:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zai:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaq:Z

    new-instance v0, Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zab:Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zac:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method protected constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/common/api/PendingResult;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zae:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaf:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zag:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zai:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaq:Z

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->getLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;

    invoke-direct {v1, v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zab:Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zac:Ljava/lang/ref/WeakReference;

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0
.end method

.method protected constructor <init>(Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler",
            "<TR;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/api/PendingResult;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zae:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaf:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zag:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zai:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaq:Z

    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "9f55ce"

    const/16 v2, -0x3c49

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zab:Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zac:Ljava/lang/ref/WeakReference;

    return-void

    nop

    :array_0
    .array-data 1
        0x7at
        0x7t
        0x59t
        0x59t
        0x1t
        0x4t
        0x5at
        0xdt
        0x7dt
        0x54t
        0xdt
        0x1t
        0x55t
        0x3t
        0x47t
        0x15t
        0xet
        0x10t
        0x4at
        0x12t
        0x15t
        0x5bt
        0xct
        0x11t
        0x19t
        0x4t
        0x50t
        0x15t
        0xdt
        0x10t
        0x55t
        0xat
    .end array-data
.end method

.method private final zaa()Lcom/google/android/gms/common/api/Result;
    .locals 7

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zae:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zal:Z

    xor-int/lit8 v0, v0, 0x1

    const/16 v2, 0x21

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "4c7b35"

    const-wide/32 v4, -0x783c983

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->isReady()Z

    move-result v0

    const/16 v2, 0x14

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "704f25"

    const/16 v4, 0x2463

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaj:Lcom/google/android/gms/common/api/Result;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaj:Lcom/google/android/gms/common/api/Result;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zah:Lcom/google/android/gms/common/api/ResultCallback;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zal:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zai:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zadb;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zadb;->zaa:Lcom/google/android/gms/common/api/internal/zadc;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zadc;->zab:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Result;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :array_0
    .array-data 1
        0x66t
        0x6t
        0x44t
        0x17t
        0x5ft
        0x41t
        0x14t
        0xbt
        0x56t
        0x11t
        0x13t
        0x54t
        0x58t
        0x11t
        0x52t
        0x3t
        0x57t
        0x4ct
        0x14t
        0x1t
        0x52t
        0x7t
        0x5dt
        0x15t
        0x57t
        0xct
        0x59t
        0x11t
        0x46t
        0x58t
        0x51t
        0x7t
        0x19t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x65t
        0x55t
        0x47t
        0x13t
        0x5et
        0x41t
        0x17t
        0x59t
        0x47t
        0x46t
        0x5ct
        0x5at
        0x43t
        0x10t
        0x46t
        0x3t
        0x53t
        0x51t
        0x4et
        0x1et
    .end array-data
.end method

.method private final zab(Lcom/google/android/gms/common/api/Result;)V
    .locals 5

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaj:Lcom/google/android/gms/common/api/Result;

    invoke-interface {p1}, Lcom/google/android/gms/common/api/Result;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zak:Lcom/google/android/gms/common/api/Status;

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zao:Lcom/google/android/gms/common/internal/ICancelToken;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaf:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zam:Z

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zah:Lcom/google/android/gms/common/api/ResultCallback;

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zag:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_3

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/PendingResult$StatusListener;

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zak:Lcom/google/android/gms/common/api/Status;

    invoke-interface {v0, v4}, Lcom/google/android/gms/common/api/PendingResult$StatusListener;->onComplete(Lcom/google/android/gms/common/api/Status;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zah:Lcom/google/android/gms/common/api/ResultCallback;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaj:Lcom/google/android/gms/common/api/Result;

    instance-of v0, v0, Lcom/google/android/gms/common/api/Releasable;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/internal/zas;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/common/api/internal/zas;-><init>(Lcom/google/android/gms/common/api/internal/BasePendingResult;Lcom/google/android/gms/common/api/internal/zar;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->mResultGuardian:Lcom/google/android/gms/common/api/internal/zas;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zab:Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zab:Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaa()Lcom/google/android/gms/common/api/Result;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;->zaa(Lcom/google/android/gms/common/api/ResultCallback;Lcom/google/android/gms/common/api/Result;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zag:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method static bridge synthetic zaj(Lcom/google/android/gms/common/api/internal/BasePendingResult;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaj:Lcom/google/android/gms/common/api/Result;

    return-object v0
.end method

.method public static zal(Lcom/google/android/gms/common/api/Result;)V
    .locals 6

    instance-of v1, p0, Lcom/google/android/gms/common/api/Releasable;

    if-eqz v1, :cond_0

    :try_start_0
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/common/api/Releasable;

    move-object v1, v0

    invoke-interface {v1}, Lcom/google/android/gms/common/api/Releasable;->release()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const/16 v2, 0x11

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "167a15"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x12

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "5a6e09"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x73t
        0x57t
        0x44t
        0x4t
        0x61t
        0x50t
        0x5ft
        0x52t
        0x5et
        0xft
        0x56t
        0x67t
        0x54t
        0x45t
        0x42t
        0xdt
        0x45t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x60t
        0xft
        0x57t
        0x7t
        0x5ct
        0x5ct
        0x15t
        0x15t
        0x59t
        0x45t
        0x42t
        0x5ct
        0x59t
        0x4t
        0x57t
        0x16t
        0x55t
        0x19t
    .end array-data
.end method


# virtual methods
.method public final addStatusListener(Lcom/google/android/gms/common/api/PendingResult$StatusListener;)V
    .locals 4

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x18

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "2bdc36"

    const/16 v3, 0x440f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zae:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zak:Lcom/google/android/gms/common/api/Status;

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/PendingResult$StatusListener;->onComplete(Lcom/google/android/gms/common/api/Status;)V

    :goto_1
    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zag:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :array_0
    .array-data 1
        0x71t
        0x3t
        0x8t
        0xft
        0x51t
        0x57t
        0x51t
        0x9t
        0x44t
        0x0t
        0x52t
        0x58t
        0x5ct
        0xdt
        0x10t
        0x43t
        0x51t
        0x53t
        0x12t
        0xct
        0x11t
        0xft
        0x5ft
        0x18t
    .end array-data
.end method

.method public final await()Lcom/google/android/gms/common/api/Result;
    .locals 6
    .annotation runtime Lcom/google/errorprone/annotations/ResultIgnorabilityUnspecified;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    const/16 v0, 0x29

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "bb67ca"

    const-wide/32 v2, 0x163f7016

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotMainThread(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zal:Z

    const/4 v0, 0x1

    xor-int/lit8 v1, v1, 0x1

    const/16 v2, 0x20

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "ae901f"

    const/16 v4, -0xee

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zap:Lcom/google/android/gms/common/api/internal/zada;

    if-nez v1, :cond_0

    :goto_0
    const/16 v1, 0x27

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "4e9bda"

    const v3, -0x3172509d    # -1.1885408E9f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaf:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->isReady()Z

    move-result v0

    const/16 v1, 0x14

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "a9c428"

    const-wide/32 v4, -0x1c171114

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaa()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/google/android/gms/common/api/Status;->RESULT_INTERRUPTED:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->forceFailureUnlessReady(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_1

    nop

    :array_0
    .array-data 1
        0x3t
        0x15t
        0x57t
        0x5et
        0x17t
        0x41t
        0xft
        0x17t
        0x45t
        0x43t
        0x43t
        0xft
        0xdt
        0x16t
        0x16t
        0x55t
        0x6t
        0x41t
        0x1t
        0x3t
        0x5at
        0x5bt
        0x6t
        0x5t
        0x42t
        0xdt
        0x58t
        0x17t
        0x17t
        0x9t
        0x7t
        0x42t
        0x63t
        0x7et
        0x43t
        0x15t
        0xat
        0x10t
        0x53t
        0x56t
        0x7t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x33t
        0x0t
        0x4at
        0x45t
        0x5dt
        0x12t
        0x41t
        0xdt
        0x58t
        0x43t
        0x11t
        0x7t
        0xdt
        0x17t
        0x5ct
        0x51t
        0x55t
        0x1ft
        0x41t
        0x7t
        0x5ct
        0x55t
        0x5ft
        0x46t
        0x2t
        0xat
        0x57t
        0x43t
        0x44t
        0xbt
        0x4t
        0x1t
    .end array-data

    :array_2
    .array-data 1
        0x77t
        0x4t
        0x57t
        0xct
        0xbt
        0x15t
        0x14t
        0x4t
        0x4et
        0x3t
        0xdt
        0x15t
        0x14t
        0xct
        0x5ft
        0x42t
        0x10t
        0x9t
        0x51t
        0xbt
        0x11t
        0x4bt
        0x44t
        0x9t
        0x55t
        0x16t
        0x19t
        0x0t
        0x1t
        0x4t
        0x5at
        0x45t
        0x5at
        0x3t
        0x8t
        0xdt
        0x51t
        0x1t
        0x17t
    .end array-data

    :array_3
    .array-data 1
        0x33t
        0x5ct
        0x10t
        0x41t
        0x5et
        0x4ct
        0x41t
        0x50t
        0x10t
        0x14t
        0x5ct
        0x57t
        0x15t
        0x19t
        0x11t
        0x51t
        0x53t
        0x5ct
        0x18t
        0x17t
    .end array-data
.end method

.method public final await(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/Result;
    .locals 9
    .annotation runtime Lcom/google/errorprone/annotations/ResultIgnorabilityUnspecified;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TR;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    const/16 v2, 0x49

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "07fba1"

    invoke-static {v2, v3, v1, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotMainThread(Ljava/lang/String;)V

    :cond_0
    iget-boolean v2, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zal:Z

    xor-int/lit8 v2, v2, 0x1

    const/16 v3, 0x21

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "992f8d"

    const-wide v6, -0x3e252a0233000000L    # -1.800927028E9

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zap:Lcom/google/android/gms/common/api/internal/zada;

    if-nez v2, :cond_1

    move v0, v1

    :cond_1
    const/16 v2, 0x27

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v3, "a3854a"

    const-wide/32 v4, -0x3720f2e3

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaf:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/google/android/gms/common/api/Status;->RESULT_TIMEOUT:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->forceFailureUnlessReady(Lcom/google/android/gms/common/api/Status;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->isReady()Z

    move-result v0

    const/16 v2, 0x14

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const-string v3, "9977b0"

    invoke-static {v2, v3, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaa()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/google/android/gms/common/api/Status;->RESULT_INTERRUPTED:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->forceFailureUnlessReady(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :array_0
    .array-data 1
        0x51t
        0x40t
        0x7t
        0xbt
        0x15t
        0x11t
        0x5dt
        0x42t
        0x15t
        0x16t
        0x41t
        0x5ft
        0x5ft
        0x43t
        0x46t
        0x0t
        0x4t
        0x11t
        0x53t
        0x56t
        0xat
        0xet
        0x4t
        0x55t
        0x10t
        0x58t
        0x8t
        0x42t
        0x15t
        0x59t
        0x55t
        0x17t
        0x33t
        0x2bt
        0x41t
        0x45t
        0x58t
        0x45t
        0x3t
        0x3t
        0x5t
        0x11t
        0x47t
        0x5ft
        0x3t
        0xct
        0x41t
        0x45t
        0x59t
        0x5at
        0x3t
        0x42t
        0x8t
        0x42t
        0x10t
        0x50t
        0x14t
        0x7t
        0x0t
        0x45t
        0x55t
        0x45t
        0x46t
        0x16t
        0x9t
        0x50t
        0x5et
        0x17t
        0x1ct
        0x7t
        0x13t
        0x5et
        0x1et
    .end array-data

    nop

    :array_1
    .array-data 1
        0x6bt
        0x5ct
        0x41t
        0x13t
        0x54t
        0x10t
        0x19t
        0x51t
        0x53t
        0x15t
        0x18t
        0x5t
        0x55t
        0x4bt
        0x57t
        0x7t
        0x5ct
        0x1dt
        0x19t
        0x5bt
        0x57t
        0x3t
        0x56t
        0x44t
        0x5at
        0x56t
        0x5ct
        0x15t
        0x4dt
        0x9t
        0x5ct
        0x5dt
        0x1ct
    .end array-data

    nop

    :array_2
    .array-data 1
        0x22t
        0x52t
        0x56t
        0x5bt
        0x5bt
        0x15t
        0x41t
        0x52t
        0x4ft
        0x54t
        0x5dt
        0x15t
        0x41t
        0x5at
        0x5et
        0x15t
        0x40t
        0x9t
        0x4t
        0x5dt
        0x10t
        0x1ct
        0x14t
        0x9t
        0x0t
        0x40t
        0x18t
        0x57t
        0x51t
        0x4t
        0xft
        0x13t
        0x5bt
        0x54t
        0x58t
        0xdt
        0x4t
        0x57t
        0x16t
    .end array-data

    :array_3
    .array-data 1
        0x6bt
        0x5ct
        0x44t
        0x42t
        0xet
        0x44t
        0x19t
        0x50t
        0x44t
        0x17t
        0xct
        0x5ft
        0x4dt
        0x19t
        0x45t
        0x52t
        0x3t
        0x54t
        0x40t
        0x17t
    .end array-data
.end method

.method public cancel()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zae:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zam:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zal:Z

    if-eqz v0, :cond_1

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zao:Lcom/google/android/gms/common/internal/ICancelToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    :try_start_1
    invoke-interface {v0}, Lcom/google/android/gms/common/internal/ICancelToken;->cancel()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaj:Lcom/google/android/gms/common/api/Result;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zal(Lcom/google/android/gms/common/api/Result;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zam:Z

    sget-object v0, Lcom/google/android/gms/common/api/Status;->RESULT_CANCELED:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zab(Lcom/google/android/gms/common/api/Result;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected abstract createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Status;",
            ")TR;"
        }
    .end annotation
.end method

.method public final forceFailureUnlessReady(Lcom/google/android/gms/common/api/Status;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zae:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zan:Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final isCanceled()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zae:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zam:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final isReady()Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaf:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final setCancelToken(Lcom/google/android/gms/common/internal/ICancelToken;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zae:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zao:Lcom/google/android/gms/common/internal/ICancelToken;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final setResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zae:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zan:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zam:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->isReady()Z

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->isReady()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/16 v2, 0x1d

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "934491"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zal:Z

    xor-int/lit8 v0, v0, 0x1

    const/16 v2, 0x20

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "1029bd"

    const/16 v4, 0x7b18

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zab(Lcom/google/android/gms/common/api/Result;)V

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zal(Lcom/google/android/gms/common/api/Result;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :array_0
    .array-data 1
        0x6bt
        0x56t
        0x47t
        0x41t
        0x55t
        0x45t
        0x4at
        0x13t
        0x5ct
        0x55t
        0x4ft
        0x54t
        0x19t
        0x52t
        0x58t
        0x46t
        0x5ct
        0x50t
        0x5dt
        0x4at
        0x14t
        0x56t
        0x5ct
        0x54t
        0x57t
        0x13t
        0x47t
        0x51t
        0x4dt
    .end array-data

    nop

    :array_1
    .array-data 1
        0x63t
        0x55t
        0x41t
        0x4ct
        0xet
        0x10t
        0x11t
        0x58t
        0x53t
        0x4at
        0x42t
        0x5t
        0x5dt
        0x42t
        0x57t
        0x58t
        0x6t
        0x1dt
        0x11t
        0x52t
        0x57t
        0x5ct
        0xct
        0x44t
        0x52t
        0x5ft
        0x5ct
        0x4at
        0x17t
        0x9t
        0x54t
        0x54t
    .end array-data
.end method

.method public final setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/ResultCallback",
            "<-TR;>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zae:Ljava/lang/Object;

    monitor-enter v2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zah:Lcom/google/android/gms/common/api/ResultCallback;

    monitor-exit v2

    :goto_0
    return-void

    :cond_0
    iget-boolean v3, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zal:Z

    const/4 v0, 0x1

    xor-int/lit8 v3, v3, 0x1

    const/16 v4, 0x21

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    const-string v5, "9e6062"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zap:Lcom/google/android/gms/common/api/internal/zada;

    if-nez v3, :cond_1

    :goto_1
    const/16 v1, 0x2f

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v3, "4c1ccb"

    const/16 v4, 0x7690

    invoke-static {v1, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_2

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->isReady()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zab:Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaa()Lcom/google/android/gms/common/api/Result;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;->zaa(Lcom/google/android/gms/common/api/ResultCallback;Lcom/google/android/gms/common/api/Result;)V

    :goto_2
    monitor-exit v2

    goto :goto_0

    :cond_3
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zah:Lcom/google/android/gms/common/api/ResultCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :array_0
    .array-data 1
        0x6bt
        0x0t
        0x45t
        0x45t
        0x5at
        0x46t
        0x19t
        0xdt
        0x57t
        0x43t
        0x16t
        0x53t
        0x55t
        0x17t
        0x53t
        0x51t
        0x52t
        0x4bt
        0x19t
        0x7t
        0x53t
        0x55t
        0x58t
        0x12t
        0x5at
        0xat
        0x58t
        0x43t
        0x43t
        0x5ft
        0x5ct
        0x1t
        0x18t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x77t
        0x2t
        0x5ft
        0xdt
        0xct
        0x16t
        0x14t
        0x10t
        0x54t
        0x17t
        0x43t
        0x1t
        0x55t
        0xft
        0x5dt
        0x1t
        0x2t
        0x1t
        0x5ft
        0x10t
        0x11t
        0xat
        0x5t
        0x42t
        0x40t
        0xbt
        0x54t
        0xdt
        0x4bt
        0x4bt
        0x14t
        0xbt
        0x50t
        0x10t
        0x43t
        0x0t
        0x51t
        0x6t
        0x5ft
        0x43t
        0x0t
        0x3t
        0x58t
        0xft
        0x54t
        0x7t
        0x4dt
    .end array-data
.end method

.method public final setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;JLjava/util/concurrent/TimeUnit;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/ResultCallback",
            "<-TR;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zae:Ljava/lang/Object;

    monitor-enter v1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zah:Lcom/google/android/gms/common/api/ResultCallback;

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-boolean v2, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zal:Z

    xor-int/lit8 v2, v2, 0x1

    const/16 v3, 0x21

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "59c621"

    const-wide v6, -0x3e286e339d000000L    # -1.581724044E9

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zap:Lcom/google/android/gms/common/api/internal/zada;

    if-nez v2, :cond_1

    :goto_1
    const/16 v2, 0x2f

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "37c6cc"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_2

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->isReady()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zab:Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaa()Lcom/google/android/gms/common/api/Result;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;->zaa(Lcom/google/android/gms/common/api/ResultCallback;Lcom/google/android/gms/common/api/Result;)V

    :goto_2
    monitor-exit v1

    goto :goto_0

    :cond_3
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zah:Lcom/google/android/gms/common/api/ResultCallback;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zab:Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    const/4 v4, 0x2

    invoke-virtual {v0, v4, p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v4, v2, v3}, Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :array_0
    .array-data 1
        0x67t
        0x5ct
        0x10t
        0x43t
        0x5et
        0x45t
        0x15t
        0x51t
        0x2t
        0x45t
        0x12t
        0x50t
        0x59t
        0x4bt
        0x6t
        0x57t
        0x56t
        0x48t
        0x15t
        0x5bt
        0x6t
        0x53t
        0x5ct
        0x11t
        0x56t
        0x56t
        0xdt
        0x45t
        0x47t
        0x5ct
        0x50t
        0x5dt
        0x4dt
    .end array-data

    nop

    :array_1
    .array-data 1
        0x70t
        0x56t
        0xdt
        0x58t
        0xct
        0x17t
        0x13t
        0x44t
        0x6t
        0x42t
        0x43t
        0x0t
        0x52t
        0x5bt
        0xft
        0x54t
        0x2t
        0x0t
        0x58t
        0x44t
        0x43t
        0x5ft
        0x5t
        0x43t
        0x47t
        0x5ft
        0x6t
        0x58t
        0x4bt
        0x4at
        0x13t
        0x5ft
        0x2t
        0x45t
        0x43t
        0x1t
        0x56t
        0x52t
        0xdt
        0x16t
        0x0t
        0x2t
        0x5ft
        0x5bt
        0x6t
        0x52t
        0x4dt
    .end array-data
.end method

.method public final then(Lcom/google/android/gms/common/api/ResultTransform;)Lcom/google/android/gms/common/api/TransformedResult;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Lcom/google/android/gms/common/api/Result;",
            ">(",
            "Lcom/google/android/gms/common/api/ResultTransform",
            "<-TR;+TS;>;)",
            "Lcom/google/android/gms/common/api/TransformedResult",
            "<TS;>;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zal:Z

    xor-int/lit8 v2, v2, 0x1

    const/16 v3, 0x21

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "5cb299"

    invoke-static {v3, v4, v1, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zae:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zap:Lcom/google/android/gms/common/api/internal/zada;

    if-nez v2, :cond_0

    move v2, v0

    :goto_0
    const/16 v4, 0x19

    new-array v4, v4, [B

    fill-array-data v4, :array_1

    const-string v5, "cb28e8"

    const-wide/32 v6, 0x9cf715

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zah:Lcom/google/android/gms/common/api/ResultCallback;

    if-nez v2, :cond_1

    :goto_1
    const/16 v1, 0x28

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "21622c"

    const v4, 0x4e3db926    # 7.957569E8f

    invoke-static {v1, v2, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zam:Z

    xor-int/lit8 v0, v0, 0x1

    const/16 v1, 0x2a

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "e0e404"

    const/16 v4, 0x731c

    invoke-static {v1, v2, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaq:Z

    new-instance v0, Lcom/google/android/gms/common/api/internal/zada;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zac:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/internal/zada;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zap:Lcom/google/android/gms/common/api/internal/zada;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zap:Lcom/google/android/gms/common/api/internal/zada;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/zada;->then(Lcom/google/android/gms/common/api/ResultTransform;)Lcom/google/android/gms/common/api/TransformedResult;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->isReady()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zab:Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zap:Lcom/google/android/gms/common/api/internal/zada;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaa()Lcom/google/android/gms/common/api/Result;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;->zaa(Lcom/google/android/gms/common/api/ResultCallback;Lcom/google/android/gms/common/api/Result;)V

    :goto_2
    monitor-exit v3

    return-object v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zap:Lcom/google/android/gms/common/api/internal/zada;

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zah:Lcom/google/android/gms/common/api/ResultCallback;

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    nop

    :array_0
    .array-data 1
        0x67t
        0x6t
        0x11t
        0x47t
        0x55t
        0x4dt
        0x15t
        0xbt
        0x3t
        0x41t
        0x19t
        0x58t
        0x59t
        0x11t
        0x7t
        0x53t
        0x5dt
        0x40t
        0x15t
        0x1t
        0x7t
        0x57t
        0x57t
        0x19t
        0x56t
        0xct
        0xct
        0x41t
        0x4ct
        0x54t
        0x50t
        0x7t
        0x4ct
    .end array-data

    nop

    :array_1
    .array-data 1
        0x20t
        0x3t
        0x5ct
        0x56t
        0xat
        0x4ct
        0x43t
        0x1t
        0x53t
        0x54t
        0x9t
        0x18t
        0x17t
        0xat
        0x57t
        0x56t
        0x4dt
        0x11t
        0x43t
        0x16t
        0x45t
        0x51t
        0x6t
        0x5dt
        0x4dt
    .end array-data

    nop

    :array_2
    .array-data 1
        0x71t
        0x50t
        0x58t
        0x5ct
        0x5dt
        0x17t
        0x12t
        0x52t
        0x57t
        0x5et
        0x5et
        0x43t
        0x46t
        0x59t
        0x53t
        0x5ct
        0x1at
        0x4at
        0x12t
        0x58t
        0x50t
        0x12t
        0x51t
        0x2t
        0x5et
        0x5dt
        0x54t
        0x53t
        0x51t
        0x8t
        0x41t
        0x11t
        0x57t
        0x40t
        0x57t
        0x43t
        0x41t
        0x54t
        0x42t
        0x1ct
    .end array-data

    :array_3
    .array-data 1
        0x26t
        0x51t
        0xbt
        0x5at
        0x5ft
        0x40t
        0x45t
        0x53t
        0x4t
        0x58t
        0x5ct
        0x14t
        0x11t
        0x58t
        0x0t
        0x5at
        0x18t
        0x1dt
        0x45t
        0x59t
        0x3t
        0x14t
        0x42t
        0x51t
        0x16t
        0x45t
        0x9t
        0x40t
        0x10t
        0x43t
        0x4t
        0x43t
        0x45t
        0x57t
        0x51t
        0x5at
        0x6t
        0x55t
        0x9t
        0x51t
        0x54t
        0x1at
    .end array-data
.end method

.method public final zak()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaq:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaa:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaq:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final zam()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zae:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zac:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaq:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->cancel()V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->isCanceled()Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zan(Lcom/google/android/gms/common/api/internal/zadb;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zai:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
