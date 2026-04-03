.class public final Lcom/google/android/gms/common/api/internal/zacp;
.super Lcom/google/android/gms/common/api/PendingResult;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Lcom/google/android/gms/common/api/PendingResult",
        "<TR;>;"
    }
.end annotation


# instance fields
.field private final zaa:Lcom/google/android/gms/common/api/Status;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;)V
    .locals 4

    invoke-direct {p0}, Lcom/google/android/gms/common/api/PendingResult;-><init>()V

    const/16 v0, 0x17

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "b8a1db"

    const/16 v2, 0x7337

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/16 v1, 0x1a

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "263915"

    const v3, 0x4e5153ef    # 8.779847E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zacp;->zaa:Lcom/google/android/gms/common/api/Status;

    return-void

    nop

    :array_0
    .array-data 1
        0x31t
        0x4ct
        0x0t
        0x45t
        0x11t
        0x11t
        0x42t
        0x55t
        0x14t
        0x42t
        0x10t
        0x42t
        0xct
        0x57t
        0x15t
        0x11t
        0x6t
        0x7t
        0x42t
        0x56t
        0x14t
        0x5dt
        0x8t
    .end array-data

    :array_1
    .array-data 1
        0x61t
        0x42t
        0x52t
        0x4dt
        0x44t
        0x46t
        0x12t
        0x5bt
        0x46t
        0x4at
        0x45t
        0x15t
        0x5ct
        0x59t
        0x47t
        0x19t
        0x53t
        0x50t
        0x12t
        0x45t
        0x46t
        0x5at
        0x52t
        0x50t
        0x41t
        0x45t
    .end array-data
.end method


# virtual methods
.method public final addStatusListener(Lcom/google/android/gms/common/api/PendingResult$StatusListener;)V
    .locals 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x5b

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "b5474c"

    const v3, -0x31d8a509

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x2dt
        0x45t
        0x51t
        0x45t
        0x55t
        0x17t
        0xbt
        0x5at
        0x5at
        0x17t
        0x5at
        0xct
        0x16t
        0x15t
        0x47t
        0x42t
        0x44t
        0x13t
        0xdt
        0x47t
        0x40t
        0x52t
        0x50t
        0x43t
        0xdt
        0x5bt
        0x14t
        0x67t
        0x51t
        0xdt
        0x6t
        0x5ct
        0x5at
        0x50t
        0x66t
        0x6t
        0x11t
        0x40t
        0x58t
        0x43t
        0x47t
        0x43t
        0x5t
        0x50t
        0x5at
        0x52t
        0x46t
        0x2t
        0x16t
        0x50t
        0x50t
        0x17t
        0x56t
        0x1at
        0x42t
        0x67t
        0x51t
        0x44t
        0x41t
        0xft
        0x16t
        0x61t
        0x46t
        0x56t
        0x5at
        0x10t
        0x4t
        0x5at
        0x46t
        0x5at
        0x1at
        0x0t
        0x10t
        0x50t
        0x55t
        0x43t
        0x51t
        0x25t
        0x3t
        0x5ct
        0x58t
        0x52t
        0x50t
        0x31t
        0x7t
        0x46t
        0x41t
        0x5bt
        0x40t
        0x4bt
        0x4bt
    .end array-data
.end method

.method public final await()Lcom/google/android/gms/common/api/Result;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x5b

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "00f7d9"

    const-wide v4, -0x3e6bd3214c000000L    # -8.4621229E7

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x7ft
        0x40t
        0x3t
        0x45t
        0x5t
        0x4dt
        0x59t
        0x5ft
        0x8t
        0x17t
        0xat
        0x56t
        0x44t
        0x10t
        0x15t
        0x42t
        0x14t
        0x49t
        0x5ft
        0x42t
        0x12t
        0x52t
        0x0t
        0x19t
        0x5ft
        0x5et
        0x46t
        0x67t
        0x1t
        0x57t
        0x54t
        0x59t
        0x8t
        0x50t
        0x36t
        0x5ct
        0x43t
        0x45t
        0xat
        0x43t
        0x17t
        0x19t
        0x57t
        0x55t
        0x8t
        0x52t
        0x16t
        0x58t
        0x44t
        0x55t
        0x2t
        0x17t
        0x6t
        0x40t
        0x10t
        0x62t
        0x3t
        0x44t
        0x11t
        0x55t
        0x44t
        0x64t
        0x14t
        0x56t
        0xat
        0x4at
        0x56t
        0x5ft
        0x14t
        0x5at
        0x4at
        0x5at
        0x42t
        0x55t
        0x7t
        0x43t
        0x1t
        0x7ft
        0x51t
        0x59t
        0xat
        0x52t
        0x0t
        0x6bt
        0x55t
        0x43t
        0x13t
        0x5bt
        0x10t
        0x11t
        0x19t
    .end array-data
.end method

