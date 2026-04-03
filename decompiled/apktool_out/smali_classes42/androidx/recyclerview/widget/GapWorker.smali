.class final Landroidx/recyclerview/widget/GapWorker;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;,
        Landroidx/recyclerview/widget/GapWorker$Task;
    }
.end annotation


# static fields
.field static final sGapWorker:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroidx/recyclerview/widget/GapWorker;",
            ">;"
        }
    .end annotation
.end field

.field static sTaskComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroidx/recyclerview/widget/GapWorker$Task;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mFrameIntervalNs:J

.field mPostTimeNs:J

.field mRecyclerViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/recyclerview/widget/RecyclerView;",
            ">;"
        }
    .end annotation
.end field

.field private mTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/recyclerview/widget/GapWorker$Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/GapWorker;->sGapWorker:Ljava/lang/ThreadLocal;

    new-instance v0, Landroidx/recyclerview/widget/GapWorker$1;

    invoke-direct {v0}, Landroidx/recyclerview/widget/GapWorker$1;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/GapWorker;->sTaskComparator:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    return-void
.end method

.method private buildTaskList()V
    .locals 11

    const/4 v4, 0x0

    iget-object v0, p0, Landroidx/recyclerview/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v2, v4

    move v1, v4

    :goto_0
    if-ge v2, v7, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getWindowVisibility()I

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-virtual {v3, v0, v4}, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->collectPrefetchPositionsFromView(Landroidx/recyclerview/widget/RecyclerView;Z)V

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

    iget v0, v0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    add-int/2addr v0, v1

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    move v6, v4

    move v1, v4

    :goto_2
    if-ge v6, v7, :cond_4

    iget-object v0, p0, Landroidx/recyclerview/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getWindowVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    :goto_3
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    move v1, v0

    goto :goto_2

    :cond_1
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

    iget v2, v8, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDx:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, v8, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDy:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int v9, v2, v3

    move v3, v4

    move v2, v1

    :goto_4
    iget v1, v8, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    mul-int/lit8 v1, v1, 0x2

    if-ge v3, v1, :cond_5

    iget-object v1, p0, Landroidx/recyclerview/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v2, v1, :cond_2

    new-instance v1, Landroidx/recyclerview/widget/GapWorker$Task;

    invoke-direct {v1}, Landroidx/recyclerview/widget/GapWorker$Task;-><init>()V

    iget-object v5, p0, Landroidx/recyclerview/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    iget-object v5, v8, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    add-int/lit8 v10, v3, 0x1

    aget v10, v5, v10

    if-gt v10, v9, :cond_3

    const/4 v5, 0x1

    :goto_6
    iput-boolean v5, v1, Landroidx/recyclerview/widget/GapWorker$Task;->immediate:Z

    iput v9, v1, Landroidx/recyclerview/widget/GapWorker$Task;->viewVelocity:I

    iput v10, v1, Landroidx/recyclerview/widget/GapWorker$Task;->distanceToItem:I

    iput-object v0, v1, Landroidx/recyclerview/widget/GapWorker$Task;->view:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, v8, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    aget v5, v5, v3

    iput v5, v1, Landroidx/recyclerview/widget/GapWorker$Task;->position:I

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v3, 0x2

    move v3, v1

    goto :goto_4

    :cond_2
    iget-object v1, p0, Landroidx/recyclerview/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/GapWorker$Task;

    goto :goto_5

    :cond_3
    move v5, v4

    goto :goto_6

    :cond_4
    iget-object v0, p0, Landroidx/recyclerview/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    sget-object v1, Landroidx/recyclerview/widget/GapWorker;->sTaskComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void

    :cond_5
    move v0, v2

    goto :goto_3

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method private flushTaskWithDeadline(Landroidx/recyclerview/widget/GapWorker$Task;J)V
    .locals 4

    iget-boolean v0, p1, Landroidx/recyclerview/widget/GapWorker$Task;->immediate:Z

    if-eqz v0, :cond_1

    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    iget-object v2, p1, Landroidx/recyclerview/widget/GapWorker$Task;->view:Landroidx/recyclerview/widget/RecyclerView;

    iget v3, p1, Landroidx/recyclerview/widget/GapWorker$Task;->position:I

    invoke-direct {p0, v2, v3, v0, v1}, Landroidx/recyclerview/widget/GapWorker;->prefetchPositionWithDeadline(Landroidx/recyclerview/widget/RecyclerView;IJ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0, v0, p2, p3}, Landroidx/recyclerview/widget/GapWorker;->prefetchInnerRecyclerViewWithDeadline(Landroidx/recyclerview/widget/RecyclerView;J)V

    :cond_0
    return-void

    :cond_1
    move-wide v0, p2

    goto :goto_0
