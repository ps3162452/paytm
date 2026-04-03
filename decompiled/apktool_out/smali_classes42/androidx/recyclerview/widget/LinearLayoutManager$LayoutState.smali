.class Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/LinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LayoutState"
.end annotation


# static fields
.field static final INVALID_LAYOUT:I = -0x80000000

.field static final ITEM_DIRECTION_HEAD:I = -0x1

.field static final ITEM_DIRECTION_TAIL:I = 0x1

.field static final LAYOUT_END:I = 0x1

.field static final LAYOUT_START:I = -0x1

.field static final SCROLLING_OFFSET_NaN:I = -0x80000000

.field static final TAG:Ljava/lang/String;


# instance fields
.field mAvailable:I

.field mCurrentPosition:I

.field mExtraFillSpace:I

.field mInfinite:Z

.field mIsPreLayout:Z

.field mItemDirection:I

.field mLastScrollDelta:I

.field mLayoutDirection:I

.field mNoRecycleSpace:I

.field mOffset:I

.field mRecycle:Z

.field mScrapList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mScrollingOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "d2c3d9"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->TAG:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x28t
        0x7et
        0x2et
        0x10t
        0x28t
        0x58t
        0x1dt
        0x5dt
        0x16t
        0x47t
        0x37t
        0x4dt
        0x5t
        0x46t
        0x6t
    .end array-data
.end method

.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mRecycle:Z

    iput v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtraFillSpace:I

    iput v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mNoRecycleSpace:I

    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mIsPreLayout:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    return-void
.end method

.method private nextViewFromScrapList()Landroid/view/View;
    .locals 5

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    iget v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v0

    if-ne v4, v0, :cond_0

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->assignPositionFromScrapList(Landroid/view/View;)V

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public assignPositionFromScrapList()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->assignPositionFromScrapList(Landroid/view/View;)V

    return-void
.end method

.method public assignPositionFromScrapList(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->nextViewInLimitedList(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    goto :goto_0
.end method

.method hasMore(Landroidx/recyclerview/widget/RecyclerView$State;)Z
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method log()V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x6

    const/4 v6, 0x1

    sget-object v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-array v2, v7, [B

    fill-array-data v2, :array_0

    const-string v3, "00d696"

    invoke-static {v2, v3, v6, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v2, v7, [B

    fill-array-data v2, :array_1

    const-string v3, "e9de1f"

    const-wide v4, -0x3e20357a88000000L    # -2.133464544E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v2, v7, [B

    fill-array-data v2, :array_2

    const-string v3, "7c095b"

    invoke-static {v2, v3, v8, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x9

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const-string v3, "07e5ae"

    const/16 v4, -0x2ef1

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xc

    new-array v2, v2, [B

    fill-array-data v2, :array_4

    const-string v3, "2e2639"

    invoke-static {v2, v3, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :array_0
    .array-data 1
        0x51t
        0x46t
        0x5t
        0x5ft
        0x55t
        0xct
    .end array-data

    nop

    :array_1
    .array-data 1
        0x49t
        0x19t
        0xdt
        0xbt
        0x55t
        0x5ct
    .end array-data

    nop

    :array_2
    .array-data 1
        0x1bt
        0x43t
        0x54t
        0x50t
        0x47t
        0x58t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x1ct
        0x17t
        0xat
        0x53t
        0x7t
        0x16t
        0x55t
        0x43t
        0x5ft
    .end array-data

    nop

    :array_4
    .array-data 1
        0x1et
        0x45t
        0x5et
        0x57t
        0x4at
        0x56t
        0x47t
        0x11t
        0x76t
        0x5ft
        0x41t
        0x3t
    .end array-data
.end method

.method next(Landroidx/recyclerview/widget/RecyclerView$Recycler;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->nextViewFromScrapList()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v1, v2

    iput v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    goto :goto_0
.end method

.method public nextViewInLimitedList(Landroid/view/View;)Landroid/view/View;
    .locals 7

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v2, 0x0

    const v1, 0x7fffffff

    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, v5, :cond_3

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    if-eq v3, p1, :cond_2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v6

    if-eqz v6, :cond_0

    move v0, v1

    move-object v1, v2

    :goto_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-object v2, v1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v0

    iget v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    sub-int/2addr v0, v6

    iget v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    mul-int/2addr v0, v6

    if-ltz v0, :cond_2

    if-ge v0, v1, :cond_2

    if-nez v0, :cond_1

    :goto_2
    return-object v3

    :cond_1
    move-object v1, v3

    goto :goto_1

    :cond_2
    move v0, v1

    move-object v1, v2

    goto :goto_1

    :cond_3
    move-object v3, v2

    goto :goto_2
.end method
