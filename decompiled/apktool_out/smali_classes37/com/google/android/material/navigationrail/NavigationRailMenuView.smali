.class public Lcom/google/android/material/navigationrail/NavigationRailMenuView;
.super Lcom/google/android/material/navigation/NavigationBarMenuView;


# instance fields
.field private itemMinimumHeight:I

.field private final layoutParams:Landroid/widget/FrameLayout$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, -0x1

    invoke-direct {p0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;-><init>(Landroid/content/Context;)V

    iput v2, p0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->itemMinimumHeight:I

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x31

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->setItemActiveIndicatorResizeable(Z)V

    return-void
.end method

.method private makeSharedHeightSpec(III)I
    .locals 3

    const/4 v0, 0x1

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    div-int v1, p2, v0

    iget v0, p0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->itemMinimumHeight:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    goto :goto_0
.end method

.method private measureChildHeight(Landroid/view/View;II)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private measureSharedChildHeights(IIILandroid/view/View;)I
    .locals 5

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->makeSharedHeightSpec(III)I

    if-nez p4, :cond_1

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->makeSharedHeightSpec(III)I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->getChildCount()I

    move-result v3

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_2

    invoke-virtual {p0, v2}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eq v4, p4, :cond_0

    invoke-direct {p0, v4, p1, v0}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->measureChildHeight(Landroid/view/View;II)I

    move-result v4

    add-int/2addr v1, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0

    :cond_2
    return v1
.end method

.method private measureShiftingChildHeights(III)I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->makeSharedHeightSpec(III)I

    move-result v0

    invoke-direct {p0, v1, p1, v0}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->measureChildHeight(Landroid/view/View;II)I

    move-result v0

    sub-int/2addr p2, v0

    add-int/lit8 p3, p3, -0x1

    :cond_0
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->measureSharedChildHeights(IIILandroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method protected createNavigationBarItemView(Landroid/content/Context;)Lcom/google/android/material/navigation/NavigationBarItemView;
    .locals 1

    new-instance v0, Lcom/google/android/material/navigationrail/NavigationRailItemView;

    invoke-direct {v0, p1}, Lcom/google/android/material/navigationrail/NavigationRailItemView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getItemMinimumHeight()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->itemMinimumHeight:I

    return v0
.end method

.method getMenuGravity()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    return v0
.end method

.method isTopGravity()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    and-int/lit8 v0, v0, 0x70

    const/16 v1, 0x30

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->getChildCount()I

    move-result v3

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int v6, p4, p2

    add-int v7, v5, v0

    invoke-virtual {v4, v1, v0, v6, v7}, Landroid/view/View;->layout(IIII)V

    add-int/2addr v0, v5

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->getMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->getLabelVisibilityMode()I

    move-result v2

    invoke-virtual {p0, v2, v1}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->isShifting(II)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->measureShiftingChildHeights(III)I

    move-result v0

    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v1, p1, v3}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    invoke-static {v0, p2, v3}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->setMeasuredDimension(II)V

    return-void

    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->measureSharedChildHeights(IIILandroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method public setItemMinimumHeight(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->itemMinimumHeight:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->itemMinimumHeight:I

    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->requestLayout()V

    :cond_0
    return-void
.end method

.method setMenuGravity(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v0}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
