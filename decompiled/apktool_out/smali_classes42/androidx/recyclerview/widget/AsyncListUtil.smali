.class public Landroidx/recyclerview/widget/AsyncListUtil;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/AsyncListUtil$DataCallback;,
        Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field static final TAG:Ljava/lang/String;


# instance fields
.field mAllowScrollHints:Z

.field private final mBackgroundCallback:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback",
            "<TT;>;"
        }
    .end annotation
.end field

.field final mBackgroundProxy:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback",
            "<TT;>;"
        }
    .end annotation
.end field

.field final mDataCallback:Landroidx/recyclerview/widget/AsyncListUtil$DataCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/AsyncListUtil$DataCallback",
            "<TT;>;"
        }
    .end annotation
.end field

.field mDisplayedGeneration:I

.field mItemCount:I

.field private final mMainThreadCallback:Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback",
            "<TT;>;"
        }
    .end annotation
.end field

.field final mMainThreadProxy:Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback",
            "<TT;>;"
        }
    .end annotation
.end field

.field final mMissingPositions:Landroid/util/SparseIntArray;

.field final mPrevRange:[I

.field mRequestedGeneration:I

.field private mScrollHint:I

.field final mTClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field final mTileList:Landroidx/recyclerview/widget/TileList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/TileList",
            "<TT;>;"
        }
    .end annotation
.end field

.field final mTileSize:I

