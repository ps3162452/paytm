.class public final Lcom/google/android/gms/internal/common/zzs;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lorg/jspecify/nullness/NullMarked;
.end annotation


# direct methods
.method public static zza(IILjava/lang/String;)I
    .locals 7

    const/4 v3, 0x5

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    if-ltz p0, :cond_0

    if-lt p0, p1, :cond_3

    :cond_0
    if-ltz p0, :cond_2

    if-gez p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0xf

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "b6239b"

    const v3, -0x315e99a4    # -1.35392E9f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/16 v0, 0x23

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "efbfd4"

    const/16 v2, -0x2ea5

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    new-array v2, v3, [B

    fill-array-data v2, :array_2

    const-string v3, "7ad9bc"

    invoke-static {v2, v3, v5, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/common/zzy;->zza(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    const/16 v0, 0x1c

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v1, "64608f"

    const v2, -0x31954760

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    new-array v2, v3, [B

    fill-array-data v2, :array_4

    const-string v3, "12f5d7"

    const v4, 0x4e32cf2f    # 7.499806E8f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/common/zzy;->zza(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    return p0

    :array_0
    .array-data 1
        0xct
        0x53t
        0x55t
        0x52t
        0x4dt
        0xbt
        0x14t
        0x53t
        0x12t
        0x40t
        0x50t
        0x18t
        0x7t
        0xct
        0x12t
    .end array-data

    :array_1
    .array-data 1
        0x40t
        0x15t
        0x42t
        0x4et
        0x41t
        0x47t
        0x4ct
        0x46t
        0xft
        0x13t
        0x17t
        0x40t
        0x45t
        0x4t
        0x7t
        0x46t
        0x8t
        0x51t
        0x16t
        0x15t
        0x42t
        0x12t
        0xct
        0x55t
        0xbt
        0x46t
        0x11t
        0xft
        0x1et
        0x51t
        0x45t
        0x4et
        0x47t
        0x15t
        0x4dt
    .end array-data

    :array_2
    .array-data 1
        0x5et
        0xft
        0x0t
        0x5ct
        0x1at
    .end array-data

    nop

    :array_3
    .array-data 1
        0x13t
        0x47t
        0x16t
        0x18t
        0x1dt
        0x15t
        0x1ft
        0x14t
        0x5bt
        0x45t
        0x4bt
        0x12t
        0x16t
        0x5at
        0x59t
        0x44t
        0x18t
        0x4t
        0x53t
        0x14t
        0x58t
        0x55t
        0x5ft
        0x7t
        0x42t
        0x5dt
        0x40t
        0x55t
    .end array-data

    :array_4
    .array-data 1
        0x58t
        0x5ct
        0x2t
        0x50t
        0x1ct
    .end array-data
.end method

.method public static zzb(IILjava/lang/String;)I
    .locals 6

    if-ltz p0, :cond_0

    if-gt p0, p1, :cond_0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "349c6b"

    const-wide v4, -0x3e850722c0000000L    # -2.8282324E7

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/google/android/gms/internal/common/zzs;->zzd(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x5at
        0x5at
        0x5dt
        0x6t
        0x4et
    .end array-data
.end method

.method public static zzc(III)V
    .locals 5

    const/4 v4, 0x1

    if-ltz p0, :cond_0

    if-lt p1, p0, :cond_0

    if-le p1, p2, :cond_4

    :cond_0
    if-ltz p0, :cond_3

    if-gt p0, p2, :cond_3

    if-ltz p1, :cond_1

    if-le p1, p2, :cond_2

    :cond_1
    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "70111f"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/common/zzs;->zzd(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    const/16 v0, 0x35

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "9f71c7"

    const-wide/32 v2, 0x103e71ce

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/common/zzy;->zza(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "5dd341"

    const/16 v2, 0x3f47

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p2, v0}, Lcom/google/android/gms/internal/common/zzs;->zzd(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    return-void

    :array_0
    .array-data 1
        0x52t
        0x5et
        0x55t
        0x11t
        0x58t
        0x8t
        0x53t
        0x55t
        0x49t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x5ct
        0x8t
        0x53t
        0x11t
        0xat
        0x59t
        0x5dt
        0x3t
        0x4ft
        0x11t
        0x4bt
        0x12t
        0x4at
        0x4ft
        0x17t
        0x5ct
        0x16t
        0x44t
        0x4dt
        0x46t
        0x59t
        0x5et
        0x17t
        0x17t
        0x5bt
        0x3t
        0x17t
        0x5dt
        0x6t
        0x44t
        0x4at
        0x46t
        0x43t
        0x59t
        0x2t
        0x59t
        0x19t
        0x15t
        0x43t
        0x50t
        0x11t
        0x43t
        0x19t
        0xft
        0x59t
        0x55t
        0x6t
        0x4ft
        0x19t
        0x4et
        0x12t
        0x42t
        0x4at
    .end array-data

    nop

    :array_2
    .array-data 1
        0x46t
        0x10t
        0x5t
        0x41t
        0x40t
        0x11t
        0x5ct
        0xat
        0x0t
        0x56t
        0x4ct
    .end array-data
.end method

.method private static zzd(IILjava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-gez p0, :cond_0

    const/16 v0, 0x1c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "efcd8f"

    invoke-static {v0, v1, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p2, v1, v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/common/zzy;->zza(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-ltz p1, :cond_1

    const/16 v0, 0x2a

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "c06454"

    const v2, 0x4eee24ff

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/common/zzy;->zza(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0xf

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "e393f0"

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :array_0
    .array-data 1
        0x40t
        0x15t
        0x43t
        0x4ct
        0x1dt
        0x15t
        0x4ct
        0x46t
        0xet
        0x11t
        0x4bt
        0x12t
        0x45t
        0x8t
        0xct
        0x10t
        0x18t
        0x4t
        0x0t
        0x46t
        0xdt
        0x1t
        0x5ft
        0x7t
        0x11t
        0xft
        0x15t
        0x1t
    .end array-data

    :array_1
    .array-data 1
        0x46t
        0x43t
        0x16t
        0x1ct
        0x10t
        0x47t
        0x4at
        0x10t
        0x5bt
        0x41t
        0x46t
        0x40t
        0x43t
        0x5et
        0x59t
        0x40t
        0x15t
        0x56t
        0x6t
        0x10t
        0x51t
        0x46t
        0x50t
        0x55t
        0x17t
        0x55t
        0x44t
        0x14t
        0x41t
        0x5ct
        0x2t
        0x5et
        0x16t
        0x47t
        0x5ct
        0x4et
        0x6t
        0x10t
        0x1et
        0x11t
        0x46t
        0x1dt
    .end array-data

    nop

    :array_2
    .array-data 1
        0xbt
        0x56t
        0x5et
        0x52t
        0x12t
        0x59t
        0x13t
        0x56t
        0x19t
        0x40t
        0xft
        0x4at
        0x0t
        0x9t
        0x19t
    .end array-data
.end method
