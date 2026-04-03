.class public final Lcom/google/android/gms/common/internal/zze;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

.field private final zzb:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/BaseGmsClient;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zze;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/common/internal/zze;->zzb:I

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    if-nez p2, :cond_0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzk(Lcom/google/android/gms/common/internal/BaseGmsClient;I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzd(Lcom/google/android/gms/common/internal/BaseGmsClient;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/common/internal/zze;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    const/16 v0, 0x38

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v3, "16a0df"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v3, v0, Lcom/google/android/gms/common/internal/IGmsServiceBroker;

    if-eqz v3, :cond_1

    check-cast v0, Lcom/google/android/gms/common/internal/IGmsServiceBroker;

    :goto_1
    invoke-static {v2, v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzh(Lcom/google/android/gms/common/internal/BaseGmsClient;Lcom/google/android/gms/common/internal/IGmsServiceBroker;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/common/internal/zze;->zzb:I

    invoke-virtual {v0, v5, v1, v2}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzl(ILandroid/os/Bundle;I)V

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v0, Lcom/google/android/gms/common/internal/zzad;

    invoke-direct {v0, p2}, Lcom/google/android/gms/common/internal/zzad;-><init>(Landroid/os/IBinder;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :array_0
    .array-data 1
        0x52t
        0x59t
        0xct
        0x1et
        0x3t
        0x9t
        0x5et
        0x51t
        0xdt
        0x55t
        0x4at
        0x7t
        0x5ft
        0x52t
        0x13t
        0x5ft
        0xdt
        0x2t
        0x1ft
        0x51t
        0xct
        0x43t
        0x4at
        0x5t
        0x5et
        0x5bt
        0xct
        0x5ft
        0xat
        0x48t
        0x58t
        0x58t
        0x15t
        0x55t
        0x16t
        0x8t
        0x50t
        0x5at
        0x4ft
        0x79t
        0x23t
        0xbt
        0x42t
        0x65t
        0x4t
        0x42t
        0x12t
        0xft
        0x52t
        0x53t
        0x23t
        0x42t
        0xbt
        0xdt
        0x54t
        0x44t
    .end array-data
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzd(Lcom/google/android/gms/common/internal/BaseGmsClient;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzh(Lcom/google/android/gms/common/internal/BaseGmsClient;Lcom/google/android/gms/common/internal/IGmsServiceBroker;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzb:Landroid/os/Handler;

    const/4 v1, 0x6

    iget v2, p0, Lcom/google/android/gms/common/internal/zze;->zzb:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
