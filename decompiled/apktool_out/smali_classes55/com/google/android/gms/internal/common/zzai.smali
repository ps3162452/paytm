.class final Lcom/google/android/gms/internal/common/zzai;
.super Lcom/google/android/gms/internal/common/zzag;


# annotations
.annotation runtime Lorg/jspecify/nullness/NullMarked;
.end annotation


# static fields
.field static final zza:Lcom/google/android/gms/internal/common/zzag;


# instance fields
.field final transient zzb:[Ljava/lang/Object;

.field private final transient zzc:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/common/zzai;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/common/zzai;-><init>([Ljava/lang/Object;I)V

    sput-object v0, Lcom/google/android/gms/internal/common/zzai;->zza:Lcom/google/android/gms/internal/common/zzag;

    return-void
.end method

.method constructor <init>([Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/common/zzag;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/common/zzai;->zzb:[Ljava/lang/Object;

    iput p2, p0, Lcom/google/android/gms/internal/common/zzai;->zzc:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/google/android/gms/internal/common/zzai;->zzc:I

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "90ed4b"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/common/zzs;->zza(IILjava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/common/zzai;->zzb:[Ljava/lang/Object;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :array_0
    .array-data 1
        0x50t
        0x5et
        0x1t
        0x1t
        0x4ct
    .end array-data
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/common/zzai;->zzc:I

    return v0
.end method

.method final zza([Ljava/lang/Object;I)I
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/common/zzai;->zzb:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/common/zzai;->zzc:I

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/google/android/gms/internal/common/zzai;->zzc:I

    return v0
.end method

.method final zzb()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/common/zzai;->zzc:I

    return v0
.end method

.method final zzc()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final zzf()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final zzg()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/common/zzai;->zzb:[Ljava/lang/Object;

    return-object v0
.end method
