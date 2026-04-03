.class public Lcom/google/firebase/database/snapshot/CompoundHash;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;,
        Lcom/google/firebase/database/snapshot/CompoundHash$SimpleSizeSplitStrategy;,
        Lcom/google/firebase/database/snapshot/CompoundHash$SplitStrategy;
    }
.end annotation


# instance fields
.field private final hashes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final posts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/firebase/database/core/Path;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/firebase/database/core/Path;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lcom/google/firebase/database/snapshot/CompoundHash;->posts:Ljava/util/List;

    iput-object p2, p0, Lcom/google/firebase/database/snapshot/CompoundHash;->hashes:Ljava/util/List;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x3b

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "2f3b8c"

    const-wide/32 v4, 0x6629b323

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x7ct
        0x13t
        0x5et
        0x0t
        0x5dt
        0x11t
        0x12t
        0x9t
        0x55t
        0x42t
        0x48t
        0xct
        0x41t
        0x12t
        0x40t
        0x42t
        0x56t
        0x6t
        0x57t
        0x2t
        0x13t
        0x16t
        0x57t
        0x43t
        0x50t
        0x3t
        0x13t
        0xct
        0x15t
        0x52t
        0x12t
        0x0t
        0x5ct
        0x10t
        0x18t
        0xdt
        0x12t
        0xet
        0x52t
        0x11t
        0x50t
        0x6t
        0x41t
        0x46t
        0x5at
        0xct
        0x18t
        0x20t
        0x5dt
        0xbt
        0x43t
        0xdt
        0x4dt
        0xdt
        0x56t
        0x2et
        0x52t
        0x11t
        0x50t
    .end array-data
.end method

.method static synthetic access$500(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/firebase/database/snapshot/CompoundHash;->processNode(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;)V

    return-void
.end method

.method public static fromNode(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/CompoundHash;
    .locals 1

    new-instance v0, Lcom/google/firebase/database/snapshot/CompoundHash$SimpleSizeSplitStrategy;

    invoke-direct {v0, p0}, Lcom/google/firebase/database/snapshot/CompoundHash$SimpleSizeSplitStrategy;-><init>(Lcom/google/firebase/database/snapshot/Node;)V

    invoke-static {p0, v0}, Lcom/google/firebase/database/snapshot/CompoundHash;->fromNode(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/CompoundHash$SplitStrategy;)Lcom/google/firebase/database/snapshot/CompoundHash;

    move-result-object v0

    return-object v0
.end method

.method public static fromNode(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/CompoundHash$SplitStrategy;)Lcom/google/firebase/database/snapshot/CompoundHash;
    .locals 3

    invoke-interface {p0}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/firebase/database/snapshot/CompoundHash;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const-string v2, ""

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/database/snapshot/CompoundHash;-><init>(Ljava/util/List;Ljava/util/List;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;

    invoke-direct {v1, p1}, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;-><init>(Lcom/google/firebase/database/snapshot/CompoundHash$SplitStrategy;)V

    invoke-static {p0, v1}, Lcom/google/firebase/database/snapshot/CompoundHash;->processNode(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;)V

    invoke-static {v1}, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->access$000(Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;)V

    new-instance v0, Lcom/google/firebase/database/snapshot/CompoundHash;

    invoke-static {v1}, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->access$100(Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1}, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->access$200(Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/google/firebase/database/snapshot/CompoundHash;-><init>(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0
.end method

.method private static processNode(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;)V
    .locals 6

    const/4 v4, 0x1

    invoke-interface {p0}, Lcom/google/firebase/database/snapshot/Node;->isLeafNode()Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/firebase/database/snapshot/LeafNode;

    invoke-static {p1, p0}, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->access$300(Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;Lcom/google/firebase/database/snapshot/LeafNode;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p0}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    instance-of v0, p0, Lcom/google/firebase/database/snapshot/ChildrenNode;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/firebase/database/snapshot/ChildrenNode;

    new-instance v0, Lcom/google/firebase/database/snapshot/CompoundHash$1;

    invoke-direct {v0, p1}, Lcom/google/firebase/database/snapshot/CompoundHash$1;-><init>(Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;)V

    invoke-virtual {p0, v0, v4}, Lcom/google/firebase/database/snapshot/ChildrenNode;->forEachChild(Lcom/google/firebase/database/snapshot/ChildrenNode$ChildVisitor;Z)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x21

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "bae89b"

    const-wide v4, 0x41df9469e2c00000L    # 2.119280523E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x23

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "858ba1"

    const/4 v3, 0x0

    invoke-static {v1, v2, v4, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x27t
        0x19t
        0x15t
        0x5dt
        0x5at
        0x16t
        0x7t
        0x5t
        0x45t
        0x5bt
        0x51t
        0xbt
        0xet
        0x5t
        0x17t
        0x5dt
        0x57t
        0x42t
        0xct
        0xet
        0x1t
        0x5dt
        0x15t
        0x42t
        0x0t
        0x14t
        0x11t
        0x18t
        0x5et
        0xdt
        0x16t
        0x5bt
        0x45t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x7bt
        0x54t
        0x56t
        0x45t
        0x15t
        0x11t
        0x5bt
        0x54t
        0x54t
        0x1t
        0x14t
        0x5dt
        0x59t
        0x41t
        0x5dt
        0x42t
        0x9t
        0x50t
        0x4bt
        0x5dt
        0x18t
        0xdt
        0xft
        0x11t
        0x5dt
        0x58t
        0x48t
        0x16t
        0x18t
        0x11t
        0x56t
        0x5at
        0x5ct
        0x7t
        0x40t
    .end array-data
.end method


# virtual methods
.method public getHashes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/snapshot/CompoundHash;->hashes:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPosts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/firebase/database/core/Path;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/snapshot/CompoundHash;->posts:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
