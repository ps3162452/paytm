.class final Landroidx/lifecycle/SavedStateHandleController$OnRecreation;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/savedstate/SavedStateRegistry$AutoRecreated;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/SavedStateHandleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OnRecreation"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecreated(Landroidx/savedstate/SavedStateRegistryOwner;)V
    .locals 6

    instance-of v0, p1, Landroidx/lifecycle/ViewModelStoreOwner;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroidx/lifecycle/ViewModelStoreOwner;

    invoke-interface {v0}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v1

    invoke-interface {p1}, Landroidx/savedstate/SavedStateRegistryOwner;->getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;

    move-result-object v2

    invoke-virtual {v1}, Landroidx/lifecycle/ViewModelStore;->keys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/ViewModelStore;->get(Ljava/lang/String;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    invoke-interface {p1}, Landroidx/savedstate/SavedStateRegistryOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v4

    invoke-static {v0, v2, v4}, Landroidx/lifecycle/SavedStateHandleController;->attachHandleIfNeeded(Landroidx/lifecycle/ViewModel;Landroidx/savedstate/SavedStateRegistry;Landroidx/lifecycle/Lifecycle;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroidx/lifecycle/ViewModelStore;->keys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Landroidx/lifecycle/SavedStateHandleController$OnRecreation;

    invoke-virtual {v2, v0}, Landroidx/savedstate/SavedStateRegistry;->runOnNextRecreation(Ljava/lang/Class;)V

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x66

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "305d81"

    const-wide v4, -0x3e35d894af800000L    # -8.77581985E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x7at
        0x5et
        0x41t
        0x1t
        0x4at
        0x5ft
        0x52t
        0x5ct
        0x15t
        0x1t
        0x4at
        0x43t
        0x5ct
        0x42t
        0xft
        0x44t
        0x77t
        0x5ft
        0x61t
        0x55t
        0x56t
        0x16t
        0x5dt
        0x50t
        0x47t
        0x59t
        0x5at
        0xat
        0x18t
        0x42t
        0x5bt
        0x5ft
        0x40t
        0x8t
        0x5ct
        0x11t
        0x51t
        0x55t
        0x15t
        0x16t
        0x5dt
        0x56t
        0x5at
        0x43t
        0x41t
        0x1t
        0x4at
        0x54t
        0x57t
        0x10t
        0x5at
        0xat
        0x54t
        0x48t
        0x13t
        0x5ft
        0x5bt
        0x44t
        0x5bt
        0x5et
        0x5et
        0x40t
        0x5at
        0xat
        0x5dt
        0x5ft
        0x47t
        0x43t
        0x41t
        0xct
        0x59t
        0x45t
        0x13t
        0x59t
        0x58t
        0x14t
        0x54t
        0x54t
        0x5et
        0x55t
        0x5bt
        0x10t
        0x18t
        0x67t
        0x5at
        0x55t
        0x42t
        0x29t
        0x57t
        0x55t
        0x56t
        0x5ct
        0x66t
        0x10t
        0x57t
        0x43t
        0x56t
        0x7ft
        0x42t
        0xat
        0x5dt
        0x43t
    .end array-data
.end method
