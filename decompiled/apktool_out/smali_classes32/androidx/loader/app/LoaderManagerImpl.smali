.class Landroidx/loader/app/LoaderManagerImpl;
.super Landroidx/loader/app/LoaderManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;,
        Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;,
        Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;
    }
.end annotation


# static fields
.field static DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

.field private final mLoaderViewModel:Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "5bfece"

    const-wide v2, 0x41cb8c971e000000L    # 9.24397116E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/loader/app/LoaderManagerImpl;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Landroidx/loader/app/LoaderManagerImpl;->DEBUG:Z

    return-void

    :array_0
    .array-data 1
        0x79t
        0xdt
        0x7t
        0x1t
        0x6t
        0x17t
        0x78t
        0x3t
        0x8t
        0x4t
        0x4t
        0x0t
        0x47t
    .end array-data
.end method

.method constructor <init>(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/ViewModelStore;)V
    .locals 1

    invoke-direct {p0}, Landroidx/loader/app/LoaderManager;-><init>()V

    iput-object p1, p0, Landroidx/loader/app/LoaderManagerImpl;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    invoke-static {p2}, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->getInstance(Landroidx/lifecycle/ViewModelStore;)Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    move-result-object v0

    iput-object v0, p0, Landroidx/loader/app/LoaderManagerImpl;->mLoaderViewModel:Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    return-void
.end method

