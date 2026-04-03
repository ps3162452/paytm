.class public Landroidx/core/graphics/TypefaceCompatApi26Impl;
.super Landroidx/core/graphics/TypefaceCompatApi21Impl;


# static fields
.field private static final ABORT_CREATION_METHOD:Ljava/lang/String;

.field private static final ADD_FONT_FROM_ASSET_MANAGER_METHOD:Ljava/lang/String;

.field private static final ADD_FONT_FROM_BUFFER_METHOD:Ljava/lang/String;

.field private static final CREATE_FROM_FAMILIES_WITH_DEFAULT_METHOD:Ljava/lang/String;

.field private static final FONT_FAMILY_CLASS:Ljava/lang/String;

.field private static final FREEZE_METHOD:Ljava/lang/String;

.field private static final RESOLVE_BY_FONT_TABLE:I = -0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected final mAbortCreation:Ljava/lang/reflect/Method;

.field protected final mAddFontFromAssetManager:Ljava/lang/reflect/Method;

.field protected final mAddFontFromBuffer:Ljava/lang/reflect/Method;

.field protected final mCreateFromFamiliesWithDefault:Ljava/lang/reflect/Method;

.field protected final mFontFamily:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected final mFontFamilyCtor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field protected final mFreeze:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v5, 0x17

    const/4 v4, 0x1

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "877081"

    const-wide v2, 0x41d97d2834c00000L    # 1.710530771E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/graphics/TypefaceCompatApi26Impl;->ABORT_CREATION_METHOD:Ljava/lang/String;

    new-array v0, v5, [B

    fill-array-data v0, :array_1

    const-string v1, "7bdba7"

    const/16 v2, -0x404f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/graphics/TypefaceCompatApi26Impl;->ADD_FONT_FROM_ASSET_MANAGER_METHOD:Ljava/lang/String;

    const/16 v0, 0x11

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "4b1960"

    const v2, 0x4ef20bdc

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/graphics/TypefaceCompatApi26Impl;->ADD_FONT_FROM_BUFFER_METHOD:Ljava/lang/String;

    const/16 v0, 0x1d

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v1, "728b26"

    invoke-static {v0, v1, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/graphics/TypefaceCompatApi26Impl;->CREATE_FROM_FAMILIES_WITH_DEFAULT_METHOD:Ljava/lang/String;

    const/16 v0, 0x1b

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    const-string v1, "da6715"

    const/16 v2, -0x245a

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/graphics/TypefaceCompatApi26Impl;->FONT_FAMILY_CLASS:Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    const-string v1, "f9ed56"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/graphics/TypefaceCompatApi26Impl;->FREEZE_METHOD:Ljava/lang/String;

    new-array v0, v5, [B

    fill-array-data v0, :array_6

    const-string v1, "610b39"

    invoke-static {v0, v1, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/graphics/TypefaceCompatApi26Impl;->TAG:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x59t
        0x55t
        0x58t
        0x42t
        0x4ct
        0x72t
        0x4at
        0x52t
        0x56t
        0x44t
        0x51t
        0x5et
        0x56t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x56t
        0x6t
        0x0t
        0x24t
        0xet
        0x59t
        0x43t
        0x24t
        0x16t
        0xdt
        0xct
        0x76t
        0x44t
        0x11t
        0x1t
        0x16t
        0x2ct
        0x56t
        0x59t
        0x3t
        0x3t
        0x7t
        0x13t
    .end array-data

    :array_2
    .array-data 1
        0x55t
        0x6t
        0x55t
        0x7ft
        0x59t
        0x5et
        0x40t
        0x24t
        0x43t
        0x56t
        0x5bt
        0x72t
        0x41t
        0x4t
        0x57t
        0x5ct
        0x44t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x54t
        0x40t
        0x5dt
        0x3t
        0x46t
        0x53t
        0x71t
        0x40t
        0x57t
        0xft
        0x74t
        0x57t
        0x5at
        0x5bt
        0x54t
        0xbt
        0x57t
        0x45t
        0x60t
        0x5bt
        0x4ct
        0xat
        0x76t
        0x53t
        0x51t
        0x53t
        0x4dt
        0xet
        0x46t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x5t
        0xft
        0x52t
        0x45t
        0x5et
        0x5ct
        0x0t
        0x4ft
        0x51t
        0x45t
        0x50t
        0x45t
        0xct
        0x8t
        0x55t
        0x44t
        0x1ft
        0x73t
        0xbt
        0xft
        0x42t
        0x71t
        0x50t
        0x58t
        0xdt
        0xdt
        0x4ft
    .end array-data

    :array_5
    .array-data 1
        0x0t
        0x4bt
        0x0t
        0x1t
        0x4ft
        0x53t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x62t
        0x48t
        0x40t
        0x7t
        0x55t
        0x58t
        0x55t
        0x54t
        0x73t
        0xdt
        0x5et
        0x49t
        0x57t
        0x45t
        0x71t
        0x12t
        0x5at
        0xbt
        0x0t
        0x78t
        0x5dt
        0x12t
        0x5ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 8

    const/4 v1, 0x0

    invoke-direct {p0}, Landroidx/core/graphics/TypefaceCompatApi21Impl;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->obtainFontFamily()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->obtainFontFamilyCtor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    invoke-virtual {p0, v7}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->obtainAddFontFromAssetManagerMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {p0, v7}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->obtainAddFontFromBufferMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {p0, v7}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->obtainFreezeMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {p0, v7}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->obtainAbortCreationMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {p0, v7}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->obtainCreateFromFamiliesWithDefaultMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    :goto_0
    iput-object v6, p0, Landroidx/core/graphics/TypefaceCompatApi26Impl;->mFontFamily:Ljava/lang/Class;

    iput-object v5, p0, Landroidx/core/graphics/TypefaceCompatApi26Impl;->mFontFamilyCtor:Ljava/lang/reflect/Constructor;

    iput-object v4, p0, Landroidx/core/graphics/TypefaceCompatApi26Impl;->mAddFontFromAssetManager:Ljava/lang/reflect/Method;

    iput-object v3, p0, Landroidx/core/graphics/TypefaceCompatApi26Impl;->mAddFontFromBuffer:Ljava/lang/reflect/Method;

    iput-object v2, p0, Landroidx/core/graphics/TypefaceCompatApi26Impl;->mFreeze:Ljava/lang/reflect/Method;

    iput-object v1, p0, Landroidx/core/graphics/TypefaceCompatApi26Impl;->mAbortCreation:Ljava/lang/reflect/Method;

    iput-object v0, p0, Landroidx/core/graphics/TypefaceCompatApi26Impl;->mCreateFromFamiliesWithDefault:Ljava/lang/reflect/Method;

    return-void

    :catch_0
    move-exception v0

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x2e

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "74175e"

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x17

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "dd4f87"

    const-wide/32 v6, -0x1552f75a

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :array_0
    .array-data 1
        0x62t
        0x5at
        0x50t
        0x55t
        0x59t
        0x0t
        0x17t
        0x40t
        0x5et
        0x17t
        0x56t
        0xat
        0x5bt
        0x58t
        0x54t
        0x54t
        0x41t
        0x45t
        0x59t
        0x51t
        0x52t
        0x52t
        0x46t
        0x16t
        0x56t
        0x46t
        0x48t
        0x17t
        0x58t
        0x0t
        0x43t
        0x5ct
        0x5et
        0x53t
        0x46t
        0x45t
        0x51t
        0x5bt
        0x43t
        0x17t
        0x56t
        0x9t
        0x56t
        0x47t
        0x42t
        0x17t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x30t
        0x1dt
        0x44t
        0x3t
        0x5et
        0x56t
        0x7t
        0x1t
        0x77t
        0x9t
        0x55t
        0x47t
        0x5t
        0x10t
        0x75t
        0x16t
        0x51t
        0x5t
        0x52t
        0x2dt
        0x59t
        0x16t
        0x54t
    .end array-data
.end method

.method private abortCreation(Ljava/lang/Object;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroidx/core/graphics/TypefaceCompatApi26Impl;->mAbortCreation:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private addFontFromAssetManager(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;III[Landroid/graphics/fonts/FontVariationAxis;)Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Landroidx/core/graphics/TypefaceCompatApi26Impl;->mAddFontFromAssetManager:Ljava/lang/reflect/Method;

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    aput-object p7, v2, v3

    invoke-virtual {v0, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :goto_1
    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private addFontFromBuffer(Ljava/lang/Object;Ljava/nio/ByteBuffer;III)Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Landroidx/core/graphics/TypefaceCompatApi26Impl;->mAddFontFromBuffer:Ljava/lang/reflect/Method;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :goto_1
    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private freeze(Ljava/lang/Object;)Z
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Landroidx/core/graphics/TypefaceCompatApi26Impl;->mFreeze:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :goto_1
    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private isFontFamilyPrivateAPIAvailable()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/core/graphics/TypefaceCompatApi26Impl;->mAddFontFromAssetManager:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    sget-object v1, Landroidx/core/graphics/TypefaceCompatApi26Impl;->TAG:Ljava/lang/String;

    const/16 v2, 0x4f

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "0cf3b3"

    invoke-static {v2, v3, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Landroidx/core/graphics/TypefaceCompatApi26Impl;->mAddFontFromAssetManager:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    nop

    :array_0
    .array-data 1
        0x65t
        0xdt
        0x7t
        0x51t
        0xet
        0x56t
        0x10t
        0x17t
        0x9t
        0x13t
        0x1t
        0x5ct
        0x5ct
        0xft
        0x3t
        0x50t
        0x16t
        0x13t
        0x5et
        0x6t
        0x5t
        0x56t
        0x11t
        0x40t
        0x51t
        0x11t
        0x1ft
        0x13t
        0x12t
        0x41t
        0x59t
        0x15t
        0x7t
        0x47t
        0x7t
        0x13t
        0x5dt
        0x6t
        0x12t
        0x5bt
        0xdt
        0x57t
        0x43t
        0x4dt
        0x46t
        0x75t
        0x3t
        0x5ft
        0x5ct
        0x1t
        0x7t
        0x50t
        0x9t
        0x13t
        0x44t
        0xct
        0x46t
        0x5ft
        0x7t
        0x54t
        0x51t
        0x0t
        0x1ft
        0x13t
        0xbt
        0x5et
        0x40t
        0xft
        0x3t
        0x5et
        0x7t
        0x5dt
        0x44t
        0x2t
        0x12t
        0x5at
        0xdt
        0x5dt
        0x1et
    .end array-data
.end method

.method private newFamily()Ljava/lang/Object;
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroidx/core/graphics/TypefaceCompatApi26Impl;->mFontFamilyCtor:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method protected createFromFamiliesWithDefault(Ljava/lang/Object;)Landroid/graphics/Typeface;
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Landroidx/core/graphics/TypefaceCompatApi26Impl;->mFontFamily:Ljava/lang/Class;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object v2, p0, Landroidx/core/graphics/TypefaceCompatApi26Impl;->mCreateFromFamiliesWithDefault:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x2

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :goto_1
    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public createFromFontFamilyFilesResourceEntry(Landroid/content/Context;Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
    .locals 11

    invoke-direct {p0}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->isFontFamilyPrivateAPIAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/core/graphics/TypefaceCompatApi21Impl;->createFromFontFamilyFilesResourceEntry(Landroid/content/Context;Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->newFamily()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;->getEntries()[Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    move-result-object v9

    array-length v10, v9

    const/4 v0, 0x0

    move v8, v0

    :goto_1
    if-ge v8, v10, :cond_3

    aget-object v0, v9, v8

    invoke-virtual {v0}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getTtcIndex()I

    move-result v4

    invoke-virtual {v0}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getWeight()I

    move-result v5

    invoke-virtual {v0}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->isItalic()Z

    move-result v6

    invoke-virtual {v0}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getVariationSettings()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/fonts/FontVariationAxis;->fromFontVariationSettings(Ljava/lang/String;)[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->addFontFromAssetManager(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;III[Landroid/graphics/fonts/FontVariationAxis;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, v2}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->abortCreation(Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_1

    :cond_3
    invoke-direct {p0, v2}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->freeze(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v2}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->createFromFamiliesWithDefault(Ljava/lang/Object;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0
.end method

.method public createFromFontInfo(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroid/graphics/Typeface;
    .locals 11

    const/4 v0, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    array-length v1, p3

    if-ge v1, v6, :cond_1

    move-object v0, v7

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->isFontFamilyPrivateAPIAvailable()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0, p3, p4}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->findBestInfo([Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroidx/core/provider/FontsContractCompat$FontInfo;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    :try_start_0
    invoke-virtual {v0}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [B

    const/4 v4, 0x0

    const/16 v5, 0x16

    aput-byte v5, v3, v4

    const-string v4, "d41d1a"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    if-nez v1, :cond_3

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move-object v0, v7

    goto :goto_0

    :cond_3
    :try_start_1
    new-instance v2, Landroid/graphics/Typeface$Builder;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/Typeface$Builder;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {v0}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getWeight()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Typeface$Builder;->setWeight(I)Landroid/graphics/Typeface$Builder;

    move-result-object v2

    invoke-virtual {v0}, Landroidx/core/provider/FontsContractCompat$FontInfo;->isItalic()Z

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/Typeface$Builder;->setItalic(Z)Landroid/graphics/Typeface$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v7

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_4

    :try_start_3
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_4
    :goto_1
    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_5
    invoke-static {p1, p3, p2}, Landroidx/core/graphics/TypefaceCompatUtil;->readFontInfoIntoByteBuffer(Landroid/content/Context;[Landroidx/core/provider/FontsContractCompat$FontInfo;Landroid/os/CancellationSignal;)Ljava/util/Map;

    move-result-object v9

    invoke-direct {p0}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->newFamily()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_6

    move-object v0, v7

    goto :goto_0

    :cond_6
    array-length v10, p3

    move v8, v0

    :goto_2
    if-ge v8, v10, :cond_9

    aget-object v5, p3, v8

    invoke-virtual {v5}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    if-nez v2, :cond_7

    :goto_3
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_2

    :cond_7
    invoke-virtual {v5}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getTtcIndex()I

    move-result v3

    invoke-virtual {v5}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getWeight()I

    move-result v4

    invoke-virtual {v5}, Landroidx/core/provider/FontsContractCompat$FontInfo;->isItalic()Z

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->addFontFromBuffer(Ljava/lang/Object;Ljava/nio/ByteBuffer;III)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-direct {p0, v1}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->abortCreation(Ljava/lang/Object;)V

    move-object v0, v7

    goto/16 :goto_0

    :cond_8
    move v0, v6

    goto :goto_3

    :cond_9
    if-nez v0, :cond_a

    invoke-direct {p0, v1}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->abortCreation(Ljava/lang/Object;)V

    move-object v0, v7

    goto/16 :goto_0

    :cond_a
    invoke-direct {p0, v1}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->freeze(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    move-object v0, v7

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p0, v1}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->createFromFamiliesWithDefault(Ljava/lang/Object;)Landroid/graphics/Typeface;

    move-result-object v0

    if-nez v0, :cond_c

    move-object v0, v7

    goto/16 :goto_0

    :cond_c
    invoke-static {v0, p4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    goto :goto_1
.end method

.method public createFromResourcesFontFile(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    .locals 8

    const/4 v5, -0x1

    const/4 v7, 0x0

    invoke-direct {p0}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->isFontFamilyPrivateAPIAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super/range {p0 .. p5}, Landroidx/core/graphics/TypefaceCompatApi21Impl;->createFromResourcesFontFile(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    :cond_0
    :goto_0
    return-object v7

    :cond_1
    invoke-direct {p0}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->newFamily()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p4

    move v6, v5

    invoke-direct/range {v0 .. v7}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->addFontFromAssetManager(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;III[Landroid/graphics/fonts/FontVariationAxis;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, v2}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->abortCreation(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v2}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->freeze(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->createFromFamiliesWithDefault(Ljava/lang/Object;)Landroid/graphics/Typeface;

    move-result-object v7

    goto :goto_0
.end method

.method protected obtainAbortCreationMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    sget-object v0, Landroidx/core/graphics/TypefaceCompatApi26Impl;->ABORT_CREATION_METHOD:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method protected obtainAddFontFromAssetManagerMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    sget-object v0, Landroidx/core/graphics/TypefaceCompatApi26Impl;->ADD_FONT_FROM_ASSET_MANAGER_METHOD:Ljava/lang/String;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/content/res/AssetManager;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-class v3, [Landroid/graphics/fonts/FontVariationAxis;

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method protected obtainAddFontFromBufferMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    sget-object v0, Landroidx/core/graphics/TypefaceCompatApi26Impl;->ADD_FONT_FROM_BUFFER_METHOD:Ljava/lang/String;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/nio/ByteBuffer;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, [Landroid/graphics/fonts/FontVariationAxis;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method protected obtainCreateFromFamiliesWithDefaultMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    const/4 v5, 0x1

    const-class v0, Landroid/graphics/Typeface;

    sget-object v1, Landroidx/core/graphics/TypefaceCompatApi26Impl;->CREATE_FROM_FAMILIES_WITH_DEFAULT_METHOD:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-static {p1, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v3

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    return-object v0
.end method

.method protected obtainFontFamily()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    sget-object v0, Landroidx/core/graphics/TypefaceCompatApi26Impl;->FONT_FAMILY_CLASS:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method protected obtainFontFamilyCtor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method protected obtainFreezeMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    sget-object v0, Landroidx/core/graphics/TypefaceCompatApi26Impl;->FREEZE_METHOD:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method
