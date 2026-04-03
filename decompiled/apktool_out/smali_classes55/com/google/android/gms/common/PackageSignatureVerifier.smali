.class public Lcom/google/android/gms/common/PackageSignatureVerifier;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/errorprone/annotations/CheckReturnValue;
.end annotation

.annotation runtime Lcom/google/errorprone/annotations/RestrictedInheritance;
    allowedOnPath = ".*javatests.*/com/google/android/gms/common/.*"
    explanation = "Sub classing of GMS Core\'s APIs are restricted to testing fakes."
    link = "go/gmscore-restrictedinheritance"
.end annotation


# static fields
.field static volatile zza:Lcom/google/android/gms/common/zzac;

.field private static zzb:Lcom/google/android/gms/common/zzad;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static zza()Lcom/google/android/gms/common/zzad;
    .locals 2

    const-class v0, Lcom/google/android/gms/common/zzad;

    monitor-enter v0

    :try_start_0
    sget-object v0, Lcom/google/android/gms/common/PackageSignatureVerifier;->zzb:Lcom/google/android/gms/common/zzad;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/common/zzad;

    invoke-direct {v0}, Lcom/google/android/gms/common/zzad;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/PackageSignatureVerifier;->zzb:Lcom/google/android/gms/common/zzad;

    :cond_0
    sget-object v0, Lcom/google/android/gms/common/PackageSignatureVerifier;->zzb:Lcom/google/android/gms/common/zzad;

    const-class v1, Lcom/google/android/gms/common/zzad;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    const-class v1, Lcom/google/android/gms/common/zzad;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public queryPackageSignatureVerified(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/common/PackageVerificationResult;
    .locals 6

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->honorsDebugCertificates(Landroid/content/Context;)Z

    move-result v1

    invoke-static {}, Lcom/google/android/gms/common/PackageSignatureVerifier;->zza()Lcom/google/android/gms/common/zzad;

    invoke-static {}, Lcom/google/android/gms/common/zzn;->zzf()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    if-eq v0, v1, :cond_0

    new-array v0, v2, [B

    fill-array-data v0, :array_0

    const-string v2, "b8bea1"

    const-wide v4, 0x41dde545cd000000L    # 2.006259508E9

    invoke-static {v0, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/common/PackageSignatureVerifier;->zza:Lcom/google/android/gms/common/zzac;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/google/android/gms/common/PackageSignatureVerifier;->zza:Lcom/google/android/gms/common/zzac;

    invoke-static {v2}, Lcom/google/android/gms/common/zzac;->zzb(Lcom/google/android/gms/common/zzac;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v0, Lcom/google/android/gms/common/PackageSignatureVerifier;->zza:Lcom/google/android/gms/common/zzac;

    invoke-static {v0}, Lcom/google/android/gms/common/zzac;->zza(Lcom/google/android/gms/common/zzac;)Lcom/google/android/gms/common/PackageVerificationResult;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    new-array v0, v2, [B

    fill-array-data v0, :array_1

    const-string v2, "5f73b3"

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/common/PackageSignatureVerifier;->zza()Lcom/google/android/gms/common/zzad;

    invoke-static {p2, v1, v3, v3}, Lcom/google/android/gms/common/zzn;->zzc(Ljava/lang/String;ZZZ)Lcom/google/android/gms/common/zzx;

    move-result-object v1

    iget-boolean v2, v1, Lcom/google/android/gms/common/zzx;->zza:Z

    if-eqz v2, :cond_2

    new-instance v2, Lcom/google/android/gms/common/zzac;

    iget v1, v1, Lcom/google/android/gms/common/zzx;->zzd:I

    invoke-static {p2, v1}, Lcom/google/android/gms/common/PackageVerificationResult;->zzd(Ljava/lang/String;I)Lcom/google/android/gms/common/PackageVerificationResult;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/common/zzac;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/PackageVerificationResult;)V

    sput-object v2, Lcom/google/android/gms/common/PackageSignatureVerifier;->zza:Lcom/google/android/gms/common/zzac;

    sget-object v0, Lcom/google/android/gms/common/PackageSignatureVerifier;->zza:Lcom/google/android/gms/common/zzac;

    invoke-static {v0}, Lcom/google/android/gms/common/zzac;->zza(Lcom/google/android/gms/common/zzac;)Lcom/google/android/gms/common/PackageVerificationResult;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, v1, Lcom/google/android/gms/common/zzx;->zzb:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/google/android/gms/common/zzx;->zzb:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/gms/common/zzx;->zzc:Ljava/lang/Throwable;

    invoke-static {p2, v0, v1}, Lcom/google/android/gms/common/PackageVerificationResult;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/common/PackageVerificationResult;

    move-result-object v0

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/google/android/gms/common/zzae;

    invoke-direct {v0}, Lcom/google/android/gms/common/zzae;-><init>()V

    throw v0

    :array_0
    .array-data 1
        0x4ft
        0x8t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x18t
        0x57t
    .end array-data
.end method

.method public queryPackageSignatureVerifiedWithRetry(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/common/PackageVerificationResult;
    .locals 8

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/PackageSignatureVerifier;->queryPackageSignatureVerified(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/common/PackageVerificationResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/PackageVerificationResult;->zzb()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/PackageSignatureVerifier;->queryPackageSignatureVerified(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/common/PackageVerificationResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/PackageVerificationResult;->zzc()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x14

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "0588bc"

    const v4, 0x4edafa2c

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x36

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "4733fe"

    const-wide v6, 0x41d8487a52c00000L    # 1.629612363E9

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :array_0
    .array-data 1
        0x60t
        0x5et
        0x5ft
        0x6bt
        0xbt
        0x4t
        0x5et
        0x54t
        0x4ct
        0x4dt
        0x10t
        0x6t
        0x66t
        0x50t
        0x4at
        0x51t
        0x4t
        0xat
        0x55t
        0x47t
    .end array-data

    :array_1
    .array-data 1
        0x73t
        0x58t
        0x47t
        0x13t
        0x0t
        0x9t
        0x55t
        0x5ct
        0x4at
        0x13t
        0x14t
        0x0t
        0x47t
        0x42t
        0x5ft
        0x47t
        0x46t
        0x1t
        0x41t
        0x45t
        0x5at
        0x5dt
        0x1t
        0x45t
        0x44t
        0x56t
        0x50t
        0x58t
        0x7t
        0x2t
        0x51t
        0x17t
        0x40t
        0x5at
        0x1t
        0xbt
        0x55t
        0x43t
        0x46t
        0x41t
        0x3t
        0x45t
        0x42t
        0x52t
        0x41t
        0x5at
        0x0t
        0xct
        0x57t
        0x56t
        0x47t
        0x5at
        0x9t
        0xbt
    .end array-data
.end method
