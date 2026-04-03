.class public Lcom/google/firebase/database/snapshot/EmptyNode;
.super Lcom/google/firebase/database/snapshot/ChildrenNode;

# interfaces
.implements Lcom/google/firebase/database/snapshot/Node;


# static fields
.field private static final empty:Lcom/google/firebase/database/snapshot/EmptyNode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/database/snapshot/EmptyNode;

    invoke-direct {v0}, Lcom/google/firebase/database/snapshot/EmptyNode;-><init>()V

    sput-object v0, Lcom/google/firebase/database/snapshot/EmptyNode;->empty:Lcom/google/firebase/database/snapshot/EmptyNode;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/database/snapshot/ChildrenNode;-><init>()V

    return-void
.end method

.method public static Empty()Lcom/google/firebase/database/snapshot/EmptyNode;
    .locals 1

    sget-object v0, Lcom/google/firebase/database/snapshot/EmptyNode;->empty:Lcom/google/firebase/database/snapshot/EmptyNode;

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/google/firebase/database/snapshot/Node;)I
    .locals 1

    invoke-interface {p1}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/firebase/database/snapshot/Node;

    invoke-virtual {p0, p1}, Lcom/google/firebase/database/snapshot/EmptyNode;->compareTo(Lcom/google/firebase/database/snapshot/Node;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v1, 0x1

    instance-of v0, p1, Lcom/google/firebase/database/snapshot/EmptyNode;

    if-eqz v0, :cond_0

    :goto_0
    return v1

    :cond_0
    instance-of v0, p1, Lcom/google/firebase/database/snapshot/Node;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/google/firebase/database/snapshot/Node;

    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/firebase/database/snapshot/EmptyNode;->getPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    check-cast p1, Lcom/google/firebase/database/snapshot/Node;

    invoke-interface {p1}, Lcom/google/firebase/database/snapshot/Node;->getPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getChild(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;
    .locals 0

    return-object p0
.end method

.method public getChildCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getHash()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getHashRepresentation(Lcom/google/firebase/database/snapshot/Node$HashVersion;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;
    .locals 0

    return-object p0
.end method

.method public getPredecessorChildKey(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/ChildKey;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPriority()Lcom/google/firebase/database/snapshot/Node;
    .locals 0

    return-object p0
.end method

.method public getSuccessorChildKey(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/ChildKey;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getValue(Z)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hasChild(Lcom/google/firebase/database/snapshot/ChildKey;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isLeafNode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/firebase/database/snapshot/NamedNode;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public reverseIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/firebase/database/snapshot/NamedNode;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "5a2e74"

    const-wide/32 v2, -0xe9319fc

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x9t
        0x24t
        0x5ft
        0x15t
        0x43t
        0x4dt
        0x15t
        0x2ft
        0x5dt
        0x1t
        0x52t
        0xat
    .end array-data
.end method

.method public updateChild(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;
    .locals 3

    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p2

    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/database/snapshot/EmptyNode;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->popFront()Lcom/google/firebase/database/core/Path;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Lcom/google/firebase/database/snapshot/Node;->updateChild(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/database/snapshot/EmptyNode;->updateImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p2

    goto :goto_0
.end method

.method public updateImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;
    .locals 1

    invoke-interface {p2}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/firebase/database/snapshot/ChildKey;->isPriorityChildName()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/firebase/database/snapshot/ChildrenNode;

    invoke-direct {v0}, Lcom/google/firebase/database/snapshot/ChildrenNode;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/database/snapshot/ChildrenNode;->updateImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p0

    goto :goto_0
.end method

.method public updatePriority(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/EmptyNode;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic updatePriority(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/firebase/database/snapshot/EmptyNode;->updatePriority(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object v0

    return-object v0
.end method
