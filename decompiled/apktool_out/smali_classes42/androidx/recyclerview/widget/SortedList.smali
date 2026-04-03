.class public Landroidx/recyclerview/widget/SortedList;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/SortedList$BatchedCallback;,
        Landroidx/recyclerview/widget/SortedList$Callback;
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
.field private static final CAPACITY_GROWTH:I = 0xa

.field private static final DELETION:I = 0x2

.field private static final INSERTION:I = 0x1

.field public static final INVALID_POSITION:I = -0x1

.field private static final LOOKUP:I = 0x4

.field private static final MIN_CAPACITY:I = 0xa


# instance fields
.field private mBatchedCallback:Landroidx/recyclerview/widget/SortedList$BatchedCallback;

.field private mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

.field mData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private mNewDataStart:I

.field private mOldData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private mOldDataSize:I

.field private mOldDataStart:I

.field private mSize:I

.field private final mTClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Landroidx/recyclerview/widget/SortedList$Callback;)V
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/SortedList$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroidx/recyclerview/widget/SortedList$Callback",
            "<TT;>;)V"
        }
    .end annotation

    const/16 v0, 0xa

    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/SortedList;-><init>(Ljava/lang/Class;Landroidx/recyclerview/widget/SortedList$Callback;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Landroidx/recyclerview/widget/SortedList$Callback;I)V
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/SortedList$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroidx/recyclerview/widget/SortedList$Callback",
            "<TT;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/SortedList;->mTClass:Ljava/lang/Class;

    invoke-static {p1, p3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    iput-object p2, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    return-void
.end method

.method private add(Ljava/lang/Object;Z)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)I"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v5, 0x1

    iget-object v2, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    iget v4, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroidx/recyclerview/widget/SortedList;->findIndexOf(Ljava/lang/Object;[Ljava/lang/Object;III)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :goto_0
    invoke-direct {p0, v3, p1}, Landroidx/recyclerview/widget/SortedList;->addToData(ILjava/lang/Object;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v0, v3, v5}, Landroidx/recyclerview/widget/SortedList$Callback;->onInserted(II)V

    :cond_0
    move v0, v3

    :goto_1
    return v0

    :cond_1
    iget v1, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    aget-object v1, v1, v0

    iget-object v2, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v2, v1, p1}, Landroidx/recyclerview/widget/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v2, v1, p1}, Landroidx/recyclerview/widget/SortedList$Callback;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    aput-object p1, v1, v0

    goto :goto_1

    :cond_2
    iget-object v2, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    aput-object p1, v2, v0

    iget-object v2, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    iget-object v3, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v3, v1, p1}, Landroidx/recyclerview/widget/SortedList$Callback;->getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v0, v5, v1}, Landroidx/recyclerview/widget/SortedList$Callback;->onChanged(IILjava/lang/Object;)V

    goto :goto_1

    :cond_3
    move v3, v0

    goto :goto_0
.end method

