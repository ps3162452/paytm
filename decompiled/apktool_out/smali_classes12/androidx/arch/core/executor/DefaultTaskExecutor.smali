.class public Landroidx/arch/core/executor/DefaultTaskExecutor;
.super Landroidx/arch/core/executor/TaskExecutor;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final mDiskIO:Ljava/util/concurrent/ExecutorService;

.field private final mLock:Ljava/lang/Object;

.field private volatile mMainHandler:Landroid/os/Handler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/arch/core/executor/TaskExecutor;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/arch/core/executor/DefaultTaskExecutor;->mLock:Ljava/lang/Object;

    const/4 v0, 0x4

    new-instance v1, Landroidx/arch/core/executor/DefaultTaskExecutor$1;

    invoke-direct {v1, p0}, Landroidx/arch/core/executor/DefaultTaskExecutor$1;-><init>(Landroidx/arch/core/executor/DefaultTaskExecutor;)V

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Landroidx/arch/core/executor/DefaultTaskExecutor;->mDiskIO:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private static createAsync(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 4
    .param p0    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    :try_start_0
    const-class v0, Landroid/os/Handler;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/os/Looper;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Landroid/os/Handler$Callback;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    :goto_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public executeOnDiskIO(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Landroidx/arch/core/executor/DefaultTaskExecutor;->mDiskIO:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isMainThread()Z
    .locals 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postToMainThread(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Landroidx/arch/core/executor/DefaultTaskExecutor;->mMainHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    iget-object v1, p0, Landroidx/arch/core/executor/DefaultTaskExecutor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroidx/arch/core/executor/DefaultTaskExecutor;->mMainHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Landroidx/arch/core/executor/DefaultTaskExecutor;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroidx/arch/core/executor/DefaultTaskExecutor;->mMainHandler:Landroid/os/Handler;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Landroidx/arch/core/executor/DefaultTaskExecutor;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
