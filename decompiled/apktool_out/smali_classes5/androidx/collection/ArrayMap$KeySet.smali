.class final Landroidx/collection/ArrayMap$KeySet;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/collection/ArrayMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Set",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final this$0:Landroidx/collection/ArrayMap;


# direct methods
.method constructor <init>(Landroidx/collection/ArrayMap;)V
    .locals 0

    iput-object p1, p0, Landroidx/collection/ArrayMap$KeySet;->this$0:Landroidx/collection/ArrayMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;)Z"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Landroidx/collection/ArrayMap$KeySet;->this$0:Landroidx/collection/ArrayMap;

    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Landroidx/collection/ArrayMap$KeySet;->this$0:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Landroidx/collection/ArrayMap$KeySet;->this$0:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-static {p0, p1}, Landroidx/collection/ArrayMap;->equalsSetHelper(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Landroidx/collection/ArrayMap$KeySet;->this$0:Landroidx/collection/ArrayMap;

    iget v0, v0, Landroidx/collection/ArrayMap;->mSize:I

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    move v3, v1

    :goto_0
    if-ltz v2, :cond_1

    iget-object v0, p0, Landroidx/collection/ArrayMap$KeySet;->this$0:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, v2}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_1
    add-int/2addr v3, v0

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_1
    return v3
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Landroidx/collection/ArrayMap$KeySet;->this$0:Landroidx/collection/ArrayMap;

    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    new-instance v0, Landroidx/collection/ArrayMap$KeyIterator;

    iget-object v1, p0, Landroidx/collection/ArrayMap$KeySet;->this$0:Landroidx/collection/ArrayMap;

    invoke-direct {v0, v1}, Landroidx/collection/ArrayMap$KeyIterator;-><init>(Landroidx/collection/ArrayMap;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Landroidx/collection/ArrayMap$KeySet;->this$0:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroidx/collection/ArrayMap$KeySet;->this$0:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, v0}, Landroidx/collection/ArrayMap;->removeAt(I)Ljava/lang/Object;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Landroidx/collection/ArrayMap$KeySet;->this$0:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Landroidx/collection/ArrayMap$KeySet;->this$0:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Landroidx/collection/ArrayMap$KeySet;->this$0:Landroidx/collection/ArrayMap;

    iget v0, v0, Landroidx/collection/ArrayMap;->mSize:I

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Landroidx/collection/ArrayMap$KeySet;->this$0:Landroidx/collection/ArrayMap;

    iget v1, v0, Landroidx/collection/ArrayMap;->mSize:I

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v3, p0, Landroidx/collection/ArrayMap$KeySet;->this$0:Landroidx/collection/ArrayMap;

    invoke-virtual {v3, v0}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/collection/ArrayMap$KeySet;->this$0:Landroidx/collection/ArrayMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/collection/ArrayMap;->toArrayHelper([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
