.class public final Lcom/google/android/gms/common/api/internal/zae;
.super Lcom/google/android/gms/common/api/internal/zai;


# instance fields
.field protected final zaa:Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;


# direct methods
.method public constructor <init>(ILcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zai;-><init>(I)V

    const/16 v0, 0x1e

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "b84ddd"

    const v2, 0x4ef3d21c

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zae;->zaa:Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    return-void

    :array_0
    .array-data 1
        0x2ct
        0x4dt
        0x58t
        0x8t
        0x44t
        0x9t
        0x7t
        0x4ct
        0x5ct
        0xbt
        0x0t
        0x17t
        0x42t
        0x59t
        0x46t
        0x1t
        0x44t
        0xat
        0xdt
        0x4ct
        0x14t
        0x16t
        0x11t
        0xat
        0xct
        0x59t
        0x56t
        0x8t
        0x1t
        0x4at
    .end array-data
.end method


# virtual methods
.method public final zad(Lcom/google/android/gms/common/api/Status;)V
    .locals 6

    const/4 v5, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zae;->zaa:Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->setFailedResult(Lcom/google/android/gms/common/api/Status;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v1, 0xd

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "50d9ca"

    invoke-static {v1, v2, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1b

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "4bbf9f"

    const/4 v4, 0x0

    invoke-static {v2, v3, v5, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x74t
        0x40t
        0xdt
        0x7at
        0x2t
        0xdt
        0x59t
        0x62t
        0x11t
        0x57t
        0xdt
        0x4t
        0x47t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x71t
        0x1at
        0x1t
        0x3t
        0x49t
        0x12t
        0x5dt
        0xdt
        0xct
        0x46t
        0x4bt
        0x3t
        0x44t
        0xdt
        0x10t
        0x12t
        0x50t
        0x8t
        0x53t
        0x42t
        0x4t
        0x7t
        0x50t
        0xat
        0x41t
        0x10t
        0x7t
    .end array-data
.end method

.method public final zae(Ljava/lang/Exception;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v3, "3a92fc"

    const/16 v4, 0x4039

    invoke-static {v0, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0xa

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zae;->zaa:Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->setFailedResult(Lcom/google/android/gms/common/api/Status;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v1, 0xd

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "1a81d9"

    const-wide v4, 0x41ddcb0ed6000000L    # 1.99938748E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1b

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v3, "625660"

    const/16 v4, -0x4b9

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x9t
        0x41t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x70t
        0x11t
        0x51t
        0x72t
        0x5t
        0x55t
        0x5dt
        0x33t
        0x4dt
        0x5ft
        0xat
        0x5ct
        0x43t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x73t
        0x4at
        0x56t
        0x53t
        0x46t
        0x44t
        0x5ft
        0x5dt
        0x5bt
        0x16t
        0x44t
        0x55t
        0x46t
        0x5dt
        0x47t
        0x42t
        0x5ft
        0x5et
        0x51t
        0x12t
        0x53t
        0x57t
        0x5ft
        0x5ct
        0x43t
        0x40t
        0x50t
    .end array-data
.end method

.method public final zaf(Lcom/google/android/gms/common/api/internal/zabq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zae;->zaa:Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/zabq;->zaf()Lcom/google/android/gms/common/api/Api$Client;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->run(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/zae;->zae(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final zag(Lcom/google/android/gms/common/api/internal/zaad;Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zae;->zaa:Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/common/api/internal/zaad;->zac(Lcom/google/android/gms/common/api/internal/BasePendingResult;Z)V

    return-void
.end method
