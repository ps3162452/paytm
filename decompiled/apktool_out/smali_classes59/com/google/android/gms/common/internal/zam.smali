.class public final Lcom/google/android/gms/common/internal/zam;
.super Lcom/google/android/gms/internal/base/zaa;

# interfaces
.implements Landroid/os/IInterface;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 4

    const/16 v0, 0x3b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "1eb600"

    const-wide/32 v2, 0x712f7d58

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/base/zaa;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void

    :array_0
    .array-data 1
        0x52t
        0xat
        0xft
        0x18t
        0x57t
        0x5ft
        0x5et
        0x2t
        0xet
        0x53t
        0x1et
        0x51t
        0x5ft
        0x1t
        0x10t
        0x59t
        0x59t
        0x54t
        0x1ft
        0x2t
        0xft
        0x45t
        0x1et
        0x53t
        0x5et
        0x8t
        0xft
        0x59t
        0x5et
        0x1et
        0x58t
        0xbt
        0x16t
        0x53t
        0x42t
        0x5et
        0x50t
        0x9t
        0x4ct
        0x7ft
        0x63t
        0x59t
        0x56t
        0xbt
        0x2bt
        0x58t
        0x72t
        0x45t
        0x45t
        0x11t
        0xdt
        0x58t
        0x73t
        0x42t
        0x54t
        0x4t
        0x16t
        0x59t
        0x42t
    .end array-data
.end method


# virtual methods
.method public final zae(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/common/internal/zax;)Lcom/google/android/gms/dynamic/IObjectWrapper;
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

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/base/zaa;->zab(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method
