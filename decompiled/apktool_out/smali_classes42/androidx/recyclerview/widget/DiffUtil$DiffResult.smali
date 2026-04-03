.class public Landroidx/recyclerview/widget/DiffUtil$DiffResult;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/DiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DiffResult"
.end annotation


# static fields
.field private static final FLAG_CHANGED:I = 0x2

.field private static final FLAG_MASK:I = 0xf

.field private static final FLAG_MOVED:I = 0xc

.field private static final FLAG_MOVED_CHANGED:I = 0x4

.field private static final FLAG_MOVED_NOT_CHANGED:I = 0x8

.field private static final FLAG_NOT_CHANGED:I = 0x1

.field private static final FLAG_OFFSET:I = 0x4

.field public static final NO_POSITION:I = -0x1


# instance fields
.field private final mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

.field private final mDetectMoves:Z

.field private final mDiagonals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidx/recyclerview/widget/DiffUtil$Diagonal;",
            ">;"
        }
    .end annotation
.end field

.field private final mNewItemStatuses:[I

.field private final mNewListSize:I

.field private final mOldItemStatuses:[I

.field private final mOldListSize:I


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/DiffUtil$Callback;Ljava/util/List;[I[IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/DiffUtil$Callback;",
            "Ljava/util/List",
            "<",
            "Landroidx/recyclerview/widget/DiffUtil$Diagonal;",
            ">;[I[IZ)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    iput-object p3, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    iput-object p4, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    iget-object v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iput-object p1, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getOldListSize()I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldListSize:I

    invoke-virtual {p1}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getNewListSize()I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewListSize:I

    iput-boolean p5, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDetectMoves:Z

    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->addEdgeDiagonals()V

    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->findMatchingItems()V

    return-void
.end method

.method private addEdgeDiagonals()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    iget v1, v0, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    if-nez v1, :cond_0

    iget v0, v0, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->y:I

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    new-instance v1, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    invoke-direct {v1, v4, v4, v4}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;-><init>(III)V

    invoke-interface {v0, v4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    new-instance v1, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    iget v2, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldListSize:I

    iget v3, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewListSize:I

    invoke-direct {v1, v2, v3, v4}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    goto :goto_0
.end method

.method private findMatchingAddition(I)V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    move v2, v0

    move v1, v0

    :goto_0
    if-ge v2, v3, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    :goto_1
    iget v4, v0, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->y:I

    if-ge v1, v4, :cond_3

    iget-object v4, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    aget v4, v4, v1

    if-nez v4, :cond_2

    iget-object v4, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    invoke-virtual {v4, p1, v1}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areContentsTheSame(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    :goto_2
    iget-object v2, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    shl-int/lit8 v3, v1, 0x4

    or-int/2addr v3, v0

    aput v3, v2, p1

    iget-object v2, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    shl-int/lit8 v3, p1, 0x4

    or-int/2addr v0, v3

    aput v0, v2, v1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x4

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->endY()I

    move-result v1

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method private findMatchingItems()V
    .locals 8

    iget-object v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    const/4 v1, 0x0

    :goto_0
    iget v2, v0, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->size:I

    if-ge v1, v2, :cond_0

    iget v2, v0, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    add-int v4, v2, v1

    iget v2, v0, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->y:I

    add-int v5, v2, v1

    iget-object v2, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    invoke-virtual {v2, v4, v5}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areContentsTheSame(II)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    iget-object v6, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    shl-int/lit8 v7, v5, 0x4

    or-int/2addr v7, v2

    aput v7, v6, v4

    iget-object v6, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v2, v4

    aput v2, v6, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDetectMoves:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->findMoveMatches()V

    :cond_3
    return-void
.end method

.method private findMoveMatches()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    :goto_1
    iget v3, v0, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    aget v3, v3, v1

    if-nez v3, :cond_0

    invoke-direct {p0, v1}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->findMatchingAddition(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->endX()I

    move-result v0

    move v1, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static getPostponedUpdate(Ljava/util/Collection;IZ)Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;",
            ">;IZ)",
            "Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    iget v3, v0, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->posInOwnerList:I

    if-ne v3, p1, :cond_0

    iget-boolean v3, v0, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->removal:Z

    if-ne v3, p2, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    move-object v1, v0

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    if-eqz p2, :cond_2

    iget v3, v0, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    goto :goto_0

    :cond_2
    iget v3, v0, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    goto :goto_0

    :cond_3
    return-object v1
.end method


# virtual methods
.method public convertNewPositionToOld(I)I
    .locals 6
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    if-ltz p1, :cond_0

    iget v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewListSize:I

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x28

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "d8c0be"

    const-wide v4, -0x3e88d40090000000L    # -2.4297463E7

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x12

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "ff05bf"

    const/16 v4, 0x3876

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewListSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    aget v0, v0, p1

    and-int/lit8 v1, v0, 0xf

    if-nez v1, :cond_2

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_2
    shr-int/lit8 v0, v0, 0x4

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x2dt
        0x56t
        0x7t
        0x55t
        0x1at
        0x45t
        0xbt
        0x4dt
        0x17t
        0x10t
        0xdt
        0x3t
        0x44t
        0x5at
        0xct
        0x45t
        0xct
        0x1t
        0x17t
        0x18t
        0x4et
        0x10t
        0x12t
        0x4t
        0x17t
        0x4bt
        0x6t
        0x54t
        0x42t
        0x15t
        0xbt
        0x4bt
        0xat
        0x44t
        0xbt
        0xat
        0xat
        0x18t
        0x5et
        0x10t
    .end array-data

    :array_1
    .array-data 1
        0x4at
        0x46t
        0x5et
        0x50t
        0x15t
        0x46t
        0xat
        0xft
        0x43t
        0x41t
        0x42t
        0x15t
        0xft
        0x1ct
        0x55t
        0x15t
        0x5ft
        0x46t
    .end array-data
.end method

.method public convertOldPositionToNew(I)I
    .locals 6
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    if-ltz p1, :cond_0

    iget v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldListSize:I

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x28

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "46ddbb"

    const-wide v4, 0x41c7c45192000000L    # 7.97483812E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x12

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "c6e267"

    const-wide/32 v4, -0x5427f341

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldListSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    aget v0, v0, p1

    and-int/lit8 v1, v0, 0xf

    if-nez v1, :cond_2

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_2
    shr-int/lit8 v0, v0, 0x4

    goto :goto_0

    :array_0
    .array-data 1
        0x7dt
        0x58t
        0x0t
        0x1t
        0x1at
        0x42t
        0x5bt
        0x43t
        0x10t
        0x44t
        0xdt
        0x4t
        0x14t
        0x54t
        0xbt
        0x11t
        0xct
        0x6t
        0x47t
        0x16t
        0x49t
        0x44t
        0x12t
        0x3t
        0x47t
        0x45t
        0x1t
        0x0t
        0x42t
        0x12t
        0x5bt
        0x45t
        0xdt
        0x10t
        0xbt
        0xdt
        0x5at
        0x16t
        0x59t
        0x44t
    .end array-data

    :array_1
    .array-data 1
        0x4ft
        0x16t
        0xat
        0x5et
        0x52t
        0x17t
        0xft
        0x5ft
        0x16t
        0x46t
        0x16t
        0x44t
        0xat
        0x4ct
        0x0t
        0x12t
        0xbt
        0x17t
    .end array-data
.end method

.method public dispatchUpdatesTo(Landroidx/recyclerview/widget/ListUpdateCallback;)V
    .locals 13
    .param p1    # Landroidx/recyclerview/widget/ListUpdateCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    instance-of v0, p1, Landroidx/recyclerview/widget/BatchingListUpdateCallback;

    if-eqz v0, :cond_1

    check-cast p1, Landroidx/recyclerview/widget/BatchingListUpdateCallback;

    :goto_0
    iget v3, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldListSize:I

    new-instance v6, Ljava/util/ArrayDeque;

    invoke-direct {v6}, Ljava/util/ArrayDeque;-><init>()V

    iget v2, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldListSize:I

    iget v1, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewListSize:I

    iget-object v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v5, v0

    :goto_1
    if-ltz v5, :cond_a

    iget-object v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->endX()I

    move-result v4

    invoke-virtual {v0}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->endY()I

    move-result v7

    move v12, v2

    move v2, v3

    move v3, v12

    :cond_0
    :goto_2
    if-le v3, v4, :cond_b

    add-int/lit8 v3, v3, -0x1

    iget-object v8, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    aget v8, v8, v3

    and-int/lit8 v9, v8, 0xc

    if-eqz v9, :cond_3

    shr-int/lit8 v9, v8, 0x4

    const/4 v10, 0x0

    invoke-static {v6, v9, v10}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->getPostponedUpdate(Ljava/util/Collection;IZ)Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    move-result-object v10

    if-eqz v10, :cond_2

    iget v10, v10, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    sub-int v10, v2, v10

    add-int/lit8 v11, v10, -0x1

    invoke-virtual {p1, v3, v11}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onMoved(II)V

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_0

    add-int/lit8 v8, v10, -0x1

    const/4 v10, 0x1

    iget-object v11, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    invoke-virtual {v11, v3, v9}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getChangePayload(II)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {p1, v8, v10, v9}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance v0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;-><init>(Landroidx/recyclerview/widget/ListUpdateCallback;)V

    move-object p1, v0

    goto :goto_0

    :cond_2
    new-instance v8, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    sub-int v9, v2, v3

    add-int/lit8 v9, v9, -0x1

    const/4 v10, 0x1

    invoke-direct {v8, v3, v9, v10}, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;-><init>(IIZ)V

    invoke-interface {v6, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    const/4 v8, 0x1

    invoke-virtual {p1, v3, v8}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onRemoved(II)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_4
    :goto_3
    if-le v1, v7, :cond_7

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    aget v2, v2, v1

    and-int/lit8 v8, v2, 0xc

    if-eqz v8, :cond_6

    shr-int/lit8 v8, v2, 0x4

    const/4 v9, 0x1

    invoke-static {v6, v8, v9}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->getPostponedUpdate(Ljava/util/Collection;IZ)Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    move-result-object v9

    if-nez v9, :cond_5

    new-instance v2, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    sub-int v8, v4, v3

    const/4 v9, 0x0

    invoke-direct {v2, v1, v8, v9}, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;-><init>(IIZ)V

    invoke-interface {v6, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    iget v9, v9, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    sub-int v9, v4, v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p1, v9, v3}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onMoved(II)V

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    iget-object v9, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    invoke-virtual {v9, v8, v1}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getChangePayload(II)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p1, v3, v2, v8}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    goto :goto_3

    :cond_6
    const/4 v2, 0x1

    invoke-virtual {p1, v3, v2}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onInserted(II)V

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_3

    :cond_7
    iget v3, v0, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    iget v2, v0, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->y:I

    const/4 v1, 0x0

    :goto_4
    iget v7, v0, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->size:I

    if-ge v1, v7, :cond_9

    iget-object v7, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    aget v7, v7, v3

    and-int/lit8 v7, v7, 0xf

    const/4 v8, 0x2

    if-ne v7, v8, :cond_8

    const/4 v7, 0x1

    iget-object v8, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    invoke-virtual {v8, v3, v2}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getChangePayload(II)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p1, v3, v7, v8}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    :cond_8
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_9
    iget v2, v0, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    iget v1, v0, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->y:I

    add-int/lit8 v0, v5, -0x1

    move v5, v0

    move v3, v4

    goto/16 :goto_1

    :cond_a
    invoke-virtual {p1}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->dispatchLastEvent()V

    return-void

    :cond_b
    move v4, v2

    goto :goto_3
.end method

.method public dispatchUpdatesTo(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$Adapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Landroidx/recyclerview/widget/AdapterListUpdateCallback;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/AdapterListUpdateCallback;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/ListUpdateCallback;)V

    return-void
.end method
