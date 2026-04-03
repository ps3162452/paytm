.class public Lcom/google/firebase/database/snapshot/BooleanNode;
.super Lcom/google/firebase/database/snapshot/LeafNode;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/database/snapshot/LeafNode",
        "<",
        "Lcom/google/firebase/database/snapshot/BooleanNode;",
        ">;"
    }
.end annotation


# instance fields
.field private final value:Z


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Lcom/google/firebase/database/snapshot/Node;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/google/firebase/database/snapshot/LeafNode;-><init>(Lcom/google/firebase/database/snapshot/Node;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/firebase/database/snapshot/BooleanNode;->value:Z

    return-void
.end method


# virtual methods
.method protected compareLeafValues(Lcom/google/firebase/database/snapshot/BooleanNode;)I
    .locals 2

    iget-boolean v0, p0, Lcom/google/firebase/database/snapshot/BooleanNode;->value:Z

    iget-boolean v1, p1, Lcom/google/firebase/database/snapshot/BooleanNode;->value:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected bridge synthetic compareLeafValues(Lcom/google/firebase/database/snapshot/LeafNode;)I
    .locals 1

    check-cast p1, Lcom/google/firebase/database/snapshot/BooleanNode;

    invoke-virtual {p0, p1}, Lcom/google/firebase/database/snapshot/BooleanNode;->compareLeafValues(Lcom/google/firebase/database/snapshot/BooleanNode;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/firebase/database/snapshot/BooleanNode;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/google/firebase/database/snapshot/BooleanNode;

    iget-boolean v1, p0, Lcom/google/firebase/database/snapshot/BooleanNode;->value:Z

    iget-boolean v2, p1, Lcom/google/firebase/database/snapshot/BooleanNode;->value:Z

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/firebase/database/snapshot/BooleanNode;->priority:Lcom/google/firebase/database/snapshot/Node;

    iget-object v2, p1, Lcom/google/firebase/database/snapshot/BooleanNode;->priority:Lcom/google/firebase/database/snapshot/Node;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getHashRepresentation(Lcom/google/firebase/database/snapshot/Node$HashVersion;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/firebase/database/snapshot/BooleanNode;->getPriorityHash(Lcom/google/firebase/database/snapshot/Node$HashVersion;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x8

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "e52566"

    const/16 v3, -0x3d90

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/firebase/database/snapshot/BooleanNode;->value:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x7t
        0x5at
        0x5dt
        0x59t
        0x53t
        0x57t
        0xbt
        0xft
    .end array-data
.end method

.method protected getLeafType()Lcom/google/firebase/database/snapshot/LeafNode$LeafType;
    .locals 1

    sget-object v0, Lcom/google/firebase/database/snapshot/LeafNode$LeafType;->Boolean:Lcom/google/firebase/database/snapshot/LeafNode$LeafType;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lcom/google/firebase/database/snapshot/BooleanNode;->value:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Lcom/google/firebase/database/snapshot/BooleanNode;->value:Z

    iget-object v1, p0, Lcom/google/firebase/database/snapshot/BooleanNode;->priority:Lcom/google/firebase/database/snapshot/Node;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public updatePriority(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/BooleanNode;
    .locals 2

    new-instance v0, Lcom/google/firebase/database/snapshot/BooleanNode;

    iget-boolean v1, p0, Lcom/google/firebase/database/snapshot/BooleanNode;->value:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/firebase/database/snapshot/BooleanNode;-><init>(Ljava/lang/Boolean;Lcom/google/firebase/database/snapshot/Node;)V

    return-object v0
.end method

.method public bridge synthetic updatePriority(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/firebase/database/snapshot/BooleanNode;->updatePriority(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/BooleanNode;

    move-result-object v0

    return-object v0
.end method
