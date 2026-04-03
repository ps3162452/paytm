.class public final Lcom/google/android/gms/common/util/DeviceProperties;
.super Ljava/lang/Object;


# static fields
.field private static zza:Ljava/lang/Boolean;

.field private static zzb:Ljava/lang/Boolean;

.field private static zzc:Ljava/lang/Boolean;

.field private static zzd:Ljava/lang/Boolean;

.field private static zze:Ljava/lang/Boolean;

.field private static zzf:Ljava/lang/Boolean;

.field private static zzg:Ljava/lang/Boolean;

.field private static zzh:Ljava/lang/Boolean;

.field private static zzi:Ljava/lang/Boolean;

.field private static zzj:Ljava/lang/Boolean;

.field private static zzk:Ljava/lang/Boolean;

.field private static zzl:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAuto(Landroid/content/Context;)Z
    .locals 6

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v0, Lcom/google/android/gms/common/util/DeviceProperties;->zzi:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastO()Z

    move-result v2

    const/4 v0, 0x0

    if-eqz v2, :cond_0

    const/16 v2, 0x20

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "0a962b"

    const-wide v4, -0x3e29d7656fc00000L    # -1.487039041E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/DeviceProperties;->zzi:Ljava/lang/Boolean;

    :cond_1
    sget-object v0, Lcom/google/android/gms/common/util/DeviceProperties;->zzi:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    nop

    :array_0
    .array-data 1
        0x51t
        0xft
        0x5dt
        0x44t
        0x5dt
        0xbt
        0x54t
        0x4ft
        0x51t
        0x57t
        0x40t
        0x6t
        0x47t
        0x0t
        0x4bt
        0x53t
        0x1ct
        0x16t
        0x49t
        0x11t
        0x5ct
        0x18t
        0x53t
        0x17t
        0x44t
        0xet
        0x54t
        0x59t
        0x46t
        0xbt
        0x46t
        0x4t
    .end array-data
.end method

