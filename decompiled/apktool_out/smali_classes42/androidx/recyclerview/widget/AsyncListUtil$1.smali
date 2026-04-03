.class Landroidx/recyclerview/widget/AsyncListUtil$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/AsyncListUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final this$0:Landroidx/recyclerview/widget/AsyncListUtil;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/AsyncListUtil;)V
    .locals 0

    iput-object p1, p0, Landroidx/recyclerview/widget/AsyncListUtil$1;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isRequestedGeneration(I)Z
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil$1;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    iget v0, v0, Landroidx/recyclerview/widget/AsyncListUtil;->mRequestedGeneration:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recycleAllTiles()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/recyclerview/widget/AsyncListUtil$1;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    iget-object v1, v1, Landroidx/recyclerview/widget/AsyncListUtil;->mTileList:Landroidx/recyclerview/widget/TileList;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/TileList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/widget/AsyncListUtil$1;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    iget-object v1, v1, Landroidx/recyclerview/widget/AsyncListUtil;->mBackgroundProxy:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    iget-object v2, p0, Landroidx/recyclerview/widget/AsyncListUtil$1;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    iget-object v2, v2, Landroidx/recyclerview/widget/AsyncListUtil;->mTileList:Landroidx/recyclerview/widget/TileList;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/TileList;->getAtIndex(I)Landroidx/recyclerview/widget/TileList$Tile;

    move-result-object v2

    invoke-interface {v1, v2}, Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;->recycleTile(Landroidx/recyclerview/widget/TileList$Tile;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil$1;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    iget-object v0, v0, Landroidx/recyclerview/widget/AsyncListUtil;->mTileList:Landroidx/recyclerview/widget/TileList;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/TileList;->clear()V

    return-void
.end method


# virtual methods
.method public addTile(ILandroidx/recyclerview/widget/TileList$Tile;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/recyclerview/widget/TileList$Tile",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/AsyncListUtil$1;->isRequestedGeneration(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil$1;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    iget-object v0, v0, Landroidx/recyclerview/widget/AsyncListUtil;->mBackgroundProxy:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    invoke-interface {v0, p2}, Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;->recycleTile(Landroidx/recyclerview/widget/TileList$Tile;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil$1;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    iget-object v0, v0, Landroidx/recyclerview/widget/AsyncListUtil;->mTileList:Landroidx/recyclerview/widget/TileList;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/TileList;->addOrReplace(Landroidx/recyclerview/widget/TileList$Tile;)Landroidx/recyclerview/widget/TileList$Tile;

    move-result-object v0

    if-eqz v0, :cond_2

    const/16 v1, 0xd

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "308b5a"

    const v3, 0x4d1efed3    # 1.6671877E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x10

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "7f055b"

    const-wide/32 v6, -0x3bf9e41

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroidx/recyclerview/widget/TileList$Tile;->mStartPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroidx/recyclerview/widget/AsyncListUtil$1;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    iget-object v1, v1, Landroidx/recyclerview/widget/AsyncListUtil;->mBackgroundProxy:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    invoke-interface {v1, v0}, Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;->recycleTile(Landroidx/recyclerview/widget/TileList$Tile;)V

    :cond_2
    iget v1, p2, Landroidx/recyclerview/widget/TileList$Tile;->mStartPosition:I

    iget v2, p2, Landroidx/recyclerview/widget/TileList$Tile;->mItemCount:I

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Landroidx/recyclerview/widget/AsyncListUtil$1;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    iget-object v3, v3, Landroidx/recyclerview/widget/AsyncListUtil;->mMissingPositions:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Landroidx/recyclerview/widget/AsyncListUtil$1;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    iget-object v3, v3, Landroidx/recyclerview/widget/AsyncListUtil;->mMissingPositions:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    iget v4, p2, Landroidx/recyclerview/widget/TileList$Tile;->mStartPosition:I

    if-gt v4, v3, :cond_3

    add-int v4, v1, v2

    if-ge v3, v4, :cond_3

    iget-object v4, p0, Landroidx/recyclerview/widget/AsyncListUtil$1;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    iget-object v4, v4, Landroidx/recyclerview/widget/AsyncListUtil;->mMissingPositions:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    iget-object v4, p0, Landroidx/recyclerview/widget/AsyncListUtil$1;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    iget-object v4, v4, Landroidx/recyclerview/widget/AsyncListUtil;->mViewCallback:Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;->onItemLoaded(I)V

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :array_0
    .array-data 1
        0x72t
        0x43t
        0x41t
        0xct
        0x56t
        0x2dt
        0x5at
        0x43t
        0x4ct
        0x37t
        0x41t
        0x8t
        0x5ft
    .end array-data

    nop

    :array_1
    .array-data 1
        0x53t
        0x13t
        0x40t
        0x59t
        0x5ct
        0x1t
        0x56t
        0x12t
        0x55t
        0x15t
        0x41t
        0xbt
        0x5bt
        0x3t
        0x10t
        0x75t
    .end array-data
.end method

.method public removeTile(II)V
    .locals 5

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/AsyncListUtil$1;->isRequestedGeneration(I)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil$1;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    iget-object v0, v0, Landroidx/recyclerview/widget/AsyncListUtil;->mTileList:Landroidx/recyclerview/widget/TileList;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/TileList;->removeAtPos(I)Landroidx/recyclerview/widget/TileList$Tile;

    move-result-object v0

    if-nez v0, :cond_1

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "7da2a2"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x10

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "238e83"

    const/16 v4, -0x398e

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/recyclerview/widget/AsyncListUtil$1;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    iget-object v1, v1, Landroidx/recyclerview/widget/AsyncListUtil;->mBackgroundProxy:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    invoke-interface {v1, v0}, Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;->recycleTile(Landroidx/recyclerview/widget/TileList$Tile;)V

    goto :goto_0

    :array_0
    .array-data 1
        0x76t
        0x17t
        0x18t
        0x5ct
        0x2t
        0x7et
        0x5et
        0x17t
        0x15t
        0x67t
        0x15t
        0x5bt
        0x5bt
    .end array-data

    nop

    :array_1
    .array-data 1
        0x46t
        0x5at
        0x54t
        0x0t
        0x18t
        0x5dt
        0x5dt
        0x47t
        0x18t
        0x3t
        0x57t
        0x46t
        0x5ct
        0x57t
        0x18t
        0x25t
    .end array-data
.end method

.method public updateItemCount(II)V
    .locals 2

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/AsyncListUtil$1;->isRequestedGeneration(I)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil$1;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    iput p2, v0, Landroidx/recyclerview/widget/AsyncListUtil;->mItemCount:I

    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil$1;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    iget-object v0, v0, Landroidx/recyclerview/widget/AsyncListUtil;->mViewCallback:Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;->onDataRefresh()V

    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil$1;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    iget-object v1, p0, Landroidx/recyclerview/widget/AsyncListUtil$1;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    iget v1, v1, Landroidx/recyclerview/widget/AsyncListUtil;->mRequestedGeneration:I

    iput v1, v0, Landroidx/recyclerview/widget/AsyncListUtil;->mDisplayedGeneration:I

    invoke-direct {p0}, Landroidx/recyclerview/widget/AsyncListUtil$1;->recycleAllTiles()V

    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil$1;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/recyclerview/widget/AsyncListUtil;->mAllowScrollHints:Z

    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil$1;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/AsyncListUtil;->updateRange()V

    goto :goto_0
.end method
