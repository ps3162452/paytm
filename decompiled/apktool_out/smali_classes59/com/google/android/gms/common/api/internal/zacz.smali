.class final Lcom/google/android/gms/common/api/internal/zacz;
.super Lcom/google/android/gms/internal/base/zau;


# instance fields
.field final zaa:Lcom/google/android/gms/common/api/internal/zada;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zada;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zacz;->zaa:Lcom/google/android/gms/common/api/internal/zada;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/base/zau;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    const/16 v6, 0x15

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    iget v0, p1, Landroid/os/Message;->what:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x3b

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "d06a6c"

    const-wide/32 v4, -0x68c629b7

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-array v0, v6, [B

    fill-array-data v0, :array_1

    const-string v2, "2a0005"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/RuntimeException;

    new-array v1, v6, [B

    fill-array-data v1, :array_2

    const-string v2, "a83d26"

    const/16 v3, -0x1f4d

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x37

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const-string v3, "b61720"

    const/16 v4, 0x431c

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/api/PendingResult;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zacz;->zaa:Lcom/google/android/gms/common/api/internal/zada;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zada;->zad(Lcom/google/android/gms/common/api/internal/zada;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zacz;->zaa:Lcom/google/android/gms/common/api/internal/zada;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zada;->zac(Lcom/google/android/gms/common/api/internal/zada;)Lcom/google/android/gms/common/api/internal/zada;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/internal/zada;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v3, 0xd

    const/16 v4, 0x17

    new-array v4, v4, [B

    fill-array-data v4, :array_4

    const-string v5, "89ad86"

    const-wide v6, -0x3e3c3f4229800000L    # -6.62797229E8

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-static {v1, v0}, Lcom/google/android/gms/common/api/internal/zada;->zag(Lcom/google/android/gms/common/api/internal/zada;Lcom/google/android/gms/common/api/Status;)V

    :goto_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    instance-of v3, v0, Lcom/google/android/gms/common/api/internal/zacp;

    if-eqz v3, :cond_1

    check-cast v0, Lcom/google/android/gms/common/api/internal/zacp;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zacp;->zaa()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/common/api/internal/zada;->zag(Lcom/google/android/gms/common/api/internal/zada;Lcom/google/android/gms/common/api/Status;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/internal/zada;->zai(Lcom/google/android/gms/common/api/PendingResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x30t
        0x42t
        0x57t
        0xft
        0x45t
        0x5t
        0xbt
        0x42t
        0x5bt
        0x0t
        0x42t
        0xat
        0xbt
        0x5et
        0x64t
        0x4t
        0x45t
        0x16t
        0x8t
        0x44t
        0x7et
        0x0t
        0x58t
        0x7t
        0x8t
        0x55t
        0x44t
        0x41t
        0x44t
        0x6t
        0x7t
        0x55t
        0x5ft
        0x17t
        0x53t
        0x7t
        0x44t
        0x45t
        0x58t
        0xat
        0x58t
        0xct
        0x13t
        0x5et
        0x16t
        0xct
        0x53t
        0x10t
        0x17t
        0x51t
        0x51t
        0x4t
        0x16t
        0x17t
        0x1dt
        0x40t
        0x53t
        0x5bt
        0x16t
    .end array-data

    :array_1
    .array-data 1
        0x66t
        0x13t
        0x51t
        0x5et
        0x43t
        0x53t
        0x5dt
        0x13t
        0x5dt
        0x55t
        0x54t
        0x67t
        0x57t
        0x12t
        0x45t
        0x5ct
        0x44t
        0x7ct
        0x5ft
        0x11t
        0x5ct
    .end array-data

    nop

    :array_2
    .array-data 1
        0x35t
        0x4at
        0x52t
        0xat
        0x41t
        0x50t
        0xet
        0x4at
        0x5et
        0x1t
        0x56t
        0x64t
        0x4t
        0x4bt
        0x46t
        0x8t
        0x46t
        0x7ft
        0xct
        0x48t
        0x5ft
    .end array-data

    nop

    :array_3
    .array-data 1
        0x30t
        0x43t
        0x5ft
        0x43t
        0x5bt
        0x5dt
        0x7t
        0x16t
        0x54t
        0x4ft
        0x51t
        0x55t
        0x12t
        0x42t
        0x58t
        0x58t
        0x5ct
        0x10t
        0xdt
        0x58t
        0x11t
        0x43t
        0x5at
        0x55t
        0x42t
        0x42t
        0x43t
        0x56t
        0x5ct
        0x43t
        0x4t
        0x59t
        0x43t
        0x5at
        0x53t
        0x44t
        0xbt
        0x59t
        0x5ft
        0x17t
        0x45t
        0x5ft
        0x10t
        0x5dt
        0x54t
        0x45t
        0x12t
        0x44t
        0xat
        0x44t
        0x54t
        0x56t
        0x56t
        0xat
        0x42t
    .end array-data

    :array_4
    .array-data 1
        0x6ct
        0x4bt
        0x0t
        0xat
        0x4bt
        0x50t
        0x57t
        0x4bt
        0xct
        0x44t
        0x4at
        0x53t
        0x4ct
        0x4ct
        0x13t
        0xat
        0x5dt
        0x52t
        0x18t
        0x57t
        0x14t
        0x8t
        0x54t
    .end array-data
.end method
