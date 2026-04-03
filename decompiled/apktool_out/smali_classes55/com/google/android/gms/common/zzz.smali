.class final Lcom/google/android/gms/common/zzz;
.super Ljava/lang/Object;


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:J

.field private zzc:Lcom/google/android/gms/internal/common/zzag;

.field private zzd:Lcom/google/android/gms/internal/common/zzag;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/zzz;->zza:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/common/zzz;->zzb:J

    invoke-static {}, Lcom/google/android/gms/internal/common/zzag;->zzl()Lcom/google/android/gms/internal/common/zzag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/zzz;->zzc:Lcom/google/android/gms/internal/common/zzag;

    invoke-static {}, Lcom/google/android/gms/internal/common/zzag;->zzl()Lcom/google/android/gms/internal/common/zzag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/zzz;->zzd:Lcom/google/android/gms/internal/common/zzag;

    return-void
.end method


# virtual methods
.method final zza(J)Lcom/google/android/gms/common/zzz;
    .locals 1

    iput-wide p1, p0, Lcom/google/android/gms/common/zzz;->zzb:J

    return-object p0
.end method

.method final zzb(Ljava/util/List;)Lcom/google/android/gms/common/zzz;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/internal/common/zzag;->zzk(Ljava/util/Collection;)Lcom/google/android/gms/internal/common/zzag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/zzz;->zzd:Lcom/google/android/gms/internal/common/zzag;

    return-object p0
.end method

.method final zzc(Ljava/util/List;)Lcom/google/android/gms/common/zzz;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/internal/common/zzag;->zzk(Ljava/util/Collection;)Lcom/google/android/gms/internal/common/zzag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/zzz;->zzc:Lcom/google/android/gms/internal/common/zzag;

    return-object p0
.end method

.method final zzd(Ljava/lang/String;)Lcom/google/android/gms/common/zzz;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/zzz;->zza:Ljava/lang/String;

    return-object p0
.end method

.method final zze()Lcom/google/android/gms/common/zzab;
    .locals 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/common/zzz;->zza:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/google/android/gms/common/zzz;->zzb:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/zzz;->zzc:Lcom/google/android/gms/internal/common/zzag;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/common/zzag;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/zzz;->zzd:Lcom/google/android/gms/internal/common/zzag;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/common/zzag;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/google/android/gms/common/zzab;

    iget-object v1, p0, Lcom/google/android/gms/common/zzz;->zza:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/common/zzz;->zzb:J

    iget-object v4, p0, Lcom/google/android/gms/common/zzz;->zzc:Lcom/google/android/gms/internal/common/zzag;

    iget-object v5, p0, Lcom/google/android/gms/common/zzz;->zzd:Lcom/google/android/gms/internal/common/zzag;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/zzab;-><init>(Ljava/lang/String;JLcom/google/android/gms/internal/common/zzag;Lcom/google/android/gms/internal/common/zzag;Lcom/google/android/gms/common/zzaa;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x47

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "afa238"

    invoke-static {v1, v2, v5, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x3e

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "f36246"

    invoke-static {v1, v2, v5, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x1b

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "0050c1"

    invoke-static {v1, v2, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x24t
        0xft
        0x15t
        0x5at
        0x56t
        0x4at
        0x41t
        0x9t
        0x13t
        0x56t
        0x56t
        0x4at
        0x4t
        0x2t
        0x35t
        0x57t
        0x40t
        0x4ct
        0x22t
        0x3t
        0x13t
        0x46t
        0x40t
        0x18t
        0xet
        0x14t
        0x41t
        0x5dt
        0x41t
        0x5ct
        0x4t
        0x14t
        0x4t
        0x56t
        0x63t
        0x4at
        0xet
        0x2t
        0x22t
        0x57t
        0x41t
        0x4ct
        0x12t
        0x46t
        0xct
        0x47t
        0x40t
        0x4ct
        0x41t
        0xet
        0x0t
        0x44t
        0x56t
        0x18t
        0x0t
        0x12t
        0x41t
        0x5et
        0x56t
        0x59t
        0x12t
        0x12t
        0x41t
        0x5dt
        0x5dt
        0x5dt
        0x41t
        0x5t
        0x4t
        0x40t
        0x47t
    .end array-data

    :array_1
    .array-data 1
        0xbt
        0x5at
        0x58t
        0x5bt
        0x59t
        0x43t
        0xbt
        0x60t
        0x42t
        0x53t
        0x59t
        0x46t
        0x3t
        0x57t
        0x60t
        0x57t
        0x46t
        0x45t
        0xft
        0x5ct
        0x58t
        0x7ct
        0x41t
        0x5bt
        0x4t
        0x56t
        0x44t
        0x12t
        0x59t
        0x43t
        0x15t
        0x47t
        0x16t
        0x50t
        0x51t
        0x16t
        0x1t
        0x41t
        0x53t
        0x53t
        0x40t
        0x53t
        0x14t
        0x13t
        0x42t
        0x5at
        0x55t
        0x58t
        0x46t
        0x5ct
        0x44t
        0x12t
        0x51t
        0x47t
        0x13t
        0x52t
        0x5at
        0x12t
        0x40t
        0x59t
        0x46t
        0x3t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x40t
        0x51t
        0x56t
        0x5bt
        0x2t
        0x56t
        0x55t
        0x7et
        0x54t
        0x5dt
        0x6t
        0x11t
        0x5dt
        0x45t
        0x46t
        0x44t
        0x43t
        0x53t
        0x55t
        0x10t
        0x51t
        0x55t
        0x5t
        0x58t
        0x5et
        0x55t
        0x51t
    .end array-data
.end method
