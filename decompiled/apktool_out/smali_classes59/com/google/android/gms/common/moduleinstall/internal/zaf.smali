.class public final Lcom/google/android/gms/common/moduleinstall/internal/zaf;
.super Lcom/google/android/gms/internal/base/zaa;

# interfaces
.implements Landroid/os/IInterface;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 3

    const/16 v0, 0x4a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "47c3ec"

    const/16 v2, -0x3326

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/base/zaa;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 1
        0x57t
        0x58t
        0xet
        0x1dt
        0x2t
        0xct
        0x5bt
        0x50t
        0xft
        0x56t
        0x4bt
        0x2t
        0x5at
        0x53t
        0x11t
        0x5ct
        0xct
        0x7t
        0x1at
        0x50t
        0xet
        0x40t
        0x4bt
        0x0t
        0x5bt
        0x5at
        0xet
        0x5ct
        0xbt
        0x4dt
        0x59t
        0x58t
        0x7t
        0x46t
        0x9t
        0x6t
        0x5dt
        0x59t
        0x10t
        0x47t
        0x4t
        0xft
        0x58t
        0x19t
        0xat
        0x5dt
        0x11t
        0x6t
        0x46t
        0x59t
        0x2t
        0x5ft
        0x4bt
        0x2at
        0x79t
        0x58t
        0x7t
        0x46t
        0x9t
        0x6t
        0x7dt
        0x59t
        0x10t
        0x47t
        0x4t
        0xft
        0x58t
        0x64t
        0x6t
        0x41t
        0x13t
        0xat
        0x57t
        0x52t
    .end array-data
.end method


# virtual methods
.method public final zae(Lcom/google/android/gms/common/moduleinstall/internal/zae;Lcom/google/android/gms/common/moduleinstall/internal/ApiFeatureRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/base/zaa;->zaa()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/base/zac;->zae(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/base/zac;->zad(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/base/zaa;->zac(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zaf(Lcom/google/android/gms/common/moduleinstall/internal/zae;Lcom/google/android/gms/common/moduleinstall/internal/ApiFeatureRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/base/zaa;->zaa()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/base/zac;->zae(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/base/zac;->zad(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/base/zaa;->zac(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zag(Lcom/google/android/gms/common/moduleinstall/internal/zae;Lcom/google/android/gms/common/moduleinstall/internal/ApiFeatureRequest;Lcom/google/android/gms/common/moduleinstall/internal/zah;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/base/zaa;->zaa()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/base/zac;->zae(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/base/zac;->zad(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p3}, Lcom/google/android/gms/internal/base/zac;->zae(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/base/zaa;->zac(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zah(Lcom/google/android/gms/common/api/internal/IStatusCallback;Lcom/google/android/gms/common/moduleinstall/internal/ApiFeatureRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/base/zaa;->zaa()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/base/zac;->zae(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/base/zac;->zad(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/base/zaa;->zac(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zai(Lcom/google/android/gms/common/api/internal/IStatusCallback;Lcom/google/android/gms/common/moduleinstall/internal/zah;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/base/zaa;->zaa()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/base/zac;->zae(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/base/zac;->zae(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/base/zaa;->zac(ILandroid/os/Parcel;)V

    return-void
.end method
