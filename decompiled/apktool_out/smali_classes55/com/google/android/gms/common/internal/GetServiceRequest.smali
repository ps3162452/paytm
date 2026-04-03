.class public Lcom/google/android/gms/common/internal/GetServiceRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/common/internal/GetServiceRequest;",
            ">;"
        }
    .end annotation
.end field

.field static final zza:[Lcom/google/android/gms/common/api/Scope;

.field static final zzb:[Lcom/google/android/gms/common/Feature;


# instance fields
.field final zzc:I

.field final zzd:I

.field final zze:I

.field zzf:Ljava/lang/String;

.field zzg:Landroid/os/IBinder;

.field zzh:[Lcom/google/android/gms/common/api/Scope;

.field zzi:Landroid/os/Bundle;

.field zzj:Landroid/accounts/Account;

.field zzk:[Lcom/google/android/gms/common/Feature;

.field zzl:[Lcom/google/android/gms/common/Feature;

.field final zzm:Z

.field final zzn:I

.field zzo:Z

.field private final zzp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/google/android/gms/common/internal/zzn;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/zzn;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/GetServiceRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    new-array v0, v1, [Lcom/google/android/gms/common/api/Scope;

    sput-object v0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zza:[Lcom/google/android/gms/common/api/Scope;

    new-array v0, v1, [Lcom/google/android/gms/common/Feature;

    sput-object v0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzb:[Lcom/google/android/gms/common/Feature;

    return-void
.end method

.method constructor <init>(IIILjava/lang/String;Landroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Landroid/accounts/Account;[Lcom/google/android/gms/common/Feature;[Lcom/google/android/gms/common/Feature;ZIZLjava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    if-nez p6, :cond_0

    sget-object p6, Lcom/google/android/gms/common/internal/GetServiceRequest;->zza:[Lcom/google/android/gms/common/api/Scope;

    :cond_0
    if-nez p7, :cond_1

    new-instance p7, Landroid/os/Bundle;

    invoke-direct {p7}, Landroid/os/Bundle;-><init>()V

    :cond_1
    if-nez p9, :cond_2

    sget-object p9, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzb:[Lcom/google/android/gms/common/Feature;

    :cond_2
    if-nez p10, :cond_3

    sget-object p10, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzb:[Lcom/google/android/gms/common/Feature;

    :cond_3
    iput p1, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzc:I

    iput p2, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzd:I

    iput p3, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zze:I

    const/16 v1, 0x16

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "3ab7b9"

    const v3, -0x31347757

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x16

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "1c1c2c"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzf:Ljava/lang/String;

    :goto_0
    const/4 v1, 0x2

    if-ge p1, v1, :cond_6

    if-eqz p5, :cond_5

    invoke-static {p5}, Lcom/google/android/gms/common/internal/IAccountAccessor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/IAccountAccessor;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/AccountAccessor;->getAccountBinderSafe(Lcom/google/android/gms/common/internal/IAccountAccessor;)Landroid/accounts/Account;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzj:Landroid/accounts/Account;

    :goto_2
    iput-object p6, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzh:[Lcom/google/android/gms/common/api/Scope;

    iput-object p7, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzi:Landroid/os/Bundle;

    iput-object p9, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzk:[Lcom/google/android/gms/common/Feature;

    iput-object p10, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzl:[Lcom/google/android/gms/common/Feature;

    iput-boolean p11, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzm:Z

    move/from16 v0, p12

    iput v0, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzn:I

    move/from16 v0, p13

    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzo:Z

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzp:Ljava/lang/String;

    return-void

    :cond_4
    iput-object p4, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzf:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    :cond_6
    iput-object p5, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzg:Landroid/os/IBinder;

    iput-object p8, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzj:Landroid/accounts/Account;

    goto :goto_2

    :array_0
    .array-data 1
        0x50t
        0xet
        0xft
        0x19t
        0x5t
        0x56t
        0x5ct
        0x6t
        0xet
        0x52t
        0x4ct
        0x58t
        0x5dt
        0x5t
        0x10t
        0x58t
        0xbt
        0x5dt
        0x1dt
        0x6t
        0xft
        0x44t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x52t
        0xct
        0x5ct
        0x4dt
        0x55t
        0xct
        0x5et
        0x4t
        0x5dt
        0x6t
        0x1ct
        0x2t
        0x5ft
        0x7t
        0x43t
        0xct
        0x5bt
        0x7t
        0x1ft
        0x4t
        0x5ct
        0x10t
    .end array-data
.end method


# virtual methods
.method public getExtraArgs()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzi:Landroid/os/Bundle;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/zzn;->zza(Lcom/google/android/gms/common/internal/GetServiceRequest;Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zza()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzp:Ljava/lang/String;

    return-object v0
.end method
