.class final Lcom/google/android/gms/common/internal/zzj;
.super Ljava/lang/Object;


# static fields
.field static final zza:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v2, 0x1

    invoke-static {}, Lcom/google/android/gms/internal/common/zzh;->zza()Lcom/google/android/gms/internal/common/zze;

    new-instance v8, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "fe794f"

    const-wide v4, -0x3e30bf1bb2000000L    # -1.048692892E9

    invoke-static {v0, v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move v3, v2

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    invoke-static {v1}, Ljava/util/concurrent/Executors;->unconfigurableExecutorService(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/internal/zzj;->zza:Ljava/util/concurrent/ExecutorService;

    return-void

    :array_0
    .array-data 1
        0x25t
        0x4t
        0x5bt
        0x55t
        0x56t
        0x7t
        0x5t
        0xet
        0x72t
        0x41t
        0x51t
        0x5t
        0x13t
        0x11t
        0x58t
        0x4bt
    .end array-data
.end method
