.class final Lcom/google/android/gms/common/internal/zzs;
.super Lcom/google/android/gms/common/internal/GmsClientSupervisor;


# instance fields
.field private final zzb:Ljava/util/HashMap;

.field private final zzc:Landroid/content/Context;

.field private volatile zzd:Landroid/os/Handler;

.field private final zze:Lcom/google/android/gms/common/internal/zzr;

.field private final zzf:Lcom/google/android/gms/common/stats/ConnectionTracker;

.field private final zzg:J

.field private final zzh:J

.field private volatile zzi:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/util/concurrent/Executor;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/GmsClientSupervisor;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzs;->zzb:Ljava/util/HashMap;

    new-instance v0, Lcom/google/android/gms/common/internal/zzr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/common/internal/zzr;-><init>(Lcom/google/android/gms/common/internal/zzs;Lcom/google/android/gms/common/internal/zzq;)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzs;->zze:Lcom/google/android/gms/common/internal/zzr;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/common/internal/zzs;->zzc:Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/internal/common/zzi;

    invoke-direct {v1, p2, v0}, Lcom/google/android/gms/internal/common/zzi;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/google/android/gms/common/internal/zzs;->zzd:Landroid/os/Handler;

    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->getInstance()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzs;->zzf:Lcom/google/android/gms/common/stats/ConnectionTracker;

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/google/android/gms/common/internal/zzs;->zzg:J

    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/google/android/gms/common/internal/zzs;->zzh:J

    iput-object p3, p0, Lcom/google/android/gms/common/internal/zzs;->zzi:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/common/internal/zzs;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/common/internal/zzs;->zzh:J

    return-wide v0
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/common/internal/zzs;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzs;->zzc:Landroid/content/Context;

    return-object v0
.end method

