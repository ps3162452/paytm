.class public Lcom/google/android/gms/common/BlockingServiceConnection;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field zza:Z

.field private final zzb:Ljava/util/concurrent/BlockingQueue;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/BlockingServiceConnection;->zza:Z

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/BlockingServiceConnection;->zzb:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method


# virtual methods
.method public getService()Landroid/os/IBinder;
    .locals 5
    .annotation runtime Lcom/google/errorprone/annotations/ResultIgnorabilityUnspecified;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v4, 0x1

    const/16 v0, 0x3c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "416503"

    const v2, -0x31321591

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotMainThread(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/gms/common/BlockingServiceConnection;->zza:Z

    if-nez v0, :cond_0

    iput-boolean v4, p0, Lcom/google/android/gms/common/BlockingServiceConnection;->zza:Z

    iget-object v0, p0, Lcom/google/android/gms/common/BlockingServiceConnection;->zzb:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x31

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "80ba81"

    const/4 v3, 0x0

    invoke-static {v1, v2, v4, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x76t
        0x5dt
        0x59t
        0x56t
        0x5bt
        0x5at
        0x5at
        0x56t
        0x65t
        0x50t
        0x42t
        0x45t
        0x5dt
        0x52t
        0x53t
        0x76t
        0x5ft
        0x5dt
        0x5at
        0x54t
        0x55t
        0x41t
        0x59t
        0x5ct
        0x5at
        0x1ft
        0x51t
        0x50t
        0x44t
        0x60t
        0x51t
        0x43t
        0x40t
        0x5ct
        0x53t
        0x56t
        0x1ct
        0x18t
        0x16t
        0x56t
        0x51t
        0x5ft
        0x58t
        0x54t
        0x52t
        0x15t
        0x5ft
        0x5dt
        0x14t
        0x5ct
        0x57t
        0x5ct
        0x5et
        0x13t
        0x40t
        0x59t
        0x44t
        0x50t
        0x51t
        0x57t
    .end array-data

    :array_1
    .array-data 1
        0x7bt
        0x51t
        0xct
        0xft
        0x57t
        0x45t
        0x18t
        0x53t
        0x3t
        0xdt
        0x54t
        0x11t
        0x5ft
        0x55t
        0x16t
        0x41t
        0x57t
        0x5ft
        0x18t
        0x44t
        0xat
        0x8t
        0x4bt
        0x11t
        0x5bt
        0x5ft
        0xct
        0xft
        0x5dt
        0x52t
        0x4ct
        0x59t
        0xdt
        0xft
        0x18t
        0x5ct
        0x57t
        0x42t
        0x7t
        0x41t
        0x4ct
        0x59t
        0x59t
        0x5et
        0x42t
        0xet
        0x56t
        0x52t
        0x5dt
    .end array-data
.end method

.method public getServiceWithTimeout(JLjava/util/concurrent/TimeUnit;)Landroid/os/IBinder;
    .locals 7
    .annotation runtime Lcom/google/errorprone/annotations/ResultIgnorabilityUnspecified;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    const/16 v0, 0x47

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "e6c1ed"

    const v2, 0x4efe6430

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotMainThread(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/gms/common/BlockingServiceConnection;->zza:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/BlockingServiceConnection;->zza:Z

    iget-object v0, p0, Lcom/google/android/gms/common/BlockingServiceConnection;->zzb:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    const/16 v1, 0x2c

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "551da8"

    const-wide v4, -0x3e3758b952000000L    # -8.2723158E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x31

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "1b6fe9"

    const/16 v3, -0x49d1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x27t
        0x5at
        0xct
        0x52t
        0xet
        0xdt
        0xbt
        0x51t
        0x30t
        0x54t
        0x17t
        0x12t
        0xct
        0x55t
        0x6t
        0x72t
        0xat
        0xat
        0xbt
        0x53t
        0x0t
        0x45t
        0xct
        0xbt
        0xbt
        0x18t
        0x4t
        0x54t
        0x11t
        0x37t
        0x0t
        0x44t
        0x15t
        0x58t
        0x6t
        0x1t
        0x32t
        0x5ft
        0x17t
        0x59t
        0x31t
        0xdt
        0x8t
        0x53t
        0xct
        0x44t
        0x11t
        0x4ct
        0x4ct
        0x16t
        0x0t
        0x50t
        0x9t
        0x8t
        0x0t
        0x52t
        0x43t
        0x5et
        0xbt
        0x44t
        0x8t
        0x57t
        0xat
        0x5ft
        0x45t
        0x10t
        0xdt
        0x44t
        0x6t
        0x50t
        0x1t
    .end array-data

    :array_1
    .array-data 1
        0x61t
        0x5ct
        0x5ct
        0x1t
        0x5t
        0x18t
        0x5at
        0x40t
        0x45t
        0x44t
        0x16t
        0x59t
        0x5ct
        0x41t
        0x58t
        0xat
        0x6t
        0x18t
        0x53t
        0x5at
        0x43t
        0x44t
        0x15t
        0x50t
        0x50t
        0x15t
        0x42t
        0x1t
        0x13t
        0x4et
        0x5ct
        0x56t
        0x54t
        0x44t
        0x2t
        0x57t
        0x5bt
        0x5bt
        0x54t
        0x7t
        0x15t
        0x51t
        0x5at
        0x5bt
    .end array-data

    :array_2
    .array-data 1
        0x72t
        0x3t
        0x58t
        0x8t
        0xat
        0x4dt
        0x11t
        0x1t
        0x57t
        0xat
        0x9t
        0x19t
        0x56t
        0x7t
        0x42t
        0x46t
        0xat
        0x57t
        0x11t
        0x16t
        0x5et
        0xft
        0x16t
        0x19t
        0x52t
        0xdt
        0x58t
        0x8t
        0x0t
        0x5at
        0x45t
        0xbt
        0x59t
        0x8t
        0x45t
        0x54t
        0x5et
        0x10t
        0x53t
        0x46t
        0x11t
        0x51t
        0x50t
        0xct
        0x16t
        0x9t
        0xbt
        0x5at
        0x54t
    .end array-data
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/BlockingServiceConnection;->zzb:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p2}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
