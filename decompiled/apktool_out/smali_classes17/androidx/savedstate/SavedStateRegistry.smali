.class public final Landroidx/savedstate/SavedStateRegistry;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/savedstate/SavedStateRegistry$AutoRecreated;,
        Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;
    }
.end annotation


# static fields
.field private static final SAVED_COMPONENTS_KEY:Ljava/lang/String;


# instance fields
.field mAllowingSavingState:Z

.field private mComponents:Landroidx/arch/core/internal/SafeIterableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/arch/core/internal/SafeIterableMap",
            "<",
            "Ljava/lang/String;",
            "Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mRecreatorProvider:Landroidx/savedstate/Recreator$SavedStateProvider;

.field private mRestored:Z

.field private mRestoredState:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x32

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "e7d4c8"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/savedstate/SavedStateRegistry;->SAVED_COMPONENTS_KEY:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x4t
        0x59t
        0x0t
        0x46t
        0xct
        0x51t
        0x1t
        0x4ft
        0x4at
        0x58t
        0xat
        0x5et
        0x0t
        0x54t
        0x1dt
        0x57t
        0xft
        0x5dt
        0x4bt
        0x75t
        0x11t
        0x5at
        0x7t
        0x54t
        0x4t
        0x55t
        0x8t
        0x51t
        0x30t
        0x59t
        0x13t
        0x52t
        0x0t
        0x67t
        0x17t
        0x59t
        0x11t
        0x52t
        0x36t
        0x51t
        0x4t
        0x51t
        0x16t
        0x43t
        0x16t
        0x4dt
        0x4dt
        0x53t
        0x0t
        0x4et
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/arch/core/internal/SafeIterableMap;

    invoke-direct {v0}, Landroidx/arch/core/internal/SafeIterableMap;-><init>()V

    iput-object v0, p0, Landroidx/savedstate/SavedStateRegistry;->mComponents:Landroidx/arch/core/internal/SafeIterableMap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/savedstate/SavedStateRegistry;->mAllowingSavingState:Z

    return-void
.end method


