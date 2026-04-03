.class Landroidx/fragment/app/DefaultSpecialEffectsController;
.super Landroidx/fragment/app/SpecialEffectsController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;,
        Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;,
        Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/fragment/app/SpecialEffectsController;-><init>(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private startAnimations(Ljava/util/List;Ljava/util/List;ZLjava/util/Map;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroidx/fragment/app/SpecialEffectsController$Operation;",
            ">;Z",
            "Ljava/util/Map",
            "<",
            "Landroidx/fragment/app/SpecialEffectsController$Operation;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/DefaultSpecialEffectsController;->getContainer()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v9

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v5, v2

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;

    invoke-virtual {v8}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->isVisibilityUnchanged()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v8}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->completeSpecialEffect()V

    goto :goto_0

    :cond_0
    invoke-virtual {v8, v9}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->getAnimation(Landroid/content/Context;)Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {v8}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->completeSpecialEffect()V

    goto :goto_0

    :cond_1
    iget-object v12, v2, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    if-nez v12, :cond_2

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v8}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->getOperation()Landroidx/fragment/app/SpecialEffectsController$Operation;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, p4

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x2

    invoke-static {v3}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x19

    new-array v6, v6, [B

    fill-array-data v6, :array_0

    const-string v7, "79b8eb"

    const-wide v12, 0x41dd01e765000000L    # 1.946656148E9

    invoke-static {v6, v7, v12, v13}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v6, "d6b81e"

    const-wide v12, 0x41a09c4000000000L    # 1.39337728E8

    invoke-static {v2, v6, v12, v13}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xf

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v6, "107713"

    const v7, -0x31f2fb86

    invoke-static {v2, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v8}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->completeSpecialEffect()V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v7}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFinalState()Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    move-result-object v3

    sget-object v5, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->GONE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    if-ne v3, v5, :cond_6

    const/4 v6, 0x1

    :goto_1
    if-eqz v6, :cond_5

    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_5
    iget-object v5, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    new-instance v2, Landroidx/fragment/app/DefaultSpecialEffectsController$2;

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Landroidx/fragment/app/DefaultSpecialEffectsController$2;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroid/view/ViewGroup;Landroid/view/View;ZLandroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;)V

    invoke-virtual {v12, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v12, v5}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v12}, Landroid/animation/Animator;->start()V

    invoke-virtual {v8}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->getSignal()Landroidx/core/os/CancellationSignal;

    move-result-object v2

    new-instance v3, Landroidx/fragment/app/DefaultSpecialEffectsController$3;

    invoke-direct {v3, p0, v12}, Landroidx/fragment/app/DefaultSpecialEffectsController$3;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroid/animation/Animator;)V

    invoke-virtual {v2, v3}, Landroidx/core/os/CancellationSignal;->setOnCancelListener(Landroidx/core/os/CancellationSignal$OnCancelListener;)V

    const/4 v2, 0x1

    move v5, v2

    goto/16 :goto_0

    :cond_6
    const/4 v6, 0x0

    goto :goto_1

    :cond_7
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;

    invoke-virtual {v2}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->getOperation()Landroidx/fragment/app/SpecialEffectsController$Operation;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-eqz p3, :cond_9

    const/4 v7, 0x2

    invoke-static {v7}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v8, 0x1a

    new-array v8, v8, [B

    fill-array-data v8, :array_3

    const-string v10, "ab3881"

    const-wide v12, -0x3e301cb83b800000L    # -1.069977481E9

    invoke-static {v8, v10, v12, v13}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x30

    new-array v3, v3, [B

    fill-array-data v3, :array_4

    const-string v8, "fc872f"

    const/16 v10, 0x1e46

    invoke-static {v3, v8, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xf

    new-array v3, v3, [B

    fill-array-data v3, :array_5

    const-string v8, "6dedb5"

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v3, v8, v10, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-virtual {v2}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->completeSpecialEffect()V

    goto :goto_2

    :cond_9
    if-eqz v5, :cond_b

    const/4 v7, 0x2

    invoke-static {v7}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_a

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v8, 0x1a

    new-array v8, v8, [B

    fill-array-data v8, :array_6

    const-string v10, "c76ccc"

    const-wide v12, 0x41deb5dcc4000000L    # 2.060940048E9

    invoke-static {v8, v10, v12, v13}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2e

    new-array v3, v3, [B

    fill-array-data v3, :array_7

    const-string v8, "f24aab"

    const/4 v10, 0x1

    invoke-static {v3, v8, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xf

    new-array v3, v3, [B

    fill-array-data v3, :array_8

    const-string v8, "388acc"

    const/4 v10, 0x0

    invoke-static {v3, v8, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    invoke-virtual {v2}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->completeSpecialEffect()V

    goto/16 :goto_2

    :cond_b
    iget-object v8, v3, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v2, v9}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->getAnimation(Landroid/content/Context;)Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    move-result-object v3

    invoke-static {v3}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    iget-object v3, v3, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    invoke-static {v3}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/animation/Animation;

    invoke-virtual {v7}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFinalState()Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    move-result-object v7

    sget-object v10, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->REMOVED:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    if-eq v7, v10, :cond_c

    invoke-virtual {v8, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v2}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->completeSpecialEffect()V

    :goto_3
    invoke-virtual {v2}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->getSignal()Landroidx/core/os/CancellationSignal;

    move-result-object v3

    new-instance v7, Landroidx/fragment/app/DefaultSpecialEffectsController$5;

    invoke-direct {v7, p0, v8, v4, v2}, Landroidx/fragment/app/DefaultSpecialEffectsController$5;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroid/view/View;Landroid/view/ViewGroup;Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;)V

    invoke-virtual {v3, v7}, Landroidx/core/os/CancellationSignal;->setOnCancelListener(Landroidx/core/os/CancellationSignal$OnCancelListener;)V

    goto/16 :goto_2

    :cond_c
    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    new-instance v7, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;

    invoke-direct {v7, v3, v4, v8}, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    new-instance v3, Landroidx/fragment/app/DefaultSpecialEffectsController$4;

    invoke-direct {v3, p0, v4, v8, v2}, Landroidx/fragment/app/DefaultSpecialEffectsController$4;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;)V

    invoke-virtual {v7, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v8, v7}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_3

    :cond_d
    return-void

    :array_0
    .array-data 1
        0x7et
        0x5et
        0xct
        0x57t
        0x17t
        0xbt
        0x59t
        0x5et
        0x42t
        0x79t
        0xbt
        0xbt
        0x5at
        0x58t
        0x16t
        0x57t
        0x17t
        0x42t
        0x44t
        0x5ct
        0x16t
        0x18t
        0xat
        0xct
        0x17t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x44t
        0x57t
        0x11t
        0x18t
        0x45t
        0xdt
        0xdt
        0x45t
        0x42t
        0x7et
        0x43t
        0x4t
        0x3t
        0x5bt
        0x7t
        0x56t
        0x45t
        0x45t
        0x13t
        0x57t
        0x11t
        0x18t
        0x58t
        0xbt
        0x12t
        0x59t
        0xet
        0x4et
        0x54t
        0x1t
        0x44t
        0x5ft
        0xct
        0x18t
        0x50t
        0x45t
        0x30t
        0x44t
        0x3t
        0x56t
        0x42t
        0xct
        0x10t
        0x5ft
        0xdt
        0x56t
        0x1ft
    .end array-data

    :array_2
    .array-data 1
        0x77t
        0x42t
        0x56t
        0x50t
        0x5ct
        0x56t
        0x5ft
        0x44t
        0x7at
        0x56t
        0x5ft
        0x52t
        0x56t
        0x55t
        0x45t
    .end array-data

    :array_3
    .array-data 1
        0x28t
        0x5t
        0x5dt
        0x57t
        0x4at
        0x58t
        0xft
        0x5t
        0x13t
        0x79t
        0x56t
        0x58t
        0xct
        0x3t
        0x47t
        0x51t
        0x57t
        0x5ft
        0x41t
        0x11t
        0x56t
        0x4ct
        0x18t
        0x5et
        0xft
        0x42t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x46t
        0x2t
        0x4bt
        0x17t
        0x73t
        0x8t
        0xft
        0xet
        0x59t
        0x43t
        0x5bt
        0x9t
        0x8t
        0x10t
        0x18t
        0x54t
        0x53t
        0x8t
        0x8t
        0xct
        0x4ct
        0x17t
        0x40t
        0x13t
        0x8t
        0x43t
        0x59t
        0x5bt
        0x5dt
        0x8t
        0x1t
        0x10t
        0x51t
        0x53t
        0x57t
        0x46t
        0x32t
        0x11t
        0x59t
        0x59t
        0x41t
        0xft
        0x12t
        0xat
        0x57t
        0x59t
        0x41t
        0x48t
    .end array-data

    :array_5
    .array-data 1
        0x70t
        0x16t
        0x4t
        0x3t
        0xft
        0x50t
        0x58t
        0x10t
        0x28t
        0x5t
        0xct
        0x54t
        0x51t
        0x1t
        0x17t
    .end array-data

    :array_6
    .array-data 1
        0x2at
        0x50t
        0x58t
        0xct
        0x11t
        0xat
        0xdt
        0x50t
        0x16t
        0x22t
        0xdt
        0xat
        0xet
        0x56t
        0x42t
        0xat
        0xct
        0xdt
        0x43t
        0x44t
        0x53t
        0x17t
        0x43t
        0xct
        0xdt
        0x17t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x46t
        0x53t
        0x47t
        0x41t
        0x20t
        0xct
        0xft
        0x5ft
        0x55t
        0x15t
        0x8t
        0xdt
        0x8t
        0x41t
        0x14t
        0x2t
        0x0t
        0xct
        0x8t
        0x5dt
        0x40t
        0x41t
        0x13t
        0x17t
        0x8t
        0x12t
        0x55t
        0xdt
        0xet
        0xct
        0x1t
        0x41t
        0x5dt
        0x5t
        0x4t
        0x42t
        0x27t
        0x5ct
        0x5dt
        0xct
        0x0t
        0x16t
        0x9t
        0x40t
        0x47t
        0x4ft
    .end array-data

    nop

    :array_8
    .array-data 1
        0x75t
        0x4at
        0x59t
        0x6t
        0xet
        0x6t
        0x5dt
        0x4ct
        0x75t
        0x0t
        0xdt
        0x2t
        0x54t
        0x5dt
        0x4at
    .end array-data
.end method

.method private startTransitions(Ljava/util/List;Ljava/util/List;ZLandroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/fragment/app/SpecialEffectsController$Operation;)Ljava/util/Map;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroidx/fragment/app/SpecialEffectsController$Operation;",
            ">;Z",
            "Landroidx/fragment/app/SpecialEffectsController$Operation;",
            "Landroidx/fragment/app/SpecialEffectsController$Operation;",
            ")",
            "Ljava/util/Map",
            "<",
            "Landroidx/fragment/app/SpecialEffectsController$Operation;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    invoke-virtual {v3}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->isVisibilityUnchanged()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getHandlingImpl()Landroidx/fragment/app/FragmentTransitionImpl;

    move-result-object v4

    if-nez v2, :cond_1

    move-object v2, v4

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_0

    if-eq v2, v4, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x4f

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    const-string v5, "43cf94"

    const v6, 0x4ee1a282

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getOperation()Landroidx/fragment/app/SpecialEffectsController$Operation;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v4, 0x15

    new-array v4, v4, [B

    fill-array-data v4, :array_1

    const-string v5, "cb5b2f"

    const-wide/32 v6, -0x8ccf20

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getTransition()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3e

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v4, "b67bb7"

    const v5, -0x319e8a3c

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    if-nez v2, :cond_4

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    invoke-virtual {v2}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getOperation()Landroidx/fragment/app/SpecialEffectsController$Operation;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->completeSpecialEffect()V

    goto :goto_1

    :cond_3
    move-object/from16 v2, v20

    :goto_2
    return-object v2

    :cond_4
    new-instance v21, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/DefaultSpecialEffectsController;->getContainer()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v8, 0x0

    new-instance v22, Landroid/graphics/Rect;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Rect;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v23, Landroidx/collection/ArrayMap;

    invoke-direct/range {v23 .. v23}, Landroidx/collection/ArrayMap;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v18, v3

    move-object/from16 v5, p5

    move-object/from16 v4, p4

    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    invoke-virtual {v3}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->hasSharedElementTransition()Z

    move-result v10

    if-eqz v10, :cond_12

    if-eqz v4, :cond_12

    if-eqz v5, :cond_12

    invoke-virtual {v3}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getSharedElementTransition()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentTransitionImpl;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentTransitionImpl;->wrapTransitionInSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual/range {p5 .. p5}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getSharedElementSourceNames()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual/range {p4 .. p4}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getSharedElementSourceNames()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual/range {p4 .. p4}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getSharedElementTargetNames()Ljava/util/ArrayList;

    move-result-object v8

    const/4 v4, 0x0

    :goto_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_6

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v10

    const/4 v12, -0x1

    if-eq v10, v12, :cond_5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v10, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual/range {p5 .. p5}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getSharedElementTargetNames()Ljava/util/ArrayList;

    move-result-object v19

    if-nez p3, :cond_7

    invoke-virtual/range {p4 .. p4}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()Landroidx/core/app/SharedElementCallback;

    move-result-object v5

    invoke-virtual/range {p5 .. p5}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Landroidx/core/app/SharedElementCallback;

    move-result-object v4

    move-object v8, v4

    move-object v10, v5

    :goto_5
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v4, 0x0

    move v12, v4

    :goto_6
    if-ge v12, v13, :cond_8

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v12, 0x1

    move v12, v4

    goto :goto_6

    :cond_7
    invoke-virtual/range {p4 .. p4}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Landroidx/core/app/SharedElementCallback;

    move-result-object v5

    invoke-virtual/range {p5 .. p5}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()Landroidx/core/app/SharedElementCallback;

    move-result-object v4

    move-object v8, v4

    move-object v10, v5

    goto :goto_5

    :cond_8
    new-instance v24, Landroidx/collection/ArrayMap;

    invoke-direct/range {v24 .. v24}, Landroidx/collection/ArrayMap;-><init>()V

    invoke-virtual/range {p4 .. p4}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v4

    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v4}, Landroidx/fragment/app/DefaultSpecialEffectsController;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Landroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    if-eqz v10, :cond_d

    move-object/from16 v0, v24

    invoke-virtual {v10, v11, v0}, Landroidx/core/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move v10, v4

    :goto_7
    if-ltz v10, :cond_b

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    if-nez v5, :cond_a

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    :goto_8
    add-int/lit8 v4, v10, -0x1

    move v10, v4

    goto :goto_7

    :cond_a
    invoke-static {v5}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_9

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v5}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v4}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_b
    move-object/from16 v16, v11

    :goto_9
    new-instance v15, Landroidx/collection/ArrayMap;

    invoke-direct {v15}, Landroidx/collection/ArrayMap;-><init>()V

    invoke-virtual/range {p5 .. p5}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v4

    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v4}, Landroidx/fragment/app/DefaultSpecialEffectsController;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    invoke-virtual/range {v23 .. v23}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v15, v4}, Landroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    if-eqz v8, :cond_f

    move-object/from16 v0, v19

    invoke-virtual {v8, v0, v15}, Landroidx/core/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move v8, v4

    :goto_a
    if-ltz v8, :cond_10

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v15, v4}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    if-nez v5, :cond_e

    move-object/from16 v0, v23

    invoke-static {v0, v4}, Landroidx/fragment/app/FragmentTransition;->findKeyForValue(Landroidx/collection/ArrayMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    :goto_b
    add-int/lit8 v4, v8, -0x1

    move v8, v4

    goto :goto_a

    :cond_d
    invoke-virtual/range {v24 .. v24}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    move-object/from16 v16, v11

    goto :goto_9

    :cond_e
    invoke-static {v5}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c

    move-object/from16 v0, v23

    invoke-static {v0, v4}, Landroidx/fragment/app/FragmentTransition;->findKeyForValue(Landroidx/collection/ArrayMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-static {v5}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_f
    move-object/from16 v0, v23

    invoke-static {v0, v15}, Landroidx/fragment/app/FragmentTransition;->retainValues(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V

    :cond_10
    invoke-virtual/range {v23 .. v23}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v4}, Landroidx/fragment/app/DefaultSpecialEffectsController;->retainMatchingViews(Landroidx/collection/ArrayMap;Ljava/util/Collection;)V

    invoke-virtual/range {v23 .. v23}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v4}, Landroidx/fragment/app/DefaultSpecialEffectsController;->retainMatchingViews(Landroidx/collection/ArrayMap;Ljava/util/Collection;)V

    invoke-virtual/range {v23 .. v23}, Landroidx/collection/ArrayMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_11

    const/4 v3, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    :goto_c
    move-object v8, v3

    goto/16 :goto_3

    :cond_11
    invoke-virtual/range {p5 .. p5}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v4

    invoke-virtual/range {p4 .. p4}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v5

    const/4 v8, 0x1

    move/from16 v0, p3

    move-object/from16 v1, v24

    invoke-static {v4, v5, v0, v1, v8}, Landroidx/fragment/app/FragmentTransition;->callSharedElementStartEnd(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/collection/ArrayMap;Z)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/DefaultSpecialEffectsController;->getContainer()Landroid/view/ViewGroup;

    move-result-object v4

    new-instance v10, Landroidx/fragment/app/DefaultSpecialEffectsController$6;

    move-object/from16 v11, p0

    move-object/from16 v12, p5

    move-object/from16 v13, p4

    move/from16 v14, p3

    invoke-direct/range {v10 .. v15}, Landroidx/fragment/app/DefaultSpecialEffectsController$6;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/fragment/app/SpecialEffectsController$Operation;ZLandroidx/collection/ArrayMap;)V

    invoke-static {v4, v10}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    invoke-virtual/range {v24 .. v24}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_29

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v2, v3, v4}, Landroidx/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/view/View;)V

    move-object v10, v4

    :goto_d
    invoke-virtual {v15}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2a

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v15, v4}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    if-eqz v4, :cond_2a

    const/4 v5, 0x1

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/DefaultSpecialEffectsController;->getContainer()Landroid/view/ViewGroup;

    move-result-object v6

    new-instance v7, Landroidx/fragment/app/DefaultSpecialEffectsController$7;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v7, v0, v2, v4, v1}, Landroidx/fragment/app/DefaultSpecialEffectsController$7;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-static {v6, v7}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    move v11, v5

    :goto_e
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v2, v3, v0, v1}, Landroidx/fragment/app/FragmentTransitionImpl;->setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v8, v3

    invoke-virtual/range {v2 .. v9}, Landroidx/fragment/app/FragmentTransitionImpl;->scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, v20

    move-object/from16 v1, p4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, v20

    move-object/from16 v1, p5

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v7, v11

    move-object v6, v10

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    goto/16 :goto_c

    :cond_12
    move-object v3, v8

    goto/16 :goto_c

    :cond_13
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/16 v19, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v25

    move-object v10, v5

    move-object v5, v3

    :goto_f
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    invoke-virtual {v3}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->isVisibilityUnchanged()Z

    move-result v11

    if-eqz v11, :cond_14

    invoke-virtual {v3}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getOperation()Landroidx/fragment/app/SpecialEffectsController$Operation;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    move-object/from16 v0, v20

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->completeSpecialEffect()V

    goto :goto_f

    :cond_14
    invoke-virtual {v3}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getTransition()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroidx/fragment/app/FragmentTransitionImpl;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v3}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getOperation()Landroidx/fragment/app/SpecialEffectsController$Operation;

    move-result-object v26

    if-eqz v8, :cond_17

    move-object/from16 v0, v26

    if-eq v0, v4, :cond_15

    move-object/from16 v0, v26

    if-ne v0, v10, :cond_17

    :cond_15
    const/4 v10, 0x1

    :goto_10
    if-nez v11, :cond_18

    if-nez v10, :cond_16

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->completeSpecialEffect()V

    :cond_16
    move-object v3, v5

    move-object/from16 v5, v19

    :goto_11
    move-object/from16 v10, p5

    move-object/from16 v19, v5

    move-object v5, v3

    goto :goto_f

    :cond_17
    const/4 v10, 0x0

    goto :goto_10

    :cond_18
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v26 .. v26}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v12

    iget-object v12, v12, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v12}, Landroidx/fragment/app/DefaultSpecialEffectsController;->captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V

    if-eqz v10, :cond_19

    move-object/from16 v0, v26

    if-ne v0, v4, :cond_1c

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_19
    :goto_12
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1d

    move-object/from16 v0, v21

    invoke-virtual {v2, v11, v0}, Landroidx/fragment/app/FragmentTransitionImpl;->addTarget(Ljava/lang/Object;Landroid/view/View;)V

    :cond_1a
    :goto_13
    invoke-virtual/range {v26 .. v26}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFinalState()Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    move-result-object v10

    sget-object v12, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    if-ne v10, v12, :cond_1e

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz v7, :cond_1b

    move-object/from16 v0, v22

    invoke-virtual {v2, v11, v0}, Landroidx/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/graphics/Rect;)V

    :cond_1b
    :goto_14
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->isOverlapAllowed()Z

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v3, 0x0

    invoke-virtual {v2, v5, v11, v3}, Landroidx/fragment/app/FragmentTransitionImpl;->mergeTransitionsTogether(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v5, v19

    goto :goto_11

    :cond_1c
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_12

    :cond_1d
    invoke-virtual {v2, v11, v13}, Landroidx/fragment/app/FragmentTransitionImpl;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v10, v2

    move-object v12, v11

    invoke-virtual/range {v10 .. v17}, Landroidx/fragment/app/FragmentTransitionImpl;->scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    invoke-virtual/range {v26 .. v26}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFinalState()Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    move-result-object v10

    sget-object v12, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->GONE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    if-ne v10, v12, :cond_1a

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual/range {v26 .. v26}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v12

    iget-object v12, v12, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual/range {v26 .. v26}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v12

    iget-object v12, v12, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v2, v11, v12, v10}, Landroidx/fragment/app/FragmentTransitionImpl;->scheduleHideFragmentView(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/DefaultSpecialEffectsController;->getContainer()Landroid/view/ViewGroup;

    move-result-object v10

    new-instance v12, Landroidx/fragment/app/DefaultSpecialEffectsController$8;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v13}, Landroidx/fragment/app/DefaultSpecialEffectsController$8;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Ljava/util/ArrayList;)V

    invoke-static {v10, v12}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    goto :goto_13

    :cond_1e
    invoke-virtual {v2, v11, v6}, Landroidx/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/view/View;)V

    goto :goto_14

    :cond_1f
    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v11, v3}, Landroidx/fragment/app/FragmentTransitionImpl;->mergeTransitionsTogether(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v27, v5

    move-object v5, v3

    move-object/from16 v3, v27

    goto/16 :goto_11

    :cond_20
    move-object/from16 v0, v19

    invoke-virtual {v2, v5, v0, v8}, Landroidx/fragment/app/FragmentTransitionImpl;->mergeTransitionsInSequence(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_21
    :goto_15
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    invoke-virtual {v3}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->isVisibilityUnchanged()Z

    move-result v5

    if-nez v5, :cond_21

    invoke-virtual {v3}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getTransition()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v3}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getOperation()Landroidx/fragment/app/SpecialEffectsController$Operation;

    move-result-object v11

    if-eqz v8, :cond_25

    if-eq v11, v4, :cond_22

    move-object/from16 v0, p5

    if-ne v11, v0, :cond_25

    :cond_22
    const/4 v5, 0x1

    :goto_16
    if-nez v10, :cond_23

    if-eqz v5, :cond_21

    :cond_23
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/DefaultSpecialEffectsController;->getContainer()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-static {v5}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_26

    const/4 v5, 0x2

    invoke-static {v5}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_24

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v10, 0x24

    new-array v10, v10, [B

    fill-array-data v10, :array_3

    const-string v12, "3e062b"

    const-wide v14, 0x41d5ed5d43c00000L    # 1.471509775E9

    invoke-static {v10, v12, v14, v15}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/DefaultSpecialEffectsController;->getContainer()Landroid/view/ViewGroup;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v10, 0x2d

    new-array v10, v10, [B

    fill-array-data v10, :array_4

    const-string v12, "9eca7d"

    const/16 v13, 0x70f5

    invoke-static {v10, v12, v13}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v10, 0xf

    new-array v10, v10, [B

    fill-array-data v10, :array_5

    const-string v11, "599272"

    const v12, -0x31851117

    invoke-static {v10, v11, v12}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    invoke-virtual {v3}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->completeSpecialEffect()V

    goto/16 :goto_15

    :cond_25
    const/4 v5, 0x0

    goto :goto_16

    :cond_26
    invoke-virtual {v3}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getOperation()Landroidx/fragment/app/SpecialEffectsController$Operation;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v5

    invoke-virtual {v3}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getSignal()Landroidx/core/os/CancellationSignal;

    move-result-object v10

    new-instance v11, Landroidx/fragment/app/DefaultSpecialEffectsController$9;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v3}, Landroidx/fragment/app/DefaultSpecialEffectsController$9;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;)V

    invoke-virtual {v2, v5, v7, v10, v11}, Landroidx/fragment/app/FragmentTransitionImpl;->setListenerForTransitionEnd(Landroidx/fragment/app/Fragment;Ljava/lang/Object;Landroidx/core/os/CancellationSignal;Ljava/lang/Runnable;)V

    goto/16 :goto_15

    :cond_27
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/DefaultSpecialEffectsController;->getContainer()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-static {v3}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_28

    move-object/from16 v2, v20

    goto/16 :goto_2

    :cond_28
    const/4 v3, 0x4

    move-object/from16 v0, v24

    invoke-static {v0, v3}, Landroidx/fragment/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    invoke-virtual {v2, v9}, Landroidx/fragment/app/FragmentTransitionImpl;->prepareSetNameOverridesReordered(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/DefaultSpecialEffectsController;->getContainer()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v2, v3, v7}, Landroidx/fragment/app/FragmentTransitionImpl;->beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/DefaultSpecialEffectsController;->getContainer()Landroid/view/ViewGroup;

    move-result-object v3

    move-object/from16 v4, v18

    move-object v5, v9

    move-object/from16 v7, v23

    invoke-virtual/range {v2 .. v7}, Landroidx/fragment/app/FragmentTransitionImpl;->setNameOverridesReordered(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V

    const/4 v3, 0x0

    move-object/from16 v0, v24

    invoke-static {v0, v3}, Landroidx/fragment/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    move-object/from16 v0, v18

    invoke-virtual {v2, v8, v0, v9}, Landroidx/fragment/app/FragmentTransitionImpl;->swapSharedElementTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v2, v20

    goto/16 :goto_2

    :cond_29
    move-object v10, v6

    goto/16 :goto_d

    :cond_2a
    move v11, v7

    goto/16 :goto_e

    nop

    :array_0
    .array-data 1
        0x79t
        0x5at
        0x1bt
        0xft
        0x57t
        0x53t
        0x14t
        0x55t
        0x11t
        0x7t
        0x54t
        0x51t
        0x43t
        0x5ct
        0x11t
        0xdt
        0x19t
        0x40t
        0x46t
        0x52t
        0xdt
        0x15t
        0x50t
        0x40t
        0x5dt
        0x5ct
        0xdt
        0x15t
        0x19t
        0x55t
        0x5at
        0x57t
        0x43t
        0x27t
        0x57t
        0x50t
        0x46t
        0x5ct
        0xat
        0x2t
        0x61t
        0x14t
        0x40t
        0x41t
        0x2t
        0x8t
        0x4at
        0x5dt
        0x40t
        0x5at
        0xct
        0x8t
        0x4at
        0x14t
        0x5dt
        0x40t
        0x43t
        0x8t
        0x56t
        0x40t
        0x14t
        0x52t
        0xft
        0xat
        0x56t
        0x43t
        0x51t
        0x57t
        0x4dt
        0x46t
        0x7ft
        0x46t
        0x55t
        0x54t
        0xet
        0x3t
        0x57t
        0x40t
        0x14t
    .end array-data

    :array_1
    .array-data 1
        0x43t
        0x10t
        0x50t
        0x16t
        0x47t
        0x14t
        0xdt
        0x7t
        0x51t
        0x42t
        0x66t
        0x14t
        0x2t
        0xct
        0x46t
        0xbt
        0x46t
        0xft
        0xct
        0xct
        0x15t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x42t
        0x41t
        0x5ft
        0xbt
        0x1t
        0x5ft
        0x42t
        0x43t
        0x44t
        0x7t
        0x11t
        0x17t
        0x3t
        0x16t
        0x53t
        0xbt
        0x4t
        0x51t
        0x7t
        0x44t
        0x52t
        0xct
        0x16t
        0x17t
        0x36t
        0x44t
        0x56t
        0xct
        0x11t
        0x5et
        0x16t
        0x5ft
        0x58t
        0xct
        0x42t
        0x17t
        0x16t
        0x4ft
        0x47t
        0x7t
        0x42t
        0x43t
        0xat
        0x57t
        0x59t
        0x42t
        0xdt
        0x43t
        0xat
        0x53t
        0x45t
        0x42t
        0x24t
        0x45t
        0x3t
        0x51t
        0x5at
        0x7t
        0xct
        0x43t
        0x11t
        0x18t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x60t
        0x15t
        0x55t
        0x55t
        0x5bt
        0x3t
        0x5ft
        0x20t
        0x56t
        0x50t
        0x57t
        0x1t
        0x47t
        0x16t
        0x73t
        0x59t
        0x5ct
        0x16t
        0x41t
        0xat
        0x5ct
        0x5at
        0x57t
        0x10t
        0x9t
        0x45t
        0x73t
        0x59t
        0x5ct
        0x16t
        0x52t
        0xct
        0x5et
        0x53t
        0x40t
        0x42t
    .end array-data

    :array_4
    .array-data 1
        0x19t
        0xdt
        0x2t
        0x12t
        0x17t
        0xat
        0x56t
        0x11t
        0x43t
        0x3t
        0x52t
        0x1t
        0x57t
        0x45t
        0xft
        0x0t
        0x5et
        0x0t
        0x19t
        0xat
        0x16t
        0x15t
        0x19t
        0x44t
        0x7at
        0xat
        0xet
        0x11t
        0x5bt
        0x1t
        0x4dt
        0xct
        0xdt
        0x6t
        0x17t
        0xbt
        0x49t
        0x0t
        0x11t
        0x0t
        0x43t
        0xdt
        0x56t
        0xbt
        0x43t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x73t
        0x4bt
        0x58t
        0x55t
        0x5at
        0x57t
        0x5bt
        0x4dt
        0x74t
        0x53t
        0x59t
        0x53t
        0x52t
        0x5ct
        0x4bt
    .end array-data
.end method


# virtual methods
.method applyContainerChanges(Landroidx/fragment/app/SpecialEffectsController$Operation;)V
    .locals 2

    invoke-virtual {p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFinalState()Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->applyState(Landroid/view/View;)V

    return-void
.end method

.method captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    move-object v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Landroidx/core/view/ViewGroupCompat;->isTransitionGroup(Landroid/view/ViewGroup;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0, p1, v3}, Landroidx/fragment/app/DefaultSpecialEffectsController;->captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method executeOperations(Ljava/util/List;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroidx/fragment/app/SpecialEffectsController$Operation;",
            ">;Z)V"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v4, v5

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/SpecialEffectsController$Operation;

    invoke-virtual {v0}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v2}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->from(Landroid/view/View;)Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    move-result-object v2

    sget-object v3, Landroidx/fragment/app/DefaultSpecialEffectsController$10;->$SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$State:[I

    invoke-virtual {v0}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFinalState()Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->ordinal()I

    move-result v7

    aget v3, v3, v7

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object v3, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    if-ne v2, v3, :cond_0

    if-nez v4, :cond_0

    move-object v4, v0

    goto :goto_0

    :pswitch_1
    sget-object v3, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    if-eq v2, v3, :cond_0

    move-object v5, v0

    goto :goto_0

    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/SpecialEffectsController$Operation;

    new-instance v3, Landroidx/core/os/CancellationSignal;

    invoke-direct {v3}, Landroidx/core/os/CancellationSignal;-><init>()V

    invoke-virtual {v0, v3}, Landroidx/fragment/app/SpecialEffectsController$Operation;->markStartedSpecialEffect(Landroidx/core/os/CancellationSignal;)V

    new-instance v9, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;

    invoke-direct {v9, v0, v3, p2}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;-><init>(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/core/os/CancellationSignal;Z)V

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Landroidx/core/os/CancellationSignal;

    invoke-direct {v9}, Landroidx/core/os/CancellationSignal;-><init>()V

    invoke-virtual {v0, v9}, Landroidx/fragment/app/SpecialEffectsController$Operation;->markStartedSpecialEffect(Landroidx/core/os/CancellationSignal;)V

    if-eqz p2, :cond_3

    if-ne v0, v4, :cond_4

    :cond_2
    move v3, v6

    :goto_2
    new-instance v10, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    invoke-direct {v10, v0, v9, p2, v3}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;-><init>(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/core/os/CancellationSignal;ZZ)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Landroidx/fragment/app/DefaultSpecialEffectsController$1;

    invoke-direct {v3, p0, v2, v0}, Landroidx/fragment/app/DefaultSpecialEffectsController$1;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Ljava/util/List;Landroidx/fragment/app/SpecialEffectsController$Operation;)V

    invoke-virtual {v0, v3}, Landroidx/fragment/app/SpecialEffectsController$Operation;->addCompletionListener(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    if-eq v0, v5, :cond_2

    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    move-object v0, p0

    move v3, p2

    invoke-direct/range {v0 .. v5}, Landroidx/fragment/app/DefaultSpecialEffectsController;->startTransitions(Ljava/util/List;Ljava/util/List;ZLandroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/fragment/app/SpecialEffectsController$Operation;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    invoke-direct {p0, v7, v2, v1, v0}, Landroidx/fragment/app/DefaultSpecialEffectsController;->startAnimations(Ljava/util/List;Ljava/util/List;ZLjava/util/Map;)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/SpecialEffectsController$Operation;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/DefaultSpecialEffectsController;->applyContainerChanges(Landroidx/fragment/app/SpecialEffectsController$Operation;)V

    goto :goto_3

    :cond_6
    invoke-interface {v2}, Ljava/util/List;->clear()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method findNamedViews(Ljava/util/Map;Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    invoke-static {p2}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0, p1, v2}, Landroidx/fragment/app/DefaultSpecialEffectsController;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method retainMatchingViews(Landroidx/collection/ArrayMap;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method
