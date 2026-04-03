.class final Lcom/google/android/gms/common/internal/zzr;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final zza:Lcom/google/android/gms/common/internal/zzs;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/common/internal/zzs;Lcom/google/android/gms/common/internal/zzq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzr;->zza:Lcom/google/android/gms/common/internal/zzs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 10

    const/4 v2, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzr;->zza:Lcom/google/android/gms/common/internal/zzs;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzs;->zzh(Lcom/google/android/gms/common/internal/zzs;)Ljava/util/HashMap;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/internal/zzo;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzr;->zza:Lcom/google/android/gms/common/internal/zzs;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzs;->zzh(Lcom/google/android/gms/common/internal/zzs;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/internal/zzp;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zzp;->zza()I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x2f

    new-array v6, v6, [B

    fill-array-data v6, :array_0

    const-string v7, "406cd0"

    const/16 v8, -0x1d75

    invoke-static {v6, v7, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5}, Ljava/lang/Exception;-><init>()V

    const/16 v6, 0x13

    new-array v6, v6, [B

    fill-array-data v6, :array_1

    const-string v7, "37b247"

    const-wide v8, 0x41c5a58b92800000L    # 7.26341413E8

    invoke-static {v6, v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zzp;->zzb()Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzo;->zza()Landroid/content/ComponentName;

    move-result-object v3

    :cond_0
    if-nez v3, :cond_4

    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzo;->zzc()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x7

    new-array v5, v5, [B

    fill-array-data v5, :array_2

    const-string v6, "185da4"

    const-wide/32 v8, -0x15a07ae0

    invoke-static {v5, v6, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v0, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    :goto_1
    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/internal/zzp;->onServiceDisconnected(Landroid/content/ComponentName;)V

    :cond_1
    monitor-exit v4

    move v0, v2

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzr;->zza:Lcom/google/android/gms/common/internal/zzs;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzs;->zzh(Lcom/google/android/gms/common/internal/zzs;)Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    :try_start_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/internal/zzo;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzr;->zza:Lcom/google/android/gms/common/internal/zzs;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzs;->zzh(Lcom/google/android/gms/common/internal/zzs;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/internal/zzp;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zzp;->zzi()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zzp;->zzj()Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x13

    new-array v4, v4, [B

    fill-array-data v4, :array_3

    const-string v5, "053f1d"

    const v6, 0x4e912f9c

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/android/gms/common/internal/zzp;->zzg(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzr;->zza:Lcom/google/android/gms/common/internal/zzs;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzs;->zzh(Lcom/google/android/gms/common/internal/zzs;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    monitor-exit v3

    move v0, v2

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_4
    move-object v0, v3

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x60t
        0x59t
        0x5bt
        0x6t
        0xbt
        0x45t
        0x40t
        0x10t
        0x41t
        0x2t
        0xdt
        0x44t
        0x5dt
        0x5et
        0x51t
        0x43t
        0x2t
        0x5ft
        0x46t
        0x10t
        0x65t
        0x6t
        0x16t
        0x46t
        0x5dt
        0x53t
        0x53t
        0x20t
        0xbt
        0x5et
        0x5at
        0x55t
        0x55t
        0x17t
        0xdt
        0x5ft
        0x5at
        0x10t
        0x55t
        0x2t
        0x8t
        0x5ct
        0x56t
        0x51t
        0x55t
        0x8t
        0x44t
    .end array-data

    :array_1
    .array-data 1
        0x74t
        0x5at
        0x11t
        0x71t
        0x58t
        0x5et
        0x56t
        0x59t
        0x16t
        0x61t
        0x41t
        0x47t
        0x56t
        0x45t
        0x14t
        0x5bt
        0x47t
        0x58t
        0x41t
    .end array-data

    :array_2
    .array-data 1
        0x44t
        0x56t
        0x5et
        0xat
        0xet
        0x43t
        0x5ft
    .end array-data

    :array_3
    .array-data 1
        0x77t
        0x58t
        0x40t
        0x25t
        0x5dt
        0xdt
        0x55t
        0x5bt
        0x47t
        0x35t
        0x44t
        0x14t
        0x55t
        0x47t
        0x45t
        0xft
        0x42t
        0xbt
        0x42t
    .end array-data
.end method