# virtual methods
.method public consumeRestoredStateForKey(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6

    const/4 v1, 0x0

    iget-boolean v0, p0, Landroidx/savedstate/SavedStateRegistry;->mRestored:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/savedstate/SavedStateRegistry;->mRestoredState:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v2, p0, Landroidx/savedstate/SavedStateRegistry;->mRestoredState:Landroid/os/Bundle;

    invoke-virtual {v2, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/savedstate/SavedStateRegistry;->mRestoredState:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object v1, p0, Landroidx/savedstate/SavedStateRegistry;->mRestoredState:Landroid/os/Bundle;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x57

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "d98a32"

    const-wide v4, -0x3e2e6ed965800000L    # -1.178901098E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x3dt
        0x56t
        0x4dt
        0x41t
        0x50t
        0x53t
        0xat
        0x19t
        0x5bt
        0xet
        0x5dt
        0x41t
        0x11t
        0x54t
        0x5dt
        0x33t
        0x56t
        0x41t
        0x10t
        0x56t
        0x4at
        0x4t
        0x57t
        0x61t
        0x10t
        0x58t
        0x4ct
        0x4t
        0x75t
        0x5dt
        0x16t
        0x72t
        0x5dt
        0x18t
        0x13t
        0x5dt
        0xat
        0x55t
        0x41t
        0x41t
        0x52t
        0x54t
        0x10t
        0x5ct
        0x4at
        0x41t
        0x40t
        0x47t
        0x14t
        0x5ct
        0x4at
        0x4ft
        0x5ct
        0x5ct
        0x27t
        0x4bt
        0x5dt
        0x0t
        0x47t
        0x57t
        0x44t
        0x56t
        0x5et
        0x41t
        0x50t
        0x5dt
        0x16t
        0x4bt
        0x5dt
        0x12t
        0x43t
        0x5dt
        0xat
        0x5dt
        0x51t
        0xft
        0x54t
        0x12t
        0x7t
        0x56t
        0x55t
        0x11t
        0x5ct
        0x5ct
        0x1t
        0x57t
        0x4ct
    .end array-data
.end method

.method public isRestored()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/savedstate/SavedStateRegistry;->mRestored:Z

    return v0
.end method

.method performRestore(Landroidx/lifecycle/Lifecycle;Landroid/os/Bundle;)V
    .locals 6

    iget-boolean v0, p0, Landroidx/savedstate/SavedStateRegistry;->mRestored:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    sget-object v0, Landroidx/savedstate/SavedStateRegistry;->SAVED_COMPONENTS_KEY:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroidx/savedstate/SavedStateRegistry;->mRestoredState:Landroid/os/Bundle;

    :cond_0
    new-instance v0, Landroidx/savedstate/SavedStateRegistry$1;

    invoke-direct {v0, p0}, Landroidx/savedstate/SavedStateRegistry$1;-><init>(Landroidx/savedstate/SavedStateRegistry;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/savedstate/SavedStateRegistry;->mRestored:Z

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x28

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "6ca290"

    const-wide/32 v4, -0x45c2d684

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x65t
        0x2t
        0x17t
        0x57t
        0x5dt
        0x63t
        0x42t
        0x2t
        0x15t
        0x57t
        0x6bt
        0x55t
        0x51t
        0xat
        0x12t
        0x46t
        0x4bt
        0x49t
        0x16t
        0x14t
        0x0t
        0x41t
        0x19t
        0x51t
        0x5at
        0x11t
        0x4t
        0x53t
        0x5dt
        0x49t
        0x16t
        0x11t
        0x4t
        0x41t
        0x4dt
        0x5ft
        0x44t
        0x6t
        0x5t
        0x1ct
    .end array-data
.end method

.method performSave(Landroid/os/Bundle;)V
    .locals 4

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Landroidx/savedstate/SavedStateRegistry;->mRestoredState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    iget-object v0, p0, Landroidx/savedstate/SavedStateRegistry;->mComponents:Landroidx/arch/core/internal/SafeIterableMap;

    invoke-virtual {v0}, Landroidx/arch/core/internal/SafeIterableMap;->iteratorWithAdditions()Landroidx/arch/core/internal/SafeIterableMap$IteratorWithAdditions;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;

    invoke-interface {v0}, Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;->saveState()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    sget-object v0, Landroidx/savedstate/SavedStateRegistry;->SAVED_COMPONENTS_KEY:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public registerSavedStateProvider(Ljava/lang/String;Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;)V
    .locals 6

    iget-object v0, p0, Landroidx/savedstate/SavedStateRegistry;->mComponents:Landroidx/arch/core/internal/SafeIterableMap;

    invoke-virtual {v0, p1, p2}, Landroidx/arch/core/internal/SafeIterableMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x3b

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "b4302b"

    const-wide/32 v4, 0x2e302b3

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x31t
        0x55t
        0x45t
        0x55t
        0x56t
        0x31t
        0x16t
        0x55t
        0x47t
        0x55t
        0x62t
        0x10t
        0xdt
        0x42t
        0x5at
        0x54t
        0x57t
        0x10t
        0x42t
        0x43t
        0x5at
        0x44t
        0x5at
        0x42t
        0x16t
        0x5ct
        0x56t
        0x10t
        0x55t
        0xbt
        0x14t
        0x51t
        0x5dt
        0x10t
        0x59t
        0x7t
        0x1bt
        0x14t
        0x5at
        0x43t
        0x12t
        0x3t
        0xet
        0x46t
        0x56t
        0x51t
        0x56t
        0x1bt
        0x42t
        0x46t
        0x56t
        0x57t
        0x5bt
        0x11t
        0x16t
        0x51t
        0x41t
        0x55t
        0x56t
    .end array-data
.end method

.method public runOnNextRecreation(Ljava/lang/Class;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroidx/savedstate/SavedStateRegistry$AutoRecreated;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x0

    iget-boolean v0, p0, Landroidx/savedstate/SavedStateRegistry;->mAllowingSavingState:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/savedstate/SavedStateRegistry;->mRecreatorProvider:Landroidx/savedstate/Recreator$SavedStateProvider;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/savedstate/Recreator$SavedStateProvider;

    invoke-direct {v0, p0}, Landroidx/savedstate/Recreator$SavedStateProvider;-><init>(Landroidx/savedstate/SavedStateRegistry;)V

    iput-object v0, p0, Landroidx/savedstate/SavedStateRegistry;->mRecreatorProvider:Landroidx/savedstate/Recreator$SavedStateProvider;

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Landroidx/savedstate/SavedStateRegistry;->mRecreatorProvider:Landroidx/savedstate/Recreator$SavedStateProvider;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/savedstate/Recreator$SavedStateProvider;->add(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x5

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "9b3b62"

    const-wide v4, 0x41ce1c364e800000L    # 1.010330781E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x45

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "2a6b96"

    const/4 v4, 0x1

    invoke-static {v2, v3, v6, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x35

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "cf0c0a"

    const/16 v3, 0x3858

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x7at
        0xet
        0x52t
        0x11t
        0x45t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x12t
        0xct
        0x43t
        0x11t
        0x4dt
        0x16t
        0x5at
        0x0t
        0x40t
        0x7t
        0x19t
        0x52t
        0x57t
        0x7t
        0x57t
        0x17t
        0x55t
        0x42t
        0x12t
        0x2t
        0x59t
        0xct
        0x4at
        0x42t
        0x40t
        0x14t
        0x55t
        0x16t
        0x56t
        0x44t
        0x12t
        0x8t
        0x58t
        0x42t
        0x56t
        0x44t
        0x56t
        0x4t
        0x44t
        0x42t
        0x4dt
        0x59t
        0x12t
        0x3t
        0x53t
        0x42t
        0x58t
        0x43t
        0x46t
        0xet
        0x5bt
        0x3t
        0x4dt
        0x5ft
        0x51t
        0x0t
        0x5at
        0xet
        0x40t
        0x16t
        0x40t
        0x4t
        0x55t
        0x10t
        0x5ct
        0x57t
        0x46t
        0x4t
        0x52t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x20t
        0x7t
        0x5et
        0x43t
        0x5et
        0xet
        0x17t
        0x46t
        0x40t
        0x6t
        0x42t
        0x7t
        0xct
        0x14t
        0x5dt
        0x43t
        0x44t
        0x9t
        0xat
        0x15t
        0x10t
        0x2t
        0x53t
        0x15t
        0xat
        0x9t
        0x5et
        0x43t
        0x51t
        0x7t
        0x17t
        0x3t
        0x42t
        0x43t
        0x5ft
        0xft
        0x30t
        0x7t
        0x46t
        0x6t
        0x79t
        0xft
        0x10t
        0x12t
        0x51t
        0xdt
        0x53t
        0x4t
        0x30t
        0x12t
        0x51t
        0x17t
        0x55t
    .end array-data
.end method

.method public unregisterSavedStateProvider(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroidx/savedstate/SavedStateRegistry;->mComponents:Landroidx/arch/core/internal/SafeIterableMap;

    invoke-virtual {v0, p1}, Landroidx/arch/core/internal/SafeIterableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
