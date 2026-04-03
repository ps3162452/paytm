.class public final Lcom/google/android/gms/common/api/internal/zaby;
.super Lcom/google/android/gms/internal/base/zaa;

# interfaces
.implements Lcom/google/android/gms/common/api/internal/IStatusCallback;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 4

    const/16 v0, 0x3a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "6a8ad1"

    const-wide v2, -0x3e5943be38000000L    # -1.9071818E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/base/zaa;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void

    :array_0
    .array-data 1
        0x55t
        0xet
        0x55t
        0x4ft
        0x3t
        0x5et
        0x59t
        0x6t
        0x54t
        0x4t
        0x4at
        0x50t
        0x58t
        0x5t
        0x4at
        0xet
        0xdt
        0x55t
        0x18t
        0x6t
        0x55t
        0x12t
        0x4at
        0x52t
        0x59t
        0xct
        0x55t
        0xet
        0xat
        0x1ft
        0x57t
        0x11t
        0x51t
        0x4ft
        0xdt
        0x5ft
        0x42t
        0x4t
        0x4at
        0xft
        0x5t
        0x5dt
        0x18t
        0x28t
        0x6bt
        0x15t
        0x5t
        0x45t
        0x43t
        0x12t
        0x7bt
        0x0t
        0x8t
        0x5dt
        0x54t
        0x0t
        0x5bt
        0xat
    .end array-data
.end method


# virtual methods
.method public final onResult(Lcom/google/android/gms/common/api/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    throw v0
.end method
