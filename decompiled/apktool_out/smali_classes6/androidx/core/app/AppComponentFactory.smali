.class public Landroidx/core/app/AppComponentFactory;
.super Landroid/app/AppComponentFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/AppComponentFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public final instantiateActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Landroidx/core/app/AppComponentFactory;->instantiateActivityCompat(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/app/CoreComponentFactory;->checkCompatWrapper(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public instantiateActivityCompat(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p2, v0, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :catch_0
    move-exception v0

    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    const/16 v2, 0x19

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "c20f24"

    const-wide/32 v4, -0x25a49184

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x20t
        0x5dt
        0x45t
        0xat
        0x56t
        0x5at
        0x44t
        0x46t
        0x10t
        0x5t
        0x53t
        0x58t
        0xft
        0x12t
        0x53t
        0x9t
        0x5ct
        0x47t
        0x17t
        0x40t
        0x45t
        0x5t
        0x46t
        0x5bt
        0x11t
    .end array-data
.end method

.method public final instantiateApplication(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/app/Application;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/core/app/AppComponentFactory;->instantiateApplicationCompat(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/app/CoreComponentFactory;->checkCompatWrapper(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    return-object v0
.end method

.method public instantiateApplicationCompat(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/app/Application;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p2, v0, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/app/Application;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :catch_0
    move-exception v0

    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    const/16 v2, 0x19

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "5aef0e"

    const v4, 0x4e80e95c

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x76t
        0xet
        0x10t
        0xat
        0x54t
        0xbt
        0x12t
        0x15t
        0x45t
        0x5t
        0x51t
        0x9t
        0x59t
        0x41t
        0x6t
        0x9t
        0x5et
        0x16t
        0x41t
        0x13t
        0x10t
        0x5t
        0x44t
        0xat
        0x47t
    .end array-data
.end method

.method public final instantiateProvider(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/content/ContentProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/core/app/AppComponentFactory;->instantiateProviderCompat(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/content/ContentProvider;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/app/CoreComponentFactory;->checkCompatWrapper(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentProvider;

    return-object v0
.end method

.method public instantiateProviderCompat(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/content/ContentProvider;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p2, v0, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/content/ContentProvider;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentProvider;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :catch_0
    move-exception v0

    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    const/16 v2, 0x19

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "33c804"

    const-wide v4, -0x3e2cfe3e93800000L    # -1.275528626E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x70t
        0x5ct
        0x16t
        0x54t
        0x54t
        0x5at
        0x14t
        0x47t
        0x43t
        0x5bt
        0x51t
        0x58t
        0x5ft
        0x13t
        0x0t
        0x57t
        0x5et
        0x47t
        0x47t
        0x41t
        0x16t
        0x5bt
        0x44t
        0x5bt
        0x41t
    .end array-data
.end method

.method public final instantiateReceiver(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/BroadcastReceiver;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Landroidx/core/app/AppComponentFactory;->instantiateReceiverCompat(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/app/CoreComponentFactory;->checkCompatWrapper(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method public instantiateReceiverCompat(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/BroadcastReceiver;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p2, v0, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :catch_0
    move-exception v0

    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    const/16 v2, 0x19

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "8f3d07"

    const/16 v4, -0x4027

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_0

    :array_0
    .array-data 1
        0x7bt
        0x9t
        0x46t
        0x8t
        0x54t
        0x59t
        0x1ft
        0x12t
        0x13t
        0x7t
        0x51t
        0x5bt
        0x54t
        0x46t
        0x50t
        0xbt
        0x5et
        0x44t
        0x4ct
        0x14t
        0x46t
        0x7t
        0x44t
        0x58t
        0x4at
    .end array-data
.end method

.method public final instantiateService(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Service;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Landroidx/core/app/AppComponentFactory;->instantiateServiceCompat(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Service;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/app/CoreComponentFactory;->checkCompatWrapper(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Service;

    return-object v0
.end method

.method public instantiateServiceCompat(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Service;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p2, v0, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/app/Service;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Service;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :catch_0
    move-exception v0

    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    const/16 v2, 0x19

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "1cdcc8"

    const v4, 0x4ef60910

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x72t
        0xct
        0x11t
        0xft
        0x7t
        0x56t
        0x16t
        0x17t
        0x44t
        0x0t
        0x2t
        0x54t
        0x5dt
        0x43t
        0x7t
        0xct
        0xdt
        0x4bt
        0x45t
        0x11t
        0x11t
        0x0t
        0x17t
        0x57t
        0x43t
    .end array-data
.end method
