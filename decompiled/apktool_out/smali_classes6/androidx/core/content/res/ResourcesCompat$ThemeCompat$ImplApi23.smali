.class Landroidx/core/content/res/ResourcesCompat$ThemeCompat$ImplApi23;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/res/ResourcesCompat$ThemeCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImplApi23"
.end annotation


# static fields
.field private static sRebaseMethod:Ljava/lang/reflect/Method;

.field private static sRebaseMethodFetched:Z

.field private static final sRebaseMethodLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/core/content/res/ResourcesCompat$ThemeCompat$ImplApi23;->sRebaseMethodLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static rebase(Landroid/content/res/Resources$Theme;)V
    .locals 8

    sget-object v1, Landroidx/core/content/res/ResourcesCompat$ThemeCompat$ImplApi23;->sRebaseMethodLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Landroidx/core/content/res/ResourcesCompat$ThemeCompat$ImplApi23;->sRebaseMethodFetched:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    const-class v0, Landroid/content/res/Resources$Theme;

    const/4 v2, 0x6

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "eac584"

    const/16 v4, -0x712d

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/core/content/res/ResourcesCompat$ThemeCompat$ImplApi23;->sRebaseMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    const/4 v0, 0x1

    :try_start_2
    sput-boolean v0, Landroidx/core/content/res/ResourcesCompat$ThemeCompat$ImplApi23;->sRebaseMethodFetched:Z

    :cond_0
    sget-object v0, Landroidx/core/content/res/ResourcesCompat$ThemeCompat$ImplApi23;->sRebaseMethod:Ljava/lang/reflect/Method;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    :try_start_3
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    :goto_1
    :try_start_4
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    const/16 v2, 0xf

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "36a3fc"

    const-wide/32 v4, -0x250551a4

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x22

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v4, "eaf89f"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    :goto_2
    const/16 v2, 0xf

    :try_start_5
    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const-string v3, "e104c2"

    const-wide/32 v4, 0x2789715e

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2f

    new-array v3, v3, [B

    fill-array-data v3, :array_4

    const-string v4, "df8eb5"

    const-wide/32 v6, -0x3d7c01e6

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    sput-object v0, Landroidx/core/content/res/ResourcesCompat$ThemeCompat$ImplApi23;->sRebaseMethod:Ljava/lang/reflect/Method;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_2

    nop

    :array_0
    .array-data 1
        0x17t
        0x4t
        0x1t
        0x54t
        0x4bt
        0x51t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x61t
        0x53t
        0x12t
        0x5ct
        0x13t
        0x11t
        0x50t
        0x53t
        0x12t
        0x70t
        0x9t
        0xet
        0x43t
        0x57t
        0x15t
    .end array-data

    :array_2
    .array-data 1
        0x23t
        0x0t
        0xft
        0x54t
        0x5ct
        0x2t
        0x45t
        0x15t
        0x9t
        0x18t
        0x4bt
        0x3t
        0x11t
        0x13t
        0xft
        0x5dt
        0x4ft
        0x3t
        0x45t
        0x13t
        0x3t
        0x5at
        0x58t
        0x15t
        0x0t
        0x49t
        0x4ft
        0x18t
        0x54t
        0x3t
        0x11t
        0x9t
        0x9t
        0x5ct
    .end array-data

    nop

    :array_3
    .array-data 1
        0x37t
        0x54t
        0x43t
        0x5bt
        0x16t
        0x40t
        0x6t
        0x54t
        0x43t
        0x77t
        0xct
        0x5ft
        0x15t
        0x50t
        0x44t
    .end array-data

    :array_4
    .array-data 1
        0x22t
        0x7t
        0x51t
        0x9t
        0x7t
        0x51t
        0x44t
        0x12t
        0x57t
        0x45t
        0xbt
        0x5bt
        0x12t
        0x9t
        0x53t
        0x0t
        0x42t
        0x47t
        0x1t
        0x4t
        0x59t
        0x16t
        0x7t
        0x1dt
        0x4dt
        0x46t
        0x55t
        0x0t
        0x16t
        0x5dt
        0xbt
        0x2t
        0x18t
        0x13t
        0xbt
        0x54t
        0x44t
        0x14t
        0x5dt
        0x3t
        0xet
        0x50t
        0x7t
        0x12t
        0x51t
        0xat
        0xct
    .end array-data
.end method
