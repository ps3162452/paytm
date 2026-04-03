.class public final Lcom/google/android/gms/signin/internal/zaf;
.super Lcom/google/android/gms/internal/base/zaa;

# interfaces
.implements Landroid/os/IInterface;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 4

    const/16 v0, 0x35

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "771e3c"

    const-wide/32 v2, -0x4049e8aa

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/base/zaa;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void

    :array_0
    .array-data 1
        0x54t
        0x58t
        0x5ct
        0x4bt
        0x54t
        0xct
        0x58t
        0x50t
        0x5dt
        0x0t
        0x1dt
        0x2t
        0x59t
        0x53t
        0x43t
        0xat
        0x5at
        0x7t
        0x19t
        0x50t
        0x5ct
        0x16t
        0x1dt
        0x10t
        0x5et
        0x50t
        0x5ft
        0xct
        0x5dt
        0x4dt
        0x5et
        0x59t
        0x45t
        0x0t
        0x41t
        0xdt
        0x56t
        0x5bt
        0x1ft
        0x2ct
        0x60t
        0xat
        0x50t
        0x59t
        0x78t
        0xbt
        0x60t
        0x6t
        0x45t
        0x41t
        0x58t
        0x6t
        0x56t
    .end array-data
.end method


# virtual methods
.method public final zae(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/base/zaa;->zaa()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/base/zaa;->zac(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zaf(Lcom/google/android/gms/common/internal/IAccountAccessor;IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/base/zaa;->zaa()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/base/zac;->zae(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {v0, p3}, Lcom/google/android/gms/internal/base/zac;->zac(Landroid/os/Parcel;Z)V

    const/16 v1, 0x9

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/base/zaa;->zac(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zag(Lcom/google/android/gms/signin/internal/zai;Lcom/google/android/gms/signin/internal/zae;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/base/zaa;->zaa()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/base/zac;->zad(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/base/zac;->zae(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 v1, 0xc

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/base/zaa;->zac(ILandroid/os/Parcel;)V

    return-void
.end method
