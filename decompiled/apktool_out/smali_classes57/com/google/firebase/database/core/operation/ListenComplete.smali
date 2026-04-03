.class public Lcom/google/firebase/database/core/operation/ListenComplete;
.super Lcom/google/firebase/database/core/operation/Operation;


# static fields
.field static final $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/database/core/operation/OperationSource;Lcom/google/firebase/database/core/Path;)V
    .locals 1

    sget-object v0, Lcom/google/firebase/database/core/operation/Operation$OperationType;->ListenComplete:Lcom/google/firebase/database/core/operation/Operation$OperationType;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/firebase/database/core/operation/Operation;-><init>(Lcom/google/firebase/database/core/operation/Operation$OperationType;Lcom/google/firebase/database/core/operation/OperationSource;Lcom/google/firebase/database/core/Path;)V

    return-void
.end method


# virtual methods
.method public operationForChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/operation/Operation;
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/database/core/operation/ListenComplete;->path:Lcom/google/firebase/database/core/Path;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/firebase/database/core/operation/ListenComplete;

    iget-object v1, p0, Lcom/google/firebase/database/core/operation/ListenComplete;->source:Lcom/google/firebase/database/core/operation/OperationSource;

    invoke-static {}, Lcom/google/firebase/database/core/Path;->getEmptyPath()Lcom/google/firebase/database/core/Path;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/database/core/operation/ListenComplete;-><init>(Lcom/google/firebase/database/core/operation/OperationSource;Lcom/google/firebase/database/core/Path;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/firebase/database/core/operation/ListenComplete;

    iget-object v1, p0, Lcom/google/firebase/database/core/operation/ListenComplete;->source:Lcom/google/firebase/database/core/operation/OperationSource;

    iget-object v2, p0, Lcom/google/firebase/database/core/operation/ListenComplete;->path:Lcom/google/firebase/database/core/Path;

    invoke-virtual {v2}, Lcom/google/firebase/database/core/Path;->popFront()Lcom/google/firebase/database/core/Path;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/database/core/operation/ListenComplete;-><init>(Lcom/google/firebase/database/core/operation/OperationSource;Lcom/google/firebase/database/core/Path;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/16 v0, 0x25

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "91a561"

    const v2, 0x4e7269e3

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/firebase/database/core/operation/ListenComplete;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/firebase/database/core/operation/ListenComplete;->getSource()Lcom/google/firebase/database/core/operation/OperationSource;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x75t
        0x58t
        0x12t
        0x41t
        0x53t
        0x5ft
        0x7at
        0x5et
        0xct
        0x45t
        0x5at
        0x54t
        0x4dt
        0x54t
        0x41t
        0x4et
        0x16t
        0x41t
        0x58t
        0x45t
        0x9t
        0x8t
        0x13t
        0x42t
        0x15t
        0x11t
        0x12t
        0x5at
        0x43t
        0x43t
        0x5at
        0x54t
        0x5ct
        0x10t
        0x45t
        0x11t
        0x44t
    .end array-data
.end method