.method private addAllInternal([Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/SortedList;->sortAndDedup([Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    if-nez v1, :cond_1

    iput-object p1, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    iput v0, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    iget-object v1, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroidx/recyclerview/widget/SortedList$Callback;->onInserted(II)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/SortedList;->merge([Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method private addToData(ILjava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    const/4 v2, 0x0

    iget v0, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    if-le p1, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x13

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "50d58c"

    const v4, -0x313e3fb9

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x11

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "661497"

    const/16 v4, 0x7fc5

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    iget-object v1, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    array-length v1, v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mTClass:Ljava/lang/Class;

    iget-object v1, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v1, v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object p2, v0, p1

    iget-object v1, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    sub-int/2addr v3, p1

    invoke-static {v1, p1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    :goto_0
    iget v0, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    iget-object v1, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    aput-object p2, v0, p1

    goto :goto_0

    :array_0
    .array-data 1
        0x56t
        0x51t
        0xat
        0x5bt
        0x57t
        0x17t
        0x15t
        0x51t
        0x0t
        0x51t
        0x18t
        0xat
        0x41t
        0x55t
        0x9t
        0x15t
        0x4ct
        0xct
        0x15t
    .end array-data

    :array_1
    .array-data 1
        0x16t
        0x54t
        0x54t
        0x57t
        0x58t
        0x42t
        0x45t
        0x53t
        0x11t
        0x47t
        0x50t
        0x4dt
        0x53t
        0x16t
        0x58t
        0x47t
        0x19t
    .end array-data
.end method

.method private copyArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mTClass:Ljava/lang/Class;

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private findIndexOf(Ljava/lang/Object;[Ljava/lang/Object;III)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[TT;III)I"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v0, -0x1

    move v1, p3

    :goto_0
    if-ge v1, p4, :cond_5

    add-int v2, v1, p4

    div-int/lit8 v2, v2, 0x2

    aget-object v3, p2, v2

    iget-object v4, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v4, v3, p1}, Landroidx/recyclerview/widget/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_0

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_0
    if-nez v4, :cond_4

    iget-object v4, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v4, v3, p1}, Landroidx/recyclerview/widget/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v2

    :cond_1
    :goto_1
    return v0

    :cond_2
    invoke-direct {p0, p1, v2, v1, p4}, Landroidx/recyclerview/widget/SortedList;->linearEqualitySearch(Ljava/lang/Object;III)I

    move-result v1

    if-ne p5, v5, :cond_3

    if-eq v1, v0, :cond_6

    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    move p4, v2

    goto :goto_0

    :cond_5
    if-ne p5, v5, :cond_1

    move v0, v1

    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_1
.end method

.method private findSameItem(Ljava/lang/Object;[Ljava/lang/Object;II)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[TT;II)I"
        }
    .end annotation

    move v0, p3

    :goto_0
    if-ge v0, p4, :cond_1

    iget-object v1, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    aget-object v2, p2, v0

    invoke-virtual {v1, v2, p1}, Landroidx/recyclerview/widget/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private linearEqualitySearch(Ljava/lang/Object;III)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;III)I"
        }
    .end annotation

    add-int/lit8 v0, p2, -0x1

    :goto_0
    if-lt v0, p3, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    aget-object v1, v1, v0

    iget-object v2, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v2, v1, p1}, Landroidx/recyclerview/widget/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    add-int/lit8 v0, p2, 0x1

    :goto_1
    if-ge v0, p4, :cond_1

    iget-object v1, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    aget-object v1, v1, v0

    iget-object v2, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v2, v1, p1}, Landroidx/recyclerview/widget/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_4

    :cond_1
    const/4 v0, -0x1

    :cond_2
    return v0

    :cond_3
    iget-object v2, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v2, v1, p1}, Landroidx/recyclerview/widget/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v2, v1, p1}, Landroidx/recyclerview/widget/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private merge([Ljava/lang/Object;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;I)V"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    instance-of v0, v0, Landroidx/recyclerview/widget/SortedList$BatchedCallback;

    if-nez v0, :cond_5

    move v2, v3

    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/SortedList;->beginBatchedUpdates()V

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    iput-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mOldData:[Ljava/lang/Object;

    iput v1, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    iget v0, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    iput v0, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataSize:I

    iget v0, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    iget-object v4, p0, Landroidx/recyclerview/widget/SortedList;->mTClass:Ljava/lang/Class;

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, 0xa

    invoke-static {v4, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    iput v1, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    move v0, v1

    :cond_1
    :goto_1
    iget v1, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    iget v4, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataSize:I

    if-lt v1, v4, :cond_2

    if-ge v0, p2, :cond_3

    :cond_2
    iget v1, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    iget v4, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataSize:I

    if-ne v1, v4, :cond_6

    sub-int v1, p2, v0

    iget-object v3, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    iget v4, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    invoke-static {p1, v0, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    iget v0, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    iget v3, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    sub-int/2addr v3, v1

    invoke-virtual {v0, v3, v1}, Landroidx/recyclerview/widget/SortedList$Callback;->onInserted(II)V

    :cond_3
    :goto_2
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mOldData:[Ljava/lang/Object;

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/SortedList;->endBatchedUpdates()V

    :cond_4
    return-void

    :cond_5
    move v2, v1

    goto :goto_0

    :cond_6
    if-ne v0, p2, :cond_7

    iget v0, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataSize:I

    iget v1, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroidx/recyclerview/widget/SortedList;->mOldData:[Ljava/lang/Object;

    iget v3, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    iget-object v4, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    iget v5, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    invoke-static {v1, v3, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    goto :goto_2

    :cond_7
    iget-object v1, p0, Landroidx/recyclerview/widget/SortedList;->mOldData:[Ljava/lang/Object;

    iget v4, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    aget-object v1, v1, v4

    aget-object v4, p1, v0

    iget-object v5, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v5, v1, v4}, Landroidx/recyclerview/widget/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_8

    iget-object v1, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    iget v5, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    aput-object v4, v1, v5

    iget v1, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    iget v4, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4, v3}, Landroidx/recyclerview/widget/SortedList$Callback;->onInserted(II)V

    goto :goto_1

    :cond_8
    if-nez v5, :cond_9

    iget-object v5, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v5, v1, v4}, Landroidx/recyclerview/widget/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    iget v6, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    aput-object v4, v5, v6

    add-int/lit8 v0, v0, 0x1

    iget v5, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    iget-object v5, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v5, v1, v4}, Landroidx/recyclerview/widget/SortedList$Callback;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    iget v6, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    add-int/lit8 v6, v6, -0x1

    iget-object v7, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v7, v1, v4}, Landroidx/recyclerview/widget/SortedList$Callback;->getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v5, v6, v3, v1}, Landroidx/recyclerview/widget/SortedList$Callback;->onChanged(IILjava/lang/Object;)V

    goto/16 :goto_1

    :cond_9
    iget-object v4, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    iget v5, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    aput-object v1, v4, v5

    iget v1, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    goto/16 :goto_1
.end method

.method private remove(Ljava/lang/Object;Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)Z"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v2, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    iget v4, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroidx/recyclerview/widget/SortedList;->findIndexOf(Ljava/lang/Object;[Ljava/lang/Object;III)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return v3

    :cond_0
    invoke-direct {p0, v0, p2}, Landroidx/recyclerview/widget/SortedList;->removeItemAtIndex(IZ)V

    const/4 v3, 0x1

    goto :goto_0
.end method

.method private removeItemAtIndex(IZ)V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    iget v3, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    iget v1, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/SortedList$Callback;->onRemoved(II)V

    :cond_0
    return-void
.end method

.method private replaceAllInsert(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    iget v1, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    aput-object p1, v0, v1

    iget v0, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    iget v0, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    iget v1, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/SortedList$Callback;->onInserted(II)V

    return-void
.end method

.method private replaceAllInternal([Ljava/lang/Object;)V
    .locals 8
    .param p1    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    instance-of v1, v1, Landroidx/recyclerview/widget/SortedList$BatchedCallback;

    if-nez v1, :cond_5

    move v1, v2

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/SortedList;->beginBatchedUpdates()V

    :cond_0
    iput v0, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    iget v3, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    iput v3, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataSize:I

    iget-object v3, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    iput-object v3, p0, Landroidx/recyclerview/widget/SortedList;->mOldData:[Ljava/lang/Object;

    iput v0, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/SortedList;->sortAndDedup([Ljava/lang/Object;)I

    move-result v3

    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mTClass:Ljava/lang/Class;

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    :cond_1
    :goto_1
    iget v0, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    if-lt v0, v3, :cond_2

    iget v0, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    iget v4, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataSize:I

    if-ge v0, v4, :cond_3

    :cond_2
    iget v0, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    iget v4, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataSize:I

    if-lt v0, v4, :cond_6

    iget v0, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    iget v2, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    sub-int v2, v3, v2

    iget-object v3, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    invoke-static {p1, v0, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    add-int/2addr v3, v2

    iput v3, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    iget v3, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    add-int/2addr v3, v2

    iput v3, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    iget-object v3, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v3, v0, v2}, Landroidx/recyclerview/widget/SortedList$Callback;->onInserted(II)V

    :cond_3
    :goto_2
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mOldData:[Ljava/lang/Object;

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/SortedList;->endBatchedUpdates()V

    :cond_4
    return-void

    :cond_5
    move v1, v0

    goto :goto_0

    :cond_6
    iget v0, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    if-lt v0, v3, :cond_7

    iget v0, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataSize:I

    iget v2, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    sub-int/2addr v0, v2

    iget v2, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    sub-int/2addr v2, v0

    iput v2, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    iget-object v2, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    iget v3, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    invoke-virtual {v2, v3, v0}, Landroidx/recyclerview/widget/SortedList$Callback;->onRemoved(II)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mOldData:[Ljava/lang/Object;

    iget v4, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    aget-object v0, v0, v4

    iget v4, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    aget-object v4, p1, v4

    iget-object v5, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v5, v0, v4}, Landroidx/recyclerview/widget/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_8

    invoke-direct {p0}, Landroidx/recyclerview/widget/SortedList;->replaceAllRemove()V

    goto :goto_1

    :cond_8
    if-lez v5, :cond_9

    invoke-direct {p0, v4}, Landroidx/recyclerview/widget/SortedList;->replaceAllInsert(Ljava/lang/Object;)V

    goto :goto_1

    :cond_9
    iget-object v5, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v5, v0, v4}, Landroidx/recyclerview/widget/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-direct {p0}, Landroidx/recyclerview/widget/SortedList;->replaceAllRemove()V

    invoke-direct {p0, v4}, Landroidx/recyclerview/widget/SortedList;->replaceAllInsert(Ljava/lang/Object;)V

    goto :goto_1

    :cond_a
    iget-object v5, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    iget v6, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    aput-object v4, v5, v6

    iget v5, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    iget v5, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    iget-object v5, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v5, v0, v4}, Landroidx/recyclerview/widget/SortedList$Callback;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    iget v6, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    add-int/lit8 v6, v6, -0x1

    iget-object v7, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v7, v0, v4}, Landroidx/recyclerview/widget/SortedList$Callback;->getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v6, v2, v0}, Landroidx/recyclerview/widget/SortedList$Callback;->onChanged(IILjava/lang/Object;)V

    goto/16 :goto_1
.end method

.method private replaceAllRemove()V
    .locals 3

    iget v0, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    iget v0, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    iget v1, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/SortedList$Callback;->onRemoved(II)V

    return-void
.end method

.method private sortAndDedup([Ljava/lang/Object;)I
    .locals 6
    .param p1    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)I"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    array-length v2, p1

    if-nez v2, :cond_1

    :cond_0
    return v0

    :cond_1
    iget-object v2, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    invoke-static {p1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    move v2, v0

    move v0, v1

    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    aget-object v3, p1, v1

    iget-object v4, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    aget-object v5, p1, v2

    invoke-virtual {v4, v5, v3}, Landroidx/recyclerview/widget/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-nez v4, :cond_4

    invoke-direct {p0, v3, p1, v2, v0}, Landroidx/recyclerview/widget/SortedList;->findSameItem(Ljava/lang/Object;[Ljava/lang/Object;II)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    aput-object v3, p1, v4

    move v3, v2

    move v2, v0

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    move v2, v3

    goto :goto_0

    :cond_2
    if-eq v0, v1, :cond_3

    aput-object v3, p1, v0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    move v3, v2

    move v2, v0

    goto :goto_1

    :cond_4
    if-eq v0, v1, :cond_5

    aput-object v3, p1, v0

    :cond_5
    add-int/lit8 v2, v0, 0x1

    move v3, v0

    goto :goto_1
.end method

.method private throwIfInMutationOperation()V
    .locals 6

    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mOldData:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x5e

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "cce080"

    const-wide v4, 0x419f7950ac000000L    # 1.32011051E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void

    nop

    :array_0
    .array-data 1
        0x27t
        0x2t
        0x11t
        0x51t
        0x18t
        0x53t
        0x2t
        0xdt
        0xbt
        0x5ft
        0x4ct
        0x10t
        0x1t
        0x6t
        0x45t
        0x5dt
        0x4dt
        0x44t
        0x2t
        0x17t
        0x0t
        0x54t
        0x18t
        0x59t
        0xdt
        0x43t
        0x11t
        0x58t
        0x5dt
        0x10t
        0xet
        0xat
        0x1t
        0x54t
        0x54t
        0x55t
        0x43t
        0xct
        0x3t
        0x10t
        0x59t
        0x10t
        0x1t
        0x2t
        0x11t
        0x53t
        0x50t
        0x10t
        0x16t
        0x13t
        0x1t
        0x51t
        0x4ct
        0x55t
        0x43t
        0xct
        0x15t
        0x55t
        0x4at
        0x51t
        0x17t
        0xat
        0xat
        0x5et
        0x18t
        0x43t
        0x16t
        0x0t
        0xdt
        0x10t
        0x59t
        0x43t
        0x43t
        0x2t
        0x1t
        0x54t
        0x79t
        0x5ct
        0xft
        0x43t
        0xat
        0x42t
        0x18t
        0x42t
        0x6t
        0x13t
        0x9t
        0x51t
        0x5bt
        0x55t
        0x22t
        0xft
        0x9t
        0x1et
    .end array-data
.end method


# virtual methods
.method public add(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/SortedList;->throwIfInMutationOperation()V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/SortedList;->add(Ljava/lang/Object;Z)I

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)V
    .locals 2
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mTClass:Ljava/lang/Class;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/SortedList;->addAll([Ljava/lang/Object;Z)V

    return-void
.end method

.method public varargs addAll([Ljava/lang/Object;)V
    .locals 1
    .param p1    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/SortedList;->addAll([Ljava/lang/Object;Z)V

    return-void
.end method

.method public addAll([Ljava/lang/Object;Z)V
    .locals 1
    .param p1    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/SortedList;->throwIfInMutationOperation()V

    array-length v0, p1

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/SortedList;->addAllInternal([Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/SortedList;->copyArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/SortedList;->addAllInternal([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public beginBatchedUpdates()V
    .locals 2

    invoke-direct {p0}, Landroidx/recyclerview/widget/SortedList;->throwIfInMutationOperation()V

    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    instance-of v0, v0, Landroidx/recyclerview/widget/SortedList$BatchedCallback;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mBatchedCallback:Landroidx/recyclerview/widget/SortedList$BatchedCallback;

    if-nez v0, :cond_1

    new-instance v0, Landroidx/recyclerview/widget/SortedList$BatchedCallback;

    iget-object v1, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/SortedList$BatchedCallback;-><init>(Landroidx/recyclerview/widget/SortedList$Callback;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mBatchedCallback:Landroidx/recyclerview/widget/SortedList$BatchedCallback;

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mBatchedCallback:Landroidx/recyclerview/widget/SortedList$BatchedCallback;

    iput-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    goto :goto_0
.end method

.method public clear()V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Landroidx/recyclerview/widget/SortedList;->throwIfInMutationOperation()V

    iget v0, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    iget-object v1, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v1, v3, v0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iput v3, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    iget-object v1, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v1, v3, v0}, Landroidx/recyclerview/widget/SortedList$Callback;->onRemoved(II)V

    goto :goto_0
.end method

.method public endBatchedUpdates()V
    .locals 2

    invoke-direct {p0}, Landroidx/recyclerview/widget/SortedList;->throwIfInMutationOperation()V

    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    instance-of v0, v0, Landroidx/recyclerview/widget/SortedList$BatchedCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    check-cast v0, Landroidx/recyclerview/widget/SortedList$BatchedCallback;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/SortedList$BatchedCallback;->dispatchLastEvent()V

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    iget-object v1, p0, Landroidx/recyclerview/widget/SortedList;->mBatchedCallback:Landroidx/recyclerview/widget/SortedList$BatchedCallback;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mBatchedCallback:Landroidx/recyclerview/widget/SortedList$BatchedCallback;

    iget-object v0, v0, Landroidx/recyclerview/widget/SortedList$BatchedCallback;->mWrappedCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    iput-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    :cond_1
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    iget v0, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x15

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "90c157"

    const-wide/32 v4, 0x6e1696f4

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xd

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "575590"

    const-wide/32 v4, 0x2d3664d2

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mOldData:[Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget v0, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    if-lt p1, v0, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mOldData:[Ljava/lang/Object;

    iget v1, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    sub-int v1, p1, v1

    iget v2, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    add-int/2addr v1, v2

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    aget-object v0, v0, p1

    goto :goto_0

    :array_0
    .array-data 1
        0x78t
        0x43t
        0x8t
        0x54t
        0x51t
        0x17t
        0x4dt
        0x5ft
        0x43t
        0x56t
        0x50t
        0x43t
        0x19t
        0x59t
        0x17t
        0x54t
        0x58t
        0x17t
        0x58t
        0x44t
        0x43t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x15t
        0x55t
        0x40t
        0x41t
        0x19t
        0x43t
        0x5ct
        0x4dt
        0x50t
        0x15t
        0x50t
        0x43t
        0x15t
    .end array-data
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v5, 0x4

    const/4 v6, -0x1

    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mOldData:[Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v2, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    iget v4, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroidx/recyclerview/widget/SortedList;->findIndexOf(Ljava/lang/Object;[Ljava/lang/Object;III)I

    move-result v0

    if-eq v0, v6, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Landroidx/recyclerview/widget/SortedList;->mOldData:[Ljava/lang/Object;

    iget v3, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    iget v4, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataSize:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroidx/recyclerview/widget/SortedList;->findIndexOf(Ljava/lang/Object;[Ljava/lang/Object;III)I

    move-result v0

    if-eq v0, v6, :cond_1

    iget v1, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    move v0, v6

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    iget v4, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroidx/recyclerview/widget/SortedList;->findIndexOf(Ljava/lang/Object;[Ljava/lang/Object;III)I

    move-result v0

    goto :goto_0
.end method

.method public recalculatePositionOfItemAt(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroidx/recyclerview/widget/SortedList;->throwIfInMutationOperation()V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v1}, Landroidx/recyclerview/widget/SortedList;->removeItemAtIndex(IZ)V

    invoke-direct {p0, v0, v1}, Landroidx/recyclerview/widget/SortedList;->add(Ljava/lang/Object;Z)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v1, p1, v0}, Landroidx/recyclerview/widget/SortedList$Callback;->onMoved(II)V

    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/SortedList;->throwIfInMutationOperation()V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/SortedList;->remove(Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method public removeItemAt(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/SortedList;->throwIfInMutationOperation()V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroidx/recyclerview/widget/SortedList;->removeItemAtIndex(IZ)V

    return-object v0
.end method

.method public replaceAll(Ljava/util/Collection;)V
    .locals 2
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mTClass:Ljava/lang/Class;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/SortedList;->replaceAll([Ljava/lang/Object;Z)V

    return-void
.end method

.method public varargs replaceAll([Ljava/lang/Object;)V
    .locals 1
    .param p1    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/SortedList;->replaceAll([Ljava/lang/Object;Z)V

    return-void
.end method

.method public replaceAll([Ljava/lang/Object;Z)V
    .locals 1
    .param p1    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/SortedList;->throwIfInMutationOperation()V

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/SortedList;->replaceAllInternal([Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/SortedList;->copyArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/SortedList;->replaceAllInternal([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    return v0
.end method

.method public updateItemAt(ILjava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroidx/recyclerview/widget/SortedList;->throwIfInMutationOperation()V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, p2, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v0, v3, p2}, Landroidx/recyclerview/widget/SortedList$Callback;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    if-eq v3, p2, :cond_3

    iget-object v4, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v4, v3, p2}, Landroidx/recyclerview/widget/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-nez v4, :cond_3

    iget-object v1, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    aput-object p2, v1, p1

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    iget-object v1, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v1, v3, p2}, Landroidx/recyclerview/widget/SortedList$Callback;->getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v2, v1}, Landroidx/recyclerview/widget/SortedList$Callback;->onChanged(IILjava/lang/Object;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    iget-object v4, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v4, v3, p2}, Landroidx/recyclerview/widget/SortedList$Callback;->getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, p1, v2, v3}, Landroidx/recyclerview/widget/SortedList$Callback;->onChanged(IILjava/lang/Object;)V

    :cond_4
    invoke-direct {p0, p1, v1}, Landroidx/recyclerview/widget/SortedList;->removeItemAtIndex(IZ)V

    invoke-direct {p0, p2, v1}, Landroidx/recyclerview/widget/SortedList;->add(Ljava/lang/Object;Z)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v1, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v1, p1, v0}, Landroidx/recyclerview/widget/SortedList$Callback;->onMoved(II)V

    goto :goto_1
.end method
