.class public abstract Lcom/google/android/gms/common/internal/IGmsServiceBroker$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/common/internal/IGmsServiceBroker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/IGmsServiceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const/16 v0, 0x38

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "bc4cfd"

    const-wide v2, 0x41da45f359800000L    # 1.76316759E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/common/internal/IGmsServiceBroker$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0xct
        0x59t
        0x4dt
        0x1t
        0xbt
        0xdt
        0x4t
        0x58t
        0x6t
        0x48t
        0x5t
        0xct
        0x7t
        0x46t
        0xct
        0xft
        0x0t
        0x4ct
        0x4t
        0x59t
        0x10t
        0x48t
        0x7t
        0xdt
        0xet
        0x59t
        0xct
        0x8t
        0x4at
        0xbt
        0xdt
        0x40t
        0x6t
        0x14t
        0xat
        0x3t
        0xft
        0x1at
        0x2at
        0x21t
        0x9t
        0x11t
        0x30t
        0x51t
        0x11t
        0x10t
        0xdt
        0x1t
        0x6t
        0x76t
        0x11t
        0x9t
        0xft
        0x7t
        0x11t
    .end array-data
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    const v0, 0xffffff

    if-le p1, v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x38

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v2, "12a9ea"

    const-wide v4, 0x41dabd46f7800000L    # 1.79444835E9

    invoke-static {v0, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v2, v1

    :goto_1
    const/16 v0, 0x2e

    if-ne p1, v0, :cond_4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/google/android/gms/common/internal/GetServiceRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/GetServiceRequest;

    :goto_2
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/common/internal/IGmsServiceBroker$Stub;->getService(Lcom/google/android/gms/common/internal/IGmsCallbacks;Lcom/google/android/gms/common/internal/GetServiceRequest;)V

    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x34

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v3, "0abd52"

    const-wide v4, -0x3e2649f240000000L    # -1.725445888E9

    invoke-static {v0, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v3, v0, Lcom/google/android/gms/common/internal/IGmsCallbacks;

    if-eqz v3, :cond_2

    check-cast v0, Lcom/google/android/gms/common/internal/IGmsCallbacks;

    move-object v2, v0

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/google/android/gms/common/internal/zzab;

    invoke-direct {v0, v2}, Lcom/google/android/gms/common/internal/zzab;-><init>(Landroid/os/IBinder;)V

    move-object v2, v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_2

    :cond_4
    const/16 v0, 0x2f

    if-ne p1, v0, :cond_6

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/google/android/gms/common/internal/zzak;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/zzak;

    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_7

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    packed-switch p1, :pswitch_data_0

    :cond_7
    :goto_3
    :pswitch_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    goto :goto_3

    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    goto :goto_3

    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    goto :goto_3

    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    goto :goto_3

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    goto :goto_3

    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    goto :goto_3

    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    goto :goto_3

    :array_0
    .array-data 1
        0x52t
        0x5dt
        0xct
        0x17t
        0x2t
        0xet
        0x5et
        0x55t
        0xdt
        0x5ct
        0x4bt
        0x0t
        0x5ft
        0x56t
        0x13t
        0x56t
        0xct
        0x5t
        0x1ft
        0x55t
        0xct
        0x4at
        0x4bt
        0x2t
        0x5et
        0x5ft
        0xct
        0x56t
        0xbt
        0x4ft
        0x58t
        0x5ct
        0x15t
        0x5ct
        0x17t
        0xft
        0x50t
        0x5et
        0x4ft
        0x70t
        0x22t
        0xct
        0x42t
        0x61t
        0x4t
        0x4bt
        0x13t
        0x8t
        0x52t
        0x57t
        0x23t
        0x4bt
        0xat
        0xat
        0x54t
        0x40t
    .end array-data

    :array_1
    .array-data 1
        0x53t
        0xet
        0xft
        0x4at
        0x52t
        0x5dt
        0x5ft
        0x6t
        0xet
        0x1t
        0x1bt
        0x53t
        0x5et
        0x5t
        0x10t
        0xbt
        0x5ct
        0x56t
        0x1et
        0x6t
        0xft
        0x17t
        0x1bt
        0x51t
        0x5ft
        0xct
        0xft
        0xbt
        0x5bt
        0x1ct
        0x59t
        0xft
        0x16t
        0x1t
        0x47t
        0x5ct
        0x51t
        0xdt
        0x4ct
        0x2dt
        0x72t
        0x5ft
        0x43t
        0x22t
        0x3t
        0x8t
        0x59t
        0x50t
        0x51t
        0x2t
        0x9t
        0x17t
    .end array-data

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method
