.class Landroidx/recyclerview/widget/ViewInfoStore;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;,
        Landroidx/recyclerview/widget/ViewInfoStore$ProcessCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field final mLayoutHolderMap:Landroidx/collection/SimpleArrayMap;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap",
            "<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mOldChangedHolders:Landroidx/collection/LongSparseArray;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray",
            "<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/SimpleArrayMap;

    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mOldChangedHolders:Landroidx/collection/LongSparseArray;

    return-void
.end method

.method private popFromLayoutStep(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, v2}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    if-eqz v0, :cond_0

    iget v3, v0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/2addr v3, p2

    if-eqz v3, :cond_0

    iget v1, v0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    xor-int/lit8 v3, p2, -0x1

    and-int/2addr v1, v3

    iput v1, v0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    const/4 v1, 0x4

    if-ne p2, v1, :cond_2

    iget-object v1, v0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->preInfo:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    :goto_1
    iget v3, v0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v3, v3, 0xc

    if-nez v3, :cond_0

    iget-object v3, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v3, v2}, Landroidx/collection/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    invoke-static {v0}, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->recycle(Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    if-ne p2, v1, :cond_3

    iget-object v1, v0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->postInfo:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x1d

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "84ce5f"

    const/16 v3, 0x207

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x75t
        0x41t
        0x10t
        0x11t
        0x15t
        0x16t
        0x4at
        0x5bt
        0x15t
        0xct
        0x51t
        0x3t
        0x18t
        0x52t
        0xft
        0x4t
        0x52t
        0x46t
        0x68t
        0x66t
        0x26t
        0x45t
        0x5at
        0x14t
        0x18t
        0x64t
        0x2ct
        0x36t
        0x61t
    .end array-data
.end method


# virtual methods
.method addToAppearedInPreLayoutHolders(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    if-nez v0, :cond_0

    invoke-static {}, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->obtain()Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    move-result-object v0

    iget-object v1, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1, p1, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget v1, v0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    iput-object p2, v0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->preInfo:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    return-void
.end method

.method addToDisappearedInLayout(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    if-nez v0, :cond_0

    invoke-static {}, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->obtain()Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    move-result-object v0

    iget-object v1, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1, p1, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget v1, v0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    return-void
.end method

.method addToOldChangeHolders(JLandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mOldChangedHolders:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    return-void
.end method

.method addToPostLayout(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    if-nez v0, :cond_0

    invoke-static {}, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->obtain()Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    move-result-object v0

    iget-object v1, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1, p1, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iput-object p2, v0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->postInfo:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    iget v1, v0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    return-void
.end method

.method addToPreLayout(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    if-nez v0, :cond_0

    invoke-static {}, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->obtain()Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    move-result-object v0

    iget-object v1, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1, p1, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iput-object p2, v0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->preInfo:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    iget v1, v0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    return-void
.end method

.method clear()V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->clear()V

    iget-object v0, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mOldChangedHolders:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    return-void
.end method

.method getFromOldChangeHolders(J)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mOldChangedHolders:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object v0
.end method

.method isDisappearing(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    if-eqz v0, :cond_0

    iget v0, v0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isInPreLayout(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    if-eqz v0, :cond_0

    iget v0, v0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onDetach()V
    .locals 0

    invoke-static {}, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->drainCache()V

    return-void
.end method

.method public onViewDetached(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ViewInfoStore;->removeFromDisappearedInLayout(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method popFromPostLayout(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/ViewInfoStore;->popFromLayoutStep(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    return-object v0
.end method

.method popFromPreLayout(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/ViewInfoStore;->popFromLayoutStep(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    return-object v0
.end method

.method process(Landroidx/recyclerview/widget/ViewInfoStore$ProcessCallback;)V
    .locals 5

    iget-object v0, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_8

    iget-object v0, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, v2}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v1, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1, v2}, Landroidx/collection/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    iget v3, v1, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v3, v3, 0x3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    invoke-interface {p1, v0}, Landroidx/recyclerview/widget/ViewInfoStore$ProcessCallback;->unused(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    :goto_1
    invoke-static {v1}, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->recycle(Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;)V

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :cond_1
    iget v3, v1, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    iget-object v3, v1, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->preInfo:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    if-nez v3, :cond_2

    invoke-interface {p1, v0}, Landroidx/recyclerview/widget/ViewInfoStore$ProcessCallback;->unused(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_1

    :cond_2
    iget-object v3, v1, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->preInfo:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    iget-object v4, v1, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->postInfo:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-interface {p1, v0, v3, v4}, Landroidx/recyclerview/widget/ViewInfoStore$ProcessCallback;->processDisappeared(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_1

    :cond_3
    iget v3, v1, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v3, v3, 0xe

    const/16 v4, 0xe

    if-ne v3, v4, :cond_4

    iget-object v3, v1, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->preInfo:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    iget-object v4, v1, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->postInfo:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-interface {p1, v0, v3, v4}, Landroidx/recyclerview/widget/ViewInfoStore$ProcessCallback;->processAppeared(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_1

    :cond_4
    iget v3, v1, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v3, v3, 0xc

    const/16 v4, 0xc

    if-ne v3, v4, :cond_5

    iget-object v3, v1, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->preInfo:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    iget-object v4, v1, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->postInfo:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-interface {p1, v0, v3, v4}, Landroidx/recyclerview/widget/ViewInfoStore$ProcessCallback;->processPersistent(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_1

    :cond_5
    iget v3, v1, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_6

    iget-object v3, v1, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->preInfo:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    const/4 v4, 0x0

    invoke-interface {p1, v0, v3, v4}, Landroidx/recyclerview/widget/ViewInfoStore$ProcessCallback;->processDisappeared(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_1

    :cond_6
    iget v3, v1, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_7

    iget-object v3, v1, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->preInfo:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    iget-object v4, v1, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->postInfo:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-interface {p1, v0, v3, v4}, Landroidx/recyclerview/widget/ViewInfoStore$ProcessCallback;->processAppeared(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_1

    :cond_7
    iget v0, v1, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_8
    return-void
.end method

.method removeFromDisappearedInLayout(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v1, v0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v1, v1, -0x2

    iput v1, v0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    goto :goto_0
.end method

.method removeViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mOldChangedHolders:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mOldChangedHolders:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1, v0}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mOldChangedHolders:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1, v0}, Landroidx/collection/LongSparseArray;->removeAt(I)V

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->recycle(Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;)V

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method
