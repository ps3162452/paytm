.class public final Lcom/google/firebase/components/ComponentDiscovery;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/components/ComponentDiscovery$MetadataRegistrarNameRetriever;,
        Lcom/google/firebase/components/ComponentDiscovery$RegistrarNameRetriever;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final COMPONENT_KEY_PREFIX:Ljava/lang/String;

.field private static final COMPONENT_SENTINEL_VALUE:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final context:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final retriever:Lcom/google/firebase/components/ComponentDiscovery$RegistrarNameRetriever;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/components/ComponentDiscovery$RegistrarNameRetriever",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x1f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "d40229"

    const/16 v2, 0x29a6

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/components/ComponentDiscovery;->COMPONENT_KEY_PREFIX:Ljava/lang/String;

    const/16 v0, 0x31

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "585a64"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/components/ComponentDiscovery;->COMPONENT_SENTINEL_VALUE:Ljava/lang/String;

    const/16 v0, 0x12

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "dcf66a"

    const-wide v2, -0x3e2da244fb400000L    # -1.232530451E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/components/ComponentDiscovery;->TAG:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x7t
        0x5bt
        0x5dt
        0x1ct
        0x55t
        0x56t
        0xbt
        0x53t
        0x5ct
        0x57t
        0x1ct
        0x5ft
        0xdt
        0x46t
        0x55t
        0x50t
        0x53t
        0x4at
        0x1t
        0x1at
        0x53t
        0x5dt
        0x5ft
        0x49t
        0xbt
        0x5at
        0x55t
        0x5ct
        0x46t
        0x4at
        0x5et
    .end array-data

    :array_1
    .array-data 1
        0x56t
        0x57t
        0x58t
        0x4ft
        0x51t
        0x5bt
        0x5at
        0x5ft
        0x59t
        0x4t
        0x18t
        0x52t
        0x5ct
        0x4at
        0x50t
        0x3t
        0x57t
        0x47t
        0x50t
        0x16t
        0x56t
        0xet
        0x5bt
        0x44t
        0x5at
        0x56t
        0x50t
        0xft
        0x42t
        0x47t
        0x1bt
        0x7bt
        0x5at
        0xct
        0x46t
        0x5bt
        0x5bt
        0x5dt
        0x5bt
        0x15t
        0x64t
        0x51t
        0x52t
        0x51t
        0x46t
        0x15t
        0x44t
        0x55t
        0x47t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x27t
        0xct
        0xbt
        0x46t
        0x59t
        0xft
        0x1t
        0xdt
        0x12t
        0x72t
        0x5ft
        0x12t
        0x7t
        0xct
        0x10t
        0x53t
        0x44t
        0x18t
    .end array-data
.end method

