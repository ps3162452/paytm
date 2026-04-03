.class public final Lcom/google/android/gms/dynamite/DynamiteModule;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/dynamite/DynamiteModule$DynamiteLoaderClassLoader;,
        Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;,
        Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;,
        Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$IVersions;,
        Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;
    }
.end annotation


# static fields
.field public static final LOCAL:I = -0x1

.field public static final NONE:I = 0x0

.field public static final NO_SELECTION:I = 0x0

.field public static final PREFER_HIGHEST_OR_LOCAL_VERSION:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

.field public static final PREFER_HIGHEST_OR_LOCAL_VERSION_NO_FORCE_STAGING:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

.field public static final PREFER_HIGHEST_OR_REMOTE_VERSION:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

.field public static final PREFER_LOCAL:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

.field public static final PREFER_REMOTE:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

.field public static final PREFER_REMOTE_VERSION_NO_FORCE_STAGING:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

.field public static final REMOTE:I = 0x1

.field public static final zza:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

.field private static zzb:Ljava/lang/Boolean;

.field private static zzc:Ljava/lang/String;

.field private static zzd:Z

.field private static zze:I

.field private static zzf:Ljava/lang/Boolean;

.field private static final zzg:Ljava/lang/ThreadLocal;

.field private static final zzh:Ljava/lang/ThreadLocal;

.field private static final zzi:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$IVersions;

.field private static zzk:Lcom/google/android/gms/dynamite/zzq;

.field private static zzl:Lcom/google/android/gms/dynamite/zzr;


# instance fields
.field private final zzj:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zze:I

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzf:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzg:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/google/android/gms/dynamite/zzd;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzh:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/google/android/gms/dynamite/zze;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zze;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzi:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$IVersions;

    new-instance v0, Lcom/google/android/gms/dynamite/zzf;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_REMOTE:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    new-instance v0, Lcom/google/android/gms/dynamite/zzg;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zzg;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_LOCAL:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    new-instance v0, Lcom/google/android/gms/dynamite/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zzh;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_REMOTE_VERSION_NO_FORCE_STAGING:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    new-instance v0, Lcom/google/android/gms/dynamite/zzi;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zzi;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_HIGHEST_OR_LOCAL_VERSION:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    new-instance v0, Lcom/google/android/gms/dynamite/zzj;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zzj;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_HIGHEST_OR_LOCAL_VERSION_NO_FORCE_STAGING:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    new-instance v0, Lcom/google/android/gms/dynamite/zzk;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zzk;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_HIGHEST_OR_REMOTE_VERSION:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    new-instance v0, Lcom/google/android/gms/dynamite/zzl;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zzl;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zza:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzj:Landroid/content/Context;

    return-void
.end method

