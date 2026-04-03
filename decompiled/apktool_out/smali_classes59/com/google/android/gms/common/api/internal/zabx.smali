.class public final Lcom/google/android/gms/common/api/internal/zabx;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field zaa:Landroid/content/Context;

.field private final zab:Lcom/google/android/gms/common/api/internal/zabw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zabw;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabx;->zab:Lcom/google/android/gms/common/api/internal/zabw;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/16 v1, 0x16

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "1ad449"

    const-wide v4, -0x3e33ca2c65000000L    # -9.46579254E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabx;->zab:Lcom/google/android/gms/common/api/internal/zabw;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zabw;->zaa()V

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zabx;->zab()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x52t
        0xet
        0x9t
        0x1at
        0x53t
        0x56t
        0x5et
        0x6t
        0x8t
        0x51t
        0x1at
        0x58t
        0x5ft
        0x5t
        0x16t
        0x5bt
        0x5dt
        0x5dt
        0x1ft
        0x6t
        0x9t
        0x47t
    .end array-data
.end method

.method public final zaa(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabx;->zaa:Landroid/content/Context;

    return-void
.end method

.method public final zab()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabx;->zaa:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zabx;->zaa:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
