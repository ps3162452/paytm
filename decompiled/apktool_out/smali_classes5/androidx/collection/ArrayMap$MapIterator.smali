.class final Landroidx/collection/ArrayMap$MapIterator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/collection/ArrayMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field mEnd:I

.field mEntryValid:Z

.field mIndex:I

.field final this$0:Landroidx/collection/ArrayMap;


# direct methods
.method constructor <init>(Landroidx/collection/ArrayMap;)V
    .locals 1

    iput-object p1, p0, Landroidx/collection/ArrayMap$MapIterator;->this$0:Landroidx/collection/ArrayMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroidx/collection/ArrayMap;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/collection/ArrayMap$MapIterator;->mEnd:I

    const/4 v0, -0x1

    iput v0, p0, Landroidx/collection/ArrayMap$MapIterator;->mIndex:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Landroidx/collection/ArrayMap$MapIterator;->mEntryValid:Z

    if-eqz v2, :cond_1

    instance-of v2, p1, Ljava/util/Map$Entry;

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Landroidx/collection/ArrayMap$MapIterator;->this$0:Landroidx/collection/ArrayMap;

    iget v4, p0, Landroidx/collection/ArrayMap$MapIterator;->mIndex:I

    invoke-virtual {v3, v4}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/collection/ContainerHelpers;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Landroidx/collection/ArrayMap$MapIterator;->this$0:Landroidx/collection/ArrayMap;

    iget v4, p0, Landroidx/collection/ArrayMap$MapIterator;->mIndex:I

    invoke-virtual {v3, v4}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/collection/ContainerHelpers;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const/16 v2, 0x3b

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "b0d773"

    invoke-static {v2, v3, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    move v0, v1

    goto :goto_1

    :array_0
    .array-data 1
        0x36t
        0x58t
        0xdt
        0x44t
        0x17t
        0x50t
        0xdt
        0x5et
        0x10t
        0x56t
        0x5et
        0x5dt
        0x7t
        0x42t
        0x44t
        0x53t
        0x58t
        0x56t
        0x11t
        0x10t
        0xat
        0x58t
        0x43t
        0x13t
        0x11t
        0x45t
        0x14t
        0x47t
        0x58t
        0x41t
        0x16t
        0x10t
        0x16t
        0x52t
        0x43t
        0x52t
        0xbt
        0x5et
        0xdt
        0x59t
        0x50t
        0x13t
        0x2ft
        0x51t
        0x14t
        0x19t
        0x72t
        0x5dt
        0x16t
        0x42t
        0x1dt
        0x17t
        0x58t
        0x51t
        0x8t
        0x55t
        0x7t
        0x43t
        0x44t
    .end array-data
.end method

.method public getKey()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-boolean v0, p0, Landroidx/collection/ArrayMap$MapIterator;->mEntryValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/collection/ArrayMap$MapIterator;->this$0:Landroidx/collection/ArrayMap;

    iget v1, p0, Landroidx/collection/ArrayMap$MapIterator;->mIndex:I

    invoke-virtual {v0, v1}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x3b

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "59b3f1"

    const-wide v4, -0x3e3109dada800000L    # -1.038895691E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x61t
        0x51t
        0xbt
        0x40t
        0x46t
        0x52t
        0x5at
        0x57t
        0x16t
        0x52t
        0xft
        0x5ft
        0x50t
        0x4bt
        0x42t
        0x57t
        0x9t
        0x54t
        0x46t
        0x19t
        0xct
        0x5ct
        0x12t
        0x11t
        0x46t
        0x4ct
        0x12t
        0x43t
        0x9t
        0x43t
        0x41t
        0x19t
        0x10t
        0x56t
        0x12t
        0x50t
        0x5ct
        0x57t
        0xbt
        0x5dt
        0x1t
        0x11t
        0x78t
        0x58t
        0x12t
        0x1dt
        0x23t
        0x5ft
        0x41t
        0x4bt
        0x1bt
        0x13t
        0x9t
        0x53t
        0x5ft
        0x5ct
        0x1t
        0x47t
        0x15t
    .end array-data
.end method

.method public getValue()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-boolean v0, p0, Landroidx/collection/ArrayMap$MapIterator;->mEntryValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/collection/ArrayMap$MapIterator;->this$0:Landroidx/collection/ArrayMap;

    iget v1, p0, Landroidx/collection/ArrayMap$MapIterator;->mIndex:I

    invoke-virtual {v0, v1}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x3b

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "fd31f4"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x32t
        0xct
        0x5at
        0x42t
        0x46t
        0x57t
        0x9t
        0xat
        0x47t
        0x50t
        0xft
        0x5at
        0x3t
        0x16t
        0x13t
        0x55t
        0x9t
        0x51t
        0x15t
        0x44t
        0x5dt
        0x5et
        0x12t
        0x14t
        0x15t
        0x11t
        0x43t
        0x41t
        0x9t
        0x46t
        0x12t
        0x44t
        0x41t
        0x54t
        0x12t
        0x55t
        0xft
        0xat
        0x5at
        0x5ft
        0x1t
        0x14t
        0x2bt
        0x5t
        0x43t
        0x1ft
        0x23t
        0x5at
        0x12t
        0x16t
        0x4at
        0x11t
        0x9t
        0x56t
        0xct
        0x1t
        0x50t
        0x45t
        0x15t
    .end array-data
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, Landroidx/collection/ArrayMap$MapIterator;->mIndex:I

    iget v1, p0, Landroidx/collection/ArrayMap$MapIterator;->mEnd:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    const/4 v0, 0x0

    iget-boolean v1, p0, Landroidx/collection/ArrayMap$MapIterator;->mEntryValid:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/collection/ArrayMap$MapIterator;->this$0:Landroidx/collection/ArrayMap;

    iget v2, p0, Landroidx/collection/ArrayMap$MapIterator;->mIndex:I

    invoke-virtual {v1, v2}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Landroidx/collection/ArrayMap$MapIterator;->this$0:Landroidx/collection/ArrayMap;

    iget v3, p0, Landroidx/collection/ArrayMap$MapIterator;->mIndex:I

    invoke-virtual {v2, v3}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_0

    move v1, v0

    :goto_0
    if-nez v2, :cond_1

    :goto_1
    xor-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x3b

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "b375e9"

    const-wide/32 v4, 0x58513131

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x36t
        0x5bt
        0x5et
        0x46t
        0x45t
        0x5at
        0xdt
        0x5dt
        0x43t
        0x54t
        0xct
        0x57t
        0x7t
        0x41t
        0x17t
        0x51t
        0xat
        0x5ct
        0x11t
        0x13t
        0x59t
        0x5at
        0x11t
        0x19t
        0x11t
        0x46t
        0x47t
        0x45t
        0xat
        0x4bt
        0x16t
        0x13t
        0x45t
        0x50t
        0x11t
        0x58t
        0xbt
        0x5dt
        0x5et
        0x5bt
        0x2t
        0x19t
        0x2ft
        0x52t
        0x47t
        0x1bt
        0x20t
        0x57t
        0x16t
        0x41t
        0x4et
        0x15t
        0xat
        0x5bt
        0x8t
        0x56t
        0x54t
        0x41t
        0x16t
    .end array-data
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroidx/collection/ArrayMap$MapIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/collection/ArrayMap$MapIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/collection/ArrayMap$MapIterator;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/collection/ArrayMap$MapIterator;->mIndex:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/collection/ArrayMap$MapIterator;->mEntryValid:Z

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    iget-boolean v0, p0, Landroidx/collection/ArrayMap$MapIterator;->mEntryValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/collection/ArrayMap$MapIterator;->this$0:Landroidx/collection/ArrayMap;

    iget v1, p0, Landroidx/collection/ArrayMap$MapIterator;->mIndex:I

    invoke-virtual {v0, v1}, Landroidx/collection/ArrayMap;->removeAt(I)Ljava/lang/Object;

    iget v0, p0, Landroidx/collection/ArrayMap$MapIterator;->mIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/collection/ArrayMap$MapIterator;->mIndex:I

    iget v0, p0, Landroidx/collection/ArrayMap$MapIterator;->mEnd:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/collection/ArrayMap$MapIterator;->mEnd:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/collection/ArrayMap$MapIterator;->mEntryValid:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    iget-boolean v0, p0, Landroidx/collection/ArrayMap$MapIterator;->mEntryValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/collection/ArrayMap$MapIterator;->this$0:Landroidx/collection/ArrayMap;

    iget v1, p0, Landroidx/collection/ArrayMap$MapIterator;->mIndex:I

    invoke-virtual {v0, v1, p1}, Landroidx/collection/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x3b

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "e2e0d5"

    const-wide v4, 0x41d22c5e0b800000L    # 1.21959019E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x31t
        0x5at
        0xct
        0x43t
        0x44t
        0x56t
        0xat
        0x5ct
        0x11t
        0x51t
        0xdt
        0x5bt
        0x0t
        0x40t
        0x45t
        0x54t
        0xbt
        0x50t
        0x16t
        0x12t
        0xbt
        0x5ft
        0x10t
        0x15t
        0x16t
        0x47t
        0x15t
        0x40t
        0xbt
        0x47t
        0x11t
        0x12t
        0x17t
        0x55t
        0x10t
        0x54t
        0xct
        0x5ct
        0xct
        0x5et
        0x3t
        0x15t
        0x28t
        0x53t
        0x15t
        0x1et
        0x21t
        0x5bt
        0x11t
        0x40t
        0x1ct
        0x10t
        0xbt
        0x57t
        0xft
        0x57t
        0x6t
        0x44t
        0x17t
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/collection/ArrayMap$MapIterator;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/16 v3, 0xe

    aput-byte v3, v1, v2

    const-string v2, "39a887"

    const-wide/32 v4, -0x45fa15dc

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/collection/ArrayMap$MapIterator;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
