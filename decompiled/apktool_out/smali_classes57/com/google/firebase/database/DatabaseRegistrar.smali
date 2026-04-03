.class public Lcom/google/firebase/database/DatabaseRegistrar;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$getComponents$0(Lcom/google/firebase/components/ComponentContainer;)Lcom/google/firebase/database/FirebaseDatabaseComponent;
    .locals 3

    new-instance v2, Lcom/google/firebase/database/FirebaseDatabaseComponent;

    const-class v0, Lcom/google/firebase/FirebaseApp;

    invoke-interface {p0, v0}, Lcom/google/firebase/components/ComponentContainer;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/FirebaseApp;

    const-class v1, Lcom/google/firebase/auth/internal/InternalAuthProvider;

    invoke-interface {p0, v1}, Lcom/google/firebase/components/ComponentContainer;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/auth/internal/InternalAuthProvider;

    invoke-direct {v2, v0, v1}, Lcom/google/firebase/database/FirebaseDatabaseComponent;-><init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/internal/InternalAuthProvider;)V

    return-object v2
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/firebase/components/Component",
            "<*>;>;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/firebase/components/Component;

    const/4 v1, 0x0

    const-class v2, Lcom/google/firebase/database/FirebaseDatabaseComponent;

    invoke-static {v2}, Lcom/google/firebase/components/Component;->builder(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v2

    const-class v3, Lcom/google/firebase/FirebaseApp;

    invoke-static {v3}, Lcom/google/firebase/components/Dependency;->required(Ljava/lang/Class;)Lcom/google/firebase/components/Dependency;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/components/Component$Builder;->add(Lcom/google/firebase/components/Dependency;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v2

    const-class v3, Lcom/google/firebase/auth/internal/InternalAuthProvider;

    invoke-static {v3}, Lcom/google/firebase/components/Dependency;->optional(Ljava/lang/Class;)Lcom/google/firebase/components/Dependency;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/components/Component$Builder;->add(Lcom/google/firebase/components/Dependency;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v2

    invoke-static {}, Lcom/google/firebase/database/DatabaseRegistrar$$Lambda$1;->lambdaFactory$()Lcom/google/firebase/components/ComponentFactory;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/components/Component$Builder;->factory(Lcom/google/firebase/components/ComponentFactory;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/components/Component$Builder;->build()Lcom/google/firebase/components/Component;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x9

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "0e26d6"

    const-wide v4, -0x3e21cb58fd800000L    # -2.027068426E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "50266d"

    const/16 v5, 0x16bb

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/firebase/platforminfo/LibraryVersionComponent;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/components/Component;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x56t
        0xct
        0x40t
        0x53t
        0x49t
        0x44t
        0x44t
        0x1t
        0x50t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x4t
        0x9t
        0x1ct
        0x5t
        0x18t
        0x55t
    .end array-data
.end method
