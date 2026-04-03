.class abstract Lcom/google/android/gms/internal/common/zzw;
.super Lcom/google/android/gms/internal/common/zzj;


# instance fields
.field final zzb:Ljava/lang/CharSequence;

.field final zzc:Lcom/google/android/gms/internal/common/zzo;

.field final zzd:Z

.field zze:I

.field zzf:I


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/common/zzx;Ljava/lang/CharSequence;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/common/zzj;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/common/zzw;->zze:I

    invoke-static {p1}, Lcom/google/android/gms/internal/common/zzx;->zza(Lcom/google/android/gms/internal/common/zzx;)Lcom/google/android/gms/internal/common/zzo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/common/zzw;->zzc:Lcom/google/android/gms/internal/common/zzo;

    invoke-static {p1}, Lcom/google/android/gms/internal/common/zzx;->zzg(Lcom/google/android/gms/internal/common/zzx;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/common/zzw;->zzd:Z

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/gms/internal/common/zzw;->zzf:I

    iput-object p2, p0, Lcom/google/android/gms/internal/common/zzw;->zzb:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method protected final bridge synthetic zza()Ljava/lang/Object;
    .locals 6
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    const/4 v3, -0x1

    iget v0, p0, Lcom/google/android/gms/internal/common/zzw;->zze:I

    :cond_0
    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/common/zzw;->zze:I

    if-eq v1, v3, :cond_8

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/common/zzw;->zzd(I)I

    move-result v2

    if-ne v2, v3, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/common/zzw;->zzb:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iput v3, p0, Lcom/google/android/gms/internal/common/zzw;->zze:I

    move v2, v3

    :goto_1
    if-ne v2, v0, :cond_2

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/common/zzw;->zze:I

    iget-object v2, p0, Lcom/google/android/gms/internal/common/zzw;->zzb:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v1, v2, :cond_0

    iput v3, p0, Lcom/google/android/gms/internal/common/zzw;->zze:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/common/zzw;->zzc(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/common/zzw;->zze:I

    move v5, v1

    move v1, v2

    move v2, v5

    goto :goto_1

    :cond_2
    if-ge v0, v1, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/common/zzw;->zzb:Ljava/lang/CharSequence;

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    :cond_3
    if-ge v0, v1, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/common/zzw;->zzb:Ljava/lang/CharSequence;

    add-int/lit8 v4, v1, -0x1

    invoke-interface {v2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    :cond_4
    iget-boolean v2, p0, Lcom/google/android/gms/internal/common/zzw;->zzd:Z

    if-eqz v2, :cond_5

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/google/android/gms/internal/common/zzw;->zze:I

    goto :goto_0

    :cond_5
    iget v2, p0, Lcom/google/android/gms/internal/common/zzw;->zzf:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_7

    iget-object v1, p0, Lcom/google/android/gms/internal/common/zzw;->zzb:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iput v3, p0, Lcom/google/android/gms/internal/common/zzw;->zze:I

    if-le v1, v0, :cond_6

    iget-object v2, p0, Lcom/google/android/gms/internal/common/zzw;->zzb:Ljava/lang/CharSequence;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    :cond_6
    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/common/zzw;->zzb:Ljava/lang/CharSequence;

    invoke-interface {v2, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    return-object v0

    :cond_7
    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/android/gms/internal/common/zzw;->zzf:I

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/common/zzj;->zzb()Ljava/lang/Object;

    const/4 v0, 0x0

    goto :goto_3
.end method

.method abstract zzc(I)I
.end method

.method abstract zzd(I)I
.end method
