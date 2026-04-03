.class public abstract Landroidx/lifecycle/LiveData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/LiveData$AlwaysActiveObserver;,
        Landroidx/lifecycle/LiveData$LifecycleBoundObserver;,
        Landroidx/lifecycle/LiveData$ObserverWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final NOT_SET:Ljava/lang/Object;

.field static final START_VERSION:I = -0x1


# instance fields
.field mActiveCount:I

.field private mChangingActiveState:Z

.field private volatile mData:Ljava/lang/Object;

.field final mDataLock:Ljava/lang/Object;

.field private mDispatchInvalidated:Z

.field private mDispatchingValue:Z

.field private mObservers:Landroidx/arch/core/internal/SafeIterableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/arch/core/internal/SafeIterableMap",
            "<",
            "Landroidx/lifecycle/Observer",
            "<-TT;>;",
            "Landroidx/lifecycle/LiveData",
            "<TT;>.ObserverWrapper;>;"
        }
    .end annotation
.end field

.field volatile mPendingData:Ljava/lang/Object;

.field private final mPostValueRunnable:Ljava/lang/Runnable;

.field private mVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/LiveData;->mDataLock:Ljava/lang/Object;

    new-instance v0, Landroidx/arch/core/internal/SafeIterableMap;

    invoke-direct {v0}, Landroidx/arch/core/internal/SafeIterableMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/LiveData;->mObservers:Landroidx/arch/core/internal/SafeIterableMap;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/lifecycle/LiveData;->mActiveCount:I

    sget-object v0, Landroidx/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/lifecycle/LiveData;->mPendingData:Ljava/lang/Object;

    new-instance v1, Landroidx/lifecycle/LiveData$1;

    invoke-direct {v1, p0}, Landroidx/lifecycle/LiveData$1;-><init>(Landroidx/lifecycle/LiveData;)V

    iput-object v1, p0, Landroidx/lifecycle/LiveData;->mPostValueRunnable:Ljava/lang/Runnable;

    iput-object v0, p0, Landroidx/lifecycle/LiveData;->mData:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/lifecycle/LiveData;->mVersion:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/LiveData;->mDataLock:Ljava/lang/Object;

    new-instance v0, Landroidx/arch/core/internal/SafeIterableMap;

    invoke-direct {v0}, Landroidx/arch/core/internal/SafeIterableMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/LiveData;->mObservers:Landroidx/arch/core/internal/SafeIterableMap;

    iput v1, p0, Landroidx/lifecycle/LiveData;->mActiveCount:I

    sget-object v0, Landroidx/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/lifecycle/LiveData;->mPendingData:Ljava/lang/Object;

    new-instance v0, Landroidx/lifecycle/LiveData$1;

    invoke-direct {v0, p0}, Landroidx/lifecycle/LiveData$1;-><init>(Landroidx/lifecycle/LiveData;)V

    iput-object v0, p0, Landroidx/lifecycle/LiveData;->mPostValueRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Landroidx/lifecycle/LiveData;->mData:Ljava/lang/Object;

    iput v1, p0, Landroidx/lifecycle/LiveData;->mVersion:I

    return-void
.end method

