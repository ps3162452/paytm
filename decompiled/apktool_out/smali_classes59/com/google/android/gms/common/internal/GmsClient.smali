.class public abstract Lcom/google/android/gms/common/internal/GmsClient;
.super Lcom/google/android/gms/common/internal/BaseGmsClient;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$Client;
.implements Lcom/google/android/gms/common/internal/zaj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Lcom/google/android/gms/common/internal/BaseGmsClient",
        "<TT;>;",
        "Lcom/google/android/gms/common/api/Api$Client;",
        "Lcom/google/android/gms/common/internal/zaj;"
    }
.end annotation


# static fields
.field private static volatile zaa:Ljava/util/concurrent/Executor;


# instance fields
.field private final zab:Lcom/google/android/gms/common/internal/ClientSettings;

.field private final zac:Ljava/util/Set;

.field private final zad:Landroid/accounts/Account;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/os/Handler;ILcom/google/android/gms/common/internal/ClientSettings;)V
    .locals 8

    const/4 v6, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/common/internal/GmsClientSupervisor;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/common/internal/BaseGmsClient;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/GmsClientSupervisor;Lcom/google/android/gms/common/GoogleApiAvailabilityLight;ILcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;)V

    invoke-static {p4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/ClientSettings;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/GmsClient;->zab:Lcom/google/android/gms/common/internal/ClientSettings;

    invoke-virtual {p4}, Lcom/google/android/gms/common/internal/ClientSettings;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/GmsClient;->zad:Landroid/accounts/Account;

    invoke-virtual {p4}, Lcom/google/android/gms/common/internal/ClientSettings;->getAllRequestedScopes()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/internal/GmsClient;->zaa(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/GmsClient;->zac:Ljava/util/Set;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/ClientSettings;)V
    .locals 9

    const/4 v7, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/common/internal/GmsClientSupervisor;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p4

    move-object v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/internal/GmsClient;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/GmsClientSupervisor;Lcom/google/android/gms/common/GoogleApiAvailability;ILcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;Lcom/google/android/gms/common/api/internal/OnConnectionFailedListener;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/common/internal/GmsClient;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;Lcom/google/android/gms/common/api/internal/OnConnectionFailedListener;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;Lcom/google/android/gms/common/api/internal/OnConnectionFailedListener;)V
    .locals 9

    invoke-static {p1}, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/common/internal/GmsClientSupervisor;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v4

    invoke-static {p5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;

    invoke-static {p6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/common/api/internal/OnConnectionFailedListener;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/internal/GmsClient;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/GmsClientSupervisor;Lcom/google/android/gms/common/GoogleApiAvailability;ILcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;Lcom/google/android/gms/common/api/internal/OnConnectionFailedListener;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/GmsClientSupervisor;Lcom/google/android/gms/common/GoogleApiAvailability;ILcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;Lcom/google/android/gms/common/api/internal/OnConnectionFailedListener;)V
    .locals 10

    if-nez p7, :cond_0

    const/4 v7, 0x0

    :goto_0
    if-nez p8, :cond_1

    const/4 v8, 0x0

    :goto_1
    invoke-virtual/range {p6 .. p6}, Lcom/google/android/gms/common/internal/ClientSettings;->zac()Ljava/lang/String;

    move-result-object v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/common/internal/BaseGmsClient;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/GmsClientSupervisor;Lcom/google/android/gms/common/GoogleApiAvailabilityLight;ILcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;Ljava/lang/String;)V

    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/google/android/gms/common/internal/GmsClient;->zab:Lcom/google/android/gms/common/internal/ClientSettings;

    invoke-virtual/range {p6 .. p6}, Lcom/google/android/gms/common/internal/ClientSettings;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/common/internal/GmsClient;->zad:Landroid/accounts/Account;

    invoke-virtual/range {p6 .. p6}, Lcom/google/android/gms/common/internal/ClientSettings;->getAllRequestedScopes()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gms/common/internal/GmsClient;->zaa(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/common/internal/GmsClient;->zac:Ljava/util/Set;

    return-void

    :cond_0
    new-instance v7, Lcom/google/android/gms/common/internal/zah;

    move-object/from16 v0, p7

    invoke-direct {v7, v0}, Lcom/google/android/gms/common/internal/zah;-><init>(Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;)V

    goto :goto_0

    :cond_1
    new-instance v8, Lcom/google/android/gms/common/internal/zai;

    move-object/from16 v0, p8

    invoke-direct {v8, v0}, Lcom/google/android/gms/common/internal/zai;-><init>(Lcom/google/android/gms/common/api/internal/OnConnectionFailedListener;)V

    goto :goto_1
.end method

.method private final zaa(Ljava/util/Set;)Ljava/util/Set;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/GmsClient;->validateScopes(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Scope;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x3d

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "341ed9"

    const/16 v3, 0x2f60

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-object v1

    :array_0
    .array-data 1
        0x76t
        0x4ct
        0x41t
        0x4t
        0xat
        0x5dt
        0x5at
        0x5at
        0x56t
        0x45t
        0x17t
        0x5at
        0x5ct
        0x44t
        0x54t
        0x16t
        0x44t
        0x50t
        0x40t
        0x14t
        0x5ft
        0xat
        0x10t
        0x19t
        0x43t
        0x51t
        0x43t
        0x8t
        0xdt
        0x4dt
        0x47t
        0x51t
        0x55t
        0x49t
        0x44t
        0x4ct
        0x40t
        0x51t
        0x11t
        0xct
        0x9t
        0x49t
        0x5ft
        0x5dt
        0x54t
        0x1t
        0x44t
        0x4at
        0x50t
        0x5bt
        0x41t
        0x0t
        0x17t
        0x19t
        0x5at
        0x5at
        0x42t
        0x11t
        0x1t
        0x58t
        0x57t
    .end array-data
.end method


# virtual methods
.method public final getAccount()Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/GmsClient;->zad:Landroid/accounts/Account;

    return-object v0
.end method

.method protected final getBindServiceExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final getClientSettings()Lcom/google/android/gms/common/internal/ClientSettings;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/GmsClient;->zab:Lcom/google/android/gms/common/internal/ClientSettings;

    return-object v0
.end method

.method public getRequiredFeatures()[Lcom/google/android/gms/common/Feature;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/common/Feature;

    return-object v0
.end method

.method protected final getScopes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/GmsClient;->zac:Ljava/util/Set;

    return-object v0
.end method

.method public getScopesForConnectionlessNonSignIn()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/GmsClient;->requiresSignIn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/GmsClient;->zac:Ljava/util/Set;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method protected validateScopes(Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    return-object p1
.end method
