.class public Lcom/google/android/gms/common/GoogleSignatureVerifier;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/errorprone/annotations/CheckReturnValue;
.end annotation

.annotation runtime Lcom/google/errorprone/annotations/RestrictedInheritance;
    allowedOnPath = ".*java.*/com/google/android/gms/common/testing/.*"
    explanation = "Sub classing of GMS Core\'s APIs are restricted to testing fakes."
    link = "go/gmscore-restrictedinheritance"
.end annotation


# static fields
.field private static zza:Lcom/google/android/gms/common/GoogleSignatureVerifier;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static volatile zzb:Ljava/util/Set;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final zzc:Landroid/content/Context;

.field private volatile zzd:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzc:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/android/gms/common/GoogleSignatureVerifier;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/google/android/gms/common/GoogleSignatureVerifier;

    monitor-enter v0

    :try_start_0
    sget-object v0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zza:Lcom/google/android/gms/common/GoogleSignatureVerifier;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/common/zzn;->zze(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/common/GoogleSignatureVerifier;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/GoogleSignatureVerifier;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zza:Lcom/google/android/gms/common/GoogleSignatureVerifier;

    :cond_0
    const-class v0, Lcom/google/android/gms/common/GoogleSignatureVerifier;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zza:Lcom/google/android/gms/common/GoogleSignatureVerifier;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    const-class v1, Lcom/google/android/gms/common/GoogleSignatureVerifier;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static final varargs zza(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/zzj;)Lcom/google/android/gms/common/zzj;
    .locals 7
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v6, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-nez v2, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v2, v2

    if-eq v2, v6, :cond_1

    const/16 v0, 0x17

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v2, "a7d45b"

    const-wide v4, -0x3e26cd6757000000L    # -1.690985124E9

    invoke-static {v0, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x24

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "c0735b"

    invoke-static {v2, v3, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    new-instance v3, Lcom/google/android/gms/common/zzk;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/google/android/gms/common/zzk;-><init>([B)V

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_3

    aget-object v2, p1, v0

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/zzj;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    aget-object v0, p1, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0

    :array_0
    .array-data 1
        0x26t
        0x58t
        0xbt
        0x53t
        0x59t
        0x7t
        0x32t
        0x5et
        0x3t
        0x5at
        0x54t
        0x16t
        0x14t
        0x45t
        0x1t
        0x62t
        0x50t
        0x10t
        0x8t
        0x51t
        0xdt
        0x51t
        0x47t
    .end array-data

    :array_1
    .array-data 1
        0x33t
        0x51t
        0x54t
        0x58t
        0x54t
        0x5t
        0x6t
        0x10t
        0x5ft
        0x52t
        0x46t
        0x42t
        0xet
        0x5ft
        0x45t
        0x56t
        0x15t
        0x16t
        0xbt
        0x51t
        0x59t
        0x13t
        0x5at
        0xct
        0x6t
        0x10t
        0x44t
        0x5at
        0x52t
        0xct
        0x2t
        0x44t
        0x42t
        0x41t
        0x50t
        0x4ct
    .end array-data
.end method

.method public static final zzb(Landroid/content/pm/PackageInfo;Z)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    if-eqz p0, :cond_1

    const/16 v2, 0x13

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "eada79"

    const-wide/32 v4, -0x45e9e23c

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x16

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "0bf75b"

    invoke-static {v2, v3, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v2, :cond_2

    move p1, v1

    :cond_1
    :goto_0
    if-eqz p0, :cond_5

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_5

    if-eqz p1, :cond_4

    sget-object v2, Lcom/google/android/gms/common/zzm;->zza:[Lcom/google/android/gms/common/zzj;

    invoke-static {p0, v2}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zza(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/zzj;)Lcom/google/android/gms/common/zzj;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_5

    :goto_2
    return v0

    :cond_2
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x81

    if-eqz v2, :cond_3

    move p1, v0

    goto :goto_0

    :cond_3
    move p1, v1

    goto :goto_0

    :cond_4
    new-array v2, v0, [Lcom/google/android/gms/common/zzj;

    sget-object v3, Lcom/google/android/gms/common/zzm;->zza:[Lcom/google/android/gms/common/zzj;

    aget-object v3, v3, v1

    aput-object v3, v2, v1

    invoke-static {p0, v2}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zza(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/zzj;)Lcom/google/android/gms/common/zzj;

    move-result-object v2

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2

    :array_0
    .array-data 1
        0x6t
        0xet
        0x9t
        0x4ft
        0x56t
        0x57t
        0x1t
        0x13t
        0xbt
        0x8t
        0x53t
        0x17t
        0x13t
        0x4t
        0xat
        0x5t
        0x5et
        0x57t
        0x2t
    .end array-data

    :array_1
    .array-data 1
        0x53t
        0xdt
        0xbt
        0x19t
        0x52t
        0xdt
        0x5ft
        0x5t
        0xat
        0x52t
        0x1bt
        0x3t
        0x5et
        0x6t
        0x14t
        0x58t
        0x5ct
        0x6t
        0x1et
        0x5t
        0xbt
        0x44t
    .end array-data
.end method

.method private final zzc(Ljava/lang/String;ZZ)Lcom/google/android/gms/common/zzx;
    .locals 7

    const/16 v2, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-nez p1, :cond_1

    new-array v0, v2, [B

    fill-array-data v0, :array_0

    const-string v1, "9ce6de"

    const/16 v2, -0x5655

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/zzx;->zzc(Ljava/lang/String;)Lcom/google/android/gms/common/zzx;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/google/android/gms/common/zzn;->zzg()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzc:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->honorsDebugCertificates(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p1, v0, v5, v5}, Lcom/google/android/gms/common/zzn;->zzb(Ljava/lang/String;ZZZ)Lcom/google/android/gms/common/zzx;

    move-result-object v0

    :cond_2
    :goto_1
    iget-boolean v1, v0, Lcom/google/android/gms/common/zzx;->zza:Z

    if-eqz v1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzd:Ljava/lang/String;

    goto :goto_0

    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzc:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzc:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->honorsDebugCertificates(Landroid/content/Context;)Z

    move-result v0

    if-nez v1, :cond_4

    new-array v0, v2, [B

    fill-array-data v0, :array_1

    const-string v1, "5d3a0d"

    const/16 v2, -0x494c

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/zzx;->zzc(Ljava/lang/String;)Lcom/google/android/gms/common/zzx;

    move-result-object v0

    goto :goto_1

    :cond_4
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_5

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v2, v2

    if-eq v2, v6, :cond_6

    :cond_5
    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "bb3f8a"

    const v2, -0x313ff02a

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/zzx;->zzc(Ljava/lang/String;)Lcom/google/android/gms/common/zzx;

    move-result-object v0

    goto :goto_1

    :cond_6
    new-instance v2, Lcom/google/android/gms/common/zzk;

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/zzk;-><init>([B)V

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v2, v0, v5}, Lcom/google/android/gms/common/zzn;->zza(Ljava/lang/String;Lcom/google/android/gms/common/zzj;ZZ)Lcom/google/android/gms/common/zzx;

    move-result-object v0

    iget-boolean v4, v0, Lcom/google/android/gms/common/zzx;->zza:Z

    if-eqz v4, :cond_2

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_2

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    invoke-static {v3, v2, v5, v6}, Lcom/google/android/gms/common/zzn;->zza(Ljava/lang/String;Lcom/google/android/gms/common/zzj;ZZ)Lcom/google/android/gms/common/zzx;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/gms/common/zzx;->zza:Z

    if-eqz v1, :cond_2

    const/16 v0, 0x24

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v1, "0f14e7"

    const-wide v2, 0x41cdcf2498000000L    # 1.000229168E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/zzx;->zzc(Ljava/lang/String;)Lcom/google/android/gms/common/zzx;

    move-result-object v0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    const/4 v1, 0x7

    new-array v1, v1, [B

    fill-array-data v1, :array_4

    const-string v2, "bd2923"

    const v3, -0x3138225e

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/common/zzx;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/common/zzx;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Lcom/google/android/gms/common/zzx;->zzb()Lcom/google/android/gms/common/zzx;

    move-result-object v0

    goto/16 :goto_0

    :array_0
    .array-data 1
        0x57t
        0x16t
        0x9t
        0x5at
        0x44t
        0x15t
        0x52t
        0x4t
    .end array-data

    :array_1
    .array-data 1
        0x5bt
        0x11t
        0x5ft
        0xdt
        0x10t
        0x14t
        0x5et
        0x3t
    .end array-data

    :array_2
    .array-data 1
        0x11t
        0xbt
        0x5dt
        0x1t
        0x54t
        0x4t
        0x42t
        0x1t
        0x56t
        0x14t
        0x4ct
        0x41t
        0x10t
        0x7t
        0x42t
        0x13t
        0x51t
        0x13t
        0x7t
        0x6t
    .end array-data

    :array_3
    .array-data 1
        0x54t
        0x3t
        0x53t
        0x41t
        0x2t
        0x50t
        0x51t
        0x4t
        0x5dt
        0x51t
        0x45t
        0x45t
        0x55t
        0xat
        0x54t
        0x55t
        0x16t
        0x52t
        0x10t
        0x5t
        0x54t
        0x46t
        0x11t
        0x17t
        0x51t
        0x16t
        0x41t
        0x14t
        0x17t
        0x52t
        0x5at
        0x3t
        0x52t
        0x40t
        0x0t
        0x53t
    .end array-data

    :array_4
    .array-data 1
        0xct
        0xbt
        0x12t
        0x49t
        0x59t
        0x54t
        0x42t
    .end array-data
.end method


# virtual methods
.method public isGooglePublicSignedPackage(Landroid/content/pm/PackageInfo;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzb(Landroid/content/pm/PackageInfo;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {p1, v1}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzb(Landroid/content/pm/PackageInfo;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzc:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->honorsDebugCertificates(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    const/16 v1, 0x17

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "d35899"

    const-wide v4, -0x3e2033e780000000L    # -2.133877248E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x28

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "c27e83"

    const-wide v4, 0x41dd7ce61f800000L    # 1.978898558E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x23t
        0x5ct
        0x5at
        0x5ft
        0x55t
        0x5ct
        0x37t
        0x5at
        0x52t
        0x56t
        0x58t
        0x4dt
        0x11t
        0x41t
        0x50t
        0x6et
        0x5ct
        0x4bt
        0xdt
        0x55t
        0x5ct
        0x5dt
        0x4bt
    .end array-data

    :array_1
    .array-data 1
        0x37t
        0x57t
        0x44t
        0x11t
        0x15t
        0x58t
        0x6t
        0x4bt
        0x44t
        0x45t
        0x59t
        0x41t
        0x6t
        0x5ct
        0x10t
        0x11t
        0x18t
        0x52t
        0x0t
        0x51t
        0x52t
        0x15t
        0x4ct
        0x56t
        0x7t
        0x12t
        0x58t
        0xbt
        0x18t
        0x47t
        0xbt
        0x5bt
        0x44t
        0x45t
        0x5at
        0x46t
        0xat
        0x5et
        0x53t
        0x4bt
    .end array-data
.end method

.method public isPackageGoogleSigned(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzc(Ljava/lang/String;ZZ)Lcom/google/android/gms/common/zzx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/zzx;->zze()V

    iget-boolean v0, v0, Lcom/google/android/gms/common/zzx;->zza:Z

    return v0
.end method

.method public isUidGoogleSigned(I)Z
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzc:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    array-length v4, v3

    if-nez v4, :cond_2

    :cond_0
    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "f70582"

    const v2, -0x32482703

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/zzx;->zzc(Ljava/lang/String;)Lcom/google/android/gms/common/zzx;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/common/zzx;->zze()V

    iget-boolean v0, v0, Lcom/google/android/gms/common/zzx;->zza:Z

    return v0

    :cond_2
    const/4 v0, 0x0

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_3

    aget-object v0, v3, v1

    invoke-direct {p0, v0, v2, v2}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzc(Ljava/lang/String;ZZ)Lcom/google/android/gms/common/zzx;

    move-result-object v0

    iget-boolean v5, v0, Lcom/google/android/gms/common/zzx;->zza:Z

    if-nez v5, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :array_0
    .array-data 1
        0x8t
        0x58t
        0x10t
        0x45t
        0x53t
        0x55t
        0x15t
    .end array-data
.end method
