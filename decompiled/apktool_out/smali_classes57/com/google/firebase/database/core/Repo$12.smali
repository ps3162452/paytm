.class Lcom/google/firebase/database/core/Repo$12;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/database/core/SparseSnapshotTree$SparseSnapshotTreeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/core/Repo;->runOnDisconnectEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/google/firebase/database/core/Repo;

.field final val$events:Ljava/util/List;

.field final val$serverValues:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/core/Repo;Ljava/util/Map;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/database/core/Repo$12;->this$0:Lcom/google/firebase/database/core/Repo;

    iput-object p2, p0, Lcom/google/firebase/database/core/Repo$12;->val$serverValues:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/firebase/database/core/Repo$12;->val$events:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitTree(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/database/core/Repo$12;->this$0:Lcom/google/firebase/database/core/Repo;

    invoke-static {v0}, Lcom/google/firebase/database/core/Repo;->access$1000(Lcom/google/firebase/database/core/Repo;)Lcom/google/firebase/database/core/SyncTree;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/database/core/SyncTree;->calcCompleteEventCache(Lcom/google/firebase/database/core/Path;Ljava/util/List;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/core/Repo$12;->val$serverValues:Ljava/util/Map;

    invoke-static {p2, v0, v1}, Lcom/google/firebase/database/core/ServerValues;->resolveDeferredValueSnapshot(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Node;Ljava/util/Map;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/core/Repo$12;->val$events:Ljava/util/List;

    iget-object v2, p0, Lcom/google/firebase/database/core/Repo$12;->this$0:Lcom/google/firebase/database/core/Repo;

    invoke-static {v2}, Lcom/google/firebase/database/core/Repo;->access$1000(Lcom/google/firebase/database/core/Repo;)Lcom/google/firebase/database/core/SyncTree;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/google/firebase/database/core/SyncTree;->applyServerOverwrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/google/firebase/database/core/Repo$12;->this$0:Lcom/google/firebase/database/core/Repo;

    const/16 v1, -0x9

    invoke-static {v0, p1, v1}, Lcom/google/firebase/database/core/Repo;->access$1100(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/Path;I)Lcom/google/firebase/database/core/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/core/Repo$12;->this$0:Lcom/google/firebase/database/core/Repo;

    invoke-static {v1, v0}, Lcom/google/firebase/database/core/Repo;->access$1200(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    return-void
.end method
