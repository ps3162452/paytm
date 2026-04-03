.class public final Lcom/google/android/gms/common/api/internal/GoogleServices;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final zza:Ljava/lang/Object;

.field private static zzb:Lcom/google/android/gms/common/api/internal/GoogleServices;


# instance fields
.field private final zzc:Ljava/lang/String;

.field private final zzd:Lcom/google/android/gms/common/api/Status;

.field private final zze:Z

.field private final zzf:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/api/internal/GoogleServices;->zza:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/16 v3, 0x1d

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "cabd83"

    const/16 v5, 0x5610

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x7

    new-array v4, v4, [B

    fill-array-data v4, :array_1

    const-string v5, "9fa91c"

    invoke-static {v4, v5, v2, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/google/android/gms/common/R$string;->common_google_play_services_unknown_issue:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-eqz v0, :cond_1

    move v3, v2

    :goto_0
    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v3, p0, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzf:Z

    :goto_2
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/GoogleServices;->zze:Z

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzah;->zzb(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/common/internal/StringResourceValueReader;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/internal/StringResourceValueReader;-><init>(Landroid/content/Context;)V

    const/16 v3, 0xd

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v4, "c3e224"

    invoke-static {v3, v4, v2, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/StringResourceValueReader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0xa

    const/16 v3, 0x4f

    new-array v3, v3, [B

    fill-array-data v3, :array_3

    const-string v4, "d8bf42"

    invoke-static {v3, v4, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzd:Lcom/google/android/gms/common/api/Status;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzc:Ljava/lang/String;

    :goto_3
    return-void

    :cond_1
    move v3, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    iput-boolean v2, p0, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzf:Z

    move v0, v1

    goto :goto_2

    :cond_4
    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzc:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/common/api/Status;->RESULT_SUCCESS:Lcom/google/android/gms/common/api/Status;

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzd:Lcom/google/android/gms/common/api/Status;

    goto :goto_3

    nop

    :array_0
    .array-data 1
        0x4t
        0xet
        0xdt
        0x3t
        0x54t
        0x56t
        0x3ct
        0x0t
        0x12t
        0x14t
        0x67t
        0x5et
        0x6t
        0x0t
        0x11t
        0x11t
        0x4at
        0x56t
        0xet
        0x4t
        0xct
        0x10t
        0x67t
        0x56t
        0xdt
        0x0t
        0x0t
        0x8t
        0x5dt
    .end array-data

    nop

    :array_1
    .array-data 1
        0x50t
        0x8t
        0x15t
        0x5ct
        0x56t
        0x6t
        0x4bt
    .end array-data

    :array_2
    .array-data 1
        0x4t
        0x5ct
        0xat
        0x55t
        0x5et
        0x51t
        0x3ct
        0x52t
        0x15t
        0x42t
        0x6dt
        0x5dt
        0x7t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x29t
        0x51t
        0x11t
        0x15t
        0x5dt
        0x5ct
        0x3t
        0x18t
        0x5t
        0x9t
        0x5bt
        0x55t
        0x8t
        0x5dt
        0x42t
        0x7t
        0x44t
        0x42t
        0x44t
        0x51t
        0x6t
        0x46t
        0x42t
        0x53t
        0x8t
        0x4dt
        0x7t
        0x46t
        0x52t
        0x40t
        0xbt
        0x55t
        0x42t
        0x0t
        0x46t
        0x5dt
        0x9t
        0x18t
        0x11t
        0x12t
        0x46t
        0x5bt
        0xat
        0x5ft
        0x42t
        0x14t
        0x51t
        0x41t
        0xbt
        0x4dt
        0x10t
        0x5t
        0x51t
        0x41t
        0x44t
        0x4ft
        0xbt
        0x12t
        0x5ct
        0x12t
        0xat
        0x59t
        0xft
        0x3t
        0x14t
        0x55t
        0xbt
        0x57t
        0x5t
        0xat
        0x51t
        0x6dt
        0x5t
        0x48t
        0x12t
        0x39t
        0x5dt
        0x56t
        0x4at
    .end array-data
.end method

.method constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzc:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/common/api/Status;->RESULT_SUCCESS:Lcom/google/android/gms/common/api/Status;

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzd:Lcom/google/android/gms/common/api/Status;

    iput-boolean p2, p0, Lcom/google/android/gms/common/api/internal/GoogleServices;->zze:Z

    xor-int/lit8 v0, p2, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzf:Z

    return-void
.end method

.method private static checkInitialized(Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/GoogleServices;
    .locals 8

    sget-object v1, Lcom/google/android/gms/common/api/internal/GoogleServices;->zza:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzb:Lcom/google/android/gms/common/api/internal/GoogleServices;

    if-eqz v0, :cond_0

    monitor-exit v1

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x21

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "06c8ab"

    const-wide v6, 0x41db026da0000000L    # 1.812575872E9

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    new-array v3, v3, [B

    const/4 v4, 0x0

    const/16 v5, 0x4b

    aput-byte v5, v3, v4

    const-string v4, "ecb62d"

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :array_0
    .array-data 1
        0x79t
        0x58t
        0xat
        0x4ct
        0x8t
        0x3t
        0x5ct
        0x5ft
        0x19t
        0x5dt
        0x41t
        0xft
        0x45t
        0x45t
        0x17t
        0x18t
        0x3t
        0x7t
        0x10t
        0x55t
        0x2t
        0x54t
        0xdt
        0x7t
        0x54t
        0x16t
        0x1t
        0x5dt
        0x7t
        0xdt
        0x42t
        0x53t
        0x43t
    .end array-data
.end method

.method static clearInstanceForTest()V
    .locals 2

    sget-object v1, Lcom/google/android/gms/common/api/internal/GoogleServices;->zza:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzb:Lcom/google/android/gms/common/api/internal/GoogleServices;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getGoogleAppId()Ljava/lang/String;
    .locals 3

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "2d568e"

    const v2, 0x4e4f9538    # 8.706657E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/GoogleServices;->checkInitialized(Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/GoogleServices;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzc:Ljava/lang/String;

    return-object v0

    nop

    :array_0
    .array-data 1
        0x55t
        0x1t
        0x41t
        0x71t
        0x57t
        0xat
        0x55t
        0x8t
        0x50t
        0x77t
        0x48t
        0x15t
        0x7bt
        0x0t
    .end array-data
.end method

.method public static initialize(Landroid/content/Context;)Lcom/google/android/gms/common/api/Status;
    .locals 3

    const/16 v0, 0x19

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "c56f10"

    const v2, -0x32572959

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/gms/common/api/internal/GoogleServices;->zza:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzb:Lcom/google/android/gms/common/api/internal/GoogleServices;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/internal/GoogleServices;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/GoogleServices;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzb:Lcom/google/android/gms/common/api/internal/GoogleServices;

    :cond_0
    sget-object v0, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzb:Lcom/google/android/gms/common/api/internal/GoogleServices;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzd:Lcom/google/android/gms/common/api/Status;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :array_0
    .array-data 1
        0x20t
        0x5at
        0x58t
        0x12t
        0x54t
        0x48t
        0x17t
        0x15t
        0x5bt
        0x13t
        0x42t
        0x44t
        0x43t
        0x5bt
        0x59t
        0x12t
        0x11t
        0x52t
        0x6t
        0x15t
        0x58t
        0x13t
        0x5dt
        0x5ct
        0x4dt
    .end array-data
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;Z)Lcom/google/android/gms/common/api/Status;
    .locals 4
    .annotation runtime Lcom/google/errorprone/annotations/ResultIgnorabilityUnspecified;
    .end annotation

    const/16 v0, 0x19

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "d62051"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x18

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "e2edc3"

    const v2, 0x4eb10231

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/common/api/internal/GoogleServices;->zza:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzb:Lcom/google/android/gms/common/api/internal/GoogleServices;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/GoogleServices;->checkGoogleAppId(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/common/api/internal/GoogleServices;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/common/api/internal/GoogleServices;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzb:Lcom/google/android/gms/common/api/internal/GoogleServices;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzd:Lcom/google/android/gms/common/api/Status;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :array_0
    .array-data 1
        0x27t
        0x59t
        0x5ct
        0x44t
        0x50t
        0x49t
        0x10t
        0x16t
        0x5ft
        0x45t
        0x46t
        0x45t
        0x44t
        0x58t
        0x5dt
        0x44t
        0x15t
        0x53t
        0x1t
        0x16t
        0x5ct
        0x45t
        0x59t
        0x5dt
        0x4at
    .end array-data

    nop

    :array_1
    .array-data 1
        0x24t
        0x42t
        0x15t
        0x44t
        0x2at
        0x77t
        0x45t
        0x5ft
        0x10t
        0x17t
        0x17t
        0x13t
        0x7t
        0x57t
        0x45t
        0xat
        0xct
        0x5dt
        0x0t
        0x5ft
        0x15t
        0x10t
        0x1at
        0x1dt
    .end array-data
.end method

.method public static isMeasurementEnabled()Z
    .locals 3

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "72cee3"

    const/16 v2, -0x34f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/GoogleServices;->checkInitialized(Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/GoogleServices;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzd:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v0, v0, Lcom/google/android/gms/common/api/internal/GoogleServices;->zze:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x5et
        0x41t
        0x2et
        0x0t
        0x4t
        0x40t
        0x42t
        0x40t
        0x6t
        0x8t
        0x0t
        0x5dt
        0x43t
        0x77t
        0xdt
        0x4t
        0x7t
        0x5ft
        0x52t
        0x56t
    .end array-data
.end method

.method public static isMeasurementExplicitlyDisabled()Z
    .locals 3

    const/16 v0, 0x1f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "4e2a18"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/GoogleServices;->checkInitialized(Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/GoogleServices;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzf:Z

    return v0

    nop

    :array_0
    .array-data 1
        0x5dt
        0x16t
        0x7ft
        0x4t
        0x50t
        0x4bt
        0x41t
        0x17t
        0x57t
        0xct
        0x54t
        0x56t
        0x40t
        0x20t
        0x4at
        0x11t
        0x5dt
        0x51t
        0x57t
        0xct
        0x46t
        0xdt
        0x48t
        0x7ct
        0x5dt
        0x16t
        0x53t
        0x3t
        0x5dt
        0x5dt
        0x50t
    .end array-data
.end method


# virtual methods
.method checkGoogleAppId(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzc:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleServices;->zzc:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x5f

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "075668"

    invoke-static {v2, v3, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v2, "7585d8"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0xa

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/common/api/Status;->RESULT_SUCCESS:Lcom/google/android/gms/common/api/Status;

    goto :goto_0

    :array_0
    .array-data 1
        0x79t
        0x59t
        0x5ct
        0x42t
        0x5ft
        0x59t
        0x5ct
        0x5et
        0x4ft
        0x53t
        0x16t
        0x4ft
        0x51t
        0x44t
        0x15t
        0x55t
        0x57t
        0x54t
        0x5ct
        0x52t
        0x51t
        0x16t
        0x41t
        0x51t
        0x44t
        0x5ft
        0x15t
        0x42t
        0x41t
        0x57t
        0x10t
        0x53t
        0x5ct
        0x50t
        0x50t
        0x5dt
        0x42t
        0x52t
        0x5bt
        0x42t
        0x16t
        0x7ft
        0x5ft
        0x58t
        0x52t
        0x5at
        0x53t
        0x18t
        0x71t
        0x47t
        0x45t
        0x16t
        0x7ft
        0x7ct
        0x43t
        0x19t
        0x15t
        0x16t
        0x79t
        0x56t
        0x5ct
        0x4et
        0x15t
        0x42t
        0x5et
        0x5dt
        0x10t
        0x51t
        0x5ct
        0x44t
        0x45t
        0x4ct
        0x10t
        0x56t
        0x45t
        0x46t
        0x16t
        0x71t
        0x74t
        0x17t
        0x42t
        0x5ft
        0x5at
        0x54t
        0x10t
        0x55t
        0x50t
        0x16t
        0x43t
        0x4bt
        0x55t
        0x53t
        0xft
        0x16t
        0x11t
    .end array-data

    :array_1
    .array-data 1
        0x10t
        0x1bt
    .end array-data
.end method
