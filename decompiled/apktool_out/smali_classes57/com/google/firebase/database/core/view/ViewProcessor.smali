.class public Lcom/google/firebase/database/core/view/ViewProcessor;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/database/core/view/ViewProcessor$ProcessorResult;,
        Lcom/google/firebase/database/core/view/ViewProcessor$WriteTreeCompleteChildSource;
    }
.end annotation


# static fields
.field static final $assertionsDisabled:Z

.field private static NO_COMPLETE_SOURCE:Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;


# instance fields
.field private final filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/database/core/view/ViewProcessor$1;

    invoke-direct {v0}, Lcom/google/firebase/database/core/view/ViewProcessor$1;-><init>()V

    sput-object v0, Lcom/google/firebase/database/core/view/ViewProcessor;->NO_COMPLETE_SOURCE:Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/database/core/view/filter/NodeFilter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    return-void
.end method

.method private ackUserWrite(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/ImmutableTree;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/view/ViewCache;",
            "Lcom/google/firebase/database/core/Path;",
            "Lcom/google/firebase/database/core/utilities/ImmutableTree",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/google/firebase/database/core/WriteTreeRef;",
            "Lcom/google/firebase/database/snapshot/Node;",
            "Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;",
            ")",
            "Lcom/google/firebase/database/core/view/ViewCache;"
        }
    .end annotation

    invoke-virtual {p4, p2}, Lcom/google/firebase/database/core/WriteTreeRef;->shadowingWrite(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->isFiltered()Z

    move-result v6

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v1

    invoke-virtual {p3}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {v1, p2}, Lcom/google/firebase/database/core/view/CacheNode;->isCompleteForPath(Lcom/google/firebase/database/core/Path;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/google/firebase/database/snapshot/Node;->getChild(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/database/core/view/ViewProcessor;->applyServerOverwrite(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;ZLcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object p1

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/firebase/database/core/CompoundWrite;->emptyWrite()Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/snapshot/NamedNode;

    invoke-virtual {v0}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/firebase/database/snapshot/NamedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lcom/google/firebase/database/core/CompoundWrite;->addWrite(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v3

    goto :goto_1

    :cond_5
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/database/core/view/ViewProcessor;->applyServerMerge(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;ZLcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object p1

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/google/firebase/database/core/CompoundWrite;->emptyWrite()Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v3

    invoke-virtual {p3}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/core/Path;

    invoke-virtual {p2, v0}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/firebase/database/core/view/CacheNode;->isCompleteForPath(Lcom/google/firebase/database/core/Path;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/google/firebase/database/snapshot/Node;->getChild(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/google/firebase/database/core/CompoundWrite;->addWrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v3

    goto :goto_2

    :cond_8
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/database/core/view/ViewProcessor;->applyServerMerge(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;ZLcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object p1

    goto/16 :goto_0
.end method

.method private applyServerMerge(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;ZLcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;
    .locals 11

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p2}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v8

    invoke-virtual {p3}, Lcom/google/firebase/database/core/CompoundWrite;->childCompoundWrites()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v1, p1

    :cond_1
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/google/firebase/database/snapshot/ChildKey;

    invoke-interface {v8, v4}, Lcom/google/firebase/database/snapshot/Node;->hasChild(Lcom/google/firebase/database/snapshot/ChildKey;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v8, v4}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {v0, v2}, Lcom/google/firebase/database/core/CompoundWrite;->apply(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    new-instance v2, Lcom/google/firebase/database/core/Path;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/firebase/database/snapshot/ChildKey;

    const/4 v5, 0x0

    aput-object v4, v0, v5

    invoke-direct {v2, v0}, Lcom/google/firebase/database/core/Path;-><init>([Lcom/google/firebase/database/snapshot/ChildKey;)V

    move-object v0, p0

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/database/core/view/ViewProcessor;->applyServerOverwrite(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;ZLcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object v1

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/google/firebase/database/core/CompoundWrite;->emptyWrite()Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/google/firebase/database/core/CompoundWrite;->addWrites(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object p3

    goto :goto_1

    :cond_3
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/firebase/database/snapshot/ChildKey;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/google/firebase/database/core/view/CacheNode;->isCompleteForChild(Lcom/google/firebase/database/snapshot/ChildKey;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v0}, Lcom/google/firebase/database/core/CompoundWrite;->rootWrite()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    :goto_4
    invoke-interface {v8, v4}, Lcom/google/firebase/database/snapshot/Node;->hasChild(Lcom/google/firebase/database/snapshot/ChildKey;)Z

    move-result v3

    if-nez v3, :cond_4

    if-nez v0, :cond_4

    invoke-interface {v8, v4}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {v0, v3}, Lcom/google/firebase/database/core/CompoundWrite;->apply(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    new-instance v2, Lcom/google/firebase/database/core/Path;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/firebase/database/snapshot/ChildKey;

    const/4 v5, 0x0

    aput-object v4, v0, v5

    invoke-direct {v2, v0}, Lcom/google/firebase/database/core/Path;-><init>([Lcom/google/firebase/database/snapshot/ChildKey;)V

    move-object v0, p0

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/database/core/view/ViewProcessor;->applyServerOverwrite(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;ZLcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object v1

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    goto :goto_4

    :cond_6
    move-object p1, v1

    goto/16 :goto_0
.end method

.method private applyServerOverwrite(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;ZLcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;
    .locals 9

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v8

    iget-object v0, p0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    if-eqz p6, :cond_1

    :goto_0
    invoke-virtual {p2}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v1

    const/4 v7, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {v8}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->getIndex()Lcom/google/firebase/database/snapshot/Index;

    move-result-object v2

    invoke-static {p3, v2}, Lcom/google/firebase/database/snapshot/IndexedNode;->from(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Index;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updateFullNode(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v1

    :goto_1
    invoke-virtual {v8}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p2}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v7

    :goto_2
    invoke-interface {v0}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->filtersNodes()Z

    move-result v0

    invoke-virtual {p1, v1, v2, v0}, Lcom/google/firebase/database/core/view/ViewCache;->updateServerSnap(Lcom/google/firebase/database/snapshot/IndexedNode;ZZ)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object v1

    new-instance v4, Lcom/google/firebase/database/core/view/ViewProcessor$WriteTreeCompleteChildSource;

    invoke-direct {v4, p4, v1, p5}, Lcom/google/firebase/database/core/view/ViewProcessor$WriteTreeCompleteChildSource;-><init>(Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/snapshot/Node;)V

    move-object v0, p0

    move-object v2, p2

    move-object v3, p4

    move-object/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/database/core/view/ViewProcessor;->generateEventCacheAfterServerEvent(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object p1

    :cond_0
    return-object p1

    :cond_1
    invoke-interface {v0}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->getIndexedFilter()Lcom/google/firebase/database/core/view/filter/NodeFilter;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->filtersNodes()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v8}, Lcom/google/firebase/database/core/view/CacheNode;->isFiltered()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p2}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/firebase/database/core/Path;->popFront()Lcom/google/firebase/database/core/Path;

    move-result-object v2

    invoke-virtual {v8}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    invoke-interface {v3, v2, p3}, Lcom/google/firebase/database/snapshot/Node;->updateChild(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    invoke-virtual {v8}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/google/firebase/database/snapshot/IndexedNode;->updateChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v1

    invoke-virtual {v8}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v1, v3}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updateFullNode(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v1

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v2

    invoke-virtual {v8, p2}, Lcom/google/firebase/database/core/view/CacheNode;->isCompleteForPath(Lcom/google/firebase/database/core/Path;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p2}, Lcom/google/firebase/database/core/Path;->size()I

    move-result v1

    const/4 v3, 0x1

    if-gt v1, v3, :cond_0

    :cond_4
    invoke-virtual {p2}, Lcom/google/firebase/database/core/Path;->popFront()Lcom/google/firebase/database/core/Path;

    move-result-object v4

    invoke-virtual {v8}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    invoke-interface {v1, v4, p3}, Lcom/google/firebase/database/snapshot/Node;->updateChild(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/firebase/database/snapshot/ChildKey;->isPriorityChildName()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v8}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updatePriority(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v1

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v8}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v1

    sget-object v5, Lcom/google/firebase/database/core/view/ViewProcessor;->NO_COMPLETE_SOURCE:Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updateChild(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v1

    goto/16 :goto_1

    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_7
    move v2, v7

    goto/16 :goto_2
.end method

.method private applyUserMerge(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;
    .locals 8

    invoke-virtual {p3}, Lcom/google/firebase/database/core/CompoundWrite;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v1, p1

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/core/Path;

    invoke-virtual {p2, v2}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/google/firebase/database/core/view/ViewProcessor;->cacheHasChild(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/snapshot/ChildKey;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/database/snapshot/Node;

    move-object v0, p0

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/database/core/view/ViewProcessor;->applyUserOverwrite(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Lcom/google/firebase/database/core/CompoundWrite;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/core/Path;

    invoke-virtual {p2, v2}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/google/firebase/database/core/view/ViewProcessor;->cacheHasChild(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/snapshot/ChildKey;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/database/snapshot/Node;

    move-object v0, p0

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/database/core/view/ViewProcessor;->applyUserOverwrite(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object v1

    goto :goto_1

    :cond_3
    return-object v1
.end method

.method private applyUserOverwrite(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;
    .locals 8

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getEventCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v7

    new-instance v5, Lcom/google/firebase/database/core/view/ViewProcessor$WriteTreeCompleteChildSource;

    invoke-direct {v5, p4, p1, p5}, Lcom/google/firebase/database/core/view/ViewProcessor$WriteTreeCompleteChildSource;-><init>(Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/snapshot/Node;)V

    invoke-virtual {p2}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    invoke-interface {v0}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->getIndex()Lcom/google/firebase/database/snapshot/Index;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/google/firebase/database/snapshot/IndexedNode;->from(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Index;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getEventCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v2

    invoke-interface {v1, v2, v0, p6}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updateFullNode(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    invoke-interface {v2}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->filtersNodes()Z

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/firebase/database/core/view/ViewCache;->updateEventSnap(Lcom/google/firebase/database/snapshot/IndexedNode;ZZ)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object p1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-virtual {p2}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/database/snapshot/ChildKey;->isPriorityChildName()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getEventCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updatePriority(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v0

    invoke-virtual {v7}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result v1

    invoke-virtual {v7}, Lcom/google/firebase/database/core/view/CacheNode;->isFiltered()Z

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/firebase/database/core/view/ViewCache;->updateEventSnap(Lcom/google/firebase/database/snapshot/IndexedNode;ZZ)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/google/firebase/database/core/Path;->popFront()Lcom/google/firebase/database/core/Path;

    move-result-object v4

    invoke-virtual {v7}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-virtual {v4}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v3, p3

    :cond_3
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    invoke-virtual {v7}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v1

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updateChild(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v0

    invoke-virtual {v7}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result v1

    iget-object v2, p0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    invoke-interface {v2}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->filtersNodes()Z

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/firebase/database/core/view/ViewCache;->updateEventSnap(Lcom/google/firebase/database/snapshot/IndexedNode;ZZ)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object p1

    goto :goto_0

    :cond_4
    invoke-interface {v5, v2}, Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;->getCompleteChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v4}, Lcom/google/firebase/database/core/Path;->getBack()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/database/snapshot/ChildKey;->isPriorityChildName()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v4}, Lcom/google/firebase/database/core/Path;->getParent()Lcom/google/firebase/database/core/Path;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/google/firebase/database/snapshot/Node;->getChild(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_5
    invoke-interface {v3, v4, p3}, Lcom/google/firebase/database/snapshot/Node;->updateChild(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object v3

    goto :goto_1
.end method

.method private static cacheHasChild(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/snapshot/ChildKey;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/firebase/database/core/view/ViewCache;->getEventCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/core/view/CacheNode;->isCompleteForChild(Lcom/google/firebase/database/snapshot/ChildKey;)Z

    move-result v0

    return v0
.end method

.method private generateEventCacheAfterServerEvent(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;
    .locals 8

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getEventCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v7

    invoke-virtual {p3, p2}, Lcom/google/firebase/database/core/WriteTreeRef;->shadowingWrite(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p2}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->isFiltered()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getCompleteServerSnap()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    instance-of v1, v0, Lcom/google/firebase/database/snapshot/ChildrenNode;

    if-eqz v1, :cond_2

    :goto_1
    invoke-virtual {p3, v0}, Lcom/google/firebase/database/core/WriteTreeRef;->calcCompleteEventChildren(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    :goto_2
    iget-object v1, p0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    invoke-interface {v1}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->getIndex()Lcom/google/firebase/database/snapshot/Index;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/firebase/database/snapshot/IndexedNode;->from(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Index;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getEventCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v2

    invoke-interface {v1, v2, v0, p5}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updateFullNode(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v0

    :goto_3
    invoke-virtual {v7}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_1
    const/4 v1, 0x1

    :goto_4
    iget-object v2, p0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    invoke-interface {v2}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->filtersNodes()Z

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/firebase/database/core/view/ViewCache;->updateEventSnap(Lcom/google/firebase/database/snapshot/IndexedNode;ZZ)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getCompleteServerSnap()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/firebase/database/core/WriteTreeRef;->calcCompleteEventCache(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    goto :goto_2

    :cond_4
    invoke-virtual {p2}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/database/snapshot/ChildKey;->isPriorityChildName()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v7}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    invoke-virtual {p3, p2, v0, v1}, Lcom/google/firebase/database/core/WriteTreeRef;->calcEventCacheAfterServerOverwrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    invoke-virtual {v7}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updatePriority(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v0

    goto :goto_3

    :cond_5
    invoke-virtual {v7}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v0

    goto :goto_3

    :cond_6
    invoke-virtual {p2}, Lcom/google/firebase/database/core/Path;->popFront()Lcom/google/firebase/database/core/Path;

    move-result-object v4

    invoke-virtual {v7, v2}, Lcom/google/firebase/database/core/view/CacheNode;->isCompleteForChild(Lcom/google/firebase/database/snapshot/ChildKey;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-virtual {v7}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    invoke-virtual {p3, p2, v1, v0}, Lcom/google/firebase/database/core/WriteTreeRef;->calcEventCacheAfterServerOverwrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v7}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    invoke-interface {v1, v4, v0}, Lcom/google/firebase/database/snapshot/Node;->updateChild(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    :goto_5
    move-object v3, v0

    :goto_6
    if-eqz v3, :cond_9

    iget-object v0, p0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    invoke-virtual {v7}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v1

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updateChild(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v0

    goto/16 :goto_3

    :cond_7
    invoke-virtual {v7}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    goto :goto_5

    :cond_8
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v0

    invoke-virtual {p3, v2, v0}, Lcom/google/firebase/database/core/WriteTreeRef;->calcCompleteChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/view/CacheNode;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    goto :goto_6

    :cond_9
    invoke-virtual {v7}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v0

    goto/16 :goto_3

    :cond_a
    const/4 v1, 0x0

    goto/16 :goto_4
.end method

.method private listenComplete(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;
    .locals 6

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/CacheNode;->isFiltered()Z

    move-result v1

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/firebase/database/core/view/ViewCache;->updateServerSnap(Lcom/google/firebase/database/snapshot/IndexedNode;ZZ)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object v1

    sget-object v4, Lcom/google/firebase/database/core/view/ViewProcessor;->NO_COMPLETE_SOURCE:Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/database/core/view/ViewProcessor;->generateEventCacheAfterServerEvent(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeAddValueEvent(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/view/ViewCache;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/view/ViewCache;",
            "Lcom/google/firebase/database/core/view/ViewCache;",
            "Ljava/util/List",
            "<",
            "Lcom/google/firebase/database/core/view/Change;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/firebase/database/core/view/ViewCache;->getEventCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->isLeafNode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getEventCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getCompleteEventSnap()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->getPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getCompleteEventSnap()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/firebase/database/snapshot/Node;->getPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/database/core/view/Change;->valueChange(Lcom/google/firebase/database/snapshot/IndexedNode;)Lcom/google/firebase/database/core/view/Change;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public applyOperation(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/operation/Operation;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/view/ViewProcessor$ProcessorResult;
    .locals 14

    new-instance v5, Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;

    invoke-direct {v5}, Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;-><init>()V

    sget-object v0, Lcom/google/firebase/database/core/view/ViewProcessor$2;->$SwitchMap$com$google$firebase$database$core$operation$Operation$OperationType:[I

    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/operation/Operation;->getType()Lcom/google/firebase/database/core/operation/Operation$OperationType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/database/core/operation/Operation$OperationType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x13

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "53c999"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/operation/Operation;->getType()Lcom/google/firebase/database/core/operation/Operation$OperationType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/operation/Operation;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/database/core/view/ViewProcessor;->listenComplete(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v5}, Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/google/firebase/database/core/view/ViewProcessor;->maybeAddValueEvent(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/view/ViewCache;Ljava/util/List;)V

    new-instance v2, Lcom/google/firebase/database/core/view/ViewProcessor$ProcessorResult;

    invoke-direct {v2, v0, v1}, Lcom/google/firebase/database/core/view/ViewProcessor$ProcessorResult;-><init>(Lcom/google/firebase/database/core/view/ViewCache;Ljava/util/List;)V

    return-object v2

    :pswitch_1
    check-cast p2, Lcom/google/firebase/database/core/operation/AckUserWrite;

    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/operation/AckUserWrite;->isRevert()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/operation/AckUserWrite;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/operation/AckUserWrite;->getAffectedTree()Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v9

    move-object v6, p0

    move-object v7, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object v12, v5

    invoke-direct/range {v6 .. v12}, Lcom/google/firebase/database/core/view/ViewProcessor;->ackUserWrite(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/ImmutableTree;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/operation/AckUserWrite;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/firebase/database/core/view/ViewProcessor;->revertUserWrite(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    check-cast p2, Lcom/google/firebase/database/core/operation/Merge;

    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/operation/Merge;->getSource()Lcom/google/firebase/database/core/operation/OperationSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/operation/OperationSource;->isFromUser()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/operation/Merge;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/operation/Merge;->getChildren()Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v9

    move-object v6, p0

    move-object v7, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object v12, v5

    invoke-direct/range {v6 .. v12}, Lcom/google/firebase/database/core/view/ViewProcessor;->applyUserMerge(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/operation/Merge;->getSource()Lcom/google/firebase/database/core/operation/OperationSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/operation/OperationSource;->isTagged()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->isFiltered()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v12, 0x1

    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/operation/Merge;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/operation/Merge;->getChildren()Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v9

    move-object v6, p0

    move-object v7, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object v13, v5

    invoke-direct/range {v6 .. v13}, Lcom/google/firebase/database/core/view/ViewProcessor;->applyServerMerge(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;ZLcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    const/4 v12, 0x0

    goto :goto_1

    :pswitch_3
    check-cast p2, Lcom/google/firebase/database/core/operation/Overwrite;

    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/operation/Overwrite;->getSource()Lcom/google/firebase/database/core/operation/OperationSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/operation/OperationSource;->isFromUser()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/operation/Overwrite;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/operation/Overwrite;->getSnapshot()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v9

    move-object v6, p0

    move-object v7, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object v12, v5

    invoke-direct/range {v6 .. v12}, Lcom/google/firebase/database/core/view/ViewProcessor;->applyUserOverwrite(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/operation/Overwrite;->getSource()Lcom/google/firebase/database/core/operation/OperationSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/operation/OperationSource;->isTagged()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->isFiltered()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/operation/Overwrite;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    const/4 v12, 0x1

    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/operation/Overwrite;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/operation/Overwrite;->getSnapshot()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v9

    move-object v6, p0

    move-object v7, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object v13, v5

    invoke-direct/range {v6 .. v13}, Lcom/google/firebase/database/core/view/ViewProcessor;->applyServerOverwrite(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;ZLcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    const/4 v12, 0x0

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x60t
        0x5dt
        0x8t
        0x57t
        0x56t
        0x4et
        0x5bt
        0x13t
        0xct
        0x49t
        0x5ct
        0x4bt
        0x54t
        0x47t
        0xat
        0x56t
        0x57t
        0x3t
        0x15t
    .end array-data
.end method

.method public revertUserWrite(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;
    .locals 7

    invoke-virtual {p3, p2}, Lcom/google/firebase/database/core/WriteTreeRef;->shadowingWrite(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    new-instance v5, Lcom/google/firebase/database/core/view/ViewProcessor$WriteTreeCompleteChildSource;

    invoke-direct {v5, p3, p1, p4}, Lcom/google/firebase/database/core/view/ViewProcessor$WriteTreeCompleteChildSource;-><init>(Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/snapshot/Node;)V

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getEventCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/snapshot/ChildKey;->isPriorityChildName()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getCompleteServerSnap()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/firebase/database/core/WriteTreeRef;->calcCompleteEventCache(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    :goto_1
    iget-object v2, p0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    invoke-interface {v2}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->getIndex()Lcom/google/firebase/database/snapshot/Index;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/firebase/database/snapshot/IndexedNode;->from(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Index;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v0

    iget-object v2, p0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    invoke-interface {v2, v1, v0, p5}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updateFullNode(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v1

    :cond_2
    :goto_2
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/google/firebase/database/core/Path;->getEmptyPath()Lcom/google/firebase/database/core/Path;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/firebase/database/core/WriteTreeRef;->shadowingWrite(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    if-eqz v0, :cond_9

    :cond_3
    const/4 v0, 0x1

    :goto_3
    iget-object v2, p0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    invoke-interface {v2}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->filtersNodes()Z

    move-result v2

    invoke-virtual {p1, v1, v0, v2}, Lcom/google/firebase/database/core/view/ViewCache;->updateEventSnap(Lcom/google/firebase/database/snapshot/IndexedNode;ZZ)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object p1

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v0

    invoke-virtual {p3, v2, v0}, Lcom/google/firebase/database/core/WriteTreeRef;->calcCompleteChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/view/CacheNode;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    if-nez v3, :cond_5

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/firebase/database/core/view/CacheNode;->isCompleteForChild(Lcom/google/firebase/database/snapshot/ChildKey;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Lcom/google/firebase/database/snapshot/IndexedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    :cond_5
    if-eqz v3, :cond_7

    iget-object v0, p0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    invoke-virtual {p2}, Lcom/google/firebase/database/core/Path;->popFront()Lcom/google/firebase/database/core/Path;

    move-result-object v4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updateChild(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v1

    :cond_6
    :goto_4
    invoke-virtual {v1}, Lcom/google/firebase/database/snapshot/IndexedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getCompleteServerSnap()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/firebase/database/core/WriteTreeRef;->calcCompleteEventCache(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->isLeafNode()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    invoke-interface {v2}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->getIndex()Lcom/google/firebase/database/snapshot/Index;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/firebase/database/snapshot/IndexedNode;->from(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Index;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v0

    iget-object v2, p0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    invoke-interface {v2, v1, v0, p5}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updateFullNode(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v1

    goto :goto_2

    :cond_7
    if-nez v3, :cond_6

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getEventCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/google/firebase/database/snapshot/Node;->hasChild(Lcom/google/firebase/database/snapshot/ChildKey;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object v3

    invoke-virtual {p2}, Lcom/google/firebase/database/core/Path;->popFront()Lcom/google/firebase/database/core/Path;

    move-result-object v4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updateChild(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v1

    goto :goto_4

    :cond_8
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/firebase/database/core/WriteTreeRef;->calcCompleteEventChildren(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    goto/16 :goto_1

    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_3
.end method