.end method

.method private flushTasksWithDeadline(J)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroidx/recyclerview/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/GapWorker$Task;

    iget-object v2, v0, Landroidx/recyclerview/widget/GapWorker$Task;->view:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, v0, p1, p2}, Landroidx/recyclerview/widget/GapWorker;->flushTaskWithDeadline(Landroidx/recyclerview/widget/GapWorker$Task;J)V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GapWorker$Task;->clear()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static isPrefetchPositionAttached(Landroidx/recyclerview/widget/RecyclerView;I)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    iget v4, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ne v4, p1, :cond_1

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private prefetchInnerRecyclerViewWithDeadline(Landroidx/recyclerview/widget/RecyclerView;J)V
    .locals 6
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p1, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->removeAndRecycleViews()V

    :cond_2
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

    const/4 v0, 0x1

    invoke-virtual {v1, p1, v0}, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->collectPrefetchPositionsFromView(Landroidx/recyclerview/widget/RecyclerView;Z)V

    iget v0, v1, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    :try_start_0
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v2, "39d2a4"

    const-wide v4, 0x41d5e48146400000L    # 1.469187353E9

    invoke-static {v0, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$State;->prepareForNestedPrefetch(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 v0, 0x0

    :goto_1
    iget v2, v1, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    mul-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_3

    iget-object v2, v1, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    aget v2, v2, v0

    invoke-direct {p0, p1, v2, p2, p3}, Landroidx/recyclerview/widget/GapWorker;->prefetchPositionWithDeadline(Landroidx/recyclerview/widget/RecyclerView;IJ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_3
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    throw v0

    :array_0
    .array-data 1
        0x61t
        0x6ft
        0x44t
        0x7ct
        0x4t
        0x47t
        0x47t
        0x5ct
        0x0t
        0x12t
        0x31t
        0x46t
        0x56t
        0x5ft
        0x1t
        0x46t
        0x2t
        0x5ct
    .end array-data
.end method

.method private prefetchPositionWithDeadline(Landroidx/recyclerview/widget/RecyclerView;IJ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 5

    const/4 v3, 0x0

    invoke-static {p1, p2}, Landroidx/recyclerview/widget/GapWorker;->isPrefetchPositionAttached(Landroidx/recyclerview/widget/RecyclerView;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    :try_start_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->onEnterLayoutOrScroll()V

    const/4 v0, 0x0

    invoke-virtual {v1, p2, v0, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->tryGetViewHolderForPositionByDeadline(IZJ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_1
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll(Z)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v1, v0, v2}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->addViewHolderToRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll(Z)V

    throw v0
.end method


# virtual methods
.method public add(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method postFromTraversal(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 4

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroidx/recyclerview/widget/GapWorker;->mPostTimeNs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/recyclerview/widget/GapWorker;->mPostTimeNs:J

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-virtual {v0, p2, p3}, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->setPrefetchVector(II)V

    return-void
.end method

.method prefetch(J)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/GapWorker;->buildTaskList()V

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/GapWorker;->flushTasksWithDeadline(J)V

    return-void
.end method

.method public remove(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public run()V
    .locals 8

    const-wide/16 v6, 0x0

    const/16 v0, 0xb

    :try_start_0
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "46185b"

    const-wide/32 v2, 0x25b8009c

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    iput-wide v6, p0, Landroidx/recyclerview/widget/GapWorker;->mPostTimeNs:J

    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroidx/recyclerview/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v0, 0x0

    move v4, v0

    move-wide v2, v6

    :goto_1
    if-ge v4, v5, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getWindowVisibility()I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getDrawingTime()J

    move-result-wide v0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-wide v2, v0

    goto :goto_1

    :cond_1
    cmp-long v0, v2, v6

    if-nez v0, :cond_2

    iput-wide v6, p0, Landroidx/recyclerview/widget/GapWorker;->mPostTimeNs:J

    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    goto :goto_0

    :cond_2
    :try_start_2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/recyclerview/widget/GapWorker;->mFrameIntervalNs:J

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/GapWorker;->prefetch(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iput-wide v6, p0, Landroidx/recyclerview/widget/GapWorker;->mPostTimeNs:J

    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-wide v6, p0, Landroidx/recyclerview/widget/GapWorker;->mPostTimeNs:J

    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    throw v0

    :cond_3
    move-wide v0, v2

    goto :goto_2

    :array_0
    .array-data 1
        0x66t
        0x60t
        0x11t
        0x68t
        0x47t
        0x7t
        0x52t
        0x53t
        0x45t
        0x5bt
        0x5dt
    .end array-data
.end method
