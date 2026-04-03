.class public Landroidx/transition/ChangeScroll;
.super Landroidx/transition/Transition;


# static fields
.field private static final PROPERTIES:[Ljava/lang/String;

.field private static final PROPNAME_SCROLL_X:Ljava/lang/String;

.field private static final PROPNAME_SCROLL_Y:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x1

    const/16 v4, 0x16

    new-array v0, v4, [B

    fill-array-data v0, :array_0

    const-string v1, "c4d892"

    const/16 v2, -0x194e

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/transition/ChangeScroll;->PROPNAME_SCROLL_X:Ljava/lang/String;

    new-array v0, v4, [B

    fill-array-data v0, :array_1

    const-string v1, "080d8e"

    invoke-static {v0, v1, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/transition/ChangeScroll;->PROPNAME_SCROLL_Y:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v4, [B

    fill-array-data v2, :array_2

    const-string v3, "635938"

    invoke-static {v2, v3, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    new-array v1, v4, [B

    fill-array-data v1, :array_3

    const-string v2, "d043de"

    const-wide/32 v4, -0x5522d701

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    sput-object v0, Landroidx/transition/ChangeScroll;->PROPERTIES:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x2t
        0x5at
        0x0t
        0x4at
        0x56t
        0x5bt
        0x7t
        0xet
        0x7t
        0x50t
        0x58t
        0x5ct
        0x4t
        0x51t
        0x37t
        0x5bt
        0x4bt
        0x5dt
        0xft
        0x58t
        0x5et
        0x40t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x51t
        0x56t
        0x54t
        0x16t
        0x57t
        0xct
        0x54t
        0x2t
        0x53t
        0xct
        0x59t
        0xbt
        0x57t
        0x5dt
        0x63t
        0x7t
        0x4at
        0xat
        0x5ct
        0x54t
        0xat
        0x1dt
    .end array-data

    nop

    :array_2
    .array-data 1
        0x57t
        0x5dt
        0x51t
        0x4bt
        0x5ct
        0x51t
        0x52t
        0x9t
        0x56t
        0x51t
        0x52t
        0x56t
        0x51t
        0x56t
        0x66t
        0x5at
        0x41t
        0x57t
        0x5at
        0x5ft
        0xft
        0x41t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x5t
        0x5et
        0x50t
        0x41t
        0xbt
        0xct
        0x0t
        0xat
        0x57t
        0x5bt
        0x5t
        0xbt
        0x3t
        0x55t
        0x67t
        0x50t
        0x16t
        0xat
        0x8t
        0x5ct
        0xet
        0x4at
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/transition/Transition;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroidx/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private captureValues(Landroidx/transition/TransitionValues;)V
    .locals 3

    iget-object v0, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v1, Landroidx/transition/ChangeScroll;->PROPNAME_SCROLL_X:Ljava/lang/String;

    iget-object v2, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getScrollX()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v1, Landroidx/transition/ChangeScroll;->PROPNAME_SCROLL_Y:Ljava/lang/String;

    iget-object v2, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public captureEndValues(Landroidx/transition/TransitionValues;)V
    .locals 0
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/transition/ChangeScroll;->captureValues(Landroidx/transition/TransitionValues;)V

    return-void
.end method

.method public captureStartValues(Landroidx/transition/TransitionValues;)V
    .locals 0
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/transition/ChangeScroll;->captureValues(Landroidx/transition/TransitionValues;)V

    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 10
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v2, p3, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    iget-object v0, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v1, Landroidx/transition/ChangeScroll;->PROPNAME_SCROLL_X:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, p3, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v1, Landroidx/transition/ChangeScroll;->PROPNAME_SCROLL_X:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v0, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v1, Landroidx/transition/ChangeScroll;->PROPNAME_SCROLL_Y:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v0, p3, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v1, Landroidx/transition/ChangeScroll;->PROPNAME_SCROLL_Y:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-eq v3, v4, :cond_2

    invoke-virtual {v2, v3}, Landroid/view/View;->setScrollX(I)V

    const/4 v1, 0x7

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v7, "096fd0"

    const/16 v8, -0x5dfd

    invoke-static {v1, v7, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x0

    aput v3, v7, v8

    const/4 v3, 0x1

    aput v4, v7, v3

    invoke-static {v2, v1, v7}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    :cond_2
    if-eq v5, v6, :cond_3

    invoke-virtual {v2, v5}, Landroid/view/View;->setScrollY(I)V

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v3, "6d0b58"

    const-wide/32 v8, 0x157395a1

    invoke-static {v0, v3, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v5, v3, v4

    const/4 v4, 0x1

    aput v6, v3, v4

    invoke-static {v2, v0, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    :cond_3
    invoke-static {v1, v0}, Landroidx/transition/TransitionUtils;->mergeAnimators(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v0

    goto/16 :goto_0

    nop

    :array_0
    .array-data 1
        0x43t
        0x5at
        0x44t
        0x9t
        0x8t
        0x5ct
        0x68t
    .end array-data

    :array_1
    .array-data 1
        0x45t
        0x7t
        0x42t
        0xdt
        0x59t
        0x54t
        0x6ft
    .end array-data
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sget-object v0, Landroidx/transition/ChangeScroll;->PROPERTIES:[Ljava/lang/String;

    return-object v0
.end method
