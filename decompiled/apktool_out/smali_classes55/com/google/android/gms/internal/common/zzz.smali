.class abstract Lcom/google/android/gms/internal/common/zzz;
.super Lcom/google/android/gms/internal/common/zzak;


# annotations
.annotation runtime Lorg/jspecify/nullness/NullMarked;
.end annotation


# instance fields
.field private final zza:I

.field private zzb:I


# direct methods
.method protected constructor <init>(II)V
    .locals 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/common/zzak;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "7fadfa"

    const-wide v2, 0x41c8d47f48800000L    # 8.33158801E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p1, v0}, Lcom/google/android/gms/internal/common/zzs;->zzb(IILjava/lang/String;)I

    iput p1, p0, Lcom/google/android/gms/internal/common/zzz;->zza:I

    iput p2, p0, Lcom/google/android/gms/internal/common/zzz;->zzb:I

    return-void

    :array_0
    .array-data 1
        0x5et
        0x8t
        0x5t
        0x1t
        0x1et
    .end array-data
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/common/zzz;->zzb:I

    iget v1, p0, Lcom/google/android/gms/internal/common/zzz;->zza:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasPrevious()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/common/zzz;->zzb:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/common/zzz;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/common/zzz;->zzb:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/common/zzz;->zzb:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/common/zzz;->zza(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final nextIndex()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/common/zzz;->zzb:I

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/common/zzz;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/common/zzz;->zzb:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/common/zzz;->zzb:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/common/zzz;->zza(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final previousIndex()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/common/zzz;->zzb:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method protected abstract zza(I)Ljava/lang/Object;
.end method
