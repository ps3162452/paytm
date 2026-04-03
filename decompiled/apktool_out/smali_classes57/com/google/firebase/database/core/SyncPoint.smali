.class public Lcom/google/firebase/database/core/SyncPoint;
.super Ljava/lang/Object;


# static fields
.field static final $assertionsDisabled:Z


# instance fields
.field private final persistenceManager:Lcom/google/firebase/database/core/persistence/PersistenceManager;

.field private final views:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/firebase/database/core/view/QueryParams;",
            "Lcom/google/firebase/database/core/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/database/core/persistence/PersistenceManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/database/core/SyncPoint;->views:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/firebase/database/core/SyncPoint;->persistenceManager:Lcom/google/firebase/database/core/persistence/PersistenceManager;

    return-void
.end method

.method private applyOperationToView(Lcom/google/firebase/database/core/view/View;Lcom/google/firebase/database/core/operation/Operation;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/view/View;",
            "Lcom/google/firebase/database/core/operation/Operation;",
            "Lcom/google/firebase/database/core/WriteTreeRef;",
            "Lcom/google/firebase/database/snapshot/Node;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/firebase/database/core/view/DataEvent;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1, p2, p3, p4}, Lcom/google/firebase/database/core/view/View;->applyOperation(Lcom/google/firebase/database/core/operation/Operation;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/view/View$OperationResult;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/View;->getQuery()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/QuerySpec;->loadsAllData()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iget-object v0, v1, Lcom/google/firebase/database/core/view/View$OperationResult;->changes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/core/view/Change;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/Change;->getEventType()Lcom/google/firebase/database/core/view/Event$EventType;

    move-result-object v5

    sget-object v6, Lcom/google/firebase/database/core/view/Event$EventType;->CHILD_ADDED:Lcom/google/firebase/database/core/view/Event$EventType;

    if-ne v5, v6, :cond_1

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/Change;->getChildKey()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object v6, Lcom/google/firebase/database/core/view/Event$EventType;->CHILD_REMOVED:Lcom/google/firebase/database/core/view/Event$EventType;

    if-ne v5, v6, :cond_0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/Change;->getChildKey()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/google/firebase/database/core/SyncPoint;->persistenceManager:Lcom/google/firebase/database/core/persistence/PersistenceManager;

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/View;->getQuery()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v4

    invoke-interface {v0, v4, v3, v2}, Lcom/google/firebase/database/core/persistence/PersistenceManager;->updateTrackedQueryKeys(Lcom/google/firebase/database/core/view/QuerySpec;Ljava/util/Set;Ljava/util/Set;)V

    :cond_4
    iget-object v0, v1, Lcom/google/firebase/database/core/view/View$OperationResult;->events:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public addEventRegistration(Lcom/google/firebase/database/core/EventRegistration;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/core/view/CacheNode;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/EventRegistration;",
            "Lcom/google/firebase/database/core/WriteTreeRef;",
            "Lcom/google/firebase/database/core/view/CacheNode;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/firebase/database/core/view/DataEvent;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/google/firebase/database/core/EventRegistration;->getQuerySpec()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v4

    iget-object v0, p0, Lcom/google/firebase/database/core/SyncPoint;->views:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/google/firebase/database/core/view/QuerySpec;->getParams()Lcom/google/firebase/database/core/view/QueryParams;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/core/view/View;

    if-nez v0, :cond_4

    invoke-virtual {p3}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    :goto_0
    invoke-virtual {p2, v0}, Lcom/google/firebase/database/core/WriteTreeRef;->calcCompleteEventCache(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :goto_1
    new-instance v3, Lcom/google/firebase/database/core/view/View;

    new-instance v5, Lcom/google/firebase/database/core/view/ViewCache;

    new-instance v6, Lcom/google/firebase/database/core/view/CacheNode;

    invoke-virtual {v4}, Lcom/google/firebase/database/core/view/QuerySpec;->getIndex()Lcom/google/firebase/database/snapshot/Index;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/google/firebase/database/snapshot/IndexedNode;->from(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Index;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v2

    invoke-direct {v6, v2, v0, v1}, Lcom/google/firebase/database/core/view/CacheNode;-><init>(Lcom/google/firebase/database/snapshot/IndexedNode;ZZ)V

    invoke-direct {v5, v6, p3}, Lcom/google/firebase/database/core/view/ViewCache;-><init>(Lcom/google/firebase/database/core/view/CacheNode;Lcom/google/firebase/database/core/view/CacheNode;)V

    invoke-direct {v3, v4, v5}, Lcom/google/firebase/database/core/view/View;-><init>(Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/core/view/ViewCache;)V

    invoke-virtual {v4}, Lcom/google/firebase/database/core/view/QuerySpec;->loadsAllData()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v3}, Lcom/google/firebase/database/core/view/View;->getEventCache()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/snapshot/NamedNode;

    invoke-virtual {v0}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/firebase/database/core/WriteTreeRef;->calcCompleteEventChildren(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    move-object v2, v0

    move v0, v1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/firebase/database/core/SyncPoint;->persistenceManager:Lcom/google/firebase/database/core/persistence/PersistenceManager;

    invoke-interface {v0, v4, v1}, Lcom/google/firebase/database/core/persistence/PersistenceManager;->setTrackedQueryKeys(Lcom/google/firebase/database/core/view/QuerySpec;Ljava/util/Set;)V

    :cond_3
    iget-object v0, p0, Lcom/google/firebase/database/core/SyncPoint;->views:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/google/firebase/database/core/view/QuerySpec;->getParams()Lcom/google/firebase/database/core/view/QueryParams;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v3

    :cond_4
    invoke-virtual {v0, p1}, Lcom/google/firebase/database/core/view/View;->addEventRegistration(Lcom/google/firebase/database/core/EventRegistration;)V

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/core/view/View;->getInitialEvents(Lcom/google/firebase/database/core/EventRegistration;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public applyOperation(Lcom/google/firebase/database/core/operation/Operation;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/operation/Operation;",
            "Lcom/google/firebase/database/core/WriteTreeRef;",
            "Lcom/google/firebase/database/snapshot/Node;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/firebase/database/core/view/DataEvent;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/firebase/database/core/operation/Operation;->getSource()Lcom/google/firebase/database/core/operation/OperationSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/operation/OperationSource;->getQueryParams()Lcom/google/firebase/database/core/view/QueryParams;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/firebase/database/core/SyncPoint;->views:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/core/view/View;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/firebase/database/core/SyncPoint;->applyOperationToView(Lcom/google/firebase/database/core/view/View;Lcom/google/firebase/database/core/operation/Operation;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/firebase/database/core/SyncPoint;->views:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/core/view/View;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/firebase/database/core/SyncPoint;->applyOperationToView(Lcom/google/firebase/database/core/view/View;Lcom/google/firebase/database/core/operation/Operation;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getCompleteServerCache(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/database/core/SyncPoint;->views:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/core/view/View;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/core/view/View;->getCompleteServerCache(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/core/view/View;->getCompleteServerCache(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCompleteView()Lcom/google/firebase/database/core/view/View;
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/database/core/SyncPoint;->views:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/core/view/View;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/View;->getQuery()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/database/core/view/QuerySpec;->loadsAllData()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getQueryViews()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/firebase/database/core/view/View;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/firebase/database/core/SyncPoint;->views:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/core/view/View;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/View;->getQuery()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/database/core/view/QuerySpec;->loadsAllData()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method getViews()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/firebase/database/core/view/QueryParams;",
            "Lcom/google/firebase/database/core/view/View;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/core/SyncPoint;->views:Ljava/util/Map;

    return-object v0
.end method

.method public hasCompleteView()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/firebase/database/core/SyncPoint;->getCompleteView()Lcom/google/firebase/database/core/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/core/SyncPoint;->views:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public removeEventRegistration(Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/core/EventRegistration;Lcom/google/firebase/database/DatabaseError;)Lcom/google/firebase/database/core/utilities/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/view/QuerySpec;",
            "Lcom/google/firebase/database/core/EventRegistration;",
            "Lcom/google/firebase/database/DatabaseError;",
            ")",
            "Lcom/google/firebase/database/core/utilities/Pair",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/firebase/database/core/view/QuerySpec;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/firebase/database/core/view/Event;",
            ">;>;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/google/firebase/database/core/SyncPoint;->hasCompleteView()Z

    move-result v3

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/database/core/SyncPoint;->views:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/core/view/View;

    invoke-virtual {v0, p2, p3}, Lcom/google/firebase/database/core/view/View;->removeEventRegistration(Lcom/google/firebase/database/core/EventRegistration;Lcom/google/firebase/database/DatabaseError;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/View;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/View;->getQuery()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/firebase/database/core/view/QuerySpec;->loadsAllData()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/View;->getQuery()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/firebase/database/core/SyncPoint;->views:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->getParams()Lcom/google/firebase/database/core/view/QueryParams;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/core/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p2, p3}, Lcom/google/firebase/database/core/view/View;->removeEventRegistration(Lcom/google/firebase/database/core/EventRegistration;Lcom/google/firebase/database/DatabaseError;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/View;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/google/firebase/database/core/SyncPoint;->views:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->getParams()Lcom/google/firebase/database/core/view/QueryParams;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/View;->getQuery()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firebase/database/core/view/QuerySpec;->loadsAllData()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/View;->getQuery()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/google/firebase/database/core/SyncPoint;->hasCompleteView()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/database/core/view/QuerySpec;->defaultQueryAtPath(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance v0, Lcom/google/firebase/database/core/utilities/Pair;

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/database/core/utilities/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public viewExistsForQuery(Lcom/google/firebase/database/core/view/QuerySpec;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/firebase/database/core/SyncPoint;->viewForQuery(Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public viewForQuery(Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/view/View;
    .locals 2

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->loadsAllData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/firebase/database/core/SyncPoint;->getCompleteView()Lcom/google/firebase/database/core/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/core/SyncPoint;->views:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->getParams()Lcom/google/firebase/database/core/view/QueryParams;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/core/view/View;

    goto :goto_0
.end method
