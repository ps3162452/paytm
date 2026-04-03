.class Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHasBoundService:Z

.field mResultFuture:Landroidx/concurrent/futures/ResolvableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/concurrent/futures/ResolvableFuture",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mUnusedAppRestrictionsService:Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportService;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;->mUnusedAppRestrictionsService:Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportService;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;->mHasBoundService:Z

    iput-object p1, p0, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getBackportCallback()Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportCallback;
    .locals 1

    new-instance v0, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection$1;

    invoke-direct {v0, p0}, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection$1;-><init>(Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;)V

    return-object v0
.end method


# virtual methods
.method public connectAndFetchResult(Landroidx/concurrent/futures/ResolvableFuture;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/concurrent/futures/ResolvableFuture",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x1

    iget-boolean v0, p0, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;->mHasBoundService:Z

    if-nez v0, :cond_0

    iput-boolean v4, p0, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;->mHasBoundService:Z

    iput-object p1, p0, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;->mResultFuture:Landroidx/concurrent/futures/ResolvableFuture;

    new-instance v0, Landroid/content/Intent;

    const/16 v1, 0x57

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "4e82a7"

    const/16 v3, -0x3a90

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/content/PackageManagerCompat;->getPermissionRevocationVerifierApp(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0, p0, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x4b

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "776194"

    const-wide/32 v4, -0x69b96fa9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x55t
        0xbt
        0x5ct
        0x40t
        0xet
        0x5et
        0x50t
        0x4bt
        0x4bt
        0x47t
        0x11t
        0x47t
        0x5bt
        0x17t
        0x4ct
        0x1ct
        0x14t
        0x59t
        0x41t
        0x16t
        0x5dt
        0x56t
        0x0t
        0x47t
        0x44t
        0x17t
        0x5dt
        0x41t
        0x15t
        0x45t
        0x5dt
        0x6t
        0x4ct
        0x5bt
        0xet
        0x59t
        0x47t
        0x4bt
        0x59t
        0x51t
        0x15t
        0x5et
        0x5bt
        0xbt
        0x16t
        0x71t
        0x14t
        0x44t
        0x40t
        0xat
        0x55t
        0x67t
        0xft
        0x42t
        0x47t
        0x0t
        0x5ct
        0x73t
        0x11t
        0x47t
        0x66t
        0x0t
        0x4bt
        0x46t
        0x13t
        0x5et
        0x57t
        0x11t
        0x51t
        0x5dt
        0xft
        0x44t
        0x76t
        0x4t
        0x5bt
        0x59t
        0x11t
        0x58t
        0x46t
        0x11t
        0x6bt
        0x57t
        0x13t
        0x41t
        0x5dt
        0x6t
        0x5dt
    .end array-data

    :array_1
    .array-data 1
        0x72t
        0x56t
        0x55t
        0x59t
        0x19t
        0x61t
        0x59t
        0x42t
        0x45t
        0x54t
        0x5dt
        0x75t
        0x47t
        0x47t
        0x64t
        0x54t
        0x4at
        0x40t
        0x45t
        0x5et
        0x55t
        0x45t
        0x50t
        0x5bt
        0x59t
        0x44t
        0x74t
        0x50t
        0x5at
        0x5ft
        0x47t
        0x58t
        0x44t
        0x45t
        0x6at
        0x51t
        0x45t
        0x41t
        0x5ft
        0x52t
        0x5ct
        0x77t
        0x58t
        0x59t
        0x58t
        0x54t
        0x5at
        0x40t
        0x5et
        0x58t
        0x58t
        0x11t
        0x5at
        0x55t
        0x59t
        0x17t
        0x59t
        0x5ft
        0x55t
        0x4dt
        0x17t
        0x55t
        0x53t
        0x11t
        0x5bt
        0x5bt
        0x42t
        0x59t
        0x52t
        0x11t
        0x56t
        0x5at
        0x54t
        0x52t
        0x18t
    .end array-data
.end method

.method public disconnectFromService()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;->mHasBoundService:Z

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;->mHasBoundService:Z

    iget-object v0, p0, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x28

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "b98691"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x0t
        0x50t
        0x56t
        0x52t
        0x6at
        0x54t
        0x10t
        0x4ft
        0x51t
        0x55t
        0x5ct
        0x11t
        0xft
        0x4ct
        0x4bt
        0x42t
        0x19t
        0x53t
        0x7t
        0x19t
        0x5bt
        0x57t
        0x55t
        0x5dt
        0x7t
        0x5dt
        0x18t
        0x54t
        0x5ct
        0x57t
        0xdt
        0x4bt
        0x5dt
        0x16t
        0x4ct
        0x5ft
        0x0t
        0x50t
        0x56t
        0x52t
    .end array-data
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    invoke-static {p2}, Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportService$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportService;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;->mUnusedAppRestrictionsService:Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportService;

    :try_start_0
    invoke-direct {p0}, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;->getBackportCallback()Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportService;->isPermissionRevocationEnabledForApp(Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;->mResultFuture:Landroidx/concurrent/futures/ResolvableFuture;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/concurrent/futures/ResolvableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;->mUnusedAppRestrictionsService:Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportService;

    return-void
.end method
