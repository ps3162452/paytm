.class Lcom/google/android/material/tabs/TabIndicatorInterpolator;
.super Ljava/lang/Object;


# static fields
.field private static final MIN_INDICATOR_WIDTH:I = 0x18


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static calculateIndicatorWidthForTab(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;)Landroid/graphics/RectF;
    .locals 5

    if-nez p1, :cond_0

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->isTabIndicatorFullWidth()Z

    move-result v0

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/google/android/material/tabs/TabLayout$TabView;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/material/tabs/TabLayout$TabView;

    const/16 v0, 0x18

    invoke-static {p1, v0}, Lcom/google/android/material/tabs/TabIndicatorInterpolator;->calculateTabViewContentBounds(Lcom/google/android/material/tabs/TabLayout$TabView;I)Landroid/graphics/RectF;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0
.end method

.method static calculateTabViewContentBounds(Lcom/google/android/material/tabs/TabLayout$TabView;I)Landroid/graphics/RectF;
    .locals 7

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->getContentWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->getContentHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result v0

    float-to-int v0, v0

    if-ge v1, v0, :cond_0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->getRight()I

    move-result v3

    add-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->getBottom()I

    move-result v4

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v4, v0, 0x2

    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v5, v1, 0x2

    new-instance v6, Landroid/graphics/RectF;

    sub-int v4, v1, v4

    int-to-float v4, v4

    sub-int v2, v3, v2

    int-to-float v2, v2

    add-int/2addr v0, v1

    int-to-float v0, v0

    add-int v1, v5, v3

    int-to-float v1, v1

    invoke-direct {v6, v4, v2, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v6

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method setIndicatorBoundsForTab(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 4

    invoke-static {p1, p2}, Lcom/google/android/material/tabs/TabIndicatorInterpolator;->calculateIndicatorWidthForTab(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v0

    iget v1, v0, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/RectF;->right:F

    float-to-int v0, v0

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p3, v1, v2, v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method updateIndicatorForOffset(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;Landroid/view/View;FLandroid/graphics/drawable/Drawable;)V
    .locals 4

    invoke-static {p1, p2}, Lcom/google/android/material/tabs/TabIndicatorInterpolator;->calculateIndicatorWidthForTab(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {p1, p3}, Lcom/google/android/material/tabs/TabIndicatorInterpolator;->calculateIndicatorWidthForTab(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v1

    iget v2, v0, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v1, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    invoke-static {v2, v3, p4}, Lcom/google/android/material/animation/AnimationUtils;->lerp(IIF)I

    move-result v2

    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/RectF;->right:F

    float-to-int v0, v0

    iget v1, v1, Landroid/graphics/RectF;->right:F

    float-to-int v1, v1

    invoke-static {v0, v1, p4}, Lcom/google/android/material/animation/AnimationUtils;->lerp(IIF)I

    move-result v0

    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p5, v2, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method
