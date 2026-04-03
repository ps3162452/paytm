.class public final Lcom/google/android/gms/common/internal/zzx;
.super Lcom/google/android/gms/internal/common/zza;

# interfaces
.implements Lcom/google/android/gms/common/internal/ICancelToken;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 3

    const/16 v0, 0x33

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "c4621a"

    const v2, 0x4ee8cffb    # 1.9529722E9f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/common/zza;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void

    :array_0
    .array-data 1
        0x0t
        0x5bt
        0x5bt
        0x1ct
        0x56t
        0xet
        0xct
        0x53t
        0x5at
        0x57t
        0x1ft
        0x0t
        0xdt
        0x50t
        0x44t
        0x5dt
        0x58t
        0x5t
        0x4dt
        0x53t
        0x5bt
        0x41t
        0x1ft
        0x2t
        0xct
        0x59t
        0x5bt
        0x5dt
        0x5ft
        0x4ft
        0xat
        0x5at
        0x42t
        0x57t
        0x43t
        0xft
        0x2t
        0x58t
        0x18t
        0x7bt
        0x72t
        0x0t
        0xdt
        0x57t
        0x53t
        0x5et
        0x65t
        0xet
        0x8t
        0x51t
        0x58t
    .end array-data
.end method


# virtual methods
.method public final cancel()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/common/zza;->zza()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/common/zza;->zzD(ILandroid/os/Parcel;)V

    return-void
.end method
