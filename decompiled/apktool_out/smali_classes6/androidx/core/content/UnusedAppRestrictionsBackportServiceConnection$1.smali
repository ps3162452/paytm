.class Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection$1;
.super Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportCallback$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;->getBackportCallback()Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;


# direct methods
.method constructor <init>(Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;)V
    .locals 0

    iput-object p1, p0, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection$1;->this$0:Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;

    invoke-direct {p0}, Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onIsPermissionRevocationEnabledForAppResult(ZZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection$1;->this$0:Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;

    iget-object v0, v0, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;->mResultFuture:Landroidx/concurrent/futures/ResolvableFuture;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/concurrent/futures/ResolvableFuture;->set(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection$1;->this$0:Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;

    iget-object v0, v0, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;->mResultFuture:Landroidx/concurrent/futures/ResolvableFuture;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/concurrent/futures/ResolvableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection$1;->this$0:Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;

    iget-object v0, v0, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;->mResultFuture:Landroidx/concurrent/futures/ResolvableFuture;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/concurrent/futures/ResolvableFuture;->set(Ljava/lang/Object;)Z

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "9eb399"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x46

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "acd741"

    const/16 v3, 0x37b7

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x69t
        0x4t
        0x1t
        0x58t
        0x58t
        0x5et
        0x5ct
        0x28t
        0x3t
        0x5dt
        0x58t
        0x5et
        0x5ct
        0x17t
        0x21t
        0x5ct
        0x54t
        0x49t
        0x58t
        0x11t
    .end array-data

    :array_1
    .array-data 1
        0x34t
        0xdt
        0x5t
        0x55t
        0x58t
        0x54t
        0x41t
        0x17t
        0xbt
        0x17t
        0x46t
        0x54t
        0x15t
        0x11t
        0xdt
        0x52t
        0x42t
        0x54t
        0x41t
        0x17t
        0xct
        0x52t
        0x14t
        0x41t
        0x4t
        0x11t
        0x9t
        0x5et
        0x47t
        0x42t
        0x8t
        0xct
        0xat
        0x17t
        0x46t
        0x54t
        0x17t
        0xct
        0x7t
        0x56t
        0x40t
        0x58t
        0xet
        0xdt
        0x44t
        0x44t
        0x51t
        0x45t
        0x15t
        0xat
        0xat
        0x50t
        0x14t
        0x57t
        0x13t
        0xct
        0x9t
        0x17t
        0x40t
        0x59t
        0x4t
        0x43t
        0x6t
        0x56t
        0x57t
        0x5at
        0x11t
        0xct
        0x16t
        0x43t
    .end array-data
.end method
