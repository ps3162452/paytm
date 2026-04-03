.class public Landroidx/appcompat/widget/ViewUtils;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sComputeFitSystemWindowsMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v6, 0x9

    const/4 v5, 0x1

    new-array v0, v6, [B

    fill-array-data v0, :array_0

    const-string v1, "a22c57"

    const v2, 0x4da89268

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/widget/ViewUtils;->TAG:Ljava/lang/String;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    :try_start_0
    const-class v0, Landroid/view/View;

    const/16 v1, 0x17

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "a0d3d8"

    const/16 v3, 0x2eab

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/graphics/Rect;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/graphics/Rect;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/widget/ViewUtils;->sComputeFitSystemWindowsMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroidx/appcompat/widget/ViewUtils;->sComputeFitSystemWindowsMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-array v0, v6, [B

    fill-array-data v0, :array_2

    const-string v1, "0bcfea"

    invoke-static {v0, v1, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x37

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "757931"

    const-wide v4, 0x4190d8f83c000000L    # 7.0663695E7

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :array_0
    .array-data 1
        0x37t
        0x5bt
        0x57t
        0x14t
        0x60t
        0x43t
        0x8t
        0x5et
        0x41t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x2t
        0x5ft
        0x9t
        0x43t
        0x11t
        0x4ct
        0x4t
        0x76t
        0xdt
        0x47t
        0x37t
        0x41t
        0x12t
        0x44t
        0x1t
        0x5et
        0x33t
        0x51t
        0xft
        0x54t
        0xbt
        0x44t
        0x17t
    .end array-data

    :array_2
    .array-data 1
        0x66t
        0xbt
        0x6t
        0x11t
        0x30t
        0x15t
        0x59t
        0xet
        0x10t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x74t
        0x5at
        0x42t
        0x55t
        0x57t
        0x11t
        0x59t
        0x5at
        0x43t
        0x19t
        0x55t
        0x58t
        0x59t
        0x51t
        0x17t
        0x54t
        0x56t
        0x45t
        0x5ft
        0x5at
        0x53t
        0x19t
        0x50t
        0x5et
        0x5at
        0x45t
        0x42t
        0x4dt
        0x56t
        0x77t
        0x5et
        0x41t
        0x64t
        0x40t
        0x40t
        0x45t
        0x52t
        0x58t
        0x60t
        0x50t
        0x5dt
        0x55t
        0x58t
        0x42t
        0x44t
        0x17t
        0x13t
        0x7et
        0x5ft
        0x15t
        0x40t
        0x5ct
        0x5ft
        0x5dt
        0x19t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeFitSystemWindows(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 5

    sget-object v0, Landroidx/appcompat/widget/ViewUtils;->sComputeFitSystemWindowsMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Landroidx/appcompat/widget/ViewUtils;->TAG:Ljava/lang/String;

    const/16 v2, 0x28

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "6f4ba0"

    const v4, 0x4ece67d0

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :array_0
    .array-data 1
        0x75t
        0x9t
        0x41t
        0xet
        0x5t
        0x10t
        0x58t
        0x9t
        0x40t
        0x42t
        0x8t
        0x5et
        0x40t
        0x9t
        0x5ft
        0x7t
        0x41t
        0x53t
        0x59t
        0xbt
        0x44t
        0x17t
        0x15t
        0x55t
        0x70t
        0xft
        0x40t
        0x31t
        0x18t
        0x43t
        0x42t
        0x3t
        0x59t
        0x35t
        0x8t
        0x5et
        0x52t
        0x9t
        0x43t
        0x11t
    .end array-data
.end method

.method public static isLayoutRtl(Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static makeOptionalFitsSystemWindows(Landroid/view/View;)V
    .locals 7

    const/16 v3, 0x2e

    const/4 v6, 0x1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/16 v1, 0x1d

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "5b9e4c"

    const-wide/32 v4, -0x63ca3604

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Landroidx/appcompat/widget/ViewUtils;->TAG:Ljava/lang/String;

    new-array v2, v3, [B

    fill-array-data v2, :array_1

    const-string v3, "4498fa"

    const v4, -0x310690eb

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Landroidx/appcompat/widget/ViewUtils;->TAG:Ljava/lang/String;

    new-array v2, v3, [B

    fill-array-data v2, :array_2

    const-string v3, "a2a4e2"

    invoke-static {v2, v3, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v0

    sget-object v0, Landroidx/appcompat/widget/ViewUtils;->TAG:Ljava/lang/String;

    const/16 v1, 0x3f

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "e783e1"

    invoke-static {v1, v2, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :array_0
    .array-data 1
        0x58t
        0x3t
        0x52t
        0x0t
        0x7bt
        0x13t
        0x41t
        0xbt
        0x56t
        0xbt
        0x55t
        0xft
        0x73t
        0xbt
        0x4dt
        0x16t
        0x67t
        0x1at
        0x46t
        0x16t
        0x5ct
        0x8t
        0x63t
        0xat
        0x5bt
        0x6t
        0x56t
        0x12t
        0x47t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x77t
        0x5bt
        0x4ct
        0x54t
        0x2t
        0x41t
        0x5at
        0x5bt
        0x4dt
        0x18t
        0xft
        0xft
        0x42t
        0x5bt
        0x52t
        0x5dt
        0x46t
        0xct
        0x55t
        0x5ft
        0x5ct
        0x77t
        0x16t
        0x15t
        0x5dt
        0x5bt
        0x57t
        0x59t
        0xat
        0x27t
        0x5dt
        0x40t
        0x4at
        0x6bt
        0x1ft
        0x12t
        0x40t
        0x51t
        0x54t
        0x6ft
        0xft
        0xft
        0x50t
        0x5bt
        0x4et
        0x4bt
    .end array-data

    nop

    :array_2
    .array-data 1
        0x22t
        0x5dt
        0x14t
        0x58t
        0x1t
        0x12t
        0xft
        0x5dt
        0x15t
        0x14t
        0xct
        0x5ct
        0x17t
        0x5dt
        0xat
        0x51t
        0x45t
        0x5ft
        0x0t
        0x59t
        0x4t
        0x7bt
        0x15t
        0x46t
        0x8t
        0x5dt
        0xft
        0x55t
        0x9t
        0x74t
        0x8t
        0x46t
        0x12t
        0x67t
        0x1ct
        0x41t
        0x15t
        0x57t
        0xct
        0x63t
        0xct
        0x5ct
        0x5t
        0x5dt
        0x16t
        0x47t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x26t
        0x58t
        0x4dt
        0x5ft
        0x1t
        0x11t
        0xbt
        0x58t
        0x4ct
        0x13t
        0x3t
        0x58t
        0xbt
        0x53t
        0x18t
        0x5et
        0x0t
        0x45t
        0xdt
        0x58t
        0x5ct
        0x13t
        0x8t
        0x50t
        0xet
        0x52t
        0x77t
        0x43t
        0x11t
        0x58t
        0xat
        0x59t
        0x59t
        0x5ft
        0x23t
        0x58t
        0x11t
        0x44t
        0x6bt
        0x4at
        0x16t
        0x45t
        0x0t
        0x5at
        0x6ft
        0x5at
        0xbt
        0x55t
        0xat
        0x40t
        0x4bt
        0x1dt
        0x45t
        0x7et
        0xdt
        0x17t
        0x4ft
        0x56t
        0x9t
        0x5dt
        0x4bt
        0x19t
        0x16t
    .end array-data
.end method
