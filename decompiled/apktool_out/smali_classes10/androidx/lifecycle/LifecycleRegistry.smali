.class public Landroidx/lifecycle/LifecycleRegistry;
.super Landroidx/lifecycle/Lifecycle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;
    }
.end annotation


# instance fields
.field private mAddingObserverCounter:I

.field private final mEnforceMainThread:Z

.field private mHandlingEvent:Z

.field private final mLifecycleOwner:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroidx/lifecycle/LifecycleOwner;",
            ">;"
        }
    .end annotation
.end field

.field private mNewEventOccurred:Z

.field private mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/arch/core/internal/FastSafeIterableMap",
            "<",
            "Landroidx/lifecycle/LifecycleObserver;",
            "Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;",
            ">;"
        }
    .end annotation
.end field

.field private mParentStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/lifecycle/Lifecycle$State;",
            ">;"
        }
    .end annotation
.end field

.field private mState:Landroidx/lifecycle/Lifecycle$State;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;Z)V

    return-void
.end method

.method private constructor <init>(Landroidx/lifecycle/LifecycleOwner;Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroidx/lifecycle/Lifecycle;-><init>()V

    new-instance v0, Landroidx/arch/core/internal/FastSafeIterableMap;

    invoke-direct {v0}, Landroidx/arch/core/internal/FastSafeIterableMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;

    iput v1, p0, Landroidx/lifecycle/LifecycleRegistry;->mAddingObserverCounter:I

    iput-boolean v1, p0, Landroidx/lifecycle/LifecycleRegistry;->mHandlingEvent:Z

    iput-boolean v1, p0, Landroidx/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mParentStates:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mLifecycleOwner:Ljava/lang/ref/WeakReference;

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    iput-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/Lifecycle$State;

    iput-boolean p2, p0, Landroidx/lifecycle/LifecycleRegistry;->mEnforceMainThread:Z

    return-void
.end method

.method private backwardPass(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 5

    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;

    invoke-virtual {v0}, Landroidx/arch/core/internal/FastSafeIterableMap;->descendingIterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    if-nez v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;

    :goto_0
    iget-object v2, v1, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    iget-object v4, p0, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v2, v4}, Landroidx/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-lez v2, :cond_0

    iget-boolean v2, p0, Landroidx/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    if-nez v2, :cond_0

    iget-object v4, p0, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {v4, v2}, Landroidx/arch/core/internal/FastSafeIterableMap;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    invoke-static {v2}, Landroidx/lifecycle/Lifecycle$Event;->downFrom(Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$Event;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroidx/lifecycle/Lifecycle$Event;->getTargetState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v4

    invoke-direct {p0, v4}, Landroidx/lifecycle/LifecycleRegistry;->pushParentState(Landroidx/lifecycle/Lifecycle$State;)V

    invoke-virtual {v1, p1, v2}, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->dispatchEvent(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V

    invoke-direct {p0}, Landroidx/lifecycle/LifecycleRegistry;->popParentState()V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x13

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "bfd1ef"

    const/16 v4, 0x19c

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    return-void

    nop

    :array_0
    .array-data 1
        0xct
        0x9t
        0x44t
        0x54t
        0x13t
        0x3t
        0xct
        0x12t
        0x44t
        0x55t
        0xat
        0x11t
        0xct
        0x46t
        0x2t
        0x43t
        0xat
        0xbt
        0x42t
    .end array-data
.end method

.method private calculateTargetState(Landroidx/lifecycle/LifecycleObserver;)Landroidx/lifecycle/Lifecycle$State;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;

    invoke-virtual {v0, p1}, Landroidx/arch/core/internal/FastSafeIterableMap;->ceil(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;

    iget-object v0, v0, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mParentStates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mParentStates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/Lifecycle$State;

    :goto_1
    iget-object v2, p0, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/Lifecycle$State;

    invoke-static {v2, v1}, Landroidx/lifecycle/LifecycleRegistry;->min(Landroidx/lifecycle/Lifecycle$State;Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$State;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/lifecycle/LifecycleRegistry;->min(Landroidx/lifecycle/Lifecycle$State;Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v1, v2

    goto :goto_0

    :cond_1
    move-object v0, v2

    goto :goto_1
.end method

.method public static createUnsafe(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleRegistry;
    .locals 2

    new-instance v0, Landroidx/lifecycle/LifecycleRegistry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;Z)V

    return-object v0
.end method

.method private enforceMainThreadIfNeeded(Ljava/lang/String;)V
    .locals 6

    iget-boolean v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mEnforceMainThread:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroidx/arch/core/executor/ArchTaskExecutor;->getInstance()Landroidx/arch/core/executor/ArchTaskExecutor;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/arch/core/executor/ArchTaskExecutor;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x7

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "86a444"

    const-wide v4, -0x3e2ac2ae6f800000L    # -1.42536045E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x22

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "411bda"

    const v3, 0x4eae5283

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :array_0
    .array-data 1
        0x75t
        0x53t
        0x15t
        0x5ct
        0x5bt
        0x50t
        0x18t
    .end array-data

    :array_1
    .array-data 1
        0x14t
        0x5ct
        0x44t
        0x11t
        0x10t
        0x41t
        0x56t
        0x54t
        0x11t
        0x1t
        0x5t
        0xdt
        0x58t
        0x54t
        0x55t
        0x42t
        0xbt
        0xft
        0x14t
        0x45t
        0x59t
        0x7t
        0x44t
        0xct
        0x55t
        0x58t
        0x5ft
        0x42t
        0x10t
        0x9t
        0x46t
        0x54t
        0x50t
        0x6t
    .end array-data
.end method

.method private forwardPass(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 6

    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;

    invoke-virtual {v0}, Landroidx/arch/core/internal/FastSafeIterableMap;->iteratorWithAdditions()Landroidx/arch/core/internal/SafeIterableMap$IteratorWithAdditions;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    if-nez v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;

    :goto_0
    iget-object v2, v1, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    iget-object v4, p0, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v2, v4}, Landroidx/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-gez v2, :cond_0

    iget-boolean v2, p0, Landroidx/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    if-nez v2, :cond_0

    iget-object v4, p0, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {v4, v2}, Landroidx/arch/core/internal/FastSafeIterableMap;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    invoke-direct {p0, v2}, Landroidx/lifecycle/LifecycleRegistry;->pushParentState(Landroidx/lifecycle/Lifecycle$State;)V

    iget-object v2, v1, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    invoke-static {v2}, Landroidx/lifecycle/Lifecycle$Event;->upFrom(Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$Event;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p1, v2}, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->dispatchEvent(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V

    invoke-direct {p0}, Landroidx/lifecycle/LifecycleRegistry;->popParentState()V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x11

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "bd7c9a"

    const-wide/32 v4, -0x22b7c558

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    return-void

    :array_0
    .array-data 1
        0xct
        0xbt
        0x17t
        0x6t
        0x4ft
        0x4t
        0xct
        0x10t
        0x17t
        0x16t
        0x49t
        0x41t
        0x4t
        0x16t
        0x58t
        0xet
        0x19t
    .end array-data
.end method

.method private isSynced()Z
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;

    invoke-virtual {v0}, Landroidx/arch/core/internal/FastSafeIterableMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;

    invoke-virtual {v0}, Landroidx/arch/core/internal/FastSafeIterableMap;->eldest()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;

    iget-object v2, v0, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;

    invoke-virtual {v0}, Landroidx/arch/core/internal/FastSafeIterableMap;->newest()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;

    iget-object v0, v0, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    if-ne v2, v0, :cond_1

    iget-object v2, p0, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/Lifecycle$State;

    if-ne v2, v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static min(Landroidx/lifecycle/Lifecycle$State;Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$State;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_0

    move-object p0, p1

    :cond_0
    return-object p0
.end method

.method private moveToState(Landroidx/lifecycle/Lifecycle$State;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/Lifecycle$State;

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/Lifecycle$State;

    iget-boolean v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mHandlingEvent:Z

    if-nez v0, :cond_1

    iget v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mAddingObserverCounter:I

    if-eqz v0, :cond_2

    :cond_1
    iput-boolean v1, p0, Landroidx/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    goto :goto_0

    :cond_2
    iput-boolean v1, p0, Landroidx/lifecycle/LifecycleRegistry;->mHandlingEvent:Z

    invoke-direct {p0}, Landroidx/lifecycle/LifecycleRegistry;->sync()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mHandlingEvent:Z

    goto :goto_0
.end method

.method private popParentState()V
    .locals 2

    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mParentStates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private pushParentState(Landroidx/lifecycle/Lifecycle$State;)V
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mParentStates:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private sync()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mLifecycleOwner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    if-eqz v0, :cond_3

    :cond_0
    :goto_0
    invoke-direct {p0}, Landroidx/lifecycle/LifecycleRegistry;->isSynced()Z

    move-result v1

    if-nez v1, :cond_2

    iput-boolean v3, p0, Landroidx/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    iget-object v2, p0, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/Lifecycle$State;

    iget-object v1, p0, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;

    invoke-virtual {v1}, Landroidx/arch/core/internal/FastSafeIterableMap;->eldest()Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;

    iget-object v1, v1, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v2, v1}, Landroidx/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_1

    invoke-direct {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->backwardPass(Landroidx/lifecycle/LifecycleOwner;)V

    :cond_1
    iget-object v1, p0, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;

    invoke-virtual {v1}, Landroidx/arch/core/internal/FastSafeIterableMap;->newest()Ljava/util/Map$Entry;

    move-result-object v1

    iget-boolean v2, p0, Landroidx/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/Lifecycle$State;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;

    iget-object v1, v1, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v2, v1}, Landroidx/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-lez v1, :cond_0

    invoke-direct {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->forwardPass(Landroidx/lifecycle/LifecycleOwner;)V

    goto :goto_0

    :cond_2
    iput-boolean v3, p0, Landroidx/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x6f

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "9ccdf5"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x75t
        0xat
        0x5t
        0x1t
        0x5t
        0x4ct
        0x5at
        0xft
        0x6t
        0x2bt
        0x11t
        0x5bt
        0x5ct
        0x11t
        0x43t
        0xbt
        0x0t
        0x15t
        0x4dt
        0xbt
        0xat
        0x17t
        0x46t
        0x79t
        0x50t
        0x5t
        0x6t
        0x7t
        0x1ft
        0x56t
        0x55t
        0x6t
        0x31t
        0x1t
        0x1t
        0x5ct
        0x4at
        0x17t
        0x11t
        0x1dt
        0x46t
        0x5ct
        0x4at
        0x43t
        0x2t
        0x8t
        0x14t
        0x50t
        0x58t
        0x7t
        0x1at
        0x3t
        0x7t
        0x47t
        0x5bt
        0x2t
        0x4t
        0x1t
        0x46t
        0x56t
        0x56t
        0xft
        0xft
        0x1t
        0x5t
        0x41t
        0x5ct
        0x7t
        0x4dt
        0x44t
        0x2ft
        0x41t
        0x19t
        0xat
        0x10t
        0x44t
        0x12t
        0x5at
        0x56t
        0x43t
        0xft
        0x5t
        0x12t
        0x50t
        0x19t
        0x17t
        0xct
        0x44t
        0x5t
        0x5dt
        0x58t
        0xdt
        0x4t
        0x1t
        0x46t
        0x59t
        0x50t
        0x5t
        0x6t
        0x7t
        0x1ft
        0x56t
        0x55t
        0x6t
        0x43t
        0x17t
        0x12t
        0x54t
        0x4dt
        0x6t
        0x4dt
    .end array-data
.end method


# virtual methods
.method public addObserver(Landroidx/lifecycle/LifecycleObserver;)V
    .locals 5

    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "dbd26f"

    const-wide v2, 0x41cbe10cfe800000L    # 9.35467517E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->enforceMainThreadIfNeeded(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/Lifecycle$State;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-ne v0, v1, :cond_1

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    :goto_0
    new-instance v3, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;

    invoke-direct {v3, p1, v0}, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;-><init>(Landroidx/lifecycle/LifecycleObserver;Landroidx/lifecycle/Lifecycle$State;)V

    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;

    invoke-virtual {v0, p1, v3}, Landroidx/arch/core/internal/FastSafeIterableMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;

    if-eqz v0, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mLifecycleOwner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    if-eqz v0, :cond_0

    iget v1, p0, Landroidx/lifecycle/LifecycleRegistry;->mAddingObserverCounter:I

    if-nez v1, :cond_3

    iget-boolean v1, p0, Landroidx/lifecycle/LifecycleRegistry;->mHandlingEvent:Z

    if-eqz v1, :cond_4

    :cond_3
    const/4 v1, 0x1

    :goto_2
    invoke-direct {p0, p1}, Landroidx/lifecycle/LifecycleRegistry;->calculateTargetState(Landroidx/lifecycle/LifecycleObserver;)Landroidx/lifecycle/Lifecycle$State;

    move-result-object v2

    iget v4, p0, Landroidx/lifecycle/LifecycleRegistry;->mAddingObserverCounter:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroidx/lifecycle/LifecycleRegistry;->mAddingObserverCounter:I

    :goto_3
    iget-object v4, v3, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v4, v2}, Landroidx/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-gez v2, :cond_6

    iget-object v2, p0, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;

    invoke-virtual {v2, p1}, Landroidx/arch/core/internal/FastSafeIterableMap;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v3, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    invoke-direct {p0, v2}, Landroidx/lifecycle/LifecycleRegistry;->pushParentState(Landroidx/lifecycle/Lifecycle$State;)V

    iget-object v2, v3, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    invoke-static {v2}, Landroidx/lifecycle/Lifecycle$Event;->upFrom(Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$Event;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v3, v0, v2}, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->dispatchEvent(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V

    invoke-direct {p0}, Landroidx/lifecycle/LifecycleRegistry;->popParentState()V

    invoke-direct {p0, p1}, Landroidx/lifecycle/LifecycleRegistry;->calculateTargetState(Landroidx/lifecycle/LifecycleObserver;)Landroidx/lifecycle/Lifecycle$State;

    move-result-object v2

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x11

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "87817e"

    const v4, 0x4d0f915c    # 1.5054176E8f

    invoke-static {v1, v2, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    if-nez v1, :cond_7

    invoke-direct {p0}, Landroidx/lifecycle/LifecycleRegistry;->sync()V

    :cond_7
    iget v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mAddingObserverCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mAddingObserverCounter:I

    goto :goto_1

    :array_0
    .array-data 1
        0x5t
        0x6t
        0x0t
        0x7dt
        0x54t
        0x15t
        0x1t
        0x10t
        0x12t
        0x57t
        0x44t
    .end array-data

    :array_1
    .array-data 1
        0x56t
        0x58t
        0x18t
        0x54t
        0x41t
        0x0t
        0x56t
        0x43t
        0x18t
        0x44t
        0x47t
        0x45t
        0x5et
        0x45t
        0x57t
        0x5ct
        0x17t
    .end array-data
.end method

.method public getCurrentState()Landroidx/lifecycle/Lifecycle$State;
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/Lifecycle$State;

    return-object v0
.end method

.method public getObserverCount()I
    .locals 4

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "e2be67"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->enforceMainThreadIfNeeded(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;

    invoke-virtual {v0}, Landroidx/arch/core/internal/FastSafeIterableMap;->size()I

    move-result v0

    return v0

    nop

    :array_0
    .array-data 1
        0x2t
        0x57t
        0x16t
        0x2at
        0x54t
        0x44t
        0x0t
        0x40t
        0x14t
        0x0t
        0x44t
        0x74t
        0xat
        0x47t
        0xct
        0x11t
    .end array-data
.end method

.method public handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 4

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "8299f4"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->enforceMainThreadIfNeeded(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/lifecycle/Lifecycle$Event;->getTargetState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->moveToState(Landroidx/lifecycle/Lifecycle$State;)V

    return-void

    :array_0
    .array-data 1
        0x50t
        0x53t
        0x57t
        0x5dt
        0xat
        0x51t
        0x74t
        0x5bt
        0x5ft
        0x5ct
        0x5t
        0x4dt
        0x5bt
        0x5et
        0x5ct
        0x7ct
        0x10t
        0x51t
        0x56t
        0x46t
    .end array-data
.end method

.method public markState(Landroidx/lifecycle/Lifecycle$State;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "052ff6"

    const-wide v2, 0x419e02134c000000L    # 1.25863123E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->enforceMainThreadIfNeeded(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    return-void

    nop

    :array_0
    .array-data 1
        0x5dt
        0x54t
        0x40t
        0xdt
        0x35t
        0x42t
        0x51t
        0x41t
        0x57t
    .end array-data
.end method

.method public removeObserver(Landroidx/lifecycle/LifecycleObserver;)V
    .locals 4

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "c6d01b"

    const-wide v2, 0x41d9dab854c00000L    # 1.735057747E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->enforceMainThreadIfNeeded(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;

    invoke-virtual {v0, p1}, Landroidx/arch/core/internal/FastSafeIterableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :array_0
    .array-data 1
        0x11t
        0x53t
        0x9t
        0x5ft
        0x47t
        0x7t
        0x2ct
        0x54t
        0x17t
        0x55t
        0x43t
        0x14t
        0x6t
        0x44t
    .end array-data
.end method

.method public setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V
    .locals 3

    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "670ef3"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->enforceMainThreadIfNeeded(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/lifecycle/LifecycleRegistry;->moveToState(Landroidx/lifecycle/Lifecycle$State;)V

    return-void

    nop

    :array_0
    .array-data 1
        0x45t
        0x52t
        0x44t
        0x26t
        0x13t
        0x41t
        0x44t
        0x52t
        0x5et
        0x11t
        0x35t
        0x47t
        0x57t
        0x43t
        0x55t
    .end array-data
.end method
