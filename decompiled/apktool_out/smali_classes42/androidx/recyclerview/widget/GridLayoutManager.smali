.class public Landroidx/recyclerview/widget/GridLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup;,
        Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;,
        Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final DEFAULT_SPAN_COUNT:I = -0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field mCachedBorders:[I

.field final mDecorInsets:Landroid/graphics/Rect;

.field mPendingSpanCountChange:Z

.field final mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

.field final mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

.field mSet:[Landroid/view/View;

.field mSpanCount:I

.field mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

.field private mUsingSpansToEstimateScrollBarDimensions:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x11

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "24f029"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/recyclerview/widget/GridLayoutManager;->TAG:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x75t
        0x46t
        0xft
        0x54t
        0x7et
        0x58t
        0x4bt
        0x5bt
        0x13t
        0x44t
        0x7ft
        0x58t
        0x5ct
        0x55t
        0x1t
        0x55t
        0x40t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {v0}, Landroidx/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 1

    invoke-direct {p0, p1, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {v0}, Landroidx/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {v0}, Landroidx/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    invoke-static {p1, p2, p3, p4}, Landroidx/recyclerview/widget/GridLayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;

    move-result-object v0

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;->spanCount:I

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    return-void
.end method

.method private assignSpans(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;IZ)V
    .locals 6

    const/4 v2, 0x0

    const/4 v0, -0x1

    if-eqz p4, :cond_0

    const/4 v0, 0x1

    move v1, v0

    move v0, v2

    :goto_0
    move v3, v0

    :goto_1
    if-eq v3, p3, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v4, v0, v3

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    invoke-direct {p0, p1, p2, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSize(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v4

    iput v4, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    iput v2, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    add-int/2addr v2, v0

    add-int v0, v3, v1

    move v3, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, p3, -0x1

    move p3, v0

    move v5, v0

    move v0, v1

    move v1, v5

    goto :goto_0

    :cond_1
    return-void
.end method

.method private cachePreLayoutSpanMapping()V
    .locals 6

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v3

    iget-object v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v0

    invoke-virtual {v4, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private calculateItemBorders(I)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-static {v0, v1, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->calculateItemBorders([III)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    return-void
.end method

.method static calculateItemBorders([III)[I
    .locals 6

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    array-length v0, p0

    add-int/lit8 v1, p1, 0x1

    if-ne v0, v1, :cond_0

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget v0, p0, v0

    if-eq v0, p2, :cond_1

    :cond_0
    add-int/lit8 v0, p1, 0x1

    new-array p0, v0, [I

    :cond_1
    aput v2, p0, v2

    div-int v1, p2, p1

    rem-int v5, p2, p1

    const/4 v0, 0x1

    move v3, v0

    move v4, v2

    :goto_0
    if-gt v3, p1, :cond_2

    add-int/2addr v2, v5

    if-lez v2, :cond_3

    sub-int v0, p1, v2

    if-ge v0, v5, :cond_3

    add-int/lit8 v0, v1, 0x1

    sub-int/2addr v2, p1

    :goto_1
    add-int/2addr v4, v0

    aput v4, p0, v3

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    return-object p0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private clearPreLayoutSpanMappingCache()V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method private computeScrollOffsetWithSpanInfo(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 9

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->ensureLayoutState()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->isSmoothScrollbarEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {p0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v4

    if-nez v3, :cond_3

    move v1, v2

    :goto_2
    invoke-virtual {p0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v1

    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v5

    iget v6, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v2, v5, v6}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanGroupIndex(II)I

    move-result v2

    iget-object v5, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    iget v7, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v5, v6, v7}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanGroupIndex(II)I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v5, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    iget v8, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v5, v7, v8}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanGroupIndex(II)I

    move-result v5

    iget-boolean v7, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v7, :cond_4

    add-int/lit8 v5, v5, 0x1

    sub-int v2, v5, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_3
    if-eqz v3, :cond_0

    iget-object v2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget-object v3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v5

    iget v6, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v3, v5, v6}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanGroupIndex(II)I

    move-result v3

    iget-object v5, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    iget v6, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v5, v1, v6}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanGroupIndex(II)I

    move-result v1

    int-to-float v2, v2

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    div-float v1, v2, v1

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iget-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    iget-object v2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto/16 :goto_0

    :cond_2
    move v1, v0

    goto/16 :goto_1

    :cond_3
    move v1, v0

    goto/16 :goto_2

    :cond_4
    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_3
.end method

.method private computeScrollRangeWithSpanInfo(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 7

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->ensureLayoutState()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->isSmoothScrollbarEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {p0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->isSmoothScrollbarEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    :goto_2
    invoke-virtual {p0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v1

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->isSmoothScrollbarEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanGroupIndex(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v0

    goto :goto_2

    :cond_4
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    iget-object v2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    iget-object v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    iget v5, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v4, v3, v5}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanGroupIndex(II)I

    move-result v3

    iget-object v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    iget v5, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v4, v1, v5}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanGroupIndex(II)I

    move-result v1

    iget-object v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v4, v5, v6}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanGroupIndex(II)I

    move-result v4

    sub-int/2addr v0, v2

    int-to-float v0, v0

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    div-float/2addr v0, v1

    add-int/lit8 v1, v4, 0x1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method private ensureAnchorIsInCorrectSpan(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;I)V
    .locals 4

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    :goto_0
    iget v1, p3, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {p0, p1, p2, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanIndex(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v1

    if-eqz v0, :cond_1

    :goto_1
    if-lez v1, :cond_3

    iget v0, p3, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    if-lez v0, :cond_3

    iget v0, p3, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p3, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    iget v0, p3, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanIndex(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v3

    iget v0, p3, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    :goto_2
    add-int/lit8 v2, v3, -0x1

    if-ge v0, v2, :cond_2

    add-int/lit8 v2, v0, 0x1

    invoke-direct {p0, p1, p2, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanIndex(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v2

    if-le v2, v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_2

    :cond_2
    iput v0, p3, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    :cond_3
    return-void
.end method

.method private ensureViewSet()V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    array-length v0, v0

    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    if-eq v0, v1, :cond_1

    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    :cond_1
    return-void
.end method

.method private getSpanGroupIndex(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v0, p3, v1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanGroupIndex(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    sget-object v1, Landroidx/recyclerview/widget/GridLayoutManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x2f

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "8f1576"

    invoke-static {v3, v4, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    iget v2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanGroupIndex(II)I

    move-result v0

    goto :goto_0

    :array_0
    .array-data 1
        0x7bt
        0x7t
        0x5ft
        0x5bt
        0x58t
        0x42t
        0x18t
        0x0t
        0x58t
        0x5bt
        0x53t
        0x16t
        0x4bt
        0x16t
        0x50t
        0x5bt
        0x17t
        0x45t
        0x51t
        0x1ct
        0x54t
        0x15t
        0x51t
        0x59t
        0x4at
        0x46t
        0x41t
        0x47t
        0x52t
        0x16t
        0x54t
        0x7t
        0x48t
        0x5at
        0x42t
        0x42t
        0x18t
        0x16t
        0x5et
        0x46t
        0x5et
        0x42t
        0x51t
        0x9t
        0x5ft
        0x1bt
        0x17t
    .end array-data
.end method

.method private getSpanIndex(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I
    .locals 6

    const/4 v1, -0x1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v0, p3, v1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p3, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result v0

    if-ne v0, v1, :cond_2

    sget-object v0, Landroidx/recyclerview/widget/GridLayoutManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x59

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "b37d57"

    const-wide/32 v4, 0x4d67131a

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    iget v2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v1, v0, v2}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result v0

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x21t
        0x52t
        0x59t
        0xat
        0x5at
        0x43t
        0x42t
        0x55t
        0x5et
        0xat
        0x51t
        0x17t
        0x11t
        0x43t
        0x56t
        0xat
        0x15t
        0x44t
        0xbt
        0x49t
        0x52t
        0x44t
        0x53t
        0x58t
        0x10t
        0x13t
        0x47t
        0x16t
        0x50t
        0x17t
        0xet
        0x52t
        0x4et
        0xbt
        0x40t
        0x43t
        0x42t
        0x43t
        0x58t
        0x17t
        0x5ct
        0x43t
        0xbt
        0x5ct
        0x59t
        0x4at
        0x15t
        0x7et
        0x16t
        0x13t
        0x5et
        0x17t
        0x15t
        0x59t
        0xdt
        0x47t
        0x17t
        0x7t
        0x54t
        0x54t
        0xat
        0x56t
        0x53t
        0x48t
        0x15t
        0x59t
        0xdt
        0x47t
        0x17t
        0xdt
        0x5bt
        0x17t
        0x16t
        0x5bt
        0x52t
        0x44t
        0x54t
        0x53t
        0x3t
        0x43t
        0x43t
        0x1t
        0x47t
        0x19t
        0x42t
        0x63t
        0x58t
        0x17t
        0xft
    .end array-data
.end method

.method private getSpanSize(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I
    .locals 6

    const/4 v0, 0x1

    const/4 v2, -0x1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0, p3}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p3, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-ne v1, v2, :cond_2

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result v1

    if-ne v1, v2, :cond_1

    sget-object v1, Landroidx/recyclerview/widget/GridLayoutManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x59

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "ca8d9b"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x20t
        0x0t
        0x56t
        0xat
        0x56t
        0x16t
        0x43t
        0x7t
        0x51t
        0xat
        0x5dt
        0x42t
        0x10t
        0x11t
        0x59t
        0xat
        0x19t
        0x11t
        0xat
        0x1bt
        0x5dt
        0x44t
        0x5ft
        0xdt
        0x11t
        0x41t
        0x48t
        0x16t
        0x5ct
        0x42t
        0xft
        0x0t
        0x41t
        0xbt
        0x4ct
        0x16t
        0x43t
        0x11t
        0x57t
        0x17t
        0x50t
        0x16t
        0xat
        0xet
        0x56t
        0x4at
        0x19t
        0x2bt
        0x17t
        0x41t
        0x51t
        0x17t
        0x19t
        0xct
        0xct
        0x15t
        0x18t
        0x7t
        0x58t
        0x1t
        0xbt
        0x4t
        0x5ct
        0x48t
        0x19t
        0xct
        0xct
        0x15t
        0x18t
        0xdt
        0x57t
        0x42t
        0x17t
        0x9t
        0x5dt
        0x44t
        0x58t
        0x6t
        0x2t
        0x11t
        0x4ct
        0x1t
        0x4bt
        0x4ct
        0x43t
        0x31t
        0x57t
        0x17t
        0x3t
    .end array-data
.end method

.method private guessMeasurement(FI)V
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->calculateItemBorders(I)V

    return-void
.end method

.method private measureChild(Landroid/view/View;IZ)V
    .locals 8

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    iget-object v1, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iget v3, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v3

    iget v3, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->leftMargin:I

    add-int/2addr v1, v3

    iget v3, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v3, v1

    iget v1, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    iget v4, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    invoke-virtual {p0, v1, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpaceForSpanRange(II)I

    move-result v1

    iget v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientation:I

    if-ne v4, v5, :cond_0

    iget v4, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->width:I

    invoke-static {v1, p2, v3, v4, v6}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v1

    iget-object v3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getHeightMode()I

    move-result v4

    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->height:I

    invoke-static {v3, v4, v2, v0, v5}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v0

    move v7, v1

    move v1, v0

    move v0, v7

    :goto_0
    invoke-direct {p0, p1, v0, v1, p3}, Landroidx/recyclerview/widget/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    return-void

    :cond_0
    iget v4, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->height:I

    invoke-static {v1, p2, v2, v4, v6}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v1

    iget-object v2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getWidthMode()I

    move-result v4

    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->width:I

    invoke-static {v2, v4, v3, v0, v5}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v0

    goto :goto_0
.end method

.method private measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    if-eqz p4, :cond_1

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->shouldReMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->shouldMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z

    move-result v0

    goto :goto_0
.end method

.method private updateMeasurements()V
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->calculateItemBorders(I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method public checkLayoutParams(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    return v0
.end method

.method collectPrefetchPositionsForLayoutState(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 5

    const/4 v1, 0x0

    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    move v2, v0

    move v0, v1

    :goto_0
    iget v3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    if-ge v0, v3, :cond_0

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->hasMore(Landroidx/recyclerview/widget/RecyclerView$State;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-lez v2, :cond_0

    iget v3, p2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-interface {p3, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    iget-object v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v3, v4

    iput v3, p2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public computeHorizontalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mUsingSpansToEstimateScrollBarDimensions:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->computeScrollOffsetWithSpanInfo(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeHorizontalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    goto :goto_0
.end method

.method public computeHorizontalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mUsingSpansToEstimateScrollBarDimensions:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->computeScrollRangeWithSpanInfo(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeHorizontalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    goto :goto_0
.end method

.method public computeVerticalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mUsingSpansToEstimateScrollBarDimensions:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->computeScrollOffsetWithSpanInfo(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeVerticalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    goto :goto_0
.end method

.method public computeVerticalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mUsingSpansToEstimateScrollBarDimensions:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->computeScrollRangeWithSpanInfo(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeVerticalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    goto :goto_0
.end method

.method findReferenceChild(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;ZZ)Landroid/view/View;
    .locals 11

    const/4 v4, 0x0

    const/4 v0, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildCount()I

    move-result v2

    const/4 v1, 0x1

    if-eqz p4, :cond_7

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v0

    move v10, v0

    move v0, v1

    move v1, v10

    :goto_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v7

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->ensureLayoutState()V

    iget-object v3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v8

    iget-object v3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v9

    move-object v3, v4

    move-object v5, v4

    move v6, v0

    :goto_1
    if-eq v6, v2, :cond_3

    invoke-virtual {p0, v6}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_6

    if-ge v0, v7, :cond_6

    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanIndex(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v3

    move-object v4, v5

    :goto_2
    add-int v3, v6, v1

    move-object v5, v4

    move v6, v3

    move-object v3, v0

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez v5, :cond_6

    move-object v0, v3

    goto :goto_2

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    if-ge v0, v9, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    if-ge v0, v8, :cond_5

    :cond_2
    if-nez v3, :cond_6

    move-object v0, v4

    move-object v4, v5

    goto :goto_2

    :cond_3
    if-eqz v3, :cond_4

    move-object v5, v3

    :cond_4
    move-object v4, v5

    :cond_5
    return-object v4

    :cond_6
    move-object v0, v3

    move-object v4, v5

    goto :goto_2

    :cond_7
    move v0, v3

    goto :goto_0
.end method

.method public generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 3

    const/4 v2, -0x1

    const/4 v1, -0x2

    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;-><init>(II)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;-><init>(II)V

    goto :goto_0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 1

    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 1

    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getColumnCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientation:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-ge v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanGroupIndex(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getRowCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanGroupIndex(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method getSpaceForSpanRange(II)I
    .locals 3

    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    sub-int/2addr v1, p1

    aget v0, v0, v1

    iget-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    iget v2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    sub-int/2addr v2, p1

    sub-int/2addr v2, p2

    aget v1, v1, v2

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    add-int v1, p1, p2

    aget v0, v0, v1

    iget-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    aget v1, v1, p1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public getSpanCount()I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    return v0
.end method

.method public getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    return-object v0
.end method

.method public isUsingSpansToEstimateScrollbarDimensions()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mUsingSpansToEstimateScrollBarDimensions:Z

    return v0
.end method

.method layoutChunk(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;)V
    .locals 15

    iget-object v2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/OrientationHelper;->getModeInOther()I

    move-result v10

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v10, v2, :cond_1

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildCount()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    iget v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    aget v2, v2, v4

    move v8, v2

    :goto_1
    if-eqz v3, :cond_0

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->updateMeasurements()V

    :cond_0
    move-object/from16 v0, p3

    iget v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    const/4 v2, 0x1

    move v4, v2

    :goto_2
    const/4 v2, 0x0

    iget v5, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    if-nez v4, :cond_1c

    move-object/from16 v0, p3

    iget v5, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {p0, v0, v1, v5}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanIndex(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v5

    move-object/from16 v0, p3

    iget v6, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {p0, v0, v1, v6}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSize(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v6

    add-int/2addr v5, v6

    move v9, v2

    move v2, v5

    :goto_3
    iget v5, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    if-ge v9, v5, :cond_5

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->hasMore(Landroidx/recyclerview/widget/RecyclerView$State;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-lez v2, :cond_5

    move-object/from16 v0, p3

    iget v5, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {p0, v0, v1, v5}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSize(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v6

    iget v7, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    if-le v6, v7, :cond_4

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x11

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    const-string v7, "733578"

    const-wide v8, 0x41b4f021aa000000L    # 3.51281578E8

    invoke-static {v4, v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    new-array v4, v4, [B

    fill-array-data v4, :array_1

    const-string v5, "79dbca"

    const/16 v7, 0x3caa

    invoke-static {v4, v5, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x26

    new-array v4, v4, [B

    fill-array-data v4, :array_2

    const-string v5, "fce5f7"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x7

    new-array v4, v4, [B

    fill-array-data v4, :array_3

    const-string v5, "ed9f7e"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_0

    :cond_2
    const/4 v2, 0x0

    move v8, v2

    goto/16 :goto_1

    :cond_3
    const/4 v2, 0x0

    move v4, v2

    goto/16 :goto_2

    :cond_4
    sub-int v5, v2, v6

    if-gez v5, :cond_6

    :cond_5
    if-nez v9, :cond_7

    const/4 v2, 0x1

    move-object/from16 v0, p4

    iput-boolean v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    :goto_4
    return-void

    :cond_6
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->next(Landroidx/recyclerview/widget/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v6, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aput-object v2, v6, v9

    add-int/lit8 v2, v9, 0x1

    move v9, v2

    move v2, v5

    goto/16 :goto_3

    :cond_7
    const/4 v6, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {p0, v0, v1, v9, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->assignSpans(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;IZ)V

    const/4 v2, 0x0

    move v7, v2

    :goto_5
    if-ge v7, v9, :cond_c

    iget-object v2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v11, v2, v7

    move-object/from16 v0, p3

    iget-object v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-nez v2, :cond_a

    if-eqz v4, :cond_9

    invoke-virtual {p0, v11}, Landroidx/recyclerview/widget/GridLayoutManager;->addView(Landroid/view/View;)V

    :goto_6
    iget-object v2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {p0, v11, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    const/4 v2, 0x0

    invoke-direct {p0, v11, v10, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->measureChild(Landroid/view/View;IZ)V

    iget-object v2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2, v11}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v2

    if-le v2, v6, :cond_8

    move v6, v2

    :cond_8
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    const/high16 v12, 0x3f800000    # 1.0f

    iget-object v13, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v13, v11}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v12

    iget v2, v2, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    int-to-float v2, v2

    div-float v2, v11, v2

    cmpl-float v11, v2, v5

    if-lez v11, :cond_1b

    :goto_7
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    move v5, v2

    goto :goto_5

    :cond_9
    const/4 v2, 0x0

    invoke-virtual {p0, v11, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->addView(Landroid/view/View;I)V

    goto :goto_6

    :cond_a
    if-eqz v4, :cond_b

    invoke-virtual {p0, v11}, Landroidx/recyclerview/widget/GridLayoutManager;->addDisappearingView(Landroid/view/View;)V

    goto :goto_6

    :cond_b
    const/4 v2, 0x0

    invoke-virtual {p0, v11, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->addDisappearingView(Landroid/view/View;I)V

    goto :goto_6

    :cond_c
    if-eqz v3, :cond_d

    invoke-direct {p0, v5, v8}, Landroidx/recyclerview/widget/GridLayoutManager;->guessMeasurement(FI)V

    const/4 v3, 0x0

    const/4 v2, 0x0

    move v4, v2

    :goto_8
    if-ge v4, v9, :cond_e

    iget-object v2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v2, v2, v4

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, 0x1

    invoke-direct {p0, v2, v5, v6}, Landroidx/recyclerview/widget/GridLayoutManager;->measureChild(Landroid/view/View;IZ)V

    iget-object v5, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v5, v2}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v2

    if-le v2, v3, :cond_1a

    :goto_9
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v2

    goto :goto_8

    :cond_d
    move v3, v6

    :cond_e
    const/4 v2, 0x0

    move v5, v2

    :goto_a
    if-ge v5, v9, :cond_11

    iget-object v2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v6, v2, v5

    iget-object v2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2, v6}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v2

    if-eq v2, v3, :cond_f

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    iget-object v4, v2, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v7, v4, Landroid/graphics/Rect;->top:I

    iget v8, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    iget v8, v2, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v7, v8

    iget v8, v2, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v7, v8

    iget v8, v4, Landroid/graphics/Rect;->left:I

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v8

    iget v8, v2, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->leftMargin:I

    add-int/2addr v4, v8

    iget v8, v2, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v4, v8

    iget v8, v2, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    iget v10, v2, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    invoke-virtual {p0, v8, v10}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpaceForSpanRange(II)I

    move-result v8

    iget v10, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientation:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_10

    const/high16 v10, 0x40000000    # 2.0f

    iget v2, v2, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->width:I

    const/4 v11, 0x0

    invoke-static {v8, v10, v4, v2, v11}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v2

    sub-int v4, v3, v7

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    :goto_b
    const/4 v7, 0x1

    invoke-direct {p0, v6, v2, v4, v7}, Landroidx/recyclerview/widget/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    :cond_f
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_a

    :cond_10
    sub-int v4, v3, v4

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v4, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    const/high16 v10, 0x40000000    # 2.0f

    iget v2, v2, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->height:I

    const/4 v11, 0x0

    invoke-static {v8, v10, v7, v2, v11}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v2

    move v14, v4

    move v4, v2

    move v2, v14

    goto :goto_b

    :cond_11
    move-object/from16 v0, p4

    iput v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v7, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientation:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_15

    move-object/from16 v0, p3

    iget v4, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_14

    move-object/from16 v0, p3

    iget v4, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    sub-int v3, v4, v3

    move v5, v6

    :goto_c
    const/4 v6, 0x0

    move v10, v6

    move v7, v4

    move v4, v2

    move v6, v5

    move v5, v3

    :goto_d
    if-ge v10, v9, :cond_19

    iget-object v2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v3, v2, v10

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    iget v2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientation:I

    const/4 v11, 0x1

    if-ne v2, v11, :cond_18

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->isLayoutRTL()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v2

    iget-object v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    iget v6, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    iget v11, v8, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    sub-int/2addr v6, v11

    aget v4, v4, v6

    add-int v6, v2, v4

    iget-object v2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v2

    sub-int v4, v6, v2

    :goto_e
    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroidx/recyclerview/widget/GridLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    invoke-virtual {v8}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v2

    if-nez v2, :cond_12

    invoke-virtual {v8}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v2

    if-eqz v2, :cond_13

    :cond_12
    const/4 v2, 0x1

    move-object/from16 v0, p4

    iput-boolean v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    :cond_13
    move-object/from16 v0, p4

    iget-boolean v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    invoke-virtual {v3}, Landroid/view/View;->hasFocusable()Z

    move-result v3

    or-int/2addr v2, v3

    move-object/from16 v0, p4

    iput-boolean v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto :goto_d

    :cond_14
    move-object/from16 v0, p3

    iget v4, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    add-int/2addr v3, v4

    move v5, v6

    move v14, v3

    move v3, v4

    move v4, v14

    goto :goto_c

    :cond_15
    move-object/from16 v0, p3

    iget v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v6, -0x1

    if-ne v2, v6, :cond_16

    move-object/from16 v0, p3

    iget v6, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    sub-int v2, v6, v3

    move v3, v4

    move v4, v5

    move v5, v6

    goto :goto_c

    :cond_16
    move-object/from16 v0, p3

    iget v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    add-int/2addr v3, v2

    move v14, v4

    move v4, v5

    move v5, v3

    move v3, v14

    goto :goto_c

    :cond_17
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v2

    iget-object v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    iget v6, v8, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    aget v4, v4, v6

    add-int/2addr v4, v2

    iget-object v2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v2

    add-int v6, v4, v2

    goto :goto_e

    :cond_18
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getPaddingTop()I

    move-result v2

    iget-object v5, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    iget v7, v8, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    aget v5, v5, v7

    add-int/2addr v5, v2

    iget-object v2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v2

    add-int v7, v5, v2

    goto :goto_e

    :cond_19
    iget-object v2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1a
    move v2, v3

    goto/16 :goto_9

    :cond_1b
    move v2, v5

    goto/16 :goto_7

    :cond_1c
    move v9, v2

    move v2, v5

    goto/16 :goto_3

    nop

    :array_0
    .array-data 1
        0x7et
        0x47t
        0x56t
        0x58t
        0x17t
        0x59t
        0x43t
        0x13t
        0x43t
        0x5at
        0x44t
        0x51t
        0x43t
        0x5at
        0x5ct
        0x5bt
        0x17t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x17t
        0x4bt
        0x1t
        0x13t
        0x16t
        0x8t
        0x45t
        0x5ct
        0x17t
        0x42t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x46t
        0x10t
        0x15t
        0x54t
        0x8t
        0x44t
        0x46t
        0x1t
        0x10t
        0x41t
        0x46t
        0x70t
        0x14t
        0xat
        0x1t
        0x79t
        0x7t
        0x4et
        0x9t
        0x16t
        0x11t
        0x78t
        0x7t
        0x59t
        0x7t
        0x4t
        0x0t
        0x47t
        0x46t
        0x5ft
        0x7t
        0x10t
        0x45t
        0x5at
        0x8t
        0x5bt
        0x1ft
        0x43t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x45t
        0x17t
        0x49t
        0x7t
        0x59t
        0x16t
        0x4bt
    .end array-data
.end method

.method onAnchorReady(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;I)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->onAnchorReady(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;I)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->updateMeasurements()V

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/GridLayoutManager;->ensureAnchorIsInCorrectSpan(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;I)V

    :cond_0
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->ensureViewSet()V

    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;
    .locals 27

    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/GridLayoutManager;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v18

    if-nez v18, :cond_0

    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_0
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    iget v0, v4, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    move/from16 v19, v0

    iget v5, v4, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    iget v4, v4, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    add-int v20, v5, v4

    invoke-super/range {p0 .. p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->onFocusSearchFailed(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->convertFocusDirectionToLayoutDirection(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    const/4 v4, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mShouldReverseLayout:Z

    if-eq v4, v5, :cond_4

    const/4 v4, 0x1

    :goto_2
    if-eqz v4, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildCount()I

    move-result v4

    add-int/lit8 v6, v4, -0x1

    const/4 v5, -0x1

    const/4 v4, -0x1

    move/from16 v26, v4

    move v4, v6

    move v6, v5

    move/from16 v5, v26

    :goto_3
    move-object/from16 v0, p0

    iget v7, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientation:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/GridLayoutManager;->isLayoutRTL()Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x1

    :goto_4
    const/4 v10, 0x0

    const/4 v12, -0x1

    const/4 v11, 0x0

    const/4 v9, 0x0

    const/4 v14, -0x1

    const/4 v13, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanGroupIndex(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v21

    move/from16 v17, v4

    :goto_5
    move/from16 v0, v17

    if-eq v0, v5, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanGroupIndex(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    move-object/from16 v0, v18

    if-ne v8, v0, :cond_7

    :cond_2
    if-eqz v10, :cond_13

    move-object v4, v10

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildCount()I

    move-result v4

    move/from16 v26, v4

    move v4, v6

    move v6, v5

    move/from16 v5, v26

    goto :goto_3

    :cond_6
    const/4 v7, 0x0

    goto :goto_4

    :cond_7
    invoke-virtual {v8}, Landroid/view/View;->hasFocusable()Z

    move-result v15

    if-eqz v15, :cond_8

    move/from16 v0, v21

    if-eq v4, v0, :cond_8

    if-nez v10, :cond_2

    move v4, v11

    move v8, v12

    move v11, v14

    move-object v12, v10

    move v10, v13

    :goto_6
    add-int v13, v17, v6

    move/from16 v17, v13

    move v14, v11

    move v13, v10

    move v11, v4

    move-object v10, v12

    move v12, v8

    goto :goto_5

    :cond_8
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    iget v0, v4, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    move/from16 v22, v0

    iget v15, v4, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    iget v0, v4, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    move/from16 v16, v0

    add-int v23, v15, v16

    invoke-virtual {v8}, Landroid/view/View;->hasFocusable()Z

    move-result v15

    if-eqz v15, :cond_9

    move/from16 v0, v22

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    move/from16 v0, v23

    move/from16 v1, v20

    if-eq v0, v1, :cond_16

    :cond_9
    const/16 v16, 0x0

    invoke-virtual {v8}, Landroid/view/View;->hasFocusable()Z

    move-result v15

    if-eqz v15, :cond_a

    if-eqz v10, :cond_b

    :cond_a
    invoke-virtual {v8}, Landroid/view/View;->hasFocusable()Z

    move-result v15

    if-nez v15, :cond_c

    if-nez v9, :cond_c

    :cond_b
    const/4 v15, 0x1

    :goto_7
    if-eqz v15, :cond_15

    invoke-virtual {v8}, Landroid/view/View;->hasFocusable()Z

    move-result v15

    if-eqz v15, :cond_12

    iget v10, v4, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    move/from16 v0, v23

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    move/from16 v0, v22

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    sub-int/2addr v4, v11

    move v11, v14

    move-object v12, v8

    move v8, v10

    move v10, v13

    goto :goto_6

    :cond_c
    move/from16 v0, v22

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v15

    move/from16 v0, v23

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v24

    sub-int v15, v24, v15

    invoke-virtual {v8}, Landroid/view/View;->hasFocusable()Z

    move-result v24

    if-eqz v24, :cond_f

    if-le v15, v11, :cond_d

    const/4 v15, 0x1

    goto :goto_7

    :cond_d
    if-ne v15, v11, :cond_14

    move/from16 v0, v22

    if-le v0, v12, :cond_e

    const/4 v15, 0x1

    :goto_8
    if-ne v7, v15, :cond_14

    const/4 v15, 0x1

    goto :goto_7

    :cond_e
    const/4 v15, 0x0

    goto :goto_8

    :cond_f
    if-nez v10, :cond_14

    const/16 v24, 0x0

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v8, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->isViewPartiallyVisible(Landroid/view/View;ZZ)Z

    move-result v24

    if-eqz v24, :cond_14

    if-le v15, v13, :cond_10

    const/4 v15, 0x1

    goto :goto_7

    :cond_10
    if-ne v15, v13, :cond_14

    move/from16 v0, v22

    if-le v0, v14, :cond_11

    const/4 v15, 0x1

    :goto_9
    if-ne v7, v15, :cond_14

    const/4 v15, 0x1

    goto :goto_7

    :cond_11
    const/4 v15, 0x0

    goto :goto_9

    :cond_12
    iget v9, v4, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    move/from16 v0, v23

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    move/from16 v0, v22

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    sub-int/2addr v4, v13

    move/from16 v26, v11

    move v11, v9

    move-object v9, v8

    move v8, v12

    move-object v12, v10

    move v10, v4

    move/from16 v4, v26

    goto/16 :goto_6

    :cond_13
    move-object v4, v9

    goto/16 :goto_0

    :cond_14
    move/from16 v15, v16

    goto/16 :goto_7

    :cond_15
    move v4, v11

    move v8, v12

    move v11, v14

    move-object v12, v10

    move v10, v13

    goto/16 :goto_6

    :cond_16
    move-object v4, v8

    goto/16 :goto_0
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 11

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    if-nez v1, :cond_0

    invoke-super {p0, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    :goto_0
    return-void

    :cond_0
    move-object v1, v0

    check-cast v1, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanGroupIndex(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v2

    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v1

    move v5, v4

    invoke-static/range {v0 .. v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v7

    invoke-virtual {v1}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v8

    move v5, v2

    move v6, v3

    move v9, v4

    move v10, v4

    invoke-static/range {v5 .. v10}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanGroupIndexCache()V

    return-void
.end method

.method public onItemsChanged(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanGroupIndexCache()V

    return-void
.end method

.method public onItemsMoved(Landroidx/recyclerview/widget/RecyclerView;III)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanGroupIndexCache()V

    return-void
.end method

.method public onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanGroupIndexCache()V

    return-void
.end method

.method public onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanGroupIndexCache()V

    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->cachePreLayoutSpanMapping()V

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->clearPreLayoutSpanMappingCache()V

    return-void
.end method

.method public onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    return-void
.end method

.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->updateMeasurements()V

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->ensureViewSet()V

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->updateMeasurements()V

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->ensureViewSet()V

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public setMeasuredDimension(Landroid/graphics/Rect;II)V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->setMeasuredDimension(Landroid/graphics/Rect;II)V

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getMinimumHeight()I

    move-result v2

    invoke-static {p3, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->chooseSize(III)I

    move-result v1

    iget-object v2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    iget-object v3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    add-int/2addr v0, v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getMinimumWidth()I

    move-result v2

    invoke-static {p2, v0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->chooseSize(III)I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setMeasuredDimension(II)V

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getMinimumWidth()I

    move-result v2

    invoke-static {p2, v0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->chooseSize(III)I

    move-result v0

    iget-object v2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    iget-object v3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getMinimumHeight()I

    move-result v2

    invoke-static {p3, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->chooseSize(III)I

    move-result v1

    goto :goto_0
.end method

.method public setSpanCount(I)V
    .locals 5

    const/4 v1, 0x1

    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    if-ge p1, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2a

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "26d19e"

    const/16 v4, -0x6979

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->requestLayout()V

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x61t
        0x46t
        0x5t
        0x5ft
        0x19t
        0x6t
        0x5dt
        0x43t
        0xat
        0x45t
        0x19t
        0x16t
        0x5at
        0x59t
        0x11t
        0x5dt
        0x5dt
        0x45t
        0x50t
        0x53t
        0x44t
        0x50t
        0x4dt
        0x45t
        0x5et
        0x53t
        0x5t
        0x42t
        0x4dt
        0x45t
        0x3t
        0x18t
        0x44t
        0x61t
        0x4bt
        0xat
        0x44t
        0x5ft
        0x0t
        0x54t
        0x5dt
        0x45t
    .end array-data
.end method

.method public setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V
    .locals 0

    iput-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    return-void
.end method

.method public setStackFromEnd(Z)V
    .locals 6

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x50

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "30abd6"

    const-wide v4, -0x3e48a39b8d000000L    # -3.91930995E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    return-void

    nop

    :array_0
    .array-data 1
        0x74t
        0x42t
        0x8t
        0x6t
        0x28t
        0x57t
        0x4at
        0x5ft
        0x14t
        0x16t
        0x29t
        0x57t
        0x5dt
        0x51t
        0x6t
        0x7t
        0x16t
        0x16t
        0x57t
        0x5ft
        0x4t
        0x11t
        0x44t
        0x58t
        0x5ct
        0x44t
        0x41t
        0x11t
        0x11t
        0x46t
        0x43t
        0x5ft
        0x13t
        0x16t
        0x44t
        0x45t
        0x47t
        0x51t
        0x2t
        0x9t
        0x44t
        0x50t
        0x41t
        0x5ft
        0xct
        0x42t
        0x1t
        0x58t
        0x57t
        0x1et
        0x41t
        0x21t
        0xbt
        0x58t
        0x40t
        0x59t
        0x5t
        0x7t
        0x16t
        0x16t
        0x46t
        0x43t
        0x8t
        0xct
        0x3t
        0x16t
        0x41t
        0x55t
        0x17t
        0x7t
        0x16t
        0x45t
        0x56t
        0x10t
        0xdt
        0x3t
        0x1dt
        0x59t
        0x46t
        0x44t
    .end array-data
.end method

.method public setUsingSpansToEstimateScrollbarDimensions(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mUsingSpansToEstimateScrollBarDimensions:Z

    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
