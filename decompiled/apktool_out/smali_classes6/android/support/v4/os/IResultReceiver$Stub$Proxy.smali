.class Landroid/support/v4/os/IResultReceiver$Stub$Proxy;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/os/IResultReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/os/IResultReceiver$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/support/v4/os/IResultReceiver;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/os/IResultReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/os/IResultReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 3

    const/16 v0, 0x25

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "a2c142"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x0t
        0x5ct
        0x7t
        0x43t
        0x5bt
        0x5bt
        0x5t
        0x1ct
        0x10t
        0x44t
        0x44t
        0x42t
        0xet
        0x40t
        0x17t
        0x1ft
        0x42t
        0x6t
        0x4ft
        0x5dt
        0x10t
        0x1ft
        0x7dt
        0x60t
        0x4t
        0x41t
        0x16t
        0x5dt
        0x40t
        0x60t
        0x4t
        0x51t
        0x6t
        0x58t
        0x42t
        0x57t
        0x13t
    .end array-data
.end method

.method public send(ILandroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/16 v0, 0x25

    :try_start_0
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v2, "07c1f8"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    iget-object v0, p0, Landroid/support/v4/os/IResultReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/support/v4/os/IResultReceiver$Stub;->getDefaultImpl()Landroid/support/v4/os/IResultReceiver;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/support/v4/os/IResultReceiver$Stub;->getDefaultImpl()Landroid/support/v4/os/IResultReceiver;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/support/v4/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
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
        0x51t
        0x59t
        0x7t
        0x43t
        0x9t
        0x51t
        0x54t
        0x19t
        0x10t
        0x44t
        0x16t
        0x48t
        0x5ft
        0x45t
        0x17t
        0x1ft
        0x10t
        0xct
        0x1et
        0x58t
        0x10t
        0x1ft
        0x2ft
        0x6at
        0x55t
        0x44t
        0x16t
        0x5dt
        0x12t
        0x6at
        0x55t
        0x54t
        0x6t
        0x58t
        0x10t
        0x5dt
        0x42t
    .end array-data
.end method
