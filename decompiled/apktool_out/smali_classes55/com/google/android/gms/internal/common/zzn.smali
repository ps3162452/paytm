.class final Lcom/google/android/gms/internal/common/zzn;
.super Lcom/google/android/gms/internal/common/zzm;


# static fields
.field static final zza:Lcom/google/android/gms/internal/common/zzn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/common/zzn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/common/zzn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/common/zzn;->zza:Lcom/google/android/gms/internal/common/zzn;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/16 v0, 0x12

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "987c7a"

    const/16 v2, 0x69e1

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/common/zzm;-><init>(Ljava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 1
        0x7at
        0x50t
        0x56t
        0x11t
        0x7at
        0x0t
        0x4dt
        0x5bt
        0x5ft
        0x6t
        0x45t
        0x4ft
        0x57t
        0x57t
        0x59t
        0x6t
        0x1ft
        0x48t
    .end array-data
.end method


# virtual methods
.method public final zza(C)Z
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method
