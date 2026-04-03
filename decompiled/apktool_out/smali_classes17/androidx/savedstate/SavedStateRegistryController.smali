.class public final Landroidx/savedstate/SavedStateRegistryController;
.super Ljava/lang/Object;


# instance fields
.field private final mOwner:Landroidx/savedstate/SavedStateRegistryOwner;

.field private final mRegistry:Landroidx/savedstate/SavedStateRegistry;


# direct methods
.method private constructor <init>(Landroidx/savedstate/SavedStateRegistryOwner;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/savedstate/SavedStateRegistryController;->mOwner:Landroidx/savedstate/SavedStateRegistryOwner;

    new-instance v0, Landroidx/savedstate/SavedStateRegistry;

    invoke-direct {v0}, Landroidx/savedstate/SavedStateRegistry;-><init>()V

    iput-object v0, p0, Landroidx/savedstate/SavedStateRegistryController;->mRegistry:Landroidx/savedstate/SavedStateRegistry;

    return-void
.end method

.method public static create(Landroidx/savedstate/SavedStateRegistryOwner;)Landroidx/savedstate/SavedStateRegistryController;
    .locals 1

    new-instance v0, Landroidx/savedstate/SavedStateRegistryController;

    invoke-direct {v0, p0}, Landroidx/savedstate/SavedStateRegistryController;-><init>(Landroidx/savedstate/SavedStateRegistryOwner;)V

    return-object v0
.end method


# virtual methods
.method public getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;
    .locals 1

    iget-object v0, p0, Landroidx/savedstate/SavedStateRegistryController;->mRegistry:Landroidx/savedstate/SavedStateRegistry;

    return-object v0
.end method

.method public performRestore(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Landroidx/savedstate/SavedStateRegistryController;->mOwner:Landroidx/savedstate/SavedStateRegistryOwner;

    invoke-interface {v0}, Landroidx/savedstate/SavedStateRegistryOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v1

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    if-ne v1, v2, :cond_0

    new-instance v1, Landroidx/savedstate/Recreator;

    iget-object v2, p0, Landroidx/savedstate/SavedStateRegistryController;->mOwner:Landroidx/savedstate/SavedStateRegistryOwner;

    invoke-direct {v1, v2}, Landroidx/savedstate/Recreator;-><init>(Landroidx/savedstate/SavedStateRegistryOwner;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    iget-object v1, p0, Landroidx/savedstate/SavedStateRegistryController;->mRegistry:Landroidx/savedstate/SavedStateRegistry;

    invoke-virtual {v1, v0, p1}, Landroidx/savedstate/SavedStateRegistry;->performRestore(Landroidx/lifecycle/Lifecycle;Landroid/os/Bundle;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x42

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "395455"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x61t
        0x5ct
        0x46t
        0x40t
        0x54t
        0x47t
        0x47t
        0x5ct
        0x47t
        0x14t
        0x58t
        0x40t
        0x40t
        0x4dt
        0x15t
        0x56t
        0x50t
        0x15t
        0x50t
        0x4bt
        0x50t
        0x55t
        0x41t
        0x50t
        0x57t
        0x19t
        0x5at
        0x5at
        0x59t
        0x4ct
        0x13t
        0x5dt
        0x40t
        0x46t
        0x5ct
        0x5bt
        0x54t
        0x19t
        0x5at
        0x43t
        0x5bt
        0x50t
        0x41t
        0x1et
        0x46t
        0x14t
        0x5ct
        0x5bt
        0x5at
        0x4dt
        0x5ct
        0x55t
        0x59t
        0x5ct
        0x49t
        0x58t
        0x41t
        0x5dt
        0x5at
        0x5bt
        0x13t
        0x4at
        0x41t
        0x55t
        0x52t
        0x50t
    .end array-data
.end method

.method public performSave(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroidx/savedstate/SavedStateRegistryController;->mRegistry:Landroidx/savedstate/SavedStateRegistry;

    invoke-virtual {v0, p1}, Landroidx/savedstate/SavedStateRegistry;->performSave(Landroid/os/Bundle;)V

    return-void
.end method
