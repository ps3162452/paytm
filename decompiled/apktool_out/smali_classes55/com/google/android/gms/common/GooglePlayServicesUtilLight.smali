.class public Lcom/google/android/gms/common/GooglePlayServicesUtilLight;
.super Ljava/lang/Object;


# static fields
.field static final GMS_AVAILABILITY_NOTIFICATION_ID:I = 0x28c4

.field static final GMS_GENERAL_ERROR_NOTIFICATION_ID:I = 0x9b6d

.field public static final GOOGLE_PLAY_GAMES_PACKAGE:Ljava/lang/String;

.field public static final GOOGLE_PLAY_SERVICES_PACKAGE:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GOOGLE_PLAY_SERVICES_VERSION_CODE:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GOOGLE_PLAY_STORE_PACKAGE:Ljava/lang/String;

.field static final sCanceledAvailabilityNotification:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static zza:Z

.field private static zzb:Z

.field private static final zzc:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x0

    const/16 v0, 0x1d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "aa0dca"

    const-wide/32 v2, 0x1788a2c3

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->GOOGLE_PLAY_GAMES_PACKAGE:Ljava/lang/String;

    const/16 v0, 0x16

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "895fb8"

    const v2, -0x311cf900

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->GOOGLE_PLAY_SERVICES_PACKAGE:Ljava/lang/String;

    const/16 v0, 0x13

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "5b4e3a"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->GOOGLE_PLAY_STORE_PACKAGE:Ljava/lang/String;

    const v0, 0xbdfcb8

    sput v0, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    sput-boolean v4, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->zzb:Z

    sput-boolean v4, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->zza:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->sCanceledAvailabilityNotification:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->zzc:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void

    nop

    :array_0
    .array-data 1
        0x2t
        0xet
        0x5dt
        0x4at
        0x4t
        0xet
        0xet
        0x6t
        0x5ct
        0x1t
        0x4dt
        0x0t
        0xft
        0x5t
        0x42t
        0xbt
        0xat
        0x5t
        0x4ft
        0x11t
        0x5ct
        0x5t
        0x1at
        0x4ft
        0x6t
        0x0t
        0x5dt
        0x1t
        0x10t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x5bt
        0x56t
        0x58t
        0x48t
        0x5t
        0x57t
        0x57t
        0x5et
        0x59t
        0x3t
        0x4ct
        0x59t
        0x56t
        0x5dt
        0x47t
        0x9t
        0xbt
        0x5ct
        0x16t
        0x5et
        0x58t
        0x15t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x56t
        0xdt
        0x59t
        0x4bt
        0x52t
        0xft
        0x51t
        0x10t
        0x5bt
        0xct
        0x57t
        0x4ft
        0x43t
        0x7t
        0x5at
        0x1t
        0x5at
        0xft
        0x52t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelAvailabilityErrorNotifications(Landroid/content/Context;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x1

    sget-object v0, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->sCanceledAvailabilityNotification:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0xc

    :try_start_0
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "af2405"

    const-wide/32 v2, -0x54d09aa4

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    const/16 v1, 0x28c4

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v1, 0x16

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "bd7e10"

    const/4 v3, 0x0

    invoke-static {v1, v2, v4, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4a

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v3, "1b022e"

    const-wide/32 v4, -0x2c0427f7

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0xft
        0x9t
        0x46t
        0x5dt
        0x56t
        0x5ct
        0x2t
        0x7t
        0x46t
        0x5dt
        0x5ft
        0x5bt
    .end array-data

    :array_1
    .array-data 1
        0x25t
        0xbt
        0x58t
        0x2t
        0x5dt
        0x55t
        0x32t
        0x8t
        0x56t
        0x1ct
        0x62t
        0x55t
        0x10t
        0x12t
        0x5et
        0x6t
        0x54t
        0x43t
        0x37t
        0x10t
        0x5et
        0x9t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x62t
        0x17t
        0x40t
        0x42t
        0x40t
        0x0t
        0x42t
        0x11t
        0x59t
        0x5ct
        0x55t
        0x45t
        0x62t
        0x7t
        0x53t
        0x47t
        0x40t
        0xct
        0x45t
        0x1bt
        0x10t
        0x77t
        0x4at
        0x6t
        0x54t
        0x12t
        0x44t
        0x5bt
        0x5dt
        0xbt
        0x11t
        0x47t
        0x43t
        0x12t
        0x5bt
        0xbt
        0x11t
        0x1t
        0x51t
        0x5ct
        0x51t
        0x0t
        0x5dt
        0x23t
        0x46t
        0x53t
        0x5bt
        0x9t
        0x50t
        0x0t
        0x59t
        0x5et
        0x5bt
        0x11t
        0x48t
        0x27t
        0x42t
        0x40t
        0x5dt
        0x17t
        0x7ft
        0xdt
        0x44t
        0x5bt
        0x54t
        0xct
        0x52t
        0x3t
        0x44t
        0x5bt
        0x5dt
        0xbt
        0x42t
        0x4ct
    .end array-data
.end method

.method public static enableUsingApkIndependentContext()V
    .locals 2

    sget-object v0, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->zzc:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public static ensurePlayServicesAvailable(Landroid/content/Context;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/GooglePlayServicesRepairableException;,
            Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->isGooglePlayServicesAvailable(Landroid/content/Context;I)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object v1

    new-array v2, v6, [B

    const/16 v3, 0x5d

    aput-byte v3, v2, v7

    const-string v3, "837f4f"

    const v4, 0x4cd31123    # 1.10659864E8f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v0, v2}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getErrorResolutionIntent(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x2e

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "3f536a"

    const/16 v5, -0xebd

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x16

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "0c5805"

    invoke-static {v3, v4, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;-><init>(I)V

    throw v1

    :cond_0
    new-instance v2, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;

    const/16 v3, 0x22

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v4, "5c1f5d"

    invoke-static {v3, v4, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3, v1}, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;-><init>(ILjava/lang/String;Landroid/content/Intent;)V

    throw v2

    :cond_1
    return-void

    nop

    :array_0
    .array-data 1
        0x74t
        0x9t
        0x5at
        0x54t
        0x5at
        0x4t
        0x63t
        0xat
        0x54t
        0x4at
        0x65t
        0x4t
        0x41t
        0x10t
        0x5ct
        0x50t
        0x53t
        0x12t
        0x13t
        0x8t
        0x5at
        0x47t
        0x16t
        0x0t
        0x45t
        0x7t
        0x5ct
        0x5ft
        0x57t
        0x3t
        0x5ft
        0x3t
        0x15t
        0x57t
        0x43t
        0x4t
        0x13t
        0x12t
        0x5at
        0x13t
        0x53t
        0x13t
        0x41t
        0x9t
        0x47t
        0x13t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x77t
        0xct
        0x5at
        0x5ft
        0x5ct
        0x50t
        0x60t
        0xft
        0x54t
        0x41t
        0x63t
        0x50t
        0x42t
        0x15t
        0x5ct
        0x5bt
        0x55t
        0x46t
        0x65t
        0x17t
        0x5ct
        0x54t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x72t
        0xct
        0x5et
        0x1t
        0x59t
        0x1t
        0x15t
        0x33t
        0x5dt
        0x7t
        0x4ct
        0x44t
        0x66t
        0x6t
        0x43t
        0x10t
        0x5ct
        0x7t
        0x50t
        0x10t
        0x11t
        0x8t
        0x5at
        0x10t
        0x15t
        0x2t
        0x47t
        0x7t
        0x5ct
        0x8t
        0x54t
        0x1t
        0x5dt
        0x3t
    .end array-data
.end method

.method public static getApkVersion(Landroid/content/Context;)I
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->GOOGLE_PLAY_SERVICES_PACKAGE:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const/16 v1, 0x16

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "7ada5d"

    invoke-static {v1, v2, v0, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "7870c5"

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x70t
        0xet
        0xbt
        0x6t
        0x59t
        0x1t
        0x67t
        0xdt
        0x5t
        0x18t
        0x66t
        0x1t
        0x45t
        0x17t
        0xdt
        0x2t
        0x50t
        0x17t
        0x62t
        0x15t
        0xdt
        0xdt
    .end array-data

    nop

    :array_1
    .array-data 1
        0x70t
        0x57t
        0x58t
        0x57t
        0xft
        0x50t
        0x17t
        0x68t
        0x5bt
        0x51t
        0x1at
        0x15t
        0x44t
        0x5dt
        0x45t
        0x46t
        0xat
        0x56t
        0x52t
        0x4bt
        0x17t
        0x59t
        0x10t
        0x15t
        0x5at
        0x51t
        0x44t
        0x43t
        0xat
        0x5bt
        0x50t
        0x16t
    .end array-data
.end method

.method public static getClientVersion(Landroid/content/Context;)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/common/util/ClientLibraryUtils;->getClientVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getErrorPendingIntent(ILandroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object v0

    invoke-virtual {v0, p1, p0, p2}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getErrorResolutionPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static getErrorString(I)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/common/ConnectionResult;->zza(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getGooglePlayServicesAvailabilityRecoveryIntent(I)Landroid/content/Intent;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object v0

    invoke-virtual {v0, v1, p0, v1}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getErrorResolutionIntent(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getRemoteContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 2

    :try_start_0
    sget-object v0, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->GOOGLE_PLAY_SERVICES_PACKAGE:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getRemoteResource(Landroid/content/Context;)Landroid/content/res/Resources;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->GOOGLE_PLAY_SERVICES_PACKAGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static honorsDebugCertificates(Landroid/content/Context;)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    sget-boolean v2, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->zza:Z

    if-nez v2, :cond_0

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->GOOGLE_PLAY_SERVICES_PACKAGE:Ljava/lang/String;

    const/16 v4, 0x40

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    invoke-static {p0}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/common/GoogleSignatureVerifier;

    if-eqz v2, :cond_3

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzb(Landroid/content/pm/PackageInfo;Z)Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzb(Landroid/content/pm/PackageInfo;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    sput-boolean v2, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->zzb:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    sput-boolean v1, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->zza:Z

    :cond_0
    :goto_1
    sget-boolean v2, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->zzb:Z

    if-nez v2, :cond_1

    invoke-static {}, Lcom/google/android/gms/common/util/DeviceProperties;->isUserBuild()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    return v0

    :cond_3
    const/4 v2, 0x0

    :try_start_1
    sput-boolean v2, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->zzb:Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/16 v3, 0x16

    :try_start_2
    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "beec14"

    const/16 v5, -0x74ff

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2e

    new-array v4, v4, [B

    fill-array-data v4, :array_1

    const-string v5, "946703"

    const v6, 0x4eb255d7

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sput-boolean v1, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->zza:Z

    goto :goto_1

    :catchall_0
    move-exception v0

    sput-boolean v1, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->zza:Z

    throw v0

    :array_0
    .array-data 1
        0x25t
        0xat
        0xat
        0x4t
        0x5dt
        0x51t
        0x32t
        0x9t
        0x4t
        0x1at
        0x62t
        0x51t
        0x10t
        0x13t
        0xct
        0x0t
        0x54t
        0x47t
        0x37t
        0x11t
        0xct
        0xft
    .end array-data

    nop

    :array_1
    .array-data 1
        0x7at
        0x55t
        0x58t
        0x59t
        0x5ft
        0x47t
        0x19t
        0x52t
        0x5ft
        0x59t
        0x54t
        0x13t
        0x7et
        0x5bt
        0x59t
        0x50t
        0x5ct
        0x56t
        0x19t
        0x64t
        0x5at
        0x56t
        0x49t
        0x13t
        0x4at
        0x51t
        0x44t
        0x41t
        0x59t
        0x50t
        0x5ct
        0x47t
        0x16t
        0x47t
        0x51t
        0x50t
        0x52t
        0x55t
        0x51t
        0x52t
        0x10t
        0x5dt
        0x58t
        0x59t
        0x53t
        0x19t
    .end array-data
.end method

.method public static isGooglePlayServicesAvailable(Landroid/content/Context;)I
    .locals 1
    .annotation runtime Lcom/google/errorprone/annotations/ResultIgnorabilityUnspecified;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget v0, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    invoke-static {p0, v0}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->isGooglePlayServicesAvailable(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public static isGooglePlayServicesAvailable(Landroid/content/Context;I)I
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v3, 0x9

    const/16 v9, 0x16

    const/4 v2, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/google/android/gms/common/R$string;->common_google_play_services_unknown_issue:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    sget-object v0, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->GOOGLE_PLAY_SERVICES_PACKAGE:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->zzc:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/common/util/DeviceProperties;->isWearableWithoutPlayStore(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0}, Lcom/google/android/gms/common/util/DeviceProperties;->zzb(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    move v4, v1

    :goto_1
    if-ltz p1, :cond_4

    move v0, v1

    :goto_2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    if-eqz v4, :cond_5

    :try_start_1
    sget-object v0, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->GOOGLE_PLAY_STORE_PACKAGE:Ljava/lang/String;

    const/16 v7, 0x2040

    invoke-virtual {v6, v0, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :goto_3
    :try_start_2
    sget-object v7, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->GOOGLE_PLAY_SERVICES_PACKAGE:Ljava/lang/String;

    const/16 v8, 0x40

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v7

    invoke-static {p0}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/common/GoogleSignatureVerifier;

    invoke-static {v7, v1}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzb(Landroid/content/pm/PackageInfo;Z)Z

    move-result v8

    if-nez v8, :cond_6

    new-array v0, v9, [B

    fill-array-data v0, :array_0

    const-string v1, "4ea0d9"

    const/16 v2, 0x7af5

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3f

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v4, "cd3019"

    const v5, 0x4da30e0f    # 3.4195094E8f

    invoke-static {v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    :goto_4
    return v1

    :catchall_0
    move-exception v0

    new-array v0, v9, [B

    fill-array-data v0, :array_2

    const-string v4, "7b3926"

    invoke-static {v0, v4, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x7e

    new-array v4, v4, [B

    fill-array-data v4, :array_3

    const-string v5, "111638"

    invoke-static {v4, v5, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzah;->zza(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_2

    sget v4, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    if-eq v0, v4, :cond_0

    new-instance v1, Lcom/google/android/gms/common/GooglePlayServicesIncorrectManifestValueException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/common/GooglePlayServicesIncorrectManifestValueException;-><init>(I)V

    throw v1

    :cond_2
    new-instance v0, Lcom/google/android/gms/common/GooglePlayServicesMissingManifestValueException;

    invoke-direct {v0}, Lcom/google/android/gms/common/GooglePlayServicesMissingManifestValueException;-><init>()V

    throw v0

    :cond_3
    move v4, v2

    goto/16 :goto_1

    :cond_4
    move v0, v2

    goto/16 :goto_2

    :catch_0
    move-exception v0

    new-array v0, v9, [B

    fill-array-data v0, :array_4

    const-string v1, "580a23"

    const-wide/32 v6, -0x9ff1ac1

    invoke-static {v0, v1, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x33

    new-array v2, v2, [B

    fill-array-data v2, :array_5

    const-string v4, "f53059"

    const/16 v5, -0x6df8

    invoke-static {v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_6
    if-eqz v4, :cond_7

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzb(Landroid/content/pm/PackageInfo;Z)Z

    move-result v8

    if-nez v8, :cond_7

    new-array v0, v9, [B

    fill-array-data v0, :array_6

    const-string v4, "6ae871"

    const/16 v6, 0x67b1

    invoke-static {v0, v4, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x3a

    new-array v5, v5, [B

    fill-array-data v5, :array_7

    const-string v6, "188603"

    invoke-static {v5, v6, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    goto/16 :goto_4

    :cond_7
    if-eqz v4, :cond_8

    if-eqz v0, :cond_8

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v0, v0, v2

    iget-object v4, v7, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v4, v4, v2

    invoke-virtual {v0, v4}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    new-array v0, v9, [B

    fill-array-data v0, :array_8

    const-string v4, "8ba526"

    invoke-static {v0, v4, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5a

    new-array v2, v2, [B

    fill-array-data v2, :array_9

    const-string v4, "5a88b6"

    const/16 v5, -0x648f

    invoke-static {v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    goto/16 :goto_4

    :cond_8
    iget v0, v7, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Lcom/google/android/gms/common/util/zza;->zza(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/android/gms/common/util/zza;->zza(I)I

    move-result v3

    if-ge v0, v3, :cond_9

    iget v0, v7, Landroid/content/pm/PackageInfo;->versionCode:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x25

    new-array v4, v4, [B

    fill-array-data v4, :array_a

    const-string v6, "6a63f6"

    invoke-static {v4, v6, v1, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0xc

    new-array v4, v4, [B

    fill-array-data v4, :array_b

    const-string v5, "f8ab8d"

    invoke-static {v4, v5, v2, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0xb

    new-array v2, v2, [B

    fill-array-data v2, :array_c

    const-string v4, "cfa511"

    const/16 v5, -0x1120

    invoke-static {v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-array v0, v9, [B

    fill-array-data v0, :array_d

    const-string v2, "b873c0"

    invoke-static {v0, v2, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    goto/16 :goto_4

    :cond_9
    iget-object v0, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_a

    :try_start_3
    sget-object v0, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->GOOGLE_PLAY_SERVICES_PACKAGE:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v6, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    :cond_a
    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v0, :cond_b

    const/4 v1, 0x3

    goto/16 :goto_4

    :catch_1
    move-exception v0

    new-array v2, v9, [B

    fill-array-data v2, :array_e

    const-string v3, "cec5be"

    const-wide v6, 0x41dd77c573800000L    # 1.977554382E9

    invoke-static {v2, v3, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x52

    new-array v4, v4, [B

    fill-array-data v4, :array_f

    const-string v5, "5d7ef7"

    invoke-static {v4, v5, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    :cond_b
    move v1, v2

    goto/16 :goto_4

    :catch_2
    move-exception v0

    new-array v0, v9, [B

    fill-array-data v0, :array_10

    const-string v2, "a6b7bc"

    invoke-static {v0, v2, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x35

    new-array v3, v3, [B

    fill-array-data v3, :array_11

    const-string v4, "6fca71"

    const-wide v6, 0x41de1b2743000000L    # 2.020384012E9

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :array_0
    .array-data 1
        0x73t
        0xat
        0xet
        0x57t
        0x8t
        0x5ct
        0x64t
        0x9t
        0x0t
        0x49t
        0x37t
        0x5ct
        0x46t
        0x13t
        0x8t
        0x53t
        0x1t
        0x4at
        0x61t
        0x11t
        0x8t
        0x5ct
    .end array-data

    nop

    :array_1
    .array-data 1
        0x43t
        0x16t
        0x56t
        0x41t
        0x44t
        0x50t
        0x11t
        0x1t
        0x40t
        0x10t
        0x76t
        0x56t
        0xct
        0x3t
        0x5ft
        0x55t
        0x11t
        0x69t
        0xft
        0x5t
        0x4at
        0x10t
        0x42t
        0x5ct
        0x11t
        0x12t
        0x5at
        0x53t
        0x54t
        0x4at
        0x4ft
        0x44t
        0x51t
        0x45t
        0x45t
        0x19t
        0x17t
        0xct
        0x56t
        0x59t
        0x43t
        0x19t
        0x10t
        0xdt
        0x54t
        0x5et
        0x50t
        0x4dt
        0x16t
        0x16t
        0x56t
        0x10t
        0x58t
        0x4at
        0x43t
        0xdt
        0x5dt
        0x46t
        0x50t
        0x55t
        0xat
        0x0t
        0x1dt
    .end array-data

    :array_2
    .array-data 1
        0x70t
        0xdt
        0x5ct
        0x5et
        0x5et
        0x53t
        0x67t
        0xet
        0x52t
        0x40t
        0x61t
        0x53t
        0x45t
        0x14t
        0x5at
        0x5at
        0x57t
        0x45t
        0x62t
        0x16t
        0x5at
        0x55t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x65t
        0x59t
        0x54t
        0x16t
        0x74t
        0x57t
        0x5et
        0x56t
        0x5dt
        0x53t
        0x13t
        0x68t
        0x5dt
        0x50t
        0x48t
        0x16t
        0x40t
        0x5dt
        0x43t
        0x47t
        0x58t
        0x55t
        0x56t
        0x4bt
        0x11t
        0x43t
        0x54t
        0x45t
        0x5ct
        0x4dt
        0x43t
        0x52t
        0x54t
        0x45t
        0x13t
        0x4ft
        0x54t
        0x43t
        0x54t
        0x16t
        0x5dt
        0x57t
        0x45t
        0x11t
        0x57t
        0x59t
        0x46t
        0x56t
        0x55t
        0x1ft
        0x11t
        0x75t
        0x5bt
        0x5dt
        0x52t
        0x5at
        0x11t
        0x4ft
        0x5ct
        0x4dt
        0x43t
        0x11t
        0x41t
        0x44t
        0x5ct
        0x52t
        0x54t
        0x52t
        0x45t
        0x16t
        0x50t
        0x57t
        0x5ft
        0x57t
        0x58t
        0x51t
        0x46t
        0x4at
        0x50t
        0x45t
        0x58t
        0x59t
        0x5dt
        0x18t
        0x45t
        0x5et
        0x11t
        0x53t
        0x5dt
        0x4bt
        0x44t
        0x43t
        0x54t
        0x16t
        0x47t
        0x50t
        0x50t
        0x45t
        0x11t
        0x42t
        0x5bt
        0x5dt
        0x11t
        0x43t
        0x54t
        0x45t
        0x5ct
        0x4dt
        0x43t
        0x52t
        0x54t
        0x45t
        0x13t
        0x59t
        0x43t
        0x54t
        0x11t
        0x5ft
        0x5dt
        0x5bt
        0x5dt
        0x44t
        0x55t
        0x53t
        0x57t
        0x16t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x72t
        0x57t
        0x5ft
        0x6t
        0x5et
        0x56t
        0x65t
        0x54t
        0x51t
        0x18t
        0x61t
        0x56t
        0x47t
        0x4et
        0x59t
        0x2t
        0x57t
        0x40t
        0x60t
        0x4ct
        0x59t
        0xdt
    .end array-data

    nop

    :array_5
    .array-data 1
        0x46t
        0x47t
        0x56t
        0x41t
        0x40t
        0x50t
        0x14t
        0x50t
        0x40t
        0x10t
        0x41t
        0x51t
        0x3t
        0x15t
        0x74t
        0x5ft
        0x5at
        0x5et
        0xat
        0x50t
        0x13t
        0x60t
        0x59t
        0x58t
        0x1ft
        0x15t
        0x60t
        0x44t
        0x5at
        0x4bt
        0x3t
        0x19t
        0x13t
        0x52t
        0x40t
        0x4dt
        0x46t
        0x5ct
        0x47t
        0x10t
        0x5ct
        0x4at
        0x46t
        0x58t
        0x5at
        0x43t
        0x46t
        0x50t
        0x8t
        0x52t
        0x1dt
    .end array-data

    :array_6
    .array-data 1
        0x71t
        0xet
        0xat
        0x5ft
        0x5bt
        0x54t
        0x66t
        0xdt
        0x4t
        0x41t
        0x64t
        0x54t
        0x44t
        0x17t
        0xct
        0x5bt
        0x52t
        0x42t
        0x63t
        0x15t
        0xct
        0x54t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x11t
        0x4at
        0x5dt
        0x47t
        0x45t
        0x5at
        0x43t
        0x5dt
        0x4bt
        0x16t
        0x77t
        0x5ct
        0x5et
        0x5ft
        0x54t
        0x53t
        0x10t
        0x63t
        0x5dt
        0x59t
        0x41t
        0x16t
        0x63t
        0x47t
        0x5et
        0x4at
        0x5dt
        0x1at
        0x10t
        0x51t
        0x44t
        0x4ct
        0x18t
        0x5ft
        0x44t
        0x40t
        0x11t
        0x4bt
        0x51t
        0x51t
        0x5et
        0x52t
        0x45t
        0x4dt
        0x4at
        0x53t
        0x10t
        0x5at
        0x42t
        0x18t
        0x51t
        0x58t
        0x46t
        0x52t
        0x5dt
        0x51t
        0x5ct
        0x18t
    .end array-data

    nop

    :array_8
    .array-data 1
        0x7ft
        0xdt
        0xet
        0x52t
        0x5et
        0x53t
        0x68t
        0xet
        0x0t
        0x4ct
        0x61t
        0x53t
        0x4at
        0x14t
        0x8t
        0x56t
        0x57t
        0x45t
        0x6dt
        0x16t
        0x8t
        0x59t
    .end array-data

    nop

    :array_9
    .array-data 1
        0x15t
        0x13t
        0x5dt
        0x49t
        0x17t
        0x5ft
        0x47t
        0x4t
        0x4bt
        0x18t
        0x25t
        0x59t
        0x5at
        0x6t
        0x54t
        0x5dt
        0x42t
        0x66t
        0x59t
        0x0t
        0x41t
        0x18t
        0x31t
        0x42t
        0x5at
        0x13t
        0x5dt
        0x14t
        0x42t
        0x54t
        0x40t
        0x15t
        0x18t
        0x51t
        0x16t
        0x45t
        0x15t
        0x12t
        0x51t
        0x5ft
        0xct
        0x57t
        0x41t
        0x14t
        0x4at
        0x5dt
        0x42t
        0x52t
        0x5at
        0x4t
        0x4bt
        0x56t
        0x45t
        0x42t
        0x15t
        0xct
        0x59t
        0x4ct
        0x1t
        0x5et
        0x15t
        0x15t
        0x50t
        0x59t
        0x16t
        0x16t
        0x5at
        0x7t
        0x18t
        0x7ft
        0xdt
        0x59t
        0x52t
        0xdt
        0x5dt
        0x18t
        0x32t
        0x5at
        0x54t
        0x18t
        0x18t
        0x4bt
        0x7t
        0x44t
        0x43t
        0x8t
        0x5bt
        0x5dt
        0x11t
        0x18t
    .end array-data

    nop

    :array_a
    .array-data 1
        0x71t
        0xet
        0x59t
        0x54t
        0xat
        0x53t
        0x16t
        0x31t
        0x5at
        0x52t
        0x1ft
        0x16t
        0x45t
        0x4t
        0x44t
        0x45t
        0xft
        0x55t
        0x53t
        0x12t
        0x16t
        0x5ct
        0x13t
        0x42t
        0x16t
        0xet
        0x50t
        0x13t
        0x2t
        0x57t
        0x42t
        0x4t
        0x16t
        0x55t
        0x9t
        0x44t
        0x16t
    .end array-data

    nop

    :array_b
    .array-data 1
        0x48t
        0x18t
        0x41t
        0x30t
        0x5dt
        0x15t
        0x13t
        0x51t
        0x13t
        0x7t
        0x4bt
        0x44t
    .end array-data

    :array_c
    .array-data 1
        0x43t
        0x4t
        0x14t
        0x41t
        0x11t
        0x57t
        0xct
        0x13t
        0xft
        0x51t
        0x11t
    .end array-data

    :array_d
    .array-data 1
        0x25t
        0x57t
        0x58t
        0x54t
        0xft
        0x55t
        0x32t
        0x54t
        0x56t
        0x4at
        0x30t
        0x55t
        0x10t
        0x4et
        0x5et
        0x50t
        0x6t
        0x43t
        0x37t
        0x4ct
        0x5et
        0x5ft
    .end array-data

    nop

    :array_e
    .array-data 1
        0x24t
        0xat
        0xct
        0x52t
        0xet
        0x0t
        0x33t
        0x9t
        0x2t
        0x4ct
        0x31t
        0x0t
        0x11t
        0x13t
        0xat
        0x56t
        0x7t
        0x16t
        0x36t
        0x11t
        0xat
        0x59t
    .end array-data

    nop

    :array_f
    .array-data 1
        0x15t
        0x16t
        0x52t
        0x14t
        0x13t
        0x5et
        0x47t
        0x1t
        0x44t
        0x45t
        0x21t
        0x58t
        0x5at
        0x3t
        0x5bt
        0x0t
        0x46t
        0x67t
        0x59t
        0x5t
        0x4et
        0x45t
        0x15t
        0x52t
        0x47t
        0x12t
        0x5et
        0x6t
        0x3t
        0x44t
        0x19t
        0x44t
        0x55t
        0x10t
        0x12t
        0x17t
        0x41t
        0xct
        0x52t
        0x1ct
        0x41t
        0x45t
        0x50t
        0x44t
        0x5at
        0xct
        0x15t
        0x44t
        0x5ct
        0xat
        0x50t
        0x45t
        0x11t
        0x5ft
        0x50t
        0xat
        0x17t
        0x2t
        0x3t
        0x43t
        0x41t
        0xdt
        0x59t
        0x2t
        0x46t
        0x56t
        0x45t
        0x14t
        0x5bt
        0xct
        0x5t
        0x56t
        0x41t
        0xdt
        0x58t
        0xbt
        0x46t
        0x5et
        0x5bt
        0x2t
        0x58t
        0x4bt
    .end array-data

    nop

    :array_10
    .array-data 1
        0x26t
        0x59t
        0xdt
        0x50t
        0xet
        0x6t
        0x31t
        0x5at
        0x3t
        0x4et
        0x31t
        0x6t
        0x13t
        0x40t
        0xbt
        0x54t
        0x7t
        0x10t
        0x34t
        0x42t
        0xbt
        0x5bt
    .end array-data

    nop

    :array_11
    .array-data 1
        0x16t
        0x14t
        0x6t
        0x10t
        0x42t
        0x58t
        0x44t
        0x3t
        0x10t
        0x41t
        0x70t
        0x5et
        0x59t
        0x1t
        0xft
        0x4t
        0x17t
        0x61t
        0x5at
        0x7t
        0x1at
        0x41t
        0x44t
        0x54t
        0x44t
        0x10t
        0xat
        0x2t
        0x52t
        0x42t
        0x1at
        0x46t
        0x1t
        0x14t
        0x43t
        0x11t
        0x42t
        0xet
        0x6t
        0x18t
        0x17t
        0x50t
        0x44t
        0x3t
        0x43t
        0xct
        0x5et
        0x42t
        0x45t
        0xft
        0xdt
        0x6t
        0x19t
    .end array-data
.end method

.method public static isGooglePlayServicesUid(Landroid/content/Context;I)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1}, Lcom/google/android/gms/common/util/UidVerifier;->isGooglePlayServicesUid(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static isPlayServicesPossiblyUpdating(Landroid/content/Context;I)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    const/16 v1, 0x12

    if-ne p1, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->GOOGLE_PLAY_SERVICES_PACKAGE:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->zza(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPlayStorePossiblyUpdating(Landroid/content/Context;I)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->GOOGLE_PLAY_STORE_PACKAGE:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->zza(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRestrictedUserProfile(Landroid/content/Context;)Z
    .locals 8

    const/4 v4, 0x4

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastJellyBeanMR2()Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v4, [B

    fill-array-data v0, :array_0

    const-string v2, "e9aaaa"

    const/16 v3, -0x2853

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    new-array v2, v4, [B

    fill-array-data v2, :array_1

    const-string v3, "d801d2"

    invoke-static {v2, v3, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x12

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v4, "448938"

    const-wide v6, 0x41cd003f51800000L    # 9.73110947E8

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x10t
        0x4at
        0x4t
        0x13t
    .end array-data

    :array_1
    .array-data 1
        0x10t
        0x4at
        0x45t
        0x54t
    .end array-data

    :array_2
    .array-data 1
        0x46t
        0x51t
        0x4bt
        0x4dt
        0x41t
        0x51t
        0x57t
        0x40t
        0x5dt
        0x5dt
        0x6ct
        0x48t
        0x46t
        0x5bt
        0x5et
        0x50t
        0x5ft
        0x5dt
    .end array-data
.end method

.method public static isSidewinderDevice(Landroid/content/Context;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/common/util/DeviceProperties;->isSidewinder(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isUserRecoverableError(I)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static uidHasPackageName(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/util/UidVerifier;->uidHasPackageName(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static zza(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->GOOGLE_PLAY_SERVICES_PACKAGE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastLollipop()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller;->getAllSessions()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInstaller$SessionInfo;

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v4, 0x2000

    :try_start_1
    invoke-virtual {v0, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v3, :cond_2

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    goto :goto_0

    :cond_2
    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->isRestrictedUserProfile(Landroid/content/Context;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    :catch_1
    move-exception v0

    move v0, v2

    goto :goto_0
.end method
