.class public Lcom/google/android/gms/common/data/DataBufferIterator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected final zaa:Lcom/google/android/gms/common/data/DataBuffer;

.field protected zab:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataBuffer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/data/DataBuffer;

    iput-object v0, p0, Lcom/google/android/gms/common/data/DataBufferIterator;->zaa:Lcom/google/android/gms/common/data/DataBuffer;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/common/data/DataBufferIterator;->zab:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/common/data/DataBufferIterator;->zab:I

    iget-object v1, p0, Lcom/google/android/gms/common/data/DataBufferIterator;->zaa:Lcom/google/android/gms/common/data/DataBuffer;

    invoke-interface {v1}, Lcom/google/android/gms/common/data/DataBuffer;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataBufferIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataBufferIterator;->zaa:Lcom/google/android/gms/common/data/DataBuffer;

    iget v1, p0, Lcom/google/android/gms/common/data/DataBufferIterator;->zab:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/common/data/DataBufferIterator;->zab:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/data/DataBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/common/data/DataBufferIterator;->zab:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x23

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "301c82"

    const/16 v4, -0x33fb

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x70t
        0x51t
        0x5ft
        0xdt
        0x57t
        0x46t
        0x13t
        0x51t
        0x55t
        0x15t
        0x59t
        0x5ct
        0x50t
        0x55t
        0x11t
        0x17t
        0x50t
        0x57t
        0x13t
        0x59t
        0x45t
        0x6t
        0x4at
        0x53t
        0x47t
        0x5ft
        0x43t
        0x43t
        0x5at
        0x57t
        0x4at
        0x5ft
        0x5ft
        0x7t
        0x18t
    .end array-data
.end method

.method public final remove()V
    .locals 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x30

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "0a4a80"

    const/16 v3, 0x6abc

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x73t
        0x0t
        0x5at
        0xft
        0x57t
        0x44t
        0x10t
        0x13t
        0x51t
        0xct
        0x57t
        0x46t
        0x55t
        0x41t
        0x51t
        0xdt
        0x5dt
        0x5dt
        0x55t
        0xft
        0x40t
        0x12t
        0x18t
        0x56t
        0x42t
        0xet
        0x59t
        0x41t
        0x59t
        0x10t
        0x74t
        0x0t
        0x40t
        0x0t
        0x7at
        0x45t
        0x56t
        0x7t
        0x51t
        0x13t
        0x71t
        0x44t
        0x55t
        0x13t
        0x55t
        0x15t
        0x57t
        0x42t
    .end array-data
.end method
