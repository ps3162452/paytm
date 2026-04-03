.class public Lcom/google/firebase/database/connection/CompoundHash;
.super Ljava/lang/Object;


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
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lcom/google/firebase/database/connection/CompoundHash;->posts:Ljava/util/List;

    iput-object p2, p0, Lcom/google/firebase/database/connection/CompoundHash;->hashes:Ljava/util/List;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x3b

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "5bdd47"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x7bt
        0x17t
        0x9t
        0x6t
        0x51t
        0x45t
        0x15t
        0xdt
        0x2t
        0x44t
        0x44t
        0x58t
        0x46t
        0x16t
        0x17t
        0x44t
        0x5at
        0x52t
        0x50t
        0x6t
        0x44t
        0x10t
        0x5bt
        0x17t
        0x57t
        0x7t
        0x44t
        0xat
        0x19t
        0x6t
        0x15t
        0x4t
        0xbt
        0x16t
        0x14t
        0x59t
        0x15t
        0xat
        0x5t
        0x17t
        0x5ct
        0x52t
        0x46t
        0x42t
        0xdt
        0xat
        0x14t
        0x74t
        0x5at
        0xft
        0x14t
        0xbt
        0x41t
        0x59t
        0x51t
        0x2at
        0x5t
        0x17t
        0x5ct
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

    iget-object v0, p0, Lcom/google/firebase/database/connection/CompoundHash;->hashes:Ljava/util/List;

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
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/connection/CompoundHash;->posts:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
