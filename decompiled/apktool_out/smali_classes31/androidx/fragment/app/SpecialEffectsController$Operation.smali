.class Landroidx/fragment/app/SpecialEffectsController$Operation;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/SpecialEffectsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Operation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;,
        Landroidx/fragment/app/SpecialEffectsController$Operation$State;
    }
.end annotation


# instance fields
.field private final mCompletionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mFinalState:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

.field private final mFragment:Landroidx/fragment/app/Fragment;

.field private mIsCanceled:Z

.field private mIsComplete:Z

.field private mLifecycleImpact:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

.field private final mSpecialEffectsSignals:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroidx/core/os/CancellationSignal;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/fragment/app/SpecialEffectsController$Operation$State;Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;Landroidx/fragment/app/Fragment;Landroidx/core/os/CancellationSignal;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mCompletionListeners:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mSpecialEffectsSignals:Ljava/util/HashSet;

    iput-boolean v1, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mIsCanceled:Z

    iput-boolean v1, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mIsComplete:Z

    iput-object p1, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mFinalState:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    iput-object p2, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mLifecycleImpact:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    iput-object p3, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mFragment:Landroidx/fragment/app/Fragment;

    new-instance v0, Landroidx/fragment/app/SpecialEffectsController$Operation$1;

    invoke-direct {v0, p0}, Landroidx/fragment/app/SpecialEffectsController$Operation$1;-><init>(Landroidx/fragment/app/SpecialEffectsController$Operation;)V

    invoke-virtual {p4, v0}, Landroidx/core/os/CancellationSignal;->setOnCancelListener(Landroidx/core/os/CancellationSignal$OnCancelListener;)V

    return-void
.end method


