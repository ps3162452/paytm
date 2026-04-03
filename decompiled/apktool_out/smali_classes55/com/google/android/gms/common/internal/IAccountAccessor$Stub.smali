.class public abstract Lcom/google/android/gms/common/internal/IAccountAccessor$Stub;
.super Lcom/google/android/gms/internal/common/zzb;

# interfaces
.implements Lcom/google/android/gms/common/internal/IAccountAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/IAccountAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/16 v0, 0x37

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "4de626"

    invoke-static {v0, v1, v2, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/common/zzb;-><init>(Ljava/lang/String;)V

    return-void

    :array_0
    .array-data 1
        0x57t
        0xbt
        0x8t
        0x18t
        0x55t
        0x59t
        0x5bt
        0x3t
        0x9t
        0x53t
        0x1ct
        0x57t
        0x5at
        0x0t
        0x17t
        0x59t
        0x5bt
        0x52t
        0x1at
        0x3t
        0x8t
        0x45t
        0x1ct
        0x55t
        0x5bt
        0x9t
        0x8t
        0x59t
        0x5ct
        0x18t
        0x5dt
        0xat
        0x11t
        0x53t
        0x40t
        0x58t
        0x55t
        0x8t
        0x4bt
        0x7ft
        0x73t
        0x55t
        0x57t
        0xbt
        0x10t
        0x58t
        0x46t
        0x77t
        0x57t
        0x7t
        0x0t
        0x45t
        0x41t
        0x59t
        0x46t
    .end array-data
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/IAccountAccessor;
    .locals 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x37

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "16f929"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/common/internal/IAccountAccessor;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/common/internal/IAccountAccessor;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/common/internal/zzw;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/zzw;-><init>(Landroid/os/IBinder;)V

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x52t
        0x59t
        0xbt
        0x17t
        0x55t
        0x56t
        0x5et
        0x51t
        0xat
        0x5ct
        0x1ct
        0x58t
        0x5ft
        0x52t
        0x14t
        0x56t
        0x5bt
        0x5dt
        0x1ft
        0x51t
        0xbt
        0x4at
        0x1ct
        0x5at
        0x5et
        0x5bt
        0xbt
        0x56t
        0x5ct
        0x17t
        0x58t
        0x58t
        0x12t
        0x5ct
        0x40t
        0x57t
        0x50t
        0x5at
        0x48t
        0x70t
        0x73t
        0x5at
        0x52t
        0x59t
        0x13t
        0x57t
        0x46t
        0x78t
        0x52t
        0x55t
        0x3t
        0x4at
        0x41t
        0x56t
        0x43t
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

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/IAccountAccessor$Stub;->zzb()Landroid/accounts/Account;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, v0}, Lcom/google/android/gms/internal/common/zzc;->zzd(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
