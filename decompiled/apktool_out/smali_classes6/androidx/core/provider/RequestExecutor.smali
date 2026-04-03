.class Landroidx/core/provider/RequestExecutor;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/provider/RequestExecutor$DefaultThreadFactory;,
        Landroidx/core/provider/RequestExecutor$DefaultThreadFactory$ProcessPriorityThread;,
        Landroidx/core/provider/RequestExecutor$HandlerExecutor;,
        Landroidx/core/provider/RequestExecutor$ReplyRunnable;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createDefaultExecutor(Ljava/lang/String;II)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 9

    const/4 v3, 0x1

    new-instance v8, Landroidx/core/provider/RequestExecutor$DefaultThreadFactory;

    invoke-direct {v8, p0, p1}, Landroidx/core/provider/RequestExecutor$DefaultThreadFactory;-><init>(Ljava/lang/String;I)V

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    int-to-long v4, p2

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    return-object v1
.end method

.method static createHandlerExecutor(Landroid/os/Handler;)Ljava/util/concurrent/Executor;
    .locals 1

    new-instance v0, Landroidx/core/provider/RequestExecutor$HandlerExecutor;

    invoke-direct {v0, p0}, Landroidx/core/provider/RequestExecutor$HandlerExecutor;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method static execute(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;Landroidx/core/util/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Callable",
            "<TT;>;",
            "Landroidx/core/util/Consumer",
            "<TT;>;)V"
        }
    .end annotation

    new-instance v0, Landroidx/core/provider/RequestExecutor$ReplyRunnable;

    invoke-static {}, Landroidx/core/provider/CalleeHandler;->create()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Landroidx/core/provider/RequestExecutor$ReplyRunnable;-><init>(Landroid/os/Handler;Ljava/util/concurrent/Callable;Landroidx/core/util/Consumer;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static submit(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Callable;I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/concurrent/Callable",
            "<TT;>;I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    int-to-long v2, p2

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/InterruptedException;

    const/4 v1, 0x7

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "9b293f"

    const v3, -0x31276a9f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    throw v0

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    nop

    :array_0
    .array-data 1
        0x4dt
        0xbt
        0x5ft
        0x5ct
        0x5ct
        0x13t
        0x4dt
    .end array-data
.end method
