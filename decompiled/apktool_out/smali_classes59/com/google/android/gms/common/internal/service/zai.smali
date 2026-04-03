.class public final Lcom/google/android/gms/common/internal/service/zai;
.super Lcom/google/android/gms/internal/base/zaa;

# interfaces
.implements Landroid/os/IInterface;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 3

    const/16 v0, 0x46

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "bd1d93"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/base/zaa;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void

    :array_0
    .array-data 1
        0x1t
        0xbt
        0x5ct
        0x4at
        0x5et
        0x5ct
        0xdt
        0x3t
        0x5dt
        0x1t
        0x17t
        0x52t
        0xct
        0x0t
        0x43t
        0xbt
        0x50t
        0x57t
        0x4ct
        0x3t
        0x5ct
        0x17t
        0x17t
        0x50t
        0xdt
        0x9t
        0x5ct
        0xbt
        0x57t
        0x1dt
        0xbt
        0xat
        0x45t
        0x1t
        0x4bt
        0x5dt
        0x3t
        0x8t
        0x1ft
        0x17t
        0x5ct
        0x41t
        0x14t
        0xdt
        0x52t
        0x1t
        0x17t
        0x7at
        0x21t
        0x8t
        0x58t
        0x1t
        0x57t
        0x47t
        0x36t
        0x1t
        0x5dt
        0x1t
        0x54t
        0x56t
        0x16t
        0x16t
        0x48t
        0x37t
        0x5ct
        0x41t
        0x14t
        0xdt
        0x52t
        0x1t
    .end array-data
.end method


# virtual methods
.method public final zae(Lcom/google/android/gms/common/internal/TelemetryData;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/base/zaa;->zaa()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/base/zac;->zad(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/base/zaa;->zad(ILandroid/os/Parcel;)V

    return-void
.end method
