.class public abstract Lcom/google/firebase/database/collection/ImmutableSortedMap;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/database/collection/ImmutableSortedMap$Builder;,
        Lcom/google/firebase/database/collection/ImmutableSortedMap$Builder$KeyTranslator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract containsKey(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/google/firebase/database/collection/ImmutableSortedMap;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {p0}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->getComparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->getComparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->size()I

    move-result v3

    if-eq v0, v3, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map$Entry;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public abstract get(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation
.end method

.method public abstract getComparator()Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<TK;>;"
        }
    .end annotation
.end method

.method public abstract getMaxKey()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation
.end method

.method public abstract getMinKey()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation
.end method

.method public abstract getPredecessorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation
.end method

.method public abstract getSuccessorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->getComparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    mul-int/lit8 v2, v0, 0x1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    return v0
.end method

.method public abstract inOrderTraversal(Lcom/google/firebase/database/collection/LLRBNode$NodeVisitor;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/collection/LLRBNode$NodeVisitor",
            "<TK;TV;>;)V"
        }
    .end annotation
.end method

.method public abstract indexOf(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation
.end method

.method public abstract insert(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/google/firebase/database/collection/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract iterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end method

.method public abstract iteratorFrom(Ljava/lang/Object;)Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end method

.method public abstract remove(Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/google/firebase/database/collection/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract reverseIterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end method

.method public abstract reverseIteratorFrom(Ljava/lang/Object;)Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end method

.method public abstract size()I
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    const/4 v10, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v2, [B

    const/16 v1, 0x4e

    aput-byte v1, v0, v3

    const-string v1, "5211af"

    const/16 v5, 0x43d6

    invoke-static {v0, v1, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-eqz v1, :cond_0

    move v1, v3

    :goto_1
    new-array v6, v2, [B

    const/16 v7, 0x4b

    aput-byte v7, v6, v3

    const-string v7, "cf368c"

    const-wide v8, 0x41d37747ea000000L    # 1.306337192E9

    invoke-static {v6, v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-array v6, v10, [B

    fill-array-data v6, :array_0

    const-string v7, "5c49c8"

    const v8, 0x4d2a6211    # 1.786596E8f

    invoke-static {v6, v7, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-array v0, v2, [B

    const/16 v6, 0x1d

    aput-byte v6, v0, v3

    const-string v6, "46fba8"

    invoke-static {v0, v6, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    new-array v6, v10, [B

    fill-array-data v6, :array_1

    const-string v7, "d95fd1"

    invoke-static {v6, v7, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    new-array v0, v10, [B

    fill-array-data v0, :array_2

    const-string v1, "47f8be"

    invoke-static {v0, v1, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x8t
        0x5dt
    .end array-data

    nop

    :array_1
    .array-data 1
        0x48t
        0x19t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x49t
        0xct
    .end array-data
.end method
