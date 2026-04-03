.class final Lcom/google/android/gms/internal/common/zzt;
.super Lcom/google/android/gms/internal/common/zzw;


# instance fields
.field final zza:Lcom/google/android/gms/internal/common/zzu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/common/zzu;Lcom/google/android/gms/internal/common/zzx;Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/common/zzt;->zza:Lcom/google/android/gms/internal/common/zzu;

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/common/zzw;-><init>(Lcom/google/android/gms/internal/common/zzx;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method final zzc(I)I
    .locals 1

    add-int/lit8 v0, p1, 0x1

    return v0
.end method

.method final zzd(I)I
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/common/zzt;->zza:Lcom/google/android/gms/internal/common/zzu;

    iget-object v1, v0, Lcom/google/android/gms/internal/common/zzu;->zza:Lcom/google/android/gms/internal/common/zzo;

    iget-object v2, p0, Lcom/google/android/gms/internal/common/zzt;->zzb:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v4, "459f27"

    const-wide/32 v6, 0x1d2d76e7

    invoke-static {v0, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v3, v0}, Lcom/google/android/gms/internal/common/zzs;->zzb(IILjava/lang/String;)I

    move v0, p1

    :goto_0
    if-ge v0, v3, :cond_1

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/common/zzo;->zza(C)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1

    nop

    :array_0
    .array-data 1
        0x5dt
        0x5bt
        0x5dt
        0x3t
        0x4at
    .end array-data
.end method
