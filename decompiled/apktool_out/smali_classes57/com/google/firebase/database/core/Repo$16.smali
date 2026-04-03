.class Lcom/google/firebase/database/core/Repo$16;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/database/connection/RequestResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/core/Repo;->sendTransactionQueue(Ljava/util/List;Lcom/google/firebase/database/core/Path;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/google/firebase/database/core/Repo;

.field final val$path:Lcom/google/firebase/database/core/Path;

.field final val$queue:Ljava/util/List;

.field final val$repo:Lcom/google/firebase/database/core/Repo;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/Path;Ljava/util/List;Lcom/google/firebase/database/core/Repo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/database/core/Repo$16;->this$0:Lcom/google/firebase/database/core/Repo;

    iput-object p2, p0, Lcom/google/firebase/database/core/Repo$16;->val$path:Lcom/google/firebase/database/core/Path;

    iput-object p3, p0, Lcom/google/firebase/database/core/Repo$16;->val$queue:Ljava/util/List;

    iput-object p4, p0, Lcom/google/firebase/database/core/Repo$16;->val$repo:Lcom/google/firebase/database/core/Repo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const/4 v4, 0x0

    invoke-static {p1, p2}, Lcom/google/firebase/database/core/Repo;->access$600(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/DatabaseError;

    move-result-object v1

    iget-object v0, p0, Lcom/google/firebase/database/core/Repo$16;->this$0:Lcom/google/firebase/database/core/Repo;

    const/16 v2, 0xb

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "71dc0f"

    const/16 v5, -0x7dfb

    invoke-static {v2, v3, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/database/core/Repo$16;->val$path:Lcom/google/firebase/database/core/Path;

    invoke-static {v0, v2, v3, v1}, Lcom/google/firebase/database/core/Repo;->access$700(Lcom/google/firebase/database/core/Repo;Ljava/lang/String;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/DatabaseError;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    if-nez v1, :cond_1

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/firebase/database/core/Repo$16;->val$queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/core/Repo$TransactionData;

    sget-object v1, Lcom/google/firebase/database/core/Repo$TransactionStatus;->COMPLETED:Lcom/google/firebase/database/core/Repo$TransactionStatus;

    invoke-static {v0, v1}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$1702(Lcom/google/firebase/database/core/Repo$TransactionData;Lcom/google/firebase/database/core/Repo$TransactionStatus;)Lcom/google/firebase/database/core/Repo$TransactionStatus;

    iget-object v1, p0, Lcom/google/firebase/database/core/Repo$16;->this$0:Lcom/google/firebase/database/core/Repo;

    invoke-static {v1}, Lcom/google/firebase/database/core/Repo;->access$1000(Lcom/google/firebase/database/core/Repo;)Lcom/google/firebase/database/core/SyncTree;

    move-result-object v1

    invoke-static {v0}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$1800(Lcom/google/firebase/database/core/Repo$TransactionData;)J

    move-result-wide v2

    iget-object v5, p0, Lcom/google/firebase/database/core/Repo$16;->this$0:Lcom/google/firebase/database/core/Repo;

    invoke-static {v5}, Lcom/google/firebase/database/core/Repo;->access$2200(Lcom/google/firebase/database/core/Repo;)Lcom/google/firebase/database/core/utilities/OffsetClock;

    move-result-object v6

    move v5, v4

    invoke-virtual/range {v1 .. v6}, Lcom/google/firebase/database/core/SyncTree;->ackUserWrite(JZZLcom/google/firebase/database/core/utilities/Clock;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$1600(Lcom/google/firebase/database/core/Repo$TransactionData;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/database/core/Repo$16$1;

    iget-object v3, p0, Lcom/google/firebase/database/core/Repo$16;->val$repo:Lcom/google/firebase/database/core/Repo;

    invoke-static {v0}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$2100(Lcom/google/firebase/database/core/Repo$TransactionData;)Lcom/google/firebase/database/core/Path;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/google/firebase/database/InternalHelpers;->createReference(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v3

    invoke-static {v1}, Lcom/google/firebase/database/snapshot/IndexedNode;->from(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/firebase/database/InternalHelpers;->createDataSnapshot(Lcom/google/firebase/database/DatabaseReference;Lcom/google/firebase/database/snapshot/IndexedNode;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object v1

    invoke-direct {v2, p0, v0, v1}, Lcom/google/firebase/database/core/Repo$16$1;-><init>(Lcom/google/firebase/database/core/Repo$16;Lcom/google/firebase/database/core/Repo$TransactionData;Lcom/google/firebase/database/DataSnapshot;)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/firebase/database/core/Repo$16;->this$0:Lcom/google/firebase/database/core/Repo;

    new-instance v2, Lcom/google/firebase/database/core/ValueEventRegistration;

    iget-object v3, p0, Lcom/google/firebase/database/core/Repo$16;->this$0:Lcom/google/firebase/database/core/Repo;

    invoke-static {v0}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$2400(Lcom/google/firebase/database/core/Repo$TransactionData;)Lcom/google/firebase/database/ValueEventListener;

    move-result-object v5

    invoke-static {v0}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$2100(Lcom/google/firebase/database/core/Repo$TransactionData;)Lcom/google/firebase/database/core/Path;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/database/core/view/QuerySpec;->defaultQueryAtPath(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v0

    invoke-direct {v2, v3, v5, v0}, Lcom/google/firebase/database/core/ValueEventRegistration;-><init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/ValueEventListener;Lcom/google/firebase/database/core/view/QuerySpec;)V

    invoke-virtual {v1, v2}, Lcom/google/firebase/database/core/Repo;->removeEventCallback(Lcom/google/firebase/database/core/EventRegistration;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/core/Repo$16;->this$0:Lcom/google/firebase/database/core/Repo;

    invoke-static {v0}, Lcom/google/firebase/database/core/Repo;->access$2500(Lcom/google/firebase/database/core/Repo;)Lcom/google/firebase/database/core/utilities/Tree;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/database/core/Repo$16;->val$path:Lcom/google/firebase/database/core/Path;

    invoke-virtual {v1, v2}, Lcom/google/firebase/database/core/utilities/Tree;->subTree(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/utilities/Tree;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/firebase/database/core/Repo;->access$2600(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/utilities/Tree;)V

    iget-object v0, p0, Lcom/google/firebase/database/core/Repo$16;->this$0:Lcom/google/firebase/database/core/Repo;

    invoke-static {v0}, Lcom/google/firebase/database/core/Repo;->access$2700(Lcom/google/firebase/database/core/Repo;)V

    iget-object v0, p0, Lcom/google/firebase/database/core/Repo$16;->val$repo:Lcom/google/firebase/database/core/Repo;

    invoke-static {v0, v7}, Lcom/google/firebase/database/core/Repo;->access$500(Lcom/google/firebase/database/core/Repo;Ljava/util/List;)V

    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_5

    iget-object v1, p0, Lcom/google/firebase/database/core/Repo$16;->this$0:Lcom/google/firebase/database/core/Repo;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Lcom/google/firebase/database/core/Repo;->postEvent(Ljava/lang/Runnable;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/google/firebase/database/DatabaseError;->getCode()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/google/firebase/database/core/Repo$16;->val$queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/core/Repo$TransactionData;

    invoke-static {v0}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$1700(Lcom/google/firebase/database/core/Repo$TransactionData;)Lcom/google/firebase/database/core/Repo$TransactionStatus;

    move-result-object v2

    sget-object v3, Lcom/google/firebase/database/core/Repo$TransactionStatus;->SENT_NEEDS_ABORT:Lcom/google/firebase/database/core/Repo$TransactionStatus;

    if-ne v2, v3, :cond_2

    sget-object v2, Lcom/google/firebase/database/core/Repo$TransactionStatus;->NEEDS_ABORT:Lcom/google/firebase/database/core/Repo$TransactionStatus;

    invoke-static {v0, v2}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$1702(Lcom/google/firebase/database/core/Repo$TransactionData;Lcom/google/firebase/database/core/Repo$TransactionStatus;)Lcom/google/firebase/database/core/Repo$TransactionStatus;

    goto :goto_2

    :cond_2
    sget-object v2, Lcom/google/firebase/database/core/Repo$TransactionStatus;->RUN:Lcom/google/firebase/database/core/Repo$TransactionStatus;

    invoke-static {v0, v2}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$1702(Lcom/google/firebase/database/core/Repo$TransactionData;Lcom/google/firebase/database/core/Repo$TransactionStatus;)Lcom/google/firebase/database/core/Repo$TransactionStatus;

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/google/firebase/database/core/Repo$16;->val$queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/core/Repo$TransactionData;

    sget-object v3, Lcom/google/firebase/database/core/Repo$TransactionStatus;->NEEDS_ABORT:Lcom/google/firebase/database/core/Repo$TransactionStatus;

    invoke-static {v0, v3}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$1702(Lcom/google/firebase/database/core/Repo$TransactionData;Lcom/google/firebase/database/core/Repo$TransactionStatus;)Lcom/google/firebase/database/core/Repo$TransactionStatus;

    invoke-static {v0, v1}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$2802(Lcom/google/firebase/database/core/Repo$TransactionData;Lcom/google/firebase/database/DatabaseError;)Lcom/google/firebase/database/DatabaseError;

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/google/firebase/database/core/Repo$16;->this$0:Lcom/google/firebase/database/core/Repo;

    iget-object v1, p0, Lcom/google/firebase/database/core/Repo$16;->val$path:Lcom/google/firebase/database/core/Path;

    invoke-static {v0, v1}, Lcom/google/firebase/database/core/Repo;->access$1200(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    :cond_5
    return-void

    :array_0
    .array-data 1
        0x63t
        0x43t
        0x5t
        0xdt
        0x43t
        0x7t
        0x54t
        0x45t
        0xdt
        0xct
        0x5et
    .end array-data
.end method
