.class public final Lcom/google/android/gms/common/internal/zzw;
.super Lcom/google/android/gms/internal/common/zza;

# interfaces
.implements Lcom/google/android/gms/common/internal/IAccountAccessor;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 3

    const/4 v2, 0x1

    const/16 v0, 0x37

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "603c07"

    invoke-static {v0, v1, v2, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/common/zza;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void

    :array_0
    .array-data 1
        0x55t
        0x5ft
        0x5et
        0x4dt
        0x57t
        0x58t
        0x59t
        0x57t
        0x5ft
        0x6t
        0x1et
        0x56t
        0x58t
        0x54t
        0x41t
        0xct
        0x59t
        0x53t
        0x18t
        0x57t
        0x5et
        0x10t
        0x1et
        0x54t
        0x59t
        0x5dt
        0x5et
        0xct
        0x5et
        0x19t
        0x5ft
        0x5et
        0x47t
        0x6t
        0x42t
        0x59t
        0x57t
        0x5ct
        0x1dt
        0x2at
        0x71t
        0x54t
        0x55t
        0x5ft
        0x46t
        0xdt
        0x44t
        0x76t
        0x55t
        0x53t
        0x56t
        0x10t
        0x43t
        0x58t
        0x44t
    .end array-data
.end method


# virtual methods
.method public final zzb()Landroid/accounts/Account;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/common/zza;->zza()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/common/zza;->zzB(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v1

    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/common/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v0
.end method
