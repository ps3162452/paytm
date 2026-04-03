.class public Lcom/google/firebase/database/collection/ImmutableSortedMapIterator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final isReverse:Z

.field private final nodeStack:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/google/firebase/database/collection/LLRBValueNode",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/firebase/database/collection/LLRBNode;Ljava/lang/Object;Ljava/util/Comparator;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/collection/LLRBNode",
            "<TK;TV;>;TK;",
            "Ljava/util/Comparator",
            "<TK;>;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/database/collection/ImmutableSortedMapIterator;->nodeStack:Ljava/util/ArrayDeque;

    iput-boolean p4, p0, Lcom/google/firebase/database/collection/ImmutableSortedMapIterator;->isReverse:Z

    move-object v0, p1

    :goto_0
    invoke-interface {v0}, Lcom/google/firebase/database/collection/LLRBNode;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz p2, :cond_1

    if-eqz p4, :cond_0

    invoke-interface {v0}, Lcom/google/firebase/database/collection/LLRBNode;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p3, p2, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    :goto_1
    if-gez v1, :cond_3

    if-eqz p4, :cond_2

    invoke-interface {v0}, Lcom/google/firebase/database/collection/LLRBNode;->getLeft()Lcom/google/firebase/database/collection/LLRBNode;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/google/firebase/database/collection/LLRBNode;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p3, v1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Lcom/google/firebase/database/collection/LLRBNode;->getRight()Lcom/google/firebase/database/collection/LLRBNode;

    move-result-object v0

    goto :goto_0

    :cond_3
    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/google/firebase/database/collection/ImmutableSortedMapIterator;->nodeStack:Ljava/util/ArrayDeque;

    check-cast v0, Lcom/google/firebase/database/collection/LLRBValueNode;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    :cond_4
    return-void

    :cond_5
    iget-object v2, p0, Lcom/google/firebase/database/collection/ImmutableSortedMapIterator;->nodeStack:Ljava/util/ArrayDeque;

    move-object v1, v0

    check-cast v1, Lcom/google/firebase/database/collection/LLRBValueNode;

    invoke-virtual {v2, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    if-eqz p4, :cond_6

    invoke-interface {v0}, Lcom/google/firebase/database/collection/LLRBNode;->getRight()Lcom/google/firebase/database/collection/LLRBNode;

    move-result-object v0

    goto :goto_0

    :cond_6
    invoke-interface {v0}, Lcom/google/firebase/database/collection/LLRBNode;->getLeft()Lcom/google/firebase/database/collection/LLRBNode;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/collection/ImmutableSortedMapIterator;->nodeStack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/firebase/database/collection/ImmutableSortedMapIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/database/collection/ImmutableSortedMapIterator;->nodeStack:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/collection/LLRBValueNode;

    new-instance v3, Ljava/util/AbstractMap$SimpleEntry;

    invoke-virtual {v1}, Lcom/google/firebase/database/collection/LLRBValueNode;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/firebase/database/collection/LLRBValueNode;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v2, p0, Lcom/google/firebase/database/collection/ImmutableSortedMapIterator;->isReverse:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/firebase/database/collection/LLRBValueNode;->getLeft()Lcom/google/firebase/database/collection/LLRBNode;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Lcom/google/firebase/database/collection/LLRBNode;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v4, p0, Lcom/google/firebase/database/collection/ImmutableSortedMapIterator;->nodeStack:Ljava/util/ArrayDeque;

    move-object v0, v2

    check-cast v0, Lcom/google/firebase/database/collection/LLRBValueNode;

    move-object v1, v0

    invoke-virtual {v4, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    invoke-interface {v2}, Lcom/google/firebase/database/collection/LLRBNode;->getRight()Lcom/google/firebase/database/collection/LLRBNode;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/google/firebase/database/collection/LLRBValueNode;->getRight()Lcom/google/firebase/database/collection/LLRBNode;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Lcom/google/firebase/database/collection/LLRBNode;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v4, p0, Lcom/google/firebase/database/collection/ImmutableSortedMapIterator;->nodeStack:Ljava/util/ArrayDeque;

    move-object v0, v2

    check-cast v0, Lcom/google/firebase/database/collection/LLRBValueNode;

    move-object v1, v0

    invoke-virtual {v4, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    invoke-interface {v2}, Lcom/google/firebase/database/collection/LLRBNode;->getLeft()Lcom/google/firebase/database/collection/LLRBNode;
    :try_end_0
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    :cond_1
    return-object v3
.end method

.method public remove()V
    .locals 6

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x25

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "63c64a"

    const-wide/32 v4, 0x53402ddb

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x44t
        0x56t
        0xet
        0x59t
        0x42t
        0x4t
        0x16t
        0x50t
        0x2t
        0x5at
        0x58t
        0x4t
        0x52t
        0x13t
        0xct
        0x58t
        0x14t
        0x8t
        0x5bt
        0x5et
        0x16t
        0x42t
        0x55t
        0x3t
        0x5at
        0x56t
        0x43t
        0x55t
        0x5bt
        0xdt
        0x5at
        0x56t
        0x0t
        0x42t
        0x5dt
        0xet
        0x58t
    .end array-data
.end method
