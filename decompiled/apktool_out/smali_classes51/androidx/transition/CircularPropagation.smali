.class public Landroidx/transition/CircularPropagation;
.super Landroidx/transition/VisibilityPropagation;


# instance fields
.field private mPropagationSpeed:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/transition/VisibilityPropagation;-><init>()V

    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Landroidx/transition/CircularPropagation;->mPropagationSpeed:F

    return-void
.end method

.method private static distance(FFFF)F
    .locals 2

    sub-float v0, p2, p0

    sub-float v1, p3, p1

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method


# virtual methods
.method public getStartDelay(Landroid/view/ViewGroup;Landroidx/transition/Transition;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)J
    .locals 10

    const-wide/16 v2, 0x0

    const/4 v1, 0x1

    const/4 v9, 0x0

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    move-wide v0, v2

    :goto_0
    return-wide v0

    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p0, p3}, Landroidx/transition/CircularPropagation;->getViewVisibility(Landroidx/transition/TransitionValues;)I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, -0x1

    move-object p4, p3

    :goto_1
    invoke-virtual {p0, p4}, Landroidx/transition/CircularPropagation;->getViewX(Landroidx/transition/TransitionValues;)I

    move-result v5

    invoke-virtual {p0, p4}, Landroidx/transition/CircularPropagation;->getViewY(Landroidx/transition/TransitionValues;)I

    move-result v6

    invoke-virtual {p2}, Landroidx/transition/Transition;->getEpicenter()Landroid/graphics/Rect;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    :goto_2
    int-to-float v5, v5

    int-to-float v6, v6

    int-to-float v4, v4

    int-to-float v1, v1

    invoke-static {v5, v6, v4, v1}, Landroidx/transition/CircularPropagation;->distance(FFFF)F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v9, v9, v4, v5}, Landroidx/transition/CircularPropagation;->distance(FFFF)F

    move-result v4

    div-float/2addr v1, v4

    invoke-virtual {p2}, Landroidx/transition/Transition;->getDuration()J

    move-result-wide v4

    cmp-long v2, v4, v2

    if-gez v2, :cond_4

    const-wide/16 v2, 0x12c

    :goto_3
    int-to-long v4, v0

    mul-long/2addr v2, v4

    long-to-float v0, v2

    iget v2, p0, Landroidx/transition/CircularPropagation;->mPropagationSpeed:F

    div-float/2addr v0, v2

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    const/4 v4, 0x2

    new-array v7, v4, [I

    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    const/4 v4, 0x0

    aget v4, v7, v4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v4, v8

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v8

    add-float/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    aget v1, v7, v1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v1, v7

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v7

    add-float/2addr v1, v7

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_2

    :cond_4
    move-wide v2, v4

    goto :goto_3
.end method

.method public setPropagationSpeed(F)V
    .locals 6

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x1d

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "5f0e63"

    const-wide v4, 0x41df3efee0400000L    # 2.096888705E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Landroidx/transition/CircularPropagation;->mPropagationSpeed:F

    return-void

    :array_0
    .array-data 1
        0x45t
        0x14t
        0x5ft
        0x15t
        0x57t
        0x54t
        0x54t
        0x12t
        0x59t
        0xat
        0x58t
        0x60t
        0x45t
        0x3t
        0x55t
        0x1t
        0x16t
        0x5et
        0x54t
        0x1ft
        0x10t
        0xbt
        0x59t
        0x47t
        0x15t
        0x4t
        0x55t
        0x45t
        0x6t
    .end array-data
.end method
