.class Lcom/google/firebase/database/core/Repo$16$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/core/Repo$16;->onRequestResult(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lcom/google/firebase/database/core/Repo$16;

.field final val$snap:Lcom/google/firebase/database/DataSnapshot;

.field final val$txn:Lcom/google/firebase/database/core/Repo$TransactionData;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/core/Repo$16;Lcom/google/firebase/database/core/Repo$TransactionData;Lcom/google/firebase/database/DataSnapshot;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/database/core/Repo$16$1;->this$1:Lcom/google/firebase/database/core/Repo$16;

    iput-object p2, p0, Lcom/google/firebase/database/core/Repo$16$1;->val$txn:Lcom/google/firebase/database/core/Repo$TransactionData;

    iput-object p3, p0, Lcom/google/firebase/database/core/Repo$16$1;->val$snap:Lcom/google/firebase/database/DataSnapshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/database/core/Repo$16$1;->val$txn:Lcom/google/firebase/database/core/Repo$TransactionData;

    invoke-static {v0}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$2300(Lcom/google/firebase/database/core/Repo$TransactionData;)Lcom/google/firebase/database/Transaction$Handler;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/firebase/database/core/Repo$16$1;->val$snap:Lcom/google/firebase/database/DataSnapshot;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/firebase/database/Transaction$Handler;->onComplete(Lcom/google/firebase/database/DatabaseError;ZLcom/google/firebase/database/DataSnapshot;)V

    return-void
.end method
