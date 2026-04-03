.class final Lcom/google/android/gms/common/api/internal/zaj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# instance fields
.field public final zaa:I

.field public final zab:Lcom/google/android/gms/common/api/GoogleApiClient;

.field public final zac:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

.field final zad:Lcom/google/android/gms/common/api/internal/zak;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zak;ILcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaj;->zad:Lcom/google/android/gms/common/api/internal/zak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/common/api/internal/zaj;->zaa:I

    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/zaj;->zab:Lcom/google/android/gms/common/api/GoogleApiClient;

    iput-object p4, p0, Lcom/google/android/gms/common/api/internal/zaj;->zac:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    return-void
.end method


# virtual methods
.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 4

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "0f3f07"

    const-wide/32 v2, 0x5671cba3

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1b

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "20fb1b"

    const/16 v3, -0x1e6f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaj;->zad:Lcom/google/android/gms/common/api/internal/zak;

    iget v1, p0, Lcom/google/android/gms/common/api/internal/zaj;->zaa:I

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/common/api/internal/zap;->zah(Lcom/google/android/gms/common/ConnectionResult;I)V

    return-void

    :array_0
    .array-data 1
        0x71t
        0x13t
        0x47t
        0x9t
        0x7dt
        0x56t
        0x5et
        0x7t
        0x54t
        0x3t
        0x78t
        0x52t
        0x5ct
        0x16t
        0x56t
        0x14t
    .end array-data

    :array_1
    .array-data 1
        0x50t
        0x55t
        0x1t
        0xbt
        0x5ft
        0x24t
        0x53t
        0x59t
        0xat
        0x17t
        0x43t
        0x7t
        0x60t
        0x55t
        0x15t
        0xdt
        0x5dt
        0x17t
        0x46t
        0x59t
        0x9t
        0xct
        0x11t
        0x4t
        0x5dt
        0x42t
        0x46t
    .end array-data
.end method
