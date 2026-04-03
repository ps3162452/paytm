.class public Landroidx/collection/SimpleArrayMap;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final BASE_SIZE:I = 0x4

.field private static final CACHE_SIZE:I = 0xa

.field private static final CONCURRENT_MODIFICATION_EXCEPTIONS:Z = true

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field static mBaseCache:[Ljava/lang/Object;

.field static mBaseCacheSize:I

.field static mTwiceBaseCache:[Ljava/lang/Object;

.field static mTwiceBaseCacheSize:I


# instance fields
.field mArray:[Ljava/lang/Object;

.field mHashes:[I

.field mSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "c41afd"

    const-wide v2, -0x3e2c88e1b1400000L    # -1.306294587E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/collection/SimpleArrayMap;->TAG:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x22t
        0x46t
        0x43t
        0x0t
        0x1ft
        0x29t
        0x2t
        0x44t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroidx/collection/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v0, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    sget-object v0, Landroidx/collection/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    sget-object v0, Landroidx/collection/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v0, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    sget-object v0, Landroidx/collection/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    return-void

    :cond_0
    invoke-direct {p0, p1}, Landroidx/collection/SimpleArrayMap;->allocArrays(I)V

    goto :goto_0
.end method

.method public constructor <init>(Landroidx/collection/SimpleArrayMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/SimpleArrayMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->putAll(Landroidx/collection/SimpleArrayMap;)V

    :cond_0
    return-void
.end method

.method private allocArrays(I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    const-class v0, Landroidx/collection/SimpleArrayMap;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroidx/collection/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    if-eqz v1, :cond_0

    iput-object v1, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    check-cast v0, [Ljava/lang/Object;

    sput-object v0, Landroidx/collection/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    check-cast v0, [I

    iput-object v0, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    aput-object v4, v1, v3

    aput-object v4, v1, v2

    :try_start_1
    sget v0, Landroidx/collection/SimpleArrayMap;->mTwiceBaseCacheSize:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Landroidx/collection/SimpleArrayMap;->mTwiceBaseCacheSize:I

    const-class v0, Landroidx/collection/SimpleArrayMap;

    monitor-exit v0

    :goto_0
    return-void

    :cond_0
    const-class v0, Landroidx/collection/SimpleArrayMap;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_1
    new-array v0, p1, [I

    iput-object v0, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    shl-int/lit8 v0, p1, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    const-class v1, Landroidx/collection/SimpleArrayMap;

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const-class v0, Landroidx/collection/SimpleArrayMap;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroidx/collection/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    if-eqz v1, :cond_3

    iput-object v1, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    check-cast v0, [Ljava/lang/Object;

    sput-object v0, Landroidx/collection/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    check-cast v0, [I

    iput-object v0, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    aput-object v4, v1, v3

    aput-object v4, v1, v2

    :try_start_4
    sget v0, Landroidx/collection/SimpleArrayMap;->mBaseCacheSize:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Landroidx/collection/SimpleArrayMap;->mBaseCacheSize:I

    const-class v0, Landroidx/collection/SimpleArrayMap;

    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception v0

    const-class v1, Landroidx/collection/SimpleArrayMap;

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_3
    :try_start_5
    const-class v0, Landroidx/collection/SimpleArrayMap;

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1
.end method

.method private static binarySearchHashes([III)I
    .locals 1

    :try_start_0
    invoke-static {p0, p1, p2}, Landroidx/collection/ContainerHelpers;->binarySearch([III)I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method private static freeArrays([I[Ljava/lang/Object;I)V
    .locals 6

    const/4 v5, 0x0

    const/16 v4, 0xa

    const/4 v3, 0x2

    const/4 v2, 0x1

    array-length v0, p0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    const-class v0, Landroidx/collection/SimpleArrayMap;

    monitor-enter v0

    :try_start_0
    sget v0, Landroidx/collection/SimpleArrayMap;->mTwiceBaseCacheSize:I

    if-ge v0, v4, :cond_1

    const/4 v0, 0x0

    sget-object v1, Landroidx/collection/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    aput-object v1, p1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    aput-object p0, p1, v2

    shl-int/lit8 v0, p2, 0x1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lt v0, v3, :cond_0

    aput-object v5, p1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    :try_start_1
    sput-object p1, Landroidx/collection/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    sget v0, Landroidx/collection/SimpleArrayMap;->mTwiceBaseCacheSize:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroidx/collection/SimpleArrayMap;->mTwiceBaseCacheSize:I

    :cond_1
    const-class v0, Landroidx/collection/SimpleArrayMap;

    monitor-exit v0

    :cond_2
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    const-class v1, Landroidx/collection/SimpleArrayMap;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    const-class v0, Landroidx/collection/SimpleArrayMap;

    monitor-enter v0

    :try_start_2
    sget v0, Landroidx/collection/SimpleArrayMap;->mBaseCacheSize:I

    if-ge v0, v4, :cond_5

    const/4 v0, 0x0

    sget-object v1, Landroidx/collection/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    aput-object v1, p1, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    aput-object p0, p1, v2

    shl-int/lit8 v0, p2, 0x1

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-lt v0, v3, :cond_4

    aput-object v5, p1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_4
    :try_start_3
    sput-object p1, Landroidx/collection/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    sget v0, Landroidx/collection/SimpleArrayMap;->mBaseCacheSize:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroidx/collection/SimpleArrayMap;->mBaseCacheSize:I

    :cond_5
    const-class v0, Landroidx/collection/SimpleArrayMap;

    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception v0

    const-class v1, Landroidx/collection/SimpleArrayMap;

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method


# virtual methods
.method public clear()V
    .locals 4

    iget v0, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    if-lez v0, :cond_0

    iget-object v0, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    iget-object v1, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    iget v2, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    sget-object v3, Landroidx/collection/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v3, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    sget-object v3, Landroidx/collection/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v3, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    const/4 v3, 0x0

    iput v3, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    invoke-static {v0, v1, v2}, Landroidx/collection/SimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    :cond_0
    iget v0, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    if-gtz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ensureCapacity(I)V
    .locals 6

    const/4 v5, 0x0

    iget v0, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    iget-object v1, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    array-length v1, v1

    if-ge v1, p1, :cond_1

    iget-object v1, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    iget-object v2, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    invoke-direct {p0, p1}, Landroidx/collection/SimpleArrayMap;->allocArrays(I)V

    iget v3, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    if-lez v3, :cond_0

    iget-object v3, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    invoke-static {v1, v5, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v4, v0, 0x1

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    invoke-static {v1, v2, v0}, Landroidx/collection/SimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    :cond_1
    iget v1, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    if-ne v1, v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    instance-of v2, p1, Landroidx/collection/SimpleArrayMap;

    if-eqz v2, :cond_6

    check-cast p1, Landroidx/collection/SimpleArrayMap;

    invoke-virtual {p0}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v2

    invoke-virtual {p1}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_1
    iget v3, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    if-ge v2, v3, :cond_0

    invoke-virtual {p0, v2}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v3}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_4

    if-nez v5, :cond_3

    invoke-virtual {p1, v3}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    instance-of v2, p1, Ljava/util/Map;

    if-eqz v2, :cond_b

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-eq v2, v3, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    move v2, v1

    :goto_2
    iget v3, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    if-ge v2, v3, :cond_0

    invoke-virtual {p0, v2}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_9

    if-nez v5, :cond_8

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    :cond_8
    move v0, v1

    goto :goto_0

    :cond_9
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_a

    move v0, v1

    goto :goto_0

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    :cond_b
    :goto_3
    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/collection/SimpleArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;)TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    aget-object p2, v1, v0

    :cond_0
    return-object p2
.end method

.method public hashCode()I
    .locals 9

    const/4 v1, 0x0

    iget-object v5, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    iget-object v6, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    const/4 v0, 0x1

    iget v7, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    move v2, v0

    move v3, v1

    move v4, v1

    :goto_0
    if-ge v3, v7, :cond_1

    aget-object v0, v6, v2

    aget v8, v5, v3

    if-nez v0, :cond_0

    move v0, v1

    :goto_1
    xor-int/2addr v0, v8

    add-int/2addr v4, v0

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v2, 0x2

    move v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_1
    return v4
.end method

.method indexOf(Ljava/lang/Object;I)I
    .locals 5

    iget v2, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    if-nez v2, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    invoke-static {v0, v2, p2}, Landroidx/collection/SimpleArrayMap;->binarySearchHashes([III)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v3, v0, 0x1

    aget-object v1, v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    :goto_1
    if-ge v1, v2, :cond_3

    iget-object v3, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    aget v3, v3, v1

    if-ne v3, p2, :cond_3

    iget-object v3, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_4

    iget-object v2, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    aget v2, v2, v0

    if-ne v2, p2, :cond_4

    iget-object v2, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_4
    xor-int/lit8 v0, v1, -0x1

    goto :goto_0
.end method

.method public indexOfKey(Ljava/lang/Object;)I
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/collection/SimpleArrayMap;->indexOfNull()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/collection/SimpleArrayMap;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    goto :goto_0
.end method

.method indexOfNull()I
    .locals 5

    iget v2, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    if-nez v2, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Landroidx/collection/SimpleArrayMap;->binarySearchHashes([III)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v3, v0, 0x1

    aget-object v1, v1, v3

    if-eqz v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    :goto_1
    if-ge v1, v2, :cond_3

    iget-object v3, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    aget v3, v3, v1

    if-nez v3, :cond_3

    iget-object v3, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    if-nez v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_4

    iget-object v2, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    aget v2, v2, v0

    if-nez v2, :cond_4

    iget-object v2, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_4
    xor-int/lit8 v0, v1, -0x1

    goto :goto_0
.end method

.method indexOfValue(Ljava/lang/Object;)I
    .locals 4

    const/4 v0, 0x1

    iget v1, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    mul-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    if-nez p1, :cond_2

    :goto_0
    if-ge v0, v1, :cond_3

    aget-object v3, v2, v0

    if-nez v3, :cond_0

    shr-int/lit8 v0, v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x2

    :cond_2
    if-ge v0, v1, :cond_3

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    shr-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keyAt(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    const/16 v0, 0x8

    const/4 v1, 0x4

    const/4 v4, 0x0

    iget v5, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/collection/SimpleArrayMap;->indexOfNull()I

    move-result v2

    move v3, v4

    :goto_0
    if-ltz v2, :cond_1

    shl-int/lit8 v0, v2, 0x1

    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    aget-object v0, v2, v1

    aput-object p2, v2, v1

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {p0, p1, v3}, Landroidx/collection/SimpleArrayMap;->indexOf(Ljava/lang/Object;I)I

    move-result v2

    goto :goto_0

    :cond_1
    xor-int/lit8 v2, v2, -0x1

    iget-object v6, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    array-length v6, v6

    if-lt v5, v6, :cond_4

    if-lt v5, v0, :cond_6

    shr-int/lit8 v0, v5, 0x1

    add-int/2addr v0, v5

    :cond_2
    :goto_2
    iget-object v1, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    iget-object v6, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroidx/collection/SimpleArrayMap;->allocArrays(I)V

    iget v0, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    if-ne v5, v0, :cond_7

    iget-object v0, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    array-length v7, v0

    if-lez v7, :cond_3

    array-length v7, v1

    invoke-static {v1, v4, v0, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    array-length v7, v6

    invoke-static {v6, v4, v0, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    invoke-static {v1, v6, v5}, Landroidx/collection/SimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    :cond_4
    if-ge v2, v5, :cond_5

    iget-object v0, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    add-int/lit8 v1, v2, 0x1

    sub-int v4, v5, v2

    invoke-static {v0, v2, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v1, v2, 0x1

    add-int/lit8 v4, v2, 0x1

    shl-int/lit8 v4, v4, 0x1

    iget v6, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    sub-int/2addr v6, v2

    shl-int/lit8 v6, v6, 0x1

    invoke-static {v0, v1, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    iget v0, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    if-ne v5, v0, :cond_8

    iget-object v1, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    array-length v4, v1

    if-ge v2, v4, :cond_8

    aput v3, v1, v2

    iget-object v1, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v3, v2, 0x1

    aput-object p1, v1, v3

    shl-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    aput-object p2, v1, v2

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    if-ge v5, v1, :cond_2

    move v0, v1

    goto :goto_2

    :cond_7
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_8
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public putAll(Landroidx/collection/SimpleArrayMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/SimpleArrayMap",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iget v1, p1, Landroidx/collection/SimpleArrayMap;->mSize:I

    iget v2, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Landroidx/collection/SimpleArrayMap;->ensureCapacity(I)V

    iget v2, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    if-nez v2, :cond_1

    if-lez v1, :cond_0

    iget-object v2, p1, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    iget-object v3, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    invoke-static {v2, v0, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p1, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    iget-object v3, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v4, v1, 0x1

    invoke-static {v2, v0, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v1, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    :cond_0
    return-void

    :cond_1
    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v0}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Landroidx/collection/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    if-eq p2, v1, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/collection/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAt(I)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    const/4 v8, 0x0

    const/16 v0, 0x8

    const/4 v7, 0x0

    iget-object v1, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v2, p1, 0x1

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    iget v2, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    const/4 v3, 0x1

    if-gt v2, v3, :cond_0

    invoke-virtual {p0}, Landroidx/collection/SimpleArrayMap;->clear()V

    :goto_0
    return-object v1

    :cond_0
    add-int/lit8 v3, v2, -0x1

    iget-object v4, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    array-length v5, v4

    if-le v5, v0, :cond_5

    array-length v5, v4

    div-int/lit8 v5, v5, 0x3

    if-ge v2, v5, :cond_5

    if-le v2, v0, :cond_1

    shr-int/lit8 v0, v2, 0x1

    add-int/2addr v0, v2

    :cond_1
    iget-object v4, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    iget-object v5, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroidx/collection/SimpleArrayMap;->allocArrays(I)V

    iget v0, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    if-ne v2, v0, :cond_4

    if-lez p1, :cond_2

    iget-object v0, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    invoke-static {v4, v7, v0, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v6, p1, 0x1

    invoke-static {v5, v7, v0, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    if-ge p1, v3, :cond_3

    add-int/lit8 v0, p1, 0x1

    iget-object v6, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    sub-int v7, v3, p1

    invoke-static {v4, v0, v6, p1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, p1, 0x1

    shl-int/lit8 v0, v0, 0x1

    iget-object v4, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v6, p1, 0x1

    sub-int v7, v3, p1

    shl-int/lit8 v7, v7, 0x1

    invoke-static {v5, v0, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_1
    iget v0, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    if-ne v2, v0, :cond_7

    iput v3, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_5
    if-ge p1, v3, :cond_6

    add-int/lit8 v0, p1, 0x1

    sub-int v5, v3, p1

    invoke-static {v4, v0, v4, p1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    add-int/lit8 v4, p1, 0x1

    shl-int/lit8 v4, v4, 0x1

    shl-int/lit8 v5, p1, 0x1

    sub-int v6, v3, p1

    shl-int/lit8 v6, v6, 0x1

    invoke-static {v0, v4, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    iget-object v0, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v4, v3, 0x1

    aput-object v8, v0, v4

    shl-int/lit8 v4, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    aput-object v8, v0, v4

    goto :goto_1

    :cond_7
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0, v0, p2}, Landroidx/collection/SimpleArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p2, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0, v0, p3}, Landroidx/collection/SimpleArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setValueAt(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    shl-int/lit8 v0, p1, 0x1

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    aget-object v2, v1, v0

    aput-object p2, v1, v0

    return-object v2
.end method

.method public size()I
    .locals 1

    iget v0, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    const/16 v8, 0xa

    const/4 v5, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroidx/collection/SimpleArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v5, [B

    fill-array-data v0, :array_0

    const-string v1, "d622d4"

    const v2, 0x4d14f16d    # 1.5617813E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    iget v0, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    mul-int/lit8 v0, v0, 0x1c

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v0, 0x7b

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    :goto_1
    iget v3, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    if-ge v0, v3, :cond_4

    if-lez v0, :cond_1

    new-array v3, v5, [B

    fill-array-data v3, :array_1

    const-string v4, "05960a"

    const-wide v6, 0x41d8418251400000L    # 1.627785541E9

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0, v0}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, p0, :cond_2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_2
    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, p0, :cond_3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-array v3, v8, [B

    fill-array-data v3, :array_2

    const-string v4, "d53004"

    invoke-static {v3, v4, v1, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    new-array v3, v8, [B

    fill-array-data v3, :array_3

    const-string v4, "423ad5"

    const-wide v6, -0x3e243d306bc00000L    # -1.863007825E9

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    const/16 v0, 0x7d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :array_0
    .array-data 1
        0x1ft
        0x4bt
    .end array-data

    nop

    :array_1
    .array-data 1
        0x1ct
        0x15t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x4ct
        0x41t
        0x5bt
        0x59t
        0x43t
        0x14t
        0x29t
        0x54t
        0x43t
        0x19t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x1ct
        0x46t
        0x5bt
        0x8t
        0x17t
        0x15t
        0x79t
        0x53t
        0x43t
        0x48t
    .end array-data
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method
