.class public Lcom/google/firebase/database/snapshot/DoubleNode;
.super Lcom/google/firebase/database/snapshot/LeafNode;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/database/snapshot/LeafNode",
        "<",
        "Lcom/google/firebase/database/snapshot/DoubleNode;",
        ">;"
    }
.end annotation


# static fields
.field static final $assertionsDisabled:Z


# instance fields
.field private final value:Ljava/lang/Double;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/Double;Lcom/google/firebase/database/snapshot/Node;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/google/firebase/database/snapshot/LeafNode;-><init>(Lcom/google/firebase/database/snapshot/Node;)V

    iput-object p1, p0, Lcom/google/firebase/database/snapshot/DoubleNode;->value:Ljava/lang/Double;

    return-void
.end method


# virtual methods
.method protected compareLeafValues(Lcom/google/firebase/database/snapshot/DoubleNode;)I
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/database/snapshot/DoubleNode;->value:Ljava/lang/Double;

    iget-object v1, p1, Lcom/google/firebase/database/snapshot/DoubleNode;->value:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v0

    return v0
.end method

.method protected bridge synthetic compareLeafValues(Lcom/google/firebase/database/snapshot/LeafNode;)I
    .locals 1

    check-cast p1, Lcom/google/firebase/database/snapshot/DoubleNode;

    invoke-virtual {p0, p1}, Lcom/google/firebase/database/snapshot/DoubleNode;->compareLeafValues(Lcom/google/firebase/database/snapshot/DoubleNode;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/firebase/database/snapshot/DoubleNode;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/google/firebase/database/snapshot/DoubleNode;

    iget-object v1, p0, Lcom/google/firebase/database/snapshot/DoubleNode;->value:Ljava/lang/Double;

    iget-object v2, p1, Lcom/google/firebase/database/snapshot/DoubleNode;->value:Ljava/lang/Double;

    invoke-virtual {v1, v2}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/firebase/database/snapshot/DoubleNode;->priority:Lcom/google/firebase/database/snapshot/Node;

    iget-object v2, p1, Lcom/google/firebase/database/snapshot/DoubleNode;->priority:Lcom/google/firebase/database/snapshot/Node;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getHashRepresentation(Lcom/google/firebase/database/snapshot/Node$HashVersion;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/google/firebase/database/snapshot/DoubleNode;->getPriorityHash(Lcom/google/firebase/database/snapshot/Node$HashVersion;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x7

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "0b39a8"

    const v3, -0x32e20fb4

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/snapshot/DoubleNode;->value:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/firebase/database/core/utilities/Utilities;->doubleToHashString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x5et
        0x17t
        0x5et
        0x5bt
        0x4t
        0x4at
        0xat
    .end array-data
.end method

.method protected getLeafType()Lcom/google/firebase/database/snapshot/LeafNode$LeafType;
    .locals 1

    sget-object v0, Lcom/google/firebase/database/snapshot/LeafNode$LeafType;->Number:Lcom/google/firebase/database/snapshot/LeafNode$LeafType;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/snapshot/DoubleNode;->value:Ljava/lang/Double;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/database/snapshot/DoubleNode;->value:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/firebase/database/snapshot/DoubleNode;->priority:Lcom/google/firebase/database/snapshot/Node;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public updatePriority(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/DoubleNode;
    .locals 2

    new-instance v0, Lcom/google/firebase/database/snapshot/DoubleNode;

    iget-object v1, p0, Lcom/google/firebase/database/snapshot/DoubleNode;->value:Ljava/lang/Double;

    invoke-direct {v0, v1, p1}, Lcom/google/firebase/database/snapshot/DoubleNode;-><init>(Ljava/lang/Double;Lcom/google/firebase/database/snapshot/Node;)V

    return-object v0
.end method

.method public bridge synthetic updatePriority(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/firebase/database/snapshot/DoubleNode;->updatePriority(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/DoubleNode;

    move-result-object v0

    return-object v0
.end method
