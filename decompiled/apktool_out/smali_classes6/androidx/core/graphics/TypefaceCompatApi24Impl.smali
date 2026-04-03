.class Landroidx/core/graphics/TypefaceCompatApi24Impl;
.super Landroidx/core/graphics/TypefaceCompatBaseImpl;


# static fields
.field private static final ADD_FONT_WEIGHT_STYLE_METHOD:Ljava/lang/String;

.field private static final CREATE_FROM_FAMILIES_WITH_DEFAULT_METHOD:Ljava/lang/String;

.field private static final FONT_FAMILY_CLASS:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static final sAddFontWeightStyle:Ljava/lang/reflect/Method;

.field private static final sCreateFromFamiliesWithDefault:Ljava/lang/reflect/Method;

.field private static final sFontFamily:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final sFontFamilyCtor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/16 v9, 0x17

    const/16 v0, 0x12

    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v2, "78b3e7"

    const-wide v4, 0x41dc0b9b8b800000L    # 1.882091054E9

    invoke-static {v0, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/graphics/TypefaceCompatApi24Impl;->ADD_FONT_WEIGHT_STYLE_METHOD:Ljava/lang/String;

    const/16 v0, 0x1d

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v2, "3a632e"

    const/16 v3, -0x8e1

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/graphics/TypefaceCompatApi24Impl;->CREATE_FROM_FAMILIES_WITH_DEFAULT_METHOD:Ljava/lang/String;

    const/16 v0, 0x1b

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v2, "6dca47"

    invoke-static {v0, v2, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/graphics/TypefaceCompatApi24Impl;->FONT_FAMILY_CLASS:Ljava/lang/String;

    new-array v0, v9, [B

    fill-array-data v0, :array_3

    const-string v2, "9128a3"

    const/16 v3, -0x407d

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/graphics/TypefaceCompatApi24Impl;->TAG:Ljava/lang/String;

    const/16 v0, 0x1b

    :try_start_0
    new-array v0, v0, [B

    fill-array-data v0, :array_4

    const-string v2, "4a1c2d"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    const/16 v0, 0x12

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    const-string v2, "a3154b"

    const-wide/32 v6, 0x4bffc64b

    invoke-static {v0, v2, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/nio/ByteBuffer;

    aput-object v6, v2, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v2, v5

    const/4 v5, 0x2

    const-class v6, Ljava/util/List;

    aput-object v6, v2, v5

    const/4 v5, 0x3

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v2, v5

    const/4 v5, 0x4

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v2, v5

    invoke-virtual {v4, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-class v0, Landroid/graphics/Typeface;

    const/16 v5, 0x1d

    new-array v5, v5, [B

    fill-array-data v5, :array_6

    const-string v6, "2105a6"

    const/16 v7, 0xb37

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v4, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    :goto_0
    sput-object v2, Landroidx/core/graphics/TypefaceCompatApi24Impl;->sFontFamilyCtor:Ljava/lang/reflect/Constructor;

    sput-object v3, Landroidx/core/graphics/TypefaceCompatApi24Impl;->sFontFamily:Ljava/lang/Class;

    sput-object v1, Landroidx/core/graphics/TypefaceCompatApi24Impl;->sAddFontWeightStyle:Ljava/lang/reflect/Method;

    sput-object v0, Landroidx/core/graphics/TypefaceCompatApi24Impl;->sCreateFromFamiliesWithDefault:Ljava/lang/reflect/Method;

    return-void

    :catch_0
    move-exception v0

    :goto_1
    new-array v2, v9, [B

    fill-array-data v2, :array_7

    const-string v3, "019cee"

    const/16 v4, 0x7f4f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    move-object v2, v1

    move-object v3, v1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    nop

    :array_0
    .array-data 1
        0x56t
        0x5ct
        0x6t
        0x75t
        0xat
        0x59t
        0x43t
        0x6ft
        0x7t
        0x5at
        0x2t
        0x5ft
        0x43t
        0x6bt
        0x16t
        0x4at
        0x9t
        0x52t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x50t
        0x13t
        0x53t
        0x52t
        0x46t
        0x0t
        0x75t
        0x13t
        0x59t
        0x5et
        0x74t
        0x4t
        0x5et
        0x8t
        0x5at
        0x5at
        0x57t
        0x16t
        0x64t
        0x8t
        0x42t
        0x5bt
        0x76t
        0x0t
        0x55t
        0x0t
        0x43t
        0x5ft
        0x46t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x57t
        0xat
        0x7t
        0x13t
        0x5bt
        0x5et
        0x52t
        0x4at
        0x4t
        0x13t
        0x55t
        0x47t
        0x5et
        0xdt
        0x0t
        0x12t
        0x1at
        0x71t
        0x59t
        0xat
        0x17t
        0x27t
        0x55t
        0x5at
        0x5ft
        0x8t
        0x1at
    .end array-data

    :array_3
    .array-data 1
        0x6dt
        0x48t
        0x42t
        0x5dt
        0x7t
        0x52t
        0x5at
        0x54t
        0x71t
        0x57t
        0xct
        0x43t
        0x58t
        0x45t
        0x73t
        0x48t
        0x8t
        0x1t
        0xdt
        0x78t
        0x5ft
        0x48t
        0xdt
    .end array-data

    :array_4
    .array-data 1
        0x55t
        0xft
        0x55t
        0x11t
        0x5dt
        0xdt
        0x50t
        0x4ft
        0x56t
        0x11t
        0x53t
        0x14t
        0x5ct
        0x8t
        0x52t
        0x10t
        0x1ct
        0x22t
        0x5bt
        0xft
        0x45t
        0x25t
        0x53t
        0x9t
        0x5dt
        0xdt
        0x48t
    .end array-data

    :array_5
    .array-data 1
        0x0t
        0x57t
        0x55t
        0x73t
        0x5bt
        0xct
        0x15t
        0x64t
        0x54t
        0x5ct
        0x53t
        0xat
        0x15t
        0x60t
        0x45t
        0x4ct
        0x58t
        0x7t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x51t
        0x43t
        0x55t
        0x54t
        0x15t
        0x53t
        0x74t
        0x43t
        0x5ft
        0x58t
        0x27t
        0x57t
        0x5ft
        0x58t
        0x5ct
        0x5ct
        0x4t
        0x45t
        0x65t
        0x58t
        0x44t
        0x5dt
        0x25t
        0x53t
        0x54t
        0x50t
        0x45t
        0x59t
        0x15t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x64t
        0x48t
        0x49t
        0x6t
        0x3t
        0x4t
        0x53t
        0x54t
        0x7at
        0xct
        0x8t
        0x15t
        0x51t
        0x45t
        0x78t
        0x13t
        0xct
        0x57t
        0x4t
        0x78t
        0x54t
        0x13t
        0x9t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/core/graphics/TypefaceCompatBaseImpl;-><init>()V

    return-void
.end method

.method private static addFontWeightStyle(Ljava/lang/Object;Ljava/nio/ByteBuffer;IIZ)Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    sget-object v0, Landroidx/core/graphics/TypefaceCompatApi24Impl;->sAddFontWeightStyle:Ljava/lang/reflect/Method;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

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

.method private static createFromFamiliesWithDefault(Ljava/lang/Object;)Landroid/graphics/Typeface;
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    sget-object v0, Landroidx/core/graphics/TypefaceCompatApi24Impl;->sFontFamily:Ljava/lang/Class;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p0}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    sget-object v2, Landroidx/core/graphics/TypefaceCompatApi24Impl;->sCreateFromFamiliesWithDefault:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

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

.method public static isUsable()Z
    .locals 5

    sget-object v0, Landroidx/core/graphics/TypefaceCompatApi24Impl;->sAddFontWeightStyle:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    sget-object v1, Landroidx/core/graphics/TypefaceCompatApi24Impl;->TAG:Ljava/lang/String;

    const/16 v2, 0x4e

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "2afbba"

    const/16 v4, -0x251b

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :array_0
    .array-data 1
        0x67t
        0xft
        0x7t
        0x0t
        0xet
        0x4t
        0x12t
        0x15t
        0x9t
        0x42t
        0x1t
        0xet
        0x5et
        0xdt
        0x3t
        0x1t
        0x16t
        0x41t
        0x5ct
        0x4t
        0x5t
        0x7t
        0x11t
        0x12t
        0x53t
        0x13t
        0x1ft
        0x42t
        0x12t
        0x13t
        0x5bt
        0x17t
        0x7t
        0x16t
        0x7t
        0x41t
        0x5ft
        0x4t
        0x12t
        0xat
        0xdt
        0x5t
        0x41t
        0x4ft
        0x20t
        0x3t
        0xet
        0xdt
        0x50t
        0x0t
        0x5t
        0x9t
        0x42t
        0x15t
        0x5dt
        0x41t
        0xat
        0x7t
        0x5t
        0x0t
        0x51t
        0x18t
        0x46t
        0xbt
        0xft
        0x11t
        0x5et
        0x4t
        0xbt
        0x7t
        0xct
        0x15t
        0x53t
        0x15t
        0xft
        0xdt
        0xct
        0x4ft
    .end array-data
.end method

.method private static newFamily()Ljava/lang/Object;
    .locals 2

    :try_start_0
    sget-object v0, Landroidx/core/graphics/TypefaceCompatApi24Impl;->sFontFamilyCtor:Ljava/lang/reflect/Constructor;

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
.method public createFromFontFamilyFilesResourceEntry(Landroid/content/Context;Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
    .locals 9

    const/4 v0, 0x0

    invoke-static {}, Landroidx/core/graphics/TypefaceCompatApi24Impl;->newFamily()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p2}, Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;->getEntries()[Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    move-result-object v3

    array-length v4, v3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_2

    aget-object v5, v3, v1

    invoke-virtual {v5}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getResourceId()I

    move-result v6

    invoke-static {p1, p3, v6}, Landroidx/core/graphics/TypefaceCompatUtil;->copyToDirectBuffer(Landroid/content/Context;Landroid/content/res/Resources;I)Ljava/nio/ByteBuffer;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getTtcIndex()I

    move-result v7

    invoke-virtual {v5}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getWeight()I

    move-result v8

    invoke-virtual {v5}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->isItalic()Z

    move-result v5

    invoke-static {v2, v6, v7, v8, v5}, Landroidx/core/graphics/TypefaceCompatApi24Impl;->addFontWeightStyle(Ljava/lang/Object;Ljava/nio/ByteBuffer;IIZ)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v2}, Landroidx/core/graphics/TypefaceCompatApi24Impl;->createFromFamiliesWithDefault(Ljava/lang/Object;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0
.end method

.method public createFromFontInfo(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroid/graphics/Typeface;
    .locals 9

    const/4 v1, 0x0

    invoke-static {}, Landroidx/core/graphics/TypefaceCompatApi24Impl;->newFamily()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v4, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v4}, Landroidx/collection/SimpleArrayMap;-><init>()V

    array-length v5, p3

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v5, :cond_4

    aget-object v6, p3, v2

    invoke-virtual {v6}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    if-nez v0, :cond_1

    invoke-static {p1, p2, v7}, Landroidx/core/graphics/TypefaceCompatUtil;->mmap(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/net/Uri;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v4, v7, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v6}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getTtcIndex()I

    move-result v7

    invoke-virtual {v6}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getWeight()I

    move-result v8

    invoke-virtual {v6}, Landroidx/core/provider/FontsContractCompat$FontInfo;->isItalic()Z

    move-result v6

    invoke-static {v3, v0, v7, v8, v6}, Landroidx/core/graphics/TypefaceCompatApi24Impl;->addFontWeightStyle(Ljava/lang/Object;Ljava/nio/ByteBuffer;IIZ)Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_4
    invoke-static {v3}, Landroidx/core/graphics/TypefaceCompatApi24Impl;->createFromFamiliesWithDefault(Ljava/lang/Object;)Landroid/graphics/Typeface;

    move-result-object v0

    if-nez v0, :cond_5

    move-object v0, v1

    goto :goto_0

    :cond_5
    invoke-static {v0, p4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0
.end method