.method private createAndInstallLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;Landroidx/loader/content/Loader;)Landroidx/loader/content/Loader;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Landroidx/loader/app/LoaderManager$LoaderCallbacks",
            "<TD;>;",
            "Landroidx/loader/content/Loader",
            "<TD;>;)",
            "Landroidx/loader/content/Loader",
            "<TD;>;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl;->mLoaderViewModel:Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    invoke-virtual {v0}, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->startCreatingLoader()V

    invoke-interface {p3, p1, p2}, Landroidx/loader/app/LoaderManager$LoaderCallbacks;->onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isMemberClass()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    new-instance v1, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;

    invoke-direct {v1, p1, p2, v0, p4}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;-><init>(ILandroid/os/Bundle;Landroidx/loader/content/Loader;Landroidx/loader/content/Loader;)V

    sget-boolean v0, Landroidx/loader/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x15

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "804220"

    const-wide/32 v4, -0x1dd15974

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v2, Landroidx/loader/app/LoaderManagerImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl;->mLoaderViewModel:Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    invoke-virtual {v0, p1, v1}, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->putLoader(ILandroidx/loader/app/LoaderManagerImpl$LoaderInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl;->mLoaderViewModel:Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    invoke-virtual {v0}, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->finishCreatingLoader()V

    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {v1, v0, p3}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->setCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    move-result-object v0

    return-object v0

    :cond_2
    :try_start_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x51

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "a8ebb6"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/loader/app/LoaderManagerImpl;->mLoaderViewModel:Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    invoke-virtual {v1}, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->finishCreatingLoader()V

    throw v0

    :cond_3
    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x34

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "ee73eb"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :array_0
    .array-data 1
        0x18t
        0x10t
        0x77t
        0x40t
        0x57t
        0x51t
        0x4ct
        0x55t
        0x50t
        0x12t
        0x5ct
        0x55t
        0x4ft
        0x10t
        0x58t
        0x5dt
        0x53t
        0x54t
        0x5dt
        0x42t
        0x14t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x2et
        0x5at
        0xft
        0x7t
        0x1t
        0x42t
        0x41t
        0x4at
        0x0t
        0x16t
        0x17t
        0x44t
        0xft
        0x5dt
        0x1t
        0x42t
        0x4t
        0x44t
        0xet
        0x55t
        0x45t
        0xdt
        0xct
        0x75t
        0x13t
        0x5dt
        0x4t
        0x16t
        0x7t
        0x7at
        0xet
        0x59t
        0x1t
        0x7t
        0x10t
        0x16t
        0xct
        0x4dt
        0x16t
        0x16t
        0x42t
        0x58t
        0xet
        0x4ct
        0x45t
        0x0t
        0x7t
        0x16t
        0x0t
        0x18t
        0xbt
        0xdt
        0xct
        0x1bt
        0x12t
        0x4ct
        0x4t
        0x16t
        0xbt
        0x55t
        0x41t
        0x51t
        0xbt
        0xct
        0x7t
        0x44t
        0x41t
        0x55t
        0x0t
        0xft
        0x0t
        0x53t
        0x13t
        0x18t
        0x6t
        0xet
        0x3t
        0x45t
        0x12t
        0x2t
        0x45t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x2at
        0x7t
        0x5dt
        0x56t
        0x6t
        0x16t
        0x45t
        0x17t
        0x52t
        0x47t
        0x10t
        0x10t
        0xbt
        0x0t
        0x53t
        0x13t
        0x3t
        0x10t
        0xat
        0x8t
        0x17t
        0x5ct
        0xbt
        0x21t
        0x17t
        0x0t
        0x56t
        0x47t
        0x0t
        0x2et
        0xat
        0x4t
        0x53t
        0x56t
        0x17t
        0x42t
        0x8t
        0x10t
        0x44t
        0x47t
        0x45t
        0xct
        0xat
        0x11t
        0x17t
        0x51t
        0x0t
        0x42t
        0xbt
        0x10t
        0x5bt
        0x5ft
    .end array-data
.end method


# virtual methods
.method public destroyLoader(I)V
    .locals 6

    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl;->mLoaderViewModel:Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    invoke-virtual {v0}, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->isCreatingLoader()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2

    sget-boolean v0, Landroidx/loader/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x11

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "72eeb1"

    const/16 v3, -0x46e1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "e61e38"

    const-wide/32 v4, -0x68c7d9ae

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v1, Landroidx/loader/app/LoaderManagerImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl;->mLoaderViewModel:Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    invoke-virtual {v0, p1}, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->getLoader(I)Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->destroy(Z)Landroidx/loader/content/Loader;

    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl;->mLoaderViewModel:Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    invoke-virtual {v0, p1}, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->removeLoader(I)V

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x2f

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "532f73"

    const v3, 0x4d31a932

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x1e

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "9ee5ea"

    const-wide v4, -0x3e5bede372000000L    # -1.68365639E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x53t
        0x57t
        0x16t
        0x11t
        0x10t
        0x5et
        0x4et
        0x7et
        0xat
        0x4t
        0x6t
        0x54t
        0x45t
        0x12t
        0xct
        0xbt
        0x42t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x45t
        0x59t
        0x57t
        0x45t
    .end array-data

    :array_2
    .array-data 1
        0x51t
        0x56t
        0x41t
        0x12t
        0x45t
        0x5ct
        0x4ct
        0x7ft
        0x5dt
        0x7t
        0x53t
        0x56t
        0x47t
        0x13t
        0x5ft
        0x13t
        0x44t
        0x47t
        0x15t
        0x51t
        0x57t
        0x46t
        0x54t
        0x52t
        0x59t
        0x5ft
        0x57t
        0x2t
        0x17t
        0x5ct
        0x5bt
        0x13t
        0x46t
        0xet
        0x52t
        0x13t
        0x58t
        0x52t
        0x5bt
        0x8t
        0x17t
        0x47t
        0x5dt
        0x41t
        0x57t
        0x7t
        0x53t
    .end array-data

    :array_3
    .array-data 1
        0x7at
        0x4t
        0x9t
        0x59t
        0x0t
        0x5t
        0x19t
        0x12t
        0xdt
        0x5ct
        0x9t
        0x4t
        0x19t
        0x6t
        0x17t
        0x50t
        0x4t
        0x15t
        0x50t
        0xbt
        0x2t
        0x15t
        0x4t
        0x41t
        0x55t
        0xat
        0x4t
        0x51t
        0x0t
        0x13t
    .end array-data
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl;->mLoaderViewModel:Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getLoader(I)Landroidx/loader/content/Loader;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I)",
            "Landroidx/loader/content/Loader",
            "<TD;>;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl;->mLoaderViewModel:Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    invoke-virtual {v0}, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->isCreatingLoader()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl;->mLoaderViewModel:Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    invoke-virtual {v0, p1}, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->getLoader(I)Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->getLoader()Landroidx/loader/content/Loader;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x1e

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "17fc12"

    const-wide/32 v4, 0x66a3f75c

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x72t
        0x56t
        0xat
        0xft
        0x54t
        0x56t
        0x11t
        0x40t
        0xet
        0xat
        0x5dt
        0x57t
        0x11t
        0x54t
        0x14t
        0x6t
        0x50t
        0x46t
        0x58t
        0x59t
        0x1t
        0x43t
        0x50t
        0x12t
        0x5dt
        0x58t
        0x7t
        0x7t
        0x54t
        0x40t
    .end array-data