# virtual methods
.method final addCompletionListener(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mCompletionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final cancel()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/SpecialEffectsController$Operation;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mIsCanceled:Z

    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mSpecialEffectsSignals:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/SpecialEffectsController$Operation;->complete()V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mSpecialEffectsSignals:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/os/CancellationSignal;

    invoke-virtual {v0}, Landroidx/core/os/CancellationSignal;->cancel()V

    goto :goto_1
.end method

.method public complete()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mIsComplete:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x1a

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "179ef2"

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x15

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "c855d2"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xf

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "55881a"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iput-boolean v4, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mIsComplete:Z

    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mCompletionListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :array_0
    .array-data 1
        0x62t
        0x47t
        0x5ct
        0x6t
        0xft
        0x53t
        0x5dt
        0x72t
        0x5ft
        0x3t
        0x3t
        0x51t
        0x45t
        0x44t
        0x7at
        0xat
        0x8t
        0x46t
        0x43t
        0x58t
        0x55t
        0x9t
        0x3t
        0x40t
        0xbt
        0x17t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x43t
        0x50t
        0x54t
        0x46t
        0x44t
        0x51t
        0x2t
        0x54t
        0x59t
        0x50t
        0x0t
        0x12t
        0x0t
        0x57t
        0x58t
        0x45t
        0x8t
        0x57t
        0x17t
        0x5dt
        0x1bt
    .end array-data

    nop

    :array_2
    .array-data 1
        0x73t
        0x47t
        0x59t
        0x5ft
        0x5ct
        0x4t
        0x5bt
        0x41t
        0x75t
        0x59t
        0x5ft
        0x0t
        0x52t
        0x50t
        0x4at
    .end array-data
.end method

.method public final completeSpecialEffect(Landroidx/core/os/CancellationSignal;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mSpecialEffectsSignals:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mSpecialEffectsSignals:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/SpecialEffectsController$Operation;->complete()V

    :cond_0
    return-void
.end method

.method public getFinalState()Landroidx/fragment/app/SpecialEffectsController$Operation$State;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mFinalState:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    return-object v0
.end method

.method public final getFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mFragment:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method getLifecycleImpact()Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mLifecycleImpact:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    return-object v0
.end method

.method final isCanceled()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mIsCanceled:Z

    return v0
.end method

.method final isComplete()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mIsComplete:Z

    return v0
.end method

.method public final markStartedSpecialEffect(Landroidx/core/os/CancellationSignal;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/SpecialEffectsController$Operation;->onStart()V

    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mSpecialEffectsSignals:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final mergeWith(Landroidx/fragment/app/SpecialEffectsController$Operation$State;Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;)V
    .locals 10

    const/16 v2, 0x27

    const/4 v9, 0x2

    const/16 v8, 0xf

    const/4 v7, 0x0

    const/4 v6, 0x1

    sget-object v0, Landroidx/fragment/app/SpecialEffectsController$3;->$SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$LifecycleImpact:[I

    invoke-virtual {p2}, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mFinalState:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    sget-object v1, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->REMOVED:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    if-eq v0, v1, :cond_0

    invoke-static {v9}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v1, v2, [B

    fill-array-data v1, :array_0

    const-string v2, "b11001"

    const-wide v4, -0x3e63139534000000L    # -1.21313971E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-array v1, v8, [B

    fill-array-data v1, :array_1

    const-string v2, "af6369"

    invoke-static {v1, v2, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mFinalState:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "dc1036"

    const v3, -0x312a758f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-array v1, v9, [B

    fill-array-data v1, :array_3

    const-string v2, "350574"

    invoke-static {v1, v2, v7, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v8, [B

    fill-array-data v1, :array_4

    const-string v2, "f30ff1"

    invoke-static {v1, v2, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-object p1, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mFinalState:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    goto :goto_0

    :pswitch_1
    invoke-static {v9}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v1, v2, [B

    fill-array-data v1, :array_5

    const-string v2, "ac6f68"

    const-wide v4, -0x3e25ddd13ac00000L    # -1.753791253E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-array v1, v8, [B

    fill-array-data v1, :array_6

    const-string v2, "9bf80b"

    invoke-static {v1, v2, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mFinalState:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x21

    new-array v1, v1, [B

    fill-array-data v1, :array_7

    const-string v2, "631c1a"

    const-wide/32 v4, -0x63705f37

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mLifecycleImpact:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0xd

    new-array v1, v1, [B

    fill-array-data v1, :array_8

    const-string v2, "8700a0"

    invoke-static {v1, v2, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v8, [B

    fill-array-data v1, :array_9

    const-string v2, "961a3e"

    const-wide/32 v4, -0x66914b53

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object v0, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->REMOVED:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    iput-object v0, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mFinalState:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    sget-object v0, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->REMOVING:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    iput-object v0, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mLifecycleImpact:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mFinalState:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    sget-object v1, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->REMOVED:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    if-ne v0, v1, :cond_0

    invoke-static {v9}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v1, v2, [B

    fill-array-data v1, :array_a

    const-string v2, "565bba"

    invoke-static {v1, v2, v7, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x36

    new-array v1, v1, [B

    fill-array-data v1, :array_b

    const-string v2, "f33abd"

    const-wide v4, 0x41dba5289e400000L    # 1.855234681E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mLifecycleImpact:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0xb

    new-array v1, v1, [B

    fill-array-data v1, :array_c

    const-string v2, "0a2580"

    invoke-static {v1, v2, v7, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v8, [B

    fill-array-data v1, :array_d

    const-string v2, "cda8f8"

    const-wide/32 v4, -0x3c36d886

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-object v0, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    iput-object v0, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mFinalState:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    sget-object v0, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->ADDING:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    iput-object v0, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mLifecycleImpact:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x31t
        0x41t
        0x54t
        0x53t
        0x59t
        0x50t
        0xet
        0x74t
        0x57t
        0x56t
        0x55t
        0x52t
        0x16t
        0x42t
        0x72t
        0x5ft
        0x5et
        0x45t
        0x10t
        0x5et
        0x5dt
        0x5ct
        0x55t
        0x43t
        0x58t
        0x11t
        0x77t
        0x5ft
        0x42t
        0x11t
        0x4t
        0x43t
        0x50t
        0x57t
        0x5dt
        0x54t
        0xct
        0x45t
        0x11t
    .end array-data

    :array_1
    .array-data 1
        0x41t
        0xbt
        0x70t
        0x5at
        0x58t
        0x58t
        0xdt
        0x35t
        0x42t
        0x52t
        0x42t
        0x5ct
        0x41t
        0x5bt
        0x16t
    .end array-data

    :array_2
    .array-data 1
        0x44t
        0x4et
        0xft
        0x10t
    .end array-data

    :array_3
    .array-data 1
        0x1dt
        0x15t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x20t
        0x41t
        0x51t
        0x1t
        0xbt
        0x54t
        0x8t
        0x47t
        0x7dt
        0x7t
        0x8t
        0x50t
        0x1t
        0x56t
        0x42t
    .end array-data

    :array_5
    .array-data 1
        0x32t
        0x13t
        0x53t
        0x5t
        0x5ft
        0x59t
        0xdt
        0x26t
        0x50t
        0x0t
        0x53t
        0x5bt
        0x15t
        0x10t
        0x75t
        0x9t
        0x58t
        0x4ct
        0x13t
        0xct
        0x5at
        0xat
        0x53t
        0x4at
        0x5bt
        0x43t
        0x70t
        0x9t
        0x44t
        0x18t
        0x7t
        0x11t
        0x57t
        0x1t
        0x5bt
        0x5dt
        0xft
        0x17t
        0x16t
    .end array-data

    :array_6
    .array-data 1
        0x19t
        0xft
        0x20t
        0x51t
        0x5et
        0x3t
        0x55t
        0x31t
        0x12t
        0x59t
        0x44t
        0x7t
        0x19t
        0x5ft
        0x46t
    .end array-data

    :array_7
    .array-data 1
        0x16t
        0x1et
        0xft
        0x43t
        0x63t
        0x24t
        0x7bt
        0x7ct
        0x67t
        0x26t
        0x75t
        0x4ft
        0x16t
        0x5et
        0x7dt
        0xat
        0x57t
        0x4t
        0x55t
        0x4at
        0x52t
        0xft
        0x54t
        0x28t
        0x5bt
        0x43t
        0x50t
        0x0t
        0x45t
        0x41t
        0x16t
        0xet
        0x11t
    .end array-data

    nop

    :array_8
    .array-data 1
        0x18t
        0x43t
        0x5ft
        0x10t
        0x33t
        0x75t
        0x75t
        0x78t
        0x66t
        0x79t
        0x2ft
        0x77t
        0x16t
    .end array-data

    nop

    :array_9
    .array-data 1
        0x7ft
        0x44t
        0x50t
        0x6t
        0x5et
        0x0t
        0x57t
        0x42t
        0x7ct
        0x0t
        0x5dt
        0x4t
        0x5et
        0x53t
        0x43t
    .end array-data

    :array_a
    .array-data 1
        0x66t
        0x46t
        0x50t
        0x1t
        0xbt
        0x0t
        0x59t
        0x73t
        0x53t
        0x4t
        0x7t
        0x2t
        0x41t
        0x45t
        0x76t
        0xdt
        0xct
        0x15t
        0x47t
        0x59t
        0x59t
        0xet
        0x7t
        0x13t
        0xft
        0x16t
        0x73t
        0xdt
        0x10t
        0x41t
        0x53t
        0x44t
        0x54t
        0x5t
        0xft
        0x4t
        0x5bt
        0x42t
        0x15t
    .end array-data

    :array_b
    .array-data 1
        0x46t
        0x5et
        0x75t
        0x8t
        0xct
        0x5t
        0xat
        0x60t
        0x47t
        0x0t
        0x16t
        0x1t
        0x46t
        0xet
        0x13t
        0x33t
        0x27t
        0x29t
        0x29t
        0x65t
        0x76t
        0x25t
        0x42t
        0x49t
        0x58t
        0x13t
        0x65t
        0x28t
        0x31t
        0x2dt
        0x24t
        0x7ft
        0x76t
        0x4ft
        0x42t
        0x9t
        0x2at
        0x5at
        0x55t
        0x4t
        0x1t
        0x1dt
        0x5t
        0x5ft
        0x56t
        0x28t
        0xft
        0x14t
        0x7t
        0x50t
        0x47t
        0x41t
        0x5ft
        0x44t
    .end array-data

    nop

    :array_c
    .array-data 1
        0x10t
        0x15t
        0x5dt
        0x15t
        0x79t
        0x74t
        0x74t
        0x28t
        0x7ct
        0x72t
        0x16t
    .end array-data

    :array_d
    .array-data 1
        0x25t
        0x16t
        0x0t
        0x5ft
        0xbt
        0x5dt
        0xdt
        0x10t
        0x2ct
        0x59t
        0x8t
        0x59t
        0x4t
        0x1t
        0x13t
    .end array-data
.end method

.method onStart()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    const/16 v9, 0x1f

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0xa

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "50dc87"

    const-wide/32 v4, -0x72c35b86

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v7, [B

    const/16 v2, 0x19

    aput-byte v2, v1, v6

    const-string v2, "b99de3"

    const-wide/32 v4, 0x672dbca1

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v8, [B

    fill-array-data v1, :array_1

    const-string v2, "5a5f68"

    invoke-static {v1, v2, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v7, [B

    const/16 v2, 0x43

    aput-byte v2, v1, v6

    const-string v2, "88ac7f"

    const-wide/32 v4, 0x7c5f9c0e

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xe

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "600cad"

    const v3, -0x3104a303

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mFinalState:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-array v1, v8, [B

    fill-array-data v1, :array_3

    const-string v2, "5a7419"

    const-wide/32 v4, -0x12133913

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v7, [B

    aput-byte v9, v1, v6

    const-string v2, "d2d9ff"

    const-wide v4, -0x3e5743946c000000L    # -2.07500746E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x13

    new-array v1, v1, [B

    fill-array-data v1, :array_4

    const-string v2, "3e4dff"

    const v3, 0x4eca1f03

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mLifecycleImpact:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-array v1, v8, [B

    fill-array-data v1, :array_5

    const-string v2, "488d1a"

    const-wide/32 v4, 0x7229a4b8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v7, [B

    const/16 v2, 0x1a

    aput-byte v2, v1, v6

    const-string v2, "a06b7f"

    const-wide/32 v4, -0x5eabd63c

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_6

    const-string v2, "7c11b0"

    invoke-static {v1, v2, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-array v1, v7, [B

    aput-byte v9, v1, v6

    const-string v2, "b6e3b5"

    const-wide v4, -0x3e42a57d09000000L    # -4.92471031E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x7at
        0x40t
        0x1t
        0x11t
        0x59t
        0x43t
        0x5ct
        0x5ft
        0xat
        0x43t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x48t
        0x41t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x5bt
        0x76t
        0x59t
        0xdt
        0x0t
        0x8t
        0x65t
        0x44t
        0x51t
        0x17t
        0x4t
        0x44t
        0xbt
        0x10t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x48t
        0x41t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x5et
        0x29t
        0x5dt
        0x2t
        0x3t
        0x5t
        0x4at
        0x6t
        0x58t
        0x1t
        0x2ft
        0xbt
        0x43t
        0x4t
        0x57t
        0x10t
        0x46t
        0x5bt
        0x13t
    .end array-data

    :array_5
    .array-data 1
        0x49t
        0x18t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x5at
        0x25t
        0x43t
        0x50t
        0x5t
        0x5dt
        0x52t
        0xdt
        0x45t
        0x11t
        0x5ft
        0x10t
    .end array-data
.end method
