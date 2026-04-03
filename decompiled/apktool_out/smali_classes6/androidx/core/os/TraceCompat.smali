.class public final Landroidx/core/os/TraceCompat;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sAsyncTraceBeginMethod:Ljava/lang/reflect/Method;

.field private static sAsyncTraceEndMethod:Ljava/lang/reflect/Method;

.field private static sIsTagEnabledMethod:Ljava/lang/reflect/Method;

.field private static sTraceCounterMethod:Ljava/lang/reflect/Method;

.field private static sTraceTagApp:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v6, 0xb

    new-array v0, v6, [B

    fill-array-data v0, :array_0

    const-string v1, "a037b1"

    const-wide/32 v2, -0x1a7b0f3

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/os/TraceCompat;->TAG:Ljava/lang/String;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    :try_start_0
    const-class v0, Landroid/os/Trace;

    const/16 v1, 0xd

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "aea0f0"

    const-wide v4, -0x3e2aa83674400000L    # -1.432299055E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v0

    sput-wide v0, Landroidx/core/os/TraceCompat;->sTraceTagApp:J

    const-class v0, Landroid/os/Trace;

    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "4a277f"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/core/os/TraceCompat;->sIsTagEnabledMethod:Ljava/lang/reflect/Method;

    const-class v0, Landroid/os/Trace;

    const/16 v1, 0xf

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "24f074"

    const-wide/32 v4, -0x4d40165a

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

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

    sput-object v0, Landroidx/core/os/TraceCompat;->sAsyncTraceBeginMethod:Ljava/lang/reflect/Method;

    const-class v0, Landroid/os/Trace;

    const/16 v1, 0xd

    new-array v1, v1, [B

    fill-array-data v1, :array_4

    const-string v2, "4f8aae"

    const/4 v3, 0x1

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

    sput-object v0, Landroidx/core/os/TraceCompat;->sAsyncTraceEndMethod:Ljava/lang/reflect/Method;

    const-class v0, Landroid/os/Trace;

    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_5

    const-string v2, "fd5e3d"

    const/16 v3, 0x2cb5

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

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

    sput-object v0, Landroidx/core/os/TraceCompat;->sTraceCounterMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-array v1, v6, [B

    fill-array-data v1, :array_6

    const-string v2, "3dd4ad"

    const-wide v4, -0x3e3564675a800000L    # -8.92809547E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x24

    new-array v2, v2, [B

    fill-array-data v2, :array_7

    const-string v3, "928ce8"

    const-wide/32 v4, 0x26875e70

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x35t
        0x42t
        0x52t
        0x54t
        0x7t
        0x72t
        0xet
        0x5dt
        0x43t
        0x56t
        0x16t
    .end array-data

    :array_1
    .array-data 1
        0x35t
        0x37t
        0x20t
        0x73t
        0x23t
        0x6ft
        0x35t
        0x24t
        0x26t
        0x6ft
        0x27t
        0x60t
        0x31t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x5dt
        0x12t
        0x66t
        0x56t
        0x50t
        0x23t
        0x5at
        0x0t
        0x50t
        0x5bt
        0x52t
        0x2t
    .end array-data

    :array_3
    .array-data 1
        0x53t
        0x47t
        0x1ft
        0x5et
        0x54t
        0x60t
        0x40t
        0x55t
        0x5t
        0x55t
        0x75t
        0x51t
        0x55t
        0x5dt
        0x8t
    .end array-data

    :array_4
    .array-data 1
        0x55t
        0x15t
        0x41t
        0xft
        0x2t
        0x31t
        0x46t
        0x7t
        0x5bt
        0x4t
        0x24t
        0xbt
        0x50t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x12t
        0x16t
        0x54t
        0x6t
        0x56t
        0x27t
        0x9t
        0x11t
        0x5bt
        0x11t
        0x56t
        0x16t
    .end array-data

    :array_6
    .array-data 1
        0x67t
        0x16t
        0x5t
        0x57t
        0x4t
        0x27t
        0x5ct
        0x9t
        0x14t
        0x55t
        0x15t
    .end array-data

    :array_7
    .array-data 1
        0x6ct
        0x5ct
        0x59t
        0x1t
        0x9t
        0x5dt
        0x19t
        0x46t
        0x57t
        0x43t
        0xct
        0x56t
        0x50t
        0x46t
        0x51t
        0x2t
        0x9t
        0x51t
        0x43t
        0x57t
        0x18t
        0x15t
        0xct
        0x59t
        0x19t
        0x40t
        0x5dt
        0x5t
        0x9t
        0x5dt
        0x5at
        0x46t
        0x51t
        0xct
        0xbt
        0x16t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beginAsyncSection(Ljava/lang/String;I)V
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    invoke-static {p0, p1}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    :try_start_0
    sget-object v0, Landroidx/core/os/TraceCompat;->sAsyncTraceBeginMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-wide v4, Landroidx/core/os/TraceCompat;->sTraceTagApp:J

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

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Landroidx/core/os/TraceCompat;->TAG:Ljava/lang/String;

    const/16 v1, 0x32

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "d95663"

    const-wide/32 v4, 0x5542c0b3

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :array_0
    .array-data 1
        0x31t
        0x57t
        0x54t
        0x54t
        0x5at
        0x56t
        0x44t
        0x4dt
        0x5at
        0x16t
        0x5ft
        0x5dt
        0x12t
        0x56t
        0x5et
        0x53t
        0x16t
        0x52t
        0x17t
        0x40t
        0x5bt
        0x55t
        0x62t
        0x41t
        0x5t
        0x5at
        0x50t
        0x74t
        0x53t
        0x54t
        0xdt
        0x57t
        0x1dt
        0x1ft
        0x16t
        0x45t
        0xdt
        0x58t
        0x15t
        0x44t
        0x53t
        0x55t
        0x8t
        0x5ct
        0x56t
        0x42t
        0x5ft
        0x5ct
        0xat
        0x17t
    .end array-data
.end method

.method public static beginSection(Ljava/lang/String;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static endAsyncSection(Ljava/lang/String;I)V
    .locals 7

    const/4 v6, 0x1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    invoke-static {p0, p1}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    :try_start_0
    sget-object v0, Landroidx/core/os/TraceCompat;->sAsyncTraceEndMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-wide v4, Landroidx/core/os/TraceCompat;->sTraceTagApp:J

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

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Landroidx/core/os/TraceCompat;->TAG:Ljava/lang/String;

    const/16 v1, 0x32

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "772c5b"

    invoke-static {v1, v2, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :array_0
    .array-data 1
        0x62t
        0x59t
        0x53t
        0x1t
        0x59t
        0x7t
        0x17t
        0x43t
        0x5dt
        0x43t
        0x5ct
        0xct
        0x41t
        0x58t
        0x59t
        0x6t
        0x15t
        0x7t
        0x59t
        0x53t
        0x73t
        0x10t
        0x4ct
        0xct
        0x54t
        0x64t
        0x57t
        0x0t
        0x41t
        0xbt
        0x58t
        0x59t
        0x1at
        0x4at
        0x15t
        0x14t
        0x5et
        0x56t
        0x12t
        0x11t
        0x50t
        0x4t
        0x5bt
        0x52t
        0x51t
        0x17t
        0x5ct
        0xdt
        0x59t
        0x19t
    .end array-data
.end method

.method public static endSection()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_0
    return-void
.end method

.method public static isEnabled()Z
    .locals 8

    const/4 v1, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_0

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v0, v2, :cond_1

    :try_start_0
    sget-object v0, Landroidx/core/os/TraceCompat;->sIsTagEnabledMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-wide v6, Landroidx/core/os/TraceCompat;->sTraceTagApp:J

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

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Landroidx/core/os/TraceCompat;->TAG:Ljava/lang/String;

    const/16 v2, 0x2f

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "2135bb"

    const-wide/32 v4, -0x6ef87f78

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v0, v1

    goto :goto_0

    :array_0
    .array-data 1
        0x67t
        0x5ft
        0x52t
        0x57t
        0xet
        0x7t
        0x12t
        0x45t
        0x5ct
        0x15t
        0xbt
        0xct
        0x44t
        0x5et
        0x58t
        0x50t
        0x42t
        0xbt
        0x41t
        0x65t
        0x52t
        0x52t
        0x27t
        0xct
        0x53t
        0x53t
        0x5ft
        0x50t
        0x6t
        0x4at
        0x1bt
        0x11t
        0x45t
        0x5ct
        0x3t
        0x42t
        0x40t
        0x54t
        0x55t
        0x59t
        0x7t
        0x1t
        0x46t
        0x58t
        0x5ct
        0x5bt
        0x4ct
    .end array-data
.end method

.method public static setCounter(Ljava/lang/String;I)V
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    int-to-long v0, p1

    invoke-static {p0, v0, v1}, Landroid/os/Trace;->setCounter(Ljava/lang/String;J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    :try_start_0
    sget-object v0, Landroidx/core/os/TraceCompat;->sTraceCounterMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-wide v4, Landroidx/core/os/TraceCompat;->sTraceTagApp:J

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

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Landroidx/core/os/TraceCompat;->TAG:Ljava/lang/String;

    const/16 v1, 0x2f

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "2decb8"

    const v3, 0x4e5a10d2    # 9.1463386E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x67t
        0xat
        0x4t
        0x1t
        0xet
        0x5dt
        0x12t
        0x10t
        0xat
        0x43t
        0xbt
        0x56t
        0x44t
        0xbt
        0xet
        0x6t
        0x42t
        0x4ct
        0x40t
        0x5t
        0x6t
        0x6t
        0x21t
        0x57t
        0x47t
        0xat
        0x11t
        0x6t
        0x10t
        0x10t
        0x1bt
        0x44t
        0x13t
        0xat
        0x3t
        0x18t
        0x40t
        0x1t
        0x3t
        0xft
        0x7t
        0x5bt
        0x46t
        0xdt
        0xat
        0xdt
        0x4ct
    .end array-data
.end method
