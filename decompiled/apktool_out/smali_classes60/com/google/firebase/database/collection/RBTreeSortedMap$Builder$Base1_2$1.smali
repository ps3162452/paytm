.class Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$Base1_2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$Base1_2;->iterator()Ljava/util/Iterator;
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
        "Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$BooleanChunk;",
        ">;"
    }
.end annotation


# instance fields
.field private current:I

.field final this$0:Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$Base1_2;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$Base1_2;)V
    .locals 1

    iput-object p1, p0, Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$Base1_2$1;->this$0:Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$Base1_2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$Base1_2$1;->this$0:Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$Base1_2;

    invoke-static {v0}, Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$Base1_2;->access$000(Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$Base1_2;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$Base1_2$1;->current:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget v0, p0, Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$Base1_2$1;->current:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$BooleanChunk;
    .locals 6

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$Base1_2$1;->this$0:Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$Base1_2;

    invoke-static {v1}, Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$Base1_2;->access$100(Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$Base1_2;)J

    move-result-wide v2

    iget v1, p0, Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$Base1_2$1;->current:I

    shl-int v1, v0, v1

    int-to-long v4, v1

    new-instance v1, Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$BooleanChunk;

    invoke-direct {v1}, Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$BooleanChunk;-><init>()V

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    :goto_0
    iput-boolean v0, v1, Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$BooleanChunk;->isOne:Z

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    iget v0, p0, Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$Base1_2$1;->current:I

    int-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v0, v2

    iput v0, v1, Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$BooleanChunk;->chunkSize:I

    iget v0, p0, Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$Base1_2$1;->current:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$Base1_2$1;->current:I

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$Base1_2$1;->next()Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$BooleanChunk;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 0

    return-void
.end method
