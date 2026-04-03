.class public final Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/GoogleApiClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private zaa:Landroid/accounts/Account;

.field private final zab:Ljava/util/Set;

.field private final zac:Ljava/util/Set;

.field private zad:I

.field private zae:Landroid/view/View;

.field private zaf:Ljava/lang/String;

.field private zag:Ljava/lang/String;

.field private final zah:Ljava/util/Map;

.field private final zai:Landroid/content/Context;

.field private final zaj:Ljava/util/Map;

.field private zak:Lcom/google/android/gms/common/api/internal/LifecycleActivity;

.field private zal:I

.field private zam:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

.field private zan:Landroid/os/Looper;

.field private zao:Lcom/google/android/gms/common/GoogleApiAvailability;

.field private zap:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

.field private final zaq:Ljava/util/ArrayList;

.field private final zar:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zab:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zac:Ljava/util/Set;

    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zah:Ljava/util/Map;

    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zaj:Ljava/util/Map;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zal:I

    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zao:Lcom/google/android/gms/common/GoogleApiAvailability;

    sget-object v0, Lcom/google/android/gms/signin/zad;->zac:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zap:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zaq:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zar:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zai:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zan:Landroid/os/Looper;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zaf:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x21

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "6d32ad"

    const v2, -0x3134e9a1

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zaq:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x29

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "09f9f2"

    const-wide v2, 0x41dd0495bb400000L    # 1.947358957E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zar:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :array_0
    .array-data 1
        0x7bt
        0x11t
        0x40t
        0x46t
        0x41t
        0x14t
        0x44t
        0xbt
        0x45t
        0x5bt
        0x5t
        0x1t
        0x16t
        0x5t
        0x13t
        0x51t
        0xet
        0xat
        0x58t
        0x1t
        0x50t
        0x46t
        0x4t
        0x0t
        0x16t
        0x8t
        0x5at
        0x41t
        0x15t
        0x1t
        0x58t
        0x1t
        0x41t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x7dt
        0x4ct
        0x15t
        0x4dt
        0x46t
        0x42t
        0x42t
        0x56t
        0x10t
        0x50t
        0x2t
        0x57t
        0x10t
        0x58t
        0x46t
        0x5at
        0x9t
        0x5ct
        0x5et
        0x5ct
        0x5t
        0x4dt
        0xft
        0x5dt
        0x5et
        0x19t
        0x0t
        0x58t
        0xft
        0x5et
        0x55t
        0x5dt
        0x46t
        0x55t
        0xft
        0x41t
        0x44t
        0x5ct
        0x8t
        0x5ct
        0x14t
    .end array-data
.end method

