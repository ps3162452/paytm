.class Lcom/google/android/gms/common/zzx;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/errorprone/annotations/CheckReturnValue;
.end annotation


# static fields
.field private static final zze:Lcom/google/android/gms/common/zzx;


# instance fields
.field final zza:Z

.field final zzb:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final zzc:Ljava/lang/Throwable;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final zzd:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v4, 0x0

    const/4 v1, 0x1

    new-instance v0, Lcom/google/android/gms/common/zzx;

    const/4 v2, 0x3

    move v3, v1

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/zzx;-><init>(ZIILjava/lang/String;Ljava/lang/Throwable;)V

    sput-object v0, Lcom/google/android/gms/common/zzx;->zze:Lcom/google/android/gms/common/zzx;

    return-void
.end method

.method private constructor <init>(ZIILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/common/zzx;->zza:Z

    iput p2, p0, Lcom/google/android/gms/common/zzx;->zzd:I

    iput-object p4, p0, Lcom/google/android/gms/common/zzx;->zzb:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/common/zzx;->zzc:Ljava/lang/Throwable;

    return-void
.end method

.method synthetic constructor <init>(ZIILjava/lang/String;Ljava/lang/Throwable;Lcom/google/android/gms/common/zzw;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x5

    move-object v0, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/zzx;-><init>(ZIILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static zzb()Lcom/google/android/gms/common/zzx;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/google/android/gms/common/zzx;->zze:Lcom/google/android/gms/common/zzx;

    return-object v0
.end method

.method static zzc(Ljava/lang/String;)Lcom/google/android/gms/common/zzx;
    .locals 6

    new-instance v0, Lcom/google/android/gms/common/zzx;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x5

    const/4 v5, 0x0

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/zzx;-><init>(ZIILjava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method static zzd(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/common/zzx;
    .locals 6

    new-instance v0, Lcom/google/android/gms/common/zzx;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x5

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/zzx;-><init>(ZIILjava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method static zzf(I)Lcom/google/android/gms/common/zzx;
    .locals 6

    const/4 v4, 0x0

    const/4 v1, 0x1

    new-instance v0, Lcom/google/android/gms/common/zzx;

    move v2, p0

    move v3, v1

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/zzx;-><init>(ZIILjava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method static zzg(IILjava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/common/zzx;
    .locals 6
    .param p3    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/google/android/gms/common/zzx;

    const/4 v1, 0x0

    move v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/zzx;-><init>(ZIILjava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method zza()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/zzx;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method final zze()V
    .locals 4

    const/16 v3, 0x16

    iget-boolean v0, p0, Lcom/google/android/gms/common/zzx;->zza:Z

    if-nez v0, :cond_0

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    const-string v1, "5ba590"

    const/16 v2, 0x54e8

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/zzx;->zzc:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    new-array v0, v3, [B

    fill-array-data v0, :array_1

    const-string v1, "7567ce"

    const/16 v2, 0x61dc

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/zzx;->zza()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/zzx;->zzc:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-array v0, v3, [B

    fill-array-data v0, :array_2

    const-string v1, "3b640a"

    const-wide/32 v2, -0x7845df11

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/zzx;->zza()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x72t
        0xdt
        0xet
        0x52t
        0x55t
        0x55t
        0x76t
        0x7t
        0x13t
        0x41t
        0x50t
        0x56t
        0x5ct
        0x1t
        0x0t
        0x41t
        0x5ct
        0x43t
        0x67t
        0x11t
        0xdt
        0x41t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x70t
        0x5at
        0x59t
        0x50t
        0xft
        0x0t
        0x74t
        0x50t
        0x44t
        0x43t
        0xat
        0x3t
        0x5et
        0x56t
        0x57t
        0x43t
        0x6t
        0x16t
        0x65t
        0x46t
        0x5at
        0x43t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x74t
        0xdt
        0x59t
        0x53t
        0x5ct
        0x4t
        0x70t
        0x7t
        0x44t
        0x40t
        0x59t
        0x7t
        0x5at
        0x1t
        0x57t
        0x40t
        0x55t
        0x12t
        0x61t
        0x11t
        0x5at
        0x40t
    .end array-data
.end method
