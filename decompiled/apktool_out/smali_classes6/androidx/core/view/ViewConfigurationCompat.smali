.class public final Landroidx/core/view/ViewConfigurationCompat;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sGetScaledScrollFactorMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v4, 0x10

    new-array v0, v4, [B

    fill-array-data v0, :array_0

    const-string v1, "5e8ab2"

    const-wide v2, 0x41c6f6ab43800000L    # 7.70528903E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/view/ViewConfigurationCompat;->TAG:Ljava/lang/String;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-ne v0, v1, :cond_0

    :try_start_0
    const-class v0, Landroid/view/ViewConfiguration;

    const/16 v1, 0x15

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "31d805"

    const v3, -0x324750e4

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/core/view/ViewConfigurationCompat;->sGetScaledScrollFactorMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-array v0, v4, [B

    fill-array-data v0, :array_2

    const-string v1, "6c5e8b"

    const-wide/32 v2, 0x28d108da

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x42

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "3fae2c"

    const-wide v4, -0x3e3e436443000000L    # -5.95146618E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x63t
        0xct
        0x5dt
        0x16t
        0x21t
        0x5dt
        0x5bt
        0x3t
        0x51t
        0x6t
        0x21t
        0x5dt
        0x58t
        0x15t
        0x59t
        0x15t
    .end array-data

    :array_1
    .array-data 1
        0x54t
        0x54t
        0x10t
        0x6bt
        0x53t
        0x54t
        0x5ft
        0x54t
        0x0t
        0x6bt
        0x53t
        0x47t
        0x5ct
        0x5dt
        0x8t
        0x7et
        0x51t
        0x56t
        0x47t
        0x5et
        0x16t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x60t
        0xat
        0x50t
        0x12t
        0x7bt
        0xdt
        0x58t
        0x5t
        0x5ct
        0x2t
        0x7bt
        0xdt
        0x5bt
        0x13t
        0x54t
        0x11t
    .end array-data

    :array_3
    .array-data 1
        0x70t
        0x9t
        0x14t
        0x9t
        0x56t
        0x43t
        0x5dt
        0x9t
        0x15t
        0x45t
        0x54t
        0xat
        0x5dt
        0x2t
        0x41t
        0x8t
        0x57t
        0x17t
        0x5bt
        0x9t
        0x5t
        0x45t
        0x55t
        0x6t
        0x47t
        0x35t
        0x2t
        0x4t
        0x5et
        0x6t
        0x57t
        0x35t
        0x2t
        0x17t
        0x5dt
        0xft
        0x5ft
        0x20t
        0x0t
        0x6t
        0x46t
        0xct
        0x41t
        0x4et
        0x48t
        0x45t
        0x5dt
        0xdt
        0x13t
        0x30t
        0x8t
        0x0t
        0x45t
        0x20t
        0x5ct
        0x8t
        0x7t
        0xct
        0x55t
        0x16t
        0x41t
        0x7t
        0x15t
        0xct
        0x5dt
        0xdt
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getLegacyScrollFactor(Landroid/view/ViewConfiguration;Landroid/content/Context;)F
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_0

    sget-object v0, Landroidx/core/view/ViewConfigurationCompat;->sGetScaledScrollFactorMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-float v0, v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    sget-object v0, Landroidx/core/view/ViewConfigurationCompat;->TAG:Ljava/lang/String;

    const/16 v1, 0x42

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "386abe"

    const-wide/32 v4, 0x25152010

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101004d

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x70t
        0x57t
        0x43t
        0xdt
        0x6t
        0x45t
        0x5dt
        0x57t
        0x42t
        0x41t
        0x4t
        0xct
        0x5dt
        0x5ct
        0x16t
        0xct
        0x7t
        0x11t
        0x5bt
        0x57t
        0x52t
        0x41t
        0x5t
        0x0t
        0x47t
        0x6bt
        0x55t
        0x0t
        0xet
        0x0t
        0x57t
        0x6bt
        0x55t
        0x13t
        0xdt
        0x9t
        0x5ft
        0x7et
        0x57t
        0x2t
        0x16t
        0xat
        0x41t
        0x10t
        0x1ft
        0x41t
        0xdt
        0xbt
        0x13t
        0x6et
        0x5ft
        0x4t
        0x15t
        0x26t
        0x5ct
        0x56t
        0x50t
        0x8t
        0x5t
        0x10t
        0x41t
        0x59t
        0x42t
        0x8t
        0xdt
        0xbt
    .end array-data
.end method

.method public static getScaledHorizontalScrollFactor(Landroid/view/ViewConfiguration;Landroid/content/Context;)F
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->getScaledHorizontalScrollFactor()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Landroidx/core/view/ViewConfigurationCompat;->getLegacyScrollFactor(Landroid/view/ViewConfiguration;Landroid/content/Context;)F

    move-result v0

    goto :goto_0
.end method

.method public static getScaledHoverSlop(Landroid/view/ViewConfiguration;)I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->getScaledHoverSlop()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public static getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v0

    return v0
.end method

.method public static getScaledVerticalScrollFactor(Landroid/view/ViewConfiguration;Landroid/content/Context;)F
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->getScaledVerticalScrollFactor()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Landroidx/core/view/ViewConfigurationCompat;->getLegacyScrollFactor(Landroid/view/ViewConfiguration;Landroid/content/Context;)F

    move-result v0

    goto :goto_0
.end method

.method public static hasPermanentMenuKey(Landroid/view/ViewConfiguration;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    return v0
.end method

.method public static shouldShowMenuShortcutsWhenKeyboardPresent(Landroid/view/ViewConfiguration;Landroid/content/Context;)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->shouldShowMenuShortcutsWhenKeyboardPresent()Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/16 v3, 0x2b

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "5a696f"

    const-wide v6, -0x3e3b28f2f3000000L    # -6.99275802E8

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [B

    fill-array-data v4, :array_1

    const-string v5, "3b997e"

    invoke-static {v4, v5, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x7

    new-array v5, v5, [B

    fill-array-data v5, :array_2

    const-string v6, "6d858b"

    invoke-static {v5, v6, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x56t
        0xet
        0x58t
        0x5ft
        0x5ft
        0x1t
        0x6at
        0x12t
        0x5et
        0x56t
        0x41t
        0x2bt
        0x50t
        0xft
        0x43t
        0x6at
        0x5et
        0x9t
        0x47t
        0x15t
        0x55t
        0x4ct
        0x42t
        0x15t
        0x62t
        0x9t
        0x53t
        0x57t
        0x7dt
        0x3t
        0x4ct
        0x3t
        0x59t
        0x58t
        0x44t
        0x2t
        0x65t
        0x13t
        0x53t
        0x4at
        0x53t
        0x8t
        0x41t
    .end array-data

    :array_1
    .array-data 1
        0x51t
        0xdt
        0x56t
        0x55t
    .end array-data

    :array_2
    .array-data 1
        0x57t
        0xat
        0x5ct
        0x47t
        0x57t
        0xbt
        0x52t
    .end array-data
.end method
