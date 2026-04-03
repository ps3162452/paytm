.class final Landroidx/core/app/ActivityRecreator;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/ActivityRecreator$LifecycleCheckCallbacks;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field protected static final activityThreadClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final mainHandler:Landroid/os/Handler;

.field protected static final mainThreadField:Ljava/lang/reflect/Field;

.field protected static final performStopActivity2ParamsMethod:Ljava/lang/reflect/Method;

.field protected static final performStopActivity3ParamsMethod:Ljava/lang/reflect/Method;

.field protected static final requestRelaunchActivityMethod:Ljava/lang/reflect/Method;

.field protected static final tokenField:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x11

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "902997"

    const-wide v2, -0x3e5c6f22b8000000L    # -1.64130468E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/app/ActivityRecreator;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Landroidx/core/app/ActivityRecreator;->mainHandler:Landroid/os/Handler;

    invoke-static {}, Landroidx/core/app/ActivityRecreator;->getActivityThreadClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroidx/core/app/ActivityRecreator;->activityThreadClass:Ljava/lang/Class;

    invoke-static {}, Landroidx/core/app/ActivityRecreator;->getMainThreadField()Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroidx/core/app/ActivityRecreator;->mainThreadField:Ljava/lang/reflect/Field;

    invoke-static {}, Landroidx/core/app/ActivityRecreator;->getTokenField()Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroidx/core/app/ActivityRecreator;->tokenField:Ljava/lang/reflect/Field;

    invoke-static {v0}, Landroidx/core/app/ActivityRecreator;->getPerformStopActivity3Params(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroidx/core/app/ActivityRecreator;->performStopActivity3ParamsMethod:Ljava/lang/reflect/Method;

    invoke-static {v0}, Landroidx/core/app/ActivityRecreator;->getPerformStopActivity2Params(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroidx/core/app/ActivityRecreator;->performStopActivity2ParamsMethod:Ljava/lang/reflect/Method;

    invoke-static {v0}, Landroidx/core/app/ActivityRecreator;->getRequestRelaunchActivityMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/core/app/ActivityRecreator;->requestRelaunchActivityMethod:Ljava/lang/reflect/Method;

    return-void

    :array_0
    .array-data 1
        0x78t
        0x53t
        0x46t
        0x50t
        0x4ft
        0x5et
        0x4dt
        0x49t
        0x60t
        0x5ct
        0x5at
        0x45t
        0x5ct
        0x51t
        0x46t
        0x56t
        0x4bt
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getActivityThreadClass()Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    const/16 v0, 0x1a

    :try_start_0
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "e7892d"

    const-wide v2, 0x41d5be8a9d800000L    # 1.459235446E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    :array_0
    .array-data 1
        0x4t
        0x59t
        0x5ct
        0x4bt
        0x5dt
        0xdt
        0x1t
        0x19t
        0x59t
        0x49t
        0x42t
        0x4at
        0x24t
        0x54t
        0x4ct
        0x50t
        0x44t
        0xdt
        0x11t
        0x4et
        0x6ct
        0x51t
        0x40t
        0x1t
        0x4t
        0x53t
    .end array-data
.end method

.method private static getMainThreadField()Ljava/lang/reflect/Field;
    .locals 4

    :try_start_0
    const-class v0, Landroid/app/Activity;

    const/16 v1, 0xb

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "7c8959"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    :array_0
    .array-data 1
        0x5at
        0x2et
        0x59t
        0x50t
        0x5bt
        0x6dt
        0x5ft
        0x11t
        0x5dt
        0x58t
        0x51t
    .end array-data
.end method

.method private static getPerformStopActivity2Params(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/16 v1, 0x13

    :try_start_0
    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "1a7e3a"

    const v3, -0x31187920

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/os/IBinder;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x41t
        0x4t
        0x45t
        0x3t
        0x5ct
        0x13t
        0x5ct
        0x32t
        0x43t
        0xat
        0x43t
        0x20t
        0x52t
        0x15t
        0x5et
        0x13t
        0x5at
        0x15t
        0x48t
    .end array-data
.end method

.method private static getPerformStopActivity3Params(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/16 v1, 0x13

    :try_start_0
    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "d7392c"

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/os/IBinder;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x14t
        0x52t
        0x41t
        0x5ft
        0x5dt
        0x11t
        0x9t
        0x64t
        0x47t
        0x56t
        0x42t
        0x22t
        0x7t
        0x43t
        0x5at
        0x4ft
        0x5bt
        0x17t
        0x1dt
    .end array-data
.end method

.method private static getRequestRelaunchActivityMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {}, Landroidx/core/app/ActivityRecreator;->needsRelaunchCall()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    const/16 v0, 0x17

    :try_start_0
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v2, "09b48f"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/os/IBinder;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/util/List;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Ljava/util/List;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-class v4, Landroid/content/res/Configuration;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-class v4, Landroid/content/res/Configuration;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x42t
        0x5ct
        0x13t
        0x41t
        0x5dt
        0x15t
        0x44t
        0x6bt
        0x7t
        0x58t
        0x59t
        0x13t
        0x5et
        0x5at
        0xat
        0x75t
        0x5bt
        0x12t
        0x59t
        0x4ft
        0xbt
        0x40t
        0x41t
    .end array-data
.end method

.method private static getTokenField()Ljava/lang/reflect/Field;
    .locals 4

    :try_start_0
    const-class v0, Landroid/app/Activity;

    const/4 v1, 0x6

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "069d3e"

    const/16 v3, -0x4943

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    :array_0
    .array-data 1
        0x5dt
        0x62t
        0x56t
        0xft
        0x56t
        0xbt
    .end array-data
.end method

.method private static needsRelaunchCall()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static queueOnStopIfNecessary(Ljava/lang/Object;ILandroid/app/Activity;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Landroidx/core/app/ActivityRecreator;->tokenField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-eq v3, p1, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    sget-object v3, Landroidx/core/app/ActivityRecreator;->mainThreadField:Ljava/lang/reflect/Field;

    invoke-virtual {v3, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Landroidx/core/app/ActivityRecreator;->mainHandler:Landroid/os/Handler;

    new-instance v5, Landroidx/core/app/ActivityRecreator$3;

    invoke-direct {v5, v3, v2}, Landroidx/core/app/ActivityRecreator$3;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    sget-object v3, Landroidx/core/app/ActivityRecreator;->LOG_TAG:Ljava/lang/String;

    const/16 v4, 0x25

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    const-string v5, "7c7b0c"

    invoke-static {v4, v5, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    goto :goto_0

    :array_0
    .array-data 1
        0x72t
        0x1bt
        0x54t
        0x7t
        0x40t
        0x17t
        0x5et
        0xct
        0x59t
        0x42t
        0x47t
        0xbt
        0x5et
        0xft
        0x52t
        0x42t
        0x56t
        0x6t
        0x43t
        0x0t
        0x5ft
        0xbt
        0x5et
        0x4t
        0x17t
        0x5t
        0x5et
        0x7t
        0x5ct
        0x7t
        0x17t
        0x15t
        0x56t
        0xet
        0x45t
        0x6t
        0x44t
    .end array-data
.end method

.method static recreate(Landroid/app/Activity;)Z
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Landroidx/core/app/ActivityRecreator;->needsRelaunchCall()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Landroidx/core/app/ActivityRecreator;->requestRelaunchActivityMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    sget-object v2, Landroidx/core/app/ActivityRecreator;->performStopActivity2ParamsMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_2

    sget-object v2, Landroidx/core/app/ActivityRecreator;->performStopActivity3ParamsMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    :try_start_0
    sget-object v2, Landroidx/core/app/ActivityRecreator;->tokenField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    sget-object v3, Landroidx/core/app/ActivityRecreator;->mainThreadField:Ljava/lang/reflect/Field;

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v4

    new-instance v5, Landroidx/core/app/ActivityRecreator$LifecycleCheckCallbacks;

    invoke-direct {v5, p0}, Landroidx/core/app/ActivityRecreator$LifecycleCheckCallbacks;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v4, v5}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    sget-object v6, Landroidx/core/app/ActivityRecreator;->mainHandler:Landroid/os/Handler;

    new-instance v7, Landroidx/core/app/ActivityRecreator$1;

    invoke-direct {v7, v5, v2}, Landroidx/core/app/ActivityRecreator$1;-><init>(Landroidx/core/app/ActivityRecreator$LifecycleCheckCallbacks;Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Landroidx/core/app/ActivityRecreator;->needsRelaunchCall()Z

    move-result v7

    if-eqz v7, :cond_5

    sget-object v7, Landroidx/core/app/ActivityRecreator;->requestRelaunchActivityMethod:Ljava/lang/reflect/Method;

    const/16 v8, 0x9

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    const/4 v2, 0x1

    const/4 v9, 0x0

    aput-object v9, v8, v2

    const/4 v2, 0x2

    const/4 v9, 0x0

    aput-object v9, v8, v2

    const/4 v2, 0x3

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    const/4 v2, 0x4

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v2

    const/4 v2, 0x5

    const/4 v9, 0x0

    aput-object v9, v8, v2

    const/4 v2, 0x6

    const/4 v9, 0x0

    aput-object v9, v8, v2

    const/4 v2, 0x7

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v2

    const/16 v2, 0x8

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-virtual {v7, v3, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    :try_start_2
    new-instance v2, Landroidx/core/app/ActivityRecreator$2;

    invoke-direct {v2, v4, v5}, Landroidx/core/app/ActivityRecreator$2;-><init>(Landroid/app/Application;Landroidx/core/app/ActivityRecreator$LifecycleCheckCallbacks;)V

    invoke-virtual {v6, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move v0, v1

    goto/16 :goto_0

    :cond_5
    :try_start_3
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_4
    sget-object v2, Landroidx/core/app/ActivityRecreator;->mainHandler:Landroid/os/Handler;

    new-instance v3, Landroidx/core/app/ActivityRecreator$2;

    invoke-direct {v3, v4, v5}, Landroidx/core/app/ActivityRecreator$2;-><init>(Landroid/app/Application;Landroidx/core/app/ActivityRecreator$LifecycleCheckCallbacks;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
