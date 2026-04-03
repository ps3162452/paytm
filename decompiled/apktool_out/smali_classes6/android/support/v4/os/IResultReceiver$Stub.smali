.class public abstract Landroid/support/v4/os/IResultReceiver$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/support/v4/os/IResultReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/os/IResultReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/os/IResultReceiver$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String;

.field static final TRANSACTION_send:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x25

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "407dff"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v4/os/IResultReceiver$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x55t
        0x5et
        0x53t
        0x16t
        0x9t
        0xft
        0x50t
        0x1et
        0x44t
        0x11t
        0x16t
        0x16t
        0x5bt
        0x42t
        0x43t
        0x4at
        0x10t
        0x52t
        0x1at
        0x5ft
        0x44t
        0x4at
        0x2ft
        0x34t
        0x51t
        0x43t
        0x42t
        0x8t
        0x12t
        0x34t
        0x51t
        0x53t
        0x52t
        0xdt
        0x10t
        0x3t
        0x46t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const/16 v0, 0x25

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "e5491e"

    invoke-static {v0, v1, v2, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p0, v0}, Landroid/support/v4/os/IResultReceiver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 1
        0x4t
        0x5bt
        0x50t
        0x4bt
        0x5et
        0xct
        0x1t
        0x1bt
        0x47t
        0x4ct
        0x41t
        0x15t
        0xat
        0x47t
        0x40t
        0x17t
        0x47t
        0x51t
        0x4bt
        0x5at
        0x47t
        0x17t
        0x78t
        0x37t
        0x0t
        0x46t
        0x41t
        0x55t
        0x45t
        0x37t
        0x0t
        0x56t
        0x51t
        0x50t
        0x47t
        0x0t
        0x17t
    .end array-data
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/support/v4/os/IResultReceiver;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/support/v4/os/IResultReceiver$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/support/v4/os/IResultReceiver;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/support/v4/os/IResultReceiver;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/support/v4/os/IResultReceiver$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/support/v4/os/IResultReceiver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public static getDefaultImpl()Landroid/support/v4/os/IResultReceiver;
    .locals 1

    sget-object v0, Landroid/support/v4/os/IResultReceiver$Stub$Proxy;->sDefaultImpl:Landroid/support/v4/os/IResultReceiver;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/support/v4/os/IResultReceiver;)Z
    .locals 4

    sget-object v0, Landroid/support/v4/os/IResultReceiver$Stub$Proxy;->sDefaultImpl:Landroid/support/v4/os/IResultReceiver;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    sput-object p0, Landroid/support/v4/os/IResultReceiver$Stub$Proxy;->sDefaultImpl:Landroid/support/v4/os/IResultReceiver;

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

    const-string v2, "519b26"

    const/16 v3, -0x66c5

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x46t
        0x54t
        0x4dt
        0x26t
        0x57t
        0x50t
        0x54t
        0x44t
        0x55t
        0x16t
        0x7bt
        0x5bt
        0x45t
        0x5dt
        0x11t
        0x4bt
        0x12t
        0x55t
        0x54t
        0x5dt
        0x55t
        0x7t
        0x56t
        0x16t
        0x41t
        0x46t
        0x50t
        0x1t
        0x57t
    .end array-data
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
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
    sget-object v0, Landroid/support/v4/os/IResultReceiver$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :sswitch_1
    sget-object v0, Landroid/support/v4/os/IResultReceiver$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    :goto_1
    invoke-virtual {p0, v2, v0}, Landroid/support/v4/os/IResultReceiver$Stub;->send(ILandroid/os/Bundle;)V

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
