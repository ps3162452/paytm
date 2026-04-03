.class Landroidx/core/graphics/TypefaceCompatApi21Impl;
.super Landroidx/core/graphics/TypefaceCompatBaseImpl;


# static fields
.field private static final ADD_FONT_WEIGHT_STYLE_METHOD:Ljava/lang/String;

.field private static final CREATE_FROM_FAMILIES_WITH_DEFAULT_METHOD:Ljava/lang/String;

.field private static final FONT_FAMILY_CLASS:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static sAddFontWeightStyle:Ljava/lang/reflect/Method;

.field private static sCreateFromFamiliesWithDefault:Ljava/lang/reflect/Method;

.field private static sFontFamily:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sFontFamilyCtor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private static sHasInitBeenCalled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v0, 0x12

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "9d53e6"

    const v2, -0x32e5e82c

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/graphics/TypefaceCompatApi21Impl;->ADD_FONT_WEIGHT_STYLE_METHOD:Ljava/lang/String;

    const/16 v0, 0x1d

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "04022e"

    invoke-static {v0, v1, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/graphics/TypefaceCompatApi21Impl;->CREATE_FROM_FAMILIES_WITH_DEFAULT_METHOD:Ljava/lang/String;

    const/16 v0, 0x1b

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "f81bac"

    invoke-static {v0, v1, v4, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/graphics/TypefaceCompatApi21Impl;->FONT_FAMILY_CLASS:Ljava/lang/String;

    const/16 v0, 0x17

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v1, "4e3d87"

    const-wide/32 v2, -0x55a4def8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/graphics/TypefaceCompatApi21Impl;->TAG:Ljava/lang/String;

    sput-boolean v4, Landroidx/core/graphics/TypefaceCompatApi21Impl;->sHasInitBeenCalled:Z

    return-void

    nop

    :array_0
    .array-data 1
        0x58t
        0x0t
        0x51t
        0x75t
        0xat
        0x58t
        0x4dt
        0x33t
        0x50t
        0x5at
        0x2t
        0x5et
        0x4dt
        0x37t
        0x41t
        0x4at
        0x9t
        0x53t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x53t
        0x46t
        0x55t
        0x53t
        0x46t
        0x0t
        0x76t
        0x46t
        0x5ft
        0x5ft
        0x74t
        0x4t
        0x5dt
        0x5dt
        0x5ct
        0x5bt
        0x57t
        0x16t
        0x67t
        0x5dt
        0x44t
        0x5at
        0x76t
        0x0t
        0x56t
        0x55t
        0x45t
        0x5et
        0x46t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x7t
        0x56t
        0x55t
        0x10t
        0xet
        0xat
        0x2t
        0x16t
        0x56t
        0x10t
        0x0t
        0x13t
        0xet
        0x51t
        0x52t
        0x11t
        0x4ft
        0x25t
        0x9t
        0x56t
        0x45t
        0x24t
        0x0t
        0xet
        0xft
        0x54t
        0x48t
    .end array-data

    :array_3
    .array-data 1
        0x60t
        0x1ct
        0x43t
        0x1t
        0x5et
        0x56t
        0x57t
        0x0t
        0x70t
        0xbt
        0x55t
        0x47t
        0x55t
        0x11t
        0x72t
        0x14t
        0x51t
        0x5t
        0x5t
        0x2ct
        0x5et
        0x14t
        0x54t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/core/graphics/TypefaceCompatBaseImpl;-><init>()V

    return-void
.end method

.method private static addFontWeightStyle(Ljava/lang/Object;Ljava/lang/String;IZ)Z
    .locals 4

    invoke-static {}, Landroidx/core/graphics/TypefaceCompatApi21Impl;->init()V

    :try_start_0
    sget-object v0, Landroidx/core/graphics/TypefaceCompatApi21Impl;->sAddFontWeightStyle:Ljava/lang/reflect/Method;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    return v0

    :catch_0
    move-exception v0

    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private static createFromFamiliesWithDefault(Ljava/lang/Object;)Landroid/graphics/Typeface;
    .locals 5

    invoke-static {}, Landroidx/core/graphics/TypefaceCompatApi21Impl;->init()V

    :try_start_0
    sget-object v0, Landroidx/core/graphics/TypefaceCompatApi21Impl;->sFontFamily:Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    sget-object v1, Landroidx/core/graphics/TypefaceCompatApi21Impl;->sCreateFromFamiliesWithDefault:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :catch_0
    move-exception v0

    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private getFile(Landroid/os/ParcelFileDescriptor;)Ljava/io/File;
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xe

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "bf10ba"

    const-wide/32 v4, 0x6b38fe84

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/system/Os;->readlink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v0

    iget v0, v0, Landroid/system/StructStat;->st_mode:I

    invoke-static {v0}, Landroid/system/OsConstants;->S_ISREG(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x4dt
        0x16t
        0x43t
        0x5ft
        0x1t
        0x4et
        0x11t
        0x3t
        0x5dt
        0x56t
        0x4dt
        0x7t
        0x6t
        0x49t
    .end array-data
.end method

.method private static init()V
    .locals 9

    const/4 v1, 0x0

    const/4 v2, 0x1

    sget-boolean v0, Landroidx/core/graphics/TypefaceCompatApi21Impl;->sHasInitBeenCalled:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sput-boolean v2, Landroidx/core/graphics/TypefaceCompatApi21Impl;->sHasInitBeenCalled:Z

    :try_start_0
    sget-object v0, Landroidx/core/graphics/TypefaceCompatApi21Impl;->FONT_FAMILY_CLASS:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    sget-object v0, Landroidx/core/graphics/TypefaceCompatApi21Impl;->ADD_FONT_WEIGHT_STYLE_METHOD:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v2, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v2, v5

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v2, v5

    invoke-virtual {v4, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-class v0, Landroid/graphics/Typeface;

    sget-object v5, Landroidx/core/graphics/TypefaceCompatApi21Impl;->CREATE_FROM_FAMILIES_WITH_DEFAULT_METHOD:Ljava/lang/String;

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

    :goto_1
    sput-object v2, Landroidx/core/graphics/TypefaceCompatApi21Impl;->sFontFamilyCtor:Ljava/lang/reflect/Constructor;

    sput-object v3, Landroidx/core/graphics/TypefaceCompatApi21Impl;->sFontFamily:Ljava/lang/Class;

    sput-object v1, Landroidx/core/graphics/TypefaceCompatApi21Impl;->sAddFontWeightStyle:Ljava/lang/reflect/Method;

    sput-object v0, Landroidx/core/graphics/TypefaceCompatApi21Impl;->sCreateFromFamiliesWithDefault:Ljava/lang/reflect/Method;

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_2
    sget-object v2, Landroidx/core/graphics/TypefaceCompatApi21Impl;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    move-object v2, v1

    move-object v3, v1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private static newFamily()Ljava/lang/Object;
    .locals 2

    invoke-static {}, Landroidx/core/graphics/TypefaceCompatApi21Impl;->init()V

    :try_start_0
    sget-object v0, Landroidx/core/graphics/TypefaceCompatApi21Impl;->sFontFamilyCtor:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public createFromFontFamilyFilesResourceEntry(Landroid/content/Context;Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
    .locals 9

    const/4 v0, 0x0

    invoke-static {}, Landroidx/core/graphics/TypefaceCompatApi21Impl;->newFamily()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2}, Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;->getEntries()[Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    move-result-object v3

    array-length v4, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_3

    aget-object v5, v3, v1

    invoke-static {p1}, Landroidx/core/graphics/TypefaceCompatUtil;->getTempFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v6

    if-nez v6, :cond_0

    :goto_1
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {v5}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getResourceId()I

    move-result v7

    invoke-static {v6, p3, v7}, Landroidx/core/graphics/TypefaceCompatUtil;->copyToFile(Ljava/io/File;Landroid/content/res/Resources;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    goto :goto_1

    :cond_1
    :try_start_1
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getWeight()I

    move-result v8

    invoke-virtual {v5}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->isItalic()Z

    move-result v5

    invoke-static {v2, v7, v8, v5}, Landroidx/core/graphics/TypefaceCompatApi21Impl;->addFontWeightStyle(Ljava/lang/Object;Ljava/lang/String;IZ)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    goto :goto_1

    :cond_2
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    throw v0

    :catch_0
    move-exception v1

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    goto :goto_1

    :cond_3
    invoke-static {v2}, Landroidx/core/graphics/TypefaceCompatApi21Impl;->createFromFamiliesWithDefault(Ljava/lang/Object;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_1
.end method

.method public createFromFontInfo(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroid/graphics/Typeface;
    .locals 6

    const/4 v2, 0x1

    const/4 v0, 0x0

    array-length v1, p3

    if-ge v1, v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p3, p4}, Landroidx/core/graphics/TypefaceCompatApi21Impl;->findBestInfo([Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroidx/core/provider/FontsContractCompat$FontInfo;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    :try_start_0
    invoke-virtual {v1}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [B

    const/4 v4, 0x0

    const/16 v5, 0x41

    aput-byte v5, v3, v4

    const-string v4, "3982d6"

    const/16 v5, -0x5a7c

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3, p2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    if-nez v2, :cond_2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-direct {p0, v2}, Landroidx/core/graphics/TypefaceCompatApi21Impl;->getFile(Landroid/os/ParcelFileDescriptor;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v3

    if-nez v3, :cond_5

    :cond_3
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-super {p0, p1, v3}, Landroidx/core/graphics/TypefaceCompatBaseImpl;->createFromInputStream(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Typeface;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_4

    :try_start_4
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_4
    move-object v0, v1

    goto :goto_0

    :cond_5
    :try_start_5
    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v1

    if-eqz v2, :cond_6

    :try_start_6
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_6
    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_1
    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v2, :cond_7

    :try_start_9
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :cond_7
    :goto_2
    :try_start_a
    throw v1
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    :catchall_2
    move-exception v3

    goto :goto_1

    :catchall_3
    move-exception v2

    goto :goto_2
.end method
