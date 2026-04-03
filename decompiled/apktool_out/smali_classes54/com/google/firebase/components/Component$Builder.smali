.class public Lcom/google/firebase/components/Component$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/components/Component;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final dependencies:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/firebase/components/Dependency;",
            ">;"
        }
    .end annotation
.end field

.field private factory:Lcom/google/firebase/components/ComponentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/components/ComponentFactory",
            "<TT;>;"
        }
    .end annotation
.end field

.field private instantiation:I

.field private final providedInterfaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<-TT;>;>;"
        }
    .end annotation
.end field

.field private publishedEvents:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private type:I


# direct methods
.method private varargs constructor <init>(Ljava/lang/Class;[Ljava/lang/Class;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/Class",
            "<-TT;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    const/16 v6, 0xe

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/google/firebase/components/Component$Builder;->providedInterfaces:Ljava/util/Set;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/google/firebase/components/Component$Builder;->dependencies:Ljava/util/Set;

    iput v0, p0, Lcom/google/firebase/components/Component$Builder;->instantiation:I

    iput v0, p0, Lcom/google/firebase/components/Component$Builder;->type:I

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/google/firebase/components/Component$Builder;->publishedEvents:Ljava/util/Set;

    new-array v2, v6, [B

    fill-array-data v2, :array_0

    const-string v3, "4527ac"

    invoke-static {v2, v3, v0, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/firebase/components/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    array-length v1, p2

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p2, v0

    new-array v3, v6, [B

    fill-array-data v3, :array_1

    const-string v4, "01d382"

    const v5, -0x311d1ee9

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/firebase/components/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/components/Component$Builder;->providedInterfaces:Ljava/util/Set;

    invoke-static {v0, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void

    nop

    :array_0
    .array-data 1
        0x7at
        0x40t
        0x5et
        0x5bt
        0x41t
        0xat
        0x5at
        0x41t
        0x57t
        0x45t
        0x7t
        0x2t
        0x57t
        0x50t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x7et
        0x44t
        0x8t
        0x5ft
        0x18t
        0x5bt
        0x5et
        0x45t
        0x1t
        0x41t
        0x5et
        0x53t
        0x53t
        0x54t
    .end array-data
.end method

.method synthetic constructor <init>(Ljava/lang/Class;[Ljava/lang/Class;Lcom/google/firebase/components/Component$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/components/Component$Builder;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/firebase/components/Component$Builder;)Lcom/google/firebase/components/Component$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/google/firebase/components/Component$Builder;->intoSet()Lcom/google/firebase/components/Component$Builder;

    move-result-object v0

    return-object v0
.end method

.method private intoSet()Lcom/google/firebase/components/Component$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/components/Component$Builder",
            "<TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/firebase/components/Component$Builder;->type:I

    return-object p0
.end method

.method private setInstantiation(I)Lcom/google/firebase/components/Component$Builder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/firebase/components/Component$Builder",
            "<TT;>;"
        }
    .end annotation

    iget v0, p0, Lcom/google/firebase/components/Component$Builder;->instantiation:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x28

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "ca4ed3"

    const-wide/32 v4, -0x78eae5c7

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/firebase/components/Preconditions;->checkState(ZLjava/lang/String;)V

    iput p1, p0, Lcom/google/firebase/components/Component$Builder;->instantiation:I

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x2at
        0xft
        0x47t
        0x11t
        0x5t
        0x5dt
        0x17t
        0x8t
        0x55t
        0x11t
        0xdt
        0x5ct
        0xdt
        0x41t
        0x40t
        0x1ct
        0x14t
        0x56t
        0x43t
        0x9t
        0x55t
        0x16t
        0x44t
        0x52t
        0xft
        0x13t
        0x51t
        0x4t
        0x0t
        0x4at
        0x43t
        0x3t
        0x51t
        0x0t
        0xat
        0x13t
        0x10t
        0x4t
        0x40t
        0x4bt
    .end array-data
.end method

.method private validateInterface(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/components/Component$Builder;->providedInterfaces:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/16 v1, 0x4b

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "fc8fb3"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/firebase/components/Preconditions;->checkArgument(ZLjava/lang/String;)V

    return-void

    :array_0
    .array-data 1
        0x25t
        0xct
        0x55t
        0x16t
        0xdt
        0x5dt
        0x3t
        0xdt
        0x4ct
        0x15t
        0x42t
        0x52t
        0x14t
        0x6t
        0x18t
        0x8t
        0xdt
        0x47t
        0x46t
        0x2t
        0x54t
        0xat
        0xdt
        0x44t
        0x3t
        0x7t
        0x18t
        0x12t
        0xdt
        0x13t
        0x2t
        0x6t
        0x48t
        0x3t
        0xct
        0x57t
        0x46t
        0xct
        0x56t
        0x46t
        0xbt
        0x5dt
        0x12t
        0x6t
        0x4at
        0x0t
        0x3t
        0x50t
        0x3t
        0x10t
        0x18t
        0x12t
        0xat
        0x56t
        0x1ft
        0x43t
        0x4ct
        0xet
        0x7t
        0x5et
        0x15t
        0x6t
        0x54t
        0x10t
        0x7t
        0x40t
        0x46t
        0x13t
        0x4at
        0x9t
        0x14t
        0x5at
        0x2t
        0x6t
        0x16t
    .end array-data
.end method


# virtual methods
.method public add(Lcom/google/firebase/components/Dependency;)Lcom/google/firebase/components/Component$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/components/Dependency;",
            ")",
            "Lcom/google/firebase/components/Component$Builder",
            "<TT;>;"
        }
    .end annotation

    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "c590c7"

    const/16 v2, -0x1fea

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/firebase/components/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/firebase/components/Dependency;->getInterface()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/components/Component$Builder;->validateInterface(Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/firebase/components/Component$Builder;->dependencies:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0

    nop

    :array_0
    .array-data 1
        0x2dt
        0x40t
        0x55t
        0x5ct
        0x43t
        0x53t
        0x6t
        0x45t
        0x5ct
        0x5et
        0x7t
        0x52t
        0xdt
        0x56t
        0x40t
    .end array-data
.end method

.method public alwaysEager()Lcom/google/firebase/components/Component$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/components/Component$Builder",
            "<TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/firebase/components/Component$Builder;->setInstantiation(I)Lcom/google/firebase/components/Component$Builder;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/firebase/components/Component;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/components/Component",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/components/Component$Builder;->factory:Lcom/google/firebase/components/ComponentFactory;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x23

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "99702b"

    const-wide/32 v4, -0xdf641a0

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/firebase/components/Preconditions;->checkState(ZLjava/lang/String;)V

    new-instance v0, Lcom/google/firebase/components/Component;

    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/google/firebase/components/Component$Builder;->providedInterfaces:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Lcom/google/firebase/components/Component$Builder;->dependencies:Ljava/util/Set;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget v3, p0, Lcom/google/firebase/components/Component$Builder;->instantiation:I

    iget v4, p0, Lcom/google/firebase/components/Component$Builder;->type:I

    iget-object v5, p0, Lcom/google/firebase/components/Component$Builder;->factory:Lcom/google/firebase/components/ComponentFactory;

    iget-object v6, p0, Lcom/google/firebase/components/Component$Builder;->publishedEvents:Ljava/util/Set;

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/components/Component;-><init>(Ljava/util/Set;Ljava/util/Set;IILcom/google/firebase/components/ComponentFactory;Ljava/util/Set;Lcom/google/firebase/components/Component$1;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x74t
        0x50t
        0x44t
        0x43t
        0x5bt
        0xct
        0x5et
        0x19t
        0x45t
        0x55t
        0x43t
        0x17t
        0x50t
        0x4bt
        0x52t
        0x54t
        0x12t
        0x12t
        0x4bt
        0x56t
        0x47t
        0x55t
        0x40t
        0x16t
        0x40t
        0x3t
        0x17t
        0x56t
        0x53t
        0x1t
        0x4dt
        0x56t
        0x45t
        0x49t
        0x1ct
    .end array-data
.end method

.method public eagerInDefaultApp()Lcom/google/firebase/components/Component$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/components/Component$Builder",
            "<TT;>;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/firebase/components/Component$Builder;->setInstantiation(I)Lcom/google/firebase/components/Component$Builder;

    move-result-object v0

    return-object v0
.end method

.method public factory(Lcom/google/firebase/components/ComponentFactory;)Lcom/google/firebase/components/Component$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/components/ComponentFactory",
            "<TT;>;)",
            "Lcom/google/firebase/components/Component$Builder",
            "<TT;>;"
        }
    .end annotation

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "15cc57"

    const-wide/32 v2, -0x7f840de0

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/firebase/components/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/components/ComponentFactory;

    iput-object v0, p0, Lcom/google/firebase/components/Component$Builder;->factory:Lcom/google/firebase/components/ComponentFactory;

    return-object p0

    nop

    :array_0
    .array-data 1
        0x7ft
        0x40t
        0xft
        0xft
        0x15t
        0x51t
        0x50t
        0x56t
        0x17t
        0xct
        0x47t
        0x4et
    .end array-data
.end method

.method public publishes(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/firebase/components/Component$Builder",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/components/Component$Builder;->publishedEvents:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
