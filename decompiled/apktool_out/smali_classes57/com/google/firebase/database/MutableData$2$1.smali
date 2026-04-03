.class Lcom/google/firebase/database/MutableData$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/MutableData$2;->iterator()Ljava/util/Iterator;
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
        "Lcom/google/firebase/database/MutableData;",
        ">;"
    }
.end annotation


# instance fields
.field final this$1:Lcom/google/firebase/database/MutableData$2;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/MutableData$2;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/database/MutableData$2$1;->this$1:Lcom/google/firebase/database/MutableData$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/MutableData$2$1;->this$1:Lcom/google/firebase/database/MutableData$2;

    iget-object v0, v0, Lcom/google/firebase/database/MutableData$2;->val$iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Lcom/google/firebase/database/MutableData;
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/database/MutableData$2$1;->this$1:Lcom/google/firebase/database/MutableData$2;

    iget-object v0, v0, Lcom/google/firebase/database/MutableData$2;->val$iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/snapshot/NamedNode;

    new-instance v1, Lcom/google/firebase/database/MutableData;

    iget-object v2, p0, Lcom/google/firebase/database/MutableData$2$1;->this$1:Lcom/google/firebase/database/MutableData$2;

    iget-object v2, v2, Lcom/google/firebase/database/MutableData$2;->this$0:Lcom/google/firebase/database/MutableData;

    invoke-static {v2}, Lcom/google/firebase/database/MutableData;->access$000(Lcom/google/firebase/database/MutableData;)Lcom/google/firebase/database/core/SnapshotHolder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/database/MutableData$2$1;->this$1:Lcom/google/firebase/database/MutableData$2;

    iget-object v3, v3, Lcom/google/firebase/database/MutableData$2;->this$0:Lcom/google/firebase/database/MutableData;

    invoke-static {v3}, Lcom/google/firebase/database/MutableData;->access$100(Lcom/google/firebase/database/MutableData;)Lcom/google/firebase/database/core/Path;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/Path;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/google/firebase/database/MutableData;-><init>(Lcom/google/firebase/database/core/SnapshotHolder;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/MutableData$1;)V

    return-object v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/firebase/database/MutableData$2$1;->next()Lcom/google/firebase/database/MutableData;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 6

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x25

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "af594d"

    const-wide/32 v4, -0x5d385cc8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x13t
        0x3t
        0x58t
        0x56t
        0x42t
        0x1t
        0x41t
        0x5t
        0x54t
        0x55t
        0x58t
        0x1t
        0x5t
        0x46t
        0x5at
        0x57t
        0x14t
        0xdt
        0xct
        0xbt
        0x40t
        0x4dt
        0x55t
        0x6t
        0xdt
        0x3t
        0x15t
        0x5at
        0x5bt
        0x8t
        0xdt
        0x3t
        0x56t
        0x4dt
        0x5dt
        0xbt
        0xft
    .end array-data
.end method
