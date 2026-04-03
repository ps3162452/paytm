.class Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "VisibleForTests"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/GapWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LayoutPrefetchRegistryImpl"
.end annotation


# instance fields
.field mCount:I

.field mPrefetchArray:[I

.field mPrefetchDx:I

.field mPrefetchDy:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addPosition(II)V
    .locals 6

    const/4 v4, 0x0

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x25

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "cc75b6"

    const-wide/32 v4, 0x5cdd456

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x23

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "99eea2"

    const/16 v3, 0x1f31

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    if-nez v1, :cond_3

    const/4 v1, 0x4

    new-array v1, v1, [I

    iput-object v1, p0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    iget-object v1, p0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    :cond_2
    :goto_0
    iget-object v1, p0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    aput p1, v1, v0

    iget-object v1, p0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    add-int/lit8 v0, v0, 0x1

    aput p2, v1, v0

    iget v0, p0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    return-void

    :cond_3
    iget-object v1, p0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    array-length v1, v1

    if-lt v0, v1, :cond_2

    iget-object v1, p0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    iget-object v2, p0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    array-length v3, v1

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :array_0
    .array-data 1
        0x2ft
        0x2t
        0x4et
        0x5at
        0x17t
        0x42t
        0x43t
        0x13t
        0x58t
        0x46t
        0xbt
        0x42t
        0xat
        0xct
        0x59t
        0x46t
        0x42t
        0x5bt
        0x16t
        0x10t
        0x43t
        0x15t
        0x0t
        0x53t
        0x43t
        0xdt
        0x58t
        0x5bt
        0x4ft
        0x58t
        0x6t
        0x4t
        0x56t
        0x41t
        0xbt
        0x40t
        0x6t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x69t
        0x50t
        0x1dt
        0x0t
        0xdt
        0x12t
        0x5dt
        0x50t
        0x16t
        0x11t
        0x0t
        0x5ct
        0x5at
        0x5ct
        0x45t
        0x8t
        0x14t
        0x41t
        0x4dt
        0x19t
        0x7t
        0x0t
        0x41t
        0x5ct
        0x56t
        0x57t
        0x48t
        0xbt
        0x4t
        0x55t
        0x58t
        0x4dt
        0xct
        0x13t
        0x4t
    .end array-data
.end method

.method clearPrefetchPositions()V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    return-void
.end method

.method collectPrefetchPositionsFromView(Landroidx/recyclerview/widget/RecyclerView;Z)V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    iget-object v0, p0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->isItemPrefetchEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p2, :cond_3

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->collectInitialPrefetchPositions(ILandroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V

    :cond_1
    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    iget v2, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    if-le v1, v2, :cond_2

    iget v1, p0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    iput-boolean p2, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mPrefetchMaxObservedInInitialPrefetch:Z

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->updateViewCacheSize()V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->hasPendingAdapterUpdates()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDx:I

    iget v2, p0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDy:I

    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0, v1, v2, v3, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->collectAdjacentPrefetchPositions(IILandroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V

    goto :goto_0
.end method

.method lastPrefetchIncludedPosition(I)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    if-eqz v1, :cond_0

    iget v2, p0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    move v1, v0

    :goto_0
    mul-int/lit8 v3, v2, 0x2

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    aget v3, v3, v1

    if-ne v3, p1, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0
.end method

.method setPrefetchVector(II)V
    .locals 0

    iput p1, p0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDx:I

    iput p2, p0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDy:I

    return-void
.end method
