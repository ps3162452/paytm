.class public Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;
.super Ljava/lang/Object;


# static fields
.field static final $assertionsDisabled:Z


# instance fields
.field private final changeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/firebase/database/snapshot/ChildKey;",
            "Lcom/google/firebase/database/core/view/Change;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;->changeMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getChanges()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/firebase/database/core/view/Change;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;->changeMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public trackChildChange(Lcom/google/firebase/database/core/view/Change;)V
    .locals 8

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/Change;->getEventType()Lcom/google/firebase/database/core/view/Event$EventType;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/Change;->getChildKey()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v2

    iget-object v0, p0, Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;->changeMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;->changeMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/core/view/Change;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/Change;->getEventType()Lcom/google/firebase/database/core/view/Event$EventType;

    move-result-object v3

    sget-object v4, Lcom/google/firebase/database/core/view/Event$EventType;->CHILD_ADDED:Lcom/google/firebase/database/core/view/Event$EventType;

    if-ne v1, v4, :cond_0

    sget-object v4, Lcom/google/firebase/database/core/view/Event$EventType;->CHILD_REMOVED:Lcom/google/firebase/database/core/view/Event$EventType;

    if-ne v3, v4, :cond_0

    iget-object v1, p0, Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;->changeMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/Change;->getChildKey()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/Change;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/Change;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v0

    invoke-static {v2, v4, v0}, Lcom/google/firebase/database/core/view/Change;->childChangedChange(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/IndexedNode;)Lcom/google/firebase/database/core/view/Change;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    sget-object v4, Lcom/google/firebase/database/core/view/Event$EventType;->CHILD_REMOVED:Lcom/google/firebase/database/core/view/Event$EventType;

    if-ne v1, v4, :cond_1

    sget-object v4, Lcom/google/firebase/database/core/view/Event$EventType;->CHILD_ADDED:Lcom/google/firebase/database/core/view/Event$EventType;

    if-ne v3, v4, :cond_1

    iget-object v0, p0, Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;->changeMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/google/firebase/database/core/view/Event$EventType;->CHILD_REMOVED:Lcom/google/firebase/database/core/view/Event$EventType;

    if-ne v1, v4, :cond_2

    sget-object v4, Lcom/google/firebase/database/core/view/Event$EventType;->CHILD_CHANGED:Lcom/google/firebase/database/core/view/Event$EventType;

    if-ne v3, v4, :cond_2

    iget-object v1, p0, Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;->changeMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/Change;->getOldIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/firebase/database/core/view/Change;->childRemovedChange(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/IndexedNode;)Lcom/google/firebase/database/core/view/Change;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    sget-object v4, Lcom/google/firebase/database/core/view/Event$EventType;->CHILD_CHANGED:Lcom/google/firebase/database/core/view/Event$EventType;

    if-ne v1, v4, :cond_3

    sget-object v4, Lcom/google/firebase/database/core/view/Event$EventType;->CHILD_ADDED:Lcom/google/firebase/database/core/view/Event$EventType;

    if-ne v3, v4, :cond_3

    iget-object v0, p0, Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;->changeMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/Change;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/firebase/database/core/view/Change;->childAddedChange(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/IndexedNode;)Lcom/google/firebase/database/core/view/Change;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    sget-object v4, Lcom/google/firebase/database/core/view/Event$EventType;->CHILD_CHANGED:Lcom/google/firebase/database/core/view/Event$EventType;

    if-ne v1, v4, :cond_4

    sget-object v1, Lcom/google/firebase/database/core/view/Event$EventType;->CHILD_CHANGED:Lcom/google/firebase/database/core/view/Event$EventType;

    if-ne v3, v1, :cond_4

    iget-object v1, p0, Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;->changeMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/Change;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/Change;->getOldIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/google/firebase/database/core/view/Change;->childChangedChange(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/IndexedNode;)Lcom/google/firebase/database/core/view/Change;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x20

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "ee4750"

    const/16 v5, -0x1190

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x10

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "94d260"

    const-wide v6, 0x41c8b6eeeb800000L    # 8.29283799E8

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    iget-object v0, p0, Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;->changeMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/Change;->getChildKey()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    nop

    :array_0
    .array-data 1
        0x2ct
        0x9t
        0x58t
        0x52t
        0x52t
        0x51t
        0x9t
        0x45t
        0x57t
        0x58t
        0x58t
        0x52t
        0xct
        0xbt
        0x55t
        0x43t
        0x5ct
        0x5ft
        0xbt
        0x45t
        0x5bt
        0x51t
        0x15t
        0x53t
        0xdt
        0x4t
        0x5at
        0x50t
        0x50t
        0x43t
        0x5ft
        0x45t
    .end array-data

    :array_1
    .array-data 1
        0x19t
        0x5bt
        0x7t
        0x51t
        0x43t
        0x42t
        0x4bt
        0x51t
        0x0t
        0x12t
        0x57t
        0x56t
        0x4dt
        0x51t
        0x16t
        0x12t
    .end array-data
.end method
