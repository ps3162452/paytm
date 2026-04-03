.class final Lcom/google/android/gms/internal/common/zzaf;
.super Lcom/google/android/gms/internal/common/zzag;


# instance fields
.field final transient zza:I

.field final transient zzb:I

.field final zzc:Lcom/google/android/gms/internal/common/zzag;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/common/zzag;II)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/common/zzaf;->zzc:Lcom/google/android/gms/internal/common/zzag;

    invoke-direct {p0}, Lcom/google/android/gms/internal/common/zzag;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/common/zzaf;->zza:I

    iput p3, p0, Lcom/google/android/gms/internal/common/zzaf;->zzb:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lcom/google/android/gms/internal/common/zzaf;->zzb:I

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "74a266"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/common/zzs;->zza(IILjava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/common/zzaf;->zzc:Lcom/google/android/gms/internal/common/zzag;

    iget v1, p0, Lcom/google/android/gms/internal/common/zzaf;->zza:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/common/zzag;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x5et
        0x5at
        0x5t
        0x57t
        0x4et
    .end array-data
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/common/zzaf;->zzb:I

    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/common/zzag;->zzh(II)Lcom/google/android/gms/internal/common/zzag;

    move-result-object v0

    return-object v0
.end method

.method final zzb()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/common/zzaf;->zzc:Lcom/google/android/gms/internal/common/zzag;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/common/zzac;->zzc()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/common/zzaf;->zza:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/common/zzaf;->zzb:I

    add-int/2addr v0, v1

    return v0
.end method

.method final zzc()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/common/zzaf;->zzc:Lcom/google/android/gms/internal/common/zzag;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/common/zzac;->zzc()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/common/zzaf;->zza:I

    add-int/2addr v0, v1

    return v0
.end method

.method final zzf()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method final zzg()[Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/common/zzaf;->zzc:Lcom/google/android/gms/internal/common/zzag;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/common/zzac;->zzg()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final zzh(II)Lcom/google/android/gms/internal/common/zzag;
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/common/zzaf;->zzb:I

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/common/zzs;->zzc(III)V

    iget-object v0, p0, Lcom/google/android/gms/internal/common/zzaf;->zzc:Lcom/google/android/gms/internal/common/zzag;

    iget v1, p0, Lcom/google/android/gms/internal/common/zzaf;->zza:I

    add-int v2, p1, v1

    add-int/2addr v1, p2

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/common/zzag;->zzh(II)Lcom/google/android/gms/internal/common/zzag;

    move-result-object v0

    return-object v0
.end method
