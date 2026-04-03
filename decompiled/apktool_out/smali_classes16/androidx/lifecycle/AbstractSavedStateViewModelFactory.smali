.class public abstract Landroidx/lifecycle/AbstractSavedStateViewModelFactory;
.super Landroidx/lifecycle/ViewModelProvider$KeyedFactory;


# static fields
.field static final TAG_SAVED_STATE_HANDLE_CONTROLLER:Ljava/lang/String;


# instance fields
.field private final mDefaultArgs:Landroid/os/Bundle;

.field private final mLifecycle:Landroidx/lifecycle/Lifecycle;

.field private final mSavedStateRegistry:Landroidx/savedstate/SavedStateRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x24

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "6a1993"

    const-wide v2, -0x3e5af042e4000000L    # -1.76676494E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/lifecycle/AbstractSavedStateViewModelFactory;->TAG_SAVED_STATE_HANDLE_CONTROLLER:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x57t
        0xft
        0x55t
        0x4bt
        0x56t
        0x5at
        0x52t
        0x19t
        0x1ft
        0x55t
        0x50t
        0x55t
        0x53t
        0x2t
        0x48t
        0x5at
        0x55t
        0x56t
        0x18t
        0x12t
        0x50t
        0x4ft
        0x5ct
        0x57t
        0x45t
        0x15t
        0x50t
        0x4dt
        0x5ct
        0x1dt
        0x40t
        0xct
        0x1ft
        0x4dt
        0x58t
        0x54t
    .end array-data
.end method

.method public constructor <init>(Landroidx/savedstate/SavedStateRegistryOwner;Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/ViewModelProvider$KeyedFactory;-><init>()V

    invoke-interface {p1}, Landroidx/savedstate/SavedStateRegistryOwner;->getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;

    move-result-object v0

    iput-object v0, p0, Landroidx/lifecycle/AbstractSavedStateViewModelFactory;->mSavedStateRegistry:Landroidx/savedstate/SavedStateRegistry;

    invoke-interface {p1}, Landroidx/savedstate/SavedStateRegistryOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iput-object v0, p0, Landroidx/lifecycle/AbstractSavedStateViewModelFactory;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    iput-object p2, p0, Landroidx/lifecycle/AbstractSavedStateViewModelFactory;->mDefaultArgs:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p1}, Landroidx/lifecycle/AbstractSavedStateViewModelFactory;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x31

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "673738"

    const v3, 0x4e78fdee

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x7at
        0x58t
        0x50t
        0x56t
        0x5ft
        0x18t
        0x57t
        0x59t
        0x57t
        0x17t
        0x52t
        0x56t
        0x59t
        0x59t
        0x4at
        0x5at
        0x5ct
        0x4dt
        0x45t
        0x17t
        0x50t
        0x5bt
        0x52t
        0x4bt
        0x45t
        0x52t
        0x40t
        0x17t
        0x50t
        0x59t
        0x58t
        0x17t
        0x5dt
        0x58t
        0x47t
        0x18t
        0x54t
        0x52t
        0x13t
        0x61t
        0x5at
        0x5dt
        0x41t
        0x7at
        0x5ct
        0x53t
        0x56t
        0x54t
        0x45t
    .end array-data
.end method

.method public final create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/lifecycle/AbstractSavedStateViewModelFactory;->mSavedStateRegistry:Landroidx/savedstate/SavedStateRegistry;

    iget-object v1, p0, Landroidx/lifecycle/AbstractSavedStateViewModelFactory;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    iget-object v2, p0, Landroidx/lifecycle/AbstractSavedStateViewModelFactory;->mDefaultArgs:Landroid/os/Bundle;

    invoke-static {v0, v1, p1, v2}, Landroidx/lifecycle/SavedStateHandleController;->create(Landroidx/savedstate/SavedStateRegistry;Landroidx/lifecycle/Lifecycle;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/lifecycle/SavedStateHandleController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/SavedStateHandleController;->getHandle()Landroidx/lifecycle/SavedStateHandle;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1}, Landroidx/lifecycle/AbstractSavedStateViewModelFactory;->create(Ljava/lang/String;Ljava/lang/Class;Landroidx/lifecycle/SavedStateHandle;)Landroidx/lifecycle/ViewModel;

    move-result-object v1

    sget-object v2, Landroidx/lifecycle/AbstractSavedStateViewModelFactory;->TAG_SAVED_STATE_HANDLE_CONTROLLER:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroidx/lifecycle/ViewModel;->setTagIfAbsent(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method protected abstract create(Ljava/lang/String;Ljava/lang/Class;Landroidx/lifecycle/SavedStateHandle;)Landroidx/lifecycle/ViewModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroidx/lifecycle/SavedStateHandle;",
            ")TT;"
        }
    .end annotation
.end method

.method onRequery(Landroidx/lifecycle/ViewModel;)V
    .locals 2

    iget-object v0, p0, Landroidx/lifecycle/AbstractSavedStateViewModelFactory;->mSavedStateRegistry:Landroidx/savedstate/SavedStateRegistry;

    iget-object v1, p0, Landroidx/lifecycle/AbstractSavedStateViewModelFactory;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    invoke-static {p1, v0, v1}, Landroidx/lifecycle/SavedStateHandleController;->attachHandleIfNeeded(Landroidx/lifecycle/ViewModel;Landroidx/savedstate/SavedStateRegistry;Landroidx/lifecycle/Lifecycle;)V

    return-void
.end method