.field final mTmpRange:[I

.field final mTmpRangeExtended:[I

.field final mViewCallback:Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x1

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "e6eb15"

    invoke-static {v0, v1, v2, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/recyclerview/widget/AsyncListUtil;->TAG:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x24t
        0x45t
        0x1ct
        0xct
        0x52t
        0x79t
        0xct
        0x45t
        0x11t
        0x37t
        0x45t
        0x5ct
        0x9t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/Class;ILandroidx/recyclerview/widget/AsyncListUtil$DataCallback;Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;)V
    .locals 3
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/AsyncListUtil$DataCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;I",
            "Landroidx/recyclerview/widget/AsyncListUtil$DataCallback",
            "<TT;>;",
            "Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v2, [I

    iput-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRange:[I

    new-array v0, v2, [I

    iput-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mPrevRange:[I

    new-array v0, v2, [I

    iput-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRangeExtended:[I

    iput v1, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mScrollHint:I

    iput v1, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mItemCount:I

    iput v1, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mDisplayedGeneration:I

    iget v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mDisplayedGeneration:I

    iput v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mRequestedGeneration:I

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mMissingPositions:Landroid/util/SparseIntArray;

    new-instance v0, Landroidx/recyclerview/widget/AsyncListUtil$1;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/AsyncListUtil$1;-><init>(Landroidx/recyclerview/widget/AsyncListUtil;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mMainThreadCallback:Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;

    new-instance v0, Landroidx/recyclerview/widget/AsyncListUtil$2;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/AsyncListUtil$2;-><init>(Landroidx/recyclerview/widget/AsyncListUtil;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mBackgroundCallback:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    iput-object p1, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mTClass:Ljava/lang/Class;

    iput p2, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mTileSize:I

    iput-object p3, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mDataCallback:Landroidx/recyclerview/widget/AsyncListUtil$DataCallback;

    iput-object p4, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mViewCallback:Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;

    new-instance v0, Landroidx/recyclerview/widget/TileList;

    iget v1, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mTileSize:I

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/TileList;-><init>(I)V

    iput-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mTileList:Landroidx/recyclerview/widget/TileList;

    new-instance v0, Landroidx/recyclerview/widget/MessageThreadUtil;

    invoke-direct {v0}, Landroidx/recyclerview/widget/MessageThreadUtil;-><init>()V

    iget-object v1, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mMainThreadCallback:Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;

    invoke-interface {v0, v1}, Landroidx/recyclerview/widget/ThreadUtil;->getMainThreadProxy(Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;)Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;

    move-result-object v1

    iput-object v1, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mMainThreadProxy:Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;

    iget-object v1, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mBackgroundCallback:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    invoke-interface {v0, v1}, Landroidx/recyclerview/widget/ThreadUtil;->getBackgroundProxy(Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;)Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mBackgroundProxy:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/AsyncListUtil;->refresh()V

    return-void
.end method

.method private isRefreshPending()Z
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mRequestedGeneration:I

    iget v1, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mDisplayedGeneration:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getItem(I)Ljava/lang/Object;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    if-ltz p1, :cond_0

    iget v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mItemCount:I

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x15

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "821059"

    const-wide v4, 0x41cf013059800000L    # 1.040343219E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mItemCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mTileList:Landroidx/recyclerview/widget/TileList;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/TileList;->getItemAt(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Landroidx/recyclerview/widget/AsyncListUtil;->isRefreshPending()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mMissingPositions:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    :cond_2
    return-object v0

    :array_0
    .array-data 1
        0x18t
        0x5bt
        0x42t
        0x10t
        0x5bt
        0x56t
        0x4ct
        0x12t
        0x46t
        0x59t
        0x41t
        0x51t
        0x51t
        0x5ct
        0x11t
        0x0t
        0x15t
        0x58t
        0x56t
        0x56t
        0x11t
    .end array-data
.end method

.method public getItemCount()I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mItemCount:I

    return v0
.end method

.method varargs log(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    sget-object v0, Landroidx/recyclerview/widget/AsyncListUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x7

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "440e26"

    const-wide v4, -0x3e43b9e04b000000L    # -4.74357685E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :array_0
    .array-data 1
        0x6ft
        0x79t
        0x71t
        0x2ct
        0x7ct
        0x6bt
        0x14t
    .end array-data
.end method

.method public onRangeChanged()V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/AsyncListUtil;->isRefreshPending()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/AsyncListUtil;->updateRange()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mAllowScrollHints:Z

    goto :goto_0
.end method

.method public refresh()V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mMissingPositions:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mBackgroundProxy:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    iget v1, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mRequestedGeneration:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mRequestedGeneration:I

    invoke-interface {v0, v1}, Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;->refresh(I)V

    return-void
.end method

.method updateRange()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mViewCallback:Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;

    iget-object v1, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRange:[I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;->getItemRangeInto([I)V

    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRange:[I

    aget v0, v0, v4

    iget-object v1, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRange:[I

    aget v1, v1, v5

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRange:[I

    aget v0, v0, v4

    if-gez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRange:[I

    aget v0, v0, v5

    iget v1, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mItemCount:I

    if-ge v0, v1, :cond_0

    iget-boolean v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mAllowScrollHints:Z

    if-nez v0, :cond_3

    iput v4, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mScrollHint:I

    :cond_2
    :goto_1
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mPrevRange:[I

    iget-object v1, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRange:[I

    aget v1, v1, v4

    aput v1, v0, v4

    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mPrevRange:[I

    iget-object v1, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRange:[I

    aget v1, v1, v5

    aput v1, v0, v5

    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mViewCallback:Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;

    iget-object v1, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRange:[I

    iget-object v2, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRangeExtended:[I

    iget v3, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mScrollHint:I

    invoke-virtual {v0, v1, v2, v3}, Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;->extendRangeInto([I[II)V

    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRangeExtended:[I

    iget-object v1, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRange:[I

    aget v1, v1, v4

    iget-object v2, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRangeExtended:[I

    aget v2, v2, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    aput v1, v0, v4

    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRangeExtended:[I

    iget-object v1, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRange:[I

    aget v1, v1, v5

    iget-object v2, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRangeExtended:[I

    aget v2, v2, v5

    iget v3, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v0, v5

    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mBackgroundProxy:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    iget-object v1, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRange:[I

    aget v1, v1, v4

    iget-object v2, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRange:[I

    aget v2, v2, v5

    iget-object v3, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRangeExtended:[I

    aget v3, v3, v4

    iget-object v4, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRangeExtended:[I

    aget v4, v4, v5

    iget v5, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mScrollHint:I

    invoke-interface/range {v0 .. v5}, Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;->updateRange(IIIII)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRange:[I

    aget v0, v0, v4

    iget-object v1, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mPrevRange:[I

    aget v1, v1, v5

    if-gt v0, v1, :cond_4

    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mPrevRange:[I

    aget v0, v0, v4

    iget-object v1, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRange:[I

    aget v1, v1, v5

    if-le v0, v1, :cond_5

    :cond_4
    iput v4, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mScrollHint:I

    goto :goto_1

    :cond_5
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRange:[I

    aget v0, v0, v4

    iget-object v1, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mPrevRange:[I

    aget v1, v1, v4

    if-ge v0, v1, :cond_6

    iput v5, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mScrollHint:I

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRange:[I

    aget v0, v0, v4

    iget-object v1, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mPrevRange:[I

    aget v1, v1, v4

    if-le v0, v1, :cond_2

    const/4 v0, 0x2

    iput v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mScrollHint:I

    goto/16 :goto_1
.end method
