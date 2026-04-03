.class Lcom/google/firebase/database/core/SyncTree$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/core/SyncTree;->ackUserWrite(JZZLcom/google/firebase/database/core/utilities/Clock;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/util/List",
        "<+",
        "Lcom/google/firebase/database/core/view/Event;",
        ">;>;"
    }
.end annotation


# instance fields
.field final this$0:Lcom/google/firebase/database/core/SyncTree;

.field final val$persist:Z

.field final val$revert:Z

.field final val$serverClock:Lcom/google/firebase/database/core/utilities/Clock;

.field final val$writeId:J


# direct methods
.method constructor <init>(Lcom/google/firebase/database/core/SyncTree;ZJZLcom/google/firebase/database/core/utilities/Clock;)V
    .locals 1

    iput-object p1, p0, Lcom/google/firebase/database/core/SyncTree$3;->this$0:Lcom/google/firebase/database/core/SyncTree;

    iput-boolean p2, p0, Lcom/google/firebase/database/core/SyncTree$3;->val$persist:Z

    iput-wide p3, p0, Lcom/google/firebase/database/core/SyncTree$3;->val$writeId:J

    iput-boolean p5, p0, Lcom/google/firebase/database/core/SyncTree$3;->val$revert:Z

    iput-object p6, p0, Lcom/google/firebase/database/core/SyncTree$3;->val$serverClock:Lcom/google/firebase/database/core/utilities/Clock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/firebase/database/core/SyncTree$3;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/firebase/database/core/view/Event;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x1

    iget-boolean v0, p0, Lcom/google/firebase/database/core/SyncTree$3;->val$persist:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/core/SyncTree$3;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-static {v0}, Lcom/google/firebase/database/core/SyncTree;->access$200(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/persistence/PersistenceManager;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/firebase/database/core/SyncTree$3;->val$writeId:J

    invoke-interface {v0, v2, v3}, Lcom/google/firebase/database/core/persistence/PersistenceManager;->removeUserWrite(J)V

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/core/SyncTree$3;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-static {v0}, Lcom/google/firebase/database/core/SyncTree;->access$300(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/WriteTree;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/firebase/database/core/SyncTree$3;->val$writeId:J

    invoke-virtual {v0, v2, v3}, Lcom/google/firebase/database/core/WriteTree;->getWrite(J)Lcom/google/firebase/database/core/UserWriteRecord;

    move-result-object v2

    iget-object v0, p0, Lcom/google/firebase/database/core/SyncTree$3;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-static {v0}, Lcom/google/firebase/database/core/SyncTree;->access$300(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/WriteTree;

    move-result-object v0

    iget-wide v4, p0, Lcom/google/firebase/database/core/SyncTree$3;->val$writeId:J

    invoke-virtual {v0, v4, v5}, Lcom/google/firebase/database/core/WriteTree;->removeWrite(J)Z

    move-result v0

    invoke-virtual {v2}, Lcom/google/firebase/database/core/UserWriteRecord;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/firebase/database/core/SyncTree$3;->val$revert:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/firebase/database/core/SyncTree$3;->val$serverClock:Lcom/google/firebase/database/core/utilities/Clock;

    invoke-static {v1}, Lcom/google/firebase/database/core/ServerValues;->generateServerValues(Lcom/google/firebase/database/core/utilities/Clock;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v2}, Lcom/google/firebase/database/core/UserWriteRecord;->isOverwrite()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/google/firebase/database/core/UserWriteRecord;->getOverwrite()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    iget-object v4, p0, Lcom/google/firebase/database/core/SyncTree$3;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-virtual {v2}, Lcom/google/firebase/database/core/UserWriteRecord;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v5

    invoke-static {v3, v4, v5, v1}, Lcom/google/firebase/database/core/ServerValues;->resolveDeferredValueSnapshot(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/Path;Ljava/util/Map;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    iget-object v3, p0, Lcom/google/firebase/database/core/SyncTree$3;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-static {v3}, Lcom/google/firebase/database/core/SyncTree;->access$200(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/persistence/PersistenceManager;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/firebase/database/core/UserWriteRecord;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Lcom/google/firebase/database/core/persistence/PersistenceManager;->applyUserWriteToServerCache(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)V

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_2
    invoke-virtual {v2}, Lcom/google/firebase/database/core/UserWriteRecord;->getMerge()Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v3

    iget-object v4, p0, Lcom/google/firebase/database/core/SyncTree$3;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-virtual {v2}, Lcom/google/firebase/database/core/UserWriteRecord;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v5

    invoke-static {v3, v4, v5, v1}, Lcom/google/firebase/database/core/ServerValues;->resolveDeferredValueMerge(Lcom/google/firebase/database/core/CompoundWrite;Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/Path;Ljava/util/Map;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v1

    iget-object v3, p0, Lcom/google/firebase/database/core/SyncTree$3;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-static {v3}, Lcom/google/firebase/database/core/SyncTree;->access$200(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/persistence/PersistenceManager;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/firebase/database/core/UserWriteRecord;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Lcom/google/firebase/database/core/persistence/PersistenceManager;->applyUserWriteToServerCache(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->emptyInstance()Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v0

    invoke-virtual {v2}, Lcom/google/firebase/database/core/UserWriteRecord;->isOverwrite()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/google/firebase/database/core/Path;->getEmptyPath()Lcom/google/firebase/database/core/Path;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->set(Lcom/google/firebase/database/core/Path;Ljava/lang/Object;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v1

    :cond_4
    iget-object v0, p0, Lcom/google/firebase/database/core/SyncTree$3;->this$0:Lcom/google/firebase/database/core/SyncTree;

    new-instance v3, Lcom/google/firebase/database/core/operation/AckUserWrite;

    invoke-virtual {v2}, Lcom/google/firebase/database/core/UserWriteRecord;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v2

    iget-boolean v4, p0, Lcom/google/firebase/database/core/SyncTree$3;->val$revert:Z

    invoke-direct {v3, v2, v1, v4}, Lcom/google/firebase/database/core/operation/AckUserWrite;-><init>(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/ImmutableTree;Z)V

    invoke-static {v0, v3}, Lcom/google/firebase/database/core/SyncTree;->access$400(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/operation/Operation;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_5
    invoke-virtual {v2}, Lcom/google/firebase/database/core/UserWriteRecord;->getMerge()Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/database/core/CompoundWrite;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/core/Path;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->set(Lcom/google/firebase/database/core/Path;Ljava/lang/Object;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v0

    move-object v1, v0

    goto :goto_2
.end method
