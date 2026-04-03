.class public final Lcom/google/android/gms/common/moduleinstall/internal/zaz;
.super Lcom/google/android/gms/common/internal/GmsClient;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;Lcom/google/android/gms/common/api/internal/OnConnectionFailedListener;)V
    .locals 7

    const/16 v3, 0x134

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/GmsClient;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;Lcom/google/android/gms/common/api/internal/OnConnectionFailedListener;)V

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
    const/16 v0, 0x4a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "50026c"

    const/16 v2, -0x5e8a

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/common/moduleinstall/internal/zaf;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/common/moduleinstall/internal/zaf;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/common/moduleinstall/internal/zaf;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/moduleinstall/internal/zaf;-><init>(Landroid/os/IBinder;)V

    goto :goto_0

    :array_0
    .array-data 1
        0x56t
        0x5ft
        0x5dt
        0x1ct
        0x51t
        0xct
        0x5at
        0x57t
        0x5ct
        0x57t
        0x18t
        0x2t
        0x5bt
        0x54t
        0x42t
        0x5dt
        0x5ft
        0x7t
        0x1bt
        0x57t
        0x5dt
        0x41t
        0x18t
        0x0t
        0x5at
        0x5dt
        0x5dt
        0x5dt
        0x58t
        0x4dt
        0x58t
        0x5ft
        0x54t
        0x47t
        0x5at
        0x6t
        0x5ct
        0x5et
        0x43t
        0x46t
        0x57t
        0xft
        0x59t
        0x1et
        0x59t
        0x5ct
        0x42t
        0x6t
        0x47t
        0x5et
        0x51t
        0x5et
        0x18t
        0x2at
        0x78t
        0x5ft
        0x54t
        0x47t
        0x5at
        0x6t
        0x7ct
        0x5et
        0x43t
        0x46t
        0x57t
        0xft
        0x59t
        0x63t
        0x55t
        0x40t
        0x40t
        0xat
        0x56t
        0x55t
    .end array-data
.end method

.method public final getApiFeatures()[Lcom/google/android/gms/common/Feature;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/base/zav;->zab:[Lcom/google/android/gms/common/Feature;

    return-object v0
.end method

.method public final getMinApkVersion()I
    .locals 1

    const v0, 0x1110e58

    return v0
.end method

.method protected final getServiceDescriptor()Ljava/lang/String;
    .locals 3

    const/16 v0, 0x4a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "314675"

    const/16 v2, -0x4d0d

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x50t
        0x5et
        0x59t
        0x18t
        0x50t
        0x5at
        0x5ct
        0x56t
        0x58t
        0x53t
        0x19t
        0x54t
        0x5dt
        0x55t
        0x46t
        0x59t
        0x5et
        0x51t
        0x1dt
        0x56t
        0x59t
        0x45t
        0x19t
        0x56t
        0x5ct
        0x5ct
        0x59t
        0x59t
        0x59t
        0x1bt
        0x5et
        0x5et
        0x50t
        0x43t
        0x5bt
        0x50t
        0x5at
        0x5ft
        0x47t
        0x42t
        0x56t
        0x59t
        0x5ft
        0x1ft
        0x5dt
        0x58t
        0x43t
        0x50t
        0x41t
        0x5ft
        0x55t
        0x5at
        0x19t
        0x7ct
        0x7et
        0x5et
        0x50t
        0x43t
        0x5bt
        0x50t
        0x7at
        0x5ft
        0x47t
        0x42t
        0x56t
        0x59t
        0x5ft
        0x62t
        0x51t
        0x44t
        0x41t
        0x5ct
        0x50t
        0x54t
    .end array-data
.end method

.method protected final getStartServiceAction()Ljava/lang/String;
    .locals 4

    const/16 v0, 0x51

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "efc075"

    const-wide v2, -0x3e2a2309c3800000L    # -1.46720997E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x6t
        0x9t
        0xet
        0x1et
        0x50t
        0x5at
        0xat
        0x1t
        0xft
        0x55t
        0x19t
        0x54t
        0xbt
        0x2t
        0x11t
        0x5ft
        0x5et
        0x51t
        0x4bt
        0x1t
        0xet
        0x43t
        0x19t
        0x56t
        0xdt
        0xft
        0xet
        0x55t
        0x45t
        0x54t
        0x4bt
        0x5t
        0xct
        0x5et
        0x43t
        0x54t
        0xct
        0x8t
        0x6t
        0x42t
        0x19t
        0x58t
        0xat
        0x2t
        0x16t
        0x5ct
        0x52t
        0x5ct
        0xbt
        0x15t
        0x17t
        0x51t
        0x5bt
        0x59t
        0x4bt
        0x2bt
        0xct
        0x54t
        0x42t
        0x59t
        0x0t
        0x2ft
        0xdt
        0x43t
        0x43t
        0x54t
        0x9t
        0xat
        0x30t
        0x55t
        0x45t
        0x43t
        0xct
        0x5t
        0x6t
        0x1et
        0x64t
        0x61t
        0x24t
        0x34t
        0x37t
    .end array-data
.end method

.method protected final getUseDynamicLookup()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final usesClientTelemetry()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
