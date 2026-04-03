.class Lcom/google/firebase/database/core/view/EventGenerator$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/core/view/EventGenerator;->changeComparator()Ljava/util/Comparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/firebase/database/core/view/Change;",
        ">;"
    }
.end annotation


# static fields
.field static final $assertionsDisabled:Z


# instance fields
.field final this$0:Lcom/google/firebase/database/core/view/EventGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/database/core/view/EventGenerator;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/database/core/view/EventGenerator$1;->this$0:Lcom/google/firebase/database/core/view/EventGenerator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/firebase/database/core/view/Change;Lcom/google/firebase/database/core/view/Change;)I
    .locals 4

    new-instance v0, Lcom/google/firebase/database/snapshot/NamedNode;

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/Change;->getChildKey()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/Change;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/database/snapshot/IndexedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/database/snapshot/NamedNode;-><init>(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)V

    new-instance v1, Lcom/google/firebase/database/snapshot/NamedNode;

    invoke-virtual {p2}, Lcom/google/firebase/database/core/view/Change;->getChildKey()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/firebase/database/core/view/Change;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/database/snapshot/IndexedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/firebase/database/snapshot/NamedNode;-><init>(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)V

    iget-object v2, p0, Lcom/google/firebase/database/core/view/EventGenerator$1;->this$0:Lcom/google/firebase/database/core/view/EventGenerator;

    invoke-static {v2}, Lcom/google/firebase/database/core/view/EventGenerator;->access$000(Lcom/google/firebase/database/core/view/EventGenerator;)Lcom/google/firebase/database/snapshot/Index;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/google/firebase/database/snapshot/Index;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/firebase/database/core/view/Change;

    check-cast p2, Lcom/google/firebase/database/core/view/Change;

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/database/core/view/EventGenerator$1;->compare(Lcom/google/firebase/database/core/view/Change;Lcom/google/firebase/database/core/view/Change;)I

    move-result v0

    return v0
.end method
