.class Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportCallback$Stub$Proxy;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportCallback;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 3

    const/16 v0, 0x4e

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "8f1d61"

    const v2, 0x4d42da81    # 2.0431874E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x59t
        0x8t
        0x55t
        0x16t
        0x59t
        0x58t
        0x5ct
        0x1et
        0x1ft
        0x7t
        0x59t
        0x43t
        0x5dt
        0x48t
        0x50t
        0x14t
        0x46t
        0x1ft
        0x4dt
        0x8t
        0x44t
        0x17t
        0x53t
        0x55t
        0x59t
        0x16t
        0x41t
        0x16t
        0x53t
        0x42t
        0x4ct
        0x14t
        0x58t
        0x7t
        0x42t
        0x58t
        0x57t
        0x8t
        0x42t
        0x4at
        0x7ft
        0x64t
        0x56t
        0x13t
        0x42t
        0x1t
        0x52t
        0x70t
        0x48t
        0x16t
        0x63t
        0x1t
        0x45t
        0x45t
        0x4at
        0xft
        0x52t
        0x10t
        0x5ft
        0x5et
        0x56t
        0x15t
        0x73t
        0x5t
        0x55t
        0x5at
        0x48t
        0x9t
        0x43t
        0x10t
        0x75t
        0x50t
        0x54t
        0xat
        0x53t
        0x5t
        0x55t
        0x5at
    .end array-data
.end method

.method public onIsPermissionRevocationEnabledForAppResult(ZZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    const/16 v2, 0x4e

    :try_start_0
    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v4, "95fcac"

    const-wide v6, -0x3e3a5ecc65000000L    # -7.25772086E8

    invoke-static {v2, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    move v2, v0

    :goto_0
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p2, :cond_2

    :goto_1
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v1, v3, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportCallback$Stub;->getDefaultImpl()Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportCallback$Stub;->getDefaultImpl()Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportCallback;->onIsPermissionRevocationEnabledForAppResult(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    :goto_2
    return-void

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v0

    :cond_2
    move v0, v1

    goto :goto_1

    nop

    :array_0
    .array-data 1
        0x58t
        0x5bt
        0x2t
        0x11t
        0xet
        0xat
        0x5dt
        0x4dt
        0x48t
        0x0t
        0xet
        0x11t
        0x5ct
        0x1bt
        0x7t
        0x13t
        0x11t
        0x4dt
        0x4ct
        0x5bt
        0x13t
        0x10t
        0x4t
        0x7t
        0x58t
        0x45t
        0x16t
        0x11t
        0x4t
        0x10t
        0x4dt
        0x47t
        0xft
        0x0t
        0x15t
        0xat
        0x56t
        0x5bt
        0x15t
        0x4dt
        0x28t
        0x36t
        0x57t
        0x40t
        0x15t
        0x6t
        0x5t
        0x22t
        0x49t
        0x45t
        0x34t
        0x6t
        0x12t
        0x17t
        0x4bt
        0x5ct
        0x5t
        0x17t
        0x8t
        0xct
        0x57t
        0x46t
        0x24t
        0x2t
        0x2t
        0x8t
        0x49t
        0x5at
        0x14t
        0x17t
        0x22t
        0x2t
        0x55t
        0x59t
        0x4t
        0x2t
        0x2t
        0x8t
    .end array-data
.end method
