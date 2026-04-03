.class public Lcom/google/firebase/database/snapshot/PriorityIndex;
.super Lcom/google/firebase/database/snapshot/Index;


# static fields
.field private static final INSTANCE:Lcom/google/firebase/database/snapshot/PriorityIndex;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/database/snapshot/PriorityIndex;

    invoke-direct {v0}, Lcom/google/firebase/database/snapshot/PriorityIndex;-><init>()V

    sput-object v0, Lcom/google/firebase/database/snapshot/PriorityIndex;->INSTANCE:Lcom/google/firebase/database/snapshot/PriorityIndex;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/database/snapshot/Index;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/firebase/database/snapshot/PriorityIndex;
    .locals 1

    sget-object v0, Lcom/google/firebase/database/snapshot/PriorityIndex;->INSTANCE:Lcom/google/firebase/database/snapshot/PriorityIndex;

    return-object v0
.end method


# virtual methods
.method public compare(Lcom/google/firebase/database/snapshot/NamedNode;Lcom/google/firebase/database/snapshot/NamedNode;)I
    .locals 4

    invoke-virtual {p1}, Lcom/google/firebase/database/snapshot/NamedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->getPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/firebase/database/snapshot/NamedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/firebase/database/snapshot/Node;->getPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v3

    invoke-static {v2, v0, v3, v1}, Lcom/google/firebase/database/snapshot/NodeUtilities;->nameAndPriorityCompare(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/firebase/database/snapshot/NamedNode;

    check-cast p2, Lcom/google/firebase/database/snapshot/NamedNode;

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/database/snapshot/PriorityIndex;->compare(Lcom/google/firebase/database/snapshot/NamedNode;Lcom/google/firebase/database/snapshot/NamedNode;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/firebase/database/snapshot/PriorityIndex;

    return v0
.end method

.method public getQueryDefinition()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x2d

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "c05b88"

    const v3, -0x31a0a893

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x20t
        0x51t
        0x5bt
        0x45t
        0x4ct
        0x18t
        0x4t
        0x55t
        0x41t
        0x42t
        0x49t
        0x4dt
        0x6t
        0x42t
        0x4ct
        0x42t
        0x5ct
        0x5dt
        0x5t
        0x59t
        0x5bt
        0xbt
        0x4ct
        0x51t
        0xct
        0x5et
        0x15t
        0xdt
        0x56t
        0x18t
        0x13t
        0x42t
        0x5ct
        0xdt
        0x4at
        0x51t
        0x17t
        0x49t
        0x15t
        0xbt
        0x56t
        0x5ct
        0x6t
        0x48t
        0x14t
    .end array-data
.end method

.method public hashCode()I
    .locals 1

    const v0, 0x302679

    return v0
.end method

.method public isDefinedOn(Lcom/google/firebase/database/snapshot/Node;)Z
    .locals 1

    invoke-interface {p1}, Lcom/google/firebase/database/snapshot/Node;->getPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public makePost(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/NamedNode;
    .locals 6

    new-instance v0, Lcom/google/firebase/database/snapshot/NamedNode;

    new-instance v1, Lcom/google/firebase/database/snapshot/StringNode;

    const/16 v2, 0xf

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "4dae64"

    const-wide/32 v4, -0x22a0b425

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/google/firebase/database/snapshot/StringNode;-><init>(Ljava/lang/String;Lcom/google/firebase/database/snapshot/Node;)V

    invoke-direct {v0, p1, v1}, Lcom/google/firebase/database/snapshot/NamedNode;-><init>(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        0x6ft
        0x34t
        0x33t
        0x2ct
        0x79t
        0x66t
        0x7dt
        0x30t
        0x38t
        0x48t
        0x66t
        0x7bt
        0x67t
        0x30t
        0x3ct
    .end array-data
.end method

.method public maxPost()Lcom/google/firebase/database/snapshot/NamedNode;
    .locals 2

    invoke-static {}, Lcom/google/firebase/database/snapshot/ChildKey;->getMaxName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/database/snapshot/Node;->MAX_NODE:Lcom/google/firebase/database/snapshot/ChildrenNode;

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/database/snapshot/PriorityIndex;->makePost(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/NamedNode;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "5658bd"

    const/16 v2, -0x6172

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x65t
        0x44t
        0x5ct
        0x57t
        0x10t
        0xdt
        0x41t
        0x4ft
        0x7ct
        0x56t
        0x6t
        0x1t
        0x4dt
    .end array-data
.end method
