.class public final Lcom/google/android/gms/common/api/PendingResults;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canceledPendingResult()Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/api/internal/StatusPendingResult;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/internal/StatusPendingResult;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->cancel()V

    return-object v0
.end method

.method public static canceledPendingResult(Lcom/google/android/gms/common/api/Result;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lcom/google/android/gms/common/api/Result;",
            ">(TR;)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<TR;>;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v0, 0x17

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v3, "7250d8"

    invoke-static {v0, v3, v2, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Lcom/google/android/gms/common/api/Result;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v0

    const/16 v3, 0x10

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    const/16 v3, 0x2e

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "a2d679"

    invoke-static {v3, v4, v2, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/common/api/zaf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/zaf;-><init>(Lcom/google/android/gms/common/api/Result;)V

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->cancel()V

    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :array_0
    .array-data 1
        0x65t
        0x57t
        0x46t
        0x45t
        0x8t
        0x4ct
        0x17t
        0x5ft
        0x40t
        0x43t
        0x10t
        0x18t
        0x59t
        0x5dt
        0x41t
        0x10t
        0x6t
        0x5dt
        0x17t
        0x5ct
        0x40t
        0x5ct
        0x8t
    .end array-data

    :array_1
    .array-data 1
        0x32t
        0x46t
        0x5t
        0x42t
        0x42t
        0x4at
        0x41t
        0x51t
        0xbt
        0x52t
        0x52t
        0x19t
        0xct
        0x47t
        0x17t
        0x42t
        0x17t
        0x5bt
        0x4t
        0x12t
        0x27t
        0x59t
        0x5at
        0x54t
        0xet
        0x5ct
        0x37t
        0x42t
        0x56t
        0x4dt
        0x14t
        0x41t
        0x27t
        0x59t
        0x53t
        0x5ct
        0x12t
        0x1ct
        0x27t
        0x77t
        0x79t
        0x7at
        0x24t
        0x7et
        0x21t
        0x72t
    .end array-data
.end method

.method public static immediateFailedResult(Lcom/google/android/gms/common/api/Result;Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lcom/google/android/gms/common/api/Result;",
            ">(TR;",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<TR;>;"
        }
    .end annotation

    const/4 v3, 0x0

    const/16 v0, 0x17

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "f5660f"

    const/16 v2, -0x3737

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Lcom/google/android/gms/common/api/Result;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/16 v1, 0x1f

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "bdfbba"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/common/api/zag;

    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/common/api/zag;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/Result;)V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-object v0

    :array_0
    .array-data 1
        0x34t
        0x50t
        0x45t
        0x43t
        0x5ct
        0x12t
        0x46t
        0x58t
        0x43t
        0x45t
        0x44t
        0x46t
        0x8t
        0x5at
        0x42t
        0x16t
        0x52t
        0x3t
        0x46t
        0x5bt
        0x43t
        0x5at
        0x5ct
    .end array-data

    :array_1
    .array-data 1
        0x31t
        0x10t
        0x7t
        0x16t
        0x17t
        0x12t
        0x42t
        0x7t
        0x9t
        0x6t
        0x7t
        0x41t
        0xft
        0x11t
        0x15t
        0x16t
        0x42t
        0xft
        0xdt
        0x10t
        0x46t
        0x0t
        0x7t
        0x41t
        0x31t
        0x31t
        0x25t
        0x21t
        0x27t
        0x32t
        0x31t
    .end array-data
.end method

.method public static immediatePendingResult(Lcom/google/android/gms/common/api/Result;)Lcom/google/android/gms/common/api/OptionalPendingResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lcom/google/android/gms/common/api/Result;",
            ">(TR;)",
            "Lcom/google/android/gms/common/api/OptionalPendingResult",
            "<TR;>;"
        }
    .end annotation

    const/16 v0, 0x17

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "91eaef"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/common/api/zah;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/zah;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    new-instance v1, Lcom/google/android/gms/common/api/internal/OptionalPendingResultImpl;

    invoke-direct {v1, v0}, Lcom/google/android/gms/common/api/internal/OptionalPendingResultImpl;-><init>(Lcom/google/android/gms/common/api/PendingResult;)V

    return-object v1

    :array_0
    .array-data 1
        0x6bt
        0x54t
        0x16t
        0x14t
        0x9t
        0x12t
        0x19t
        0x5ct
        0x10t
        0x12t
        0x11t
        0x46t
        0x57t
        0x5et
        0x11t
        0x41t
        0x7t
        0x3t
        0x19t
        0x5ft
        0x10t
        0xdt
        0x9t
    .end array-data
.end method

.method public static immediatePendingResult(Lcom/google/android/gms/common/api/Result;Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/OptionalPendingResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lcom/google/android/gms/common/api/Result;",
            ">(TR;",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/OptionalPendingResult",
            "<TR;>;"
        }
    .end annotation

    const/16 v0, 0x17

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "288f08"

    const-wide v2, -0x3e2ff484a9400000L    # -1.076751707E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/common/api/zah;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/zah;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    new-instance v1, Lcom/google/android/gms/common/api/internal/OptionalPendingResultImpl;

    invoke-direct {v1, v0}, Lcom/google/android/gms/common/api/internal/OptionalPendingResultImpl;-><init>(Lcom/google/android/gms/common/api/PendingResult;)V

    return-object v1

    nop

    :array_0
    .array-data 1
        0x60t
        0x5dt
        0x4bt
        0x13t
        0x5ct
        0x4ct
        0x12t
        0x55t
        0x4dt
        0x15t
        0x44t
        0x18t
        0x5ct
        0x57t
        0x4ct
        0x46t
        0x52t
        0x5dt
        0x12t
        0x56t
        0x4dt
        0xat
        0x5ct
    .end array-data
.end method

.method public static immediatePendingResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Status;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x17

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "9b4aae"

    const-wide v2, -0x3e4724aa41000000L    # -4.17027519E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/common/api/internal/StatusPendingResult;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/internal/StatusPendingResult;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-object v0

    :array_0
    .array-data 1
        0x6bt
        0x7t
        0x47t
        0x14t
        0xdt
        0x11t
        0x19t
        0xft
        0x41t
        0x12t
        0x15t
        0x45t
        0x57t
        0xdt
        0x40t
        0x41t
        0x3t
        0x0t
        0x19t
        0xct
        0x41t
        0xdt
        0xdt
    .end array-data
.end method

.method public static immediatePendingResult(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Status;",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x17

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "4d6dd4"

    const-wide v2, 0x41d812fb53000000L    # 1.615588684E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/common/api/internal/StatusPendingResult;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/internal/StatusPendingResult;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-object v0

    :array_0
    .array-data 1
        0x66t
        0x1t
        0x45t
        0x11t
        0x8t
        0x40t
        0x14t
        0x9t
        0x43t
        0x17t
        0x10t
        0x14t
        0x5at
        0xbt
        0x42t
        0x44t
        0x6t
        0x51t
        0x14t
        0xat
        0x43t
        0x8t
        0x8t
    .end array-data
.end method
