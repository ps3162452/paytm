.class public Lcom/google/firebase/database/snapshot/PriorityUtilities;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static NullPriority()Lcom/google/firebase/database/snapshot/Node;
    .locals 1

    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object v0

    return-object v0
.end method

.method public static isValidPriority(Lcom/google/firebase/database/snapshot/Node;)Z
    .locals 1

    invoke-interface {p0}, Lcom/google/firebase/database/snapshot/Node;->getPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/google/firebase/database/snapshot/DoubleNode;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/google/firebase/database/snapshot/StringNode;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/google/firebase/database/snapshot/DeferredValueNode;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parsePriority(Lcom/google/firebase/database/core/Path;Ljava/lang/Object;)Lcom/google/firebase/database/snapshot/Node;
    .locals 6

    invoke-static {p1}, Lcom/google/firebase/database/snapshot/NodeUtilities;->NodeFromJSON(Ljava/lang/Object;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    instance-of v1, v0, Lcom/google/firebase/database/snapshot/LongNode;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/firebase/database/snapshot/DoubleNode;

    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/database/snapshot/PriorityUtilities;->NullPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/firebase/database/snapshot/DoubleNode;-><init>(Ljava/lang/Double;Lcom/google/firebase/database/snapshot/Node;)V

    move-object v0, v1

    :cond_0
    invoke-static {v0}, Lcom/google/firebase/database/snapshot/PriorityUtilities;->isValidPriority(Lcom/google/firebase/database/snapshot/Node;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x6

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "d0288f"

    const-wide v4, 0x41ddd4970a000000L    # 2.001886248E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/16 v4, 0x15

    aput-byte v4, v2, v3

    const-string v3, "285d66"

    const/16 v4, 0x34fd

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v2, Lcom/google/firebase/database/DatabaseException;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x4a

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v3, "4f4a50"

    const-wide/32 v4, 0x7b6aae7b

    invoke-static {v1, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v2, "3ce8c2"

    const-wide v4, -0x3e3198bb1d800000L    # -1.020168645E9

    invoke-static {v0, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-object v0

    nop

    :array_0
    .array-data 1
        0x34t
        0x51t
        0x46t
        0x50t
        0x18t
        0x41t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x14t
        0x5t
        0x5bt
        0xft
        0x41t
        0x51t
        0x5dt
        0x8t
        0x47t
        0x41t
        0x5ct
        0x5et
        0x42t
        0x7t
        0x58t
        0x8t
        0x51t
        0x10t
        0x44t
        0x14t
        0x5dt
        0xet
        0x47t
        0x59t
        0x40t
        0x1ft
        0xet
        0x41t
        0x78t
        0x45t
        0x47t
        0x12t
        0x14t
        0x3t
        0x50t
        0x10t
        0x55t
        0x46t
        0x47t
        0x15t
        0x47t
        0x59t
        0x5at
        0x1t
        0x18t
        0x41t
        0x51t
        0x5ft
        0x41t
        0x4t
        0x58t
        0x4t
        0x19t
        0x10t
        0x67t
        0x3t
        0x46t
        0x17t
        0x50t
        0x42t
        0x62t
        0x7t
        0x58t
        0x14t
        0x50t
        0x1ct
        0x14t
        0x9t
        0x46t
        0x41t
        0x5bt
        0x45t
        0x58t
        0xat
    .end array-data

    nop

    :array_2
    .array-data 1
        0x7dt
        0xct
        0x1t
        0x5dt
    .end array-data
.end method

.method public static parsePriority(Ljava/lang/Object;)Lcom/google/firebase/database/snapshot/Node;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/google/firebase/database/snapshot/PriorityUtilities;->parsePriority(Lcom/google/firebase/database/core/Path;Ljava/lang/Object;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    return-object v0
.end method
