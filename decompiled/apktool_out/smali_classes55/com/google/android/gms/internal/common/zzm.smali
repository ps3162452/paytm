.class abstract Lcom/google/android/gms/internal/common/zzm;
.super Lcom/google/android/gms/internal/common/zzk;


# instance fields
.field private final zza:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/common/zzk;-><init>()V

    const/16 v0, 0x12

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "7af424"

    const-wide/32 v2, 0x431836fc

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/common/zzm;->zza:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x74t
        0x9t
        0x7t
        0x46t
        0x7ft
        0x55t
        0x43t
        0x2t
        0xet
        0x51t
        0x40t
        0x1at
        0x59t
        0xet
        0x8t
        0x51t
        0x1at
        0x1dt
    .end array-data
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/common/zzm;->zza:Ljava/lang/String;

    return-object v0
.end method
