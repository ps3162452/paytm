.class public Lcom/google/android/gms/security/ProviderInstaller;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/security/ProviderInstaller$ProviderInstallListener;
    }
.end annotation


# static fields
.field public static final PROVIDER_NAME:Ljava/lang/String;

.field private static final zza:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

.field private static final zzb:Ljava/lang/Object;

.field private static zzc:Ljava/lang/reflect/Method;

.field private static zzd:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "6a5abb"

    const/16 v2, -0x7e68

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/security/ProviderInstaller;->PROVIDER_NAME:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/security/ProviderInstaller;->zza:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/security/ProviderInstaller;->zzb:Ljava/lang/Object;

    sput-object v3, Lcom/google/android/gms/security/ProviderInstaller;->zzc:Ljava/lang/reflect/Method;

    sput-object v3, Lcom/google/android/gms/security/ProviderInstaller;->zzd:Ljava/lang/reflect/Method;

    return-void

    :array_0
    .array-data 1
        0x71t
        0xct
        0x46t
        0x22t
        0xdt
        0x10t
        0x53t
        0x3et
        0x7at
        0x11t
        0x7t
        0xct
        0x65t
        0x32t
        0x79t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static installIfNeeded(Landroid/content/Context;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/GooglePlayServicesRepairableException;,
            Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;
        }
    .end annotation

    const/16 v0, 0x18

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "f51dfe"

    const-wide v2, 0x41d6a29311c00000L    # 1.519012935E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/security/ProviderInstaller;->zza:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    const v1, 0xb5f608

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->verifyGooglePlayServicesIsAvailable(Landroid/content/Context;I)V

    sget-object v1, Lcom/google/android/gms/security/ProviderInstaller;->zzb:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    :try_start_1
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_HIGHEST_OR_LOCAL_VERSION_NO_FORCE_STAGING:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    const/16 v4, 0x31

    new-array v4, v4, [B

    fill-array-data v4, :array_1

    const-string v5, "2520fa"

    const-wide v6, 0x41de7278ba000000L    # 2.04327396E9

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v0, v4}, Lcom/google/android/gms/dynamite/DynamiteModule;->load(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->getModuleContext()Landroid/content/Context;
    :try_end_1
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :goto_0
    if-nez v0, :cond_3

    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->getRemoteContext(Landroid/content/Context;)Landroid/content/Context;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    if-eqz v6, :cond_1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/security/ProviderInstaller;->zzd:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    const/16 v0, 0x3c

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v7, "f1768e"

    const v8, 0x4eb346fe

    invoke-static {v0, v7, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    const/16 v7, 0x12

    new-array v7, v7, [B

    fill-array-data v7, :array_3

    const-string v8, "24d579"

    const v9, 0x4de3da8e    # 4.778439E8f

    invoke-static {v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    invoke-static {v6, v0, v7, v8}, Lcom/google/android/gms/security/ProviderInstaller;->zzb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/security/ProviderInstaller;->zzd:Ljava/lang/reflect/Method;

    :cond_0
    sget-object v0, Lcom/google/android/gms/security/ProviderInstaller;->zzd:Ljava/lang/reflect/Method;

    const/4 v7, 0x0

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p0, v8, v9

    const/4 v9, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v8, v9

    const/4 v2, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v8, v2

    invoke-virtual {v0, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    :goto_1
    if-eqz v6, :cond_2

    const/16 v0, 0x3c

    :try_start_4
    new-array v0, v0, [B

    fill-array-data v0, :array_4

    const-string v2, "75d7ce"

    const/16 v3, 0x3abf

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, p0, v0}, Lcom/google/android/gms/security/ProviderInstaller;->zzc(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;)V

    monitor-exit v1

    :goto_2
    return-void

    :catch_0
    move-exception v0

    const/16 v4, 0x11

    new-array v4, v4, [B

    fill-array-data v4, :array_5

    const-string v5, "c76996"

    const-wide v6, -0x3e3d325b04000000L    # -6.30934008E8

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x29

    new-array v5, v5, [B

    fill-array-data v5, :array_6

    const-string v6, "ebb138"

    const-wide v8, -0x3e8f4b3340000000L    # -1.7517772E7

    invoke-static {v5, v6, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const/16 v2, 0x11

    new-array v2, v2, [B

    fill-array-data v2, :array_7

    const-string v3, "c3d0dd"

    const-wide/32 v4, 0x4a4e14ae

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x20

    new-array v3, v3, [B

    fill-array-data v3, :array_8

    const-string v4, "6a47bd"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_2
    const/16 v0, 0x11

    :try_start_5
    new-array v0, v0, [B

    fill-array-data v0, :array_9

    const-string v2, "bda2c6"

    const-wide v4, -0x3e344a49ae000000L    # -9.29787044E8

    invoke-static {v0, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1c

    new-array v2, v2, [B

    fill-array-data v2, :array_a

    const-string v3, "e1c8be"

    const v4, 0x4e18e59f    # 6.412963E8f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;

    const/16 v2, 0x8

    invoke-direct {v0, v2}, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;-><init>(I)V

    throw v0

    :cond_3
    const/16 v2, 0x3e

    new-array v2, v2, [B

    fill-array-data v2, :array_b

    const-string v3, "8ca44d"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p0, v2}, Lcom/google/android/gms/security/ProviderInstaller;->zzc(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;)V

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    :array_0
    .array-data 1
        0x25t
        0x5at
        0x5ft
        0x10t
        0x3t
        0x1dt
        0x12t
        0x15t
        0x5ct
        0x11t
        0x15t
        0x11t
        0x46t
        0x5bt
        0x5et
        0x10t
        0x46t
        0x7t
        0x3t
        0x15t
        0x5ft
        0x11t
        0xat
        0x9t
    .end array-data

    :array_1
    .array-data 1
        0x51t
        0x5at
        0x5ft
        0x1et
        0x1t
        0xet
        0x5dt
        0x52t
        0x5et
        0x55t
        0x48t
        0x0t
        0x5ct
        0x51t
        0x40t
        0x5ft
        0xft
        0x5t
        0x1ct
        0x52t
        0x5ft
        0x43t
        0x48t
        0x11t
        0x40t
        0x5at
        0x44t
        0x59t
        0x2t
        0x4t
        0x40t
        0x5ct
        0x5ct
        0x43t
        0x12t
        0x0t
        0x5et
        0x59t
        0x57t
        0x42t
        0x48t
        0x5t
        0x4bt
        0x5bt
        0x53t
        0x5dt
        0xft
        0x15t
        0x57t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x5t
        0x5et
        0x5at
        0x18t
        0x5ft
        0xat
        0x9t
        0x56t
        0x5bt
        0x53t
        0x16t
        0x4t
        0x8t
        0x55t
        0x45t
        0x59t
        0x51t
        0x1t
        0x48t
        0x56t
        0x5at
        0x45t
        0x16t
        0x6t
        0x9t
        0x5ct
        0x5at
        0x59t
        0x56t
        0x4bt
        0x15t
        0x54t
        0x54t
        0x43t
        0x4at
        0xct
        0x12t
        0x48t
        0x19t
        0x66t
        0x4at
        0xat
        0x10t
        0x58t
        0x53t
        0x53t
        0x4at
        0x2ct
        0x8t
        0x42t
        0x43t
        0x57t
        0x54t
        0x9t
        0x3t
        0x43t
        0x7et
        0x5bt
        0x48t
        0x9t
    .end array-data

    :array_3
    .array-data 1
        0x40t
        0x51t
        0x14t
        0x5at
        0x45t
        0x4dt
        0x60t
        0x51t
        0x15t
        0x40t
        0x52t
        0x4at
        0x46t
        0x67t
        0x10t
        0x54t
        0x43t
        0x4at
    .end array-data

    nop

    :array_4
    .array-data 1
        0x54t
        0x5at
        0x9t
        0x19t
        0x4t
        0xat
        0x58t
        0x52t
        0x8t
        0x52t
        0x4dt
        0x4t
        0x59t
        0x51t
        0x16t
        0x58t
        0xat
        0x1t
        0x19t
        0x52t
        0x9t
        0x44t
        0x4dt
        0x6t
        0x58t
        0x58t
        0x9t
        0x58t
        0xdt
        0x4bt
        0x44t
        0x50t
        0x7t
        0x42t
        0x11t
        0xct
        0x43t
        0x4ct
        0x4at
        0x67t
        0x11t
        0xat
        0x41t
        0x5ct
        0x0t
        0x52t
        0x11t
        0x2ct
        0x59t
        0x46t
        0x10t
        0x56t
        0xft
        0x9t
        0x52t
        0x47t
        0x2dt
        0x5at
        0x13t
        0x9t
    .end array-data

    :array_5
    .array-data 1
        0x33t
        0x45t
        0x59t
        0x4ft
        0x50t
        0x52t
        0x6t
        0x45t
        0x7ft
        0x57t
        0x4at
        0x42t
        0x2t
        0x5bt
        0x5at
        0x5ct
        0x4bt
    .end array-data

    nop

    :array_6
    .array-data 1
        0x23t
        0x3t
        0xbt
        0x5dt
        0x56t
        0x5ct
        0x45t
        0x16t
        0xdt
        0x11t
        0x5ft
        0x57t
        0x4t
        0x6t
        0x42t
        0x41t
        0x41t
        0x57t
        0x13t
        0xbt
        0x6t
        0x54t
        0x41t
        0x51t
        0xbt
        0x11t
        0x16t
        0x50t
        0x5ft
        0x54t
        0x0t
        0x10t
        0x42t
        0x5ct
        0x5ct
        0x5ct
        0x10t
        0xet
        0x7t
        0xbt
        0x13t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x33t
        0x41t
        0xbt
        0x46t
        0xdt
        0x0t
        0x6t
        0x41t
        0x2dt
        0x5et
        0x17t
        0x10t
        0x2t
        0x5ft
        0x8t
        0x55t
        0x16t
    .end array-data

    nop

    :array_8
    .array-data 1
        0x70t
        0x0t
        0x5dt
        0x5bt
        0x7t
        0x0t
        0x16t
        0x15t
        0x5bt
        0x17t
        0x10t
        0x1t
        0x46t
        0xet
        0x46t
        0x43t
        0x42t
        0x16t
        0x53t
        0x10t
        0x41t
        0x52t
        0x11t
        0x10t
        0x16t
        0x12t
        0x40t
        0x56t
        0x16t
        0x17t
        0xct
        0x41t
    .end array-data

    :array_9
    .array-data 1
        0x32t
        0x16t
        0xet
        0x44t
        0xat
        0x52t
        0x7t
        0x16t
        0x28t
        0x5ct
        0x10t
        0x42t
        0x3t
        0x8t
        0xdt
        0x57t
        0x11t
    .end array-data

    nop

    :array_a
    .array-data 1
        0x23t
        0x50t
        0xat
        0x54t
        0x7t
        0x1t
        0x45t
        0x45t
        0xct
        0x18t
        0x5t
        0x0t
        0x11t
        0x11t
        0x11t
        0x5dt
        0xft
        0xat
        0x11t
        0x54t
        0x43t
        0x5bt
        0xdt
        0xbt
        0x11t
        0x54t
        0x1bt
        0x4ct
    .end array-data

    :array_b
    .array-data 1
        0x5bt
        0xct
        0xct
        0x1at
        0x53t
        0xbt
        0x57t
        0x4t
        0xdt
        0x51t
        0x1at
        0x5t
        0x56t
        0x7t
        0x13t
        0x5bt
        0x5dt
        0x0t
        0x16t
        0x4t
        0xct
        0x47t
        0x1at
        0x14t
        0x4at
        0xct
        0x17t
        0x5dt
        0x50t
        0x1t
        0x4at
        0xat
        0xft
        0x47t
        0x40t
        0x5t
        0x54t
        0xft
        0x4t
        0x46t
        0x1at
        0x34t
        0x4at
        0xct
        0x17t
        0x5dt
        0x50t
        0x1t
        0x4at
        0x2at
        0xft
        0x47t
        0x40t
        0x5t
        0x54t
        0xft
        0x4t
        0x46t
        0x7dt
        0x9t
        0x48t
        0xft
    .end array-data
.end method

.method public static installIfNeededAsync(Landroid/content/Context;Lcom/google/android/gms/security/ProviderInstaller$ProviderInstallListener;)V
    .locals 5

    const/4 v4, 0x0

    const/16 v0, 0x18

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "3dc277"

    const/4 v2, 0x1

    invoke-static {v0, v1, v4, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x19

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "af4119"

    const-wide/32 v2, 0x67456282

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x1f

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "1a1a78"

    const v2, -0x31677d26

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/security/zza;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/security/zza;-><init>(Landroid/content/Context;Lcom/google/android/gms/security/ProviderInstaller$ProviderInstallListener;)V

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    nop

    :array_0
    .array-data 1
        0x70t
        0xbt
        0xdt
        0x46t
        0x52t
        0x4ft
        0x47t
        0x44t
        0xet
        0x47t
        0x44t
        0x43t
        0x13t
        0xat
        0xct
        0x46t
        0x17t
        0x55t
        0x56t
        0x44t
        0xdt
        0x47t
        0x5bt
        0x5bt
    .end array-data

    :array_1
    .array-data 1
        0x2dt
        0xft
        0x47t
        0x45t
        0x54t
        0x57t
        0x4t
        0x14t
        0x14t
        0x5ct
        0x44t
        0x4at
        0x15t
        0x46t
        0x5at
        0x5et
        0x45t
        0x19t
        0x3t
        0x3t
        0x14t
        0x5ft
        0x44t
        0x55t
        0xdt
    .end array-data

    nop

    :array_2
    .array-data 1
        0x7ct
        0x14t
        0x42t
        0x15t
        0x17t
        0x5at
        0x54t
        0x41t
        0x52t
        0x0t
        0x5bt
        0x54t
        0x54t
        0x5t
        0x11t
        0xet
        0x59t
        0x18t
        0x45t
        0x9t
        0x54t
        0x41t
        0x62t
        0x71t
        0x11t
        0x15t
        0x59t
        0x13t
        0x52t
        0x59t
        0x55t
    .end array-data
.end method

.method static bridge synthetic zza()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;
    .locals 1

    sget-object v0, Lcom/google/android/gms/security/ProviderInstaller;->zza:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    return-object v0
.end method

.method private static zzb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method private static zzc(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;
        }
    .end annotation

    const/16 v6, 0x11

    const/4 v5, 0x1

    const/4 v4, 0x0

    :try_start_0
    sget-object v0, Lcom/google/android/gms/security/ProviderInstaller;->zzc:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "48289f"

    const-wide v2, 0x41d44dbdcdc00000L    # 1.362556727E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    invoke-static {p0, p2, v0, v1}, Lcom/google/android/gms/security/ProviderInstaller;->zzb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/security/ProviderInstaller;->zzc:Ljava/lang/reflect/Method;

    :cond_0
    sget-object v0, Lcom/google/android/gms/security/ProviderInstaller;->zzc:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    new-array v2, v6, [B

    fill-array-data v2, :array_1

    const-string v3, "f45eec"

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-array v1, v6, [B

    fill-array-data v1, :array_2

    const-string v2, "c9b96e"

    const v3, 0x4efa42f1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1c

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const-string v3, "1cb065"

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v0, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;-><init>(I)V

    throw v0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x5dt
        0x56t
        0x41t
        0x5dt
        0x4bt
        0x12t
        0x64t
        0x4at
        0x5dt
        0x4et
        0x50t
        0x2t
        0x51t
        0x4at
    .end array-data

    nop

    :array_1
    .array-data 1
        0x36t
        0x46t
        0x5at
        0x13t
        0xct
        0x7t
        0x3t
        0x46t
        0x7ct
        0xbt
        0x16t
        0x17t
        0x7t
        0x58t
        0x59t
        0x0t
        0x17t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x33t
        0x4bt
        0xdt
        0x4ft
        0x5ft
        0x1t
        0x6t
        0x4bt
        0x2bt
        0x57t
        0x45t
        0x11t
        0x2t
        0x55t
        0xet
        0x5ct
        0x44t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x77t
        0x2t
        0xbt
        0x5ct
        0x53t
        0x51t
        0x11t
        0x17t
        0xdt
        0x10t
        0x5ft
        0x5bt
        0x42t
        0x17t
        0x3t
        0x5ct
        0x5at
        0x15t
        0x41t
        0x11t
        0xdt
        0x46t
        0x5ft
        0x51t
        0x54t
        0x11t
        0x58t
        0x10t
    .end array-data
.end method
