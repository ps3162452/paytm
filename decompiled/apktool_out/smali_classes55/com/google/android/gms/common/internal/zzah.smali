.class public final Lcom/google/android/gms/common/internal/zzah;
.super Ljava/lang/Object;


# static fields
.field private static final zza:Ljava/lang/Object;

.field private static zzb:Z

.field private static zzc:Ljava/lang/String;

.field private static zzd:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/zzah;->zza:Ljava/lang/Object;

    return-void
.end method

.method public static zza(Landroid/content/Context;)I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzah;->zzc(Landroid/content/Context;)V

    sget v0, Lcom/google/android/gms/common/internal/zzah;->zzd:I

    return v0
.end method

.method public static zzb(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzah;->zzc(Landroid/content/Context;)V

    sget-object v0, Lcom/google/android/gms/common/internal/zzah;->zzc:Ljava/lang/String;

    return-object v0
.end method

.method private static zzc(Landroid/content/Context;)V
    .locals 6

    sget-object v1, Lcom/google/android/gms/common/internal/zzah;->zza:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/google/android/gms/common/internal/zzah;->zzb:Z

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/gms/common/internal/zzah;->zzb:Z

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    const/16 v3, 0x80

    :try_start_1
    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    const/16 v2, 0x11

    :try_start_3
    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "d47961"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/common/internal/zzah;->zzc:Ljava/lang/String;

    const/16 v2, 0x1e

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "4a9c24"

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/common/internal/zzah;->zzd:I
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    :try_start_4
    monitor-exit v1

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v2, 0x13

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v3, "97aa3f"

    const-wide/32 v4, -0x54b013d5

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x19

    new-array v3, v3, [B

    fill-array-data v3, :array_3

    const-string v4, "663c81"

    const/16 v5, 0x5d25

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    nop

    :array_0
    .array-data 1
        0x7t
        0x5bt
        0x5at
        0x17t
        0x51t
        0x5et
        0xbt
        0x53t
        0x5bt
        0x5ct
        0x18t
        0x50t
        0x14t
        0x44t
        0x19t
        0x50t
        0x52t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x57t
        0xet
        0x54t
        0x4dt
        0x55t
        0x5bt
        0x5bt
        0x6t
        0x55t
        0x6t
        0x1ct
        0x55t
        0x5at
        0x5t
        0x4bt
        0xct
        0x5bt
        0x50t
        0x1at
        0x6t
        0x54t
        0x10t
        0x1ct
        0x42t
        0x51t
        0x13t
        0x4at
        0xat
        0x5dt
        0x5at
    .end array-data

    nop

    :array_2
    .array-data 1
        0x74t
        0x52t
        0x15t
        0x0t
        0x57t
        0x7t
        0x4dt
        0x56t
        0x37t
        0x0t
        0x5ft
        0x13t
        0x5ct
        0x65t
        0x4t
        0x0t
        0x57t
        0x3t
        0x4bt
    .end array-data

    :array_3
    .array-data 1
        0x62t
        0x5et
        0x5at
        0x10t
        0x18t
        0x42t
        0x5et
        0x59t
        0x46t
        0xft
        0x5ct
        0x11t
        0x58t
        0x53t
        0x45t
        0x6t
        0x4at
        0x11t
        0x5et
        0x57t
        0x43t
        0x13t
        0x5dt
        0x5ft
        0x18t
    .end array-data
.end method
