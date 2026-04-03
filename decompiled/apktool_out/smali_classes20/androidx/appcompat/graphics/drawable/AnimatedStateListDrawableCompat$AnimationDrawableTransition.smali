.class Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimationDrawableTransition;
.super Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationDrawableTransition"
.end annotation


# instance fields
.field private final mAnim:Landroid/animation/ObjectAnimator;

.field private final mHasReversibleFlag:Z


# direct methods
.method constructor <init>(Landroid/graphics/drawable/AnimationDrawable;ZZ)V
    .locals 8

    const/4 v7, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;-><init>(Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$1;)V

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v3

    if-eqz p2, :cond_1

    add-int/lit8 v0, v3, -0x1

    move v2, v0

    :goto_0
    if-eqz p2, :cond_2

    move v0, v1

    :goto_1
    new-instance v3, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator;

    invoke-direct {v3, p1, p2}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator;-><init>(Landroid/graphics/drawable/AnimationDrawable;Z)V

    const/16 v4, 0xc

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    const-string v5, "90c4e5"

    const/16 v6, -0x5566

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [I

    aput v2, v5, v1

    aput v0, v5, v7

    invoke-static {p1, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    invoke-static {v0, v7}, Landroidx/appcompat/resources/Compatibility$Api18Impl;->setAutoCancel(Landroid/animation/ObjectAnimator;Z)V

    :cond_0
    invoke-virtual {v3}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator;->getTotalDuration()I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iput-boolean p3, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimationDrawableTransition;->mHasReversibleFlag:Z

    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimationDrawableTransition;->mAnim:Landroid/animation/ObjectAnimator;

    return-void

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v3, -0x1

    goto :goto_1

    nop

    :array_0
    .array-data 1
        0x5at
        0x45t
        0x11t
        0x46t
        0x0t
        0x5bt
        0x4dt
        0x79t
        0xdt
        0x50t
        0x0t
        0x4dt
    .end array-data
.end method


# virtual methods
.method public canReverse()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimationDrawableTransition;->mHasReversibleFlag:Z

    return v0
.end method

.method public reverse()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimationDrawableTransition;->mAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->reverse()V

    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimationDrawableTransition;->mAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimationDrawableTransition;->mAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    return-void
.end method
