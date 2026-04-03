.class abstract Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;
.super Lcom/google/android/material/appbar/ViewOffsetBehavior;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/appbar/ViewOffsetBehavior",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private overlayTop:I

.field final tempRect1:Landroid/graphics/Rect;

.field final tempRect2:Landroid/graphics/Rect;

.field private verticalLayoutGap:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/appbar/ViewOffsetBehavior;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->tempRect1:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->tempRect2:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->verticalLayoutGap:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/ViewOffsetBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->tempRect1:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->tempRect2:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->verticalLayoutGap:I

    return-void
.end method

.method private static resolveGravity(I)I
    .locals 0

    if-nez p0, :cond_0

    const p0, 0x800033

    :cond_0
    return p0
.end method


# virtual methods
.method abstract findFirstDependency(Ljava/util/List;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation
.end method

.method final getOverlapPixelsForOffset(Landroid/view/View;)I
    .locals 4

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->overlayTop:I

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->getOverlapRatioForOffset(Landroid/view/View;)F

    move-result v1

    iget v2, p0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->overlayTop:I

    int-to-float v3, v2

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-static {v1, v0, v2}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v0

    goto :goto_0
.end method

.method getOverlapRatioForOffset(Landroid/view/View;)F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public final getOverlayTop()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->overlayTop:I

    return v0
.end method

.method getScrollRange(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method final getVerticalLayoutGap()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->verticalLayoutGap:I

    return v0
.end method

.method protected layoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V
    .locals 8

    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->findFirstDependency(Ljava/util/List;)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    iget-object v3, p0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->tempRect1:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v1

    iget v2, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v2

    iget v4, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v4

    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v4, v5

    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    move-result v5

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v7

    add-int/2addr v5, v7

    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v5, v7

    iget v7, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v5, v7

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getLastWindowInsets()Landroidx/core/view/WindowInsetsCompat;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p2}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v4

    add-int/2addr v2, v4

    iput v2, v3, Landroid/graphics/Rect;->left:I

    iget v2, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v1

    sub-int v1, v2, v1

    iput v1, v3, Landroid/graphics/Rect;->right:I

    :cond_0
    iget-object v4, p0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->tempRect2:Landroid/graphics/Rect;

    iget v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->gravity:I

    invoke-static {v0}, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->resolveGravity(I)I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    move v5, p3

    invoke-static/range {v0 .. v5}, Landroidx/core/view/GravityCompat;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    invoke-virtual {p0, v6}, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->getOverlapPixelsForOffset(Landroid/view/View;)I

    move-result v0

    iget v1, v4, Landroid/graphics/Rect;->left:I

    iget v2, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    iget v3, v4, Landroid/graphics/Rect;->right:I

    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v5, v0

    invoke-virtual {p2, v1, v2, v3, v0}, Landroid/view/View;->layout(IIII)V

    iget v0, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->verticalLayoutGap:I

    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/appbar/ViewOffsetBehavior;->layoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->verticalLayoutGap:I

    goto :goto_0
.end method

.method public onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .locals 6

    const/4 v5, -0x1

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v2, v5, :cond_0

    const/4 v0, -0x2

    if-ne v2, v0, :cond_5

    :cond_0
    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->findFirstDependency(Ljava/util/List;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {p5}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    if-lez v0, :cond_2

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getLastWindowInsets()Landroidx/core/view/WindowInsetsCompat;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v4

    invoke-virtual {v3}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v3

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->getScrollRange(Landroid/view/View;)I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->shouldHeaderOverlapScrollingChild()Z

    move-result v3

    if-eqz v3, :cond_3

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setTranslationY(F)V

    move v1, v0

    :goto_1
    if-ne v2, v5, :cond_4

    const/high16 v0, 0x40000000    # 2.0f

    :goto_2
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onMeasureChild(Landroid/view/View;IIII)V

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_2
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_3
    sub-int/2addr v0, v1

    move v1, v0

    goto :goto_1

    :cond_4
    const/high16 v0, -0x80000000

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public final setOverlayTop(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->overlayTop:I

    return-void
.end method

.method protected shouldHeaderOverlapScrollingChild()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