.method private final varargs zab(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;[Lcom/google/android/gms/common/api/Scope;)V
    .locals 5

    new-instance v1, Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Api;->zac()Lcom/google/android/gms/common/api/Api$BaseClientBuilder;

    move-result-object v0

    const/16 v2, 0x24

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "738919"

    const/16 v4, 0x3354

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$BaseClientBuilder;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/api/Api$BaseClientBuilder;->getImpliedScopes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    array-length v2, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p3, v0

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zah:Ljava/util/Map;

    new-instance v2, Lcom/google/android/gms/common/internal/zab;

    invoke-direct {v2, v1}, Lcom/google/android/gms/common/internal/zab;-><init>(Ljava/util/Set;)V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :array_0
    .array-data 1
        0x75t
        0x52t
        0x4bt
        0x5ct
        0x11t
        0x5at
        0x5bt
        0x5at
        0x5dt
        0x57t
        0x45t
        0x19t
        0x55t
        0x46t
        0x51t
        0x55t
        0x55t
        0x5ct
        0x45t
        0x13t
        0x55t
        0x4ct
        0x42t
        0x4dt
        0x17t
        0x5dt
        0x57t
        0x4dt
        0x11t
        0x5bt
        0x52t
        0x13t
        0x56t
        0x4ct
        0x5dt
        0x55t
    .end array-data
.end method


# virtual methods
.method public addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api",
            "<+",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NotRequiredOptions;",
            ">;)",
            "Lcom/google/android/gms/common/api/GoogleApiClient$Builder;"
        }
    .end annotation

    const/4 v4, 0x0

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "727c44"

    const-wide/32 v2, 0x70f755f7

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zaj:Ljava/util/Map;

    invoke-interface {v0, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Api;->zac()Lcom/google/android/gms/common/api/Api$BaseClientBuilder;

    move-result-object v0

    const/16 v1, 0x24

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "b38c88"

    const v3, 0x4ed59502

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$BaseClientBuilder;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/common/api/Api$BaseClientBuilder;->getImpliedScopes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zac:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zab:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0

    :array_0
    .array-data 1
        0x76t
        0x42t
        0x5et
        0x43t
        0x59t
        0x41t
        0x44t
        0x46t
        0x17t
        0xdt
        0x5bt
        0x40t
        0x17t
        0x50t
        0x52t
        0x43t
        0x5at
        0x41t
        0x5bt
        0x5et
    .end array-data

    :array_1
    .array-data 1
        0x20t
        0x52t
        0x4bt
        0x6t
        0x18t
        0x5bt
        0xet
        0x5at
        0x5dt
        0xdt
        0x4ct
        0x18t
        0x0t
        0x46t
        0x51t
        0xft
        0x5ct
        0x5dt
        0x10t
        0x13t
        0x55t
        0x16t
        0x4bt
        0x4ct
        0x42t
        0x5dt
        0x57t
        0x17t
        0x18t
        0x5at
        0x7t
        0x13t
        0x56t
        0x16t
        0x54t
        0x54t
    .end array-data
.end method

.method public addApi(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;",
            ">(",
            "Lcom/google/android/gms/common/api/Api",
            "<TO;>;TO;)",
            "Lcom/google/android/gms/common/api/GoogleApiClient$Builder;"
        }
    .end annotation

    const/4 v3, 0x1

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "8320f6"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x2b

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "fc2e0c"

    const v2, 0x4e0b7cfe    # 5.850561E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zaj:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Api;->zac()Lcom/google/android/gms/common/api/Api$BaseClientBuilder;

    move-result-object v0

    const/16 v1, 0x24

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "c0c1a0"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$BaseClientBuilder;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/api/Api$BaseClientBuilder;->getImpliedScopes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zac:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zab:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0

    :array_0
    .array-data 1
        0x79t
        0x43t
        0x5bt
        0x10t
        0xbt
        0x43t
        0x4bt
        0x47t
        0x12t
        0x5et
        0x9t
        0x42t
        0x18t
        0x51t
        0x57t
        0x10t
        0x8t
        0x43t
        0x54t
        0x5ft
    .end array-data

    :array_1
    .array-data 1
        0x28t
        0x16t
        0x5et
        0x9t
        0x10t
        0xct
        0x16t
        0x17t
        0x5bt
        0xat
        0x5et
        0x10t
        0x46t
        0x2t
        0x40t
        0x0t
        0x10t
        0xdt
        0x9t
        0x17t
        0x12t
        0x15t
        0x55t
        0x11t
        0xbt
        0xat
        0x46t
        0x11t
        0x55t
        0x7t
        0x46t
        0x5t
        0x5dt
        0x17t
        0x10t
        0x17t
        0xet
        0xat
        0x41t
        0x45t
        0x71t
        0x13t
        0xft
    .end array-data

    :array_2
    .array-data 1
        0x21t
        0x51t
        0x10t
        0x54t
        0x41t
        0x53t
        0xft
        0x59t
        0x6t
        0x5ft
        0x15t
        0x10t
        0x1t
        0x45t
        0xat
        0x5dt
        0x5t
        0x55t
        0x11t
        0x10t
        0xet
        0x44t
        0x12t
        0x44t
        0x43t
        0x5et
        0xct
        0x45t
        0x41t
        0x52t
        0x6t
        0x10t
        0xdt
        0x44t
        0xdt
        0x5ct
    .end array-data
.end method

.method public varargs addApiIfAvailable(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;[Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;",
            ">(",
            "Lcom/google/android/gms/common/api/Api",
            "<TO;>;TO;[",
            "Lcom/google/android/gms/common/api/Scope;",
            ")",
            "Lcom/google/android/gms/common/api/GoogleApiClient$Builder;"
        }
    .end annotation

    const/4 v2, 0x0

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "b683c5"

    invoke-static {v0, v1, v2, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x2b

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "556b78"

    invoke-static {v0, v1, v2, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zaj:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zab(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;[Lcom/google/android/gms/common/api/Scope;)V

    return-object p0

    :array_0
    .array-data 1
        0x23t
        0x46t
        0x51t
        0x13t
        0xet
        0x40t
        0x11t
        0x42t
        0x18t
        0x5dt
        0xct
        0x41t
        0x42t
        0x54t
        0x5dt
        0x13t
        0xdt
        0x40t
        0xet
        0x5at
    .end array-data

    :array_1
    .array-data 1
        0x7bt
        0x40t
        0x5at
        0xet
        0x17t
        0x57t
        0x45t
        0x41t
        0x5ft
        0xdt
        0x59t
        0x4bt
        0x15t
        0x54t
        0x44t
        0x7t
        0x17t
        0x56t
        0x5at
        0x41t
        0x16t
        0x12t
        0x52t
        0x4at
        0x58t
        0x5ct
        0x42t
        0x16t
        0x52t
        0x5ct
        0x15t
        0x53t
        0x59t
        0x10t
        0x17t
        0x4ct
        0x5dt
        0x5ct
        0x45t
        0x42t
        0x76t
        0x48t
        0x5ct
    .end array-data
.end method

.method public varargs addApiIfAvailable(Lcom/google/android/gms/common/api/Api;[Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NotRequiredOptions;",
            ">(",
            "Lcom/google/android/gms/common/api/Api",
            "<+",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NotRequiredOptions;",
            ">;[",
            "Lcom/google/android/gms/common/api/Scope;",
            ")",
            "Lcom/google/android/gms/common/api/GoogleApiClient$Builder;"
        }
    .end annotation

    const/4 v3, 0x0

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "0ecc26"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zaj:Ljava/util/Map;

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, v3, p2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zab(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;[Lcom/google/android/gms/common/api/Scope;)V

    return-object p0

    nop

    :array_0
    .array-data 1
        0x71t
        0x15t
        0xat
        0x43t
        0x5ft
        0x43t
        0x43t
        0x11t
        0x43t
        0xdt
        0x5dt
        0x42t
        0x10t
        0x7t
        0x6t
        0x43t
        0x5ct
        0x43t
        0x5ct
        0x9t
    .end array-data
.end method

.method public addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .locals 3

    const/16 v0, 0x19

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "e39704"

    const v2, -0x312e4ef6

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zaq:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0

    nop

    :array_0
    .array-data 1
        0x29t
        0x5at
        0x4at
        0x43t
        0x55t
        0x5at
        0x0t
        0x41t
        0x19t
        0x5at
        0x45t
        0x47t
        0x11t
        0x13t
        0x57t
        0x58t
        0x44t
        0x14t
        0x7t
        0x56t
        0x19t
        0x59t
        0x45t
        0x58t
        0x9t
    .end array-data
.end method

.method public addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .locals 4

    const/16 v0, 0x19

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "3c8a93"

    const-wide/32 v2, 0x67dae975

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zar:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0

    nop

    :array_0
    .array-data 1
        0x7ft
        0xat
        0x4bt
        0x15t
        0x5ct
        0x5dt
        0x56t
        0x11t
        0x18t
        0xct
        0x4ct
        0x40t
        0x47t
        0x43t
        0x56t
        0xet
        0x4dt
        0x13t
        0x51t
        0x6t
        0x18t
        0xft
        0x4ct
        0x5ft
        0x5ft
    .end array-data
.end method

.method public addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .locals 3

    const/16 v0, 0x16

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "83aad4"

    const v2, -0x32713d84    # -2.993888E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zab:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0

    nop

    :array_0
    .array-data 1
        0x6bt
        0x50t
        0xet
        0x11t
        0x1t
        0x14t
        0x55t
        0x46t
        0x12t
        0x15t
        0x44t
        0x5at
        0x57t
        0x47t
        0x41t
        0x3t
        0x1t
        0x14t
        0x56t
        0x46t
        0xdt
        0xdt
    .end array-data
.end method

.method public build()Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 20
    .annotation runtime Lcom/google/errorprone/annotations/ResultIgnorabilityUnspecified;
    .end annotation

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zaj:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    const/16 v3, 0x2a

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "237b9f"

    const v5, -0x311a8d2c

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zaa()Lcom/google/android/gms/common/internal/ClientSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/common/internal/ClientSettings;->zad()Ljava/util/Map;

    move-result-object v12

    new-instance v13, Landroidx/collection/ArrayMap;

    invoke-direct {v13}, Landroidx/collection/ArrayMap;-><init>()V

    new-instance v16, Landroidx/collection/ArrayMap;

    invoke-direct/range {v16 .. v16}, Landroidx/collection/ArrayMap;-><init>()V

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zaj:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    const/4 v9, 0x0

    const/4 v2, 0x0

    move v10, v2

    move-object v11, v9

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/google/android/gms/common/api/Api;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zaj:Ljava/util/Map;

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v12, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v13, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/google/android/gms/common/api/internal/zat;

    invoke-direct {v7, v9, v2}, Lcom/google/android/gms/common/api/internal/zat;-><init>(Lcom/google/android/gms/common/api/Api;Z)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9}, Lcom/google/android/gms/common/api/Api;->zaa()Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zai:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zan:Landroid/os/Looper;

    move-object v8, v7

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;->buildClient(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$Client;

    move-result-object v3

    invoke-virtual {v9}, Lcom/google/android/gms/common/api/Api;->zab()Lcom/google/android/gms/common/api/Api$AnyClientKey;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Api$BaseClientBuilder;->getPriority()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_9

    if-eqz v6, :cond_1

    const/4 v2, 0x1

    :goto_2
    invoke-interface {v3}, Lcom/google/android/gms/common/api/Api$Client;->providesSignIn()Z

    move-result v3

    if-eqz v3, :cond_8

    if-nez v11, :cond_2

    move v10, v2

    move-object v11, v9

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v9}, Lcom/google/android/gms/common/api/Api;->zad()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11}, Lcom/google/android/gms/common/api/Api;->zad()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x15

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v5, "4d869e"

    const-wide v6, 0x41b27da15e000000L    # 3.10223198E8

    invoke-static {v2, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    if-eqz v11, :cond_4

    if-nez v10, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zaa:Landroid/accounts/Account;

    if-nez v2, :cond_6

    const/4 v2, 0x1

    :goto_3
    const/16 v3, 0x74

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v4, "d4e984"

    const/4 v6, 0x0

    invoke-static {v3, v4, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v11}, Lcom/google/android/gms/common/api/Api;->zad()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zab:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zac:Ljava/util/Set;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0x71

    new-array v3, v3, [B

    fill-array-data v3, :array_3

    const-string v4, "3c63ac"

    const-wide v6, 0x41c131ee60800000L    # 5.76969921E8

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v11}, Lcom/google/android/gms/common/api/Api;->zad()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/google/android/gms/common/api/internal/zabe;->zad(Ljava/lang/Iterable;Z)I

    move-result v18

    new-instance v6, Lcom/google/android/gms/common/api/internal/zabe;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zai:Landroid/content/Context;

    new-instance v8, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v8}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zan:Landroid/os/Looper;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zao:Lcom/google/android/gms/common/GoogleApiAvailability;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zap:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zaq:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zar:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zal:I

    move/from16 v17, v0

    move-object v10, v5

    invoke-direct/range {v6 .. v19}, Lcom/google/android/gms/common/api/internal/zabe;-><init>(Landroid/content/Context;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/GoogleApiAvailability;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/Map;IILjava/util/ArrayList;)V

    invoke-static {}, Lcom/google/android/gms/common/api/GoogleApiClient;->zaq()Ljava/util/Set;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/api/GoogleApiClient;->zaq()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zal:I

    if-ltz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zak:Lcom/google/android/gms/common/api/internal/LifecycleActivity;

    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/zak;->zaa(Lcom/google/android/gms/common/api/internal/LifecycleActivity;)Lcom/google/android/gms/common/api/internal/zak;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zal:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zam:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    invoke-virtual {v2, v3, v6, v4}, Lcom/google/android/gms/common/api/internal/zak;->zad(ILcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    :cond_5
    return-object v6

    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_7
    invoke-virtual {v11}, Lcom/google/android/gms/common/api/Api;->zad()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0xb

    new-array v4, v4, [B

    fill-array-data v4, :array_4

    const-string v5, "d98d76"

    const v6, -0x3124b944

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x47

    new-array v2, v2, [B

    fill-array-data v2, :array_5

    const-string v4, "147e14"

    const-wide/32 v6, -0x76674d0c

    invoke-static {v2, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_8
    move v10, v2

    goto/16 :goto_0

    :cond_9
    move v2, v10

    goto/16 :goto_2

    :array_0
    .array-data 1
        0x5ft
        0x46t
        0x44t
        0x16t
        0x19t
        0x5t
        0x53t
        0x5ft
        0x5bt
        0x42t
        0x58t
        0x2t
        0x56t
        0x72t
        0x47t
        0xbt
        0x11t
        0x4ft
        0x12t
        0x47t
        0x58t
        0x42t
        0x58t
        0x2t
        0x56t
        0x13t
        0x56t
        0x16t
        0x19t
        0xat
        0x57t
        0x52t
        0x44t
        0x16t
        0x19t
        0x9t
        0x5ct
        0x56t
        0x17t
        0x23t
        0x69t
        0x2ft
    .end array-data

    nop

    :array_1
    .array-data 1
        0x14t
        0x7t
        0x59t
        0x58t
        0x57t
        0xat
        0x40t
        0x44t
        0x5at
        0x53t
        0x19t
        0x10t
        0x47t
        0x1t
        0x5ct
        0x16t
        0x4et
        0xct
        0x40t
        0xct
        0x18t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x29t
        0x41t
        0x16t
        0x4dt
        0x18t
        0x5at
        0xbt
        0x40t
        0x45t
        0x4at
        0x5dt
        0x40t
        0x44t
        0x55t
        0xbt
        0x19t
        0x59t
        0x57t
        0x7t
        0x5bt
        0x10t
        0x57t
        0x4ct
        0x14t
        0xdt
        0x5at
        0x45t
        0x7et
        0x57t
        0x5bt
        0x3t
        0x58t
        0x0t
        0x78t
        0x48t
        0x5dt
        0x27t
        0x58t
        0xct
        0x5ct
        0x56t
        0x40t
        0x4at
        0x76t
        0x10t
        0x50t
        0x54t
        0x50t
        0x1t
        0x46t
        0x45t
        0x4et
        0x50t
        0x51t
        0xat
        0x14t
        0x10t
        0x4at
        0x51t
        0x5at
        0x3t
        0x14t
        0x40t
        0x4at
        0x16t
        0x14t
        0x37t
        0x51t
        0x11t
        0x19t
        0x59t
        0x57t
        0x7t
        0x5bt
        0x10t
        0x57t
        0x4ct
        0x14t
        0xdt
        0x5at
        0x45t
        0x7et
        0x57t
        0x5bt
        0x3t
        0x58t
        0x0t
        0x6at
        0x51t
        0x53t
        0xat
        0x7dt
        0xbt
        0x76t
        0x48t
        0x40t
        0xdt
        0x5bt
        0xbt
        0x4at
        0x16t
        0x76t
        0x11t
        0x5dt
        0x9t
        0x5dt
        0x5dt
        0x46t
        0x44t
        0x5dt
        0xbt
        0x4at
        0x4ct
        0x51t
        0x5t
        0x50t
    .end array-data

    :array_3
    .array-data 1
        0x7et
        0x16t
        0x45t
        0x47t
        0x41t
        0xdt
        0x5ct
        0x17t
        0x16t
        0x40t
        0x4t
        0x17t
        0x13t
        0x10t
        0x55t
        0x5ct
        0x11t
        0x6t
        0x40t
        0x43t
        0x5ft
        0x5dt
        0x41t
        0x24t
        0x5ct
        0xct
        0x51t
        0x5ft
        0x4t
        0x22t
        0x43t
        0xat
        0x75t
        0x5ft
        0x8t
        0x6t
        0x5dt
        0x17t
        0x18t
        0x71t
        0x14t
        0xat
        0x5ft
        0x7t
        0x53t
        0x41t
        0x41t
        0x14t
        0x5bt
        0x6t
        0x58t
        0x13t
        0x14t
        0x10t
        0x5at
        0xdt
        0x51t
        0x13t
        0x44t
        0x10t
        0x1dt
        0x43t
        0x65t
        0x56t
        0x15t
        0x43t
        0x52t
        0x0t
        0x55t
        0x5ct
        0x14t
        0xdt
        0x47t
        0x43t
        0x5ft
        0x5dt
        0x41t
        0x24t
        0x5ct
        0xct
        0x51t
        0x5ft
        0x4t
        0x30t
        0x5at
        0x4t
        0x58t
        0x7at
        0xft
        0x2ct
        0x43t
        0x17t
        0x5ft
        0x5ct
        0xft
        0x10t
        0x1dt
        0x21t
        0x43t
        0x5at
        0xdt
        0x7t
        0x56t
        0x11t
        0x16t
        0x5at
        0xft
        0x10t
        0x47t
        0x6t
        0x57t
        0x57t
        0x4ft
    .end array-data

    nop

    :array_4
    .array-data 1
        0x33t
        0x50t
        0x4ct
        0xct
        0x17t
        0x43t
        0x17t
        0x50t
        0x56t
        0x3t
        0x17t
    .end array-data

    :array_5
    .array-data 1
        0x1dt
        0x14t
        0x70t
        0x4t
        0x5ct
        0x51t
        0x42t
        0x7bt
        0x47t
        0x11t
        0x58t
        0x5bt
        0x5ft
        0x47t
        0x17t
        0x6t
        0x50t
        0x5at
        0x11t
        0x5bt
        0x59t
        0x9t
        0x48t
        0x14t
        0x53t
        0x51t
        0x17t
        0x16t
        0x41t
        0x51t
        0x52t
        0x5dt
        0x51t
        0xct
        0x54t
        0x50t
        0x11t
        0x43t
        0x5et
        0x11t
        0x59t
        0x5dt
        0x5ft
        0x14t
        0x70t
        0xat
        0x5et
        0x53t
        0x5dt
        0x51t
        0x64t
        0xct
        0x56t
        0x5at
        0x78t
        0x5at
        0x78t
        0x15t
        0x45t
        0x5dt
        0x5et
        0x5at
        0x44t
        0x4bt
        0x73t
        0x41t
        0x58t
        0x58t
        0x53t
        0x0t
        0x43t
    .end array-data
.end method

.method public enableAutoManage(Landroidx/fragment/app/FragmentActivity;ILcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .locals 6

    new-instance v1, Lcom/google/android/gms/common/api/internal/LifecycleActivity;

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/api/internal/LifecycleActivity;-><init>(Landroid/app/Activity;)V

    if-ltz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/16 v2, 0x1d

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "13458b"

    const-wide v4, -0x3e415a782b000000L    # -5.14164693E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput p2, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zal:I

    iput-object p3, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zam:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    iput-object v1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zak:Lcom/google/android/gms/common/api/internal/LifecycleActivity;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :array_0
    .array-data 1
        0x52t
        0x5ft
        0x5dt
        0x50t
        0x56t
        0x16t
        0x78t
        0x57t
        0x14t
        0x58t
        0x4dt
        0x11t
        0x45t
        0x13t
        0x56t
        0x50t
        0x18t
        0xct
        0x5et
        0x5dt
        0x19t
        0x5bt
        0x5dt
        0x5t
        0x50t
        0x47t
        0x5dt
        0x43t
        0x5dt
    .end array-data
.end method

.method public enableAutoManage(Landroidx/fragment/app/FragmentActivity;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->enableAutoManage(Landroidx/fragment/app/FragmentActivity;ILcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    return-object p0
.end method

.method public setAccountName(Ljava/lang/String;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .locals 4

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zaa:Landroid/accounts/Account;

    return-object p0

    :cond_0
    new-instance v0, Landroid/accounts/Account;

    const/16 v1, 0xa

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "191bbe"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :array_0
    .array-data 1
        0x52t
        0x56t
        0x5ct
        0x4ct
        0x5t
        0xat
        0x5et
        0x5et
        0x5dt
        0x7t
    .end array-data
.end method

.method public setGravityForPopups(I)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zad:I

    return-object p0
.end method

.method public setHandler(Landroid/os/Handler;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .locals 3

    const/16 v0, 0x18

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "8f7b61"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zan:Landroid/os/Looper;

    return-object p0

    :array_0
    .array-data 1
        0x70t
        0x7t
        0x59t
        0x6t
        0x5at
        0x54t
        0x4at
        0x46t
        0x5at
        0x17t
        0x45t
        0x45t
        0x18t
        0x8t
        0x58t
        0x16t
        0x16t
        0x53t
        0x5dt
        0x46t
        0x59t
        0x17t
        0x5at
        0x5dt
    .end array-data
.end method

.method public setViewForPopups(Landroid/view/View;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .locals 3

    const/16 v0, 0x15

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "68febc"

    const/16 v2, 0x2bf3

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zae:Landroid/view/View;

    return-object p0

    nop

    :array_0
    .array-data 1
        0x60t
        0x51t
        0x3t
        0x12t
        0x42t
        0xet
        0x43t
        0x4bt
        0x12t
        0x45t
        0xct
        0xct
        0x42t
        0x18t
        0x4t
        0x0t
        0x42t
        0xdt
        0x43t
        0x54t
        0xat
    .end array-data
.end method

.method public useDefaultAccount()Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .locals 4

    const/16 v0, 0x13

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "f7ef80"

    const-wide v2, -0x3e2d49cfcb800000L    # -1.255719122E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->setAccountName(Ljava/lang/String;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    return-object p0

    :array_0
    .array-data 1
        0x5at
        0xbt
        0x1t
        0x3t
        0x5et
        0x51t
        0x13t
        0x5bt
        0x11t
        0x46t
        0x59t
        0x53t
        0x5t
        0x58t
        0x10t
        0x8t
        0x4ct
        0xet
        0x58t
    .end array-data
.end method

.method public final zaa()Lcom/google/android/gms/common/internal/ClientSettings;
    .locals 10

    sget-object v8, Lcom/google/android/gms/signin/SignInOptions;->zaa:Lcom/google/android/gms/signin/SignInOptions;

    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zaj:Ljava/util/Map;

    sget-object v1, Lcom/google/android/gms/signin/zad;->zag:Lcom/google/android/gms/common/api/Api;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zaj:Ljava/util/Map;

    sget-object v1, Lcom/google/android/gms/signin/zad;->zag:Lcom/google/android/gms/common/api/Api;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/signin/SignInOptions;

    move-object v8, v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/common/internal/ClientSettings;

    iget-object v1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zaa:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zab:Ljava/util/Set;

    iget-object v3, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zah:Ljava/util/Map;

    iget v4, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zad:I

    iget-object v5, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zae:Landroid/view/View;

    iget-object v6, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zaf:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zag:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/common/internal/ClientSettings;-><init>(Landroid/accounts/Account;Ljava/util/Set;Ljava/util/Map;ILandroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/signin/SignInOptions;Z)V

    return-object v0
.end method
