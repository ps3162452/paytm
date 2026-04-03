.class abstract Lcom/google/android/gms/common/zzj;
.super Lcom/google/android/gms/common/internal/zzz;


# instance fields
.field private final zza:I


# direct methods
.method protected constructor <init>([B)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/zzz;-><init>()V

    array-length v0, p1

    const/16 v1, 0x19

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    invoke-static {p1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/zzj;->zza:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static zze(Ljava/lang/String;)[B
    .locals 4

    const/16 v0, 0xa

    :try_start_0
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "a99c6b"

    const-wide v2, 0x41d9a20739800000L    # 1.720196326E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :array_0
    .array-data 1
        0x28t
        0x6at
        0x76t
        0x4et
        0xet
        0x5at
        0x54t
        0x0t
        0x14t
        0x52t
    .end array-data
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/common/internal/zzaa;

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    :try_start_0
    check-cast p1, Lcom/google/android/gms/common/internal/zzaa;

    invoke-interface {p1}, Lcom/google/android/gms/common/internal/zzaa;->zzc()I

    move-result v0

    iget v2, p0, Lcom/google/android/gms/common/zzj;->zza:I

    if-eq v0, v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lcom/google/android/gms/common/internal/zzaa;->zzd()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {p0}, Lcom/google/android/gms/common/zzj;->zzf()[B

    move-result-object v2

    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v2, 0x12

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "c92b46"

    const-wide/32 v4, 0x6a092685

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2d

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "401240"

    invoke-static {v3, v4, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    goto :goto_0

    :array_0
    .array-data 1
        0x24t
        0x56t
        0x5dt
        0x5t
        0x58t
        0x53t
        0x20t
        0x5ct
        0x40t
        0x16t
        0x5dt
        0x50t
        0xat
        0x5at
        0x53t
        0x16t
        0x51t
        0x45t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x72t
        0x51t
        0x58t
        0x5et
        0x51t
        0x54t
        0x14t
        0x44t
        0x5et
        0x12t
        0x53t
        0x55t
        0x40t
        0x10t
        0x76t
        0x5dt
        0x5bt
        0x57t
        0x58t
        0x55t
        0x11t
        0x51t
        0x51t
        0x42t
        0x40t
        0x59t
        0x57t
        0x5bt
        0x57t
        0x51t
        0x40t
        0x55t
        0x42t
        0x12t
        0x52t
        0x42t
        0x5bt
        0x5dt
        0x11t
        0x40t
        0x51t
        0x5dt
        0x5bt
        0x44t
        0x54t
    .end array-data
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/zzj;->zza:I

    return v0
.end method

.method public final zzc()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/zzj;->zza:I

    return v0
.end method

.method public final zzd()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/common/zzj;->zzf()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method abstract zzf()[B
.end method
