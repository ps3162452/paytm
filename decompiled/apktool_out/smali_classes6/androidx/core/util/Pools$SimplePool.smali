.class public Landroidx/core/util/Pools$SimplePool;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/core/util/Pools$Pool;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/util/Pools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimplePool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/core/util/Pools$Pool",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mPool:[Ljava/lang/Object;

.field private mPoolSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_0

    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Landroidx/core/util/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x1d

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "8baaf8"

    const-wide/32 v4, -0x5430b771

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x6ct
        0xat
        0x4t
        0x41t
        0xbt
        0x59t
        0x40t
        0x42t
        0x11t
        0xet
        0x9t
        0x54t
        0x18t
        0x11t
        0x8t
        0x1bt
        0x3t
        0x18t
        0x55t
        0x17t
        0x12t
        0x15t
        0x46t
        0x5at
        0x5dt
        0x42t
        0x5ft
        0x41t
        0x56t
    .end array-data
.end method

.method private isInPool(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget v2, p0, Landroidx/core/util/Pools$SimplePool;->mPoolSize:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Landroidx/core/util/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    aget-object v2, v2, v0

    if-ne v2, p1, :cond_1

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public acquire()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v1, 0x0

    iget v2, p0, Landroidx/core/util/Pools$SimplePool;->mPoolSize:I

    if-lez v2, :cond_0

    add-int/lit8 v3, v2, -0x1

    iget-object v4, p0, Landroidx/core/util/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    aget-object v0, v4, v3

    aput-object v1, v4, v3

    add-int/lit8 v1, v2, -0x1

    iput v1, p0, Landroidx/core/util/Pools$SimplePool;->mPoolSize:I

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public release(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroidx/core/util/Pools$SimplePool;->isInPool(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Landroidx/core/util/Pools$SimplePool;->mPoolSize:I

    iget-object v1, p0, Landroidx/core/util/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aput-object p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/core/util/Pools$SimplePool;->mPoolSize:I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x14

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "b967a9"

    const/16 v3, -0x65c5

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x23t
        0x55t
        0x44t
        0x52t
        0x0t
        0x5dt
        0x1bt
        0x19t
        0x5ft
        0x59t
        0x41t
        0x4dt
        0xat
        0x5ct
        0x16t
        0x47t
        0xet
        0x56t
        0xet
        0x18t
    .end array-data
.end method
