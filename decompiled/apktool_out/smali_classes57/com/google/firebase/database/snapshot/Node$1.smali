.class Lcom/google/firebase/database/snapshot/Node$1;
.super Lcom/google/firebase/database/snapshot/ChildrenNode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/snapshot/Node;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/database/snapshot/ChildrenNode;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/firebase/database/snapshot/Node;)I
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/firebase/database/snapshot/Node;

    invoke-virtual {p0, p1}, Lcom/google/firebase/database/snapshot/Node$1;->compareTo(Lcom/google/firebase/database/snapshot/Node;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;
    .locals 1

    invoke-virtual {p1}, Lcom/google/firebase/database/snapshot/ChildKey;->isPriorityChildName()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/firebase/database/snapshot/Node$1;->getPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object v0

    goto :goto_0
.end method

.method public getPriority()Lcom/google/firebase/database/snapshot/Node;
    .locals 0

    return-object p0
.end method

.method public hasChild(Lcom/google/firebase/database/snapshot/ChildKey;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "77ba3e"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0xbt
        0x7at
        0x3t
        0x19t
        0x13t
        0x2bt
        0x58t
        0x53t
        0x7t
        0x5ft
    .end array-data
.end method