.method public final await(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/Result;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TR;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x5b

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "c5c269"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x2ct
        0x45t
        0x6t
        0x40t
        0x57t
        0x4dt
        0xat
        0x5at
        0xdt
        0x12t
        0x58t
        0x56t
        0x17t
        0x15t
        0x10t
        0x47t
        0x46t
        0x49t
        0xct
        0x47t
        0x17t
        0x57t
        0x52t
        0x19t
        0xct
        0x5bt
        0x43t
        0x62t
        0x53t
        0x57t
        0x7t
        0x5ct
        0xdt
        0x55t
        0x64t
        0x5ct
        0x10t
        0x40t
        0xft
        0x46t
        0x45t
        0x19t
        0x4t
        0x50t
        0xdt
        0x57t
        0x44t
        0x58t
        0x17t
        0x50t
        0x7t
        0x12t
        0x54t
        0x40t
        0x43t
        0x67t
        0x6t
        0x41t
        0x43t
        0x55t
        0x17t
        0x61t
        0x11t
        0x53t
        0x58t
        0x4at
        0x5t
        0x5at
        0x11t
        0x5ft
        0x18t
        0x5at
        0x11t
        0x50t
        0x2t
        0x46t
        0x53t
        0x7ft
        0x2t
        0x5ct
        0xft
        0x57t
        0x52t
        0x6bt
        0x6t
        0x46t
        0x16t
        0x5et
        0x42t
        0x11t
        0x4at
    .end array-data
.end method

.method public final cancel()V
    .locals 6

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x5b

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "1eaf84"

    const-wide v4, -0x3e26636a5a400000L    # -1.718769303E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x7et
        0x15t
        0x4t
        0x14t
        0x59t
        0x40t
        0x58t
        0xat
        0xft
        0x46t
        0x56t
        0x5bt
        0x45t
        0x45t
        0x12t
        0x13t
        0x48t
        0x44t
        0x5et
        0x17t
        0x15t
        0x3t
        0x5ct
        0x14t
        0x5et
        0xbt
        0x41t
        0x36t
        0x5dt
        0x5at
        0x55t
        0xct
        0xft
        0x1t
        0x6at
        0x51t
        0x42t
        0x10t
        0xdt
        0x12t
        0x4bt
        0x14t
        0x56t
        0x0t
        0xft
        0x3t
        0x4at
        0x55t
        0x45t
        0x0t
        0x5t
        0x46t
        0x5at
        0x4dt
        0x11t
        0x37t
        0x4t
        0x15t
        0x4dt
        0x58t
        0x45t
        0x31t
        0x13t
        0x7t
        0x56t
        0x47t
        0x57t
        0xat
        0x13t
        0xbt
        0x16t
        0x57t
        0x43t
        0x0t
        0x0t
        0x12t
        0x5dt
        0x72t
        0x50t
        0xct
        0xdt
        0x3t
        0x5ct
        0x66t
        0x54t
        0x16t
        0x14t
        0xat
        0x4ct
        0x1ct
        0x18t
    .end array-data
.end method

.method public final isCanceled()Z
    .locals 6

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x5b

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "f5a816"

    const-wide v4, 0x41d5cb75a3800000L    # 1.462621838E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x29t
        0x45t
        0x4t
        0x4at
        0x50t
        0x42t
        0xft
        0x5at
        0xft
        0x18t
        0x5ft
        0x59t
        0x12t
        0x15t
        0x12t
        0x4dt
        0x41t
        0x46t
        0x9t
        0x47t
        0x15t
        0x5dt
        0x55t
        0x16t
        0x9t
        0x5bt
        0x41t
        0x68t
        0x54t
        0x58t
        0x2t
        0x5ct
        0xft
        0x5ft
        0x63t
        0x53t
        0x15t
        0x40t
        0xdt
        0x4ct
        0x42t
        0x16t
        0x1t
        0x50t
        0xft
        0x5dt
        0x43t
        0x57t
        0x12t
        0x50t
        0x5t
        0x18t
        0x53t
        0x4ft
        0x46t
        0x67t
        0x4t
        0x4bt
        0x44t
        0x5at
        0x12t
        0x61t
        0x13t
        0x59t
        0x5ft
        0x45t
        0x0t
        0x5at
        0x13t
        0x55t
        0x1ft
        0x55t
        0x14t
        0x50t
        0x0t
        0x4ct
        0x54t
        0x70t
        0x7t
        0x5ct
        0xdt
        0x5dt
        0x55t
        0x64t
        0x3t
        0x46t
        0x14t
        0x54t
        0x45t
        0x1et
        0x4ft
    .end array-data
.end method

.method public final setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/ResultCallback",
            "<-TR;>;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x5b

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "667b76"

    const-wide v4, 0x41ddb6c2a5400000L    # 1.994066581E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x79t
        0x46t
        0x52t
        0x10t
        0x56t
        0x42t
        0x5ft
        0x59t
        0x59t
        0x42t
        0x59t
        0x59t
        0x42t
        0x16t
        0x44t
        0x17t
        0x47t
        0x46t
        0x59t
        0x44t
        0x43t
        0x7t
        0x53t
        0x16t
        0x59t
        0x58t
        0x17t
        0x32t
        0x52t
        0x58t
        0x52t
        0x5ft
        0x59t
        0x5t
        0x65t
        0x53t
        0x45t
        0x43t
        0x5bt
        0x16t
        0x44t
        0x16t
        0x51t
        0x53t
        0x59t
        0x7t
        0x45t
        0x57t
        0x42t
        0x53t
        0x53t
        0x42t
        0x55t
        0x4ft
        0x16t
        0x64t
        0x52t
        0x11t
        0x42t
        0x5at
        0x42t
        0x62t
        0x45t
        0x3t
        0x59t
        0x45t
        0x50t
        0x59t
        0x45t
        0xft
        0x19t
        0x55t
        0x44t
        0x53t
        0x56t
        0x16t
        0x52t
        0x70t
        0x57t
        0x5ft
        0x5bt
        0x7t
        0x53t
        0x64t
        0x53t
        0x45t
        0x42t
        0xet
        0x43t
        0x1et
        0x1ft
    .end array-data
.end method

.method public final setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;JLjava/util/concurrent/TimeUnit;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/ResultCallback",
            "<-TR;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x5b

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "ef8ffd"

    const-wide v4, -0x3e237bed96c00000L    # -1.913670053E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x2at
        0x16t
        0x5dt
        0x14t
        0x7t
        0x10t
        0xct
        0x9t
        0x56t
        0x46t
        0x8t
        0xbt
        0x11t
        0x46t
        0x4bt
        0x13t
        0x16t
        0x14t
        0xat
        0x14t
        0x4ct
        0x3t
        0x2t
        0x44t
        0xat
        0x8t
        0x18t
        0x36t
        0x3t
        0xat
        0x1t
        0xft
        0x56t
        0x1t
        0x34t
        0x1t
        0x16t
        0x13t
        0x54t
        0x12t
        0x15t
        0x44t
        0x2t
        0x3t
        0x56t
        0x3t
        0x14t
        0x5t
        0x11t
        0x3t
        0x5ct
        0x46t
        0x4t
        0x1dt
        0x45t
        0x34t
        0x5dt
        0x15t
        0x13t
        0x8t
        0x11t
        0x32t
        0x4at
        0x7t
        0x8t
        0x17t
        0x3t
        0x9t
        0x4at
        0xbt
        0x48t
        0x7t
        0x17t
        0x3t
        0x59t
        0x12t
        0x3t
        0x22t
        0x4t
        0xft
        0x54t
        0x3t
        0x2t
        0x36t
        0x0t
        0x15t
        0x4dt
        0xat
        0x12t
        0x4ct
        0x4ct
    .end array-data
.end method

.method public final then(Lcom/google/android/gms/common/api/ResultTransform;)Lcom/google/android/gms/common/api/TransformedResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Lcom/google/android/gms/common/api/Result;",
            ">(",
            "Lcom/google/android/gms/common/api/ResultTransform",
            "<-TR;+TS;>;)",
            "Lcom/google/android/gms/common/api/TransformedResult",
            "<TS;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x5b

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "58582d"

    const v3, -0x317327f3

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x7at
        0x48t
        0x50t
        0x4at
        0x53t
        0x10t
        0x5ct
        0x57t
        0x5bt
        0x18t
        0x5ct
        0xbt
        0x41t
        0x18t
        0x46t
        0x4dt
        0x42t
        0x14t
        0x5at
        0x4at
        0x41t
        0x5dt
        0x56t
        0x44t
        0x5at
        0x56t
        0x15t
        0x68t
        0x57t
        0xat
        0x51t
        0x51t
        0x5bt
        0x5ft
        0x60t
        0x1t
        0x46t
        0x4dt
        0x59t
        0x4ct
        0x41t
        0x44t
        0x52t
        0x5dt
        0x5bt
        0x5dt
        0x40t
        0x5t
        0x41t
        0x5dt
        0x51t
        0x18t
        0x50t
        0x1dt
        0x15t
        0x6at
        0x50t
        0x4bt
        0x47t
        0x8t
        0x41t
        0x6ct
        0x47t
        0x59t
        0x5ct
        0x17t
        0x53t
        0x57t
        0x47t
        0x55t
        0x1ct
        0x7t
        0x47t
        0x5dt
        0x54t
        0x4ct
        0x57t
        0x22t
        0x54t
        0x51t
        0x59t
        0x5dt
        0x56t
        0x36t
        0x50t
        0x4bt
        0x40t
        0x54t
        0x46t
        0x4ct
        0x1ct
    .end array-data
.end method

.method final zaa()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zacp;->zaa:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
