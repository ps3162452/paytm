.class public Lcom/google/firebase/database/core/operation/Overwrite;
.super Lcom/google/firebase/database/core/operation/Operation;


# instance fields
.field private final snapshot:Lcom/google/firebase/database/snapshot/Node;


# direct methods
.method public constructor <init>(Lcom/google/firebase/database/core/operation/OperationSource;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)V
    .locals 1

    sget-object v0, Lcom/google/firebase/database/core/operation/Operation$OperationType;->Overwrite:Lcom/google/firebase/database/core/operation/Operation$OperationType;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/firebase/database/core/operation/Operation;-><init>(Lcom/google/firebase/database/core/operation/Operation$OperationType;Lcom/google/firebase/database/core/operation/OperationSource;Lcom/google/firebase/database/core/Path;)V

    iput-object p3, p0, Lcom/google/firebase/database/core/operation/Overwrite;->snapshot:Lcom/google/firebase/database/snapshot/Node;

    return-void
.end method


# virtual methods
.method public getSnapshot()Lcom/google/firebase/database/snapshot/Node;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/core/operation/Overwrite;->snapshot:Lcom/google/firebase/database/snapshot/Node;

    return-object v0
.end method

.method public operationForChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/operation/Operation;
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/database/core/operation/Overwrite;->path:Lcom/google/firebase/database/core/Path;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/firebase/database/core/operation/Overwrite;

    iget-object v1, p0, Lcom/google/firebase/database/core/operation/Overwrite;->source:Lcom/google/firebase/database/core/operation/OperationSource;

    invoke-static {}, Lcom/google/firebase/database/core/Path;->getEmptyPath()Lcom/google/firebase/database/core/Path;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/database/core/operation/Overwrite;->snapshot:Lcom/google/firebase/database/snapshot/Node;

    invoke-interface {v3, p1}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/firebase/database/core/operation/Overwrite;-><init>(Lcom/google/firebase/database/core/operation/OperationSource;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/firebase/database/core/operation/Overwrite;

    iget-object v1, p0, Lcom/google/firebase/database/core/operation/Overwrite;->source:Lcom/google/firebase/database/core/operation/OperationSource;

    iget-object v2, p0, Lcom/google/firebase/database/core/operation/Overwrite;->path:Lcom/google/firebase/database/core/Path;

    invoke-virtual {v2}, Lcom/google/firebase/database/core/Path;->popFront()Lcom/google/firebase/database/core/Path;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/database/core/operation/Overwrite;->snapshot:Lcom/google/firebase/database/snapshot/Node;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/firebase/database/core/operation/Overwrite;-><init>(Lcom/google/firebase/database/core/operation/OperationSource;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/16 v0, 0x2d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "fbb33f"

    const-wide v2, 0x41a5d38a4a000000L    # 1.83092517E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/firebase/database/core/operation/Overwrite;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/firebase/database/core/operation/Overwrite;->getSource()Lcom/google/firebase/database/core/operation/OperationSource;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/firebase/database/core/operation/Overwrite;->snapshot:Lcom/google/firebase/database/snapshot/Node;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x29t
        0x14t
        0x7t
        0x41t
        0x44t
        0x14t
        0xft
        0x16t
        0x7t
        0x13t
        0x48t
        0x46t
        0x16t
        0x3t
        0x16t
        0x5bt
        0xet
        0x43t
        0x15t
        0x4et
        0x42t
        0x40t
        0x5ct
        0x13t
        0x14t
        0x1t
        0x7t
        0xet
        0x16t
        0x15t
        0x4at
        0x42t
        0x11t
        0x5dt
        0x52t
        0x16t
        0x15t
        0xat
        0xdt
        0x47t
        0xet
        0x43t
        0x15t
        0x42t
        0x1ft
    .end array-data
.end method
