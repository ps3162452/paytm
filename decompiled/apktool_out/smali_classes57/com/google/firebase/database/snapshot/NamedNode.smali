.class public final Lcom/google/firebase/database/snapshot/NamedNode;
.super Ljava/lang/Object;


# static fields
.field private static final MAX_NODE:Lcom/google/firebase/database/snapshot/NamedNode;

.field private static final MIN_NODE:Lcom/google/firebase/database/snapshot/NamedNode;


# instance fields
.field private final name:Lcom/google/firebase/database/snapshot/ChildKey;

.field private final node:Lcom/google/firebase/database/snapshot/Node;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/firebase/database/snapshot/NamedNode;

    invoke-static {}, Lcom/google/firebase/database/snapshot/ChildKey;->getMinName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v1

    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/database/snapshot/NamedNode;-><init>(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)V

    sput-object v0, Lcom/google/firebase/database/snapshot/NamedNode;->MIN_NODE:Lcom/google/firebase/database/snapshot/NamedNode;

    new-instance v0, Lcom/google/firebase/database/snapshot/NamedNode;

    invoke-static {}, Lcom/google/firebase/database/snapshot/ChildKey;->getMaxName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v1

    sget-object v2, Lcom/google/firebase/database/snapshot/Node;->MAX_NODE:Lcom/google/firebase/database/snapshot/ChildrenNode;

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/database/snapshot/NamedNode;-><init>(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)V

    sput-object v0, Lcom/google/firebase/database/snapshot/NamedNode;->MAX_NODE:Lcom/google/firebase/database/snapshot/NamedNode;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/database/snapshot/NamedNode;->name:Lcom/google/firebase/database/snapshot/ChildKey;

    iput-object p2, p0, Lcom/google/firebase/database/snapshot/NamedNode;->node:Lcom/google/firebase/database/snapshot/Node;

    return-void
.end method

.method public static getMaxNode()Lcom/google/firebase/database/snapshot/NamedNode;
    .locals 1

    sget-object v0, Lcom/google/firebase/database/snapshot/NamedNode;->MAX_NODE:Lcom/google/firebase/database/snapshot/NamedNode;

    return-object v0
.end method

.method public static getMinNode()Lcom/google/firebase/database/snapshot/NamedNode;
    .locals 1

    sget-object v0, Lcom/google/firebase/database/snapshot/NamedNode;->MIN_NODE:Lcom/google/firebase/database/snapshot/NamedNode;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/google/firebase/database/snapshot/NamedNode;

    iget-object v2, p0, Lcom/google/firebase/database/snapshot/NamedNode;->name:Lcom/google/firebase/database/snapshot/ChildKey;

    iget-object v3, p1, Lcom/google/firebase/database/snapshot/NamedNode;->name:Lcom/google/firebase/database/snapshot/ChildKey;

    invoke-virtual {v2, v3}, Lcom/google/firebase/database/snapshot/ChildKey;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/firebase/database/snapshot/NamedNode;->node:Lcom/google/firebase/database/snapshot/Node;

    iget-object v3, p1, Lcom/google/firebase/database/snapshot/NamedNode;->node:Lcom/google/firebase/database/snapshot/Node;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getName()Lcom/google/firebase/database/snapshot/ChildKey;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/snapshot/NamedNode;->name:Lcom/google/firebase/database/snapshot/ChildKey;

    return-object v0
.end method

.method public getNode()Lcom/google/firebase/database/snapshot/Node;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/snapshot/NamedNode;->node:Lcom/google/firebase/database/snapshot/Node;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/database/snapshot/NamedNode;->name:Lcom/google/firebase/database/snapshot/ChildKey;

    invoke-virtual {v0}, Lcom/google/firebase/database/snapshot/ChildKey;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/firebase/database/snapshot/NamedNode;->node:Lcom/google/firebase/database/snapshot/Node;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0xf

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "ccfba0"

    const-wide/32 v4, 0xe05d444

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/snapshot/NamedNode;->name:Lcom/google/firebase/database/snapshot/ChildKey;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x7

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "ad360a"

    const v3, -0x31805230

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/snapshot/NamedNode;->node:Lcom/google/firebase/database/snapshot/Node;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x2dt
        0x2t
        0xbt
        0x7t
        0x5t
        0x7et
        0xct
        0x7t
        0x3t
        0x19t
        0xft
        0x51t
        0xet
        0x6t
        0x5bt
    .end array-data

    :array_1
    .array-data 1
        0x4dt
        0x44t
        0x5dt
        0x59t
        0x54t
        0x4t
        0x5ct
    .end array-data
.end method