.method constructor <init>(Ljava/lang/Object;Lcom/google/firebase/components/ComponentDiscovery$RegistrarNameRetriever;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/firebase/components/ComponentDiscovery$RegistrarNameRetriever",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/components/ComponentDiscovery;->context:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/firebase/components/ComponentDiscovery;->retriever:Lcom/google/firebase/components/ComponentDiscovery$RegistrarNameRetriever;

    return-void
.end method

.method public static forContext(Landroid/content/Context;Ljava/lang/Class;)Lcom/google/firebase/components/ComponentDiscovery;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Service;",
            ">;)",
            "Lcom/google/firebase/components/ComponentDiscovery",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/firebase/components/ComponentDiscovery;

    new-instance v1, Lcom/google/firebase/components/ComponentDiscovery$MetadataRegistrarNameRetriever;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/google/firebase/components/ComponentDiscovery$MetadataRegistrarNameRetriever;-><init>(Ljava/lang/Class;Lcom/google/firebase/components/ComponentDiscovery$1;)V

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/components/ComponentDiscovery;-><init>(Ljava/lang/Object;Lcom/google/firebase/components/ComponentDiscovery$RegistrarNameRetriever;)V

    return-object v0
.end method

.method private static instantiate(Ljava/util/List;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/firebase/components/ComponentRegistrar;",
            ">;"
        }
    .end annotation

    const/16 v13, 0x18

    const/16 v12, 0x19

    const/4 v11, 0x1

    const/4 v10, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v4, Lcom/google/firebase/components/ComponentRegistrar;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v1, Lcom/google/firebase/components/ComponentDiscovery;->TAG:Ljava/lang/String;

    const/16 v4, 0x21

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    const-string v5, "b127c6"

    const/16 v6, -0x362a

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    sget-object v7, Lcom/google/firebase/components/ComponentDiscovery;->COMPONENT_SENTINEL_VALUE:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v4, Lcom/google/firebase/components/ComponentDiscovery;->TAG:Ljava/lang/String;

    new-array v5, v12, [B

    fill-array-data v5, :array_1

    const-string v6, "4d4eb1"

    const v7, 0x4eacec0d

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v5

    new-array v6, v11, [Ljava/lang/Object;

    aput-object v0, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :try_start_1
    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/components/ComponentRegistrar;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_1
    move-exception v1

    sget-object v4, Lcom/google/firebase/components/ComponentDiscovery;->TAG:Ljava/lang/String;

    new-array v5, v12, [B

    fill-array-data v5, :array_2

    const-string v6, "d41811"

    const-wide/32 v8, -0x6df7ac47

    invoke-static {v5, v6, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    new-array v6, v11, [Ljava/lang/Object;

    aput-object v0, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :catch_2
    move-exception v1

    sget-object v4, Lcom/google/firebase/components/ComponentDiscovery;->TAG:Ljava/lang/String;

    new-array v5, v13, [B

    fill-array-data v5, :array_3

    const-string v6, "006e0d"

    const/16 v7, -0x504d

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v11, [Ljava/lang/Object;

    aput-object v0, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :catch_3
    move-exception v1

    sget-object v4, Lcom/google/firebase/components/ComponentDiscovery;->TAG:Ljava/lang/String;

    new-array v5, v13, [B

    fill-array-data v5, :array_4

    const-string v6, "83755a"

    const v7, -0x312b68b5

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v5

    new-array v6, v11, [Ljava/lang/Object;

    aput-object v0, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :catch_4
    move-exception v1

    sget-object v4, Lcom/google/firebase/components/ComponentDiscovery;->TAG:Ljava/lang/String;

    new-array v5, v12, [B

    fill-array-data v5, :array_5

    const-string v6, "75e7d0"

    const/16 v7, -0x657c

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v11, [Ljava/lang/Object;

    aput-object v0, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_1
    return-object v2

    nop

    :array_0
    .array-data 1
        0x21t
        0x5dt
        0x53t
        0x44t
        0x10t
        0x16t
        0x47t
        0x42t
        0x12t
        0x5et
        0x10t
        0x16t
        0xct
        0x5et
        0x46t
        0x17t
        0x2t
        0x58t
        0x42t
        0x58t
        0x5ct
        0x44t
        0x17t
        0x57t
        0xct
        0x52t
        0x57t
        0x17t
        0xct
        0x50t
        0x42t
        0x14t
        0x41t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x77t
        0x8t
        0x55t
        0x16t
        0x11t
        0x11t
        0x11t
        0x17t
        0x14t
        0xct
        0x11t
        0x11t
        0x5at
        0xbt
        0x40t
        0x45t
        0x3t
        0x5ft
        0x14t
        0x2t
        0x5bt
        0x10t
        0xct
        0x55t
        0x1at
    .end array-data

    nop

    :array_2
    .array-data 1
        0x27t
        0x5bt
        0x44t
        0x54t
        0x55t
        0x11t
        0xat
        0x5bt
        0x45t
        0x18t
        0x58t
        0x5ft
        0x17t
        0x40t
        0x50t
        0x56t
        0x45t
        0x58t
        0x5t
        0x40t
        0x54t
        0x18t
        0x14t
        0x42t
        0x4at
    .end array-data

    nop

    :array_3
    .array-data 1
        0x73t
        0x5ft
        0x43t
        0x9t
        0x54t
        0x44t
        0x5et
        0x5ft
        0x42t
        0x45t
        0x59t
        0xat
        0x43t
        0x44t
        0x57t
        0xbt
        0x44t
        0xdt
        0x51t
        0x44t
        0x53t
        0x45t
        0x15t
        0x17t
    .end array-data

    :array_4
    .array-data 1
        0x7bt
        0x5ct
        0x42t
        0x59t
        0x51t
        0x41t
        0x56t
        0x5ct
        0x43t
        0x15t
        0x5ct
        0xft
        0x4bt
        0x47t
        0x56t
        0x5bt
        0x41t
        0x8t
        0x59t
        0x47t
        0x52t
        0x15t
        0x10t
        0x12t
    .end array-data

    :array_5
    .array-data 1
        0x74t
        0x5at
        0x10t
        0x5bt
        0x0t
        0x10t
        0x59t
        0x5at
        0x11t
        0x17t
        0xdt
        0x5et
        0x44t
        0x41t
        0x4t
        0x59t
        0x10t
        0x59t
        0x56t
        0x41t
        0x0t
        0x17t
        0x41t
        0x43t
        0x19t
    .end array-data
.end method


# virtual methods
.method public discover()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/firebase/components/ComponentRegistrar;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/components/ComponentDiscovery;->retriever:Lcom/google/firebase/components/ComponentDiscovery$RegistrarNameRetriever;

    iget-object v1, p0, Lcom/google/firebase/components/ComponentDiscovery;->context:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/google/firebase/components/ComponentDiscovery$RegistrarNameRetriever;->retrieve(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/components/ComponentDiscovery;->instantiate(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
