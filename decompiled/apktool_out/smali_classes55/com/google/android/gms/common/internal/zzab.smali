.class public final Lcom/google/android/gms/common/internal/zzab;
.super Lcom/google/android/gms/internal/common/zza;

# interfaces
.implements Lcom/google/android/gms/common/internal/IGmsCallbacks;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 4

    const/16 v0, 0x34

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "6786d7"

    const-wide/32 v2, 0x20625a44

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/common/zza;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void

    :array_0
    .array-data 1
        0x55t
        0x58t
        0x55t
        0x18t
        0x3t
        0x58t
        0x59t
        0x50t
        0x54t
        0x53t
        0x4at
        0x56t
        0x58t
        0x53t
        0x4at
        0x59t
        0xdt
        0x53t
        0x18t
        0x50t
        0x55t
        0x45t
        0x4at
        0x54t
        0x59t
        0x5at
        0x55t
        0x59t
        0xat
        0x19t
        0x5ft
        0x59t
        0x4ct
        0x53t
        0x16t
        0x59t
        0x57t
        0x5bt
        0x16t
        0x7ft
        0x23t
        0x5at
        0x45t
        0x74t
        0x59t
        0x5at
        0x8t
        0x55t
        0x57t
        0x54t
        0x53t
        0x45t
    .end array-data
.end method


# virtual methods
.method public final onPostInitComplete(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/common/zza;->zza()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-static {v0, p3}, Lcom/google/android/gms/internal/common/zzc;->zzc(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/common/zza;->zzC(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zzb(ILandroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    throw v0
.end method

.method public final zzc(ILandroid/os/IBinder;Lcom/google/android/gms/common/internal/zzk;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    throw v0
.end method
