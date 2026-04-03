.class public final Lcom/google/android/gms/dynamite/zzb;
.super Ljava/lang/Object;


# static fields
.field private static zza:Ljava/lang/ClassLoader;

.field private static zzb:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/dynamite/zzb;->zza:Ljava/lang/ClassLoader;

    sput-object v0, Lcom/google/android/gms/dynamite/zzb;->zzb:Ljava/lang/Thread;

    return-void
.end method

.method public static zza()Ljava/lang/ClassLoader;
    .locals 13

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-class v0, Lcom/google/android/gms/dynamite/zzb;

    monitor-enter v0

    :try_start_0
    sget-object v0, Lcom/google/android/gms/dynamite/zzb;->zza:Ljava/lang/ClassLoader;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/dynamite/zzb;->zzb:Ljava/lang/Thread;

    if-nez v0, :cond_9

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v4

    if-nez v4, :cond_1

    move-object v0, v1

    :goto_0
    sput-object v0, Lcom/google/android/gms/dynamite/zzb;->zzb:Ljava/lang/Thread;

    if-nez v0, :cond_7

    move-object v0, v1

    :goto_1
    sput-object v0, Lcom/google/android/gms/dynamite/zzb;->zza:Ljava/lang/ClassLoader;

    :cond_0
    sget-object v0, Lcom/google/android/gms/dynamite/zzb;->zza:Ljava/lang/ClassLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-class v1, Lcom/google/android/gms/dynamite/zzb;

    monitor-exit v1

    return-object v0

    :cond_1
    :try_start_1
    const-class v0, Ljava/lang/Void;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v4}, Ljava/lang/ThreadGroup;->activeGroupCount()I

    move-result v5

    new-array v6, v5, [Ljava/lang/ThreadGroup;

    invoke-virtual {v4, v6}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/ThreadGroup;)I
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v3, v2

    :goto_2
    if-ge v3, v5, :cond_3

    aget-object v0, v6, v3

    const/16 v7, 0xe

    :try_start_3
    new-array v7, v7, [B

    fill-array-data v7, :array_0

    const-string v8, "9da787"

    const-wide v10, -0x3e26904daa800000L    # -1.707002198E9

    invoke-static {v7, v8, v10, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    :goto_3
    if-nez v0, :cond_8

    new-instance v0, Ljava/lang/ThreadGroup;

    const/16 v3, 0xe

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v5, "586354"

    const-wide/32 v6, -0x72f77c27

    invoke-static {v3, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v4, v3}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    move-object v4, v0

    :goto_4
    invoke-virtual {v4}, Ljava/lang/ThreadGroup;->activeCount()I

    move-result v5

    new-array v6, v5, [Ljava/lang/Thread;

    invoke-virtual {v4, v6}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;)I
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v0, v2

    :goto_5
    if-ge v0, v5, :cond_5

    aget-object v3, v6, v0

    const/16 v2, 0xb

    :try_start_4
    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v7, "869f92"

    const/4 v8, 0x1

    invoke-static {v2, v7, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v2

    if-eqz v2, :cond_4

    :goto_6
    if-nez v3, :cond_6

    :try_start_5
    new-instance v2, Lcom/google/android/gms/dynamite/zza;

    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v5, "d98944"

    const v6, 0x4eb9aeae

    invoke-static {v0, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v4, v0}, Lcom/google/android/gms/dynamite/zza;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v0, 0x0

    :try_start_6
    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v0, v2

    :goto_7
    :try_start_7
    const-class v2, Ljava/lang/Void;

    monitor-exit v2

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    const-class v1, Ljava/lang/Void;

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v0

    const-class v1, Lcom/google/android/gms/dynamite/zzb;

    monitor-exit v1

    throw v0

    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    move-object v3, v1

    goto :goto_6

    :catch_0
    move-exception v0

    move-object v12, v0

    move-object v0, v2

    move-object v2, v12

    :goto_8
    :try_start_9
    invoke-virtual {v2}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x27

    new-array v4, v4, [B

    fill-array-data v4, :array_4

    const-string v5, "de2a59"

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x12

    new-array v2, v2, [B

    fill-array-data v2, :array_5

    const-string v4, "f955ba"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_7

    :catch_1
    move-exception v0

    move-object v2, v0

    move-object v0, v3

    goto :goto_8

    :cond_6
    move-object v0, v3

    goto :goto_7

    :catch_2
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    goto :goto_8

    :cond_7
    move-object v2, v0

    :goto_9
    :try_start_a
    monitor-enter v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    sget-object v0, Lcom/google/android/gms/dynamite/zzb;->zzb:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;
    :try_end_b
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move-result-object v0

    :goto_a
    :try_start_c
    monitor-exit v2

    goto/16 :goto_1

    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :catch_3
    move-exception v0

    :try_start_e
    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x29

    new-array v4, v4, [B

    fill-array-data v4, :array_6

    const-string v5, "dff400"

    const v6, 0x4e890ada    # 1.1495949E9f

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x12

    new-array v0, v0, [B

    fill-array-data v0, :array_7

    const-string v4, "29fb19"

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    move-object v0, v1

    goto :goto_a

    :cond_8
    move-object v4, v0

    goto/16 :goto_4

    :cond_9
    move-object v2, v0

    goto :goto_9

    :array_0
    .array-data 1
        0x5dt
        0x1dt
        0xft
        0x56t
        0x55t
        0x5et
        0x4dt
        0x1t
        0x2dt
        0x58t
        0x59t
        0x53t
        0x5ct
        0x16t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x51t
        0x41t
        0x58t
        0x52t
        0x58t
        0x5dt
        0x41t
        0x5dt
        0x7at
        0x5ct
        0x54t
        0x50t
        0x50t
        0x4at
    .end array-data

    nop

    :array_2
    .array-data 1
        0x7ft
        0x5bt
        0x4at
        0x22t
        0x40t
        0x5ct
        0x59t
        0x5bt
        0x50t
        0x12t
        0x5ct
    .end array-data

    :array_3
    .array-data 1
        0x23t
        0x54t
        0x4bt
        0x7dt
        0x4dt
        0x5at
        0x5t
        0x54t
        0x51t
        0x4dt
        0x51t
    .end array-data

    :array_4
    .array-data 1
        0x22t
        0x4t
        0x5bt
        0xdt
        0x50t
        0x5dt
        0x44t
        0x11t
        0x5dt
        0x41t
        0x50t
        0x57t
        0x11t
        0x8t
        0x57t
        0x13t
        0x54t
        0x4dt
        0x1t
        0x45t
        0x46t
        0x9t
        0x47t
        0x5ct
        0x5t
        0x1t
        0x1dt
        0x15t
        0x5dt
        0x4bt
        0x1t
        0x4t
        0x56t
        0x6t
        0x47t
        0x56t
        0x11t
        0x15t
        0x12t
    .end array-data

    :array_5
    .array-data 1
        0x22t
        0x40t
        0x5bt
        0x54t
        0xft
        0x8t
        0x12t
        0x5ct
        0x79t
        0x5at
        0x3t
        0x5t
        0x3t
        0x4bt
        0x63t
        0x7t
        0x21t
        0x2dt
    .end array-data

    nop

    :array_6
    .array-data 1
        0x22t
        0x7t
        0xft
        0x58t
        0x55t
        0x54t
        0x44t
        0x12t
        0x9t
        0x14t
        0x57t
        0x55t
        0x10t
        0x46t
        0x12t
        0x5ct
        0x42t
        0x55t
        0x5t
        0x2t
        0x46t
        0x57t
        0x5ft
        0x5et
        0x10t
        0x3t
        0x1et
        0x40t
        0x10t
        0x53t
        0x8t
        0x7t
        0x15t
        0x47t
        0x5ct
        0x5ft
        0x5t
        0x2t
        0x3t
        0x46t
        0x10t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x76t
        0x40t
        0x8t
        0x3t
        0x5ct
        0x50t
        0x46t
        0x5ct
        0x2at
        0xdt
        0x50t
        0x5dt
        0x57t
        0x4bt
        0x30t
        0x50t
        0x72t
        0x75t
    .end array-data
.end method
