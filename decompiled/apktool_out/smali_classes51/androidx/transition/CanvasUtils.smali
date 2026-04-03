.class Landroidx/transition/CanvasUtils;
.super Ljava/lang/Object;


# static fields
.field private static sInorderBarrierMethod:Ljava/lang/reflect/Method;

.field private static sOrderMethodsFetched:Z

.field private static sReorderBarrierMethod:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static enableZ(Landroid/graphics/Canvas;Z)V
    .locals 7
    .param p0    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SoonBlockedPrivateApi"
        }
    .end annotation

    const/4 v6, 0x1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Canvas;->enableZ()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Canvas;->disableZ()V

    goto :goto_0

    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_4

    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x20

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "1fb3a2"

    const-wide v4, 0x41d0de5ed5c00000L    # 1.132034903E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    sget-boolean v0, Landroidx/transition/CanvasUtils;->sOrderMethodsFetched:Z

    if-nez v0, :cond_5

    :try_start_0
    const-class v0, Landroid/graphics/Canvas;

    const/16 v1, 0x14

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "10e054"

    const-wide v4, 0x41b060e0af000000L    # 2.74784431E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/transition/CanvasUtils;->sReorderBarrierMethod:Ljava/lang/reflect/Method;

    sget-object v0, Landroidx/transition/CanvasUtils;->sReorderBarrierMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const-class v0, Landroid/graphics/Canvas;

    const/16 v1, 0x14

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "312ef5"

    const/16 v3, 0x2ffd

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/transition/CanvasUtils;->sInorderBarrierMethod:Ljava/lang/reflect/Method;

    sget-object v0, Landroidx/transition/CanvasUtils;->sInorderBarrierMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    sput-boolean v6, Landroidx/transition/CanvasUtils;->sOrderMethodsFetched:Z

    :cond_5
    if-eqz p1, :cond_6

    :try_start_1
    sget-object v0, Landroidx/transition/CanvasUtils;->sReorderBarrierMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_6

    sget-object v0, Landroidx/transition/CanvasUtils;->sReorderBarrierMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    if-nez p1, :cond_0

    sget-object v0, Landroidx/transition/CanvasUtils;->sInorderBarrierMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/transition/CanvasUtils;->sInorderBarrierMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    goto :goto_1

    nop

    :array_0
    .array-data 1
        0x65t
        0xet
        0xbt
        0x40t
        0x41t
        0x5ft
        0x54t
        0x12t
        0xat
        0x5ct
        0x5t
        0x12t
        0x55t
        0x9t
        0x7t
        0x40t
        0xft
        0x15t
        0x45t
        0x46t
        0x15t
        0x5ct
        0x13t
        0x59t
        0x11t
        0x9t
        0xct
        0x13t
        0x31t
        0x5bt
        0x54t
        0x47t
    .end array-data

    :array_1
    .array-data 1
        0x58t
        0x5et
        0x16t
        0x55t
        0x47t
        0x40t
        0x63t
        0x55t
        0xat
        0x42t
        0x51t
        0x51t
        0x43t
        0x72t
        0x4t
        0x42t
        0x47t
        0x5dt
        0x54t
        0x42t
    .end array-data

    :array_2
    .array-data 1
        0x5at
        0x5ft
        0x41t
        0x0t
        0x14t
        0x41t
        0x7at
        0x5ft
        0x5dt
        0x17t
        0x2t
        0x50t
        0x41t
        0x73t
        0x53t
        0x17t
        0x14t
        0x5ct
        0x56t
        0x43t
    .end array-data
.end method
