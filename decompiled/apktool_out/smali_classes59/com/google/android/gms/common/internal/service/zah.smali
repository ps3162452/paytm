.class public final Lcom/google/android/gms/common/internal/service/zah;
.super Lcom/google/android/gms/common/internal/GmsClient;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/GmsClient",
        "<",
        "Lcom/google/android/gms/common/internal/service/zal;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 7

    const/16 v3, 0x27

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/GmsClient;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-void
.end method


# virtual methods
.method protected final synthetic createServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 4

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x3d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "86c569"

    const-wide v2, -0x3e2e78eb16800000L    # -1.176261542E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/common/internal/service/zal;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/common/internal/service/zal;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/common/internal/service/zal;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/internal/service/zal;-><init>(Landroid/os/IBinder;)V

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x5bt
        0x59t
        0xet
        0x1bt
        0x51t
        0x56t
        0x57t
        0x51t
        0xft
        0x50t
        0x18t
        0x58t
        0x56t
        0x52t
        0x11t
        0x5at
        0x5ft
        0x5dt
        0x16t
        0x51t
        0xet
        0x46t
        0x18t
        0x5at
        0x57t
        0x5bt
        0xet
        0x5at
        0x58t
        0x17t
        0x51t
        0x58t
        0x17t
        0x50t
        0x44t
        0x57t
        0x59t
        0x5at
        0x4dt
        0x46t
        0x53t
        0x4bt
        0x4et
        0x5ft
        0x0t
        0x50t
        0x18t
        0x70t
        0x7bt
        0x59t
        0xet
        0x58t
        0x59t
        0x57t
        0x6bt
        0x53t
        0x11t
        0x43t
        0x5ft
        0x5at
        0x5dt
    .end array-data
.end method

.method protected final getServiceDescriptor()Ljava/lang/String;
    .locals 3

    const/16 v0, 0x3d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "90ca52"

    const v2, -0x32da8567    # -1.735172E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x5at
        0x5ft
        0xet
        0x4ft
        0x52t
        0x5dt
        0x56t
        0x57t
        0xft
        0x4t
        0x1bt
        0x53t
        0x57t
        0x54t
        0x11t
        0xet
        0x5ct
        0x56t
        0x17t
        0x57t
        0xet
        0x12t
        0x1bt
        0x51t
        0x56t
        0x5dt
        0xet
        0xet
        0x5bt
        0x1ct
        0x50t
        0x5et
        0x17t
        0x4t
        0x47t
        0x5ct
        0x58t
        0x5ct
        0x4dt
        0x12t
        0x50t
        0x40t
        0x4ft
        0x59t
        0x0t
        0x4t
        0x1bt
        0x7bt
        0x7at
        0x5ft
        0xet
        0xct
        0x5at
        0x5ct
        0x6at
        0x55t
        0x11t
        0x17t
        0x5ct
        0x51t
        0x5ct
    .end array-data
.end method

.method public final getStartServiceAction()Ljava/lang/String;
    .locals 4

    const/16 v0, 0x2b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "1dc8e6"

    const-wide/32 v2, 0x326b141f

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x52t
        0xbt
        0xet
        0x16t
        0x2t
        0x59t
        0x5et
        0x3t
        0xft
        0x5dt
        0x4bt
        0x57t
        0x5ft
        0x0t
        0x11t
        0x57t
        0xct
        0x52t
        0x1ft
        0x3t
        0xet
        0x4bt
        0x4bt
        0x55t
        0x5et
        0x9t
        0xet
        0x57t
        0xbt
        0x18t
        0x42t
        0x1t
        0x11t
        0x4et
        0xct
        0x55t
        0x54t
        0x4at
        0x30t
        0x6ct
        0x24t
        0x64t
        0x65t
    .end array-data
.end method
