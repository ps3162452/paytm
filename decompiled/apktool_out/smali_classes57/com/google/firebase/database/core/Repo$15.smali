.class Lcom/google/firebase/database/core/Repo$15;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/database/core/utilities/Tree$TreeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/core/Repo;->sendReadyTransactions(Lcom/google/firebase/database/core/utilities/Tree;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/database/core/utilities/Tree$TreeVisitor",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/google/firebase/database/core/Repo$TransactionData;",
        ">;>;"
    }
.end annotation


# instance fields
.field final this$0:Lcom/google/firebase/database/core/Repo;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/core/Repo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/database/core/Repo$15;->this$0:Lcom/google/firebase/database/core/Repo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitTree(Lcom/google/firebase/database/core/utilities/Tree;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/utilities/Tree",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/firebase/database/core/Repo$TransactionData;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/core/Repo$15;->this$0:Lcom/google/firebase/database/core/Repo;

    invoke-static {v0, p1}, Lcom/google/firebase/database/core/Repo;->access$1900(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/utilities/Tree;)V

    return-void
.end method
