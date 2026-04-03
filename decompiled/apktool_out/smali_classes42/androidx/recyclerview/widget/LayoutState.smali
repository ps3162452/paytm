.class Landroidx/recyclerview/widget/LayoutState;
.super Ljava/lang/Object;


# static fields
.field static final INVALID_LAYOUT:I = -0x80000000

.field static final ITEM_DIRECTION_HEAD:I = -0x1

.field static final ITEM_DIRECTION_TAIL:I = 0x1

.field static final LAYOUT_END:I = 0x1

.field static final LAYOUT_START:I = -0x1


# instance fields
.field mAvailable:I

.field mCurrentPosition:I

.field mEndLine:I

.field mInfinite:Z

.field mItemDirection:I

.field mLayoutDirection:I

.field mRecycle:Z

.field mStartLine:I

.field mStopInFocusable:Z


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/LayoutState;->mRecycle:Z

    iput v1, p0, Landroidx/recyclerview/widget/LayoutState;->mStartLine:I

    iput v1, p0, Landroidx/recyclerview/widget/LayoutState;->mEndLine:I

    return-void
.end method


# virtual methods
.method hasMore(Landroidx/recyclerview/widget/RecyclerView$State;)Z
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/LayoutState;->mCurrentPosition:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroidx/recyclerview/widget/LayoutState;->mCurrentPosition:I

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

.method next(Landroidx/recyclerview/widget/RecyclerView$Recycler;)Landroid/view/View;
    .locals 3

    iget v0, p0, Landroidx/recyclerview/widget/LayoutState;->mCurrentPosition:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Landroidx/recyclerview/widget/LayoutState;->mCurrentPosition:I

    iget v2, p0, Landroidx/recyclerview/widget/LayoutState;->mItemDirection:I

    add-int/2addr v1, v2

    iput v1, p0, Landroidx/recyclerview/widget/LayoutState;->mCurrentPosition:I

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    const/16 v7, 0x13

    const/4 v6, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x17

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "6c500b"

    const v3, -0x322910c2    # -4.507504E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/recyclerview/widget/LayoutState;->mAvailable:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v7, [B

    fill-array-data v1, :array_1

    const-string v2, "32bf64"

    const-wide/32 v4, -0x789fc419

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/recyclerview/widget/LayoutState;->mCurrentPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x11

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "f0ae57"

    invoke-static {v1, v2, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/recyclerview/widget/LayoutState;->mItemDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v7, [B

    fill-array-data v1, :array_3

    const-string v2, "e5d0d9"

    invoke-static {v1, v2, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xd

    new-array v1, v1, [B

    fill-array-data v1, :array_4

    const-string v2, "8452d7"

    const-wide v4, -0x3e2fee7732000000L    # -1.07833836E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/recyclerview/widget/LayoutState;->mStartLine:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xb

    new-array v1, v1, [B

    fill-array-data v1, :array_5

    const-string v2, "4502f1"

    invoke-static {v1, v2, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/recyclerview/widget/LayoutState;->mEndLine:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x7at
        0x2t
        0x4ct
        0x5ft
        0x45t
        0x16t
        0x65t
        0x17t
        0x54t
        0x44t
        0x55t
        0x19t
        0x5bt
        0x22t
        0x43t
        0x51t
        0x59t
        0xet
        0x57t
        0x1t
        0x59t
        0x55t
        0xdt
    .end array-data

    :array_1
    .array-data 1
        0x1ft
        0x12t
        0xft
        0x25t
        0x43t
        0x46t
        0x41t
        0x57t
        0xct
        0x12t
        0x66t
        0x5bt
        0x40t
        0x5bt
        0x16t
        0xft
        0x59t
        0x5at
        0xet
    .end array-data

    :array_2
    .array-data 1
        0x4at
        0x10t
        0xct
        0x2ct
        0x41t
        0x52t
        0xbt
        0x74t
        0x8t
        0x17t
        0x50t
        0x54t
        0x12t
        0x59t
        0xet
        0xbt
        0x8t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x49t
        0x15t
        0x9t
        0x7ct
        0x5t
        0x40t
        0xat
        0x40t
        0x10t
        0x74t
        0xdt
        0x4bt
        0x0t
        0x56t
        0x10t
        0x59t
        0xbt
        0x57t
        0x58t
    .end array-data

    :array_4
    .array-data 1
        0x14t
        0x14t
        0x58t
        0x61t
        0x10t
        0x56t
        0x4at
        0x40t
        0x79t
        0x5bt
        0xat
        0x52t
        0x5t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x18t
        0x15t
        0x5dt
        0x77t
        0x8t
        0x55t
        0x78t
        0x5ct
        0x5et
        0x57t
        0x5bt
    .end array-data
.end method
