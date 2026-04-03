.class Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportService$Stub$Proxy;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 3

    const/16 v0, 0x4d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "c978c7"

    const/16 v2, 0x7a4e

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x2t
        0x57t
        0x53t
        0x4at
        0xct
        0x5et
        0x7t
        0x41t
        0x19t
        0x5bt
        0xct
        0x45t
        0x6t
        0x17t
        0x56t
        0x48t
        0x13t
        0x19t
        0x16t
        0x57t
        0x42t
        0x4bt
        0x6t
        0x53t
        0x2t
        0x49t
        0x47t
        0x4at
        0x6t
        0x44t
        0x17t
        0x4bt
        0x5et
        0x5bt
        0x17t
        0x5et
        0xct
        0x57t
        0x44t
        0x16t
        0x2at
        0x62t
        0xdt
        0x4ct
        0x44t
        0x5dt
        0x7t
        0x76t
        0x13t
        0x49t
        0x65t
        0x5dt
        0x10t
        0x43t
        0x11t
        0x50t
        0x54t
        0x4ct
        0xat
        0x58t
        0xdt
        0x4at
        0x75t
        0x59t
        0x0t
        0x5ct
        0x13t
        0x56t
        0x45t
        0x4ct
        0x30t
        0x52t
        0x11t
        0x4ft
        0x5et
        0x5bt
        0x6t
    .end array-data
.end method

.method public isPermissionRevocationEnabledForApp(Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/16 v2, 0x4d

    :try_start_0
    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "75a44d"

    const-wide/32 v4, -0x9a8c0b4

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v0, p0, Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportService$Stub;->getDefaultImpl()Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportService;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportService$Stub;->getDefaultImpl()Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportService;->isPermissionRevocationEnabledForApp(Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0

    :array_0
    .array-data 1
        0x56t
        0x5bt
        0x5t
        0x46t
        0x5bt
        0xdt
        0x53t
        0x4dt
        0x4ft
        0x57t
        0x5bt
        0x16t
        0x52t
        0x1bt
        0x0t
        0x44t
        0x44t
        0x4at
        0x42t
        0x5bt
        0x14t
        0x47t
        0x51t
        0x0t
        0x56t
        0x45t
        0x11t
        0x46t
        0x51t
        0x17t
        0x43t
        0x47t
        0x8t
        0x57t
        0x40t
        0xdt
        0x58t
        0x5bt
        0x12t
        0x1at
        0x7dt
        0x31t
        0x59t
        0x40t
        0x12t
        0x51t
        0x50t
        0x25t
        0x47t
        0x45t
        0x33t
        0x51t
        0x47t
        0x10t
        0x45t
        0x5ct
        0x2t
        0x40t
        0x5dt
        0xbt
        0x59t
        0x46t
        0x23t
        0x55t
        0x57t
        0xft
        0x47t
        0x5at
        0x13t
        0x40t
        0x67t
        0x1t
        0x45t
        0x43t
        0x8t
        0x57t
        0x51t
    .end array-data
.end method
