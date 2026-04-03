.class public Landroidx/lifecycle/MediatorLiveData;
.super Landroidx/lifecycle/MutableLiveData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/MediatorLiveData$Source;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/lifecycle/MutableLiveData",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mSources:Landroidx/arch/core/internal/SafeIterableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/arch/core/internal/SafeIterableMap",
            "<",
            "Landroidx/lifecycle/LiveData",
            "<*>;",
            "Landroidx/lifecycle/MediatorLiveData$Source",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    new-instance v0, Landroidx/arch/core/internal/SafeIterableMap;

    invoke-direct {v0}, Landroidx/arch/core/internal/SafeIterableMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/MediatorLiveData;->mSources:Landroidx/arch/core/internal/SafeIterableMap;

    return-void
.end method


# virtual methods
.method public addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LiveData",
            "<TS;>;",
            "Landroidx/lifecycle/Observer",
            "<-TS;>;)V"
        }
    .end annotation

    new-instance v1, Landroidx/lifecycle/MediatorLiveData$Source;

    invoke-direct {v1, p1, p2}, Landroidx/lifecycle/MediatorLiveData$Source;-><init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Landroidx/lifecycle/MediatorLiveData;->mSources:Landroidx/arch/core/internal/SafeIterableMap;

    invoke-virtual {v0, p1, v1}, Landroidx/arch/core/internal/SafeIterableMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/MediatorLiveData$Source;

    if-eqz v0, :cond_0

    iget-object v2, v0, Landroidx/lifecycle/MediatorLiveData$Source;->mObserver:Landroidx/lifecycle/Observer;

    if-ne v2, p2, :cond_2

    :cond_0
    if-eqz v0, :cond_3

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x39

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "dff844"

    const-wide v4, 0x41d098a4f8c00000L    # 1.113756643E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p0}, Landroidx/lifecycle/MediatorLiveData;->hasActiveObservers()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Landroidx/lifecycle/MediatorLiveData$Source;->plug()V

    goto :goto_0

    :array_0
    .array-data 1
        0x30t
        0xet
        0xft
        0x4bt
        0x14t
        0x47t
        0xbt
        0x13t
        0x14t
        0x5bt
        0x51t
        0x14t
        0x13t
        0x7t
        0x15t
        0x18t
        0x55t
        0x58t
        0x16t
        0x3t
        0x7t
        0x5ct
        0x4dt
        0x14t
        0x5t
        0x2t
        0x2t
        0x5dt
        0x50t
        0x14t
        0x13t
        0xft
        0x12t
        0x50t
        0x14t
        0x40t
        0xct
        0x3t
        0x46t
        0x5ct
        0x5dt
        0x52t
        0x2t
        0x3t
        0x14t
        0x5dt
        0x5at
        0x40t
        0x44t
        0x9t
        0x4t
        0x4bt
        0x51t
        0x46t
        0x12t
        0x3t
        0x14t
    .end array-data
.end method

.method protected onActive()V
    .locals 2

    iget-object v0, p0, Landroidx/lifecycle/MediatorLiveData;->mSources:Landroidx/arch/core/internal/SafeIterableMap;

    invoke-virtual {v0}, Landroidx/arch/core/internal/SafeIterableMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/MediatorLiveData$Source;

    invoke-virtual {v0}, Landroidx/lifecycle/MediatorLiveData$Source;->plug()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onInactive()V
    .locals 2

    iget-object v0, p0, Landroidx/lifecycle/MediatorLiveData;->mSources:Landroidx/arch/core/internal/SafeIterableMap;

    invoke-virtual {v0}, Landroidx/arch/core/internal/SafeIterableMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/MediatorLiveData$Source;

    invoke-virtual {v0}, Landroidx/lifecycle/MediatorLiveData$Source;->unplug()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeSource(Landroidx/lifecycle/LiveData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LiveData",
            "<TS;>;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/lifecycle/MediatorLiveData;->mSources:Landroidx/arch/core/internal/SafeIterableMap;

    invoke-virtual {v0, p1}, Landroidx/arch/core/internal/SafeIterableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/MediatorLiveData$Source;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/lifecycle/MediatorLiveData$Source;->unplug()V

    :cond_0
    return-void
.end method
