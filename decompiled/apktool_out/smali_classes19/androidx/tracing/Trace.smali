.class public final Landroidx/tracing/Trace;
.super Ljava/lang/Object;


# static fields
.field static final TAG:Ljava/lang/String;

.field private static sAsyncTraceBeginMethod:Ljava/lang/reflect/Method;

.field private static sAsyncTraceEndMethod:Ljava/lang/reflect/Method;

.field private static sIsTagEnabledMethod:Ljava/lang/reflect/Method;

.field private static sTraceCounterMethod:Ljava/lang/reflect/Method;

.field private static sTraceTagApp:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "42c171"

    const v2, 0x4d22babc

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/tracing/Trace;->TAG:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x60t
        0x40t
        0x2t
        0x52t
        0x52t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beginAsyncSection(Ljava/lang/String;I)V
    .locals 1

    :try_start_0
    sget-object v0, Landroidx/tracing/Trace;->sAsyncTraceBeginMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Landroidx/tracing/TraceApi29Impl;->beginAsyncSection(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :cond_0
    :goto_1
    invoke-static {p0, p1}, Landroidx/tracing/Trace;->beginAsyncSectionFallback(Ljava/lang/String;I)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private static beginAsyncSectionFallback(Ljava/lang/String;I)V
    .locals 8

    const/16 v7, 0xf

    const/4 v6, 0x1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    :try_start_0
    sget-object v0, Landroidx/tracing/Trace;->sAsyncTraceBeginMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    const-class v0, Landroid/os/Trace;

    const/16 v1, 0xf

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "9e0325"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/tracing/Trace;->sAsyncTraceBeginMethod:Ljava/lang/reflect/Method;

    :cond_0
    sget-object v0, Landroidx/tracing/Trace;->sAsyncTraceBeginMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-wide v4, Landroidx/tracing/Trace;->sTraceTagApp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    const/4 v3, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-array v1, v7, [B

    fill-array-data v1, :array_1

    const-string v2, "6e3060"

    invoke-static {v1, v2, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/tracing/Trace;->handleException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x58t
        0x16t
        0x49t
        0x5dt
        0x51t
        0x61t
        0x4bt
        0x4t
        0x53t
        0x56t
        0x70t
        0x50t
        0x5et
        0xct
        0x5et
    .end array-data

    :array_1
    .array-data 1
        0x57t
        0x16t
        0x4at
        0x5et
        0x55t
        0x64t
        0x44t
        0x4t
        0x50t
        0x55t
        0x74t
        0x55t
        0x51t
        0xct
        0x5dt
    .end array-data
.end method

.method public static beginSection(Ljava/lang/String;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Landroidx/tracing/TraceApi18Impl;->beginSection(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static endAsyncSection(Ljava/lang/String;I)V
    .locals 1

    :try_start_0
    sget-object v0, Landroidx/tracing/Trace;->sAsyncTraceEndMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Landroidx/tracing/TraceApi29Impl;->endAsyncSection(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :cond_0
    :goto_1
    invoke-static {p0, p1}, Landroidx/tracing/Trace;->endAsyncSectionFallback(Ljava/lang/String;I)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private static endAsyncSectionFallback(Ljava/lang/String;I)V
    .locals 9

    const/16 v8, 0xd

    const/4 v7, 0x1

    const/4 v6, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    :try_start_0
    sget-object v0, Landroidx/tracing/Trace;->sAsyncTraceEndMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    const-class v0, Landroid/os/Trace;

    const/16 v1, 0xd

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "24b090"

    const-wide v4, 0x41c99f6f29000000L    # 8.59758162E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/tracing/Trace;->sAsyncTraceEndMethod:Ljava/lang/reflect/Method;

    :cond_0
    sget-object v0, Landroidx/tracing/Trace;->sAsyncTraceEndMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-wide v4, Landroidx/tracing/Trace;->sTraceTagApp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    const/4 v3, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-array v1, v8, [B

    fill-array-data v1, :array_1

    const-string v2, "40b956"

    invoke-static {v1, v2, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/tracing/Trace;->handleException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x53t
        0x47t
        0x1bt
        0x5et
        0x5at
        0x64t
        0x40t
        0x55t
        0x1t
        0x55t
        0x7ct
        0x5et
        0x56t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x55t
        0x43t
        0x1bt
        0x57t
        0x56t
        0x62t
        0x46t
        0x51t
        0x1t
        0x5ct
        0x70t
        0x58t
        0x50t
    .end array-data
.end method

.method public static endSection()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    invoke-static {}, Landroidx/tracing/TraceApi18Impl;->endSection()V

    :cond_0
    return-void
.end method

.method private static handleException(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 6

    const/16 v3, 0xf

    instance-of v0, p1, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v1, v3, [B

    fill-array-data v1, :array_0

    const-string v2, "1e7bfe"

    const-wide v4, 0x41d6f47968400000L    # 1.540482465E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v3, [B

    fill-array-data v1, :array_1

    const-string v2, "08a7cf"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroidx/tracing/Trace;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    nop

    :array_0
    .array-data 1
        0x64t
        0xbt
        0x56t
        0x0t
        0xat
        0x0t
        0x11t
        0x11t
        0x58t
        0x42t
        0x5t
        0x4t
        0x5dt
        0x9t
        0x17t
    .end array-data

    :array_1
    .array-data 1
        0x10t
        0x4et
        0x8t
        0x56t
        0x43t
        0x14t
        0x55t
        0x5et
        0xdt
        0x52t
        0x0t
        0x12t
        0x59t
        0x57t
        0xft
    .end array-data
.end method

.method public static isEnabled()Z
    .locals 1

    :try_start_0
    sget-object v0, Landroidx/tracing/Trace;->sIsTagEnabledMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    :goto_1
    invoke-static {}, Landroidx/tracing/Trace;->isEnabledFallback()Z

    move-result v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private static isEnabledFallback()Z
    .locals 9

    const/16 v8, 0xc

    const/4 v1, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v0, v2, :cond_1

    :try_start_0
    sget-object v0, Landroidx/tracing/Trace;->sIsTagEnabledMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    const-class v0, Landroid/os/Trace;

    const/16 v2, 0xd

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "5c821e"

    const-wide/32 v4, -0x3f05a5bd

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v2

    sput-wide v2, Landroidx/tracing/Trace;->sTraceTagApp:J

    const-class v0, Landroid/os/Trace;

    const/16 v2, 0xc

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "59e4b2"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/tracing/Trace;->sIsTagEnabledMethod:Ljava/lang/reflect/Method;

    :cond_0
    sget-object v0, Landroidx/tracing/Trace;->sIsTagEnabledMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-wide v6, Landroidx/tracing/Trace;->sTraceTagApp:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    new-array v2, v8, [B

    fill-array-data v2, :array_2

    const-string v3, "dd1b83"

    const-wide/32 v4, -0x60a94e35

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroidx/tracing/Trace;->handleException(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    move v0, v1

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x61t
        0x31t
        0x79t
        0x71t
        0x74t
        0x3at
        0x61t
        0x22t
        0x7ft
        0x6dt
        0x70t
        0x35t
        0x65t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x5ct
        0x4at
        0x31t
        0x55t
        0x5t
        0x77t
        0x5bt
        0x58t
        0x7t
        0x58t
        0x7t
        0x56t
    .end array-data

    :array_2
    .array-data 1
        0xdt
        0x17t
        0x65t
        0x3t
        0x5ft
        0x76t
        0xat
        0x5t
        0x53t
        0xet
        0x5dt
        0x57t
    .end array-data
.end method

.method public static setCounter(Ljava/lang/String;I)V
    .locals 1

    :try_start_0
    sget-object v0, Landroidx/tracing/Trace;->sTraceCounterMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Landroidx/tracing/TraceApi29Impl;->setCounter(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :cond_0
    :goto_1
    invoke-static {p0, p1}, Landroidx/tracing/Trace;->setCounterFallback(Ljava/lang/String;I)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private static setCounterFallback(Ljava/lang/String;I)V
    .locals 7

    const/16 v6, 0xc

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    :try_start_0
    sget-object v0, Landroidx/tracing/Trace;->sTraceCounterMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    const-class v0, Landroid/os/Trace;

    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "57c6f7"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/tracing/Trace;->sTraceCounterMethod:Ljava/lang/reflect/Method;

    :cond_0
    sget-object v0, Landroidx/tracing/Trace;->sTraceCounterMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-wide v4, Landroidx/tracing/Trace;->sTraceTagApp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    const/4 v3, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-array v1, v6, [B

    fill-array-data v1, :array_1

    const-string v2, "63c247"

    const/16 v3, -0x40db

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/tracing/Trace;->handleException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    :array_0
    .array-data 1
        0x41t
        0x45t
        0x2t
        0x55t
        0x3t
        0x74t
        0x5at
        0x42t
        0xdt
        0x42t
        0x3t
        0x45t
    .end array-data

    :array_1
    .array-data 1
        0x42t
        0x41t
        0x2t
        0x51t
        0x51t
        0x74t
        0x59t
        0x46t
        0xdt
        0x46t
        0x51t
        0x45t
    .end array-data
.end method
