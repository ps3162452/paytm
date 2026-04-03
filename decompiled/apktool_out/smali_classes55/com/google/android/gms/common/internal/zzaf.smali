.class public abstract Lcom/google/android/gms/common/internal/zzaf;
.super Lcom/google/android/gms/internal/common/zzb;

# interfaces
.implements Lcom/google/android/gms/common/internal/zzag;


# direct methods
.method public static zzb(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/zzag;
    .locals 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x3d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "1861bf"

    const v2, 0x4e9c7e74

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/common/internal/zzag;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/common/internal/zzag;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/common/internal/zzae;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/zzae;-><init>(Landroid/os/IBinder;)V

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x52t
        0x57t
        0x5bt
        0x1ft
        0x5t
        0x9t
        0x5et
        0x5ft
        0x5at
        0x54t
        0x4ct
        0x7t
        0x5ft
        0x5ct
        0x44t
        0x5et
        0xbt
        0x2t
        0x1ft
        0x5ft
        0x5bt
        0x42t
        0x4ct
        0x5t
        0x5et
        0x55t
        0x5bt
        0x5et
        0xct
        0x48t
        0x58t
        0x56t
        0x42t
        0x54t
        0x10t
        0x8t
        0x50t
        0x54t
        0x18t
        0x78t
        0x25t
        0x9t
        0x5et
        0x5ft
        0x5at
        0x54t
        0x21t
        0x3t
        0x43t
        0x4ct
        0x5ft
        0x57t
        0xbt
        0x5t
        0x50t
        0x4ct
        0x53t
        0x42t
        0x23t
        0x16t
        0x58t
    .end array-data
.end method
