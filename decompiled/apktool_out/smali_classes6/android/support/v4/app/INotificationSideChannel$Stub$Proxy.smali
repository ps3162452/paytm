.class Landroid/support/v4/app/INotificationSideChannel$Stub$Proxy;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/app/INotificationSideChannel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/INotificationSideChannel$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/support/v4/app/INotificationSideChannel;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/app/INotificationSideChannel$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/INotificationSideChannel$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public cancel(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/16 v0, 0x2f

    :try_start_0
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v2, "1a803b"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/INotificationSideChannel$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/support/v4/app/INotificationSideChannel$Stub;->getDefaultImpl()Landroid/support/v4/app/INotificationSideChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/support/v4/app/INotificationSideChannel$Stub;->getDefaultImpl()Landroid/support/v4/app/INotificationSideChannel;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/app/INotificationSideChannel;->cancel(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0

    nop

    :array_0
    .array-data 1
        0x50t
        0xft
        0x5ct
        0x42t
        0x5ct
        0xbt
        0x55t
        0x4ft
        0x4bt
        0x45t
        0x43t
        0x12t
        0x5et
        0x13t
        0x4ct
        0x1et
        0x45t
        0x56t
        0x1ft
        0x0t
        0x48t
        0x40t
        0x1dt
        0x2bt
        0x7ft
        0xet
        0x4ct
        0x59t
        0x55t
        0xbt
        0x52t
        0x0t
        0x4ct
        0x59t
        0x5ct
        0xct
        0x62t
        0x8t
        0x5ct
        0x55t
        0x70t
        0xat
        0x50t
        0xft
        0x56t
        0x55t
        0x5ft
    .end array-data
.end method

.method public cancelAll(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/16 v0, 0x2f

    :try_start_0
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v2, "70249d"

    const/16 v3, 0xecc

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/INotificationSideChannel$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/support/v4/app/INotificationSideChannel$Stub;->getDefaultImpl()Landroid/support/v4/app/INotificationSideChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/support/v4/app/INotificationSideChannel$Stub;->getDefaultImpl()Landroid/support/v4/app/INotificationSideChannel;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v4/app/INotificationSideChannel;->cancelAll(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0

    :array_0
    .array-data 1
        0x56t
        0x5et
        0x56t
        0x46t
        0x56t
        0xdt
        0x53t
        0x1et
        0x41t
        0x41t
        0x49t
        0x14t
        0x58t
        0x42t
        0x46t
        0x1at
        0x4ft
        0x50t
        0x19t
        0x51t
        0x42t
        0x44t
        0x17t
        0x2dt
        0x79t
        0x5ft
        0x46t
        0x5dt
        0x5ft
        0xdt
        0x54t
        0x51t
        0x46t
        0x5dt
        0x56t
        0xat
        0x64t
        0x59t
        0x56t
        0x51t
        0x7at
        0xct
        0x56t
        0x5et
        0x5ct
        0x51t
        0x55t
    .end array-data
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 3

    const/16 v0, 0x2f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "0c04f1"

    const/16 v2, 0x1b1b

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x51t
        0xdt
        0x54t
        0x46t
        0x9t
        0x58t
        0x54t
        0x4dt
        0x43t
        0x41t
        0x16t
        0x41t
        0x5ft
        0x11t
        0x44t
        0x1at
        0x10t
        0x5t
        0x1et
        0x2t
        0x40t
        0x44t
        0x48t
        0x78t
        0x7et
        0xct
        0x44t
        0x5dt
        0x0t
        0x58t
        0x53t
        0x2t
        0x44t
        0x5dt
        0x9t
        0x5ft
        0x63t
        0xat
        0x54t
        0x51t
        0x25t
        0x59t
        0x51t
        0xdt
        0x5et
        0x51t
        0xat
    .end array-data
.end method

.method public notify(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/16 v0, 0x2f

    :try_start_0
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v2, "f31101"

    const v3, 0x4ee34be7

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz p4, :cond_0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    invoke-virtual {p4, v1, v0}, Landroid/app/Notification;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/INotificationSideChannel$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/support/v4/app/INotificationSideChannel$Stub;->getDefaultImpl()Landroid/support/v4/app/INotificationSideChannel;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/support/v4/app/INotificationSideChannel$Stub;->getDefaultImpl()Landroid/support/v4/app/INotificationSideChannel;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/support/v4/app/INotificationSideChannel;->notify(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0

    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    :array_0
    .array-data 1
        0x7t
        0x5dt
        0x55t
        0x43t
        0x5ft
        0x58t
        0x2t
        0x1dt
        0x42t
        0x44t
        0x40t
        0x41t
        0x9t
        0x41t
        0x45t
        0x1ft
        0x46t
        0x5t
        0x48t
        0x52t
        0x41t
        0x41t
        0x1et
        0x78t
        0x28t
        0x5ct
        0x45t
        0x58t
        0x56t
        0x58t
        0x5t
        0x52t
        0x45t
        0x58t
        0x5ft
        0x5ft
        0x35t
        0x5at
        0x55t
        0x54t
        0x73t
        0x59t
        0x7t
        0x5dt
        0x5ft
        0x54t
        0x5ct
    .end array-data
.end method
