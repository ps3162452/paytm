.class final Landroidx/lifecycle/SavedStateHandleController;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/SavedStateHandleController$OnRecreation;
    }
.end annotation


# static fields
.field static final TAG_SAVED_STATE_HANDLE_CONTROLLER:Ljava/lang/String;


# instance fields
.field private final mHandle:Landroidx/lifecycle/SavedStateHandle;

.field private mIsAttached:Z

.field private final mKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/16 v0, 0x24

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "f82d7a"

    invoke-static {v0, v1, v2, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/lifecycle/SavedStateHandleController;->TAG_SAVED_STATE_HANDLE_CONTROLLER:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x7t
        0x56t
        0x56t
        0x16t
        0x58t
        0x8t
        0x2t
        0x40t
        0x1ct
        0x8t
        0x5et
        0x7t
        0x3t
        0x5bt
        0x4bt
        0x7t
        0x5bt
        0x4t
        0x48t
        0x4bt
        0x53t
        0x12t
        0x52t
        0x5t
        0x15t
        0x4ct
        0x53t
        0x10t
        0x52t
        0x4ft
        0x10t
        0x55t
        0x1ct
        0x10t
        0x56t
        0x6t
    .end array-data
.end method

.method constructor <init>(Ljava/lang/String;Landroidx/lifecycle/SavedStateHandle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/lifecycle/SavedStateHandleController;->mIsAttached:Z

    iput-object p1, p0, Landroidx/lifecycle/SavedStateHandleController;->mKey:Ljava/lang/String;

    iput-object p2, p0, Landroidx/lifecycle/SavedStateHandleController;->mHandle:Landroidx/lifecycle/SavedStateHandle;

    return-void
.end method

.method static attachHandleIfNeeded(Landroidx/lifecycle/ViewModel;Landroidx/savedstate/SavedStateRegistry;Landroidx/lifecycle/Lifecycle;)V
    .locals 2

    sget-object v0, Landroidx/lifecycle/SavedStateHandleController;->TAG_SAVED_STATE_HANDLE_CONTROLLER:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/ViewModel;->getTag(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/SavedStateHandleController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/lifecycle/SavedStateHandleController;->isAttached()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/SavedStateHandleController;->attachToLifecycle(Landroidx/savedstate/SavedStateRegistry;Landroidx/lifecycle/Lifecycle;)V

    invoke-static {p1, p2}, Landroidx/lifecycle/SavedStateHandleController;->tryToAddRecreator(Landroidx/savedstate/SavedStateRegistry;Landroidx/lifecycle/Lifecycle;)V

    :cond_0
    return-void
.end method

.method static create(Landroidx/savedstate/SavedStateRegistry;Landroidx/lifecycle/Lifecycle;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/lifecycle/SavedStateHandleController;
    .locals 2

    new-instance v0, Landroidx/lifecycle/SavedStateHandleController;

    invoke-virtual {p0, p2}, Landroidx/savedstate/SavedStateRegistry;->consumeRestoredStateForKey(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1, p3}, Landroidx/lifecycle/SavedStateHandle;->createHandle(Landroid/os/Bundle;Landroid/os/Bundle;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Landroidx/lifecycle/SavedStateHandleController;-><init>(Ljava/lang/String;Landroidx/lifecycle/SavedStateHandle;)V

    invoke-virtual {v0, p0, p1}, Landroidx/lifecycle/SavedStateHandleController;->attachToLifecycle(Landroidx/savedstate/SavedStateRegistry;Landroidx/lifecycle/Lifecycle;)V

    invoke-static {p0, p1}, Landroidx/lifecycle/SavedStateHandleController;->tryToAddRecreator(Landroidx/savedstate/SavedStateRegistry;Landroidx/lifecycle/Lifecycle;)V

    return-object v0
.end method

.method private static tryToAddRecreator(Landroidx/savedstate/SavedStateRegistry;Landroidx/lifecycle/Lifecycle;)V
    .locals 2

    invoke-virtual {p1}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    if-eq v0, v1, :cond_0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-class v0, Landroidx/lifecycle/SavedStateHandleController$OnRecreation;

    invoke-virtual {p0, v0}, Landroidx/savedstate/SavedStateRegistry;->runOnNextRecreation(Ljava/lang/Class;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroidx/lifecycle/SavedStateHandleController$1;

    invoke-direct {v0, p1, p0}, Landroidx/lifecycle/SavedStateHandleController$1;-><init>(Landroidx/lifecycle/Lifecycle;Landroidx/savedstate/SavedStateRegistry;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    goto :goto_0
.end method


# virtual methods
.method attachToLifecycle(Landroidx/savedstate/SavedStateRegistry;Landroidx/lifecycle/Lifecycle;)V
    .locals 5

    const/4 v4, 0x1

    iget-boolean v0, p0, Landroidx/lifecycle/SavedStateHandleController;->mIsAttached:Z

    if-nez v0, :cond_0

    iput-boolean v4, p0, Landroidx/lifecycle/SavedStateHandleController;->mIsAttached:Z

    invoke-virtual {p2, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    iget-object v0, p0, Landroidx/lifecycle/SavedStateHandleController;->mKey:Ljava/lang/String;

    iget-object v1, p0, Landroidx/lifecycle/SavedStateHandleController;->mHandle:Landroidx/lifecycle/SavedStateHandle;

    invoke-virtual {v1}, Landroidx/lifecycle/SavedStateHandle;->savedStateProvider()Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/savedstate/SavedStateRegistry;->registerSavedStateProvider(Ljava/lang/String;Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x22

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "8d8f86"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x79t
        0x8t
        0x4at
        0x3t
        0x59t
        0x52t
        0x41t
        0x44t
        0x59t
        0x12t
        0x4ct
        0x57t
        0x5bt
        0xct
        0x5dt
        0x2t
        0x18t
        0x42t
        0x57t
        0x44t
        0x54t
        0xft
        0x5et
        0x53t
        0x5bt
        0x1dt
        0x5bt
        0xat
        0x5dt
        0x79t
        0x4ft
        0xat
        0x5dt
        0x14t
    .end array-data
.end method

.method getHandle()Landroidx/lifecycle/SavedStateHandle;
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/SavedStateHandleController;->mHandle:Landroidx/lifecycle/SavedStateHandle;

    return-object v0
.end method

.method isAttached()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/lifecycle/SavedStateHandleController;->mIsAttached:Z

    return v0
.end method

.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/lifecycle/SavedStateHandleController;->mIsAttached:Z

    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method
