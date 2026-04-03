.class public abstract Lcom/google/android/gms/common/internal/ICancelToken$Stub;
.super Lcom/google/android/gms/internal/common/zzb;

# interfaces
.implements Lcom/google/android/gms/common/internal/ICancelToken;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/ICancelToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x33

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "dc302d"

    const v2, 0x4d8b761a

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/common/zzb;-><init>(Ljava/lang/String;)V

    return-void

    :array_0
    .array-data 1
        0x7t
        0xct
        0x5et
        0x1et
        0x55t
        0xbt
        0xbt
        0x4t
        0x5ft
        0x55t
        0x1ct
        0x5t
        0xat
        0x7t
        0x41t
        0x5ft
        0x5bt
        0x0t
        0x4at
        0x4t
        0x5et
        0x43t
        0x1ct
        0x7t
        0xbt
        0xet
        0x5et
        0x5ft
        0x5ct
        0x4at
        0xdt
        0xdt
        0x47t
        0x55t
        0x40t
        0xat
        0x5t
        0xft
        0x1dt
        0x79t
        0x71t
        0x5t
        0xat
        0x0t
        0x56t
        0x5ct
        0x66t
        0xbt
        0xft
        0x6t
        0x5dt
    .end array-data
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/ICancelToken;
    .locals 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x33

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "8049f6"

    const v2, 0x4deca02c    # 4.9624E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/common/internal/ICancelToken;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/common/internal/ICancelToken;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/common/internal/zzx;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/zzx;-><init>(Landroid/os/IBinder;)V

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x5bt
        0x5ft
        0x59t
        0x17t
        0x1t
        0x59t
        0x57t
        0x57t
        0x58t
        0x5ct
        0x48t
        0x57t
        0x56t
        0x54t
        0x46t
        0x56t
        0xft
        0x52t
        0x16t
        0x57t
        0x59t
        0x4at
        0x48t
        0x55t
        0x57t
        0x5dt
        0x59t
        0x56t
        0x8t
        0x18t
        0x51t
        0x5et
        0x40t
        0x5ct
        0x14t
        0x58t
        0x59t
        0x5ct
        0x1at
        0x70t
        0x25t
        0x57t
        0x56t
        0x53t
        0x51t
        0x55t
        0x32t
        0x59t
        0x53t
        0x55t
        0x5at
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

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/ICancelToken$Stub;->cancel()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
