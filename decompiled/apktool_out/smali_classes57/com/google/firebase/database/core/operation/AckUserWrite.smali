.class public Lcom/google/firebase/database/core/operation/AckUserWrite;
.super Lcom/google/firebase/database/core/operation/Operation;


# instance fields
.field private final affectedTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/database/core/utilities/ImmutableTree",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final revert:Z


# direct methods
.method public constructor <init>(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/ImmutableTree;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/Path;",
            "Lcom/google/firebase/database/core/utilities/ImmutableTree",
            "<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    sget-object v0, Lcom/google/firebase/database/core/operation/Operation$OperationType;->AckUserWrite:Lcom/google/firebase/database/core/operation/Operation$OperationType;

    sget-object v1, Lcom/google/firebase/database/core/operation/OperationSource;->USER:Lcom/google/firebase/database/core/operation/OperationSource;

    invoke-direct {p0, v0, v1, p1}, Lcom/google/firebase/database/core/operation/Operation;-><init>(Lcom/google/firebase/database/core/operation/Operation$OperationType;Lcom/google/firebase/database/core/operation/OperationSource;Lcom/google/firebase/database/core/Path;)V

    iput-object p2, p0, Lcom/google/firebase/database/core/operation/AckUserWrite;->affectedTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    iput-boolean p3, p0, Lcom/google/firebase/database/core/operation/AckUserWrite;->revert:Z

    return-void
.end method


# virtual methods
.method public getAffectedTree()Lcom/google/firebase/database/core/utilities/ImmutableTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/database/core/utilities/ImmutableTree",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/core/operation/AckUserWrite;->affectedTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    return-object v0
.end method

.method public isRevert()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/firebase/database/core/operation/AckUserWrite;->revert:Z

    return v0
.end method

.method public operationForChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/operation/Operation;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/firebase/database/core/operation/AckUserWrite;->path:Lcom/google/firebase/database/core/Path;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/core/operation/AckUserWrite;->path:Lcom/google/firebase/database/core/Path;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/snapshot/ChildKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x2d

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "729861"

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    new-instance v0, Lcom/google/firebase/database/core/operation/AckUserWrite;

    iget-object v1, p0, Lcom/google/firebase/database/core/operation/AckUserWrite;->path:Lcom/google/firebase/database/core/Path;

    invoke-virtual {v1}, Lcom/google/firebase/database/core/Path;->popFront()Lcom/google/firebase/database/core/Path;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/database/core/operation/AckUserWrite;->affectedTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    iget-boolean v3, p0, Lcom/google/firebase/database/core/operation/AckUserWrite;->revert:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/google/firebase/database/core/operation/AckUserWrite;-><init>(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/ImmutableTree;Z)V

    move-object p0, v0

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/core/operation/AckUserWrite;->affectedTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/database/core/operation/AckUserWrite;->affectedTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getChildren()Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->isEmpty()Z

    move-result v0

    const/16 v1, 0x38

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "2b684a"

    invoke-static {v1, v2, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/firebase/database/core/operation/AckUserWrite;->affectedTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    new-instance v1, Lcom/google/firebase/database/core/Path;

    new-array v2, v4, [Lcom/google/firebase/database/snapshot/ChildKey;

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Lcom/google/firebase/database/core/Path;-><init>([Lcom/google/firebase/database/snapshot/ChildKey;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->subtree(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v1

    new-instance v0, Lcom/google/firebase/database/core/operation/AckUserWrite;

    invoke-static {}, Lcom/google/firebase/database/core/Path;->getEmptyPath()Lcom/google/firebase/database/core/Path;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/firebase/database/core/operation/AckUserWrite;->revert:Z

    invoke-direct {v0, v2, v1, v3}, Lcom/google/firebase/database/core/operation/AckUserWrite;-><init>(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/ImmutableTree;Z)V

    move-object p0, v0

    goto :goto_0

    :array_0
    .array-data 1
        0x58t
        0x42t
        0x5ct
        0x4at
        0x57t
        0x45t
        0x5et
        0x5dt
        0x57t
        0x7et
        0x59t
        0x43t
        0x74t
        0x5at
        0x50t
        0x54t
        0x52t
        0x11t
        0x54t
        0x53t
        0x55t
        0x54t
        0x53t
        0x55t
        0x17t
        0x54t
        0x56t
        0x4at
        0x16t
        0x44t
        0x59t
        0x40t
        0x5ct
        0x54t
        0x57t
        0x45t
        0x52t
        0x56t
        0x19t
        0x5bt
        0x5et
        0x58t
        0x5bt
        0x56t
        0x17t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x53t
        0x4t
        0x50t
        0x5dt
        0x57t
        0x15t
        0x57t
        0x6t
        0x62t
        0x4at
        0x51t
        0x4t
        0x12t
        0x11t
        0x5et
        0x57t
        0x41t
        0xdt
        0x56t
        0x42t
        0x58t
        0x57t
        0x40t
        0x41t
        0x5at
        0x3t
        0x40t
        0x5dt
        0x14t
        0xet
        0x44t
        0x7t
        0x44t
        0x54t
        0x55t
        0x11t
        0x42t
        0xbt
        0x58t
        0x5ft
        0x14t
        0x0t
        0x54t
        0x4t
        0x53t
        0x5bt
        0x40t
        0x4t
        0x56t
        0x42t
        0x46t
        0x59t
        0x40t
        0x9t
        0x41t
        0x4ct
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x34

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "9db0a9"

    invoke-static {v0, v1, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/firebase/database/core/operation/AckUserWrite;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v2

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/google/firebase/database/core/operation/AckUserWrite;->revert:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/firebase/database/core/operation/AckUserWrite;->affectedTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x78t
        0x7t
        0x9t
        0x65t
        0x12t
        0x5ct
        0x4bt
        0x33t
        0x10t
        0x59t
        0x15t
        0x5ct
        0x19t
        0x1ft
        0x42t
        0x40t
        0x0t
        0x4dt
        0x51t
        0x59t
        0x47t
        0x43t
        0x4dt
        0x19t
        0x4bt
        0x1t
        0x14t
        0x55t
        0x13t
        0x4dt
        0x4t
        0x41t
        0x11t
        0x1ct
        0x41t
        0x58t
        0x5ft
        0x2t
        0x7t
        0x53t
        0x15t
        0x5ct
        0x5dt
        0x30t
        0x10t
        0x55t
        0x4t
        0x4t
        0x1ct
        0x17t
        0x42t
        0x4dt
    .end array-data
.end method
