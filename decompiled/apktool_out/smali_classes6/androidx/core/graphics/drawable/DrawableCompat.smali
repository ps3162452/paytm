.class public final Landroidx/core/graphics/drawable/DrawableCompat;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;

.field private static sGetLayoutDirectionMethodFetched:Z

.field private static sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;

.field private static sSetLayoutDirectionMethodFetched:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "0fbd54"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/graphics/drawable/DrawableCompat;->TAG:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x74t
        0x14t
        0x3t
        0x13t
        0x54t
        0x56t
        0x5ct
        0x3t
        0x21t
        0xbt
        0x58t
        0x44t
        0x51t
        0x12t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyTheme(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    :cond_0
    return-void
.end method

.method public static canApplyTheme(Landroid/graphics/drawable/Drawable;)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static clearColorFilter(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_5

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    instance-of v0, p0, Landroid/graphics/drawable/InsetDrawable;

    if-eqz v0, :cond_2

    check-cast p0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->clearColorFilter(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    instance-of v0, p0, Landroidx/core/graphics/drawable/WrappedDrawable;

    if-eqz v0, :cond_3

    check-cast p0, Landroidx/core/graphics/drawable/WrappedDrawable;

    invoke-interface {p0}, Landroidx/core/graphics/drawable/WrappedDrawable;->getWrappedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->clearColorFilter(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    instance-of v0, p0, Landroid/graphics/drawable/DrawableContainer;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/graphics/drawable/DrawableContainer;

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChildCount()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChild(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-static {v3}, Landroidx/core/graphics/drawable/DrawableCompat;->clearColorFilter(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_0
.end method

.method public static getAlpha(Landroid/graphics/drawable/Drawable;)I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getColorFilter(Landroid/graphics/drawable/Drawable;)Landroid/graphics/ColorFilter;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getLayoutDirection(Landroid/graphics/drawable/Drawable;)I
    .locals 8

    const/4 v6, 0x1

    const/4 v1, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v0, v2, :cond_3

    sget-boolean v0, Landroidx/core/graphics/drawable/DrawableCompat;->sGetLayoutDirectionMethodFetched:Z

    if-nez v0, :cond_1

    :try_start_0
    const-class v0, Landroid/graphics/drawable/Drawable;

    const/16 v2, 0x12

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "e146bd"

    const-wide v4, -0x3e4e28b0eb000000L    # -2.99323157E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/core/graphics/drawable/DrawableCompat;->sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sput-boolean v6, Landroidx/core/graphics/drawable/DrawableCompat;->sGetLayoutDirectionMethodFetched:Z

    :cond_1
    sget-object v0, Landroidx/core/graphics/drawable/DrawableCompat;->sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Landroidx/core/graphics/drawable/DrawableCompat;->TAG:Ljava/lang/String;

    const/16 v3, 0x2e

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "52a0ff"

    const/16 v5, -0xe2

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v0

    sget-object v2, Landroidx/core/graphics/drawable/DrawableCompat;->TAG:Ljava/lang/String;

    const/16 v3, 0x34

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v4, "e06e8e"

    const-wide/32 v6, -0x1dc29a9c

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    sput-object v0, Landroidx/core/graphics/drawable/DrawableCompat;->sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x2t
        0x54t
        0x40t
        0x7at
        0x3t
        0x1dt
        0xat
        0x44t
        0x40t
        0x72t
        0xbt
        0x16t
        0x0t
        0x52t
        0x40t
        0x5ft
        0xdt
        0xat
    .end array-data

    nop

    :array_1
    .array-data 1
        0x73t
        0x53t
        0x8t
        0x5ct
        0x3t
        0x2t
        0x15t
        0x46t
        0xet
        0x10t
        0x14t
        0x3t
        0x41t
        0x40t
        0x8t
        0x55t
        0x10t
        0x3t
        0x15t
        0x55t
        0x4t
        0x44t
        0x2at
        0x7t
        0x4ct
        0x5dt
        0x14t
        0x44t
        0x22t
        0xft
        0x47t
        0x57t
        0x2t
        0x44t
        0xft
        0x9t
        0x5bt
        0x1at
        0x48t
        0x10t
        0xbt
        0x3t
        0x41t
        0x5at
        0xet
        0x54t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x23t
        0x51t
        0x5ft
        0x9t
        0x5dt
        0x1t
        0x45t
        0x44t
        0x59t
        0x45t
        0x51t
        0xbt
        0x13t
        0x5ft
        0x5dt
        0x0t
        0x18t
        0x2t
        0x0t
        0x44t
        0x7at
        0x4t
        0x41t
        0xat
        0x10t
        0x44t
        0x72t
        0xct
        0x4at
        0x0t
        0x6t
        0x44t
        0x5ft
        0xat
        0x56t
        0x4dt
        0x4ct
        0x10t
        0x40t
        0xct
        0x59t
        0x45t
        0x17t
        0x55t
        0x50t
        0x9t
        0x5dt
        0x6t
        0x11t
        0x59t
        0x59t
        0xbt
    .end array-data
.end method

.method public static inflate(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    goto :goto_0
.end method

.method public static isAutoMirrored(Landroid/graphics/drawable/Drawable;)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static jumpToCurrentState(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    return-void
.end method

.method public static setAutoMirrored(Landroid/graphics/drawable/Drawable;Z)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    :cond_0
    return-void
.end method

.method public static setHotspot(Landroid/graphics/drawable/Drawable;FF)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_0
    return-void
.end method

.method public static setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    :cond_0
    return-void
.end method

.method public static setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z
    .locals 8

    const/4 v1, 0x0

    const/4 v0, 0x1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_3

    sget-boolean v2, Landroidx/core/graphics/drawable/DrawableCompat;->sSetLayoutDirectionMethodFetched:Z

    if-nez v2, :cond_1

    :try_start_0
    const-class v2, Landroid/graphics/drawable/Drawable;

    const/16 v3, 0x12

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "189167"

    const v5, 0x4ed2d00c    # 1.768425E9f

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroidx/core/graphics/drawable/DrawableCompat;->sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    sput-boolean v0, Landroidx/core/graphics/drawable/DrawableCompat;->sSetLayoutDirectionMethodFetched:Z

    :cond_1
    sget-object v2, Landroidx/core/graphics/drawable/DrawableCompat;->sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    :try_start_1
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Landroidx/core/graphics/drawable/DrawableCompat;->TAG:Ljava/lang/String;

    const/16 v3, 0x37

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "353de4"

    const-wide v6, -0x3e3c4170af800000L    # -6.62511265E8

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    sput-object v0, Landroidx/core/graphics/drawable/DrawableCompat;->sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    :cond_2
    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v2

    sget-object v3, Landroidx/core/graphics/drawable/DrawableCompat;->TAG:Ljava/lang/String;

    const/16 v4, 0x31

    new-array v4, v4, [B

    fill-array-data v4, :array_2

    const-string v5, "73a822"

    const v6, 0x4e96d975

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x42t
        0x5dt
        0x4dt
        0x7dt
        0x57t
        0x4et
        0x5et
        0x4dt
        0x4dt
        0x75t
        0x5ft
        0x45t
        0x54t
        0x5bt
        0x4dt
        0x58t
        0x59t
        0x59t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x75t
        0x54t
        0x5at
        0x8t
        0x0t
        0x50t
        0x13t
        0x41t
        0x5ct
        0x44t
        0xct
        0x5at
        0x45t
        0x5at
        0x58t
        0x1t
        0x45t
        0x47t
        0x56t
        0x41t
        0x7ft
        0x5t
        0x1ct
        0x5bt
        0x46t
        0x41t
        0x77t
        0xdt
        0x17t
        0x51t
        0x50t
        0x41t
        0x5at
        0xbt
        0xbt
        0x1ct
        0x5at
        0x5bt
        0x47t
        0x4dt
        0x45t
        0x42t
        0x5at
        0x54t
        0x13t
        0x16t
        0x0t
        0x52t
        0x5ft
        0x50t
        0x50t
        0x10t
        0xct
        0x5bt
        0x5dt
    .end array-data

    :array_2
    .array-data 1
        0x71t
        0x52t
        0x8t
        0x54t
        0x57t
        0x56t
        0x17t
        0x47t
        0xet
        0x18t
        0x40t
        0x57t
        0x43t
        0x41t
        0x8t
        0x5dt
        0x44t
        0x57t
        0x17t
        0x40t
        0x4t
        0x4ct
        0x7et
        0x53t
        0x4et
        0x5ct
        0x14t
        0x4ct
        0x76t
        0x5bt
        0x45t
        0x56t
        0x2t
        0x4ct
        0x5bt
        0x5dt
        0x59t
        0x1bt
        0x8t
        0x56t
        0x46t
        0x1bt
        0x17t
        0x5et
        0x4t
        0x4ct
        0x5at
        0x5dt
        0x53t
    .end array-data
.end method

.method public static setTint(Landroid/graphics/drawable/Drawable;I)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p0, Landroidx/core/graphics/drawable/TintAwareDrawable;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/core/graphics/drawable/TintAwareDrawable;

    invoke-interface {p0, p1}, Landroidx/core/graphics/drawable/TintAwareDrawable;->setTint(I)V

    goto :goto_0
.end method

.method public static setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p0, Landroidx/core/graphics/drawable/TintAwareDrawable;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/core/graphics/drawable/TintAwareDrawable;

    invoke-interface {p0, p1}, Landroidx/core/graphics/drawable/TintAwareDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public static setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p0, Landroidx/core/graphics/drawable/TintAwareDrawable;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/core/graphics/drawable/TintAwareDrawable;

    invoke-interface {p0, p1}, Landroidx/core/graphics/drawable/TintAwareDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method public static unwrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/graphics/drawable/Drawable;",
            ">(",
            "Landroid/graphics/drawable/Drawable;",
            ")TT;"
        }
    .end annotation

    instance-of v0, p0, Landroidx/core/graphics/drawable/WrappedDrawable;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/core/graphics/drawable/WrappedDrawable;

    invoke-interface {p0}, Landroidx/core/graphics/drawable/WrappedDrawable;->getWrappedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    instance-of v0, p0, Landroidx/core/graphics/drawable/TintAwareDrawable;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/core/graphics/drawable/WrappedDrawableApi21;

    invoke-direct {v0, p0}, Landroidx/core/graphics/drawable/WrappedDrawableApi21;-><init>(Landroid/graphics/drawable/Drawable;)V

    move-object p0, v0

    goto :goto_0

    :cond_2
    instance-of v0, p0, Landroidx/core/graphics/drawable/TintAwareDrawable;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/core/graphics/drawable/WrappedDrawableApi14;

    invoke-direct {v0, p0}, Landroidx/core/graphics/drawable/WrappedDrawableApi14;-><init>(Landroid/graphics/drawable/Drawable;)V

    move-object p0, v0

    goto :goto_0
.end method
