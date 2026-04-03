.class public abstract Lcom/airbnb/lottie/utils/BaseLottieAnimator;
.super Landroid/animation/ValueAnimator;


# instance fields
.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field private final updateListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/animation/ValueAnimator$AnimatorUpdateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->updateListeners:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->listeners:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public addListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->updateListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getStartDelay()J
    .locals 6

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x2e

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "020d67"

    const-wide/32 v4, -0x514155a8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x7ct
        0x5dt
        0x44t
        0x10t
        0x5ft
        0x52t
        0x71t
        0x5ct
        0x59t
        0x9t
        0x57t
        0x43t
        0x5ft
        0x40t
        0x10t
        0x0t
        0x59t
        0x52t
        0x43t
        0x12t
        0x5et
        0xbt
        0x42t
        0x17t
        0x43t
        0x47t
        0x40t
        0x14t
        0x59t
        0x45t
        0x44t
        0x12t
        0x57t
        0x1t
        0x42t
        0x64t
        0x44t
        0x53t
        0x42t
        0x10t
        0x72t
        0x52t
        0x5ct
        0x53t
        0x49t
        0x4at
    .end array-data
.end method

.method notifyCancel()V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v0, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method notifyEnd(Z)V
    .locals 4

    iget-object v0, p0, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    invoke-interface {v0, p0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;Z)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method notifyRepeat()V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v0, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationRepeat(Landroid/animation/Animator;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method notifyStart(Z)V
    .locals 4

    iget-object v0, p0, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    invoke-interface {v0, p0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;Z)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method notifyUpdate()V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->updateListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-interface {v0, p0}, Landroid/animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeAllListeners()V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public removeAllUpdateListeners()V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->updateListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public removeListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->updateListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic setDuration(J)Landroid/animation/Animator;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public setDuration(J)Landroid/animation/ValueAnimator;
    .locals 6

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x2c

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "43f5de"

    const-wide v4, 0x41cdd8e898000000L    # 1.001509168E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x78t
        0x5ct
        0x12t
        0x41t
        0xdt
        0x0t
        0x75t
        0x5dt
        0xft
        0x58t
        0x5t
        0x11t
        0x5bt
        0x41t
        0x46t
        0x51t
        0xbt
        0x0t
        0x47t
        0x13t
        0x8t
        0x5at
        0x10t
        0x45t
        0x47t
        0x46t
        0x16t
        0x45t
        0xbt
        0x17t
        0x40t
        0x13t
        0x15t
        0x50t
        0x10t
        0x21t
        0x41t
        0x41t
        0x7t
        0x41t
        0xdt
        0xat
        0x5at
        0x1dt
    .end array-data
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x30

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "c3928f"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x2ft
        0x5ct
        0x4dt
        0x46t
        0x51t
        0x3t
        0x22t
        0x5dt
        0x50t
        0x5ft
        0x59t
        0x12t
        0xct
        0x41t
        0x19t
        0x56t
        0x57t
        0x3t
        0x10t
        0x13t
        0x57t
        0x5dt
        0x4ct
        0x46t
        0x10t
        0x46t
        0x49t
        0x42t
        0x57t
        0x14t
        0x17t
        0x13t
        0x4at
        0x57t
        0x4ct
        0x2ft
        0xdt
        0x47t
        0x5ct
        0x40t
        0x48t
        0x9t
        0xft
        0x52t
        0x4dt
        0x5dt
        0x4at
        0x48t
    .end array-data
.end method

.method public setStartDelay(J)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x2e

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "1c75fe"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x7dt
        0xct
        0x43t
        0x41t
        0xft
        0x0t
        0x70t
        0xdt
        0x5et
        0x58t
        0x7t
        0x11t
        0x5et
        0x11t
        0x17t
        0x51t
        0x9t
        0x0t
        0x42t
        0x43t
        0x59t
        0x5at
        0x12t
        0x45t
        0x42t
        0x16t
        0x47t
        0x45t
        0x9t
        0x17t
        0x45t
        0x43t
        0x44t
        0x50t
        0x12t
        0x36t
        0x45t
        0x2t
        0x45t
        0x41t
        0x22t
        0x0t
        0x5dt
        0x2t
        0x4et
        0x1bt
    .end array-data
.end method
