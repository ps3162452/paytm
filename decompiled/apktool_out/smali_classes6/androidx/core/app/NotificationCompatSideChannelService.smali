.class public abstract Landroidx/core/app/NotificationCompatSideChannelService;
.super Landroid/app/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract cancel(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract cancelAll(Ljava/lang/String;)V
.end method

.method checkPermission(ILjava/lang/String;)V
    .locals 6

    invoke-virtual {p0}, Landroidx/core/app/NotificationCompatSideChannelService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x24

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "e45be6"

    const-wide v4, -0x3e3d6a6095000000L    # -6.23591126E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x1f

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "888ce1"

    const v3, 0x4d0ef531    # 1.499021E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/SecurityException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :array_0
    .array-data 1
        0x2bt
        0x5bt
        0x41t
        0xbt
        0x3t
        0x5ft
        0x6t
        0x55t
        0x41t
        0xbt
        0xat
        0x58t
        0x36t
        0x5dt
        0x51t
        0x7t
        0x26t
        0x5et
        0x4t
        0x5at
        0x5bt
        0x7t
        0x9t
        0x65t
        0x0t
        0x46t
        0x43t
        0xbt
        0x6t
        0x53t
        0x5ft
        0x14t
        0x60t
        0xbt
        0x1t
        0x16t
    .end array-data

    :array_1
    .array-data 1
        0x18t
        0x51t
        0x4bt
        0x43t
        0xbt
        0x5et
        0x4ct
        0x18t
        0x59t
        0x16t
        0x11t
        0x59t
        0x57t
        0x4at
        0x51t
        0x19t
        0x0t
        0x55t
        0x18t
        0x5et
        0x57t
        0x11t
        0x45t
        0x41t
        0x59t
        0x5bt
        0x53t
        0x2t
        0x2t
        0x54t
        0x18t
    .end array-data
.end method

.method public abstract notify(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "a3bae8"

    const v4, -0x3184b9e6

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-le v1, v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;

    invoke-direct {v0, p0}, Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;-><init>(Landroidx/core/app/NotificationCompatSideChannelService;)V

    goto :goto_0

    :array_0
    .array-data 1
        0x0t
        0x5dt
        0x6t
        0x13t
        0xat
        0x51t
        0x5t
        0x1dt
        0x11t
        0x14t
        0x15t
        0x48t
        0xet
        0x41t
        0x16t
        0x4ft
        0x27t
        0x71t
        0x2ft
        0x77t
        0x3dt
        0x2ft
        0x2at
        0x6ct
        0x28t
        0x75t
        0x2bt
        0x22t
        0x24t
        0x6ct
        0x28t
        0x7ct
        0x2ct
        0x3et
        0x36t
        0x71t
        0x25t
        0x76t
        0x3dt
        0x22t
        0x2dt
        0x79t
        0x2ft
        0x7dt
        0x27t
        0x2dt
    .end array-data
.end method
