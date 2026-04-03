.class public abstract Lcom/google/android/gms/common/moduleinstall/internal/zag;
.super Lcom/google/android/gms/internal/base/zab;

# interfaces
.implements Lcom/google/android/gms/common/moduleinstall/internal/zah;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x51

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "8e58de"

    const v2, 0x4eeccf61    # 1.9865069E9f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/base/zab;-><init>(Ljava/lang/String;)V

    return-void

    :array_0
    .array-data 1
        0x5bt
        0xat
        0x58t
        0x16t
        0x3t
        0xat
        0x57t
        0x2t
        0x59t
        0x5dt
        0x4at
        0x4t
        0x56t
        0x1t
        0x47t
        0x57t
        0xdt
        0x1t
        0x16t
        0x2t
        0x58t
        0x4bt
        0x4at
        0x6t
        0x57t
        0x8t
        0x58t
        0x57t
        0xat
        0x4bt
        0x55t
        0xat
        0x51t
        0x4dt
        0x8t
        0x0t
        0x51t
        0xbt
        0x46t
        0x4ct
        0x5t
        0x9t
        0x54t
        0x4bt
        0x5ct
        0x56t
        0x10t
        0x0t
        0x4at
        0xbt
        0x54t
        0x54t
        0x4at
        0x2ct
        0x75t
        0xat
        0x51t
        0x4dt
        0x8t
        0x0t
        0x71t
        0xbt
        0x46t
        0x4ct
        0x5t
        0x9t
        0x54t
        0x36t
        0x41t
        0x59t
        0x10t
        0x10t
        0x4bt
        0x29t
        0x5ct
        0x4bt
        0x10t
        0x0t
        0x56t
        0x0t
        0x47t
    .end array-data
.end method


# virtual methods
.method protected final zaa(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    sget-object v0, Lcom/google/android/gms/common/moduleinstall/ModuleInstallStatusUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/base/zac;->zaa(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/moduleinstall/ModuleInstallStatusUpdate;

    invoke-static {p2}, Lcom/google/android/gms/internal/base/zac;->zab(Landroid/os/Parcel;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/moduleinstall/internal/zag;->zab(Lcom/google/android/gms/common/moduleinstall/ModuleInstallStatusUpdate;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