.method public static getLocalVersion(Landroid/content/Context;Ljava/lang/String;)I
    .locals 9

    const/16 v8, 0xe

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x2c

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "c7e1cf"

    const-wide v6, -0x3e2b3651fd400000L    # -1.395046411E9

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x11

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "6123ce"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/16 v2, 0x9

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v3, "bcc185"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/16 v3, 0xe

    new-array v3, v3, [B

    fill-array-data v3, :array_3

    const-string v4, "72c4e2"

    const-wide v6, -0x3e53d7e816000000L    # -2.36194805E8

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x16

    new-array v3, v3, [B

    fill-array-data v3, :array_4

    const-string v4, "6b372b"

    const-wide/32 v6, -0x7c6582a9

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x1c

    new-array v1, v1, [B

    fill-array-data v1, :array_5

    const-string v3, "7ff741"

    const v4, -0x31496dfa

    invoke-static {v1, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v3, 0x0

    const/16 v4, 0x15

    aput-byte v4, v1, v3

    const-string v3, "26e94d"

    const v4, -0x32d7c9ef

    invoke-static {v1, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xe

    new-array v1, v1, [B

    fill-array-data v1, :array_6

    const-string v3, "ffa13b"

    const v4, -0x3142c049

    invoke-static {v1, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    new-array v2, v8, [B

    fill-array-data v2, :array_7

    const-string v3, "14c793"

    invoke-static {v2, v3, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x28

    new-array v3, v3, [B

    fill-array-data v3, :array_8

    const-string v4, "d9f8da"

    const-wide/32 v6, -0x66d9cd4d

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x22

    new-array v2, v2, [B

    fill-array-data v2, :array_9

    const-string v3, "0c9b2f"

    const/16 v4, -0x429

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xb

    new-array v2, v2, [B

    fill-array-data v2, :array_a

    const-string v3, "657752"

    const-wide/32 v4, 0x1c45f918

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v8, [B

    fill-array-data v2, :array_b

    const-string v3, "40865f"

    const v4, -0x320fe88b    # -5.0350864E8f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x0t
        0x58t
        0x8t
        0x1ft
        0x4t
        0x9t
        0xct
        0x50t
        0x9t
        0x54t
        0x4dt
        0x7t
        0xdt
        0x53t
        0x17t
        0x5et
        0xat
        0x2t
        0x4dt
        0x50t
        0x8t
        0x42t
        0x4dt
        0x2t
        0x1at
        0x59t
        0x4t
        0x5ct
        0xat
        0x12t
        0x6t
        0x19t
        0x1t
        0x54t
        0x10t
        0x5t
        0x11t
        0x5et
        0x15t
        0x45t
        0xct
        0x14t
        0x10t
        0x19t
    .end array-data

    :array_1
    .array-data 1
        0x18t
        0x7ct
        0x5dt
        0x57t
        0x16t
        0x9t
        0x53t
        0x75t
        0x57t
        0x40t
        0x0t
        0x17t
        0x5ft
        0x41t
        0x46t
        0x5ct
        0x11t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x2ft
        0x2ct
        0x27t
        0x64t
        0x74t
        0x70t
        0x3dt
        0x2at
        0x27t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x7at
        0x7dt
        0x27t
        0x61t
        0x29t
        0x77t
        0x68t
        0x64t
        0x26t
        0x66t
        0x36t
        0x7bt
        0x78t
        0x7ct
    .end array-data

    nop

    :array_4
    .array-data 1
        0x7bt
        0xdt
        0x57t
        0x42t
        0x5et
        0x7t
        0x16t
        0x6t
        0x56t
        0x44t
        0x51t
        0x10t
        0x5ft
        0x12t
        0x47t
        0x58t
        0x40t
        0x42t
        0x5ft
        0x6t
        0x13t
        0x10t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x10t
        0x46t
        0x2t
        0x5et
        0x50t
        0x5ft
        0x10t
        0x12t
        0x46t
        0x5at
        0x55t
        0x45t
        0x54t
        0xet
        0x46t
        0x52t
        0x4ct
        0x41t
        0x52t
        0x5t
        0x12t
        0x52t
        0x50t
        0x11t
        0x5et
        0x2t
        0x46t
        0x10t
    .end array-data

    :array_6
    .array-data 1
        0x22t
        0x1ft
        0xft
        0x50t
        0x5et
        0xbt
        0x12t
        0x3t
        0x2ct
        0x5et
        0x57t
        0x17t
        0xat
        0x3t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x75t
        0x4dt
        0xdt
        0x56t
        0x54t
        0x5at
        0x45t
        0x51t
        0x2et
        0x58t
        0x5dt
        0x46t
        0x5dt
        0x51t
    .end array-data

    nop

    :array_8
    .array-data 1
        0x22t
        0x58t
        0xft
        0x54t
        0x1t
        0x5t
        0x44t
        0x4dt
        0x9t
        0x18t
        0x8t
        0xet
        0x5t
        0x5dt
        0x46t
        0x55t
        0xbt
        0x5t
        0x11t
        0x55t
        0x3t
        0x18t
        0x0t
        0x4t
        0x17t
        0x5at
        0x14t
        0x51t
        0x14t
        0x15t
        0xbt
        0x4bt
        0x46t
        0x5bt
        0x8t
        0x0t
        0x17t
        0x4at
        0x5ct
        0x18t
    .end array-data

    :array_9
    .array-data 1
        0x7ct
        0xct
        0x5at
        0x3t
        0x5et
        0x46t
        0x5dt
        0xct
        0x5dt
        0x17t
        0x5et
        0x3t
        0x10t
        0x7t
        0x5ct
        0x11t
        0x51t
        0x14t
        0x59t
        0x13t
        0x4dt
        0xdt
        0x40t
        0x46t
        0x53t
        0xft
        0x58t
        0x11t
        0x41t
        0x46t
        0x56t
        0xct
        0x4bt
        0x42t
    .end array-data

    nop

    :array_a
    .array-data 1
        0x16t
        0x5bt
        0x58t
        0x43t
        0x15t
        0x54t
        0x59t
        0x40t
        0x59t
        0x53t
        0x1bt
    .end array-data

    :array_b
    .array-data 1
        0x70t
        0x49t
        0x56t
        0x57t
        0x58t
        0xft
        0x40t
        0x55t
        0x75t
        0x59t
        0x51t
        0x13t
        0x58t
        0x55t
    .end array-data
.end method

.method public static getRemoteVersion(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->zza(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public static load(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;
    .locals 23
    .annotation runtime Lcom/google/errorprone/annotations/ResultIgnorabilityUnspecified;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    if-eqz v6, :cond_1b

    sget-object v8, Lcom/google/android/gms/dynamite/DynamiteModule;->zzg:Ljava/lang/ThreadLocal;

    invoke-virtual {v8}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/dynamite/zzn;

    new-instance v9, Lcom/google/android/gms/dynamite/zzn;

    const/4 v5, 0x0

    invoke-direct {v9, v5}, Lcom/google/android/gms/dynamite/zzn;-><init>(Lcom/google/android/gms/dynamite/zzm;)V

    invoke-virtual {v8, v9}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    sget-object v10, Lcom/google/android/gms/dynamite/DynamiteModule;->zzh:Ljava/lang/ThreadLocal;

    invoke-virtual {v10}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    sget-object v5, Lcom/google/android/gms/dynamite/DynamiteModule;->zzi:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$IVersions;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2, v5}, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;->selectModule(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$IVersions;)Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;

    move-result-object v11

    iget v5, v11, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->localVersion:I

    iget v7, v11, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->remoteVersion:I

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v15, 0x19

    new-array v15, v15, [B

    fill-array-data v15, :array_0

    const-string v16, "ff62fb"

    const-wide v18, 0x41d050aba9800000L    # 1.094889126E9

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-static {v15, v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v15, 0x1

    new-array v15, v15, [B

    const/16 v16, 0x0

    const/16 v17, 0x3

    aput-byte v17, v15, v16

    const-string v16, "925da4"

    const v17, -0x3123c95b

    invoke-static/range {v15 .. v17}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v5, 0x13

    new-array v5, v5, [B

    fill-array-data v5, :array_1

    const-string v15, "fabbc7"

    const/16 v16, 0x593c

    move/from16 v0, v16

    invoke-static {v5, v15, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    new-array v5, v5, [B

    const/4 v15, 0x0

    const/16 v16, 0xd

    aput-byte v16, v5, v15

    const-string v15, "7b2e24"

    const v16, -0x32877acf    # -2.605924E8f

    move/from16 v0, v16

    invoke-static {v5, v15, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v5, 0xe

    new-array v5, v5, [B

    fill-array-data v5, :array_2

    const-string v7, "e05a2a"

    const-wide v16, -0x3e89329230000000L    # -2.3910109E7

    move-wide/from16 v0, v16

    invoke-static {v5, v7, v0, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, v11, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->selection:I

    if-eqz v5, :cond_19

    const/4 v7, -0x1

    if-ne v5, v7, :cond_0

    iget v5, v11, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->localVersion:I

    if-eqz v5, :cond_19

    const/4 v5, -0x1

    :cond_0
    const/4 v7, 0x1

    if-ne v5, v7, :cond_1

    iget v7, v11, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->remoteVersion:I

    if-eqz v7, :cond_19

    :cond_1
    const/4 v7, -0x1

    if-ne v5, v7, :cond_4

    move-object/from16 v0, p2

    invoke-static {v6, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzc(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v5

    const-wide/16 v6, 0x0

    cmp-long v6, v12, v6

    if-nez v6, :cond_3

    invoke-virtual {v10}, Ljava/lang/ThreadLocal;->remove()V

    :goto_0
    iget-object v6, v9, Lcom/google/android/gms/dynamite/zzn;->zza:Landroid/database/Cursor;

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    invoke-virtual {v8, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    move-object v4, v5

    :goto_1
    return-object v4

    :cond_3
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    const/4 v7, 0x1

    if-ne v5, v7, :cond_18

    :try_start_1
    iget v7, v11, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->remoteVersion:I
    :try_end_1
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-class v5, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-enter v5
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    :try_start_3
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzf(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_15

    sget-object v5, Lcom/google/android/gms/dynamite/DynamiteModule;->zzb:Ljava/lang/Boolean;

    const-class v14, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    if-eqz v5, :cond_14

    :try_start_4
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v14, 0x1b

    new-array v14, v14, [B

    fill-array-data v14, :array_3

    const-string v15, "5549d7"

    const/16 v16, -0x149c

    invoke-static/range {v14 .. v16}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v14, 0xd

    new-array v14, v14, [B

    fill-array-data v14, :array_4

    const-string v15, "ae0105"

    const-wide v16, -0x3e25ee34aa400000L    # -1.749495127E9

    invoke-static/range {v14 .. v17}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v14, 0xe

    new-array v14, v14, [B

    fill-array-data v14, :array_5

    const-string v15, "c051d8"

    const/16 v16, -0x3650

    invoke-static/range {v14 .. v16}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-class v5, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-enter v5
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    :try_start_5
    sget-object v14, Lcom/google/android/gms/dynamite/DynamiteModule;->zzl:Lcom/google/android/gms/dynamite/zzr;

    const-class v5, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    if-eqz v14, :cond_c

    :try_start_6
    invoke-virtual {v8}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/dynamite/zzn;

    if-eqz v5, :cond_a

    iget-object v15, v5, Lcom/google/android/gms/dynamite/zzn;->zza:Landroid/database/Cursor;

    if-eqz v15, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    iget-object v0, v5, Lcom/google/android/gms/dynamite/zzn;->zza:Landroid/database/Cursor;

    move-object/from16 v16, v0

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    const-class v5, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-enter v5
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :try_start_7
    sget v5, Lcom/google/android/gms/dynamite/DynamiteModule;->zze:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/16 v17, 0x2

    move/from16 v0, v17

    if-lt v5, v0, :cond_6

    const/4 v5, 0x1

    :goto_2
    :try_start_8
    const-class v17, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-exit v17
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    :try_start_9
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_7

    const/16 v5, 0xe

    new-array v5, v5, [B

    fill-array-data v5, :array_6

    const-string v17, "b87cb2"

    const v18, -0x3168f307

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v5, v0, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v5

    const/16 v17, 0x3b

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v17, v0

    fill-array-data v17, :array_7

    const-string v18, "ceebe0"

    const-wide/32 v20, -0x56c6c24d

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v15}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v5

    invoke-static/range {v16 .. v16}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v14, v5, v0, v7, v15}, Lcom/google/android/gms/dynamite/zzr;->zzf(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;ILcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v5

    :goto_3
    invoke-static {v5}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    if-eqz v5, :cond_8

    new-instance v7, Lcom/google/android/gms/dynamite/DynamiteModule;

    invoke-direct {v7, v5}, Lcom/google/android/gms/dynamite/DynamiteModule;-><init>(Landroid/content/Context;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-object v5, v7

    :goto_4
    const-wide/16 v6, 0x0

    cmp-long v6, v12, v6

    if-nez v6, :cond_11

    invoke-virtual {v10}, Ljava/lang/ThreadLocal;->remove()V

    :goto_5
    iget-object v6, v9, Lcom/google/android/gms/dynamite/zzn;->zza:Landroid/database/Cursor;

    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    invoke-virtual {v8, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    move-object v4, v5

    goto/16 :goto_1

    :cond_6
    const/4 v5, 0x0

    goto :goto_2

    :cond_7
    const/16 v5, 0xe

    :try_start_a
    new-array v5, v5, [B

    fill-array-data v5, :array_8

    const-string v17, "9c6efa"

    const/16 v18, 0x1dc

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v5, v0, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const/16 v17, 0x38

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v17, v0

    fill-array-data v17, :array_9

    const-string v18, "803932"

    const/16 v19, 0x1

    const/16 v20, 0x0

    invoke-static/range {v17 .. v20}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v15}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v5

    invoke-static/range {v16 .. v16}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v14, v5, v0, v7, v15}, Lcom/google/android/gms/dynamite/zzr;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;ILcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v5

    goto :goto_3

    :cond_8
    new-instance v5, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const/16 v7, 0x1c

    new-array v7, v7, [B

    fill-array-data v7, :array_a

    const-string v8, "59cdd8"

    const/4 v10, 0x0

    const/4 v14, 0x1

    invoke-static {v7, v8, v10, v14}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v5, v7, v8}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zzp;)V

    throw v5
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catch_0
    move-exception v5

    :goto_6
    :try_start_b
    new-instance v7, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const/16 v8, 0x1d

    new-array v8, v8, [B

    fill-array-data v8, :array_b

    const-string v10, "ed80a8"

    const v14, 0x4e3725aa    # 7.681747E8f

    invoke-static {v8, v10, v14}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    invoke-direct {v7, v8, v5, v10}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/android/gms/dynamite/zzp;)V

    throw v7
    :try_end_b
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :catch_1
    move-exception v5

    :goto_7
    :try_start_c
    invoke-virtual {v5}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;->getMessage()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v10, 0x1e

    new-array v10, v10, [B

    fill-array-data v10, :array_c

    const-string v14, "dbe866"

    const-wide v16, 0x41d4c86ba4400000L    # 1.394716305E9

    move-wide/from16 v0, v16

    invoke-static {v10, v14, v0, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0xe

    new-array v7, v7, [B

    fill-array-data v7, :array_d

    const-string v10, "1fd4da"

    const-wide/32 v14, -0x514a4913

    invoke-static {v7, v10, v14, v15}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v7, v11, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->localVersion:I

    if-eqz v7, :cond_17

    new-instance v8, Lcom/google/android/gms/dynamite/zzo;

    const/4 v10, 0x0

    invoke-direct {v8, v7, v10}, Lcom/google/android/gms/dynamite/zzo;-><init>(II)V

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2, v8}, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;->selectModule(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$IVersions;)Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;

    move-result-object v7

    iget v7, v7, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->selection:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_17

    move-object/from16 v0, p2

    invoke-static {v6, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzc(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move-result-object v5

    const-wide/16 v6, 0x0

    cmp-long v6, v12, v6

    if-nez v6, :cond_16

    sget-object v6, Lcom/google/android/gms/dynamite/DynamiteModule;->zzh:Ljava/lang/ThreadLocal;

    invoke-virtual {v6}, Ljava/lang/ThreadLocal;->remove()V

    :goto_8
    iget-object v6, v9, Lcom/google/android/gms/dynamite/zzn;->zza:Landroid/database/Cursor;

    if-eqz v6, :cond_9

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_9
    sget-object v6, Lcom/google/android/gms/dynamite/DynamiteModule;->zzg:Ljava/lang/ThreadLocal;

    invoke-virtual {v6, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    move-object v4, v5

    goto/16 :goto_1

    :catchall_0
    move-exception v5

    move-object/from16 v22, v6

    move-object v6, v5

    move-object/from16 v5, v22

    :goto_9
    :try_start_d
    const-class v7, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-exit v7
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_a

    :try_start_e
    throw v6
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_2
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_e .. :try_end_e} :catch_7
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    :catch_2
    move-exception v6

    move-object/from16 v22, v6

    move-object v6, v5

    move-object/from16 v5, v22

    goto/16 :goto_6

    :cond_a
    :try_start_f
    new-instance v5, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const/16 v7, 0x10

    new-array v7, v7, [B

    fill-array-data v7, :array_e

    const-string v8, "412977"

    const/4 v10, 0x1

    invoke-static {v7, v8, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v5, v7, v8}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zzp;)V

    throw v5
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :catch_3
    move-exception v5

    :goto_a
    :try_start_10
    throw v5
    :try_end_10
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :catchall_1
    move-exception v5

    const-wide/16 v6, 0x0

    cmp-long v6, v12, v6

    if-nez v6, :cond_1a

    sget-object v6, Lcom/google/android/gms/dynamite/DynamiteModule;->zzh:Ljava/lang/ThreadLocal;

    invoke-virtual {v6}, Ljava/lang/ThreadLocal;->remove()V

    :goto_b
    iget-object v6, v9, Lcom/google/android/gms/dynamite/zzn;->zza:Landroid/database/Cursor;

    if-eqz v6, :cond_b

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_b
    sget-object v6, Lcom/google/android/gms/dynamite/DynamiteModule;->zzg:Ljava/lang/ThreadLocal;

    invoke-virtual {v6, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    throw v5

    :cond_c
    :try_start_11
    new-instance v5, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const/16 v7, 0x20

    new-array v7, v7, [B

    fill-array-data v7, :array_f

    const-string v8, "d6ecf9"

    const/4 v10, 0x0

    const/4 v14, 0x0

    invoke-static {v7, v8, v10, v14}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v5, v7, v8}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zzp;)V

    throw v5
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    :catchall_2
    move-exception v5

    :goto_c
    :try_start_12
    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/google/android/gms/common/util/CrashUtils;->addDynamiteErrorToDropBox(Landroid/content/Context;Ljava/lang/Throwable;)Z

    new-instance v7, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const/16 v8, 0x1d

    new-array v8, v8, [B

    fill-array-data v8, :array_10

    const-string v10, "307cf2"

    const-wide/32 v14, -0x69809d58

    invoke-static {v8, v10, v14, v15}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    invoke-direct {v7, v8, v5, v10}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/android/gms/dynamite/zzp;)V

    throw v7
    :try_end_12
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    :catchall_3
    move-exception v5

    :goto_d
    :try_start_13
    const-class v7, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-exit v7
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    :try_start_14
    throw v5

    :cond_d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v14, 0x1b

    new-array v14, v14, [B

    fill-array-data v14, :array_11

    const-string v15, "d14452"

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-static/range {v14 .. v17}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v14, 0xd

    new-array v14, v14, [B

    fill-array-data v14, :array_12

    const-string v15, "c86f37"

    const/16 v16, 0x1

    const/16 v17, 0x1

    invoke-static/range {v14 .. v17}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v14, 0xe

    new-array v14, v14, [B

    fill-array-data v14, :array_13

    const-string v15, "9e1244"

    const-wide/32 v16, 0x5b8d6567

    invoke-static/range {v14 .. v17}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzg(Landroid/content/Context;)Lcom/google/android/gms/dynamite/zzq;

    move-result-object v14

    if-eqz v14, :cond_13

    invoke-virtual {v14}, Lcom/google/android/gms/dynamite/zzq;->zze()I

    move-result v5

    const/4 v15, 0x3

    if-lt v5, v15, :cond_f

    invoke-virtual {v8}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/dynamite/zzn;

    if-eqz v5, :cond_e

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v15

    iget-object v5, v5, Lcom/google/android/gms/dynamite/zzn;->zza:Landroid/database/Cursor;

    invoke-static {v5}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v14, v15, v0, v7, v5}, Lcom/google/android/gms/dynamite/zzq;->zzi(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;ILcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v5

    :goto_e
    invoke-static {v5}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_12

    new-instance v7, Lcom/google/android/gms/dynamite/DynamiteModule;

    check-cast v5, Landroid/content/Context;

    invoke-direct {v7, v5}, Lcom/google/android/gms/dynamite/DynamiteModule;-><init>(Landroid/content/Context;)V

    move-object v5, v7

    goto/16 :goto_4

    :cond_e
    new-instance v5, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const/16 v7, 0x1e

    new-array v7, v7, [B

    fill-array-data v7, :array_14

    const-string v8, "e73e77"

    const/4 v10, 0x0

    invoke-static {v7, v8, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v5, v7, v8}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zzp;)V

    throw v5

    :cond_f
    const/4 v15, 0x2

    if-ne v5, v15, :cond_10

    const/16 v5, 0xe

    new-array v5, v5, [B

    fill-array-data v5, :array_15

    const-string v15, "a1f1ad"

    const/16 v16, 0x0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v5, v15, v0, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v5

    const/16 v15, 0x1c

    new-array v15, v15, [B

    fill-array-data v15, :array_16

    const-string v16, "c7977f"

    const-wide/32 v18, 0x3fd56de3

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-static {v15, v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v15

    invoke-static {v5, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v14, v5, v0, v7}, Lcom/google/android/gms/dynamite/zzq;->zzj(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;I)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v5

    goto :goto_e

    :cond_10
    const/16 v5, 0xe

    new-array v5, v5, [B

    fill-array-data v5, :array_17

    const-string v15, "6bfbb2"

    const/16 v16, -0x6360

    move/from16 v0, v16

    invoke-static {v5, v15, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const/16 v15, 0x40

    new-array v15, v15, [B

    fill-array-data v15, :array_18

    const-string v16, "c583d2"

    const-wide v18, -0x3e2afa9ae3000000L    # -1.410700404E9

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-static {v15, v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v15

    invoke-static {v5, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v14, v5, v0, v7}, Lcom/google/android/gms/dynamite/zzq;->zzh(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;I)Lcom/google/android/gms/dynamic/IObjectWrapper;
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_14 .. :try_end_14} :catch_3
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    move-result-object v5

    goto/16 :goto_e

    :cond_11
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_12
    :try_start_15
    new-instance v5, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const/16 v7, 0x1d

    new-array v7, v7, [B

    fill-array-data v7, :array_19

    const-string v8, "94126f"

    const-wide/32 v14, -0xd3e92bf

    invoke-static {v7, v8, v14, v15}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v5, v7, v8}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zzp;)V

    throw v5

    :cond_13
    new-instance v5, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const/16 v7, 0x21

    new-array v7, v7, [B

    fill-array-data v7, :array_1a

    const-string v8, "d1c0f7"

    const/4 v10, 0x0

    invoke-static {v7, v8, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v5, v7, v8}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zzp;)V

    throw v5

    :cond_14
    new-instance v5, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const/16 v7, 0x2f

    new-array v7, v7, [B

    fill-array-data v7, :array_1b

    const-string v8, "ab2902"

    const/4 v10, 0x0

    const/4 v14, 0x0

    invoke-static {v7, v8, v10, v14}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v5, v7, v8}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zzp;)V

    throw v5
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_15 .. :try_end_15} :catch_3
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    :cond_15
    :try_start_16
    new-instance v5, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const/16 v7, 0x17

    new-array v7, v7, [B

    fill-array-data v7, :array_1c

    const-string v8, "4a83b4"

    const/4 v10, 0x0

    const/4 v14, 0x1

    invoke-static {v7, v8, v10, v14}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v5, v7, v8}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zzp;)V

    throw v5

    :catchall_4
    move-exception v5

    :goto_f
    const-class v7, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-exit v7
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    :try_start_17
    throw v5
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_17 .. :try_end_17} :catch_3
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    :cond_16
    sget-object v6, Lcom/google/android/gms/dynamite/DynamiteModule;->zzh:Ljava/lang/ThreadLocal;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_17
    :try_start_18
    new-instance v6, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const/16 v7, 0x2c

    new-array v7, v7, [B

    fill-array-data v7, :array_1d

    const-string v8, "d67832"

    const/16 v10, 0x1781

    invoke-static {v7, v8, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v6, v7, v5, v8}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/android/gms/dynamite/zzp;)V

    throw v6

    :cond_18
    new-instance v6, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v8, 0x24

    new-array v8, v8, [B

    fill-array-data v8, :array_1e

    const-string v10, "d9a5a3"

    const/16 v11, -0x6a25

    invoke-static {v8, v10, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-direct {v6, v5, v7}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zzp;)V

    throw v6

    :cond_19
    new-instance v5, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    iget v6, v11, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->localVersion:I

    iget v7, v11, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->remoteVersion:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v10, 0x15

    new-array v10, v10, [B

    fill-array-data v10, :array_1f

    const-string v11, "ead041"

    const/16 v14, 0x287a

    invoke-static {v10, v11, v14}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0x19

    new-array v10, v10, [B

    fill-array-data v10, :array_20

    const-string v11, "041a38"

    const v14, -0x31b42772

    invoke-static {v10, v11, v14}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v6, 0x17

    new-array v6, v6, [B

    fill-array-data v6, :array_21

    const-string v10, "8e0a5a"

    const-wide/32 v14, -0x643a1e63

    invoke-static {v6, v10, v14, v15}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    new-array v6, v6, [B

    const/4 v7, 0x0

    const/16 v10, 0x1b

    aput-byte v10, v6, v7

    const-string v7, "593650"

    const/16 v10, 0x34b1

    invoke-static {v6, v7, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zzp;)V

    throw v5
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    :cond_1a
    sget-object v6, Lcom/google/android/gms/dynamite/DynamiteModule;->zzh:Ljava/lang/ThreadLocal;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto/16 :goto_b

    :cond_1b
    new-instance v4, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const/16 v5, 0x18

    new-array v5, v5, [B

    fill-array-data v5, :array_22

    const-string v6, "cba6de"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zzp;)V

    throw v4

    :catch_4
    move-exception v5

    goto/16 :goto_7

    :catch_5
    move-exception v5

    goto/16 :goto_6

    :catch_6
    move-exception v5

    goto/16 :goto_a

    :catchall_5
    move-exception v5

    goto/16 :goto_c

    :catch_7
    move-exception v6

    move-object/from16 v22, v6

    move-object v6, v5

    move-object/from16 v5, v22

    goto/16 :goto_a

    :catchall_6
    move-exception v6

    move-object/from16 v22, v6

    move-object v6, v5

    move-object/from16 v5, v22

    goto/16 :goto_c

    :catchall_7
    move-exception v5

    goto/16 :goto_f

    :catchall_8
    move-exception v5

    goto/16 :goto_d

    :catchall_9
    move-exception v5

    move-object/from16 v22, v5

    move-object v5, v6

    move-object/from16 v6, v22

    goto/16 :goto_9

    :catchall_a
    move-exception v6

    goto/16 :goto_9

    :array_0
    .array-data 1
        0x25t
        0x9t
        0x58t
        0x41t
        0xft
        0x6t
        0x3t
        0x14t
        0x5ft
        0x5ct
        0x1t
        0x42t
        0xat
        0x9t
        0x55t
        0x53t
        0xat
        0x42t
        0xbt
        0x9t
        0x52t
        0x47t
        0xat
        0x7t
        0x46t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x46t
        0x0t
        0xct
        0x6t
        0x43t
        0x45t
        0x3t
        0xct
        0xdt
        0x16t
        0x6t
        0x17t
        0xbt
        0xet
        0x6t
        0x17t
        0xft
        0x52t
        0x46t
    .end array-data

    :array_2
    .array-data 1
        0x21t
        0x49t
        0x5bt
        0x0t
        0x5ft
        0x8t
        0x11t
        0x55t
        0x78t
        0xet
        0x56t
        0x14t
        0x9t
        0x55t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x66t
        0x50t
        0x58t
        0x5ct
        0x7t
        0x43t
        0x50t
        0x51t
        0x14t
        0x4bt
        0x1t
        0x5at
        0x5at
        0x41t
        0x51t
        0x19t
        0x12t
        0x52t
        0x47t
        0x46t
        0x5dt
        0x56t
        0xat
        0x17t
        0x5at
        0x53t
        0x14t
    .end array-data

    :array_4
    .array-data 1
        0x4dt
        0x45t
        0x46t
        0x54t
        0x42t
        0x46t
        0x8t
        0xat
        0x5et
        0x11t
        0xet
        0x8t
        0x41t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x27t
        0x49t
        0x5bt
        0x50t
        0x9t
        0x51t
        0x17t
        0x55t
        0x78t
        0x5et
        0x0t
        0x4dt
        0xft
        0x55t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x26t
        0x41t
        0x59t
        0x2t
        0xft
        0x5bt
        0x16t
        0x5dt
        0x7at
        0xct
        0x6t
        0x47t
        0xet
        0x5dt
    .end array-data

    nop

    :array_7
    .array-data 1
        0x27t
        0x1ct
        0xbt
        0x3t
        0x8t
        0x59t
        0x17t
        0x0t
        0x45t
        0xet
        0xat
        0x51t
        0x7t
        0x0t
        0x17t
        0x42t
        0x13t
        0x55t
        0x11t
        0x16t
        0xct
        0xdt
        0xbt
        0x10t
        0x5dt
        0x58t
        0x45t
        0x50t
        0x49t
        0x10t
        0x16t
        0x16t
        0xct
        0xct
        0x2t
        0x10t
        0xft
        0xat
        0x4t
        0x6t
        0x28t
        0x5ft
        0x7t
        0x10t
        0x9t
        0x7t
        0x57t
        0x7et
        0xct
        0x26t
        0x17t
        0x3t
        0x16t
        0x58t
        0x36t
        0x11t
        0xct
        0xet
        0x16t
    .end array-data

    :array_8
    .array-data 1
        0x7dt
        0x1at
        0x58t
        0x4t
        0xbt
        0x8t
        0x4dt
        0x6t
        0x7bt
        0xat
        0x2t
        0x14t
        0x55t
        0x6t
    .end array-data

    nop

    :array_9
    .array-data 1
        0x7ct
        0x49t
        0x5dt
        0x58t
        0x5et
        0x5bt
        0x4ct
        0x55t
        0x13t
        0x55t
        0x5ct
        0x53t
        0x5ct
        0x55t
        0x41t
        0x19t
        0x45t
        0x57t
        0x4at
        0x43t
        0x5at
        0x56t
        0x5dt
        0x12t
        0x4t
        0x10t
        0x1t
        0x15t
        0x13t
        0x54t
        0x59t
        0x5ct
        0x5ft
        0x50t
        0x5dt
        0x55t
        0x18t
        0x52t
        0x52t
        0x5at
        0x58t
        0x12t
        0x4ct
        0x5ft
        0x13t
        0x55t
        0x5ct
        0x53t
        0x5ct
        0x7dt
        0x5ct
        0x5dt
        0x46t
        0x5et
        0x5dt
        0x2t
    .end array-data

    :array_a
    .array-data 1
        0x73t
        0x58t
        0xat
        0x8t
        0x1t
        0x5ct
        0x15t
        0x4dt
        0xct
        0x44t
        0x3t
        0x5dt
        0x41t
        0x19t
        0xet
        0xbt
        0x0t
        0x4dt
        0x59t
        0x5ct
        0x43t
        0x7t
        0xbt
        0x56t
        0x41t
        0x5ct
        0x1bt
        0x10t
    .end array-data

    :array_b
    .array-data 1
        0x23t
        0x5t
        0x51t
        0x5ct
        0x4t
        0x5ct
        0x45t
        0x10t
        0x57t
        0x10t
        0xdt
        0x57t
        0x4t
        0x0t
        0x18t
        0x42t
        0x4t
        0x55t
        0xat
        0x10t
        0x5dt
        0x10t
        0xct
        0x57t
        0x1t
        0x11t
        0x54t
        0x55t
        0x4ft
    .end array-data

    nop

    :array_c
    .array-data 1
        0x22t
        0x3t
        0xct
        0x54t
        0x53t
        0x52t
        0x44t
        0x16t
        0xat
        0x18t
        0x5at
        0x59t
        0x5t
        0x6t
        0x45t
        0x4at
        0x53t
        0x5bt
        0xbt
        0x16t
        0x0t
        0x18t
        0x5bt
        0x59t
        0x0t
        0x17t
        0x9t
        0x5dt
        0xct
        0x16t
    .end array-data

    nop

    :array_d
    .array-data 1
        0x75t
        0x1ft
        0xat
        0x55t
        0x9t
        0x8t
        0x45t
        0x3t
        0x29t
        0x5bt
        0x0t
        0x14t
        0x5dt
        0x3t
    .end array-data

    nop

    :array_e
    .array-data 1
        0x7at
        0x5et
        0x12t
        0x4bt
        0x52t
        0x44t
        0x41t
        0x5dt
        0x46t
        0x19t
        0x54t
        0x42t
        0x46t
        0x42t
        0x5dt
        0x4bt
    .end array-data

    :array_f
    .array-data 1
        0x20t
        0x4ft
        0xbt
        0x2t
        0xbt
        0x50t
        0x10t
        0x53t
        0x29t
        0xct
        0x7t
        0x5dt
        0x1t
        0x44t
        0x33t
        0x51t
        0x46t
        0x4et
        0x5t
        0x45t
        0x45t
        0xdt
        0x9t
        0x4dt
        0x44t
        0x55t
        0x4t
        0x0t
        0xet
        0x5ct
        0x0t
        0x18t
    .end array-data

    :array_10
    .array-data 1
        0x75t
        0x51t
        0x5et
        0xft
        0x3t
        0x56t
        0x13t
        0x44t
        0x58t
        0x43t
        0xat
        0x5dt
        0x52t
        0x54t
        0x17t
        0x11t
        0x3t
        0x5ft
        0x5ct
        0x44t
        0x52t
        0x43t
        0xbt
        0x5dt
        0x57t
        0x45t
        0x5bt
        0x6t
        0x48t
    .end array-data

    nop

    :array_11
    .array-data 1
        0x37t
        0x54t
        0x58t
        0x51t
        0x56t
        0x46t
        0x1t
        0x55t
        0x14t
        0x46t
        0x50t
        0x5ft
        0xbt
        0x45t
        0x51t
        0x14t
        0x43t
        0x57t
        0x16t
        0x42t
        0x5dt
        0x5bt
        0x5bt
        0x12t
        0xbt
        0x57t
        0x14t
    .end array-data

    :array_12
    .array-data 1
        0x4ft
        0x18t
        0x40t
        0x3t
        0x41t
        0x44t
        0xat
        0x57t
        0x58t
        0x46t
        0xdt
        0xat
        0x43t
    .end array-data

    nop

    :array_13
    .array-data 1
        0x7dt
        0x1ct
        0x5ft
        0x53t
        0x59t
        0x5dt
        0x4dt
        0x0t
        0x7ct
        0x5dt
        0x50t
        0x41t
        0x55t
        0x0t
    .end array-data

    nop

    :array_14
    .array-data 1
        0x2bt
        0x58t
        0x13t
        0x6t
        0x56t
        0x54t
        0xdt
        0x52t
        0x57t
        0x45t
        0x45t
        0x52t
        0x16t
        0x42t
        0x5ft
        0x11t
        0x17t
        0x54t
        0x10t
        0x45t
        0x40t
        0xat
        0x45t
        0x17t
        0xdt
        0x58t
        0x5ft
        0x1t
        0x52t
        0x45t
    .end array-data

    nop

    :array_15
    .array-data 1
        0x25t
        0x48t
        0x8t
        0x50t
        0xct
        0xdt
        0x15t
        0x54t
        0x2bt
        0x5et
        0x5t
        0x11t
        0xdt
        0x54t
    .end array-data

    nop

    :array_16
    .array-data 1
        0x2at
        0x73t
        0x40t
        0x59t
        0x56t
        0xbt
        0xat
        0x43t
        0x5ct
        0x17t
        0x5bt
        0x9t
        0x2t
        0x53t
        0x5ct
        0x45t
        0x17t
        0x10t
        0x6t
        0x45t
        0x4at
        0x5et
        0x58t
        0x8t
        0x43t
        0xat
        0x19t
        0x5t
    .end array-data

    :array_17
    .array-data 1
        0x72t
        0x1bt
        0x8t
        0x3t
        0xft
        0x5bt
        0x42t
        0x7t
        0x2bt
        0xdt
        0x6t
        0x47t
        0x5at
        0x7t
    .end array-data

    nop

    :array_18
    .array-data 1
        0x27t
        0x4ct
        0x56t
        0x52t
        0x9t
        0x5bt
        0x17t
        0x50t
        0x18t
        0x5ft
        0xbt
        0x53t
        0x7t
        0x50t
        0x4at
        0x13t
        0x12t
        0x57t
        0x11t
        0x46t
        0x51t
        0x5ct
        0xat
        0x12t
        0x5ft
        0x15t
        0xat
        0x1ft
        0x44t
        0x54t
        0x2t
        0x59t
        0x54t
        0x5at
        0xat
        0x55t
        0x43t
        0x57t
        0x59t
        0x50t
        0xft
        0x12t
        0x17t
        0x5at
        0x18t
        0x50t
        0x16t
        0x57t
        0x2t
        0x41t
        0x5dt
        0x7et
        0xbt
        0x56t
        0x16t
        0x59t
        0x5dt
        0x70t
        0xbt
        0x5ct
        0x17t
        0x50t
        0x40t
        0x47t
    .end array-data

    :array_19
    .array-data 1
        0x7ft
        0x55t
        0x58t
        0x5et
        0x53t
        0x2t
        0x19t
        0x40t
        0x5et
        0x12t
        0x5at
        0x9t
        0x58t
        0x50t
        0x11t
        0x40t
        0x53t
        0xbt
        0x56t
        0x40t
        0x54t
        0x12t
        0x5bt
        0x9t
        0x5dt
        0x41t
        0x5dt
        0x57t
        0x18t
    .end array-data

    nop

    :array_1a
    .array-data 1
        0x22t
        0x50t
        0xat
        0x5ct
        0x3t
        0x53t
        0x44t
        0x45t
        0xct
        0x10t
        0x5t
        0x45t
        0x1t
        0x50t
        0x17t
        0x55t
        0x46t
        0x7et
        0x20t
        0x48t
        0xdt
        0x51t
        0xbt
        0x5et
        0x10t
        0x54t
        0x2ft
        0x5ft
        0x7t
        0x53t
        0x1t
        0x43t
        0x4dt
    .end array-data

    nop

    :array_1b
    .array-data 1
        0x27t
        0x3t
        0x5bt
        0x55t
        0x55t
        0x56t
        0x41t
        0x16t
        0x5dt
        0x19t
        0x54t
        0x57t
        0x15t
        0x7t
        0x40t
        0x54t
        0x59t
        0x5ct
        0x4t
        0x42t
        0x45t
        0x51t
        0x59t
        0x51t
        0x9t
        0x42t
        0x5et
        0x56t
        0x51t
        0x56t
        0x8t
        0xct
        0x55t
        0x19t
        0x42t
        0x5dt
        0x14t
        0x16t
        0x57t
        0x19t
        0x44t
        0x5dt
        0x41t
        0x17t
        0x41t
        0x5ct
        0x1et
    .end array-data

    :array_1c
    .array-data 1
        0x66t
        0x4t
        0x55t
        0x5ct
        0x16t
        0x51t
        0x14t
        0xdt
        0x57t
        0x52t
        0x6t
        0x5dt
        0x5at
        0x6t
        0x18t
        0x57t
        0xbt
        0x47t
        0x55t
        0x3t
        0x54t
        0x56t
        0x6t
    .end array-data

    :array_1d
    .array-data 1
        0x36t
        0x53t
        0x5at
        0x57t
        0x47t
        0x57t
        0x44t
        0x5at
        0x58t
        0x59t
        0x57t
        0x12t
        0x2t
        0x57t
        0x5et
        0x54t
        0x56t
        0x56t
        0x4at
        0x16t
        0x79t
        0x57t
        0x13t
        0x5et
        0xbt
        0x55t
        0x56t
        0x54t
        0x13t
        0x54t
        0x5t
        0x5at
        0x5bt
        0x5at
        0x52t
        0x51t
        0xft
        0x16t
        0x51t
        0x57t
        0x46t
        0x5ct
        0x0t
        0x18t
    .end array-data

    :array_1e
    .array-data 1
        0x32t
        0x5ct
        0x13t
        0x46t
        0x8t
        0x5ct
        0xat
        0x69t
        0xet
        0x59t
        0x8t
        0x50t
        0x1dt
        0x19t
        0x13t
        0x50t
        0x15t
        0x46t
        0x16t
        0x57t
        0x4t
        0x51t
        0x41t
        0x5at
        0xat
        0x4ft
        0x0t
        0x59t
        0x8t
        0x57t
        0x44t
        0x5at
        0xet
        0x51t
        0x4t
        0x9t
    .end array-data

    :array_1f
    .array-data 1
        0x2bt
        0xet
        0x44t
        0x51t
        0x57t
        0x52t
        0x0t
        0x11t
        0x10t
        0x51t
        0x56t
        0x5dt
        0x0t
        0x41t
        0x9t
        0x5ft
        0x50t
        0x44t
        0x9t
        0x4t
        0x44t
    .end array-data

    nop

    :array_20
    .array-data 1
        0x10t
        0x52t
        0x5et
        0x14t
        0x5dt
        0x5ct
        0x1et
        0x14t
        0x7dt
        0xet
        0x50t
        0x59t
        0x5ct
        0x14t
        0x47t
        0x4t
        0x41t
        0x4bt
        0x59t
        0x5bt
        0x5ft
        0x41t
        0x5at
        0x4bt
        0x10t
    .end array-data

    nop

    :array_21
    .array-data 1
        0x18t
        0x4t
        0x5et
        0x5t
        0x15t
        0x13t
        0x5dt
        0x8t
        0x5ft
        0x15t
        0x50t
        0x41t
        0x4et
        0x0t
        0x42t
        0x12t
        0x5ct
        0xet
        0x56t
        0x45t
        0x59t
        0x12t
        0x15t
    .end array-data

    :array_22
    .array-data 1
        0xdt
        0x17t
        0xdt
        0x5at
        0x44t
        0x4t
        0x13t
        0x12t
        0xdt
        0x5ft
        0x7t
        0x4t
        0x17t
        0xbt
        0xet
        0x58t
        0x44t
        0x26t
        0xct
        0xct
        0x15t
        0x53t
        0x1ct
        0x11t
    .end array-data
.end method

.method public static zza(Landroid/content/Context;Ljava/lang/String;Z)I
    .locals 9

    const/4 v7, 0x0

    const/4 v6, 0x0

    :try_start_0
    const-class v0, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzb:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_0

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/dynamite/DynamiteModule$DynamiteLoaderClassLoader;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "d730d1"

    const/16 v3, -0x5673

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    monitor-enter v3
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    :try_start_3
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-ne v0, v1, :cond_1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_1
    :try_start_4
    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzb:Ljava/lang/Boolean;

    :cond_0
    const-class v1, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :try_start_6
    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzb(Landroid/content/Context;Ljava/lang/String;ZZ)I
    :try_end_6
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v6

    :goto_2
    return v6

    :cond_1
    if-eqz v0, :cond_2

    :try_start_7
    invoke-static {v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzd(Ljava/lang/ClassLoader;)V
    :try_end_7
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_3
    :try_start_8
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzf(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    const-class v0, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v0

    const-class v1, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p0, v0}, Lcom/google/android/gms/common/util/CrashUtils;->addDynamiteErrorToDropBox(Landroid/content/Context;Ljava/lang/Throwable;)Z

    throw v0

    :cond_3
    :try_start_b
    sget-boolean v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzd:Z

    if-nez v0, :cond_4

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    :try_start_c
    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzb(Landroid/content/Context;Ljava/lang/String;ZZ)I

    move-result v0

    sget-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzc:Ljava/lang/String;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    :try_end_c
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    :try_start_d
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :try_start_e
    const-class v1, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move v6, v0

    goto :goto_2

    :cond_7
    :try_start_f
    invoke-static {}, Lcom/google/android/gms/dynamite/zzb;->zza()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eqz v1, :cond_8

    :goto_4
    invoke-static {v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzd(Ljava/lang/ClassLoader;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzb:Ljava/lang/Boolean;
    :try_end_f
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :try_start_10
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    :try_start_11
    const-class v1, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    move v6, v0

    goto :goto_2

    :cond_8
    :try_start_12
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v1, v4, :cond_9

    sget-object v4, Lcom/google/android/gms/dynamite/DynamiteModule;->zzc:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ldalvik/system/DelegateLastClassLoader;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Ldalvik/system/DelegateLastClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_12
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    goto :goto_4

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_13
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    goto/16 :goto_0

    :cond_9
    :try_start_14
    sget-object v4, Lcom/google/android/gms/dynamite/DynamiteModule;->zzc:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/dynamite/zzc;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lcom/google/android/gms/dynamite/zzc;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_14
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_14 .. :try_end_14} :catch_0
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    :try_start_15
    monitor-exit v3
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    :try_start_16
    throw v0
    :try_end_16
    .catch Ljava/lang/ClassNotFoundException; {:try_start_16 .. :try_end_16} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_16 .. :try_end_16} :catch_6
    .catch Ljava/lang/NoSuchFieldException; {:try_start_16 .. :try_end_16} :catch_7
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    :catch_1
    move-exception v0

    :goto_5
    :try_start_17
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1e

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "f3c434"

    const v4, -0x318be05d

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v2, "c261c2"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    goto/16 :goto_1

    :catch_2
    move-exception v0

    :try_start_18
    invoke-virtual {v0}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2a

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const-string v3, "e32975"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    const-string v2, "179112"

    const-wide/32 v4, -0x35ab5d06

    invoke-static {v0, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_a
    invoke-static {p0}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzg(Landroid/content/Context;)Lcom/google/android/gms/dynamite/zzq;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    move-result-object v0

    if-nez v0, :cond_b

    move v0, v6

    :goto_6
    move v6, v0

    goto/16 :goto_2

    :cond_b
    :try_start_19
    invoke-virtual {v0}, Lcom/google/android/gms/dynamite/zzq;->zze()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_13

    sget-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzg:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/dynamite/zzn;

    if-eqz v1, :cond_c

    iget-object v1, v1, Lcom/google/android/gms/dynamite/zzn;->zza:Landroid/database/Cursor;

    if-eqz v1, :cond_c

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto :goto_6

    :cond_c
    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/dynamite/DynamiteModule;->zzh:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/dynamite/zzq;->zzk(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;ZJ)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_4
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    if-eqz v0, :cond_d

    :try_start_1a
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_f

    :cond_d
    const/16 v1, 0xe

    new-array v1, v1, [B

    fill-array-data v1, :array_5

    const-string v2, "8d0e11"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x29

    new-array v2, v2, [B

    fill-array-data v2, :array_6

    const-string v3, "caecf9"

    const-wide v4, -0x3e48307e50000000L    # -3.9947512E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1a} :catch_3
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    if-eqz v0, :cond_e

    :try_start_1b
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    :cond_e
    :goto_7
    move v0, v6

    goto :goto_6

    :cond_f
    const/4 v1, 0x0

    :try_start_1c
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_10

    invoke-static {v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->zze(Landroid/database/Cursor;)Z
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1c} :catch_3
    .catchall {:try_start_1c .. :try_end_1c} :catchall_3

    move-result v2

    if-eqz v2, :cond_10

    move-object v0, v7

    :cond_10
    if-eqz v0, :cond_11

    :try_start_1d
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_11
    move v0, v1

    goto/16 :goto_6

    :catchall_3
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_8
    if-eqz v1, :cond_12

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_12
    throw v0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1

    :catch_3
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_9
    :try_start_1e
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x2a

    new-array v3, v3, [B

    fill-array-data v3, :array_7

    const-string v4, "4c7cb6"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    const-string v3, "55d07d"

    const/16 v4, 0x62df

    invoke-static {v0, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_5

    if-eqz v1, :cond_15

    :try_start_1f
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1

    goto :goto_7

    :cond_13
    const/4 v2, 0x2

    if-ne v1, v2, :cond_14

    const/16 v1, 0xe

    :try_start_20
    new-array v1, v1, [B

    fill-array-data v1, :array_9

    const-string v2, "80b728"

    const-wide/32 v4, 0x6870fc55

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x44

    new-array v2, v2, [B

    fill-array-data v2, :array_a

    const-string v3, "df8ced"

    const/16 v4, 0x2abc

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/dynamite/zzq;->zzg(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Z)I

    move-result v0

    goto/16 :goto_6

    :cond_14
    const/16 v1, 0xe

    new-array v1, v1, [B

    fill-array-data v1, :array_b

    const-string v2, "949f9d"

    const-wide/32 v4, -0x396f9c6

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3f

    new-array v2, v2, [B

    fill-array-data v2, :array_c

    const-string v3, "270712"

    const-wide/32 v4, -0xe030bec

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/dynamite/zzq;->zzf(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Z)I
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_20} :catch_4
    .catchall {:try_start_20 .. :try_end_20} :catchall_4

    move-result v0

    goto/16 :goto_6

    :catchall_4
    move-exception v0

    move-object v1, v7

    goto/16 :goto_8

    :catch_4
    move-exception v0

    move-object v1, v7

    goto/16 :goto_9

    :catch_5
    move-exception v0

    goto/16 :goto_3

    :catchall_5
    move-exception v0

    goto/16 :goto_8

    :catch_6
    move-exception v0

    goto/16 :goto_5

    :catch_7
    move-exception v0

    goto/16 :goto_5

    :cond_15
    move v0, v6

    goto/16 :goto_6

    :array_0
    .array-data 1
        0x17t
        0x74t
        0x5ft
        0x51t
        0x17t
        0x42t
        0x28t
        0x58t
        0x52t
        0x54t
        0x1t
        0x43t
    .end array-data

    :array_1
    .array-data 1
        0x20t
        0x52t
        0xat
        0x58t
        0x56t
        0x50t
        0x46t
        0x47t
        0xct
        0x14t
        0x5ft
        0x5bt
        0x7t
        0x57t
        0x43t
        0x59t
        0x5ct
        0x50t
        0x13t
        0x5ft
        0x6t
        0x14t
        0x45t
        0x5dt
        0x7t
        0x13t
        0x35t
        0x6t
        0x9t
        0x14t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x27t
        0x4bt
        0x58t
        0x50t
        0xet
        0x5bt
        0x17t
        0x57t
        0x7bt
        0x5et
        0x7t
        0x47t
        0xft
        0x57t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x23t
        0x52t
        0x5bt
        0x55t
        0x52t
        0x51t
        0x45t
        0x47t
        0x5dt
        0x19t
        0x45t
        0x50t
        0x11t
        0x41t
        0x5bt
        0x5ct
        0x41t
        0x50t
        0x45t
        0x41t
        0x57t
        0x54t
        0x58t
        0x41t
        0x0t
        0x13t
        0x5ft
        0x56t
        0x53t
        0x40t
        0x9t
        0x56t
        0x12t
        0x4ft
        0x52t
        0x47t
        0x16t
        0x5at
        0x5dt
        0x57t
        0xdt
        0x15t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x75t
        0x4et
        0x57t
        0x50t
        0x5ct
        0x5bt
        0x45t
        0x52t
        0x74t
        0x5et
        0x55t
        0x47t
        0x5dt
        0x52t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x7ct
        0x1dt
        0x5et
        0x4t
        0x5ct
        0x58t
        0x4ct
        0x1t
        0x7dt
        0xat
        0x55t
        0x44t
        0x54t
        0x1t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x25t
        0x0t
        0xct
        0xft
        0x3t
        0x5dt
        0x43t
        0x15t
        0xat
        0x43t
        0x14t
        0x5ct
        0x17t
        0x13t
        0xct
        0x6t
        0x10t
        0x5ct
        0x43t
        0x13t
        0x0t
        0xet
        0x9t
        0x4dt
        0x6t
        0x41t
        0x8t
        0xct
        0x2t
        0x4ct
        0xft
        0x4t
        0x45t
        0x15t
        0x3t
        0x4bt
        0x10t
        0x8t
        0xat
        0xdt
        0x48t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x72t
        0x2t
        0x5et
        0xft
        0x7t
        0x52t
        0x14t
        0x17t
        0x58t
        0x43t
        0x10t
        0x53t
        0x40t
        0x11t
        0x5et
        0x6t
        0x14t
        0x53t
        0x14t
        0x11t
        0x52t
        0xet
        0xdt
        0x42t
        0x51t
        0x43t
        0x5at
        0xct
        0x6t
        0x43t
        0x58t
        0x6t
        0x17t
        0x15t
        0x7t
        0x44t
        0x47t
        0xat
        0x58t
        0xdt
        0x58t
        0x16t
    .end array-data

    nop

    :array_8
    .array-data 1
        0x71t
        0x4ct
        0xat
        0x51t
        0x5at
        0xdt
        0x41t
        0x50t
        0x29t
        0x5ft
        0x53t
        0x11t
        0x59t
        0x50t
    .end array-data

    nop

    :array_9
    .array-data 1
        0x7ct
        0x49t
        0xct
        0x56t
        0x5ft
        0x51t
        0x4ct
        0x55t
        0x2ft
        0x58t
        0x56t
        0x4dt
        0x54t
        0x55t
    .end array-data

    nop

    :array_a
    .array-data 1
        0x2dt
        0x22t
        0x41t
        0xdt
        0x4t
        0x9t
        0xdt
        0x12t
        0x5dt
        0x43t
        0x9t
        0xbt
        0x5t
        0x2t
        0x5dt
        0x11t
        0x45t
        0x12t
        0x1t
        0x14t
        0x4bt
        0xat
        0xat
        0xat
        0x44t
        0x5bt
        0x18t
        0x51t
        0x49t
        0x44t
        0xat
        0x9t
        0x18t
        0xbt
        0xct
        0x3t
        0xct
        0x46t
        0x48t
        0x11t
        0x0t
        0x7t
        0xdt
        0x15t
        0x51t
        0xct
        0xbt
        0x44t
        0x8t
        0x7t
        0x4ct
        0x6t
        0xbt
        0x7t
        0x1dt
        0x46t
        0x55t
        0x6t
        0x4t
        0x17t
        0x11t
        0x14t
        0x5dt
        0xet
        0x0t
        0xat
        0x10t
        0x48t
    .end array-data

    :array_b
    .array-data 1
        0x7dt
        0x4dt
        0x57t
        0x7t
        0x54t
        0xdt
        0x4dt
        0x51t
        0x74t
        0x9t
        0x5dt
        0x11t
        0x55t
        0x51t
    .end array-data

    nop

    :array_c
    .array-data 1
        0x7bt
        0x73t
        0x49t
        0x59t
        0x50t
        0x5ft
        0x5bt
        0x43t
        0x55t
        0x17t
        0x5dt
        0x5dt
        0x53t
        0x53t
        0x55t
        0x45t
        0x11t
        0x44t
        0x57t
        0x45t
        0x43t
        0x5et
        0x5et
        0x5ct
        0x12t
        0xbt
        0x10t
        0x5t
        0x1dt
        0x12t
        0x54t
        0x56t
        0x5ct
        0x5bt
        0x58t
        0x5ct
        0x55t
        0x17t
        0x52t
        0x56t
        0x52t
        0x59t
        0x12t
        0x43t
        0x5ft
        0x17t
        0x56t
        0x57t
        0x46t
        0x7at
        0x5ft
        0x53t
        0x44t
        0x5et
        0x57t
        0x61t
        0x55t
        0x45t
        0x42t
        0x5bt
        0x5dt
        0x59t
        0x2t
    .end array-data
.end method

.method private static zzb(Landroid/content/Context;Ljava/lang/String;ZZ)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    :try_start_0
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzh:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-result-object v0

    const/16 v1, 0x11

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v4, "11bb3f"

    invoke-static {v1, v4, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    if-eq v8, p2, :cond_0

    const/4 v1, 0x3

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v4, "287934"

    invoke-static {v1, v4, v7, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    :cond_0
    :try_start_1
    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    const/4 v5, 0x7

    new-array v5, v5, [B

    fill-array-data v5, :array_2

    const-string v9, "e336a7"

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-static {v5, v9, v10, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const/16 v5, 0x1e

    new-array v5, v5, [B

    fill-array-data v5, :array_3

    const-string v9, "d7828c"

    const v10, 0x4ea64585

    invoke-static {v5, v9, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const/16 v4, 0x10

    new-array v4, v4, [B

    fill-array-data v4, :array_4

    const-string v5, "56e1c7"

    const-wide v10, -0x3e2076a93cc00000L    # -2.116377357E9

    invoke-static {v4, v5, v10, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-result-object v1

    if-eqz v1, :cond_9

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-lez v2, :cond_7

    const-class v0, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-enter v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v0, 0x2

    :try_start_3
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzc:Ljava/lang/String;

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    const-string v3, "61d38b"

    const-wide v4, -0x3e2761546bc00000L    # -1.652207185E9

    invoke-static {v0, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sput v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zze:I

    :cond_1
    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_6

    const-string v3, "6d65be"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v0, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_b

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v8

    :goto_0
    sput-boolean v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzd:Z

    :goto_1
    const-class v3, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->zze(Landroid/database/Cursor;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result v3

    if-eqz v3, :cond_2

    move-object v1, v6

    :cond_2
    :goto_2
    if-eqz p3, :cond_3

    if-nez v0, :cond_8

    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    return v2

    :cond_5
    move v0, v7

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_5
    const-class v2, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catch_0
    move-exception v0

    :goto_3
    :try_start_7
    instance-of v2, v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    if-eqz v2, :cond_a

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    :goto_4
    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    :cond_7
    move v0, v7

    goto :goto_2

    :cond_8
    :try_start_8
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const/16 v2, 0x31

    new-array v2, v2, [B

    fill-array-data v2, :array_7

    const-string v3, "bca924"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zzp;)V

    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_9
    const/16 v0, 0xe

    :try_start_9
    new-array v0, v0, [B

    fill-array-data v0, :array_8

    const-string v2, "2d3937"

    const-wide/32 v4, -0x786a3f2e

    invoke-static {v0, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x29

    new-array v2, v2, [B

    fill-array-data v2, :array_9

    const-string v3, "fa3c6d"

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const/16 v2, 0x35

    new-array v2, v2, [B

    fill-array-data v2, :array_a

    const-string v3, "3a7cd3"

    const-wide v4, -0x3e337280b0000000L    # -9.58070432E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zzp;)V

    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v1, v6

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v1, v6

    goto :goto_3

    :cond_a
    :try_start_a
    new-instance v2, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x19

    new-array v5, v5, [B

    fill-array-data v5, :array_b

    const-string v6, "612f49"

    const/16 v7, -0x7f13

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, v4}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/android/gms/dynamite/zzp;)V

    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catchall_4
    move-exception v0

    goto/16 :goto_4

    :cond_b
    move v0, v7

    goto/16 :goto_1

    nop

    :array_0
    .array-data 1
        0x50t
        0x41t
        0xbt
        0x3dt
        0x55t
        0x9t
        0x43t
        0x52t
        0x7t
        0x3dt
        0x40t
        0x12t
        0x50t
        0x56t
        0xbt
        0xct
        0x54t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x53t
        0x48t
        0x5et
    .end array-data

    :array_2
    .array-data 1
        0x6t
        0x5ct
        0x5dt
        0x42t
        0x4t
        0x59t
        0x11t
    .end array-data

    :array_3
    .array-data 1
        0x7t
        0x58t
        0x55t
        0x1ct
        0x5ft
        0xct
        0xbt
        0x50t
        0x54t
        0x57t
        0x16t
        0x2t
        0xat
        0x53t
        0x4at
        0x5dt
        0x51t
        0x7t
        0x4at
        0x50t
        0x55t
        0x41t
        0x16t
        0x0t
        0xct
        0x5et
        0x55t
        0x57t
        0x4at
        0x2t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x47t
        0x53t
        0x14t
        0x44t
        0x6t
        0x44t
        0x41t
        0x65t
        0x11t
        0x50t
        0x11t
        0x43t
        0x61t
        0x5ft
        0x8t
        0x54t
    .end array-data

    :array_5
    .array-data 1
        0x5at
        0x5et
        0x5t
        0x57t
        0x5dt
        0x10t
        0x60t
        0x54t
        0x16t
        0x40t
        0x51t
        0xdt
        0x58t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x52t
        0xdt
        0x45t
        0x54t
        0x0t
        0x9t
        0x53t
        0x37t
        0x42t
        0x54t
        0xct
        0x1t
        0x57t
        0x8t
        0x59t
        0x5bt
        0x7t
        0x21t
        0x4ft
        0xat
        0x57t
        0x58t
        0xbt
        0x11t
        0x53t
        0x28t
        0x59t
        0x54t
        0x6t
        0x0t
        0x44t
        0x56t
    .end array-data

    :array_7
    .array-data 1
        0x4t
        0xct
        0x13t
        0x5at
        0x5bt
        0x5at
        0x5t
        0x43t
        0x7t
        0x58t
        0x5et
        0x58t
        0x0t
        0x2t
        0x2t
        0x52t
        0x12t
        0x40t
        0xdt
        0x43t
        0x2t
        0x56t
        0x5ct
        0x40t
        0x3t
        0xat
        0xft
        0x5ct
        0x40t
        0x14t
        0x26t
        0x1at
        0xft
        0x58t
        0x5ft
        0x5dt
        0x16t
        0x6t
        0x2dt
        0x56t
        0x53t
        0x50t
        0x7t
        0x11t
        0x41t
        0x50t
        0x5ft
        0x44t
        0xet
    .end array-data

    nop

    :array_8
    .array-data 1
        0x76t
        0x1dt
        0x5dt
        0x58t
        0x5et
        0x5et
        0x46t
        0x1t
        0x7et
        0x56t
        0x57t
        0x42t
        0x5et
        0x1t
    .end array-data

    nop

    :array_9
    .array-data 1
        0x20t
        0x0t
        0x5at
        0xft
        0x53t
        0x0t
        0x46t
        0x15t
        0x5ct
        0x43t
        0x44t
        0x1t
        0x12t
        0x13t
        0x5at
        0x6t
        0x40t
        0x1t
        0x46t
        0x13t
        0x56t
        0xet
        0x59t
        0x10t
        0x3t
        0x41t
        0x5et
        0xct
        0x52t
        0x11t
        0xat
        0x4t
        0x13t
        0x15t
        0x53t
        0x16t
        0x15t
        0x8t
        0x5ct
        0xdt
        0x18t
    .end array-data

    nop

    :array_a
    .array-data 1
        0x75t
        0x0t
        0x5et
        0xft
        0x1t
        0x57t
        0x13t
        0x15t
        0x58t
        0x43t
        0x7t
        0x5ct
        0x5dt
        0xft
        0x52t
        0x0t
        0x10t
        0x13t
        0x47t
        0xet
        0x17t
        0x7t
        0x1dt
        0x5dt
        0x52t
        0xct
        0x5et
        0x17t
        0x1t
        0x13t
        0x5et
        0xet
        0x53t
        0x16t
        0x8t
        0x56t
        0x13t
        0x22t
        0x58t
        0xdt
        0x10t
        0x56t
        0x5dt
        0x15t
        0x65t
        0x6t
        0x17t
        0x5ct
        0x5ft
        0x17t
        0x52t
        0x11t
        0x4at
    .end array-data

    nop

    :array_b
    .array-data 1
        0x60t
        0x3t
        0x12t
        0x10t
        0x51t
        0x4bt
        0x45t
        0x58t
        0x5dt
        0x8t
        0x14t
        0x5at
        0x5et
        0x54t
        0x51t
        0xdt
        0x14t
        0x5ft
        0x57t
        0x58t
        0x5et
        0x3t
        0x50t
        0x3t
        0x16t
    .end array-data
.end method

.method private static zzc(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;
    .locals 4

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "78c5d2"

    const v2, -0x31d0a9b8

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1a

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "a54eda"

    const v3, 0x4e7fed46

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule;

    invoke-direct {v0, p0}, Lcom/google/android/gms/dynamite/DynamiteModule;-><init>(Landroid/content/Context;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        0x73t
        0x41t
        0xdt
        0x54t
        0x9t
        0x5bt
        0x43t
        0x5dt
        0x2et
        0x5at
        0x0t
        0x47t
        0x5bt
        0x5dt
    .end array-data

    nop

    :array_1
    .array-data 1
        0x32t
        0x50t
        0x58t
        0x0t
        0x7t
        0x15t
        0x4t
        0x51t
        0x14t
        0x9t
        0xbt
        0x2t
        0x0t
        0x59t
        0x14t
        0x13t
        0x1t
        0x13t
        0x12t
        0x5ct
        0x5bt
        0xbt
        0x44t
        0xet
        0x7t
        0x15t
    .end array-data
.end method

.method private static zzd(Ljava/lang/ClassLoader;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;
        }
    .end annotation

    const/4 v4, 0x0

    const/16 v2, 0x36

    :try_start_0
    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "ad60b4"

    const v5, 0x4ece26e3

    invoke-static {v2, v3, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    if-nez v2, :cond_0

    move-object v2, v4

    :goto_0
    sput-object v2, Lcom/google/android/gms/dynamite/DynamiteModule;->zzl:Lcom/google/android/gms/dynamite/zzr;

    return-void

    :cond_0
    const/16 v3, 0x31

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v5, "046daa"

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    instance-of v5, v3, Lcom/google/android/gms/dynamite/zzr;

    if-eqz v5, :cond_1

    move-object v0, v3

    check-cast v0, Lcom/google/android/gms/dynamite/zzr;

    move-object v2, v0

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/google/android/gms/dynamite/zzr;

    invoke-direct {v3, v2}, Lcom/google/android/gms/dynamite/zzr;-><init>(Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4

    move-object v2, v3

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_1
    new-instance v3, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const/16 v5, 0x25

    new-array v5, v5, [B

    fill-array-data v5, :array_2

    const-string v6, "0024d6"

    const-wide/32 v8, 0x17bd5e9e

    invoke-static {v5, v6, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, v2, v4}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/android/gms/dynamite/zzp;)V

    throw v3

    :catch_1
    move-exception v2

    goto :goto_1

    :catch_2
    move-exception v2

    goto :goto_1

    :catch_3
    move-exception v2

    goto :goto_1

    :catch_4
    move-exception v2

    goto :goto_1

    :array_0
    .array-data 1
        0x2t
        0xbt
        0x5bt
        0x1et
        0x5t
        0x5bt
        0xet
        0x3t
        0x5at
        0x55t
        0x4ct
        0x55t
        0xft
        0x0t
        0x44t
        0x5ft
        0xbt
        0x50t
        0x4ft
        0x3t
        0x5bt
        0x43t
        0x4ct
        0x50t
        0x18t
        0xat
        0x57t
        0x5dt
        0xbt
        0x40t
        0x4t
        0x8t
        0x59t
        0x51t
        0x6t
        0x51t
        0x13t
        0x4at
        0x72t
        0x49t
        0xct
        0x55t
        0xct
        0xdt
        0x42t
        0x55t
        0x2et
        0x5bt
        0x0t
        0x0t
        0x53t
        0x42t
        0x34t
        0x6t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x53t
        0x5bt
        0x5bt
        0x4at
        0x6t
        0xet
        0x5ft
        0x53t
        0x5at
        0x1t
        0x4ft
        0x0t
        0x5et
        0x50t
        0x44t
        0xbt
        0x8t
        0x5t
        0x1et
        0x53t
        0x5bt
        0x17t
        0x4ft
        0x5t
        0x49t
        0x5at
        0x57t
        0x9t
        0x8t
        0x15t
        0x55t
        0x1at
        0x7ft
        0x20t
        0x18t
        0xft
        0x51t
        0x59t
        0x5ft
        0x10t
        0x4t
        0x2dt
        0x5ft
        0x55t
        0x52t
        0x1t
        0x13t
        0x37t
        0x2t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x76t
        0x51t
        0x5bt
        0x58t
        0x1t
        0x52t
        0x10t
        0x44t
        0x5dt
        0x14t
        0xdt
        0x58t
        0x43t
        0x44t
        0x53t
        0x5at
        0x10t
        0x5ft
        0x51t
        0x44t
        0x57t
        0x14t
        0x0t
        0x4ft
        0x5et
        0x51t
        0x5ft
        0x5dt
        0x10t
        0x53t
        0x10t
        0x5ct
        0x5dt
        0x55t
        0x0t
        0x53t
        0x42t
    .end array-data
.end method

.method private static zze(Landroid/database/Cursor;)Z
    .locals 2

    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzg:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/dynamite/zzn;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/dynamite/zzn;->zza:Landroid/database/Cursor;

    if-nez v1, :cond_0

    iput-object p0, v0, Lcom/google/android/gms/dynamite/zzn;->zza:Landroid/database/Cursor;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static zzf(Landroid/content/Context;)Z
    .locals 8

    const/16 v5, 0xe

    const/4 v0, 0x0

    const/4 v1, 0x1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v3, Lcom/google/android/gms/dynamite/DynamiteModule;->zzf:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/google/android/gms/dynamite/DynamiteModule;->zzf:Ljava/lang/Boolean;

    if-nez v2, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x1e

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "73bf79"

    const-wide v6, 0x41c077eb41800000L    # 5.52588931E8

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object v3

    const v4, 0x989680

    invoke-virtual {v3, p0, v4}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->isGooglePlayServicesAvailable(Landroid/content/Context;I)I

    move-result v3

    if-nez v3, :cond_2

    if-eqz v2, :cond_2

    const/16 v3, 0x16

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "278a18"

    invoke-static {v3, v4, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzf:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v3, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_4

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x81

    if-nez v2, :cond_4

    new-array v2, v5, [B

    fill-array-data v2, :array_2

    const-string v3, "3d4f24"

    invoke-static {v2, v3, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x28

    new-array v3, v3, [B

    fill-array-data v3, :array_3

    const-string v4, "0afff5"

    const-wide v6, -0x3e35476ea3800000L    # -8.96606905E8

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzd:Z

    move v1, v0

    :goto_1
    if-nez v1, :cond_0

    new-array v0, v5, [B

    fill-array-data v0, :array_4

    const-string v2, "be7d00"

    const v3, -0x33c70f6f    # -4.8480836E7f

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2d

    new-array v2, v2, [B

    fill-array-data v2, :array_5

    const-string v3, "00e368"

    const-wide v4, 0x41c427f356000000L    # 6.76325036E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    move v1, v0

    goto :goto_1

    :cond_4
    move v1, v0

    goto :goto_1

    nop

    :array_0
    .array-data 1
        0x54t
        0x5ct
        0xft
        0x48t
        0x50t
        0x56t
        0x58t
        0x54t
        0xet
        0x3t
        0x19t
        0x58t
        0x59t
        0x57t
        0x10t
        0x9t
        0x5et
        0x5dt
        0x19t
        0x54t
        0xft
        0x15t
        0x19t
        0x5at
        0x5ft
        0x5at
        0xft
        0x3t
        0x45t
        0x58t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x51t
        0x58t
        0x55t
        0x4ft
        0x56t
        0x57t
        0x5dt
        0x50t
        0x54t
        0x4t
        0x1ft
        0x59t
        0x5ct
        0x53t
        0x4at
        0xet
        0x58t
        0x5ct
        0x1ct
        0x50t
        0x55t
        0x12t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x77t
        0x1dt
        0x5at
        0x7t
        0x5ft
        0x5dt
        0x47t
        0x1t
        0x79t
        0x9t
        0x56t
        0x41t
        0x5ft
        0x1t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x7et
        0xet
        0x8t
        0x4bt
        0x15t
        0x4ct
        0x43t
        0x15t
        0x3t
        0xbt
        0x4bt
        0x5ct
        0x5dt
        0x0t
        0x1t
        0x3t
        0x46t
        0x72t
        0x5dt
        0x12t
        0x25t
        0x9t
        0x14t
        0x50t
        0x10t
        0x20t
        0x36t
        0x2dt
        0x4at
        0x15t
        0x56t
        0xet
        0x14t
        0x5t
        0xft
        0x5bt
        0x57t
        0x41t
        0x30t
        0x57t
    .end array-data

    :array_4
    .array-data 1
        0x26t
        0x1ct
        0x59t
        0x5t
        0x5dt
        0x59t
        0x16t
        0x0t
        0x7at
        0xbt
        0x54t
        0x45t
        0xet
        0x0t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x79t
        0x5et
        0x13t
        0x52t
        0x5at
        0x51t
        0x54t
        0x10t
        0x22t
        0x5et
        0x45t
        0x7bt
        0x5ft
        0x42t
        0x0t
        0x13t
        0x77t
        0x68t
        0x7bt
        0x1ct
        0x45t
        0x41t
        0x53t
        0x55t
        0x5ft
        0x44t
        0x0t
        0x13t
        0x5at
        0x57t
        0x51t
        0x54t
        0xct
        0x5dt
        0x51t
        0x18t
        0x54t
        0x59t
        0x16t
        0x52t
        0x54t
        0x54t
        0x55t
        0x54t
        0x4bt
    .end array-data
.end method

.method private static zzg(Landroid/content/Context;)Lcom/google/android/gms/dynamite/zzq;
    .locals 10

    const/4 v4, 0x0

    const-class v2, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-enter v2

    :try_start_0
    sget-object v2, Lcom/google/android/gms/dynamite/DynamiteModule;->zzk:Lcom/google/android/gms/dynamite/zzq;

    if-eqz v2, :cond_0

    const-class v3, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object v2

    :cond_0
    const/16 v2, 0x16

    :try_start_1
    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "b65edb"

    const-wide/32 v6, 0x67bd174

    invoke-static {v2, v3, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/16 v3, 0x3b

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v5, "c26bf2"

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v3, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    if-nez v2, :cond_1

    move-object v2, v4

    :goto_1
    if-eqz v2, :cond_3

    sput-object v2, Lcom/google/android/gms/dynamite/DynamiteModule;->zzk:Lcom/google/android/gms/dynamite/zzq;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-class v3, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    const-class v3, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_1
    const/16 v3, 0x2f

    :try_start_3
    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v5, "694333"

    const/4 v6, 0x1

    invoke-static {v3, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    instance-of v5, v3, Lcom/google/android/gms/dynamite/zzq;

    if-eqz v5, :cond_2

    move-object v0, v3

    check-cast v0, Lcom/google/android/gms/dynamite/zzq;

    move-object v2, v0

    goto :goto_1

    :cond_2
    new-instance v3, Lcom/google/android/gms/dynamite/zzq;

    invoke-direct {v3, v2}, Lcom/google/android/gms/dynamite/zzq;-><init>(Landroid/os/IBinder;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v2, v3

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x2d

    new-array v5, v5, [B

    fill-array-data v5, :array_3

    const-string v6, "f27c44"

    const-wide v8, -0x3e29bf8a94800000L    # -1.493292462E9

    invoke-static {v5, v6, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xe

    new-array v2, v2, [B

    fill-array-data v2, :array_4

    const-string v5, "7539c2"

    const/4 v6, 0x1

    invoke-static {v2, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-class v2, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v2, v4

    goto/16 :goto_0

    nop

    :array_0
    .array-data 1
        0x1t
        0x59t
        0x58t
        0x4bt
        0x3t
        0xdt
        0xdt
        0x51t
        0x59t
        0x0t
        0x4at
        0x3t
        0xct
        0x52t
        0x47t
        0xat
        0xdt
        0x6t
        0x4ct
        0x51t
        0x58t
        0x16t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x0t
        0x5dt
        0x5bt
        0x4ct
        0x1t
        0x5dt
        0xct
        0x55t
        0x5at
        0x7t
        0x48t
        0x53t
        0xdt
        0x56t
        0x44t
        0xdt
        0xft
        0x56t
        0x4dt
        0x55t
        0x5bt
        0x11t
        0x48t
        0x51t
        0xbt
        0x5bt
        0x5bt
        0x7t
        0x14t
        0x53t
        0x4dt
        0x51t
        0x59t
        0xct
        0x12t
        0x53t
        0xat
        0x5ct
        0x53t
        0x10t
        0x48t
        0x76t
        0x1at
        0x5ct
        0x57t
        0xft
        0xft
        0x46t
        0x6t
        0x7et
        0x59t
        0x3t
        0x2t
        0x57t
        0x11t
        0x7bt
        0x5bt
        0x12t
        0xat
    .end array-data

    :array_2
    .array-data 1
        0x55t
        0x56t
        0x59t
        0x1dt
        0x54t
        0x5ct
        0x59t
        0x5et
        0x58t
        0x56t
        0x1dt
        0x52t
        0x58t
        0x5dt
        0x46t
        0x5ct
        0x5at
        0x57t
        0x18t
        0x5et
        0x59t
        0x40t
        0x1dt
        0x57t
        0x4ft
        0x57t
        0x55t
        0x5et
        0x5at
        0x47t
        0x53t
        0x17t
        0x7dt
        0x77t
        0x4at
        0x5dt
        0x57t
        0x54t
        0x5dt
        0x47t
        0x56t
        0x7ft
        0x59t
        0x58t
        0x50t
        0x56t
        0x41t
    .end array-data

    :array_3
    .array-data 1
        0x20t
        0x53t
        0x5et
        0xft
        0x51t
        0x50t
        0x46t
        0x46t
        0x58t
        0x43t
        0x58t
        0x5bt
        0x7t
        0x56t
        0x17t
        0x2at
        0x70t
        0x4dt
        0x8t
        0x53t
        0x5at
        0xat
        0x40t
        0x51t
        0x2at
        0x5dt
        0x56t
        0x7t
        0x51t
        0x46t
        0x46t
        0x54t
        0x45t
        0xct
        0x59t
        0x14t
        0x21t
        0x5ft
        0x44t
        0x20t
        0x5bt
        0x46t
        0x3t
        0x8t
        0x17t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x73t
        0x4ct
        0x5dt
        0x58t
        0xet
        0x5bt
        0x43t
        0x50t
        0x7et
        0x56t
        0x7t
        0x47t
        0x5bt
        0x50t
    .end array-data
.end method


# virtual methods
.method public getModuleContext()Landroid/content/Context;
    .locals 1
    .annotation runtime Lcom/google/errorprone/annotations/ResultIgnorabilityUnspecified;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzj:Landroid/content/Context;

    return-object v0
.end method

.method public instantiate(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;
        }
    .end annotation

    const/4 v4, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzj:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    return-object v0

    :catch_0
    move-exception v0

    :goto_0
    new-instance v1, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const/16 v2, 0x24

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "b99c02"

    invoke-static {v2, v3, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/android/gms/dynamite/zzp;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x24t
        0x58t
        0x50t
        0xft
        0x55t
        0x56t
        0x42t
        0x4dt
        0x56t
        0x43t
        0x59t
        0x5ct
        0x11t
        0x4dt
        0x58t
        0xdt
        0x44t
        0x5bt
        0x3t
        0x4dt
        0x5ct
        0x43t
        0x5dt
        0x5dt
        0x6t
        0x4ct
        0x55t
        0x6t
        0x10t
        0x51t
        0xet
        0x58t
        0x4at
        0x10t
        0xat
        0x12t
    .end array-data
.end method
