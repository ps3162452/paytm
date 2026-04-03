.class public abstract Lcom/google/android/gms/common/api/internal/IStatusCallback$Stub;
.super Lcom/google/android/gms/internal/base/zab;

# interfaces
.implements Lcom/google/android/gms/common/api/internal/IStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/internal/IStatusCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x3a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "26a0a7"

    const v2, 0x4ed814da

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/base/zab;-><init>(Ljava/lang/String;)V

    return-void

    :array_0
    .array-data 1
        0x51t
        0x59t
        0xct
        0x1et
        0x6t
        0x58t
        0x5dt
        0x51t
        0xdt
        0x55t
        0x4ft
        0x56t
        0x5ct
        0x52t
        0x13t
        0x5ft
        0x8t
        0x53t
        0x1ct
        0x51t
        0xct
        0x43t
        0x4ft
        0x54t
        0x5dt
        0x5bt
        0xct
        0x5ft
        0xft
        0x19t
        0x53t
        0x46t
        0x8t
        0x1et
        0x8t
        0x59t
        0x46t
        0x53t
        0x13t
        0x5et
        0x0t
        0x5bt
        0x1ct
        0x7ft
        0x32t
        0x44t
        0x0t
        0x43t
        0x47t
        0x45t
        0x22t
        0x51t
        0xdt
        0x5bt
        0x50t
        0x57t
        0x2t
        0x5bt
    .end array-data
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/common/api/internal/IStatusCallback;
    .locals 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x3a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "4f2674"

    const/16 v2, -0x1a4b

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/common/api/internal/IStatusCallback;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/common/api/internal/IStatusCallback;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/common/api/internal/zaby;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/zaby;-><init>(Landroid/os/IBinder;)V

    goto :goto_0

    :array_0
    .array-data 1
        0x57t
        0x9t
        0x5ft
        0x18t
        0x50t
        0x5bt
        0x5bt
        0x1t
        0x5et
        0x53t
        0x19t
        0x55t
        0x5at
        0x2t
        0x40t
        0x59t
        0x5et
        0x50t
        0x1at
        0x1t
        0x5ft
        0x45t
        0x19t
        0x57t
        0x5bt
        0xbt
        0x5ft
        0x59t
        0x59t
        0x1at
        0x55t
        0x16t
        0x5bt
        0x18t
        0x5et
        0x5at
        0x40t
        0x3t
        0x40t
        0x58t
        0x56t
        0x58t
        0x1at
        0x2ft
        0x61t
        0x42t
        0x56t
        0x40t
        0x41t
        0x15t
        0x71t
        0x57t
        0x5bt
        0x58t
        0x56t
        0x7t
        0x51t
        0x5dt
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

    sget-object v0, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/base/zac;->zaa(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Status;

    invoke-static {p2}, Lcom/google/android/gms/internal/base/zac;->zab(Landroid/os/Parcel;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/IStatusCallback$Stub;->onResult(Lcom/google/android/gms/common/api/Status;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
