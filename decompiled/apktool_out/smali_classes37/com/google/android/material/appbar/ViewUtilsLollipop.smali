.class Lcom/google/android/material/appbar/ViewUtilsLollipop;
.super Ljava/lang/Object;


# static fields
.field private static final STATE_LIST_ANIM_ATTRS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010448

    aput v2, v0, v1

    sput-object v0, Lcom/google/android/material/appbar/ViewUtilsLollipop;->STATE_LIST_ANIM_ATTRS:[I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static setBoundsViewOutlineProvider(Landroid/view/View;)V
    .locals 1

    sget-object v0, Landroid/view/ViewOutlineProvider;->BOUNDS:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method

.method static setDefaultAppBarLayoutStateListAnimator(Landroid/view/View;F)V
    .locals 13

    const v12, 0x101009e

    const/4 v11, 0x0

    const/16 v10, 0x9

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$integer;->app_bar_elevation_anim_duration:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    new-instance v1, Landroid/animation/StateListAnimator;

    invoke-direct {v1}, Landroid/animation/StateListAnimator;-><init>()V

    sget v2, Lcom/google/android/material/R$attr;->state_liftable:I

    sget v3, Lcom/google/android/material/R$attr;->state_lifted:I

    neg-int v3, v3

    new-array v4, v10, [B

    fill-array-data v4, :array_0

    const-string v5, "39149a"

    invoke-static {v4, v5, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [F

    aput v11, v5, v8

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    int-to-long v6, v0

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [I

    aput v12, v5, v8

    aput v2, v5, v9

    const/4 v2, 0x2

    aput v3, v5, v2

    invoke-virtual {v1, v5, v4}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    new-array v2, v10, [B

    fill-array-data v2, :array_1

    const-string v3, "1c60ed"

    const v4, -0x32e575c0

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    new-array v3, v9, [F

    aput p1, v3, v8

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-array v2, v9, [I

    aput v12, v2, v8

    invoke-virtual {v1, v2, v0}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    new-array v0, v10, [B

    fill-array-data v0, :array_2

    const-string v2, "ba99c0"

    invoke-static {v0, v2, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    new-array v2, v9, [F

    aput v11, v2, v8

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-array v2, v8, [I

    invoke-virtual {v1, v2, v0}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    return-void

    nop

    :array_0
    .array-data 1
        0x56t
        0x55t
        0x54t
        0x42t
        0x58t
        0x15t
        0x5at
        0x56t
        0x5ft
    .end array-data

    nop

    :array_1
    .array-data 1
        0x54t
        0xft
        0x53t
        0x46t
        0x4t
        0x10t
        0x58t
        0xct
        0x58t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x7t
        0xdt
        0x5ct
        0x4ft
        0x2t
        0x44t
        0xbt
        0xet
        0x57t
    .end array-data
.end method

.method static setStateListAnimatorFromAttrs(Landroid/view/View;Landroid/util/AttributeSet;II)V
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/google/android/material/appbar/ViewUtilsLollipop;->STATE_LIST_ANIM_ATTRS:[I

    new-array v5, v1, [I

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-static {v0, v2}, Landroid/animation/AnimatorInflater;->loadStateListAnimator(Landroid/content/Context;I)Landroid/animation/StateListAnimator;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setStateListAnimator(Landroid/animation/StateListAnimator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method
