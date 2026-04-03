.class Lcom/google/firebase/database/core/SyncTree$ListenContainer;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/database/connection/ListenHashProvider;
.implements Lcom/google/firebase/database/core/SyncTree$CompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/core/SyncTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenContainer"
.end annotation


# instance fields
.field private final tag:Lcom/google/firebase/database/core/Tag;

.field final this$0:Lcom/google/firebase/database/core/SyncTree;

.field private final view:Lcom/google/firebase/database/core/view/View;


# direct methods
.method public constructor <init>(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/google/firebase/database/core/SyncTree$ListenContainer;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/firebase/database/core/SyncTree$ListenContainer;->view:Lcom/google/firebase/database/core/view/View;

    invoke-virtual {p2}, Lcom/google/firebase/database/core/view/View;->getQuery()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/firebase/database/core/SyncTree;->access$000(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/Tag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/core/SyncTree$ListenContainer;->tag:Lcom/google/firebase/database/core/Tag;

    return-void
.end method

.method static synthetic access$1400(Lcom/google/firebase/database/core/SyncTree$ListenContainer;)Lcom/google/firebase/database/core/Tag;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/core/SyncTree$ListenContainer;->tag:Lcom/google/firebase/database/core/Tag;

    return-object v0
.end method


# virtual methods
.method public getCompoundHash()Lcom/google/firebase/database/connection/CompoundHash;
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/database/core/SyncTree$ListenContainer;->view:Lcom/google/firebase/database/core/view/View;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/View;->getServerCache()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/database/snapshot/CompoundHash;->fromNode(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/CompoundHash;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/database/snapshot/CompoundHash;->getPosts()Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/core/Path;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/Path;->asList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/firebase/database/connection/CompoundHash;

    invoke-virtual {v1}, Lcom/google/firebase/database/snapshot/CompoundHash;->getHashes()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/google/firebase/database/connection/CompoundHash;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public getSimpleHash()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/core/SyncTree$ListenContainer;->view:Lcom/google/firebase/database/core/view/View;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/View;->getServerCache()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->getHash()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onListenComplete(Lcom/google/firebase/database/DatabaseError;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/DatabaseError;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/google/firebase/database/core/view/Event;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/google/firebase/database/core/SyncTree$ListenContainer;->view:Lcom/google/firebase/database/core/view/View;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/View;->getQuery()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/core/SyncTree$ListenContainer;->tag:Lcom/google/firebase/database/core/Tag;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/core/SyncTree$ListenContainer;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/core/SyncTree;->applyTaggedListenComplete(Lcom/google/firebase/database/core/Tag;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/firebase/database/core/SyncTree$ListenContainer;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/QuerySpec;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/firebase/database/core/SyncTree;->applyListenComplete(Lcom/google/firebase/database/core/Path;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/firebase/database/core/SyncTree$ListenContainer;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-static {v0}, Lcom/google/firebase/database/core/SyncTree;->access$100(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/logging/LogWrapper;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xa

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "808d41"

    const/4 v4, 0x1

    invoke-static {v2, v3, v5, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/database/core/SyncTree$ListenContainer;->view:Lcom/google/firebase/database/core/view/View;

    invoke-virtual {v2}, Lcom/google/firebase/database/core/view/View;->getQuery()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/database/core/view/QuerySpec;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x9

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "397b39"

    invoke-static {v2, v3, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/firebase/database/DatabaseError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/logging/LogWrapper;->warn(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/firebase/database/core/SyncTree$ListenContainer;->this$0:Lcom/google/firebase/database/core/SyncTree;

    iget-object v1, p0, Lcom/google/firebase/database/core/SyncTree$ListenContainer;->view:Lcom/google/firebase/database/core/view/View;

    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/View;->getQuery()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/database/core/SyncTree;->removeAllEventRegistrations(Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/DatabaseError;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x74t
        0x59t
        0x4bt
        0x10t
        0x51t
        0x5ft
        0x18t
        0x51t
        0x4ct
        0x44t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x13t
        0x5ft
        0x56t
        0xbt
        0x5ft
        0x5ct
        0x57t
        0x3t
        0x17t
    .end array-data
.end method

.method public shouldIncludeCompoundHash()Z
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/database/core/SyncTree$ListenContainer;->view:Lcom/google/firebase/database/core/view/View;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/View;->getServerCache()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/database/core/utilities/NodeSizeEstimator;->estimateSerializedNodeSize(Lcom/google/firebase/database/snapshot/Node;)J

    move-result-wide v0

    const-wide/16 v2, 0x400

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
