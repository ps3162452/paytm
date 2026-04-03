.class public final Lcom/google/android/gms/common/util/UidVerifier;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isGooglePlayServicesUid(Landroid/content/Context;I)Z
    .locals 7

    const/16 v1, 0x16

    const/16 v6, 0xb

    const/4 v0, 0x0

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "4095a9"

    const-wide v4, -0x3e208d9155400000L    # -2.110372523E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/google/android/gms/common/util/UidVerifier;->uidHasPackageName(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x16

    :try_start_0
    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "c7a0e6"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/common/GoogleSignatureVerifier;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->isGooglePublicSignedPackage(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    new-array v1, v6, [B

    fill-array-data v1, :array_2

    const-string v2, "2427a9"

    const v3, -0x31b700ec    # -8.4304E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-array v1, v6, [B

    fill-array-data v1, :array_3

    const-string v2, "b5d112"

    const-wide/32 v4, -0x395c276d

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4c

    new-array v2, v2, [B

    fill-array-data v2, :array_4

    const-string v3, "0efa48"

    const-wide v4, 0x41d33e6e8fc00000L    # 1.291434559E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x57t
        0x5ft
        0x54t
        0x1bt
        0x6t
        0x56t
        0x5bt
        0x57t
        0x55t
        0x50t
        0x4ft
        0x58t
        0x5at
        0x54t
        0x4bt
        0x5at
        0x8t
        0x5dt
        0x1at
        0x57t
        0x54t
        0x46t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x0t
        0x58t
        0xct
        0x1et
        0x2t
        0x59t
        0xct
        0x50t
        0xdt
        0x55t
        0x4bt
        0x57t
        0xdt
        0x53t
        0x13t
        0x5ft
        0xct
        0x52t
        0x4dt
        0x50t
        0xct
        0x43t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x67t
        0x5dt
        0x56t
        0x61t
        0x4t
        0x4bt
        0x5bt
        0x52t
        0x5bt
        0x52t
        0x13t
    .end array-data

    :array_3
    .array-data 1
        0x37t
        0x5ct
        0x0t
        0x67t
        0x54t
        0x40t
        0xbt
        0x53t
        0xdt
        0x54t
        0x43t
    .end array-data

    :array_4
    .array-data 1
        0x60t
        0x4t
        0x5t
        0xat
        0x55t
        0x5ft
        0x55t
        0x45t
        0xbt
        0x0t
        0x5at
        0x59t
        0x57t
        0x0t
        0x14t
        0x41t
        0x57t
        0x59t
        0x5et
        0x42t
        0x12t
        0x41t
        0x52t
        0x51t
        0x5et
        0x1t
        0x46t
        0x6t
        0x5bt
        0x57t
        0x57t
        0x9t
        0x3t
        0x41t
        0x44t
        0x54t
        0x51t
        0x1ct
        0x46t
        0x12t
        0x51t
        0x4at
        0x46t
        0xct
        0x5t
        0x4t
        0x47t
        0x18t
        0x40t
        0x4t
        0x5t
        0xat
        0x55t
        0x5ft
        0x55t
        0x49t
        0x46t
        0x5t
        0x51t
        0x5et
        0x51t
        0x10t
        0xat
        0x15t
        0x5dt
        0x56t
        0x57t
        0x45t
        0x12t
        0xet
        0x14t
        0x5et
        0x51t
        0x9t
        0x15t
        0x4t
    .end array-data
.end method

.method public static uidHasPackageName(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->zza(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method
