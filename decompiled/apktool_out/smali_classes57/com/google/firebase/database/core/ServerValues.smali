.class public Lcom/google/firebase/database/core/ServerValues;
.super Ljava/lang/Object;


# static fields
.field public static final NAME_OP_INCREMENT:Ljava/lang/String;

.field public static final NAME_OP_TIMESTAMP:Ljava/lang/String;

.field public static final NAME_SUBKEY_SERVERVALUE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0x9

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    const-string v1, "cc83d3"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/core/ServerValues;->NAME_OP_INCREMENT:Ljava/lang/String;

    new-array v0, v3, [B

    fill-array-data v0, :array_1

    const-string v1, "ba1096"

    const-wide v2, 0x41d6501fe2400000L    # 1.497399177E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/core/ServerValues;->NAME_OP_TIMESTAMP:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "878e6f"

    const v2, -0x31537c4c

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/core/ServerValues;->NAME_SUBKEY_SERVERVALUE:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0xat
        0xdt
        0x5bt
        0x41t
        0x1t
        0x5et
        0x6t
        0xdt
        0x4ct
    .end array-data

    nop

    :array_1
    .array-data 1
        0x16t
        0x8t
        0x5ct
        0x55t
        0x4at
        0x42t
        0x3t
        0xct
        0x41t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x16t
        0x44t
        0x4et
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/ValueProvider;Ljava/util/Map;)Lcom/google/firebase/database/snapshot/Node;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/google/firebase/database/core/ServerValues;->resolveDeferredValueSnapshot(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/ValueProvider;Ljava/util/Map;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    return-object v0
.end method

.method private static canBeRepresentedAsLong(Ljava/lang/Number;)Z
    .locals 1

    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static generateServerValues(Lcom/google/firebase/database/core/utilities/Clock;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/utilities/Clock;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/google/firebase/database/core/ServerValues;->NAME_OP_TIMESTAMP:Ljava/lang/String;

    invoke-interface {p0}, Lcom/google/firebase/database/core/utilities/Clock;->millis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method static resolveComplexDeferredValue(Ljava/util/Map;Lcom/google/firebase/database/core/ValueProvider;Ljava/util/Map;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/firebase/database/core/ValueProvider;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v1, 0x0

    sget-object v0, Lcom/google/firebase/database/core/ServerValues;->NAME_OP_INCREMENT:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/google/firebase/database/core/ServerValues;->NAME_OP_INCREMENT:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/Number;

    if-nez v2, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {p1}, Lcom/google/firebase/database/core/ValueProvider;->node()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/firebase/database/snapshot/Node;->isLeafNode()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lcom/google/firebase/database/snapshot/Node;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Number;

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lcom/google/firebase/database/snapshot/Node;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-static {v0}, Lcom/google/firebase/database/core/ServerValues;->canBeRepresentedAsLong(Ljava/lang/Number;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1}, Lcom/google/firebase/database/core/ServerValues;->canBeRepresentedAsLong(Ljava/lang/Number;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    add-long v6, v2, v4

    xor-long/2addr v2, v6

    xor-long/2addr v4, v6

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method public static resolveDeferredLeafValue(Ljava/lang/Object;Lcom/google/firebase/database/core/ValueProvider;Ljava/util/Map;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/google/firebase/database/core/ValueProvider;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p0, Ljava/util/Map;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    sget-object v1, Lcom/google/firebase/database/core/ServerValues;->NAME_SUBKEY_SERVERVALUE:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/firebase/database/core/ServerValues;->NAME_SUBKEY_SERVERVALUE:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/google/firebase/database/core/ServerValues;->resolveScalarDeferredValue(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_0

    move-object p0, v0

    goto :goto_0

    :cond_2
    instance-of v2, v0, Ljava/util/Map;

    if-eqz v2, :cond_3

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/database/core/ServerValues;->resolveComplexDeferredValue(Ljava/util/Map;Lcom/google/firebase/database/core/ValueProvider;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public static resolveDeferredValueMerge(Lcom/google/firebase/database/core/CompoundWrite;Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/Path;Ljava/util/Map;)Lcom/google/firebase/database/core/CompoundWrite;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/CompoundWrite;",
            "Lcom/google/firebase/database/core/SyncTree;",
            "Lcom/google/firebase/database/core/Path;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/firebase/database/core/CompoundWrite;"
        }
    .end annotation

    invoke-static {}, Lcom/google/firebase/database/core/CompoundWrite;->emptyWrite()Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/database/core/CompoundWrite;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    new-instance v4, Lcom/google/firebase/database/core/ValueProvider$DeferredValueProvider;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/core/Path;

    invoke-virtual {p2, v0}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v0

    invoke-direct {v4, p1, v0}, Lcom/google/firebase/database/core/ValueProvider$DeferredValueProvider;-><init>(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/Path;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/core/Path;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/snapshot/Node;

    invoke-static {v1, v4, p3}, Lcom/google/firebase/database/core/ServerValues;->resolveDeferredValueSnapshot(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/ValueProvider;Ljava/util/Map;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/google/firebase/database/core/CompoundWrite;->addWrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public static resolveDeferredValueSnapshot(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/Path;Ljava/util/Map;)Lcom/google/firebase/database/snapshot/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/snapshot/Node;",
            "Lcom/google/firebase/database/core/SyncTree;",
            "Lcom/google/firebase/database/core/Path;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/firebase/database/snapshot/Node;"
        }
    .end annotation

    new-instance v0, Lcom/google/firebase/database/core/ValueProvider$DeferredValueProvider;

    invoke-direct {v0, p1, p2}, Lcom/google/firebase/database/core/ValueProvider$DeferredValueProvider;-><init>(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/Path;)V

    invoke-static {p0, v0, p3}, Lcom/google/firebase/database/core/ServerValues;->resolveDeferredValueSnapshot(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/ValueProvider;Ljava/util/Map;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    return-object v0
.end method

.method private static resolveDeferredValueSnapshot(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/ValueProvider;Ljava/util/Map;)Lcom/google/firebase/database/snapshot/Node;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/snapshot/Node;",
            "Lcom/google/firebase/database/core/ValueProvider;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/firebase/database/snapshot/Node;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/google/firebase/database/snapshot/Node;->getPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->getValue()Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x9

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "08cb25"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/database/snapshot/ChildKey;->fromString(Ljava/lang/String;)Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/firebase/database/core/ValueProvider;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/ValueProvider;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/google/firebase/database/core/ServerValues;->resolveDeferredLeafValue(Ljava/lang/Object;Lcom/google/firebase/database/core/ValueProvider;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/firebase/database/snapshot/Node;->isLeafNode()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Lcom/google/firebase/database/snapshot/Node;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1, p2}, Lcom/google/firebase/database/core/ServerValues;->resolveDeferredLeafValue(Ljava/lang/Object;Lcom/google/firebase/database/core/ValueProvider;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/firebase/database/snapshot/Node;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v1, v0}, Lcom/google/firebase/database/core/utilities/Utilities;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {v1}, Lcom/google/firebase/database/snapshot/PriorityUtilities;->parsePriority(Ljava/lang/Object;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/firebase/database/snapshot/NodeUtilities;->NodeFromJSON(Ljava/lang/Object;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0

    :cond_2
    invoke-interface {p0}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    check-cast p0, Lcom/google/firebase/database/snapshot/ChildrenNode;

    new-instance v0, Lcom/google/firebase/database/core/SnapshotHolder;

    invoke-direct {v0, p0}, Lcom/google/firebase/database/core/SnapshotHolder;-><init>(Lcom/google/firebase/database/snapshot/Node;)V

    new-instance v2, Lcom/google/firebase/database/core/ServerValues$1;

    invoke-direct {v2, p1, p2, v0}, Lcom/google/firebase/database/core/ServerValues$1;-><init>(Lcom/google/firebase/database/core/ValueProvider;Ljava/util/Map;Lcom/google/firebase/database/core/SnapshotHolder;)V

    invoke-virtual {p0, v2}, Lcom/google/firebase/database/snapshot/ChildrenNode;->forEachChild(Lcom/google/firebase/database/snapshot/ChildrenNode$ChildVisitor;)V

    invoke-virtual {v0}, Lcom/google/firebase/database/core/SnapshotHolder;->getRootNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/firebase/database/snapshot/Node;->getPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lcom/google/firebase/database/core/SnapshotHolder;->getRootNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-static {v1}, Lcom/google/firebase/database/snapshot/PriorityUtilities;->parsePriority(Ljava/lang/Object;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/firebase/database/snapshot/Node;->updatePriority(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p0

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/google/firebase/database/core/SnapshotHolder;->getRootNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object p0

    goto :goto_0

    :array_0
    .array-data 1
        0x1et
        0x48t
        0x11t
        0xbt
        0x5dt
        0x47t
        0x59t
        0x4ct
        0x1at
    .end array-data
.end method

.method public static resolveDeferredValueSnapshot(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Node;Ljava/util/Map;)Lcom/google/firebase/database/snapshot/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/snapshot/Node;",
            "Lcom/google/firebase/database/snapshot/Node;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/firebase/database/snapshot/Node;"
        }
    .end annotation

    new-instance v0, Lcom/google/firebase/database/core/ValueProvider$ExistingValueProvider;

    invoke-direct {v0, p1}, Lcom/google/firebase/database/core/ValueProvider$ExistingValueProvider;-><init>(Lcom/google/firebase/database/snapshot/Node;)V

    invoke-static {p0, v0, p2}, Lcom/google/firebase/database/core/ServerValues;->resolveDeferredValueSnapshot(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/ValueProvider;Ljava/util/Map;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    return-object v0
.end method

.method static resolveScalarDeferredValue(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Lcom/google/firebase/database/core/ServerValues;->NAME_OP_TIMESTAMP:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
