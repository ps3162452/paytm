.class final Lcom/google/android/gms/internal/base/zas;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/base/zaq;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/base/zar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zaa(Ljava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ExecutorService;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, v0}, Lcom/google/android/gms/internal/base/zas;->zac(ILjava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public final zab(II)Ljava/util/concurrent/ExecutorService;
    .locals 3

    const/4 v0, 0x4

    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/base/zas;->zac(ILjava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public final zac(ILjava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ExecutorService;
    .locals 9

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move v2, p1

    move v3, p1

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    invoke-static {v1}, Ljava/util/concurrent/Executors;->unconfigurableExecutorService(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method
