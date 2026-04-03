.class public final Landroidx/core/os/HandlerCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/os/HandlerCompat$Api28Impl;,
        Landroidx/core/os/HandlerCompat$Api29Impl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "9efd73"

    const-wide v2, -0x3e395414de000000L    # -7.60731204E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/os/HandlerCompat;->TAG:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x71t
        0x4t
        0x8t
        0x0t
        0x5bt
        0x56t
        0x4bt
        0x26t
        0x9t
        0x9t
        0x47t
        0x52t
        0x4dt
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAsync(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 5

    const/4 v4, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Landroidx/core/os/HandlerCompat$Api28Impl;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_3

    :try_start_0
    const-class v0, Landroid/os/Handler;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/os/Looper;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Landroid/os/Handler$Callback;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-nez v1, :cond_2

    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :catch_1
    move-exception v0

    :goto_1
    sget-object v1, Landroidx/core/os/HandlerCompat;->TAG:Ljava/lang/String;

    const/16 v2, 0x3f

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "4d7bab"

    invoke-static {v2, v3, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1

    nop

    :array_0
    .array-data 1
        0x61t
        0xat
        0x56t
        0x0t
        0xdt
        0x7t
        0x14t
        0x10t
        0x58t
        0x42t
        0x8t
        0xct
        0x42t
        0xbt
        0x5ct
        0x7t
        0x41t
        0x2at
        0x55t
        0xat
        0x53t
        0xet
        0x4t
        0x10t
        0x1ct
        0x28t
        0x58t
        0xdt
        0x11t
        0x7t
        0x46t
        0x48t
        0x17t
        0x21t
        0x0t
        0xet
        0x58t
        0x6t
        0x56t
        0x1t
        0xat
        0x4et
        0x14t
        0x6t
        0x58t
        0xdt
        0xdt
        0x7t
        0x55t
        0xat
        0x1et
        0x42t
        0x2t
        0xdt
        0x5at
        0x17t
        0x43t
        0x10t
        0x14t
        0x1t
        0x40t
        0xbt
        0x45t
    .end array-data
.end method

.method public static createAsync(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;
    .locals 5

    const/4 v4, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1}, Landroidx/core/os/HandlerCompat$Api28Impl;->createAsync(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_3

    :try_start_0
    const-class v0, Landroid/os/Handler;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/os/Looper;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Landroid/os/Handler$Callback;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-nez v1, :cond_2

    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :catch_1
    move-exception v0

    :goto_1
    sget-object v1, Landroidx/core/os/HandlerCompat;->TAG:Ljava/lang/String;

    const/16 v2, 0x3f

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "4723de"

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1

    :array_0
    .array-data 1
        0x61t
        0x59t
        0x53t
        0x51t
        0x8t
        0x0t
        0x14t
        0x43t
        0x5dt
        0x13t
        0xdt
        0xbt
        0x42t
        0x58t
        0x59t
        0x56t
        0x44t
        0x2dt
        0x55t
        0x59t
        0x56t
        0x5ft
        0x1t
        0x17t
        0x1ct
        0x7bt
        0x5dt
        0x5ct
        0x14t
        0x0t
        0x46t
        0x1bt
        0x12t
        0x70t
        0x5t
        0x9t
        0x58t
        0x55t
        0x53t
        0x50t
        0xft
        0x49t
        0x14t
        0x55t
        0x5dt
        0x5ct
        0x8t
        0x0t
        0x55t
        0x59t
        0x1bt
        0x13t
        0x7t
        0xat
        0x5at
        0x44t
        0x46t
        0x41t
        0x11t
        0x6t
        0x40t
        0x58t
        0x40t
    .end array-data
.end method

.method public static hasCallbacks(Landroid/os/Handler;Ljava/lang/Runnable;)Z
    .locals 6

    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    invoke-static {p0, p1}, Landroidx/core/os/HandlerCompat$Api29Impl;->hasCallbacks(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_3

    :try_start_0
    const-class v0, Landroid/os/Handler;

    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "602fe4"

    const-wide/32 v4, -0x4c6ea095

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/Runnable;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-nez v1, :cond_2

    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :catch_1
    move-exception v0

    :cond_3
    :goto_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const/16 v2, 0x6c

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "262d42"

    const-wide v4, -0x3e22e129d8800000L    # -1.95424067E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1

    nop

    :array_0
    .array-data 1
        0x5et
        0x51t
        0x41t
        0x25t
        0x4t
        0x58t
        0x5at
        0x52t
        0x53t
        0x5t
        0xet
        0x47t
    .end array-data

    :array_1
    .array-data 1
        0x74t
        0x57t
        0x5bt
        0x8t
        0x51t
        0x56t
        0x12t
        0x42t
        0x5dt
        0x44t
        0x57t
        0x53t
        0x5et
        0x5at
        0x12t
        0x2ct
        0x55t
        0x5ct
        0x56t
        0x5at
        0x57t
        0x16t
        0x1at
        0x5at
        0x53t
        0x45t
        0x71t
        0x5t
        0x58t
        0x5et
        0x50t
        0x57t
        0x51t
        0xft
        0x47t
        0x1at
        0x1bt
        0x1at
        0x12t
        0x6t
        0x41t
        0x46t
        0x12t
        0x42t
        0x5at
        0x1t
        0x46t
        0x57t
        0x12t
        0x5ft
        0x41t
        0x44t
        0x5at
        0x5dt
        0x12t
        0x45t
        0x53t
        0x2t
        0x51t
        0x12t
        0x54t
        0x57t
        0x5bt
        0x8t
        0x41t
        0x40t
        0x57t
        0x16t
        0x5ft
        0xbt
        0x50t
        0x57t
        0x12t
        0x50t
        0x5dt
        0x16t
        0x14t
        0x46t
        0x5at
        0x5ft
        0x41t
        0x44t
        0x59t
        0x57t
        0x46t
        0x5et
        0x5dt
        0x0t
        0x1at
        0x12t
        0x60t
        0x57t
        0x5bt
        0x17t
        0x5dt
        0x5ct
        0x55t
        0x16t
        0x57t
        0x1ct
        0x57t
        0x57t
        0x42t
        0x42t
        0x5bt
        0xbt
        0x5at
        0x1ct
    .end array-data
.end method

.method public static postDelayed(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;J)Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/os/HandlerCompat$Api28Impl;->postDelayed(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v0

    goto :goto_0
.end method
