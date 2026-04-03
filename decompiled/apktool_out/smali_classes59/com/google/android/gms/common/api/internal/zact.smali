.class public final Lcom/google/android/gms/common/api/internal/zact;
.super Lcom/google/android/gms/signin/internal/zac;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# static fields
.field private static final zaa:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;


# instance fields
.field private final zab:Landroid/content/Context;

.field private final zac:Landroid/os/Handler;

.field private final zad:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

.field private final zae:Ljava/util/Set;

.field private final zaf:Lcom/google/android/gms/common/internal/ClientSettings;

.field private zag:Lcom/google/android/gms/signin/zae;

.field private zah:Lcom/google/android/gms/common/api/internal/zacs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/signin/zad;->zac:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    sput-object v0, Lcom/google/android/gms/common/api/internal/zact;->zaa:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/ClientSettings;)V
    .locals 4

    sget-object v1, Lcom/google/android/gms/common/api/internal/zact;->zaa:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    invoke-direct {p0}, Lcom/google/android/gms/signin/internal/zac;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zact;->zab:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zact;->zac:Landroid/os/Handler;

    const/16 v0, 0x1f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v2, "3a4885"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/ClientSettings;

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zact;->zaf:Lcom/google/android/gms/common/internal/ClientSettings;

    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/ClientSettings;->getRequiredScopes()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zact;->zae:Ljava/util/Set;

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/zact;->zad:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    return-void

    :array_0
    .array-data 1
        0x70t
        0xdt
        0x5dt
        0x5dt
        0x56t
        0x41t
        0x60t
        0x4t
        0x40t
        0x4ct
        0x51t
        0x5bt
        0x54t
        0x12t
        0x14t
        0x55t
        0x4dt
        0x46t
        0x47t
        0x41t
        0x5at
        0x57t
        0x4ct
        0x15t
        0x51t
        0x4t
        0x14t
        0x56t
        0x4dt
        0x59t
        0x5ft
    .end array-data
.end method

.method static bridge synthetic zac(Lcom/google/android/gms/common/api/internal/zact;)Lcom/google/android/gms/common/api/internal/zacs;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zact;->zah:Lcom/google/android/gms/common/api/internal/zacs;

    return-object v0
.end method

.method static bridge synthetic zad(Lcom/google/android/gms/common/api/internal/zact;Lcom/google/android/gms/signin/internal/zak;)V
    .locals 8

    invoke-virtual {p1}, Lcom/google/android/gms/signin/internal/zak;->zaa()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/signin/internal/zak;->zab()Lcom/google/android/gms/common/internal/zav;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/zav;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zav;->zaa()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    const/16 v3, 0x11

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "8ef269"

    const-wide v6, 0x41c70de753800000L    # 7.73574311E8

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x30

    new-array v4, v4, [B

    fill-array-data v4, :array_1

    const-string v5, "94ea35"

    const-wide v6, 0x41d2838a09c00000L    # 1.242441767E9

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zact;->zah:Lcom/google/android/gms/common/api/internal/zacs;

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/internal/zacs;->zae(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zact;->zag:Lcom/google/android/gms/signin/zae;

    invoke-interface {v0}, Lcom/google/android/gms/signin/zae;->disconnect()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zact;->zah:Lcom/google/android/gms/common/api/internal/zacs;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zav;->zab()Lcom/google/android/gms/common/internal/IAccountAccessor;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zact;->zae:Ljava/util/Set;

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/common/api/internal/zacs;->zaf(Lcom/google/android/gms/common/internal/IAccountAccessor;Ljava/util/Set;)V

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zact;->zag:Lcom/google/android/gms/signin/zae;

    invoke-interface {v0}, Lcom/google/android/gms/signin/zae;->disconnect()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zact;->zah:Lcom/google/android/gms/common/api/internal/zacs;

    invoke-interface {v1, v0}, Lcom/google/android/gms/common/api/internal/zacs;->zae(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_1

    :array_0
    .array-data 1
        0x6bt
        0xct
        0x1t
        0x5ct
        0x7ft
        0x57t
        0x7bt
        0xat
        0x9t
        0x40t
        0x52t
        0x50t
        0x56t
        0x4t
        0x12t
        0x5dt
        0x44t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x6at
        0x5dt
        0x2t
        0xft
        0x1et
        0x5ct
        0x57t
        0x14t
        0x16t
        0x14t
        0x50t
        0x56t
        0x5ct
        0x51t
        0x1t
        0x4t
        0x57t
        0x15t
        0x4et
        0x5dt
        0x11t
        0x9t
        0x13t
        0x47t
        0x5ct
        0x47t
        0xat
        0xdt
        0x45t
        0x50t
        0x19t
        0x55t
        0x6t
        0x2t
        0x5ct
        0x40t
        0x57t
        0x40t
        0x45t
        0x7t
        0x52t
        0x5ct
        0x55t
        0x41t
        0x17t
        0x4t
        0x9t
        0x15t
    .end array-data
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zact;->zag:Lcom/google/android/gms/signin/zae;

    invoke-interface {v0, p0}, Lcom/google/android/gms/signin/zae;->zad(Lcom/google/android/gms/signin/internal/zae;)V

    return-void
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zact;->zah:Lcom/google/android/gms/common/api/internal/zacs;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/zacs;->zae(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zact;->zag:Lcom/google/android/gms/signin/zae;

    invoke-interface {v0}, Lcom/google/android/gms/signin/zae;->disconnect()V

    return-void
.end method

.method public final zab(Lcom/google/android/gms/signin/internal/zak;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zact;->zac:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/common/api/internal/zacr;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/common/api/internal/zacr;-><init>(Lcom/google/android/gms/common/api/internal/zact;Lcom/google/android/gms/signin/internal/zak;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zae(Lcom/google/android/gms/common/api/internal/zacs;)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zact;->zag:Lcom/google/android/gms/signin/zae;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/signin/zae;->disconnect()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zact;->zaf:Lcom/google/android/gms/common/internal/ClientSettings;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/ClientSettings;->zae(Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zact;->zad:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zact;->zab:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zact;->zac:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zact;->zaf:Lcom/google/android/gms/common/internal/ClientSettings;

    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/ClientSettings;->zaa()Lcom/google/android/gms/signin/SignInOptions;

    move-result-object v4

    move-object v5, p0

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;->buildClient(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$Client;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zact;->zag:Lcom/google/android/gms/signin/zae;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zact;->zah:Lcom/google/android/gms/common/api/internal/zacs;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zact;->zae:Ljava/util/Set;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zact;->zac:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/common/api/internal/zacq;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/api/internal/zacq;-><init>(Lcom/google/android/gms/common/api/internal/zact;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zact;->zag:Lcom/google/android/gms/signin/zae;

    invoke-interface {v0}, Lcom/google/android/gms/signin/zae;->zab()V

    goto :goto_0
.end method

.method public final zaf()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zact;->zag:Lcom/google/android/gms/signin/zae;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/signin/zae;->disconnect()V

    :cond_0
    return-void
.end method