.method static bridge synthetic zzf(Lcom/google/android/gms/common/internal/zzs;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzs;->zzd:Landroid/os/Handler;

    return-object v0
.end method

.method static bridge synthetic zzg(Lcom/google/android/gms/common/internal/zzs;)Lcom/google/android/gms/common/stats/ConnectionTracker;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzs;->zzf:Lcom/google/android/gms/common/stats/ConnectionTracker;

    return-object v0
.end method

.method static bridge synthetic zzh(Lcom/google/android/gms/common/internal/zzs;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzs;->zzb:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method protected final zza(Lcom/google/android/gms/common/internal/zzo;Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .locals 7

    const/16 v0, 0x22

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "2db22c"

    const-wide v2, 0x41bfd676d6000000L    # 5.34148822E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzs;->zzb:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzs;->zzb:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/zzp;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/internal/zzp;->zzh(Landroid/content/ServiceConnection;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/common/internal/zzp;->zzf(Landroid/content/ServiceConnection;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzp;->zzi()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzs;->zzd:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzs;->zzd:Landroid/os/Handler;

    iget-wide v4, p0, Lcom/google/android/gms/common/internal/zzs;->zzg:J

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    monitor-exit v1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x4c

    new-array v4, v4, [B

    fill-array-data v4, :array_1

    const-string v5, "93801f"

    const/16 v6, -0x3314

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x32

    new-array v4, v4, [B

    fill-array-data v4, :array_2

    const-string v5, "b16ec5"

    const/16 v6, 0x14b7

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :array_0
    .array-data 1
        0x61t
        0x1t
        0x10t
        0x44t
        0x5bt
        0x0t
        0x57t
        0x27t
        0xdt
        0x5ct
        0x5ct
        0x6t
        0x51t
        0x10t
        0xbt
        0x5dt
        0x5ct
        0x43t
        0x5ft
        0x11t
        0x11t
        0x46t
        0x12t
        0xdt
        0x5dt
        0x10t
        0x42t
        0x50t
        0x57t
        0x43t
        0x5ct
        0x11t
        0xet
        0x5et
    .end array-data

    nop

    :array_1
    .array-data 1
        0x6dt
        0x41t
        0x41t
        0x59t
        0x5ft
        0x1t
        0x19t
        0x47t
        0x57t
        0x10t
        0x44t
        0x8t
        0x5bt
        0x5at
        0x56t
        0x54t
        0x11t
        0x7t
        0x19t
        0x74t
        0x55t
        0x43t
        0x62t
        0x3t
        0x4bt
        0x45t
        0x51t
        0x53t
        0x54t
        0x25t
        0x56t
        0x5dt
        0x56t
        0x55t
        0x52t
        0x12t
        0x50t
        0x5ct
        0x56t
        0x10t
        0x11t
        0x12t
        0x51t
        0x52t
        0x4ct
        0x10t
        0x46t
        0x7t
        0x4at
        0x13t
        0x56t
        0x5ft
        0x45t
        0x46t
        0x5bt
        0x5ct
        0x4dt
        0x5et
        0x55t
        0x46t
        0x5bt
        0x56t
        0x5et
        0x5ft
        0x43t
        0x3t
        0x17t
        0x13t
        0x18t
        0x53t
        0x5et
        0x8t
        0x5ft
        0x5at
        0x5ft
        0xdt
    .end array-data

    :array_2
    .array-data 1
        0x2ct
        0x5et
        0x58t
        0x0t
        0x1bt
        0x5ct
        0x11t
        0x45t
        0x53t
        0xbt
        0x17t
        0x15t
        0x1t
        0x5et
        0x58t
        0xbt
        0x6t
        0x56t
        0x16t
        0x58t
        0x59t
        0xbt
        0x43t
        0x46t
        0x16t
        0x50t
        0x42t
        0x10t
        0x10t
        0x15t
        0x4t
        0x5et
        0x44t
        0x45t
        0x10t
        0x50t
        0x10t
        0x47t
        0x5ft
        0x6t
        0x6t
        0x15t
        0x1t
        0x5et
        0x58t
        0x3t
        0xat
        0x52t
        0x58t
        0x11t
    .end array-data
.end method

.method protected final zzc(Lcom/google/android/gms/common/internal/zzo;Landroid/content/ServiceConnection;Ljava/lang/String;Ljava/util/concurrent/Executor;)Z
    .locals 8

    const/16 v0, 0x22

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "4c5e0a"

    const v2, 0x4ee6b519

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzs;->zzb:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzs;->zzb:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/zzp;

    if-nez p4, :cond_0

    iget-object p4, p0, Lcom/google/android/gms/common/internal/zzs;->zzi:Ljava/util/concurrent/Executor;

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/common/internal/zzp;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/internal/zzp;-><init>(Lcom/google/android/gms/common/internal/zzs;Lcom/google/android/gms/common/internal/zzo;)V

    invoke-virtual {v0, p2, p2, p3}, Lcom/google/android/gms/common/internal/zzp;->zzd(Landroid/content/ServiceConnection;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    invoke-virtual {v0, p3, p4}, Lcom/google/android/gms/common/internal/zzp;->zze(Ljava/lang/String;Ljava/util/concurrent/Executor;)V

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzs;->zzb:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzp;->zzj()Z

    move-result v0

    monitor-exit v1

    return v0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzs;->zzd:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/internal/zzp;->zzh(Landroid/content/ServiceConnection;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0, p2, p2, p3}, Lcom/google/android/gms/common/internal/zzp;->zzd(Landroid/content/ServiceConnection;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzp;->zza()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzp;->zzb()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzp;->zzc()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_1
    :try_start_1
    invoke-virtual {v0, p3, p4}, Lcom/google/android/gms/common/internal/zzp;->zze(Ljava/lang/String;Ljava/util/concurrent/Executor;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x51

    new-array v4, v4, [B

    fill-array-data v4, :array_1

    const-string v5, "e3b00f"

    const-wide v6, 0x41ba7de7c8000000L    # 4.44458952E8

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :array_0
    .array-data 1
        0x67t
        0x6t
        0x47t
        0x13t
        0x59t
        0x2t
        0x51t
        0x20t
        0x5at
        0xbt
        0x5et
        0x4t
        0x57t
        0x17t
        0x5ct
        0xat
        0x5et
        0x41t
        0x59t
        0x16t
        0x46t
        0x11t
        0x10t
        0xft
        0x5bt
        0x17t
        0x15t
        0x7t
        0x55t
        0x41t
        0x5at
        0x16t
        0x59t
        0x9t
    .end array-data

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :array_1
    .array-data 1
        0x31t
        0x41t
        0x1bt
        0x59t
        0x5et
        0x1t
        0x45t
        0x47t
        0xdt
        0x10t
        0x52t
        0xft
        0xbt
        0x57t
        0x42t
        0x51t
        0x10t
        0x21t
        0x8t
        0x40t
        0x31t
        0x55t
        0x42t
        0x10t
        0xct
        0x50t
        0x7t
        0x73t
        0x5ft
        0x8t
        0xbt
        0x56t
        0x1t
        0x44t
        0x59t
        0x9t
        0xbt
        0x13t
        0x16t
        0x58t
        0x51t
        0x12t
        0x45t
        0x44t
        0x3t
        0x43t
        0x10t
        0x7t
        0x9t
        0x41t
        0x7t
        0x51t
        0x54t
        0x1ft
        0x45t
        0x50t
        0xdt
        0x5et
        0x5et
        0x3t
        0x6t
        0x47t
        0x7t
        0x54t
        0x10t
        0x4t
        0x0t
        0x55t
        0xdt
        0x42t
        0x55t
        0x48t
        0x45t
        0x13t
        0x1t
        0x5ft
        0x5et
        0x0t
        0xct
        0x54t
        0x5ft
    .end array-data
.end method

.method final zzi(Ljava/util/concurrent/Executor;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzs;->zzb:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzs;->zzi:Ljava/util/concurrent/Executor;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final zzj(Landroid/os/Looper;)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzs;->zzb:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/common/zzi;

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzs;->zze:Lcom/google/android/gms/common/internal/zzr;

    invoke-direct {v0, p1, v2}, Lcom/google/android/gms/internal/common/zzi;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzs;->zzd:Landroid/os/Handler;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