.end method

.method public hasRunningLoaders()Z
    .locals 1

    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl;->mLoaderViewModel:Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    invoke-virtual {v0}, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->hasRunningLoaders()Z

    move-result v0

    return v0
.end method

.method public initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Landroidx/loader/app/LoaderManager$LoaderCallbacks",
            "<TD;>;)",
            "Landroidx/loader/content/Loader",
            "<TD;>;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl;->mLoaderViewModel:Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    invoke-virtual {v0}, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->isCreatingLoader()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl;->mLoaderViewModel:Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    invoke-virtual {v0, p1}, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->getLoader(I)Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;

    move-result-object v0

    sget-boolean v1, Landroidx/loader/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xe

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "aa8b26"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v2, 0x7

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "19ec96"

    const v4, -0x32fce4d1    # -1.374748E8f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v2, Landroidx/loader/app/LoaderManagerImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/loader/app/LoaderManagerImpl;->createAndInstallLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;Landroidx/loader/content/Loader;)Landroidx/loader/content/Loader;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    sget-boolean v1, Landroidx/loader/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1b

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v3, "b953e3"

    const-wide/32 v4, 0x704b2bcb

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v2, Landroidx/loader/app/LoaderManagerImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Landroidx/loader/app/LoaderManagerImpl;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {v0, v1, p3}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->setCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x2c

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "c94303"

    const-wide/32 v4, 0x4eaa5504

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x1e

    new-array v1, v1, [B

    fill-array-data v1, :array_4

    const-string v2, "d15f2c"

    const-wide v4, 0x41d4418277400000L    # 1.359350237E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x8t
        0xft
        0x51t
        0x16t
        0x7et
        0x59t
        0x0t
        0x5t
        0x5dt
        0x10t
        0x12t
        0x5ft
        0xft
        0x41t
    .end array-data

    nop

    :array_1
    .array-data 1
        0xbt
        0x19t
        0x4t
        0x11t
        0x5et
        0x45t
        0xct
    .end array-data

    :array_2
    .array-data 1
        0x42t
        0x19t
        0x67t
        0x56t
        0x48t
        0x46t
        0x11t
        0x50t
        0x5bt
        0x54t
        0x45t
        0x56t
        0x1at
        0x50t
        0x46t
        0x47t
        0xct
        0x5dt
        0x5t
        0x19t
        0x59t
        0x5ct
        0x4t
        0x57t
        0x7t
        0x4bt
        0x15t
    .end array-data

    :array_3
    .array-data 1
        0xat
        0x57t
        0x5dt
        0x47t
        0x7ct
        0x5ct
        0x2t
        0x5dt
        0x51t
        0x41t
        0x10t
        0x5et
        0x16t
        0x4at
        0x40t
        0x13t
        0x52t
        0x56t
        0x43t
        0x5at
        0x55t
        0x5ft
        0x5ct
        0x56t
        0x7t
        0x19t
        0x5bt
        0x5dt
        0x10t
        0x47t
        0xbt
        0x5ct
        0x14t
        0x5et
        0x51t
        0x5at
        0xdt
        0x19t
        0x40t
        0x5bt
        0x42t
        0x56t
        0x2t
        0x5dt
    .end array-data

    :array_4
    .array-data 1
        0x27t
        0x50t
        0x59t
        0xat
        0x57t
        0x7t
        0x44t
        0x46t
        0x5dt
        0xft
        0x5et
        0x6t
        0x44t
        0x52t
        0x47t
        0x3t
        0x53t
        0x17t
        0xdt
        0x5ft
        0x52t
        0x46t
        0x53t
        0x43t
        0x8t
        0x5et
        0x54t
        0x2t
        0x57t
        0x11t
    .end array-data
.end method

.method public markForRedelivery()V
    .locals 1

    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl;->mLoaderViewModel:Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    invoke-virtual {v0}, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->markForRedelivery()V

    return-void
.end method

.method public restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Landroidx/loader/app/LoaderManager$LoaderCallbacks",
            "<TD;>;)",
            "Landroidx/loader/content/Loader",
            "<TD;>;"
        }
    .end annotation

    const/4 v3, 0x1

    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl;->mLoaderViewModel:Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    invoke-virtual {v0}, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->isCreatingLoader()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2

    sget-boolean v0, Landroidx/loader/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x11

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "03fe2d"

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "1c44b5"

    const/16 v3, -0x5fbc

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Landroidx/loader/app/LoaderManagerImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl;->mLoaderViewModel:Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    invoke-virtual {v0, p1}, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->getLoader(I)Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->destroy(Z)Landroidx/loader/content/Loader;

    move-result-object v0

    :cond_1
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/loader/app/LoaderManagerImpl;->createAndInstallLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;Landroidx/loader/content/Loader;)Landroidx/loader/content/Loader;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x2f

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "ee0dfa"

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x1e

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "3f1024"

    const-wide/32 v4, 0x2d86f745

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x42t
        0x56t
        0x15t
        0x11t
        0x53t
        0x16t
        0x44t
        0x7ft
        0x9t
        0x4t
        0x56t
        0x1t
        0x42t
        0x13t
        0xft
        0xbt
        0x12t
    .end array-data

    nop

    :array_1
    .array-data 1
        0xbt
        0x43t
        0x55t
        0x46t
        0x5t
        0x46t
        0xct
    .end array-data

    :array_2
    .array-data 1
        0x17t
        0x0t
        0x43t
        0x10t
        0x7t
        0x13t
        0x11t
        0x29t
        0x5ft
        0x5t
        0x2t
        0x4t
        0x17t
        0x45t
        0x5dt
        0x11t
        0x15t
        0x15t
        0x45t
        0x7t
        0x55t
        0x44t
        0x5t
        0x0t
        0x9t
        0x9t
        0x55t
        0x0t
        0x46t
        0xet
        0xbt
        0x45t
        0x44t
        0xct
        0x3t
        0x41t
        0x8t
        0x4t
        0x59t
        0xat
        0x46t
        0x15t
        0xdt
        0x17t
        0x55t
        0x5t
        0x2t
    .end array-data

    :array_3
    .array-data 1
        0x70t
        0x7t
        0x5dt
        0x5ct
        0x57t
        0x50t
        0x13t
        0x11t
        0x59t
        0x59t
        0x5et
        0x51t
        0x13t
        0x5t
        0x43t
        0x55t
        0x53t
        0x40t
        0x5at
        0x8t
        0x56t
        0x10t
        0x53t
        0x14t
        0x5ft
        0x9t
        0x50t
        0x54t
        0x57t
        0x46t
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0xe

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "7f8327"

    const-wide/32 v4, 0x34f11a62

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "1f6f92"

    const-wide v4, 0x41ae0ea598000000L    # 2.52138188E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/loader/app/LoaderManagerImpl;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/16 v4, 0x1a

    aput-byte v4, v2, v3

    const-string v3, "a26d08"

    const-wide/32 v4, 0xe27442a

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "0c852a"

    const-wide/32 v4, 0x4a96d5f

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x7bt
        0x9t
        0x59t
        0x57t
        0x57t
        0x45t
        0x7at
        0x7t
        0x56t
        0x52t
        0x55t
        0x52t
        0x45t
        0x1dt
    .end array-data

    nop

    :array_1
    .array-data 1
        0x11t
        0xft
        0x58t
        0x46t
    .end array-data

    :array_2
    .array-data 1
        0x4dt
        0x1et
    .end array-data
.end method
