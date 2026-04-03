.class abstract Landroidx/fragment/app/SpecialEffectsController;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;,
        Landroidx/fragment/app/SpecialEffectsController$Operation;,
        Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;,
        Landroidx/fragment/app/SpecialEffectsController$Operation$State;
    }
.end annotation


# instance fields
.field private final mContainer:Landroid/view/ViewGroup;

.field mIsContainerPostponed:Z

.field mOperationDirectionIsPop:Z

.field final mPendingOperations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/SpecialEffectsController$Operation;",
            ">;"
        }
    .end annotation
.end field

.field final mRunningOperations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/SpecialEffectsController$Operation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/SpecialEffectsController;->mPendingOperations:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/SpecialEffectsController;->mRunningOperations:Ljava/util/ArrayList;

    iput-boolean v1, p0, Landroidx/fragment/app/SpecialEffectsController;->mOperationDirectionIsPop:Z

    iput-boolean v1, p0, Landroidx/fragment/app/SpecialEffectsController;->mIsContainerPostponed:Z

    iput-object p1, p0, Landroidx/fragment/app/SpecialEffectsController;->mContainer:Landroid/view/ViewGroup;

    return-void
.end method

.method private enqueue(Landroidx/fragment/app/SpecialEffectsController$Operation$State;Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;Landroidx/fragment/app/FragmentStateManager;)V
    .locals 3

    iget-object v1, p0, Landroidx/fragment/app/SpecialEffectsController;->mPendingOperations:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    new-instance v0, Landroidx/core/os/CancellationSignal;

    invoke-direct {v0}, Landroidx/core/os/CancellationSignal;-><init>()V

    invoke-virtual {p3}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    invoke-direct {p0, v2}, Landroidx/fragment/app/SpecialEffectsController;->findPendingOperation(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/SpecialEffectsController$Operation;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1, p2}, Landroidx/fragment/app/SpecialEffectsController$Operation;->mergeWith(Landroidx/fragment/app/SpecialEffectsController$Operation$State;Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;)V

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    new-instance v2, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;

    invoke-direct {v2, p1, p2, p3, v0}, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;-><init>(Landroidx/fragment/app/SpecialEffectsController$Operation$State;Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;Landroidx/fragment/app/FragmentStateManager;Landroidx/core/os/CancellationSignal;)V

    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroidx/fragment/app/SpecialEffectsController$1;

    invoke-direct {v0, p0, v2}, Landroidx/fragment/app/SpecialEffectsController$1;-><init>(Landroidx/fragment/app/SpecialEffectsController;Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;)V

    invoke-virtual {v2, v0}, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->addCompletionListener(Ljava/lang/Runnable;)V

    new-instance v0, Landroidx/fragment/app/SpecialEffectsController$2;

    invoke-direct {v0, p0, v2}, Landroidx/fragment/app/SpecialEffectsController$2;-><init>(Landroidx/fragment/app/SpecialEffectsController;Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;)V

    invoke-virtual {v2, v0}, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->addCompletionListener(Ljava/lang/Runnable;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private findPendingOperation(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/SpecialEffectsController$Operation;
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/SpecialEffectsController$Operation;

    invoke-virtual {v0}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/SpecialEffectsController$Operation;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private findRunningOperation(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/SpecialEffectsController$Operation;
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController;->mRunningOperations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/SpecialEffectsController$Operation;

    invoke-virtual {v0}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/SpecialEffectsController$Operation;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getOrCreateController(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/SpecialEffectsController;
    .locals 1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->getSpecialEffectsControllerFactory()Landroidx/fragment/app/SpecialEffectsControllerFactory;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/fragment/app/SpecialEffectsController;->getOrCreateController(Landroid/view/ViewGroup;Landroidx/fragment/app/SpecialEffectsControllerFactory;)Landroidx/fragment/app/SpecialEffectsController;

    move-result-object v0

    return-object v0
.end method

.method static getOrCreateController(Landroid/view/ViewGroup;Landroidx/fragment/app/SpecialEffectsControllerFactory;)Landroidx/fragment/app/SpecialEffectsController;
    .locals 2

    sget v0, Landroidx/fragment/R$id;->special_effects_controller_view_tag:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroidx/fragment/app/SpecialEffectsController;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/fragment/app/SpecialEffectsController;

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1, p0}, Landroidx/fragment/app/SpecialEffectsControllerFactory;->createController(Landroid/view/ViewGroup;)Landroidx/fragment/app/SpecialEffectsController;

    move-result-object v0

    sget v1, Landroidx/fragment/R$id;->special_effects_controller_view_tag:I

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private updateFinalState()V
    .locals 4

    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/SpecialEffectsController$Operation;

    invoke-virtual {v0}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getLifecycleImpact()Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    move-result-object v2

    sget-object v3, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->ADDING:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-static {v2}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->from(I)Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    move-result-object v2

    sget-object v3, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->NONE:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    invoke-virtual {v0, v2, v3}, Landroidx/fragment/app/SpecialEffectsController$Operation;->mergeWith(Landroidx/fragment/app/SpecialEffectsController$Operation$State;Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method enqueueAdd(Landroidx/fragment/app/SpecialEffectsController$Operation$State;Landroidx/fragment/app/FragmentStateManager;)V
    .locals 6

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x3f

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "9c26a1"

    const/16 v3, -0x3fd2

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0xf

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "847e66"

    const-wide v4, -0x3e2ec5a7d1000000L    # -1.15614534E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->ADDING:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    invoke-direct {p0, p1, v0, p2}, Landroidx/fragment/app/SpecialEffectsController;->enqueue(Landroidx/fragment/app/SpecialEffectsController$Operation$State;Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;Landroidx/fragment/app/FragmentStateManager;)V

    return-void

    :array_0
    .array-data 1
        0x6at
        0x13t
        0x57t
        0x55t
        0x8t
        0x50t
        0x55t
        0x26t
        0x54t
        0x50t
        0x4t
        0x52t
        0x4dt
        0x10t
        0x71t
        0x59t
        0xft
        0x45t
        0x4bt
        0xct
        0x5et
        0x5at
        0x4t
        0x43t
        0x3t
        0x43t
        0x77t
        0x58t
        0x10t
        0x44t
        0x5ct
        0x16t
        0x5bt
        0x58t
        0x6t
        0x11t
        0x58t
        0x7t
        0x56t
        0x16t
        0xet
        0x41t
        0x5ct
        0x11t
        0x53t
        0x42t
        0x8t
        0x5et
        0x57t
        0x43t
        0x54t
        0x59t
        0x13t
        0x11t
        0x5ft
        0x11t
        0x53t
        0x51t
        0xct
        0x54t
        0x57t
        0x17t
        0x12t
    .end array-data

    :array_1
    .array-data 1
        0x7et
        0x46t
        0x56t
        0x2t
        0x5bt
        0x53t
        0x56t
        0x40t
        0x7at
        0x4t
        0x58t
        0x57t
        0x5ft
        0x51t
        0x45t
    .end array-data
.end method

.method enqueueHide(Landroidx/fragment/app/FragmentStateManager;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x40

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "c82721"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0xf

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "544a53"

    const/16 v3, 0x5ebc

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->GONE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    sget-object v1, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->NONE:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    invoke-direct {p0, v0, v1, p1}, Landroidx/fragment/app/SpecialEffectsController;->enqueue(Landroidx/fragment/app/SpecialEffectsController$Operation$State;Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;Landroidx/fragment/app/FragmentStateManager;)V

    return-void

    :array_0
    .array-data 1
        0x30t
        0x48t
        0x57t
        0x54t
        0x5bt
        0x50t
        0xft
        0x7dt
        0x54t
        0x51t
        0x57t
        0x52t
        0x17t
        0x4bt
        0x71t
        0x58t
        0x5ct
        0x45t
        0x11t
        0x57t
        0x5et
        0x5bt
        0x57t
        0x43t
        0x59t
        0x18t
        0x77t
        0x59t
        0x43t
        0x44t
        0x6t
        0x4dt
        0x5bt
        0x59t
        0x55t
        0x11t
        0xbt
        0x51t
        0x56t
        0x52t
        0x12t
        0x5et
        0x13t
        0x5dt
        0x40t
        0x56t
        0x46t
        0x58t
        0xct
        0x56t
        0x12t
        0x51t
        0x5dt
        0x43t
        0x43t
        0x5et
        0x40t
        0x56t
        0x55t
        0x5ct
        0x6t
        0x56t
        0x46t
        0x17t
    .end array-data

    :array_1
    .array-data 1
        0x73t
        0x46t
        0x55t
        0x6t
        0x58t
        0x56t
        0x5bt
        0x40t
        0x79t
        0x0t
        0x5bt
        0x52t
        0x52t
        0x51t
        0x46t
    .end array-data
.end method

.method enqueueRemove(Landroidx/fragment/app/FragmentStateManager;)V
    .locals 5

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x42

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "a789e1"

    const/16 v3, -0x361f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0xf

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "1ba388"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->REMOVED:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    sget-object v1, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->REMOVING:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    invoke-direct {p0, v0, v1, p1}, Landroidx/fragment/app/SpecialEffectsController;->enqueue(Landroidx/fragment/app/SpecialEffectsController$Operation$State;Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;Landroidx/fragment/app/FragmentStateManager;)V

    return-void

    nop

    :array_0
    .array-data 1
        0x32t
        0x47t
        0x5dt
        0x5at
        0xct
        0x50t
        0xdt
        0x72t
        0x5et
        0x5ft
        0x0t
        0x52t
        0x15t
        0x44t
        0x7bt
        0x56t
        0xbt
        0x45t
        0x13t
        0x58t
        0x54t
        0x55t
        0x0t
        0x43t
        0x5bt
        0x17t
        0x7dt
        0x57t
        0x14t
        0x44t
        0x4t
        0x42t
        0x51t
        0x57t
        0x2t
        0x11t
        0x13t
        0x52t
        0x55t
        0x56t
        0x13t
        0x54t
        0x41t
        0x58t
        0x48t
        0x5ct
        0x17t
        0x50t
        0x15t
        0x5et
        0x57t
        0x57t
        0x45t
        0x57t
        0xet
        0x45t
        0x18t
        0x5ft
        0x17t
        0x50t
        0x6t
        0x5at
        0x5dt
        0x57t
        0x11t
        0x11t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x77t
        0x10t
        0x0t
        0x54t
        0x55t
        0x5dt
        0x5ft
        0x16t
        0x2ct
        0x52t
        0x56t
        0x59t
        0x56t
        0x7t
        0x13t
    .end array-data
.end method

.method enqueueShow(Landroidx/fragment/app/FragmentStateManager;)V
    .locals 4

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x40

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "c73520"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0xf

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "fbfea0"

    const v3, 0x4ef72104

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    sget-object v1, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->NONE:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    invoke-direct {p0, v0, v1, p1}, Landroidx/fragment/app/SpecialEffectsController;->enqueue(Landroidx/fragment/app/SpecialEffectsController$Operation$State;Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;Landroidx/fragment/app/FragmentStateManager;)V

    return-void

    nop

    :array_0
    .array-data 1
        0x30t
        0x47t
        0x56t
        0x56t
        0x5bt
        0x51t
        0xft
        0x72t
        0x55t
        0x53t
        0x57t
        0x53t
        0x17t
        0x44t
        0x70t
        0x5at
        0x5ct
        0x44t
        0x11t
        0x58t
        0x5ft
        0x59t
        0x57t
        0x42t
        0x59t
        0x17t
        0x76t
        0x5bt
        0x43t
        0x45t
        0x6t
        0x42t
        0x5at
        0x5bt
        0x55t
        0x10t
        0x10t
        0x5ft
        0x5ct
        0x42t
        0x12t
        0x5ft
        0x13t
        0x52t
        0x41t
        0x54t
        0x46t
        0x59t
        0xct
        0x59t
        0x13t
        0x53t
        0x5dt
        0x42t
        0x43t
        0x51t
        0x41t
        0x54t
        0x55t
        0x5dt
        0x6t
        0x59t
        0x47t
        0x15t
    .end array-data

    :array_1
    .array-data 1
        0x20t
        0x10t
        0x7t
        0x2t
        0xct
        0x55t
        0x8t
        0x16t
        0x2bt
        0x4t
        0xft
        0x51t
        0x1t
        0x7t
        0x14t
    .end array-data
.end method

.method abstract executeOperations(Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroidx/fragment/app/SpecialEffectsController$Operation;",
            ">;Z)V"
        }
    .end annotation
.end method

.method executePendingOperations()V
    .locals 8

    const/4 v1, 0x0

    iget-boolean v0, p0, Landroidx/fragment/app/SpecialEffectsController;->mIsContainerPostponed:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController;->mContainer:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/SpecialEffectsController;->forceCompleteAllOperations()V

    iput-boolean v1, p0, Landroidx/fragment/app/SpecialEffectsController;->mOperationDirectionIsPop:Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/fragment/app/SpecialEffectsController;->mPendingOperations:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/fragment/app/SpecialEffectsController;->mRunningOperations:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Landroidx/fragment/app/SpecialEffectsController;->mRunningOperations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/SpecialEffectsController$Operation;

    const/4 v3, 0x2

    invoke-static {v3}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x2f

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    const-string v5, "e62a66"

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v4, 0xf

    new-array v4, v4, [B

    fill-array-data v4, :array_1

    const-string v5, "4cdd02"

    const v6, 0x4d4aae11    # 2.1252533E8f

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v0}, Landroidx/fragment/app/SpecialEffectsController$Operation;->cancel()V

    invoke-virtual {v0}, Landroidx/fragment/app/SpecialEffectsController$Operation;->isComplete()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Landroidx/fragment/app/SpecialEffectsController;->mRunningOperations:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    :try_start_1
    invoke-direct {p0}, Landroidx/fragment/app/SpecialEffectsController;->updateFinalState()V

    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController;->mPendingOperations:Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController;->mRunningOperations:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/SpecialEffectsController$Operation;

    invoke-virtual {v0}, Landroidx/fragment/app/SpecialEffectsController$Operation;->onStart()V

    goto :goto_2

    :cond_5
    iget-boolean v0, p0, Landroidx/fragment/app/SpecialEffectsController;->mOperationDirectionIsPop:Z

    invoke-virtual {p0, v2, v0}, Landroidx/fragment/app/SpecialEffectsController;->executeOperations(Ljava/util/List;Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/SpecialEffectsController;->mOperationDirectionIsPop:Z

    :cond_6
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :array_0
    .array-data 1
        0x36t
        0x46t
        0x57t
        0x2t
        0x5ft
        0x57t
        0x9t
        0x73t
        0x54t
        0x7t
        0x53t
        0x55t
        0x11t
        0x45t
        0x71t
        0xet
        0x58t
        0x42t
        0x17t
        0x59t
        0x5et
        0xdt
        0x53t
        0x44t
        0x5ft
        0x16t
        0x71t
        0x0t
        0x58t
        0x55t
        0x0t
        0x5at
        0x5et
        0x8t
        0x58t
        0x51t
        0x45t
        0x59t
        0x42t
        0x4t
        0x44t
        0x57t
        0x11t
        0x5ft
        0x5dt
        0xft
        0x16t
    .end array-data

    :array_1
    .array-data 1
        0x72t
        0x11t
        0x5t
        0x3t
        0x5dt
        0x57t
        0x5at
        0x17t
        0x29t
        0x5t
        0x5et
        0x53t
        0x53t
        0x6t
        0x16t
    .end array-data
.end method

.method forceCompleteAllOperations()V
    .locals 10

    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController;->mContainer:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v2

    iget-object v3, p0, Landroidx/fragment/app/SpecialEffectsController;->mPendingOperations:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    invoke-direct {p0}, Landroidx/fragment/app/SpecialEffectsController;->updateFinalState()V

    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/SpecialEffectsController$Operation;

    invoke-virtual {v0}, Landroidx/fragment/app/SpecialEffectsController$Operation;->onStart()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/SpecialEffectsController;->mRunningOperations:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/SpecialEffectsController$Operation;

    const/4 v1, 0x2

    invoke-static {v1}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x1a

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v6, "0099d5"

    const-wide v8, 0x41c5749e58000000L    # 7.19928496E8

    invoke-static {v1, v6, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    const-string v1, ""

    :goto_2
    :try_start_2
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x1d

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v6, "f08763"

    const-wide/32 v8, 0x216daf55

    invoke-static {v1, v6, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0xf

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v6, "13e529"

    const-wide/32 v8, -0x662aca45

    invoke-static {v1, v6, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/SpecialEffectsController$Operation;->cancel()V

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0xa

    new-array v6, v6, [B

    fill-array-data v6, :array_3

    const-string v7, "9127d4"

    const-wide/32 v8, -0x5c0a588a

    invoke-static {v6, v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroidx/fragment/app/SpecialEffectsController;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v6, 0x1c

    new-array v6, v6, [B

    fill-array-data v6, :array_4

    const-string v7, "c326c7"

    const/16 v8, -0x355c

    invoke-static {v6, v7, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/SpecialEffectsController;->mPendingOperations:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/SpecialEffectsController$Operation;

    const/4 v1, 0x2

    invoke-static {v1}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x1a

    new-array v1, v1, [B

    fill-array-data v1, :array_5

    const-string v6, "cfa507"

    const-wide/32 v8, -0x6e0c8eb6

    invoke-static {v1, v6, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_5

    const-string v1, ""

    :goto_4
    :try_start_3
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x1d

    new-array v1, v1, [B

    fill-array-data v1, :array_6

    const-string v6, "65469f"

    const-wide/32 v8, -0x5bbb7224

    invoke-static {v1, v6, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0xf

    new-array v1, v1, [B

    fill-array-data v1, :array_7

    const-string v6, "eef879"

    const-wide v8, -0x3e262bdf45800000L    # -1.733329642E9

    invoke-static {v1, v6, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {v0}, Landroidx/fragment/app/SpecialEffectsController$Operation;->cancel()V

    goto :goto_3

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0xa

    new-array v6, v6, [B

    fill-array-data v6, :array_8

    const-string v7, "d194df"

    const-wide/32 v8, 0x2e3579d8

    invoke-static {v6, v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroidx/fragment/app/SpecialEffectsController;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v6, 0x1c

    new-array v6, v6, [B

    fill-array-data v6, :array_9

    const-string v7, "727909"

    const-wide v8, 0x41d5c71a87400000L    # 1.461479965E9

    invoke-static {v6, v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_6
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :array_0
    .array-data 1
        0x63t
        0x40t
        0x5ct
        0x5at
        0xdt
        0x54t
        0x5ct
        0x75t
        0x5ft
        0x5ft
        0x1t
        0x56t
        0x44t
        0x43t
        0x7at
        0x56t
        0xat
        0x41t
        0x42t
        0x5ft
        0x55t
        0x55t
        0x1t
        0x47t
        0xat
        0x10t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x25t
        0x51t
        0x56t
        0x54t
        0x53t
        0x5ft
        0xat
        0x59t
        0x56t
        0x50t
        0x16t
        0x41t
        0x13t
        0x5et
        0x56t
        0x5et
        0x58t
        0x54t
        0x46t
        0x5ft
        0x48t
        0x52t
        0x44t
        0x52t
        0x12t
        0x59t
        0x57t
        0x59t
        0x16t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x77t
        0x41t
        0x4t
        0x52t
        0x5ft
        0x5ct
        0x5ft
        0x47t
        0x28t
        0x54t
        0x5ct
        0x58t
        0x56t
        0x56t
        0x17t
    .end array-data

    :array_3
    .array-data 1
        0x7at
        0x5et
        0x5ct
        0x43t
        0x5t
        0x5dt
        0x57t
        0x54t
        0x40t
        0x17t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x43t
        0x5at
        0x41t
        0x16t
        0xdt
        0x58t
        0x17t
        0x13t
        0x53t
        0x42t
        0x17t
        0x56t
        0x0t
        0x5bt
        0x57t
        0x52t
        0x43t
        0x43t
        0xct
        0x13t
        0x45t
        0x5ft
        0xdt
        0x53t
        0xct
        0x44t
        0x1ct
        0x16t
    .end array-data

    :array_5
    .array-data 1
        0x30t
        0x16t
        0x4t
        0x56t
        0x59t
        0x56t
        0xft
        0x23t
        0x7t
        0x53t
        0x55t
        0x54t
        0x17t
        0x15t
        0x22t
        0x5at
        0x5et
        0x43t
        0x11t
        0x9t
        0xdt
        0x59t
        0x55t
        0x45t
        0x59t
        0x46t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x75t
        0x54t
        0x5at
        0x55t
        0x5ct
        0xat
        0x5at
        0x5ct
        0x5at
        0x51t
        0x19t
        0x16t
        0x53t
        0x5bt
        0x50t
        0x5ft
        0x57t
        0x1t
        0x16t
        0x5at
        0x44t
        0x53t
        0x4bt
        0x7t
        0x42t
        0x5ct
        0x5bt
        0x58t
        0x19t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x23t
        0x17t
        0x7t
        0x5ft
        0x5at
        0x5ct
        0xbt
        0x11t
        0x2bt
        0x59t
        0x59t
        0x58t
        0x2t
        0x0t
        0x14t
    .end array-data

    :array_8
    .array-data 1
        0x27t
        0x5et
        0x57t
        0x40t
        0x5t
        0xft
        0xat
        0x54t
        0x4bt
        0x14t
    .end array-data

    nop

    :array_9
    .array-data 1
        0x17t
        0x5bt
        0x44t
        0x19t
        0x5et
        0x56t
        0x43t
        0x12t
        0x56t
        0x4dt
        0x44t
        0x58t
        0x54t
        0x5at
        0x52t
        0x5dt
        0x10t
        0x4dt
        0x58t
        0x12t
        0x40t
        0x50t
        0x5et
        0x5dt
        0x58t
        0x45t
        0x19t
        0x19t
    .end array-data
.end method

.method forcePostponedExecutePendingOperations()V
    .locals 1

    iget-boolean v0, p0, Landroidx/fragment/app/SpecialEffectsController;->mIsContainerPostponed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/SpecialEffectsController;->mIsContainerPostponed:Z

    invoke-virtual {p0}, Landroidx/fragment/app/SpecialEffectsController;->executePendingOperations()V

    :cond_0
    return-void
.end method

.method getAwaitingCompletionLifecycleImpact(Landroidx/fragment/app/FragmentStateManager;)Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-direct {p0, v1}, Landroidx/fragment/app/SpecialEffectsController;->findPendingOperation(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/SpecialEffectsController$Operation;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getLifecycleImpact()Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    move-result-object v0

    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-direct {p0, v1}, Landroidx/fragment/app/SpecialEffectsController;->findRunningOperation(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/SpecialEffectsController$Operation;

    move-result-object v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    sget-object v2, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->NONE:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    if-ne v0, v2, :cond_2

    :cond_1
    invoke-virtual {v1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getLifecycleImpact()Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public getContainer()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController;->mContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method markPostponedState()V
    .locals 6

    iget-object v2, p0, Landroidx/fragment/app/SpecialEffectsController;->mPendingOperations:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0}, Landroidx/fragment/app/SpecialEffectsController;->updateFinalState()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/SpecialEffectsController;->mIsContainerPostponed:Z

    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/SpecialEffectsController$Operation;

    invoke-virtual {v0}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v3

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v3}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->from(Landroid/view/View;)Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    move-result-object v3

    invoke-virtual {v0}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFinalState()Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    move-result-object v4

    sget-object v5, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    if-ne v4, v5, :cond_1

    sget-object v4, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    if-eq v3, v4, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isPostponed()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/fragment/app/SpecialEffectsController;->mIsContainerPostponed:Z

    :cond_0
    monitor-exit v2

    return-void

    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method updateOperationDirection(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/fragment/app/SpecialEffectsController;->mOperationDirectionIsPop:Z

    return-void
.end method