.method public static isBstar(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x1

    sget-object v1, Lcom/google/android/gms/common/util/DeviceProperties;->zzl:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastR()Z

    move-result v2

    const/4 v1, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x2e

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "711e49"

    invoke-static {v3, v4, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/DeviceProperties;->zzl:Ljava/lang/Boolean;

    :cond_0
    sget-object v0, Lcom/google/android/gms/common/util/DeviceProperties;->zzl:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :array_0
    .array-data 1
        0x54t
        0x5et
        0x5ct
        0x4bt
        0x53t
        0x56t
        0x58t
        0x56t
        0x5dt
        0x0t
        0x1at
        0x58t
        0x59t
        0x55t
        0x43t
        0xat
        0x5dt
        0x5dt
        0x19t
        0x41t
        0x5dt
        0x4t
        0x4dt
        0x17t
        0x51t
        0x54t
        0x50t
        0x11t
        0x41t
        0x4bt
        0x52t
        0x1ft
        0x79t
        0x35t
        0x71t
        0x66t
        0x72t
        0x69t
        0x61t
        0x20t
        0x66t
        0x70t
        0x72t
        0x7ft
        0x72t
        0x20t
    .end array-data
.end method

.method public static isLatchsky(Landroid/content/Context;)Z
    .locals 6

    sget-object v0, Lcom/google/android/gms/common/util/DeviceProperties;->zzf:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v0, 0x2b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v2, "00bdbf"

    const-wide/32 v4, 0xfead74f

    invoke-static {v0, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    const/4 v0, 0x0

    if-eqz v2, :cond_0

    const/16 v2, 0x12

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "82ffdf"

    const-wide v4, -0x3e227c2a86800000L    # -1.980716518E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/DeviceProperties;->zzf:Ljava/lang/Boolean;

    :cond_1
    sget-object v0, Lcom/google/android/gms/common/util/DeviceProperties;->zzf:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    nop

    :array_0
    .array-data 1
        0x53t
        0x5ft
        0xft
        0x4at
        0x5t
        0x9t
        0x5ft
        0x57t
        0xet
        0x1t
        0x4ct
        0x7t
        0x5et
        0x54t
        0x10t
        0xbt
        0xbt
        0x2t
        0x1et
        0x56t
        0x7t
        0x5t
        0x16t
        0x13t
        0x42t
        0x55t
        0x4ct
        0x17t
        0x7t
        0x14t
        0x46t
        0x59t
        0x1t
        0x1t
        0x11t
        0x39t
        0x45t
        0x40t
        0x6t
        0x5t
        0x16t
        0x3t
        0x42t
    .end array-data

    :array_1
    .array-data 1
        0x5bt
        0x5ct
        0x48t
        0x1t
        0xbt
        0x9t
        0x5ft
        0x5et
        0x3t
        0x48t
        0x17t
        0x3t
        0x4at
        0x44t
        0xft
        0x5t
        0x1t
        0x15t
    .end array-data
.end method

.method public static isPhone(Landroid/content/Context;)Z
    .locals 6

    sget-object v0, Lcom/google/android/gms/common/util/DeviceProperties;->zza:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    invoke-static {p0}, Lcom/google/android/gms/common/util/DeviceProperties;->isTablet(Landroid/content/Context;)Z

    move-result v1

    const/4 v0, 0x0

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/google/android/gms/common/util/DeviceProperties;->isWearable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/google/android/gms/common/util/DeviceProperties;->zzb(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/google/android/gms/common/util/DeviceProperties;->zzh:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x10

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "b1d47d"

    const-wide v4, -0x3e3cd8a14e000000L    # -6.426945E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/common/util/DeviceProperties;->zzh:Ljava/lang/Boolean;

    :cond_0
    sget-object v1, Lcom/google/android/gms/common/util/DeviceProperties;->zzh:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/google/android/gms/common/util/DeviceProperties;->isAuto(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/google/android/gms/common/util/DeviceProperties;->isTv(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/google/android/gms/common/util/DeviceProperties;->zzk:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x2b

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "4e0996"

    const v4, -0x317d3859

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/common/util/DeviceProperties;->zzk:Ljava/lang/Boolean;

    :cond_1
    sget-object v1, Lcom/google/android/gms/common/util/DeviceProperties;->zzk:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/google/android/gms/common/util/DeviceProperties;->isBstar(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/DeviceProperties;->zza:Ljava/lang/Boolean;

    :cond_3
    sget-object v0, Lcom/google/android/gms/common/util/DeviceProperties;->zza:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    nop

    :array_0
    .array-data 1
        0xdt
        0x43t
        0x3t
        0x1at
        0x54t
        0xct
        0x10t
        0x5et
        0x9t
        0x5dt
        0x42t
        0x9t
        0x4ct
        0x50t
        0x16t
        0x57t
    .end array-data

    :array_1
    .array-data 1
        0x57t
        0xat
        0x5dt
        0x17t
        0x5et
        0x59t
        0x5bt
        0x2t
        0x5ct
        0x5ct
        0x17t
        0x57t
        0x5at
        0x1t
        0x42t
        0x56t
        0x50t
        0x52t
        0x1at
        0x3t
        0x55t
        0x58t
        0x4dt
        0x43t
        0x46t
        0x0t
        0x1et
        0x78t
        0x74t
        0x77t
        0x60t
        0x2ct
        0x6ft
        0x7ct
        0x61t
        0x66t
        0x71t
        0x37t
        0x79t
        0x7ct
        0x77t
        0x75t
        0x71t
    .end array-data
.end method

.method public static isSevenInchTablet(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/util/DeviceProperties;->zzc(Landroid/content/res/Resources;)Z

    move-result v0

    return v0
.end method

.method public static isSidewinder(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/common/util/DeviceProperties;->zza(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/util/DeviceProperties;->isTablet(Landroid/content/res/Resources;)Z

    move-result v0

    return v0
.end method

.method public static isTablet(Landroid/content/res/Resources;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    :goto_0
    return v1

    :cond_0
    sget-object v2, Lcom/google/android/gms/common/util/DeviceProperties;->zzb:Ljava/lang/Boolean;

    if-nez v2, :cond_2

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x3

    if-le v2, v3, :cond_3

    :cond_1
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/DeviceProperties;->zzb:Ljava/lang/Boolean;

    :cond_2
    sget-object v0, Lcom/google/android/gms/common/util/DeviceProperties;->zzb:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/google/android/gms/common/util/DeviceProperties;->zzc(Landroid/content/res/Resources;)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_1
.end method

.method public static isTv(Landroid/content/Context;)Z
    .locals 6

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v0, Lcom/google/android/gms/common/util/DeviceProperties;->zzj:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    const/16 v0, 0x15

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v2, "8d90e3"

    const v3, 0x4d81fd93    # 2.726099E8f

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    const/4 v0, 0x1

    if-nez v2, :cond_0

    const/16 v2, 0x20

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "d3a431"

    const-wide v4, -0x3e21a45a34000000L    # -2.0372908E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x19

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v3, "df0f4f"

    const-wide v4, -0x3e2375df51c00000L    # -1.915257529E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/DeviceProperties;->zzj:Ljava/lang/Boolean;

    :cond_1
    sget-object v0, Lcom/google/android/gms/common/util/DeviceProperties;->zzj:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :array_0
    .array-data 1
        0x5bt
        0xbt
        0x54t
        0x1et
        0x2t
        0x5ct
        0x57t
        0x3t
        0x55t
        0x55t
        0x4bt
        0x52t
        0x56t
        0x0t
        0x4bt
        0x5ft
        0xct
        0x57t
        0x16t
        0x10t
        0x4ft
    .end array-data

    nop

    :array_1
    .array-data 1
        0x5t
        0x5dt
        0x5t
        0x46t
        0x5ct
        0x58t
        0x0t
        0x1dt
        0x9t
        0x55t
        0x41t
        0x55t
        0x13t
        0x52t
        0x13t
        0x51t
        0x1dt
        0x45t
        0x1dt
        0x43t
        0x4t
        0x1at
        0x47t
        0x54t
        0x8t
        0x56t
        0x17t
        0x5dt
        0x40t
        0x58t
        0xbt
        0x5dt
    .end array-data

    :array_2
    .array-data 1
        0x5t
        0x8t
        0x54t
        0x14t
        0x5bt
        0xft
        0x0t
        0x48t
        0x43t
        0x9t
        0x52t
        0x12t
        0x13t
        0x7t
        0x42t
        0x3t
        0x1at
        0xat
        0x1t
        0x7t
        0x5et
        0x4t
        0x55t
        0x5t
        0xft
    .end array-data
.end method

.method public static isUserBuild()Z
    .locals 3

    sget v0, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "460fe6"

    const v2, 0x4ef03018

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :array_0
    .array-data 1
        0x41t
        0x45t
        0x55t
        0x14t
    .end array-data
.end method

.method public static isWearable(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/util/DeviceProperties;->zzd(Landroid/content/pm/PackageManager;)Z

    move-result v0

    return v0
.end method

.method public static isWearableWithoutPlayStore(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/common/util/DeviceProperties;->isWearable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastN()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/common/util/DeviceProperties;->zza(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastO()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastR()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static zza(Landroid/content/Context;)Z
    .locals 6

    sget-object v0, Lcom/google/android/gms/common/util/DeviceProperties;->zze:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastLollipop()Z

    move-result v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x9

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "81c163"

    const-wide v4, -0x3e2012c991000000L    # -2.142558652E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/DeviceProperties;->zze:Ljava/lang/Boolean;

    :cond_1
    sget-object v0, Lcom/google/android/gms/common/util/DeviceProperties;->zze:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    nop

    :array_0
    .array-data 1
        0x5bt
        0x5ft
        0x4dt
        0x56t
        0x59t
        0x5ct
        0x5ft
        0x5dt
        0x6t
    .end array-data
.end method

.method public static zzb(Landroid/content/Context;)Z
    .locals 8

    const/4 v1, 0x0

    sget-object v0, Lcom/google/android/gms/common/util/DeviceProperties;->zzg:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v2, 0x19

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "140548"

    invoke-static {v2, v3, v1, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    const/4 v0, 0x1

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x1e

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "66fcf3"

    const-wide/32 v6, -0xac014b9

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/DeviceProperties;->zzg:Ljava/lang/Boolean;

    :cond_1
    sget-object v0, Lcom/google/android/gms/common/util/DeviceProperties;->zzg:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :array_0
    .array-data 1
        0x50t
        0x5at
        0x54t
        0x47t
        0x5bt
        0x51t
        0x55t
        0x1at
        0x58t
        0x54t
        0x46t
        0x5ct
        0x46t
        0x55t
        0x42t
        0x50t
        0x1at
        0x4ct
        0x48t
        0x44t
        0x55t
        0x1bt
        0x5dt
        0x57t
        0x45t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x57t
        0x58t
        0x2t
        0x11t
        0x9t
        0x5at
        0x52t
        0x18t
        0xet
        0x2t
        0x14t
        0x57t
        0x41t
        0x57t
        0x14t
        0x6t
        0x48t
        0x47t
        0x4ft
        0x46t
        0x3t
        0x4dt
        0x3t
        0x5et
        0x54t
        0x53t
        0x2t
        0x7t
        0x3t
        0x57t
    .end array-data
.end method

.method public static zzc(Landroid/content/res/Resources;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcom/google/android/gms/common/util/DeviceProperties;->zzc:Ljava/lang/Boolean;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v2, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x3

    if-gt v2, v3, :cond_1

    iget v1, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v2, 0x258

    if-lt v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/DeviceProperties;->zzc:Ljava/lang/Boolean;

    :cond_2
    sget-object v0, Lcom/google/android/gms/common/util/DeviceProperties;->zzc:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public static zzd(Landroid/content/pm/PackageManager;)Z
    .locals 4

    sget-object v0, Lcom/google/android/gms/common/util/DeviceProperties;->zzd:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastKitKatWatch()Z

    move-result v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    const/16 v1, 0x1b

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "193060"

    const v3, 0x4ea2d745

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/DeviceProperties;->zzd:Ljava/lang/Boolean;

    :cond_1
    sget-object v0, Lcom/google/android/gms/common/util/DeviceProperties;->zzd:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    nop

    :array_0
    .array-data 1
        0x50t
        0x57t
        0x57t
        0x42t
        0x59t
        0x59t
        0x55t
        0x17t
        0x5bt
        0x51t
        0x44t
        0x54t
        0x46t
        0x58t
        0x41t
        0x55t
        0x18t
        0x44t
        0x48t
        0x49t
        0x56t
        0x1et
        0x41t
        0x51t
        0x45t
        0x5at
        0x5bt
    .end array-data
.end method
