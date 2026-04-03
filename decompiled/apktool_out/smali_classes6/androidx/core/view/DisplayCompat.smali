.class public final Landroidx/core/view/DisplayCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/DisplayCompat$Api17Impl;,
        Landroidx/core/view/DisplayCompat$Api23Impl;,
        Landroidx/core/view/DisplayCompat$ModeCompat;
    }
.end annotation


# static fields
.field private static final DISPLAY_SIZE_4K_HEIGHT:I = 0x870

.field private static final DISPLAY_SIZE_4K_WIDTH:I = 0xf00


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getCurrentDisplaySizeFromWorkarounds(Landroid/content/Context;Landroid/view/Display;)Landroid/graphics/Point;
    .locals 6

    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-ge v1, v2, :cond_1

    const/16 v1, 0x10

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "72a78c"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroidx/core/view/DisplayCompat;->parsePhysicalDisplaySizeFromSystemProperties(Ljava/lang/String;Landroid/view/Display;)Landroid/graphics/Point;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    move-object v0, v1

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    const/16 v1, 0x13

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "bfe86d"

    const-wide v4, -0x3e38ceecd5800000L    # -7.78184277E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroidx/core/view/DisplayCompat;->parsePhysicalDisplaySizeFromSystemProperties(Ljava/lang/String;Landroid/view/Display;)Landroid/graphics/Point;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-static {p0}, Landroidx/core/view/DisplayCompat;->isSonyBravia4kTv(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroidx/core/view/DisplayCompat;->isCurrentModeTheLargestMode(Landroid/view/Display;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/graphics/Point;

    const/16 v1, 0xf00

    const/16 v2, 0x870

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_1

    :array_0
    .array-data 1
        0x44t
        0x4bt
        0x12t
        0x19t
        0x5ct
        0xat
        0x44t
        0x42t
        0xdt
        0x56t
        0x41t
        0x4et
        0x44t
        0x5bt
        0x1bt
        0x52t
    .end array-data

    :array_1
    .array-data 1
        0x14t
        0x3t
        0xbt
        0x5ct
        0x59t
        0x16t
        0x4ct
        0x2t
        0xct
        0x4bt
        0x46t
        0x8t
        0x3t
        0x1ft
        0x48t
        0x4bt
        0x5ft
        0x1et
        0x7t
    .end array-data
.end method

.method private static getDisplaySize(Landroid/content/Context;Landroid/view/Display;)Landroid/graphics/Point;
    .locals 3

    invoke-static {p0, p1}, Landroidx/core/view/DisplayCompat;->getCurrentDisplaySizeFromWorkarounds(Landroid/content/Context;Landroid/view/Display;)Landroid/graphics/Point;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1

    invoke-static {p1, v0}, Landroidx/core/view/DisplayCompat$Api17Impl;->getRealSize(Landroid/view/Display;Landroid/graphics/Point;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    goto :goto_0
.end method

.method public static getMode(Landroid/content/Context;Landroid/view/Display;)Landroidx/core/view/DisplayCompat$ModeCompat;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1}, Landroidx/core/view/DisplayCompat$Api23Impl;->getMode(Landroid/content/Context;Landroid/view/Display;)Landroidx/core/view/DisplayCompat$ModeCompat;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroidx/core/view/DisplayCompat$ModeCompat;

    invoke-static {p0, p1}, Landroidx/core/view/DisplayCompat;->getDisplaySize(Landroid/content/Context;Landroid/view/Display;)Landroid/graphics/Point;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/core/view/DisplayCompat$ModeCompat;-><init>(Landroid/graphics/Point;)V

    goto :goto_0
.end method

.method public static getSupportedModes(Landroid/content/Context;Landroid/view/Display;)[Landroidx/core/view/DisplayCompat$ModeCompat;
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1}, Landroidx/core/view/DisplayCompat$Api23Impl;->getSupportedModes(Landroid/content/Context;Landroid/view/Display;)[Landroidx/core/view/DisplayCompat$ModeCompat;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/core/view/DisplayCompat$ModeCompat;

    const/4 v1, 0x0

    invoke-static {p0, p1}, Landroidx/core/view/DisplayCompat;->getMode(Landroid/content/Context;Landroid/view/Display;)Landroidx/core/view/DisplayCompat$ModeCompat;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_0
.end method

.method private static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/16 v0, 0x1b

    :try_start_0
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "58b643"

    const/16 v2, 0x34b9

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "3f2515"

    const-wide/32 v4, -0x4d9208f0

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    :array_0
    .array-data 1
        0x54t
        0x56t
        0x6t
        0x44t
        0x5bt
        0x5at
        0x51t
        0x16t
        0xdt
        0x45t
        0x1at
        0x60t
        0x4ct
        0x4bt
        0x16t
        0x53t
        0x59t
        0x63t
        0x47t
        0x57t
        0x12t
        0x53t
        0x46t
        0x47t
        0x5ct
        0x5dt
        0x11t
    .end array-data

    :array_1
    .array-data 1
        0x54t
        0x3t
        0x46t
    .end array-data
.end method

.method static isCurrentModeTheLargestMode(Landroid/view/Display;)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Landroidx/core/view/DisplayCompat$Api23Impl;->isCurrentModeTheLargestMode(Landroid/view/Display;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isSonyBravia4kTv(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x1

    invoke-static {p0}, Landroidx/core/view/DisplayCompat;->isTv(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "822837"

    const-wide/32 v4, -0x50034ded

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const/4 v2, 0x6

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "630d58"

    invoke-static {v2, v3, v0, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x20

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v3, "6914b5"

    const/16 v4, 0x14d1

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :array_0
    .array-data 1
        0x6bt
        0x5dt
        0x5ct
        0x41t
    .end array-data

    :array_1
    .array-data 1
        0x74t
        0x61t
        0x71t
        0x32t
        0x7ct
        0x79t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x55t
        0x56t
        0x5ct
        0x1at
        0x11t
        0x5at
        0x58t
        0x40t
        0x1ft
        0x50t
        0x16t
        0x43t
        0x18t
        0x51t
        0x50t
        0x46t
        0x6t
        0x42t
        0x57t
        0x4bt
        0x54t
        0x1at
        0x12t
        0x54t
        0x58t
        0x5ct
        0x5dt
        0x1at
        0x13t
        0x53t
        0x5et
        0x5dt
    .end array-data
.end method

.method private static isTv(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "039b46"

    const v2, 0x4dad62f3    # 3.636179E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :array_0
    .array-data 1
        0x45t
        0x5at
        0x54t
        0xdt
        0x50t
        0x53t
    .end array-data
.end method

.method private static parseDisplaySize(Ljava/lang/String;)Landroid/graphics/Point;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [B

    const/16 v2, 0x1e

    aput-byte v2, v1, v3

    const-string v2, "fee957"

    const-wide v4, 0x41d587517e400000L    # 1.444759033E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    aget-object v1, v0, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v1, :cond_0

    if-lez v0, :cond_0

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object v2

    :cond_0
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0}, Ljava/lang/NumberFormatException;-><init>()V

    throw v0
.end method

.method private static parsePhysicalDisplaySizeFromSystemProperties(Ljava/lang/String;Landroid/view/Display;)Landroid/graphics/Point;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Landroidx/core/view/DisplayCompat;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    invoke-static {v1}, Landroidx/core/view/DisplayCompat;->parseDisplaySize(Ljava/lang/String;)Landroid/graphics/Point;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
