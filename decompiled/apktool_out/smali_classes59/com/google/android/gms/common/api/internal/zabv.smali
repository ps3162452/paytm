.class public final Lcom/google/android/gms/common/api/internal/zabv;
.super Lcom/google/android/gms/common/api/internal/zaag;


# instance fields
.field private final zaa:Lcom/google/android/gms/common/api/GoogleApi;
    .annotation runtime Lorg/checkerframework/checker/initialization/qual/NotOnlyInitialized;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/GoogleApi;)V
    .locals 3

    const/16 v0, 0x72

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "643614"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/zaag;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabv;->zaa:Lcom/google/android/gms/common/api/GoogleApi;

    return-void

    :array_0
    .array-data 1
        0x7bt
        0x51t
        0x47t
        0x5et
        0x5et
        0x50t
        0x16t
        0x5dt
        0x40t
        0x16t
        0x5ft
        0x5bt
        0x42t
        0x14t
        0x40t
        0x43t
        0x41t
        0x44t
        0x59t
        0x46t
        0x47t
        0x53t
        0x55t
        0x14t
        0x54t
        0x4dt
        0x13t
        0x55t
        0x5et
        0x5at
        0x58t
        0x51t
        0x50t
        0x42t
        0x58t
        0x5bt
        0x58t
        0x58t
        0x56t
        0x45t
        0x42t
        0x14t
        0x55t
        0x58t
        0x5at
        0x53t
        0x5ft
        0x40t
        0x18t
        0x14t
        0x72t
        0x66t
        0x78t
        0x47t
        0x16t
        0x47t
        0x46t
        0x46t
        0x41t
        0x5bt
        0x44t
        0x40t
        0x5at
        0x58t
        0x56t
        0x14t
        0x55t
        0x5bt
        0x5dt
        0x58t
        0x54t
        0x57t
        0x42t
        0x5dt
        0x5ct
        0x58t
        0x5dt
        0x51t
        0x45t
        0x47t
        0x13t
        0x55t
        0x5dt
        0x5dt
        0x53t
        0x5at
        0x47t
        0x16t
        0x5ct
        0x41t
        0x45t
        0x40t
        0x13t
        0x58t
        0x5et
        0x40t
        0x16t
        0x57t
        0x52t
        0x5at
        0x5dt
        0x14t
        0x42t
        0x5ct
        0x5at
        0x45t
        0x11t
        0x59t
        0x53t
        0x40t
        0x5bt
        0x59t
        0x55t
        0x1at
    .end array-data
.end method


# virtual methods
.method public final enqueue(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$AnyClient;",
            "R::",
            "Lcom/google/android/gms/common/api/Result;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl",
            "<TR;TA;>;>(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabv;->zaa:Lcom/google/android/gms/common/api/GoogleApi;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/GoogleApi;->doRead(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object v0

    return-object v0
.end method

.method public final execute(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$AnyClient;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabv;->zaa:Lcom/google/android/gms/common/api/GoogleApi;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/GoogleApi;->doWrite(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object v0

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabv;->zaa:Lcom/google/android/gms/common/api/GoogleApi;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApi;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final getLooper()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabv;->zaa:Lcom/google/android/gms/common/api/GoogleApi;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApi;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public final zao(Lcom/google/android/gms/common/api/internal/zada;)V
    .locals 0

    return-void
.end method

.method public final zap(Lcom/google/android/gms/common/api/internal/zada;)V
    .locals 0

    return-void
.end method
