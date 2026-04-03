.class Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;
.super Landroid/graphics/drawable/Drawable$ConstantState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimatedVectorDrawableCompatState"
.end annotation


# instance fields
.field mAnimatorSet:Landroid/animation/AnimatorSet;

.field mAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field mChangingConfigurations:I

.field mTargetNameMap:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap",
            "<",
            "Landroid/animation/Animator;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;Landroid/graphics/drawable/Drawable$Callback;Landroid/content/res/Resources;)V
    .locals 5

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    if-eqz p2, :cond_3

    iget v0, p2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mChangingConfigurations:I

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mChangingConfigurations:I

    iget-object v0, p2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    if-eqz v0, :cond_0

    iget-object v0, p2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz p4, :cond_1

    invoke-virtual {v0, p4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    :goto_0
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v0, p3}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    iget-object v2, p2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v2}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v0, v1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->setAllowCaching(Z)V

    :cond_0
    iget-object v0, p2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mAnimators:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mAnimators:Ljava/util/ArrayList;

    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0, v2}, Landroidx/collection/ArrayMap;-><init>(I)V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mTargetNameMap:Landroidx/collection/ArrayMap;

    :goto_1
    if-ge v1, v2, :cond_2

    iget-object v0, p2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v3

    iget-object v4, p2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mTargetNameMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v4, v0}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v4, v0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->getTargetByName(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object v4, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mTargetNameMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v4, v3, v0}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->setupAnimatorSet()V

    :cond_3
    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mChangingConfigurations:I

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4

    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x27

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "a4c6fc"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x2ft
        0x5bt
        0x43t
        0x55t
        0x9t
        0xdt
        0x12t
        0x40t
        0x2t
        0x58t
        0x12t
        0x43t
        0x12t
        0x40t
        0x2t
        0x42t
        0x3t
        0x43t
        0x12t
        0x41t
        0x13t
        0x46t
        0x9t
        0x11t
        0x15t
        0x14t
        0x5t
        0x59t
        0x14t
        0x43t
        0x32t
        0x70t
        0x28t
        0x16t
        0x5at
        0x43t
        0x53t
        0x0t
        0x4dt
    .end array-data
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 6

    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x27

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "46029a"

    const-wide v4, -0x3e3d03e1f6800000L    # -6.37025299E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x7at
        0x59t
        0x10t
        0x51t
        0x56t
        0xft
        0x47t
        0x42t
        0x51t
        0x5ct
        0x4dt
        0x41t
        0x47t
        0x42t
        0x51t
        0x46t
        0x5ct
        0x41t
        0x47t
        0x43t
        0x40t
        0x42t
        0x56t
        0x13t
        0x40t
        0x16t
        0x56t
        0x5dt
        0x4bt
        0x41t
        0x67t
        0x72t
        0x7bt
        0x12t
        0x5t
        0x41t
        0x6t
        0x2t
        0x1et
    .end array-data
.end method

.method public setupAnimatorSet()V
    .locals 2

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mAnimatorSet:Landroid/animation/AnimatorSet;

    :cond_0
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-void
.end method
