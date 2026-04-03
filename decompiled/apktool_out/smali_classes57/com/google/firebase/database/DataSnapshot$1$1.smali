.class Lcom/google/firebase/database/DataSnapshot$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/DataSnapshot$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/google/firebase/database/DataSnapshot;",
        ">;"
    }
.end annotation


# instance fields
.field final this$1:Lcom/google/firebase/database/DataSnapshot$1;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/DataSnapshot$1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/database/DataSnapshot$1$1;->this$1:Lcom/google/firebase/database/DataSnapshot$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/DataSnapshot$1$1;->this$1:Lcom/google/firebase/database/DataSnapshot$1;

    iget-object v0, v0, Lcom/google/firebase/database/DataSnapshot$1;->val$iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Lcom/google/firebase/database/DataSnapshot;
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/database/DataSnapshot$1$1;->this$1:Lcom/google/firebase/database/DataSnapshot$1;

    iget-object v0, v0, Lcom/google/firebase/database/DataSnapshot$1;->val$iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/snapshot/NamedNode;

    new-instance v1, Lcom/google/firebase/database/DataSnapshot;

    iget-object v2, p0, Lcom/google/firebase/database/DataSnapshot$1$1;->this$1:Lcom/google/firebase/database/DataSnapshot$1;

    iget-object v2, v2, Lcom/google/firebase/database/DataSnapshot$1;->this$0:Lcom/google/firebase/database/DataSnapshot;

    invoke-static {v2}, Lcom/google/firebase/database/DataSnapshot;->access$000(Lcom/google/firebase/database/DataSnapshot;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/database/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/firebase/database/snapshot/NamedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/database/snapshot/IndexedNode;->from(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/firebase/database/DataSnapshot;-><init>(Lcom/google/firebase/database/DatabaseReference;Lcom/google/firebase/database/snapshot/IndexedNode;)V

    return-object v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/firebase/database/DataSnapshot$1$1;->next()Lcom/google/firebase/database/DataSnapshot;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 6

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x25

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "993005"

    const-wide/32 v4, 0x29baaf69

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x4bt
        0x5ct
        0x5et
        0x5ft
        0x46t
        0x50t
        0x19t
        0x5at
        0x52t
        0x5ct
        0x5ct
        0x50t
        0x5dt
        0x19t
        0x5ct
        0x5et
        0x10t
        0x5ct
        0x54t
        0x54t
        0x46t
        0x44t
        0x51t
        0x57t
        0x55t
        0x5ct
        0x13t
        0x53t
        0x5ft
        0x59t
        0x55t
        0x5ct
        0x50t
        0x44t
        0x59t
        0x5at
        0x57t
    .end array-data
.end method
