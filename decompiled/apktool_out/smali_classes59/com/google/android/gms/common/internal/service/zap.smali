.class public final Lcom/google/android/gms/common/internal/service/zap;
.super Lcom/google/android/gms/common/internal/GmsClient;


# instance fields
.field private final zaa:Lcom/google/android/gms/common/internal/TelemetryLoggingOptions;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/internal/TelemetryLoggingOptions;Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;Lcom/google/android/gms/common/api/internal/OnConnectionFailedListener;)V
    .locals 7

    const/16 v3, 0x10e

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/GmsClient;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;Lcom/google/android/gms/common/api/internal/OnConnectionFailedListener;)V

    iput-object p4, p0, Lcom/google/android/gms/common/internal/service/zap;->zaa:Lcom/google/android/gms/common/internal/TelemetryLoggingOptions;

    return-void
.end method


# virtual methods
.method protected final synthetic createServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x46

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "acfdd7"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/common/internal/service/zai;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/common/internal/service/zai;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/common/internal/service/zai;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/internal/service/zai;-><init>(Landroid/os/IBinder;)V

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x2t
        0xct
        0xbt
        0x4at
        0x3t
        0x58t
        0xet
        0x4t
        0xat
        0x1t
        0x4at
        0x56t
        0xft
        0x7t
        0x14t
        0xbt
        0xdt
        0x53t
        0x4ft
        0x4t
        0xbt
        0x17t
        0x4at
        0x54t
        0xet
        0xet
        0xbt
        0xbt
        0xat
        0x19t
        0x8t
        0xdt
        0x12t
        0x1t
        0x16t
        0x59t
        0x0t
        0xft
        0x48t
        0x17t
        0x1t
        0x45t
        0x17t
        0xat
        0x5t
        0x1t
        0x4at
        0x7et
        0x22t
        0xft
        0xft
        0x1t
        0xat
        0x43t
        0x35t
        0x6t
        0xat
        0x1t
        0x9t
        0x52t
        0x15t
        0x11t
        0x1ft
        0x37t
        0x1t
        0x45t
        0x17t
        0xat
        0x5t
        0x1t
    .end array-data
.end method

.method public final getApiFeatures()[Lcom/google/android/gms/common/Feature;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/base/zaf;->zab:[Lcom/google/android/gms/common/Feature;

    return-object v0
.end method

.method protected final getGetServiceRequestExtraArgs()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/service/zap;->zaa:Lcom/google/android/gms/common/internal/TelemetryLoggingOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/TelemetryLoggingOptions;->zaa()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final getMinApkVersion()I
    .locals 1

    const v0, 0xc1fa340

    return v0
.end method

.method protected final getServiceDescriptor()Ljava/lang/String;
    .locals 3

    const/16 v0, 0x46

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "107440"

    const v2, 0x4c742a5e    # 6.400652E7f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x52t
        0x5ft
        0x5at
        0x1at
        0x53t
        0x5ft
        0x5et
        0x57t
        0x5bt
        0x51t
        0x1at
        0x51t
        0x5ft
        0x54t
        0x45t
        0x5bt
        0x5dt
        0x54t
        0x1ft
        0x57t
        0x5at
        0x47t
        0x1at
        0x53t
        0x5et
        0x5dt
        0x5at
        0x5bt
        0x5at
        0x1et
        0x58t
        0x5et
        0x43t
        0x51t
        0x46t
        0x5et
        0x50t
        0x5ct
        0x19t
        0x47t
        0x51t
        0x42t
        0x47t
        0x59t
        0x54t
        0x51t
        0x1at
        0x79t
        0x72t
        0x5ct
        0x5et
        0x51t
        0x5at
        0x44t
        0x65t
        0x55t
        0x5bt
        0x51t
        0x59t
        0x55t
        0x45t
        0x42t
        0x4et
        0x67t
        0x51t
        0x42t
        0x47t
        0x59t
        0x54t
        0x51t
    .end array-data
.end method

.method protected final getStartServiceAction()Ljava/lang/String;
    .locals 4

    const/16 v0, 0x35

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "087798"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x53t
        0x57t
        0x5at
        0x19t
        0x5et
        0x57t
        0x5ft
        0x5ft
        0x5bt
        0x52t
        0x17t
        0x59t
        0x5et
        0x5ct
        0x45t
        0x58t
        0x50t
        0x5ct
        0x1et
        0x5ft
        0x5at
        0x44t
        0x17t
        0x5bt
        0x5ft
        0x55t
        0x5at
        0x58t
        0x57t
        0x16t
        0x44t
        0x5dt
        0x5bt
        0x52t
        0x54t
        0x5dt
        0x44t
        0x4at
        0x4et
        0x19t
        0x4at
        0x5dt
        0x42t
        0x4et
        0x5et
        0x54t
        0x5ct
        0x16t
        0x63t
        0x6ct
        0x76t
        0x65t
        0x6dt
    .end array-data
.end method

.method protected final getUseDynamicLookup()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
