.class public final Landroidx/core/content/PackageManagerCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/content/PackageManagerCompat$Api30Impl;,
        Landroidx/core/content/PackageManagerCompat$UnusedAppRestrictionsStatus;
    }
.end annotation


# static fields
.field public static final ACTION_PERMISSION_REVOCATION_SETTINGS:Ljava/lang/String;

.field public static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/16 v0, 0x2d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "8db6a3"

    invoke-static {v0, v1, v2, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/content/PackageManagerCompat;->ACTION_PERMISSION_REVOCATION_SETTINGS:Ljava/lang/String;

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "c0f79c"

    const v2, -0x32d73850

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/content/PackageManagerCompat;->LOG_TAG:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x59t
        0xat
        0x6t
        0x44t
        0xet
        0x5at
        0x5ct
        0x4at
        0xbt
        0x58t
        0x15t
        0x56t
        0x56t
        0x10t
        0x4ct
        0x57t
        0x2t
        0x47t
        0x51t
        0xbt
        0xct
        0x18t
        0x20t
        0x66t
        0x6ct
        0x2bt
        0x3dt
        0x64t
        0x24t
        0x65t
        0x77t
        0x2ft
        0x27t
        0x69t
        0x31t
        0x76t
        0x6at
        0x29t
        0x2bt
        0x65t
        0x32t
        0x7at
        0x77t
        0x2at
        0x31t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x33t
        0x51t
        0x5t
        0x5ct
        0x58t
        0x4t
        0x6t
        0x7dt
        0x7t
        0x59t
        0x58t
        0x4t
        0x6t
        0x42t
        0x25t
        0x58t
        0x54t
        0x13t
        0x2t
        0x44t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areUnusedAppRestrictionsAvailable(Landroid/content/pm/PackageManager;)Z
    .locals 6

    const/16 v5, 0x1e

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_1

    move v0, v1

    :goto_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v3, v5, :cond_2

    move v3, v1

    :goto_1
    invoke-static {p0}, Landroidx/core/content/PackageManagerCompat;->getPermissionRevocationVerifierApp(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    move v4, v1

    :goto_2
    if-nez v0, :cond_0

    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    :cond_0
    :goto_3
    return v1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    :cond_3
    move v4, v2

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_3
.end method

.method public static getPermissionRevocationVerifierApp(Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Landroidx/core/content/PackageManagerCompat;->ACTION_PERMISSION_REVOCATION_SETTINGS:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x7

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "d23f2b"

    const v4, 0x4eb4632d

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xb

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "73a3e8"

    const/16 v5, -0x43e7

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/16 v3, 0x2d

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v4, "f48fa6"

    const/16 v5, 0x1de7

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    if-eqz v1, :cond_2

    :cond_1
    return-object v1

    :cond_2
    move-object v1, v0

    goto :goto_0

    :array_0
    .array-data 1
        0x14t
        0x53t
        0x50t
        0xdt
        0x53t
        0x5t
        0x1t
    .end array-data

    :array_1
    .array-data 1
        0x54t
        0x5ct
        0xct
        0x1dt
        0x0t
        0x40t
        0x56t
        0x5et
        0x11t
        0x5ft
        0x0t
    .end array-data

    :array_2
    .array-data 1
        0x7t
        0x5at
        0x5ct
        0x14t
        0xet
        0x5ft
        0x2t
        0x1at
        0x48t
        0x3t
        0x13t
        0x5bt
        0xft
        0x47t
        0x4bt
        0xft
        0xet
        0x58t
        0x48t
        0x64t
        0x79t
        0x25t
        0x2at
        0x77t
        0x21t
        0x71t
        0x67t
        0x30t
        0x24t
        0x64t
        0x2ft
        0x72t
        0x71t
        0x25t
        0x20t
        0x62t
        0x2ft
        0x7bt
        0x76t
        0x39t
        0x20t
        0x71t
        0x23t
        0x7at
        0x6ct
    .end array-data
.end method

.method public static getUnusedAppRestrictionsStatus(Landroid/content/Context;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/16 v7, 0x1e

    const/4 v1, 0x2

    const/16 v6, 0x1f

    const/4 v5, 0x0

    invoke-static {}, Landroidx/concurrent/futures/ResolvableFuture;->create()Landroidx/concurrent/futures/ResolvableFuture;

    move-result-object v2

    invoke-static {p0}, Landroidx/core/os/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-nez v0, :cond_0

    invoke-virtual {v2, v3}, Landroidx/concurrent/futures/ResolvableFuture;->set(Ljava/lang/Object;)Z

    sget-object v0, Landroidx/core/content/PackageManagerCompat;->LOG_TAG:Ljava/lang/String;

    const/16 v1, 0x22

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v3, "9fa3a2"

    invoke-static {v1, v3, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/content/PackageManagerCompat;->areUnusedAppRestrictionsAvailable(Landroid/content/pm/PackageManager;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/concurrent/futures/ResolvableFuture;->set(Ljava/lang/Object;)Z

    move-object v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge v4, v7, :cond_2

    invoke-virtual {v2, v3}, Landroidx/concurrent/futures/ResolvableFuture;->set(Ljava/lang/Object;)Z

    sget-object v0, Landroidx/core/content/PackageManagerCompat;->LOG_TAG:Ljava/lang/String;

    new-array v1, v6, [B

    fill-array-data v1, :array_1

    const-string v3, "c9191a"

    invoke-static {v1, v3, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    goto :goto_0

    :cond_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x4

    if-lt v3, v6, :cond_5

    invoke-static {p0}, Landroidx/core/content/PackageManagerCompat$Api30Impl;->areUnusedAppRestrictionsEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-lt v4, v6, :cond_3

    const/4 v0, 0x5

    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/concurrent/futures/ResolvableFuture;->set(Ljava/lang/Object;)Z

    :goto_1
    move-object v0, v2

    goto :goto_0

    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/concurrent/futures/ResolvableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v3, v7, :cond_7

    invoke-static {p0}, Landroidx/core/content/PackageManagerCompat$Api30Impl;->areUnusedAppRestrictionsEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/concurrent/futures/ResolvableFuture;->set(Ljava/lang/Object;)Z

    move-object v0, v2

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_2

    :cond_7
    new-instance v0, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;

    invoke-direct {v0, p0}, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/core/content/PackageManagerCompat$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Landroidx/core/content/PackageManagerCompat$$ExternalSyntheticLambda0;-><init>(Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroidx/concurrent/futures/ResolvableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, v2}, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;->connectAndFetchResult(Landroidx/concurrent/futures/ResolvableFuture;)V

    move-object v0, v2

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x6ct
        0x15t
        0x4t
        0x41t
        0x41t
        0x5bt
        0x4at
        0x46t
        0x8t
        0x5dt
        0x41t
        0x5et
        0x56t
        0x5t
        0xat
        0x56t
        0x5t
        0x12t
        0x5dt
        0xft
        0x13t
        0x56t
        0x2t
        0x46t
        0x19t
        0x4t
        0xet
        0x5ct
        0x15t
        0x12t
        0x54t
        0x9t
        0x5t
        0x56t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x37t
        0x58t
        0x43t
        0x5et
        0x54t
        0x15t
        0x43t
        0x6at
        0x75t
        0x72t
        0x11t
        0x17t
        0x6t
        0x4bt
        0x42t
        0x50t
        0x5et
        0xft
        0x43t
        0x5bt
        0x54t
        0x55t
        0x5et
        0x16t
        0x43t
        0x78t
        0x61t
        0x70t
        0x11t
        0x52t
        0x53t
    .end array-data
.end method
