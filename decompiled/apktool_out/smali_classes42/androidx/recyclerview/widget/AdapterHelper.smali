.class final Landroidx/recyclerview/widget/AdapterHelper;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/recyclerview/widget/OpReorderer$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/AdapterHelper$Callback;,
        Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final POSITION_TYPE_INVISIBLE:I = 0x0

.field static final POSITION_TYPE_NEW_OR_LAID_OUT:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field final mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

.field final mDisableRecycler:Z

.field private mExistingUpdateTypes:I

.field mOnItemProcessedCallback:Ljava/lang/Runnable;

.field final mOpReorderer:Landroidx/recyclerview/widget/OpReorderer;

.field final mPendingUpdates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field

.field final mPostponedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateOpPool:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool",
            "<",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "ebd9c4"

    const/16 v2, 0x2158

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/recyclerview/widget/AdapterHelper;->TAG:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x24t
        0x2at
        0x30t
    .end array-data
.end method

.method constructor <init>(Landroidx/recyclerview/widget/AdapterHelper$Callback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/AdapterHelper;-><init>(Landroidx/recyclerview/widget/AdapterHelper$Callback;Z)V

    return-void
.end method

.method constructor <init>(Landroidx/recyclerview/widget/AdapterHelper$Callback;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/core/util/Pools$SimplePool;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Landroidx/core/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mUpdateOpPool:Landroidx/core/util/Pools$Pool;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    iput-object p1, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    iput-boolean p2, p0, Landroidx/recyclerview/widget/AdapterHelper;->mDisableRecycler:Z

    new-instance v0, Landroidx/recyclerview/widget/OpReorderer;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/OpReorderer;-><init>(Landroidx/recyclerview/widget/OpReorderer$Callback;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mOpReorderer:Landroidx/recyclerview/widget/OpReorderer;

    return-void
.end method

.method private applyAdd(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/AdapterHelper;->postponeAndUpdateViewHolders(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    return-void
.end method

.method private applyMove(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/AdapterHelper;->postponeAndUpdateViewHolders(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    return-void
.end method

.method private applyRemove(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v7, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v0, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int v4, v0, v3

    const/4 v5, -0x1

    iget v3, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move v6, v2

    :goto_0
    if-ge v3, v4, :cond_3

    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    invoke-interface {v0, v3}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->findViewHolder(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, v3}, Landroidx/recyclerview/widget/AdapterHelper;->canFindInPreLayout(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-nez v5, :cond_7

    invoke-virtual {p0, v8, v7, v6, v9}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/AdapterHelper;->dispatchAndUpdateViewHolders(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    move v0, v1

    :goto_1
    move v5, v1

    :goto_2
    if-eqz v0, :cond_2

    sub-int v0, v3, v6

    sub-int v3, v4, v6

    move v4, v3

    move v3, v0

    move v0, v1

    :goto_3
    add-int/lit8 v3, v3, 0x1

    move v6, v0

    goto :goto_0

    :cond_1
    if-ne v5, v1, :cond_6

    invoke-virtual {p0, v8, v7, v6, v9}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/AdapterHelper;->postponeAndUpdateViewHolders(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    move v0, v1

    :goto_4
    move v5, v2

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v6, 0x1

    goto :goto_3

    :cond_3
    iget v0, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-eq v6, v0, :cond_4

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/AdapterHelper;->recycleUpdateOp(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    invoke-virtual {p0, v8, v7, v6, v9}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object p1

    :cond_4
    if-nez v5, :cond_5

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/AdapterHelper;->dispatchAndUpdateViewHolders(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    :goto_5
    return-void

    :cond_5
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/AdapterHelper;->postponeAndUpdateViewHolders(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    goto :goto_5

    :cond_6
    move v0, v2

    goto :goto_4

    :cond_7
    move v0, v2

    goto :goto_1
.end method

.method private applyUpdate(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .locals 11

    const/4 v4, 0x1

    const/4 v9, 0x4

    const/4 v3, 0x0

    iget v5, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v6, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v7, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    const/4 v0, -0x1

    iget v1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move v2, v3

    move v10, v0

    move v0, v5

    move v5, v10

    :goto_0
    add-int v8, v6, v7

    if-ge v1, v8, :cond_4

    iget-object v8, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    invoke-interface {v8, v1}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->findViewHolder(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v8

    if-nez v8, :cond_0

    invoke-direct {p0, v1}, Landroidx/recyclerview/widget/AdapterHelper;->canFindInPreLayout(I)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_0
    if-nez v5, :cond_1

    iget-object v5, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {p0, v9, v0, v2, v5}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/AdapterHelper;->dispatchAndUpdateViewHolders(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    move v0, v1

    move v2, v3

    :cond_1
    move v5, v0

    move v0, v4

    :goto_1
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    move v10, v0

    move v0, v5

    move v5, v10

    goto :goto_0

    :cond_2
    if-ne v5, v4, :cond_3

    iget-object v5, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {p0, v9, v0, v2, v5}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/AdapterHelper;->postponeAndUpdateViewHolders(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    move v0, v1

    move v2, v3

    :cond_3
    move v5, v0

    move v0, v3

    goto :goto_1

    :cond_4
    iget v1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-eq v2, v1, :cond_5

    iget-object v1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/AdapterHelper;->recycleUpdateOp(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    invoke-virtual {p0, v9, v0, v2, v1}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object p1

    :cond_5
    if-nez v5, :cond_6

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/AdapterHelper;->dispatchAndUpdateViewHolders(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    :goto_2
    return-void

    :cond_6
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/AdapterHelper;->postponeAndUpdateViewHolders(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    goto :goto_2
.end method

.method private canFindInPreLayout(I)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    iget v5, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_0

    iget v0, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v0, v5}, Landroidx/recyclerview/widget/AdapterHelper;->findPositionOffset(II)I

    move-result v0

    if-ne v0, p1, :cond_1

    move v0, v1

    :goto_1
    return v0

    :cond_0
    iget v5, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    if-ne v5, v1, :cond_1

    iget v5, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v6, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v0, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    :goto_2
    add-int v7, v5, v6

    if-ge v0, v7, :cond_1

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p0, v0, v7}, Landroidx/recyclerview/widget/AdapterHelper;->findPositionOffset(II)I

    move-result v7

    if-eq v7, p1, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private dispatchAndUpdateViewHolders(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .locals 10

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v0, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    const/16 v3, 0x8

    if-ne v0, v3, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x2e

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "3083a0"

    const-wide v4, -0x3e3e6a739b800000L    # -5.90026953E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    invoke-direct {p0, v0, v3}, Landroidx/recyclerview/widget/AdapterHelper;->updatePositionWithPostponed(II)I

    move-result v4

    iget v3, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v0, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1e

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "5c6e1d"

    const/16 v4, 0x5c90

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    move v0, v1

    :goto_0
    move v5, v1

    move v6, v4

    move v4, v3

    move v3, v1

    :goto_1
    iget v7, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-ge v3, v7, :cond_6

    iget v7, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    mul-int v8, v0, v3

    add-int/2addr v7, v8

    iget v8, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    invoke-direct {p0, v7, v8}, Landroidx/recyclerview/widget/AdapterHelper;->updatePositionWithPostponed(II)I

    move-result v7

    iget v8, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v8, :pswitch_data_1

    move v8, v2

    :goto_2
    if-eqz v8, :cond_4

    add-int/lit8 v5, v5, 0x1

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :pswitch_2
    move v0, v2

    goto :goto_0

    :pswitch_3
    add-int/lit8 v8, v6, 0x1

    if-ne v7, v8, :cond_2

    move v8, v1

    goto :goto_2

    :cond_2
    move v8, v2

    goto :goto_2

    :pswitch_4
    if-ne v7, v6, :cond_3

    move v8, v1

    goto :goto_2

    :cond_3
    move v8, v2

    goto :goto_2

    :cond_4
    iget v8, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    iget-object v9, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {p0, v8, v6, v5, v9}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object v6

    invoke-virtual {p0, v6, v4}, Landroidx/recyclerview/widget/AdapterHelper;->dispatchFirstPassAndUpdateViewHolders(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;I)V

    invoke-virtual {p0, v6}, Landroidx/recyclerview/widget/AdapterHelper;->recycleUpdateOp(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    iget v6, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v8, 0x4

    if-ne v6, v8, :cond_5

    add-int/2addr v4, v5

    :cond_5
    move v5, v1

    move v6, v7

    goto :goto_3

    :cond_6
    iget-object v0, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/AdapterHelper;->recycleUpdateOp(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    if-lez v5, :cond_7

    iget v1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    invoke-virtual {p0, v1, v6, v5, v0}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Landroidx/recyclerview/widget/AdapterHelper;->dispatchFirstPassAndUpdateViewHolders(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;I)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/AdapterHelper;->recycleUpdateOp(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    :cond_7
    return-void

    :pswitch_5
    move v8, v2

    goto :goto_2

    nop

    :array_0
    .array-data 1
        0x40t
        0x58t
        0x57t
        0x46t
        0xdt
        0x54t
        0x13t
        0x5et
        0x57t
        0x47t
        0x41t
        0x54t
        0x5at
        0x43t
        0x48t
        0x52t
        0x15t
        0x53t
        0x5bt
        0x10t
        0x59t
        0x57t
        0x5t
        0x10t
        0x5ct
        0x42t
        0x18t
        0x5et
        0xet
        0x46t
        0x56t
        0x10t
        0x5et
        0x5ct
        0x13t
        0x10t
        0x43t
        0x42t
        0x5dt
        0x13t
        0xdt
        0x51t
        0x4at
        0x5ft
        0x4dt
        0x47t
    .end array-data

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :array_1
    .array-data 1
        0x5at
        0x13t
        0x16t
        0x16t
        0x59t
        0xbt
        0x40t
        0xft
        0x52t
        0x45t
        0x53t
        0x1t
        0x15t
        0x11t
        0x53t
        0x8t
        0x5et
        0x12t
        0x50t
        0x43t
        0x59t
        0x17t
        0x11t
        0x11t
        0x45t
        0x7t
        0x57t
        0x11t
        0x54t
        0x4at
    .end array-data

    nop

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_4
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method

.method private postponeAndUpdateViewHolders(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .locals 5

    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1b

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "d78523"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    iget v1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, v1, v2}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->offsetPositionsForAdd(II)V

    :goto_0
    return-void

    :pswitch_2
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    iget v1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, v1, v2}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->offsetPositionsForMove(II)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    iget v1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, v1, v2}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->offsetPositionsForRemovingLaidOutOrNewView(II)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    iget v1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget-object v3, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->markViewHoldersUpdated(IILjava/lang/Object;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :array_0
    .array-data 1
        0x31t
        0x59t
        0x53t
        0x5bt
        0x5dt
        0x44t
        0xat
        0x17t
        0x4dt
        0x45t
        0x56t
        0x52t
        0x10t
        0x52t
        0x18t
        0x5at
        0x42t
        0x13t
        0x10t
        0x4et
        0x48t
        0x50t
        0x12t
        0x55t
        0xbt
        0x45t
        0x18t
    .end array-data
.end method

.method private updatePositionWithPostponed(II)I
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v5, 0x1

    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, p1

    move v4, v0

    :goto_0
    if-ltz v4, :cond_c

    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    iget v2, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    if-ne v2, v7, :cond_8

    iget v2, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-ge v2, v3, :cond_1

    iget v3, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    :goto_1
    if-lt v1, v3, :cond_6

    if-gt v1, v2, :cond_6

    iget v2, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v3, v2, :cond_3

    if-ne p2, v5, :cond_2

    iget v2, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    :cond_0
    :goto_2
    add-int/lit8 v0, v1, 0x1

    :goto_3
    add-int/lit8 v1, v4, -0x1

    move v4, v1

    move v1, v0

    goto :goto_0

    :cond_1
    iget v3, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v2, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_1

    :cond_2
    if-ne p2, v6, :cond_0

    iget v2, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_2

    :cond_3
    if-ne p2, v5, :cond_5

    iget v2, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    :cond_4
    :goto_4
    add-int/lit8 v0, v1, -0x1

    goto :goto_3

    :cond_5
    if-ne p2, v6, :cond_4

    iget v2, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_4

    :cond_6
    iget v2, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v1, v2, :cond_11

    if-ne p2, v5, :cond_7

    iget v2, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    move v0, v1

    goto :goto_3

    :cond_7
    if-ne p2, v6, :cond_11

    iget v2, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    move v0, v1

    goto :goto_3

    :cond_8
    iget v2, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v2, v1, :cond_a

    iget v2, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    if-ne v2, v5, :cond_9

    iget v0, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int v0, v1, v0

    goto :goto_3

    :cond_9
    iget v2, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    if-ne v2, v6, :cond_11

    iget v0, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v0, v1

    goto :goto_3

    :cond_a
    if-ne p2, v5, :cond_b

    iget v2, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move v0, v1

    goto :goto_3

    :cond_b
    if-ne p2, v6, :cond_11

    iget v2, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move v0, v1

    goto :goto_3

    :cond_c
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_5
    if-ltz v2, :cond_10

    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    iget v3, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    if-ne v3, v7, :cond_f

    iget v3, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v4, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-eq v3, v4, :cond_d

    iget v3, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-gez v3, :cond_e

    :cond_d
    iget-object v3, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/AdapterHelper;->recycleUpdateOp(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    :cond_e
    :goto_6
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_5

    :cond_f
    iget v3, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-gtz v3, :cond_e

    iget-object v3, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/AdapterHelper;->recycleUpdateOp(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    goto :goto_6

    :cond_10
    return v1

    :cond_11
    move v0, v1

    goto/16 :goto_3
.end method


# virtual methods
.method varargs addUpdateOp([Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)Landroidx/recyclerview/widget/AdapterHelper;
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object p0
.end method

.method public applyPendingUpdatesToPosition(I)I
    .locals 6

    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    iget v4, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    sparse-switch v4, :sswitch_data_0

    move v0, v1

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    :sswitch_0
    iget v4, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v4, v1, :cond_4

    iget v0, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v0, v1

    goto :goto_1

    :sswitch_1
    iget v4, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v4, v1, :cond_4

    iget v4, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v4, v5

    if-le v4, v1, :cond_1

    const/4 v1, -0x1

    :cond_0
    return v1

    :cond_1
    iget v0, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int v0, v1, v0

    goto :goto_1

    :sswitch_2
    iget v4, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v4, v1, :cond_2

    iget v0, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_1

    :cond_2
    iget v4, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v4, v1, :cond_3

    add-int/lit8 v1, v1, -0x1

    :cond_3
    iget v0, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-gt v0, v1, :cond_4

    add-int/lit8 v0, v1, 0x1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method consumePostponedUpdates()V
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v4, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    invoke-interface {v4, v0}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->onDispatchSecondPass(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    iput v2, p0, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    return-void
.end method

.method consumeUpdatesInOnePass()V
    .locals 7

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/AdapterHelper;->consumePostponedUpdates()V

    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    iget v4, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v4, :pswitch_data_0

    :goto_1
    :pswitch_0
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :pswitch_1
    iget-object v4, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    invoke-interface {v4, v0}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->onDispatchSecondPass(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    iget-object v4, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    iget v5, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v0, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v4, v5, v0}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->offsetPositionsForAdd(II)V

    goto :goto_1

    :pswitch_2
    iget-object v4, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    invoke-interface {v4, v0}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->onDispatchSecondPass(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    iget-object v4, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    iget v5, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v0, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v4, v5, v0}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->offsetPositionsForRemovingInvisible(II)V

    goto :goto_1

    :pswitch_3
    iget-object v4, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    invoke-interface {v4, v0}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->onDispatchSecondPass(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    iget-object v4, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    iget v5, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v6, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget-object v0, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v4, v5, v6, v0}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->markViewHoldersUpdated(IILjava/lang/Object;)V

    goto :goto_1

    :pswitch_4
    iget-object v4, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    invoke-interface {v4, v0}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->onDispatchSecondPass(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    iget-object v4, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    iget v5, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v0, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v4, v5, v0}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->offsetPositionsForMove(II)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    iput v2, p0, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method dispatchFirstPassAndUpdateViewHolders(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;I)V
    .locals 6

    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    invoke-interface {v0, p1}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->onDispatchFirstPass(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    iget v0, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x3a

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "4147f5"

    const-wide/32 v4, -0x662b2e61

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    iget v1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, p2, v1}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->offsetPositionsForRemovingInvisible(II)V

    :goto_0
    return-void

    :pswitch_2
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    iget v1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget-object v2, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v0, p2, v1, v2}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->markViewHoldersUpdated(IILjava/lang/Object;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :array_0
    .array-data 1
        0x5bt
        0x5ft
        0x58t
        0x4et
        0x46t
        0x47t
        0x51t
        0x5ct
        0x5bt
        0x41t
        0x3t
        0x15t
        0x55t
        0x5ft
        0x50t
        0x17t
        0x13t
        0x45t
        0x50t
        0x50t
        0x40t
        0x52t
        0x46t
        0x5at
        0x44t
        0x42t
        0x14t
        0x54t
        0x7t
        0x5bt
        0x14t
        0x53t
        0x51t
        0x17t
        0x2t
        0x5ct
        0x47t
        0x41t
        0x55t
        0x43t
        0x5t
        0x5dt
        0x51t
        0x55t
        0x14t
        0x5et
        0x8t
        0x15t
        0x52t
        0x58t
        0x46t
        0x44t
        0x12t
        0x15t
        0x44t
        0x50t
        0x47t
        0x44t
    .end array-data
.end method

.method findPositionOffset(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/AdapterHelper;->findPositionOffset(II)I

    move-result v0

    return v0
.end method

.method findPositionOffset(II)I
    .locals 5

    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, p1

    :goto_0
    if-ge p2, v2, :cond_3

    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    iget v3, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2

    iget v3, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v3, v1, :cond_0

    iget v0, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    :goto_1
    add-int/lit8 p2, p2, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget v3, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v3, v1, :cond_1

    add-int/lit8 v1, v1, -0x1

    :cond_1
    iget v0, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-gt v0, v1, :cond_6

    add-int/lit8 v0, v1, 0x1

    goto :goto_1

    :cond_2
    iget v3, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v3, v1, :cond_6

    iget v3, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    iget v3, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v3, v4

    if-ge v1, v3, :cond_4

    const/4 v1, -0x1

    :cond_3
    return v1

    :cond_4
    iget v0, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int v0, v1, v0

    goto :goto_1

    :cond_5
    iget v3, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    iget v0, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v0, v1

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method hasAnyUpdateTypes(I)Z
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasPendingUpdates()Z
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasUpdates()Z
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mUpdateOpPool:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;-><init>(IIILjava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    iput p1, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    iput p2, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iput p3, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iput-object p4, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    goto :goto_0
.end method

.method onItemRangeChanged(IILjava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p2, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-virtual {p0, v3, p1, p2, p3}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, p0, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    iget-object v2, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method onItemRangeInserted(II)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p2, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, p1, p2, v3}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, p0, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    iget-object v2, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method onItemRangeMoved(III)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eq p3, v1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x2c

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "e3ddf5"

    const v3, 0x4eeeadf5

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v2, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-virtual {p0, v3, p1, p2, v4}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, p0, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    iget-object v2, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x28t
        0x5ct
        0x12t
        0xdt
        0x8t
        0x52t
        0x45t
        0x5et
        0xbt
        0x16t
        0x3t
        0x15t
        0x11t
        0x5bt
        0x5t
        0xat
        0x46t
        0x4t
        0x45t
        0x5at
        0x10t
        0x1t
        0xbt
        0x15t
        0xct
        0x40t
        0x44t
        0xat
        0x9t
        0x41t
        0x45t
        0x40t
        0x11t
        0x14t
        0x16t
        0x5at
        0x17t
        0x47t
        0x1t
        0x0t
        0x46t
        0x4ct
        0x0t
        0x47t
    .end array-data
.end method

.method onItemRangeRemoved(II)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p2, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {p0, v3, p1, p2, v4}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, p0, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    iget-object v2, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method preProcess()V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mOpReorderer:Landroidx/recyclerview/widget/OpReorderer;

    iget-object v1, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/OpReorderer;->reorderOps(Ljava/util/List;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    iget v3, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v3, :pswitch_data_0

    :goto_1
    :pswitch_0
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/AdapterHelper;->applyAdd(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/AdapterHelper;->applyRemove(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    goto :goto_1

    :pswitch_3
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/AdapterHelper;->applyUpdate(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    goto :goto_1

    :pswitch_4
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/AdapterHelper;->applyMove(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public recycleUpdateOp(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mDisableRecycler:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mUpdateOpPool:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0, p1}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method recycleUpdateOpsAndClearList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/AdapterHelper;->recycleUpdateOp(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method reset()V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    return-void
.end method
