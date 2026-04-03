.class public Landroidx/recyclerview/widget/PagerSnapHelper;
.super Landroidx/recyclerview/widget/SnapHelper;


# static fields
.field private static final MAX_SCROLL_ON_FLING_DURATION:I = 0x64


# instance fields
.field private mHorizontalHelper:Landroidx/recyclerview/widget/OrientationHelper;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mVerticalHelper:Landroidx/recyclerview/widget/OrientationHelper;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/SnapHelper;-><init>()V

    return-void
.end method

.method private distanceToCenter(Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;)I
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method private findCenterView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;)Landroid/view/View;
    .locals 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    return-object v3

    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v6

    invoke-virtual {p2}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v0

    div-int/lit8 v7, v0, 0x2

    const v1, 0x7fffffff

    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, v5, :cond_0

    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v0, v8

    add-int v8, v6, v7

    sub-int/2addr v0, v8

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v1, :cond_2

    move-object v1, v2

    :goto_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-object v3, v1

    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    move-object v1, v3

    goto :goto_1
.end method

.method private getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/recyclerview/widget/PagerSnapHelper;->mHorizontalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/PagerSnapHelper;->mHorizontalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    iget-object v0, v0, Landroidx/recyclerview/widget/OrientationHelper;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eq v0, p1, :cond_1

    :cond_0
    invoke-static {p1}, Landroidx/recyclerview/widget/OrientationHelper;->createHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/PagerSnapHelper;->mHorizontalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/PagerSnapHelper;->mHorizontalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    return-object v0
.end method

.method private getOrientationHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/PagerSnapHelper;->getVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/PagerSnapHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/recyclerview/widget/PagerSnapHelper;->mVerticalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/PagerSnapHelper;->mVerticalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    iget-object v0, v0, Landroidx/recyclerview/widget/OrientationHelper;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eq v0, p1, :cond_1

    :cond_0
    invoke-static {p1}, Landroidx/recyclerview/widget/OrientationHelper;->createVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/PagerSnapHelper;->mVerticalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/PagerSnapHelper;->mVerticalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    return-object v0
.end method

.method private isForwardFling(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;II)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v2

    if-eqz v2, :cond_2

    if-lez p2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    if-gtz p3, :cond_0

    goto :goto_0
.end method

.method private isReverseLayout(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v1

    instance-of v2, p1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    if-eqz v2, :cond_1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v2, v1, Landroid/graphics/PointF;->x:F

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    iget v1, v1, Landroid/graphics/PointF;->y:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method


# virtual methods
.method public calculateDistanceToFinalSnap(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/PagerSnapHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Landroidx/recyclerview/widget/PagerSnapHelper;->distanceToCenter(Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;)I

    move-result v1

    aput v1, v0, v2

    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/PagerSnapHelper;->getVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Landroidx/recyclerview/widget/PagerSnapHelper;->distanceToCenter(Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;)I

    move-result v1

    aput v1, v0, v3

    :goto_1
    return-object v0

    :cond_0
    aput v2, v0, v2

    goto :goto_0

    :cond_1
    aput v2, v0, v3

    goto :goto_1
.end method

.method protected createScroller(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/PagerSnapHelper$1;

    iget-object v1, p0, Landroidx/recyclerview/widget/PagerSnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/PagerSnapHelper$1;-><init>(Landroidx/recyclerview/widget/PagerSnapHelper;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/PagerSnapHelper;->getVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/PagerSnapHelper;->findCenterView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/PagerSnapHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/PagerSnapHelper;->findCenterView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findTargetSnapPosition(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;II)I
    .locals 11

    const/4 v5, 0x0

    const/4 v0, -0x1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/PagerSnapHelper;->getOrientationHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v9

    if-eqz v9, :cond_0

    const/high16 v2, -0x80000000

    const v3, 0x7fffffff

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v10

    const/4 v1, 0x0

    move v7, v1

    move-object v1, v5

    :goto_1
    if-ge v7, v10, :cond_4

    invoke-virtual {p1, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_2

    move-object v4, v5

    :goto_2
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    move-object v5, v4

    goto :goto_1

    :cond_2
    invoke-direct {p0, v6, v9}, Landroidx/recyclerview/widget/PagerSnapHelper;->distanceToCenter(Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;)I

    move-result v4

    if-gtz v4, :cond_3

    if-le v4, v2, :cond_3

    move v2, v4

    move-object v1, v6

    :cond_3
    if-ltz v4, :cond_9

    if-ge v4, v3, :cond_9

    move v3, v4

    move-object v4, v6

    goto :goto_2

    :cond_4
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/PagerSnapHelper;->isForwardFling(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;II)Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v5, :cond_5

    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    goto :goto_0

    :cond_5
    if-nez v2, :cond_6

    if-eqz v1, :cond_6

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    goto :goto_0

    :cond_6
    if-eqz v2, :cond_7

    move-object v5, v1

    :cond_7
    if-eqz v5, :cond_0

    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/PagerSnapHelper;->isReverseLayout(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Z

    move-result v1

    if-ne v1, v2, :cond_8

    move v1, v0

    :goto_3
    add-int/2addr v1, v3

    if-ltz v1, :cond_0

    if-ge v1, v8, :cond_0

    move v0, v1

    goto :goto_0

    :cond_8
    const/4 v1, 0x1

    goto :goto_3

    :cond_9
    move-object v4, v5

    goto :goto_2
.end method
