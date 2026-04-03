.class public Lcom/google/firebase/database/core/view/EventGenerator;
.super Ljava/lang/Object;


# instance fields
.field private final index:Lcom/google/firebase/database/snapshot/Index;

.field private final query:Lcom/google/firebase/database/core/view/QuerySpec;


# direct methods
.method public constructor <init>(Lcom/google/firebase/database/core/view/QuerySpec;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/database/core/view/EventGenerator;->query:Lcom/google/firebase/database/core/view/QuerySpec;

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->getIndex()Lcom/google/firebase/database/snapshot/Index;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/core/view/EventGenerator;->index:Lcom/google/firebase/database/snapshot/Index;

    return-void
.end method

.method static synthetic access$000(Lcom/google/firebase/database/core/view/EventGenerator;)Lcom/google/firebase/database/snapshot/Index;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/core/view/EventGenerator;->index:Lcom/google/firebase/database/snapshot/Index;

    return-object v0
.end method

.method private changeComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/firebase/database/core/view/Change;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/firebase/database/core/view/EventGenerator$1;

    invoke-direct {v0, p0}, Lcom/google/firebase/database/core/view/EventGenerator$1;-><init>(Lcom/google/firebase/database/core/view/EventGenerator;)V

    return-object v0
.end method

.method private generateEvent(Lcom/google/firebase/database/core/view/Change;Lcom/google/firebase/database/core/EventRegistration;Lcom/google/firebase/database/snapshot/IndexedNode;)Lcom/google/firebase/database/core/view/DataEvent;
    .locals 3

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/Change;->getEventType()Lcom/google/firebase/database/core/view/Event$EventType;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/database/core/view/Event$EventType;->VALUE:Lcom/google/firebase/database/core/view/Event$EventType;

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/core/view/Event$EventType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/Change;->getEventType()Lcom/google/firebase/database/core/view/Event$EventType;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/database/core/view/Event$EventType;->CHILD_REMOVED:Lcom/google/firebase/database/core/view/Event$EventType;

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/core/view/Event$EventType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/firebase/database/core/view/EventGenerator;->query:Lcom/google/firebase/database/core/view/QuerySpec;

    invoke-virtual {p2, p1, v0}, Lcom/google/firebase/database/core/EventRegistration;->createEvent(Lcom/google/firebase/database/core/view/Change;Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/view/DataEvent;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/Change;->getChildKey()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/Change;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/database/snapshot/IndexedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/database/core/view/EventGenerator;->index:Lcom/google/firebase/database/snapshot/Index;

    invoke-virtual {p3, v0, v1, v2}, Lcom/google/firebase/database/snapshot/IndexedNode;->getPredecessorChildName(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Index;)Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/core/view/Change;->changeWithPrevName(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/view/Change;

    move-result-object p1

    goto :goto_0
.end method

.method private generateEventsForType(Ljava/util/List;Lcom/google/firebase/database/core/view/Event$EventType;Ljava/util/List;Ljava/util/List;Lcom/google/firebase/database/snapshot/IndexedNode;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/firebase/database/core/view/DataEvent;",
            ">;",
            "Lcom/google/firebase/database/core/view/Event$EventType;",
            "Ljava/util/List",
            "<",
            "Lcom/google/firebase/database/core/view/Change;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/firebase/database/core/EventRegistration;",
            ">;",
            "Lcom/google/firebase/database/snapshot/IndexedNode;",
            ")V"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/core/view/Change;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/Change;->getEventType()Lcom/google/firebase/database/core/view/Event$EventType;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/google/firebase/database/core/view/Event$EventType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/google/firebase/database/core/view/EventGenerator;->changeComparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/firebase/database/core/view/Change;

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/core/EventRegistration;

    invoke-virtual {v0, p2}, Lcom/google/firebase/database/core/EventRegistration;->respondsTo(Lcom/google/firebase/database/core/view/Event$EventType;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0, v1, v0, p5}, Lcom/google/firebase/database/core/view/EventGenerator;->generateEvent(Lcom/google/firebase/database/core/view/Change;Lcom/google/firebase/database/core/EventRegistration;Lcom/google/firebase/database/snapshot/IndexedNode;)Lcom/google/firebase/database/core/view/DataEvent;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public generateEventsForChanges(Ljava/util/List;Lcom/google/firebase/database/snapshot/IndexedNode;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/firebase/database/core/view/Change;",
            ">;",
            "Lcom/google/firebase/database/snapshot/IndexedNode;",
            "Ljava/util/List",
            "<",
            "Lcom/google/firebase/database/core/EventRegistration;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/firebase/database/core/view/DataEvent;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/core/view/Change;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/Change;->getEventType()Lcom/google/firebase/database/core/view/Event$EventType;

    move-result-object v3

    sget-object v4, Lcom/google/firebase/database/core/view/Event$EventType;->CHILD_CHANGED:Lcom/google/firebase/database/core/view/Event$EventType;

    invoke-virtual {v3, v4}, Lcom/google/firebase/database/core/view/Event$EventType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/firebase/database/core/view/EventGenerator;->index:Lcom/google/firebase/database/snapshot/Index;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/Change;->getOldIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firebase/database/snapshot/IndexedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/Change;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/firebase/database/snapshot/IndexedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/firebase/database/snapshot/Index;->indexedValueChanged(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Node;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/Change;->getChildKey()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/Change;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/google/firebase/database/core/view/Change;->childMovedChange(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/IndexedNode;)Lcom/google/firebase/database/core/view/Change;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/google/firebase/database/core/view/Event$EventType;->CHILD_REMOVED:Lcom/google/firebase/database/core/view/Event$EventType;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/database/core/view/EventGenerator;->generateEventsForType(Ljava/util/List;Lcom/google/firebase/database/core/view/Event$EventType;Ljava/util/List;Ljava/util/List;Lcom/google/firebase/database/snapshot/IndexedNode;)V

    sget-object v2, Lcom/google/firebase/database/core/view/Event$EventType;->CHILD_ADDED:Lcom/google/firebase/database/core/view/Event$EventType;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/database/core/view/EventGenerator;->generateEventsForType(Ljava/util/List;Lcom/google/firebase/database/core/view/Event$EventType;Ljava/util/List;Ljava/util/List;Lcom/google/firebase/database/snapshot/IndexedNode;)V

    sget-object v2, Lcom/google/firebase/database/core/view/Event$EventType;->CHILD_MOVED:Lcom/google/firebase/database/core/view/Event$EventType;

    move-object v0, p0

    move-object v3, v6

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/database/core/view/EventGenerator;->generateEventsForType(Ljava/util/List;Lcom/google/firebase/database/core/view/Event$EventType;Ljava/util/List;Ljava/util/List;Lcom/google/firebase/database/snapshot/IndexedNode;)V

    sget-object v2, Lcom/google/firebase/database/core/view/Event$EventType;->CHILD_CHANGED:Lcom/google/firebase/database/core/view/Event$EventType;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/database/core/view/EventGenerator;->generateEventsForType(Ljava/util/List;Lcom/google/firebase/database/core/view/Event$EventType;Ljava/util/List;Ljava/util/List;Lcom/google/firebase/database/snapshot/IndexedNode;)V

    sget-object v2, Lcom/google/firebase/database/core/view/Event$EventType;->VALUE:Lcom/google/firebase/database/core/view/Event$EventType;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/database/core/view/EventGenerator;->generateEventsForType(Ljava/util/List;Lcom/google/firebase/database/core/view/Event$EventType;Ljava/util/List;Ljava/util/List;Lcom/google/firebase/database/snapshot/IndexedNode;)V

    return-object v1
.end method
