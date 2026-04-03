.class public final Lcom/google/android/gms/common/internal/zzy;
.super Lcom/google/android/gms/internal/common/zza;

# interfaces
.implements Lcom/google/android/gms/common/internal/zzaa;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 3

    const/4 v2, 0x0

    const/16 v0, 0x30

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "909e5a"

    invoke-static {v0, v1, v2, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/common/zza;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void

    :array_0
    .array-data 1
        0x5at
        0x5ft
        0x54t
        0x4bt
        0x52t
        0xet
        0x56t
        0x57t
        0x55t
        0x0t
        0x1bt
        0x0t
        0x57t
        0x54t
        0x4bt
        0xat
        0x5ct
        0x5t
        0x17t
        0x57t
        0x54t
        0x16t
        0x1bt
        0x2t
        0x56t
        0x5dt
        0x54t
        0xat
        0x5bt
        0x4ft
        0x50t
        0x5et
        0x4dt
        0x0t
        0x47t
        0xft
        0x58t
        0x5ct
        0x17t
        0x2ct
        0x76t
        0x4t
        0x4bt
        0x44t
        0x7dt
        0x4t
        0x41t
        0x0t
    .end array-data
.end method


# virtual methods
.method public final zzc()I
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

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v1
.end method

.method public final zzd()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/common/zza;->zza()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/common/zza;->zzB(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method
