.class Lcom/google/firebase/database/collection/ArraySortedMap$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/collection/ArraySortedMap;->iterator(IZ)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field currentPos:I

.field final this$0:Lcom/google/firebase/database/collection/ArraySortedMap;

.field final val$pos:I

.field final val$reverse:Z


# direct methods
.method constructor <init>(Lcom/google/firebase/database/collection/ArraySortedMap;IZ)V
    .locals 1

    iput-object p1, p0, Lcom/google/firebase/database/collection/ArraySortedMap$1;->this$0:Lcom/google/firebase/database/collection/ArraySortedMap;

    iput p2, p0, Lcom/google/firebase/database/collection/ArraySortedMap$1;->val$pos:I

    iput-boolean p3, p0, Lcom/google/firebase/database/collection/ArraySortedMap$1;->val$reverse:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p0, Lcom/google/firebase/database/collection/ArraySortedMap$1;->val$pos:I

    iput v0, p0, Lcom/google/firebase/database/collection/ArraySortedMap$1;->currentPos:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/firebase/database/collection/ArraySortedMap$1;->val$reverse:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/google/firebase/database/collection/ArraySortedMap$1;->currentPos:I

    if-ltz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget v2, p0, Lcom/google/firebase/database/collection/ArraySortedMap$1;->currentPos:I

    iget-object v3, p0, Lcom/google/firebase/database/collection/ArraySortedMap$1;->this$0:Lcom/google/firebase/database/collection/ArraySortedMap;

    invoke-static {v3}, Lcom/google/firebase/database/collection/ArraySortedMap;->access$000(Lcom/google/firebase/database/collection/ArraySortedMap;)[Ljava/lang/Object;

    move-result-object v3

    array-length v3, v3

    if-lt v2, v3, :cond_0

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/firebase/database/collection/ArraySortedMap$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/collection/ArraySortedMap$1;->this$0:Lcom/google/firebase/database/collection/ArraySortedMap;

    invoke-static {v0}, Lcom/google/firebase/database/collection/ArraySortedMap;->access$000(Lcom/google/firebase/database/collection/ArraySortedMap;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/google/firebase/database/collection/ArraySortedMap$1;->currentPos:I

    aget-object v1, v0, v1

    iget-object v0, p0, Lcom/google/firebase/database/collection/ArraySortedMap$1;->this$0:Lcom/google/firebase/database/collection/ArraySortedMap;

    invoke-static {v0}, Lcom/google/firebase/database/collection/ArraySortedMap;->access$100(Lcom/google/firebase/database/collection/ArraySortedMap;)[Ljava/lang/Object;

    move-result-object v0

    iget v2, p0, Lcom/google/firebase/database/collection/ArraySortedMap$1;->currentPos:I

    aget-object v2, v0, v2

    iget-boolean v0, p0, Lcom/google/firebase/database/collection/ArraySortedMap$1;->val$reverse:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/firebase/database/collection/ArraySortedMap$1;->currentPos:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iput v0, p0, Lcom/google/firebase/database/collection/ArraySortedMap$1;->currentPos:I

    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v0, v1, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_0
    iget v0, p0, Lcom/google/firebase/database/collection/ArraySortedMap$1;->currentPos:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public remove()V
    .locals 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x2d

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "2d2c4e"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x71t
        0x5t
        0x5ct
        0x44t
        0x40t
        0x45t
        0x40t
        0x1t
        0x5ft
        0xct
        0x42t
        0x0t
        0x12t
        0x1t
        0x5et
        0x6t
        0x59t
        0x0t
        0x5ct
        0x10t
        0x41t
        0x43t
        0x52t
        0x17t
        0x5dt
        0x9t
        0x12t
        0x2at
        0x59t
        0x8t
        0x47t
        0x10t
        0x53t
        0x1t
        0x58t
        0x0t
        0x61t
        0xbt
        0x40t
        0x17t
        0x51t
        0x1t
        0x7ft
        0x5t
        0x42t
    .end array-data
.end method
