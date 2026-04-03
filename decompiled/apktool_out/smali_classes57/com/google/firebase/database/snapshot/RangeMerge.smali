.class public Lcom/google/firebase/database/snapshot/RangeMerge;
.super Ljava/lang/Object;


# static fields
.field static final $assertionsDisabled:Z


# instance fields
.field private final optExclusiveStart:Lcom/google/firebase/database/core/Path;

.field private final optInclusiveEnd:Lcom/google/firebase/database/core/Path;

.field private final snap:Lcom/google/firebase/database/snapshot/Node;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/database/connection/RangeMerge;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/firebase/database/connection/RangeMerge;->getOptExclusiveStart()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v0, Lcom/google/firebase/database/core/Path;

    invoke-direct {v0, v2}, Lcom/google/firebase/database/core/Path;-><init>(Ljava/util/List;)V

    :goto_0
    iput-object v0, p0, Lcom/google/firebase/database/snapshot/RangeMerge;->optExclusiveStart:Lcom/google/firebase/database/core/Path;

    invoke-virtual {p1}, Lcom/google/firebase/database/connection/RangeMerge;->getOptInclusiveEnd()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/firebase/database/core/Path;

    invoke-direct {v1, v0}, Lcom/google/firebase/database/core/Path;-><init>(Ljava/util/List;)V

    :cond_0
    iput-object v1, p0, Lcom/google/firebase/database/snapshot/RangeMerge;->optInclusiveEnd:Lcom/google/firebase/database/core/Path;

    invoke-virtual {p1}, Lcom/google/firebase/database/connection/RangeMerge;->getSnap()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/database/snapshot/NodeUtilities;->NodeFromJSON(Ljava/lang/Object;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/snapshot/RangeMerge;->snap:Lcom/google/firebase/database/snapshot/Node;

    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/database/snapshot/RangeMerge;->optExclusiveStart:Lcom/google/firebase/database/core/Path;

    iput-object p2, p0, Lcom/google/firebase/database/snapshot/RangeMerge;->optInclusiveEnd:Lcom/google/firebase/database/core/Path;

    iput-object p3, p0, Lcom/google/firebase/database/snapshot/RangeMerge;->snap:Lcom/google/firebase/database/snapshot/Node;

    return-void
.end method

.method private updateRangeInNode(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;
    .locals 7

    const/4 v4, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google/firebase/database/snapshot/RangeMerge;->optExclusiveStart:Lcom/google/firebase/database/core/Path;

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/firebase/database/snapshot/RangeMerge;->optInclusiveEnd:Lcom/google/firebase/database/core/Path;

    if-nez v2, :cond_3

    const/4 v2, -0x1

    :goto_1
    iget-object v3, p0, Lcom/google/firebase/database/snapshot/RangeMerge;->optExclusiveStart:Lcom/google/firebase/database/core/Path;

    if-eqz v3, :cond_4

    invoke-virtual {p1, v3}, Lcom/google/firebase/database/core/Path;->contains(Lcom/google/firebase/database/core/Path;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v1

    :goto_2
    iget-object v5, p0, Lcom/google/firebase/database/snapshot/RangeMerge;->optInclusiveEnd:Lcom/google/firebase/database/core/Path;

    if-eqz v5, :cond_0

    invoke-virtual {p1, v5}, Lcom/google/firebase/database/core/Path;->contains(Lcom/google/firebase/database/core/Path;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v4, v1

    :cond_0
    if-lez v0, :cond_5

    if-gez v2, :cond_5

    if-nez v4, :cond_5

    :cond_1
    :goto_3
    return-object p3

    :cond_2
    invoke-virtual {p1, v0}, Lcom/google/firebase/database/core/Path;->compareTo(Lcom/google/firebase/database/core/Path;)I

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v2}, Lcom/google/firebase/database/core/Path;->compareTo(Lcom/google/firebase/database/core/Path;)I

    move-result v2

    goto :goto_1

    :cond_4
    move v3, v4

    goto :goto_2

    :cond_5
    if-lez v0, :cond_6

    if-eqz v4, :cond_6

    invoke-interface {p3}, Lcom/google/firebase/database/snapshot/Node;->isLeafNode()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_6
    if-lez v0, :cond_8

    if-nez v2, :cond_8

    invoke-interface {p2}, Lcom/google/firebase/database/snapshot/Node;->isLeafNode()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object p3

    goto :goto_3

    :cond_7
    move-object p3, p2

    goto :goto_3

    :cond_8
    if-nez v3, :cond_9

    if-eqz v4, :cond_a

    :cond_9
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p2}, Lcom/google/firebase/database/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/snapshot/NamedNode;

    invoke-virtual {v0}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    move-object p3, p2

    goto :goto_3

    :cond_b
    invoke-interface {p3}, Lcom/google/firebase/database/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/snapshot/NamedNode;

    invoke-virtual {v0}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p3}, Lcom/google/firebase/database/snapshot/Node;->getPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {p2}, Lcom/google/firebase/database/snapshot/Node;->getPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    :cond_d
    invoke-static {}, Lcom/google/firebase/database/snapshot/ChildKey;->getPriorityKey()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, p2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/snapshot/ChildKey;

    invoke-interface {p2, v0}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/Path;

    move-result-object v4

    invoke-interface {p2, v0}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v5

    invoke-interface {p3, v0}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v6

    invoke-direct {p0, v4, v5, v6}, Lcom/google/firebase/database/snapshot/RangeMerge;->updateRangeInNode(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v4

    if-eq v4, v3, :cond_10

    invoke-interface {v1, v0, v4}, Lcom/google/firebase/database/snapshot/Node;->updateImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    :goto_7
    move-object v1, v0

    goto :goto_6

    :cond_f
    move-object p3, v1

    goto/16 :goto_3

    :cond_10
    move-object v0, v1

    goto :goto_7
.end method


# virtual methods
.method public applyTo(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;
    .locals 2

    invoke-static {}, Lcom/google/firebase/database/core/Path;->getEmptyPath()Lcom/google/firebase/database/core/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/snapshot/RangeMerge;->snap:Lcom/google/firebase/database/snapshot/Node;

    invoke-direct {p0, v0, p1, v1}, Lcom/google/firebase/database/snapshot/RangeMerge;->updateRangeInNode(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    return-object v0
.end method

.method getEnd()Lcom/google/firebase/database/core/Path;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/snapshot/RangeMerge;->optInclusiveEnd:Lcom/google/firebase/database/core/Path;

    return-object v0
.end method

.method getStart()Lcom/google/firebase/database/core/Path;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/snapshot/RangeMerge;->optExclusiveStart:Lcom/google/firebase/database/core/Path;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x1d

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "dfe60b"

    const-wide v4, 0x41cf938145000000L    # 1.059521162E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/snapshot/RangeMerge;->optExclusiveStart:Lcom/google/firebase/database/core/Path;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x12

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "b9f03f"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/snapshot/RangeMerge;->optInclusiveEnd:Lcom/google/firebase/database/core/Path;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x7

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "abac03"

    const v3, -0x31d90656    # -7.0034496E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/snapshot/RangeMerge;->snap:Lcom/google/firebase/database/snapshot/Node;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x36t
        0x7t
        0xbt
        0x51t
        0x55t
        0x2ft
        0x1t
        0x14t
        0x2t
        0x53t
        0x4bt
        0xdt
        0x14t
        0x12t
        0x20t
        0x4et
        0x53t
        0xet
        0x11t
        0x15t
        0xct
        0x40t
        0x55t
        0x31t
        0x10t
        0x7t
        0x17t
        0x42t
        0xdt
    .end array-data

    nop

    :array_1
    .array-data 1
        0x4et
        0x19t
        0x9t
        0x40t
        0x47t
        0x2ft
        0xct
        0x5at
        0xat
        0x45t
        0x40t
        0xft
        0x14t
        0x5ct
        0x23t
        0x5et
        0x57t
        0x5bt
    .end array-data

    nop

    :array_2
    .array-data 1
        0x4dt
        0x42t
        0x12t
        0xdt
        0x51t
        0x43t
        0x5ct
    .end array-data
.end method
