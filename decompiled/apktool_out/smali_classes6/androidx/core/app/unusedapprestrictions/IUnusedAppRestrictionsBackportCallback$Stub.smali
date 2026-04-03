.class public abstract Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportCallback$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String;

.field static final TRANSACTION_onIsPermissionRevocationEnabledForAppResult:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x4e

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "b79b9b"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x3t
        0x59t
        0x5dt
        0x10t
        0x56t
        0xbt
        0x6t
        0x4ft
        0x17t
        0x1t
        0x56t
        0x10t
        0x7t
        0x19t
        0x58t
        0x12t
        0x49t
        0x4ct
        0x17t
        0x59t
        0x4ct
        0x11t
        0x5ct
        0x6t
        0x3t
        0x47t
        0x49t
        0x10t
        0x5ct
        0x11t
        0x16t
        0x45t
        0x50t
        0x1t
        0x4dt
        0xbt
        0xdt
        0x59t
        0x4at
        0x4ct
        0x70t
        0x37t
        0xct
        0x42t
        0x4at
        0x7t
        0x5dt
        0x23t
        0x12t
        0x47t
        0x6bt
        0x7t
        0x4at
        0x16t
        0x10t
        0x5et
        0x5at
        0x16t
        0x50t
        0xdt
        0xct
        0x44t
        0x7bt
        0x3t
        0x5at
        0x9t
        0x12t
        0x58t
        0x4bt
        0x16t
        0x7at
        0x3t
        0xet
        0x5bt
        0x5bt
        0x3t
        0x5at
        0x9t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const/16 v0, 0x4e

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "7b6070"

    const v2, 0x4e0f0298    # 5.99828E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p0, v0}, Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 1
        0x56t
        0xct
        0x52t
        0x42t
        0x58t
        0x59t
        0x53t
        0x1at
        0x18t
        0x53t
        0x58t
        0x42t
        0x52t
        0x4ct
        0x57t
        0x40t
        0x47t
        0x1et
        0x42t
        0xct
        0x43t
        0x43t
        0x52t
        0x54t
        0x56t
        0x12t
        0x46t
        0x42t
        0x52t
        0x43t
        0x43t
        0x10t
        0x5ft
        0x53t
        0x43t
        0x59t
        0x58t
        0xct
        0x45t
        0x1et
        0x7et
        0x65t
        0x59t
        0x17t
        0x45t
        0x55t
        0x53t
        0x71t
        0x47t
        0x12t
        0x64t
        0x55t
        0x44t
        0x44t
        0x45t
        0xbt
        0x55t
        0x44t
        0x5et
        0x5ft
        0x59t
        0x11t
        0x74t
        0x51t
        0x54t
        0x5bt
        0x47t
        0xdt
        0x44t
        0x44t
        0x74t
        0x51t
        0x5bt
        0xet
        0x54t
        0x51t
        0x54t
        0x5bt
    .end array-data
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportCallback;

    if-eqz v1, :cond_1

    check-cast v0, Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportCallback;

    goto :goto_0

    :cond_1
    new-instance v0, Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public static getDefaultImpl()Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportCallback;
    .locals 1

    sget-object v0, Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportCallback$Stub$Proxy;->sDefaultImpl:Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportCallback;)Z
    .locals 4

    sget-object v0, Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportCallback$Stub$Proxy;->sDefaultImpl:Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportCallback;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    sput-object p0, Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportCallback$Stub$Proxy;->sDefaultImpl:Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportCallback;

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

    const-string v2, "70e0db"

    const/16 v3, -0x391b

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x44t
        0x55t
        0x11t
        0x74t
        0x1t
        0x4t
        0x56t
        0x45t
        0x9t
        0x44t
        0x2dt
        0xft
        0x47t
        0x5ct
        0x4dt
        0x19t
        0x44t
        0x1t
        0x56t
        0x5ct
        0x9t
        0x55t
        0x0t
        0x42t
        0x43t
        0x47t
        0xct
        0x53t
        0x1t
    .end array-data
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    :sswitch_0
    sget-object v0, Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    sget-object v0, Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {p0, v0, v2}, Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportCallback$Stub;->onIsPermissionRevocationEnabledForAppResult(ZZ)V

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
