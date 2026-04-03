.class public abstract Lcom/google/android/gms/common/internal/zzz;
.super Lcom/google/android/gms/internal/common/zzb;

# interfaces
.implements Lcom/google/android/gms/common/internal/zzaa;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/16 v0, 0x30

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "d64d46"

    const-wide/32 v2, -0x7828e3c6

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/common/zzb;-><init>(Ljava/lang/String;)V

    return-void

    :array_0
    .array-data 1
        0x7t
        0x59t
        0x59t
        0x4at
        0x53t
        0x59t
        0xbt
        0x51t
        0x58t
        0x1t
        0x1at
        0x57t
        0xat
        0x52t
        0x46t
        0xbt
        0x5dt
        0x52t
        0x4at
        0x51t
        0x59t
        0x17t
        0x1at
        0x55t
        0xbt
        0x5bt
        0x59t
        0xbt
        0x5at
        0x18t
        0xdt
        0x58t
        0x40t
        0x1t
        0x46t
        0x58t
        0x5t
        0x5at
        0x1at
        0x2dt
        0x77t
        0x53t
        0x16t
        0x42t
        0x70t
        0x5t
        0x40t
        0x57t
    .end array-data
.end method

.method public static zzg(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/zzaa;
    .locals 3

    const/16 v0, 0x30

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "f9d0f0"

    const/16 v2, 0x46d5

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/common/internal/zzaa;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/gms/common/internal/zzaa;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/common/internal/zzy;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/zzy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0

    :array_0
    .array-data 1
        0x5t
        0x56t
        0x9t
        0x1et
        0x1t
        0x5ft
        0x9t
        0x5et
        0x8t
        0x55t
        0x48t
        0x51t
        0x8t
        0x5dt
        0x16t
        0x5ft
        0xft
        0x54t
        0x48t
        0x5et
        0x9t
        0x43t
        0x48t
        0x53t
        0x9t
        0x54t
        0x9t
        0x5ft
        0x8t
        0x1et
        0xft
        0x57t
        0x10t
        0x55t
        0x14t
        0x5et
        0x7t
        0x55t
        0x4at
        0x79t
        0x25t
        0x55t
        0x14t
        0x4dt
        0x20t
        0x51t
        0x12t
        0x51t
    .end array-data
.end method


# virtual methods
.method protected final zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzz;->zzc()I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzz;->zzd()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, v0}, Lcom/google/android/gms/internal/common/zzc;->zze(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
