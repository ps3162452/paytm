.class public Lcom/google/firebase/database/snapshot/ValueIndex;
.super Lcom/google/firebase/database/snapshot/Index;


# static fields
.field private static final INSTANCE:Lcom/google/firebase/database/snapshot/ValueIndex;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/database/snapshot/ValueIndex;

    invoke-direct {v0}, Lcom/google/firebase/database/snapshot/ValueIndex;-><init>()V

    sput-object v0, Lcom/google/firebase/database/snapshot/ValueIndex;->INSTANCE:Lcom/google/firebase/database/snapshot/ValueIndex;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/database/snapshot/Index;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/firebase/database/snapshot/ValueIndex;
    .locals 1

    sget-object v0, Lcom/google/firebase/database/snapshot/ValueIndex;->INSTANCE:Lcom/google/firebase/database/snapshot/ValueIndex;

    return-object v0
.end method


# virtual methods
.method public compare(Lcom/google/firebase/database/snapshot/NamedNode;Lcom/google/firebase/database/snapshot/NamedNode;)I
    .locals 2

    invoke-virtual {p1}, Lcom/google/firebase/database/snapshot/NamedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/firebase/database/snapshot/NamedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/firebase/database/snapshot/Node;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/snapshot/ChildKey;->compareTo(Lcom/google/firebase/database/snapshot/ChildKey;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/firebase/database/snapshot/NamedNode;

    check-cast p2, Lcom/google/firebase/database/snapshot/NamedNode;

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/database/snapshot/ValueIndex;->compare(Lcom/google/firebase/database/snapshot/NamedNode;Lcom/google/firebase/database/snapshot/NamedNode;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/firebase/database/snapshot/ValueIndex;

    return v0
.end method

.method public getQueryDefinition()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "7032fc"

    const-wide v2, -0x3e7e6860f0000000L    # -3.6893666E7

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x19t
        0x46t
        0x52t
        0x5et
        0x13t
        0x6t
    .end array-data
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public isDefinedOn(Lcom/google/firebase/database/snapshot/Node;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public makePost(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/NamedNode;
    .locals 1

    new-instance v0, Lcom/google/firebase/database/snapshot/NamedNode;

    invoke-direct {v0, p1, p2}, Lcom/google/firebase/database/snapshot/NamedNode;-><init>(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)V

    return-object v0
.end method

.method public maxPost()Lcom/google/firebase/database/snapshot/NamedNode;
    .locals 3

    new-instance v0, Lcom/google/firebase/database/snapshot/NamedNode;

    invoke-static {}, Lcom/google/firebase/database/snapshot/ChildKey;->getMaxName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v1

    sget-object v2, Lcom/google/firebase/database/snapshot/Node;->MAX_NODE:Lcom/google/firebase/database/snapshot/ChildrenNode;

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/database/snapshot/NamedNode;-><init>(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "044062"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x66t
        0x55t
        0x58t
        0x45t
        0x53t
        0x7bt
        0x5et
        0x50t
        0x51t
        0x48t
    .end array-data
.end method