.method static assertMainThread(Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Landroidx/arch/core/executor/ArchTaskExecutor;->getInstance()Landroidx/arch/core/executor/ArchTaskExecutor;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/arch/core/executor/ArchTaskExecutor;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0xe

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "bf683b"

    const-wide/32 v4, 0x69ff71fb

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x17

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "e1e084"

    const v3, -0x32bd4e46

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :array_0
    .array-data 1
        0x21t
        0x7t
        0x58t
        0x56t
        0x5ct
        0x16t
        0x42t
        0xft
        0x58t
        0x4et
        0x5ct
        0x9t
        0x7t
        0x46t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x45t
        0x5et
        0xbt
        0x10t
        0x59t
        0x14t
        0x7t
        0x50t
        0x6t
        0x5bt
        0x5ft
        0x46t
        0xat
        0x44t
        0xbt
        0x54t
        0x18t
        0x40t
        0xdt
        0x43t
        0x0t
        0x51t
        0x5ct
    .end array-data
.end method

.method private considerNotify(Landroidx/lifecycle/LiveData$ObserverWrapper;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData",
            "<TT;>.ObserverWrapper;)V"
        }
    .end annotation

    iget-boolean v0, p1, Landroidx/lifecycle/LiveData$ObserverWrapper;->mActive:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData$ObserverWrapper;->shouldBeActive()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData$ObserverWrapper;->activeStateChanged(Z)V

    goto :goto_0

    :cond_2
    iget v0, p1, Landroidx/lifecycle/LiveData$ObserverWrapper;->mLastVersion:I

    iget v1, p0, Landroidx/lifecycle/LiveData;->mVersion:I

    if-ge v0, v1, :cond_0

    iput v1, p1, Landroidx/lifecycle/LiveData$ObserverWrapper;->mLastVersion:I

    iget-object v0, p1, Landroidx/lifecycle/LiveData$ObserverWrapper;->mObserver:Landroidx/lifecycle/Observer;

    iget-object v1, p0, Landroidx/lifecycle/LiveData;->mData:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroidx/lifecycle/Observer;->onChanged(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method changeActiveCounter(I)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Landroidx/lifecycle/LiveData;->mActiveCount:I

    iget v3, p0, Landroidx/lifecycle/LiveData;->mActiveCount:I

    add-int/2addr v3, p1

    iput v3, p0, Landroidx/lifecycle/LiveData;->mActiveCount:I

    iget-boolean v3, p0, Landroidx/lifecycle/LiveData;->mChangingActiveState:Z

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, p0, Landroidx/lifecycle/LiveData;->mChangingActiveState:Z

    :goto_1
    :try_start_0
    iget v4, p0, Landroidx/lifecycle/LiveData;->mActiveCount:I

    if-eq v0, v4, :cond_5

    if-nez v0, :cond_2

    if-lez v4, :cond_2

    move v3, v1

    :goto_2
    if-lez v0, :cond_3

    if-nez v4, :cond_3

    move v0, v1

    :goto_3
    if-eqz v3, :cond_4

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->onActive()V

    :cond_1
    :goto_4
    move v0, v4

    goto :goto_1

    :cond_2
    move v3, v2

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->onInactive()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    iput-boolean v2, p0, Landroidx/lifecycle/LiveData;->mChangingActiveState:Z

    throw v0

    :cond_5
    iput-boolean v2, p0, Landroidx/lifecycle/LiveData;->mChangingActiveState:Z

    goto :goto_0
.end method

.method dispatchingValue(Landroidx/lifecycle/LiveData$ObserverWrapper;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData",
            "<TT;>.ObserverWrapper;)V"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Landroidx/lifecycle/LiveData;->mDispatchingValue:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Landroidx/lifecycle/LiveData;->mDispatchInvalidated:Z

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, p0, Landroidx/lifecycle/LiveData;->mDispatchingValue:Z

    :cond_1
    iput-boolean v2, p0, Landroidx/lifecycle/LiveData;->mDispatchInvalidated:Z

    if-eqz p1, :cond_3

    invoke-direct {p0, p1}, Landroidx/lifecycle/LiveData;->considerNotify(Landroidx/lifecycle/LiveData$ObserverWrapper;)V

    const/4 p1, 0x0

    :cond_2
    :goto_1
    iget-boolean v0, p0, Landroidx/lifecycle/LiveData;->mDispatchInvalidated:Z

    if-nez v0, :cond_1

    iput-boolean v2, p0, Landroidx/lifecycle/LiveData;->mDispatchingValue:Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroidx/lifecycle/LiveData;->mObservers:Landroidx/arch/core/internal/SafeIterableMap;

    invoke-virtual {v0}, Landroidx/arch/core/internal/SafeIterableMap;->iteratorWithAdditions()Landroidx/arch/core/internal/SafeIterableMap$IteratorWithAdditions;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LiveData$ObserverWrapper;

    invoke-direct {p0, v0}, Landroidx/lifecycle/LiveData;->considerNotify(Landroidx/lifecycle/LiveData$ObserverWrapper;)V

    iget-boolean v0, p0, Landroidx/lifecycle/LiveData;->mDispatchInvalidated:Z

    if-eqz v0, :cond_4

    goto :goto_1
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/lifecycle/LiveData;->mData:Ljava/lang/Object;

    sget-object v1, Landroidx/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getVersion()I
    .locals 1

    iget v0, p0, Landroidx/lifecycle/LiveData;->mVersion:I

    return v0
.end method

.method public hasActiveObservers()Z
    .locals 1

    iget v0, p0, Landroidx/lifecycle/LiveData;->mActiveCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasObservers()Z
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/LiveData;->mObservers:Landroidx/arch/core/internal/SafeIterableMap;

    invoke-virtual {v0}, Landroidx/arch/core/internal/SafeIterableMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Observer",
            "<-TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "f5a9db"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/lifecycle/LiveData;->assertMainThread(Ljava/lang/String;)V

    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;

    invoke-direct {v1, p0, p1, p2}, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;-><init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Landroidx/lifecycle/LiveData;->mObservers:Landroidx/arch/core/internal/SafeIterableMap;

    invoke-virtual {v0, p2, v1}, Landroidx/arch/core/internal/SafeIterableMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LiveData$ObserverWrapper;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroidx/lifecycle/LiveData$ObserverWrapper;->isAttachedTo(Landroidx/lifecycle/LifecycleOwner;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    if-nez v0, :cond_0

    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x36

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "006632"

    const/16 v3, 0x5b33

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x9t
        0x57t
        0x12t
        0x5ct
        0x16t
        0x14t
        0x3t
    .end array-data

    :array_1
    .array-data 1
        0x73t
        0x51t
        0x58t
        0x58t
        0x5ct
        0x46t
        0x10t
        0x51t
        0x52t
        0x52t
        0x13t
        0x46t
        0x58t
        0x55t
        0x16t
        0x45t
        0x52t
        0x5ft
        0x55t
        0x10t
        0x59t
        0x54t
        0x40t
        0x57t
        0x42t
        0x46t
        0x53t
        0x44t
        0x13t
        0x45t
        0x59t
        0x44t
        0x5et
        0x16t
        0x57t
        0x5bt
        0x56t
        0x56t
        0x53t
        0x44t
        0x56t
        0x5ct
        0x44t
        0x10t
        0x5at
        0x5ft
        0x55t
        0x57t
        0x53t
        0x49t
        0x55t
        0x5at
        0x56t
        0x41t
    .end array-data
.end method

.method public observeForever(Landroidx/lifecycle/Observer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/Observer",
            "<-TT;>;)V"
        }
    .end annotation

    const/4 v3, 0x1

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "79df47"

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/lifecycle/LiveData;->assertMainThread(Ljava/lang/String;)V

    new-instance v1, Landroidx/lifecycle/LiveData$AlwaysActiveObserver;

    invoke-direct {v1, p0, p1}, Landroidx/lifecycle/LiveData$AlwaysActiveObserver;-><init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Landroidx/lifecycle/LiveData;->mObservers:Landroidx/arch/core/internal/SafeIterableMap;

    invoke-virtual {v0, p1, v1}, Landroidx/arch/core/internal/SafeIterableMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LiveData$ObserverWrapper;

    instance-of v2, v0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;

    if-nez v2, :cond_1

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1, v3}, Landroidx/lifecycle/LiveData$AlwaysActiveObserver;->activeStateChanged(Z)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x36

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "8e6444"

    const-wide/32 v4, -0x458856f6

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x58t
        0x5bt
        0x17t
        0x3t
        0x46t
        0x41t
        0x52t
        0x7ft
        0xbt
        0x14t
        0x51t
        0x41t
        0x52t
        0x4bt
    .end array-data

    nop

    :array_1
    .array-data 1
        0x7bt
        0x4t
        0x58t
        0x5at
        0x5bt
        0x40t
        0x18t
        0x4t
        0x52t
        0x50t
        0x14t
        0x40t
        0x50t
        0x0t
        0x16t
        0x47t
        0x55t
        0x59t
        0x5dt
        0x45t
        0x59t
        0x56t
        0x47t
        0x51t
        0x4at
        0x13t
        0x53t
        0x46t
        0x14t
        0x43t
        0x51t
        0x11t
        0x5et
        0x14t
        0x50t
        0x5dt
        0x5et
        0x3t
        0x53t
        0x46t
        0x51t
        0x5at
        0x4ct
        0x45t
        0x5at
        0x5dt
        0x52t
        0x51t
        0x5bt
        0x1ct
        0x55t
        0x58t
        0x51t
        0x47t
    .end array-data
.end method

.method protected onActive()V
    .locals 0

    return-void
.end method

.method protected onInactive()V
    .locals 0

    return-void
.end method

.method protected postValue(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v1, p0, Landroidx/lifecycle/LiveData;->mDataLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroidx/lifecycle/LiveData;->mPendingData:Ljava/lang/Object;

    sget-object v2, Landroidx/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-object p1, p0, Landroidx/lifecycle/LiveData;->mPendingData:Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {}, Landroidx/arch/core/executor/ArchTaskExecutor;->getInstance()Landroidx/arch/core/executor/ArchTaskExecutor;

    move-result-object v0

    iget-object v1, p0, Landroidx/lifecycle/LiveData;->mPostValueRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroidx/arch/core/executor/ArchTaskExecutor;->postToMainThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public removeObserver(Landroidx/lifecycle/Observer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/Observer",
            "<-TT;>;)V"
        }
    .end annotation

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "4fc592"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/lifecycle/LiveData;->assertMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/lifecycle/LiveData;->mObservers:Landroidx/arch/core/internal/SafeIterableMap;

    invoke-virtual {v0, p1}, Landroidx/arch/core/internal/SafeIterableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LiveData$ObserverWrapper;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData$ObserverWrapper;->detachObserver()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData$ObserverWrapper;->activeStateChanged(Z)V

    goto :goto_0

    :array_0
    .array-data 1
        0x46t
        0x3t
        0xet
        0x5at
        0x4ft
        0x57t
        0x7bt
        0x4t
        0x10t
        0x50t
        0x4bt
        0x44t
        0x51t
        0x14t
    .end array-data
.end method

.method public removeObservers(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 3

    const/4 v2, 0x1

    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "d2a094"

    invoke-static {v0, v1, v2, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/lifecycle/LiveData;->assertMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/lifecycle/LiveData;->mObservers:Landroidx/arch/core/internal/SafeIterableMap;

    invoke-virtual {v0}, Landroidx/arch/core/internal/SafeIterableMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/LiveData$ObserverWrapper;

    invoke-virtual {v1, p1}, Landroidx/lifecycle/LiveData$ObserverWrapper;->isAttachedTo(Landroidx/lifecycle/LifecycleOwner;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/Observer;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    goto :goto_0

    :cond_1
    return-void

    :array_0
    .array-data 1
        0x16t
        0x57t
        0xct
        0x5ft
        0x4ft
        0x51t
        0x2bt
        0x50t
        0x12t
        0x55t
        0x4bt
        0x42t
        0x1t
        0x40t
        0x12t
    .end array-data
.end method

.method protected setValue(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "f5f5db"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/lifecycle/LiveData;->assertMainThread(Ljava/lang/String;)V

    iget v0, p0, Landroidx/lifecycle/LiveData;->mVersion:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/lifecycle/LiveData;->mVersion:I

    iput-object p1, p0, Landroidx/lifecycle/LiveData;->mData:Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LiveData;->dispatchingValue(Landroidx/lifecycle/LiveData$ObserverWrapper;)V

    return-void

    nop

    :array_0
    .array-data 1
        0x15t
        0x50t
        0x12t
        0x63t
        0x5t
        0xet
        0x13t
        0x50t
    .end array-data
.end method
