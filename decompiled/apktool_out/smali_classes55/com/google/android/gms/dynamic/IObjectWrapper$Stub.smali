.class public abstract Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;
.super Lcom/google/android/gms/internal/common/zzb;

# interfaces
.implements Lcom/google/android/gms/dynamic/IObjectWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/dynamic/IObjectWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x2d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "0c2975"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/common/zzb;-><init>(Ljava/lang/String;)V

    return-void

    :array_0
    .array-data 1
        0x53t
        0xct
        0x5ft
        0x17t
        0x50t
        0x5at
        0x5ft
        0x4t
        0x5et
        0x5ct
        0x19t
        0x54t
        0x5et
        0x7t
        0x40t
        0x56t
        0x5et
        0x51t
        0x1et
        0x4t
        0x5ft
        0x4at
        0x19t
        0x51t
        0x49t
        0xdt
        0x53t
        0x54t
        0x5et
        0x56t
        0x1et
        0x2at
        0x7dt
        0x5bt
        0x5dt
        0x50t
        0x53t
        0x17t
        0x65t
        0x4bt
        0x56t
        0x45t
        0x40t
        0x6t
        0x40t
    .end array-data
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x2d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "05a4f9"

    const v2, 0x4e9f5082

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/dynamic/IObjectWrapper;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/dynamic/IObjectWrapper;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/dynamic/zzb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/dynamic/zzb;-><init>(Landroid/os/IBinder;)V

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x53t
        0x5at
        0xct
        0x1at
        0x1t
        0x56t
        0x5ft
        0x52t
        0xdt
        0x51t
        0x48t
        0x58t
        0x5et
        0x51t
        0x13t
        0x5bt
        0xft
        0x5dt
        0x1et
        0x52t
        0xct
        0x47t
        0x48t
        0x5dt
        0x49t
        0x5bt
        0x0t
        0x59t
        0xft
        0x5at
        0x1et
        0x7ct
        0x2et
        0x56t
        0xct
        0x5ct
        0x53t
        0x41t
        0x36t
        0x46t
        0x7t
        0x49t
        0x40t
        0x50t
        0x13t
    .end array-data
.end method
