.class public final Lcom/google/android/gms/common/zzs;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/common/zzs;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Lcom/google/android/gms/common/zzj;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final zzc:Z

.field private final zzd:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/zzt;

    invoke-direct {v0}, Lcom/google/android/gms/common/zzt;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/zzs;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/os/IBinder;ZZ)V
    .locals 7
    .param p2    # Landroid/os/IBinder;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v1, 0x0

    const/16 v6, 0x1c

    const/16 v3, 0x17

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/zzs;->zza:Ljava/lang/String;

    if-nez p2, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/common/zzs;->zzb:Lcom/google/android/gms/common/zzj;

    iput-boolean p3, p0, Lcom/google/android/gms/common/zzs;->zzc:Z

    iput-boolean p4, p0, Lcom/google/android/gms/common/zzs;->zzd:Z

    return-void

    :cond_0
    :try_start_0
    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzz;->zzg(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/zzaa;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/internal/zzaa;->zzd()Lcom/google/android/gms/dynamic/IObjectWrapper;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-nez v0, :cond_1

    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_2

    new-instance v0, Lcom/google/android/gms/common/zzk;

    invoke-direct {v0, v2}, Lcom/google/android/gms/common/zzk;-><init>([B)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    move-object v2, v0

    goto :goto_1

    :cond_2
    new-array v0, v3, [B

    fill-array-data v0, :array_0

    const-string v2, "da5295"

    const/16 v3, -0x7f25

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v6, [B

    fill-array-data v2, :array_1

    const-string v3, "9cb44a"

    const v4, -0x31375932

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    new-array v2, v3, [B

    fill-array-data v2, :array_2

    const-string v3, "d08774"

    const-wide v4, 0x41b78f3d42000000L    # 3.95263298E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [B

    fill-array-data v3, :array_3

    const-string v4, "0cb785"

    const v5, 0x4eb559df

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x23t
        0xet
        0x5at
        0x55t
        0x55t
        0x50t
        0x27t
        0x4t
        0x47t
        0x46t
        0x50t
        0x53t
        0xdt
        0x2t
        0x54t
        0x46t
        0x5ct
        0x46t
        0x35t
        0x14t
        0x50t
        0x40t
        0x40t
    .end array-data

    :array_1
    .array-data 1
        0x7at
        0xct
        0x17t
        0x58t
        0x50t
        0x41t
        0x57t
        0xct
        0x16t
        0x14t
        0x41t
        0xft
        0x4et
        0x11t
        0x3t
        0x44t
        0x14t
        0x2t
        0x5ct
        0x11t
        0x16t
        0x5dt
        0x52t
        0x8t
        0x5at
        0x2t
        0x16t
        0x51t
    .end array-data

    :array_2
    .array-data 1
        0x23t
        0x5ft
        0x57t
        0x50t
        0x5bt
        0x51t
        0x27t
        0x55t
        0x4at
        0x43t
        0x5et
        0x52t
        0xdt
        0x53t
        0x59t
        0x43t
        0x52t
        0x47t
        0x35t
        0x45t
        0x5dt
        0x45t
        0x4et
    .end array-data

    :array_3
    .array-data 1
        0x73t
        0xct
        0x17t
        0x5bt
        0x5ct
        0x15t
        0x5et
        0xct
        0x16t
        0x17t
        0x4dt
        0x5bt
        0x47t
        0x11t
        0x3t
        0x47t
        0x18t
        0x56t
        0x55t
        0x11t
        0x16t
        0x5et
        0x5et
        0x5ct
        0x53t
        0x2t
        0x16t
        0x52t
    .end array-data
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/common/zzj;ZZ)V
    .locals 0
    .param p2    # Lcom/google/android/gms/common/zzj;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/zzs;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/common/zzs;->zzb:Lcom/google/android/gms/common/zzj;

    iput-boolean p3, p0, Lcom/google/android/gms/common/zzs;->zzc:Z

    iput-boolean p4, p0, Lcom/google/android/gms/common/zzs;->zzd:Z

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v1

    iget-object v0, p0, Lcom/google/android/gms/common/zzs;->zza:Ljava/lang/String;

    invoke-static {p1, v5, v0, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/gms/common/zzs;->zzb:Lcom/google/android/gms/common/zzj;

    if-nez v0, :cond_0

    const/16 v0, 0x17

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v2, "7f0e78"

    const v3, 0x4c5a8710    # 5.7285696E7f

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1a

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "798925"

    invoke-static {v2, v3, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_0
    const/4 v2, 0x2

    invoke-static {p1, v2, v0, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v0, 0x3

    iget-boolean v2, p0, Lcom/google/android/gms/common/zzs;->zzc:Z

    invoke-static {p1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/4 v0, 0x4

    iget-boolean v2, p0, Lcom/google/android/gms/common/zzs;->zzd:Z

    invoke-static {p1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void

    :array_0
    .array-data 1
        0x70t
        0x9t
        0x5ft
        0x2t
        0x5bt
        0x5dt
        0x74t
        0x3t
        0x42t
        0x11t
        0x5et
        0x5et
        0x5et
        0x5t
        0x51t
        0x11t
        0x52t
        0x4bt
        0x66t
        0x13t
        0x55t
        0x17t
        0x4et
    .end array-data

    :array_1
    .array-data 1
        0x54t
        0x5ct
        0x4at
        0x4dt
        0x5bt
        0x53t
        0x5et
        0x5at
        0x59t
        0x4dt
        0x57t
        0x15t
        0x55t
        0x50t
        0x56t
        0x5dt
        0x57t
        0x47t
        0x17t
        0x50t
        0x4bt
        0x19t
        0x5ct
        0x40t
        0x5bt
        0x55t
    .end array-data
.end method
