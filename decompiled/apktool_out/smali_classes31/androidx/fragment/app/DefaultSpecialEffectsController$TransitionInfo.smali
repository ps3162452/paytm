.class Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;
.super Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/DefaultSpecialEffectsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransitionInfo"
.end annotation


# instance fields
.field private final mOverlapAllowed:Z

.field private final mSharedElementTransition:Ljava/lang/Object;

.field private final mTransition:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/core/os/CancellationSignal;ZZ)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;-><init>(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/core/os/CancellationSignal;)V

    invoke-virtual {p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFinalState()Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    move-result-object v0

    sget-object v1, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    if-ne v0, v1, :cond_2

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mTransition:Ljava/lang/Object;

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getAllowReturnTransitionOverlap()Z

    move-result v0

    :goto_1
    iput-boolean v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mOverlapAllowed:Z

    :goto_2
    if-eqz p4, :cond_5

    if-eqz p3, :cond_4

    invoke-virtual {p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mSharedElementTransition:Ljava/lang/Object;

    :goto_3
    return-void

    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getAllowEnterTransitionOverlap()Z

    move-result v0

    goto :goto_1

    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    move-result-object v0

    :goto_4
    iput-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mTransition:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mOverlapAllowed:Z

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_4

    :cond_4
    invoke-virtual {p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mSharedElementTransition:Ljava/lang/Object;

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mSharedElementTransition:Ljava/lang/Object;

    goto :goto_3
.end method

.method private getHandlingImpl(Ljava/lang/Object;)Landroidx/fragment/app/FragmentTransitionImpl;
    .locals 6

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroidx/fragment/app/FragmentTransition;->PLATFORM_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    if-eqz v0, :cond_1

    sget-object v0, Landroidx/fragment/app/FragmentTransition;->PLATFORM_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransitionImpl;->canHandle(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroidx/fragment/app/FragmentTransition;->PLATFORM_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    goto :goto_0

    :cond_1
    sget-object v0, Landroidx/fragment/app/FragmentTransition;->SUPPORT_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    if-eqz v0, :cond_2

    sget-object v0, Landroidx/fragment/app/FragmentTransition;->SUPPORT_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransitionImpl;->canHandle(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroidx/fragment/app/FragmentTransition;->SUPPORT_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0xb

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "4975f9"

    const-wide/32 v4, 0x2f869465

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0xe

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "fbaf50"

    const/16 v3, -0x115c

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getOperation()Landroidx/fragment/app/SpecialEffectsController$Operation;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3b

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "faf71f"

    const v3, 0x4ec84ce2

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :array_0
    .array-data 1
        0x60t
        0x4bt
        0x56t
        0x5bt
        0x15t
        0x50t
        0x40t
        0x50t
        0x58t
        0x5bt
        0x46t
    .end array-data

    :array_1
    .array-data 1
        0x46t
        0x4t
        0xet
        0x14t
        0x15t
        0x56t
        0x14t
        0x3t
        0x6t
        0xbt
        0x50t
        0x5et
        0x12t
        0x42t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x46t
        0x8t
        0x15t
        0x17t
        0x5ft
        0x9t
        0x12t
        0x41t
        0x7t
        0x17t
        0x47t
        0x7t
        0xat
        0x8t
        0x2t
        0x17t
        0x57t
        0x14t
        0x7t
        0xct
        0x3t
        0x40t
        0x5et
        0x14t
        0xdt
        0x41t
        0x32t
        0x45t
        0x50t
        0x8t
        0x15t
        0x8t
        0x12t
        0x5et
        0x5et
        0x8t
        0x46t
        0xet
        0x14t
        0x17t
        0x70t
        0x8t
        0x2t
        0x13t
        0x9t
        0x5et
        0x55t
        0x3et
        0x46t
        0x35t
        0x14t
        0x56t
        0x5ft
        0x15t
        0xft
        0x15t
        0xft
        0x58t
        0x5ft
    .end array-data
.end method


# virtual methods
.method getHandlingImpl()Landroidx/fragment/app/FragmentTransitionImpl;
    .locals 6

    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mTransition:Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getHandlingImpl(Ljava/lang/Object;)Landroidx/fragment/app/FragmentTransitionImpl;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mSharedElementTransition:Ljava/lang/Object;

    invoke-direct {p0, v1}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getHandlingImpl(Ljava/lang/Object;)Landroidx/fragment/app/FragmentTransitionImpl;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-ne v0, v1, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x4f

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "293364"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getOperation()Landroidx/fragment/app/SpecialEffectsController$Operation;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x15

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "a03d5b"

    const-wide v4, -0x3e2c6c4e24c00000L    # -1.313785709E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mTransition:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x4c

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "a6b32f"

    const-wide v4, -0x3e54d2b5a8000000L    # -2.27976492E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mSharedElementTransition:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    move-object v0, v1

    goto :goto_0

    :array_0
    .array-data 1
        0x7ft
        0x50t
        0x4bt
        0x5at
        0x58t
        0x53t
        0x12t
        0x5ft
        0x41t
        0x52t
        0x5bt
        0x51t
        0x45t
        0x56t
        0x41t
        0x58t
        0x16t
        0x40t
        0x40t
        0x58t
        0x5dt
        0x40t
        0x5ft
        0x40t
        0x5bt
        0x56t
        0x5dt
        0x40t
        0x16t
        0x55t
        0x5ct
        0x5dt
        0x13t
        0x72t
        0x58t
        0x50t
        0x40t
        0x56t
        0x5at
        0x57t
        0x6et
        0x14t
        0x46t
        0x4bt
        0x52t
        0x5dt
        0x45t
        0x5dt
        0x46t
        0x50t
        0x5ct
        0x5dt
        0x45t
        0x14t
        0x5bt
        0x4at
        0x13t
        0x5dt
        0x59t
        0x40t
        0x12t
        0x58t
        0x5ft
        0x5ft
        0x59t
        0x43t
        0x57t
        0x5dt
        0x1dt
        0x13t
        0x70t
        0x46t
        0x53t
        0x5et
        0x5et
        0x56t
        0x58t
        0x40t
        0x12t
    .end array-data

    :array_1
    .array-data 1
        0x41t
        0x42t
        0x56t
        0x10t
        0x40t
        0x10t
        0xft
        0x55t
        0x57t
        0x44t
        0x61t
        0x10t
        0x0t
        0x5et
        0x40t
        0xdt
        0x41t
        0xbt
        0xet
        0x5et
        0x13t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x41t
        0x41t
        0xat
        0x5at
        0x51t
        0xet
        0x41t
        0x43t
        0x11t
        0x56t
        0x41t
        0x46t
        0x0t
        0x16t
        0x6t
        0x5at
        0x54t
        0x0t
        0x4t
        0x44t
        0x7t
        0x5dt
        0x46t
        0x46t
        0x35t
        0x44t
        0x3t
        0x5dt
        0x41t
        0xft
        0x15t
        0x5ft
        0xdt
        0x5dt
        0x12t
        0x46t
        0x15t
        0x4ft
        0x12t
        0x56t
        0x12t
        0x12t
        0x9t
        0x57t
        0xct
        0x13t
        0x5bt
        0x12t
        0x12t
        0x16t
        0x11t
        0x5bt
        0x53t
        0x14t
        0x4t
        0x52t
        0x42t
        0x56t
        0x5et
        0x3t
        0xct
        0x53t
        0xct
        0x47t
        0x12t
        0x12t
        0x13t
        0x57t
        0xct
        0x40t
        0x5bt
        0x12t
        0x8t
        0x59t
        0xct
        0x13t
    .end array-data
.end method

.method public getSharedElementTransition()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mSharedElementTransition:Ljava/lang/Object;

    return-object v0
.end method

.method getTransition()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mTransition:Ljava/lang/Object;

    return-object v0
.end method

.method public hasSharedElementTransition()Z
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mSharedElementTransition:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isOverlapAllowed()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mOverlapAllowed:Z

    return v0
.end method
