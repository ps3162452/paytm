.class public final Lcom/google/android/gms/common/internal/zzd;
.super Lcom/google/android/gms/common/internal/zzac;


# instance fields
.field private zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

.field private final zzb:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/BaseGmsClient;I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/zzac;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzd;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    iput p2, p0, Lcom/google/android/gms/common/internal/zzd;->zzb:I

    return-void
.end method


# virtual methods
.method public final onPostInitComplete(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzd;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    const/16 v1, 0x47

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "ff9a0d"

    const-wide/32 v4, -0x55d5cf59

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzd;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    iget v1, p0, Lcom/google/android/gms/common/internal/zzd;->zzb:I

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->onPostInitHandler(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzd;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    return-void

    :array_0
    .array-data 1
        0x9t
        0x8t
        0x69t
        0xet
        0x43t
        0x10t
        0x2ft
        0x8t
        0x50t
        0x15t
        0x73t
        0xbt
        0xbt
        0x16t
        0x55t
        0x4t
        0x44t
        0x1t
        0x46t
        0x5t
        0x58t
        0xft
        0x10t
        0x6t
        0x3t
        0x46t
        0x5at
        0x0t
        0x5ct
        0x8t
        0x3t
        0x2t
        0x19t
        0xet
        0x5et
        0x8t
        0x1ft
        0x46t
        0x56t
        0xft
        0x53t
        0x1t
        0x46t
        0x16t
        0x5ct
        0x13t
        0x10t
        0x7t
        0x7t
        0xat
        0x55t
        0x41t
        0x44t
        0xbt
        0x46t
        0x1t
        0x5ct
        0x15t
        0x62t
        0x1t
        0xbt
        0x9t
        0x4dt
        0x4t
        0x63t
        0x1t
        0x14t
        0x10t
        0x50t
        0x2t
        0x55t
    .end array-data
.end method

.method public final zzb(ILandroid/os/Bundle;)V
    .locals 4

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "329bd6"

    const-wide v2, 0x41df085266400000L    # 2.082556313E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x42

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "481841"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    nop

    :array_0
    .array-data 1
        0x74t
        0x5ft
        0x4at
        0x21t
        0x8t
        0x5ft
        0x56t
        0x5ct
        0x4dt
    .end array-data

    nop

    :array_1
    .array-data 1
        0x46t
        0x5dt
        0x52t
        0x5dt
        0x5dt
        0x47t
        0x51t
        0x5ct
        0x11t
        0x5ct
        0x51t
        0x41t
        0x46t
        0x5dt
        0x52t
        0x59t
        0x40t
        0x54t
        0x50t
        0x18t
        0x5et
        0x56t
        0x75t
        0x52t
        0x57t
        0x57t
        0x44t
        0x56t
        0x40t
        0x67t
        0x55t
        0x54t
        0x58t
        0x5ct
        0x55t
        0x45t
        0x5dt
        0x57t
        0x5ft
        0x7bt
        0x5bt
        0x5ct
        0x44t
        0x54t
        0x54t
        0x4ct
        0x51t
        0x11t
        0x57t
        0x59t
        0x5dt
        0x54t
        0x56t
        0x50t
        0x57t
        0x53t
        0x1dt
        0x18t
        0x5dt
        0x56t
        0x5at
        0x57t
        0x43t
        0x51t
        0x5at
        0x56t
    .end array-data
.end method

.method public final zzc(ILandroid/os/IBinder;Lcom/google/android/gms/common/internal/zzk;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzd;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    const/16 v1, 0x58

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "eac7f0"

    const-wide v4, -0x3e2be79431c00000L    # -1.348579129E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, p3}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzj(Lcom/google/android/gms/common/internal/BaseGmsClient;Lcom/google/android/gms/common/internal/zzk;)V

    iget-object v0, p3, Lcom/google/android/gms/common/internal/zzk;->zza:Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/common/internal/zzd;->onPostInitComplete(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    return-void

    nop

    :array_0
    .array-data 1
        0xat
        0xft
        0x33t
        0x58t
        0x15t
        0x44t
        0x2ct
        0xft
        0xat
        0x43t
        0x25t
        0x5ft
        0x8t
        0x11t
        0xft
        0x52t
        0x12t
        0x55t
        0x32t
        0x8t
        0x17t
        0x5ft
        0x25t
        0x5ft
        0xbt
        0xft
        0x6t
        0x54t
        0x12t
        0x59t
        0xat
        0xft
        0x2at
        0x59t
        0x0t
        0x5ft
        0x45t
        0x2t
        0x2t
        0x59t
        0x46t
        0x52t
        0x0t
        0x41t
        0x0t
        0x56t
        0xat
        0x5ct
        0x0t
        0x5t
        0x43t
        0x58t
        0x8t
        0x5ct
        0x1ct
        0x41t
        0xct
        0x59t
        0x5t
        0x55t
        0x45t
        0x11t
        0x6t
        0x45t
        0x46t
        0x53t
        0x4t
        0xdt
        0xft
        0x17t
        0x12t
        0x5ft
        0x2t
        0x4t
        0x17t
        0x65t
        0x3t
        0x5dt
        0xat
        0x15t
        0x6t
        0x64t
        0x3t
        0x42t
        0x13t
        0x8t
        0x0t
        0x52t
    .end array-data
.end method
