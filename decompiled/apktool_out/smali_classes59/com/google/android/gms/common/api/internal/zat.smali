.class public final Lcom/google/android/gms/common/api/internal/zat;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# instance fields
.field public final zaa:Lcom/google/android/gms/common/api/Api;

.field private final zab:Z

.field private zac:Lcom/google/android/gms/common/api/internal/zau;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Api;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zat;->zaa:Lcom/google/android/gms/common/api/Api;

    iput-boolean p2, p0, Lcom/google/android/gms/common/api/internal/zat;->zab:Z

    return-void
.end method

.method private final zab()Lcom/google/android/gms/common/api/internal/zau;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zat;->zac:Lcom/google/android/gms/common/api/internal/zau;

    const/16 v1, 0x5d

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "b48a74"

    const-wide v4, 0x41d581dd6e800000L    # 1.443329466E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zat;->zac:Lcom/google/android/gms/common/api/internal/zau;

    return-object v0

    :array_0
    .array-data 1
        0x21t
        0x55t
        0x54t
        0xdt
        0x55t
        0x55t
        0x1t
        0x5ft
        0x4bt
        0x41t
        0x5at
        0x41t
        0x11t
        0x40t
        0x18t
        0x3t
        0x52t
        0x14t
        0x3t
        0x40t
        0x4ct
        0x0t
        0x54t
        0x5ct
        0x7t
        0x50t
        0x18t
        0x15t
        0x58t
        0x14t
        0x3t
        0x14t
        0x7bt
        0xdt
        0x5et
        0x51t
        0xct
        0x40t
        0x7bt
        0xet
        0x59t
        0x5at
        0x7t
        0x57t
        0x4ct
        0x8t
        0x58t
        0x5at
        0x2at
        0x51t
        0x54t
        0x11t
        0x52t
        0x46t
        0x42t
        0x5dt
        0x56t
        0x12t
        0x43t
        0x55t
        0xct
        0x57t
        0x5dt
        0x41t
        0x55t
        0x51t
        0x4t
        0x5bt
        0x4at
        0x4t
        0x17t
        0x57t
        0xdt
        0x5at
        0x56t
        0x4t
        0x54t
        0x40t
        0xbt
        0x5at
        0x5ft
        0x41t
        0x43t
        0x5ct
        0x7t
        0x14t
        0x5bt
        0xdt
        0x5et
        0x51t
        0xct
        0x40t
        0x16t
    .end array-data
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zat;->zab()Lcom/google/android/gms/common/api/internal/zau;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/zau;->onConnected(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zat;->zab()Lcom/google/android/gms/common/api/internal/zau;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zat;->zaa:Lcom/google/android/gms/common/api/Api;

    iget-boolean v2, p0, Lcom/google/android/gms/common/api/internal/zat;->zab:Z

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/gms/common/api/internal/zau;->zaa(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;Z)V

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zat;->zab()Lcom/google/android/gms/common/api/internal/zau;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/zau;->onConnectionSuspended(I)V

    return-void
.end method

.method public final zaa(Lcom/google/android/gms/common/api/internal/zau;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zat;->zac:Lcom/google/android/gms/common/api/internal/zau;

    return-void
.end method
