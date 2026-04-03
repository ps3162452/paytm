.class public Lcom/google/android/gms/common/GmsSignatureVerifier;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/errorprone/annotations/RestrictedInheritance;
    allowedOnPath = ".*javatests/com/google/android/gmscore/integ/client/common/robolectric/.*"
    explanation = "Sub classing of GMS Core\'s APIs are restricted to testing fakes."
    link = "go/gmscore-restrictedinheritance"
.end annotation


# static fields
.field private static final zza:Lcom/google/android/gms/common/zzab;

.field private static final zzb:Lcom/google/android/gms/common/zzab;

.field private static final zzc:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/google/android/gms/common/zzz;

    invoke-direct {v0}, Lcom/google/android/gms/common/zzz;-><init>()V

    const/16 v1, 0x16

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "f62bbf"

    const-wide v4, -0x3e58417a2a000000L    # -1.99181035E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/zzz;->zzd(Ljava/lang/String;)Lcom/google/android/gms/common/zzz;

    const-wide/32 v2, 0xc2bd840

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/common/zzz;->zza(J)Lcom/google/android/gms/common/zzz;

    sget-object v1, Lcom/google/android/gms/common/zzn;->zzd:Lcom/google/android/gms/common/zzl;

    invoke-virtual {v1}, Lcom/google/android/gms/common/zzl;->zzf()[B

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/common/zzn;->zzb:Lcom/google/android/gms/common/zzl;

    invoke-virtual {v2}, Lcom/google/android/gms/common/zzl;->zzf()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/common/zzag;->zzn(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/common/zzag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/zzz;->zzc(Ljava/util/List;)Lcom/google/android/gms/common/zzz;

    sget-object v1, Lcom/google/android/gms/common/zzn;->zzc:Lcom/google/android/gms/common/zzl;

    invoke-virtual {v1}, Lcom/google/android/gms/common/zzl;->zzf()[B

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/common/zzn;->zza:Lcom/google/android/gms/common/zzl;

    invoke-virtual {v2}, Lcom/google/android/gms/common/zzl;->zzf()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/common/zzag;->zzn(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/common/zzag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/zzz;->zzb(Ljava/util/List;)Lcom/google/android/gms/common/zzz;

    invoke-virtual {v0}, Lcom/google/android/gms/common/zzz;->zze()Lcom/google/android/gms/common/zzab;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/GmsSignatureVerifier;->zza:Lcom/google/android/gms/common/zzab;

    new-instance v0, Lcom/google/android/gms/common/zzz;

    invoke-direct {v0}, Lcom/google/android/gms/common/zzz;-><init>()V

    const/16 v1, 0x13

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "8540e2"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/zzz;->zzd(Ljava/lang/String;)Lcom/google/android/gms/common/zzz;

    const-wide/32 v2, 0x4e6e200

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/common/zzz;->zza(J)Lcom/google/android/gms/common/zzz;

    sget-object v1, Lcom/google/android/gms/common/zzn;->zzd:Lcom/google/android/gms/common/zzl;

    invoke-virtual {v1}, Lcom/google/android/gms/common/zzl;->zzf()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/common/zzag;->zzm(Ljava/lang/Object;)Lcom/google/android/gms/internal/common/zzag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/zzz;->zzc(Ljava/util/List;)Lcom/google/android/gms/common/zzz;

    sget-object v1, Lcom/google/android/gms/common/zzn;->zzc:Lcom/google/android/gms/common/zzl;

    invoke-virtual {v1}, Lcom/google/android/gms/common/zzl;->zzf()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/common/zzag;->zzm(Ljava/lang/Object;)Lcom/google/android/gms/internal/common/zzag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/zzz;->zzb(Ljava/util/List;)Lcom/google/android/gms/common/zzz;

    invoke-virtual {v0}, Lcom/google/android/gms/common/zzz;->zze()Lcom/google/android/gms/common/zzab;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/GmsSignatureVerifier;->zzb:Lcom/google/android/gms/common/zzab;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/GmsSignatureVerifier;->zzc:Ljava/util/HashMap;

    return-void

    :array_0
    .array-data 1
        0x5t
        0x59t
        0x5ft
        0x4ct
        0x5t
        0x9t
        0x9t
        0x51t
        0x5et
        0x7t
        0x4ct
        0x7t
        0x8t
        0x52t
        0x40t
        0xdt
        0xbt
        0x2t
        0x48t
        0x51t
        0x5ft
        0x11t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x5bt
        0x5at
        0x59t
        0x1et
        0x4t
        0x5ct
        0x5ct
        0x47t
        0x5bt
        0x59t
        0x1t
        0x1ct
        0x4et
        0x50t
        0x5at
        0x54t
        0xct
        0x5ct
        0x5ft
    .end array-data
.end method
