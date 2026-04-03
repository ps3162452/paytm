.class public abstract Lcom/google/android/gms/common/internal/service/zaj;
.super Lcom/google/android/gms/internal/base/zab;

# interfaces
.implements Lcom/google/android/gms/common/internal/service/zak;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/16 v0, 0x3f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "c7371a"

    const-wide v2, 0x41cd0538d3800000L    # 9.73762983E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/base/zab;-><init>(Ljava/lang/String;)V

    return-void

    :array_0
    .array-data 1
        0x0t
        0x58t
        0x5et
        0x19t
        0x56t
        0xet
        0xct
        0x50t
        0x5ft
        0x52t
        0x1ft
        0x0t
        0xdt
        0x53t
        0x41t
        0x58t
        0x58t
        0x5t
        0x4dt
        0x50t
        0x5et
        0x44t
        0x1ft
        0x2t
        0xct
        0x5at
        0x5et
        0x58t
        0x5ft
        0x4ft
        0xat
        0x59t
        0x47t
        0x52t
        0x43t
        0xft
        0x2t
        0x5bt
        0x1dt
        0x44t
        0x54t
        0x13t
        0x15t
        0x5et
        0x50t
        0x52t
        0x1ft
        0x28t
        0x20t
        0x58t
        0x5et
        0x5at
        0x5et
        0xft
        0x20t
        0x56t
        0x5ft
        0x5bt
        0x53t
        0x0t
        0x0t
        0x5ct
        0x40t
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

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {p2}, Lcom/google/android/gms/internal/base/zac;->zab(Landroid/os/Parcel;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/internal/service/zaj;->zab(I)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
