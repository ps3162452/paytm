.class public final Lcom/google/android/material/circularreveal/CircularRevealCompat;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCircularReveal(Lcom/google/android/material/circularreveal/CircularRevealWidget;FFF)Landroid/animation/Animator;
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    sget-object v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealProperty;->CIRCULAR_REVEAL:Landroid/util/Property;

    sget-object v1, Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealEvaluator;->CIRCULAR_REVEAL:Landroid/animation/TypeEvaluator;

    new-array v2, v4, [Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    new-instance v3, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    invoke-direct {v3, p1, p2, p3}, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;-><init>(FFF)V

    aput-object v3, v2, v5

    invoke-static {p0, v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    invoke-interface {p0}, Lcom/google/android/material/circularreveal/CircularRevealWidget;->getRevealInfo()Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    check-cast p0, Landroid/view/View;

    float-to-int v2, p1

    float-to-int v3, p2

    invoke-static {p0, v2, v3, v0, p3}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v2

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v1, v3, v5

    aput-object v2, v3, v4

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x3a

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "761555"

    invoke-static {v1, v2, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object v0, v1

    goto :goto_0

    :array_0
    .array-data 1
        0x74t
        0x57t
        0x5dt
        0x59t
        0x50t
        0x47t
        0x17t
        0x5bt
        0x44t
        0x46t
        0x41t
        0x15t
        0x44t
        0x53t
        0x45t
        0x15t
        0x54t
        0x15t
        0x59t
        0x59t
        0x5ft
        0x18t
        0x5bt
        0x40t
        0x5bt
        0x5at
        0x11t
        0x67t
        0x50t
        0x43t
        0x52t
        0x57t
        0x5dt
        0x7ct
        0x5bt
        0x53t
        0x58t
        0x16t
        0x53t
        0x50t
        0x53t
        0x5at
        0x45t
        0x53t
        0x11t
        0x56t
        0x54t
        0x59t
        0x5bt
        0x5ft
        0x5ft
        0x52t
        0x15t
        0x41t
        0x5ft
        0x5ft
        0x42t
        0x1bt
    .end array-data
.end method

.method public static createCircularReveal(Lcom/google/android/material/circularreveal/CircularRevealWidget;FFFF)Landroid/animation/Animator;
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealProperty;->CIRCULAR_REVEAL:Landroid/util/Property;

    sget-object v1, Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealEvaluator;->CIRCULAR_REVEAL:Landroid/animation/TypeEvaluator;

    new-array v2, v6, [Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    new-instance v3, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    invoke-direct {v3, p1, p2, p3}, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;-><init>(FFF)V

    aput-object v3, v2, v4

    new-instance v3, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    invoke-direct {v3, p1, p2, p4}, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;-><init>(FFF)V

    aput-object v3, v2, v5

    invoke-static {p0, v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    check-cast p0, Landroid/view/View;

    float-to-int v0, p1

    float-to-int v2, p2

    invoke-static {p0, v0, v2, p3, p4}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v2

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v3, v6, [Landroid/animation/Animator;

    aput-object v1, v3, v4

    aput-object v2, v3, v5

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static createCircularRevealListener(Lcom/google/android/material/circularreveal/CircularRevealWidget;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    new-instance v0, Lcom/google/android/material/circularreveal/CircularRevealCompat$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/circularreveal/CircularRevealCompat$1;-><init>(Lcom/google/android/material/circularreveal/CircularRevealWidget;)V

    return-object v0
.end method
