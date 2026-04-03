.class public abstract Landroid/support/v4/app/INotificationSideChannel$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/support/v4/app/INotificationSideChannel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/INotificationSideChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/INotificationSideChannel$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String;

.field static final TRANSACTION_cancel:I = 0x2

.field static final TRANSACTION_cancelAll:I = 0x3

.field static final TRANSACTION_notify:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x2f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "31a0af"

    const v2, 0x4d86e7e6    # 2.8291808E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v4/app/INotificationSideChannel$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x52t
        0x5ft
        0x5t
        0x42t
        0xet
        0xft
        0x57t
        0x1ft
        0x12t
        0x45t
        0x11t
        0x16t
        0x5ct
        0x43t
        0x15t
        0x1et
        0x17t
        0x52t
        0x1dt
        0x50t
        0x11t
        0x40t
        0x4ft
        0x2ft
        0x7dt
        0x5et
        0x15t
        0x59t
        0x7t
        0xft
        0x50t
        0x50t
        0x15t
        0x59t
        0xet
        0x8t
        0x60t
        0x58t
        0x5t
        0x55t
        0x22t
        0xet
        0x52t
        0x5ft
        0xft
        0x55t
        0xdt
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const/16 v0, 0x2f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "33117f"

    const-wide/32 v2, -0x67e1cda3

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p0, v0}, Landroid/support/v4/app/INotificationSideChannel$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 1
        0x52t
        0x5dt
        0x55t
        0x43t
        0x58t
        0xft
        0x57t
        0x1dt
        0x42t
        0x44t
        0x47t
        0x16t
        0x5ct
        0x41t
        0x45t
        0x1ft
        0x41t
        0x52t
        0x1dt
        0x52t
        0x41t
        0x41t
        0x19t
        0x2ft
        0x7dt
        0x5ct
        0x45t
        0x58t
        0x51t
        0xft
        0x50t
        0x52t
        0x45t
        0x58t
        0x58t
        0x8t
        0x60t
        0x5at
        0x55t
        0x54t
        0x74t
        0xet
        0x52t
        0x5dt
        0x5ft
        0x54t
        0x5bt
    .end array-data
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/support/v4/app/INotificationSideChannel;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/support/v4/app/INotificationSideChannel$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/support/v4/app/INotificationSideChannel;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/support/v4/app/INotificationSideChannel;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/support/v4/app/INotificationSideChannel$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/support/v4/app/INotificationSideChannel$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public static getDefaultImpl()Landroid/support/v4/app/INotificationSideChannel;
    .locals 1

    sget-object v0, Landroid/support/v4/app/INotificationSideChannel$Stub$Proxy;->sDefaultImpl:Landroid/support/v4/app/INotificationSideChannel;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/support/v4/app/INotificationSideChannel;)Z
    .locals 6

    sget-object v0, Landroid/support/v4/app/INotificationSideChannel$Stub$Proxy;->sDefaultImpl:Landroid/support/v4/app/INotificationSideChannel;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    sput-object p0, Landroid/support/v4/app/INotificationSideChannel$Stub$Proxy;->sDefaultImpl:Landroid/support/v4/app/INotificationSideChannel;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x1d

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "78131b"

    const-wide/32 v4, 0x44912794

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x44t
        0x5dt
        0x45t
        0x77t
        0x54t
        0x4t
        0x56t
        0x4dt
        0x5dt
        0x47t
        0x78t
        0xft
        0x47t
        0x54t
        0x19t
        0x1at
        0x11t
        0x1t
        0x56t
        0x54t
        0x5dt
        0x56t
        0x55t
        0x42t
        0x43t
        0x4ft
        0x58t
        0x50t
        0x54t
    .end array-data
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    sget-object v0, Landroid/support/v4/app/INotificationSideChannel$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :sswitch_1
    sget-object v0, Landroid/support/v4/app/INotificationSideChannel$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/INotificationSideChannel$Stub;->cancelAll(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :sswitch_2
    sget-object v0, Landroid/support/v4/app/INotificationSideChannel$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Landroid/support/v4/app/INotificationSideChannel$Stub;->cancel(Ljava/lang/String;ILjava/lang/String;)V

    move v0, v1

    goto :goto_0

    :sswitch_3
    sget-object v0, Landroid/support/v4/app/INotificationSideChannel$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Notification;

    :goto_1
    invoke-virtual {p0, v2, v3, v4, v0}, Landroid/support/v4/app/INotificationSideChannel$Stub;->notify(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x3 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
