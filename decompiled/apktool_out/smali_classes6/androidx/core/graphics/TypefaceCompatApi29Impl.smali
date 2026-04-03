.class public Landroidx/core/graphics/TypefaceCompatApi29Impl;
.super Landroidx/core/graphics/TypefaceCompatBaseImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/core/graphics/TypefaceCompatBaseImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromFontFamilyFilesResourceEntry(Landroid/content/Context;Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
    .locals 10

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p2}, Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;->getEntries()[Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    move-result-object v6

    array-length v7, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v5, v4

    move-object v1, v2

    :goto_0
    if-ge v5, v7, :cond_2

    aget-object v8, v6, v5

    :try_start_1
    new-instance v0, Landroid/graphics/fonts/Font$Builder;

    invoke-virtual {v8}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getResourceId()I

    move-result v9

    invoke-direct {v0, p3, v9}, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/content/res/Resources;I)V

    invoke-virtual {v8}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getWeight()I

    move-result v9

    invoke-virtual {v0, v9}, Landroid/graphics/fonts/Font$Builder;->setWeight(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v9

    invoke-virtual {v8}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->isItalic()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    :goto_1
    invoke-virtual {v9, v0}, Landroid/graphics/fonts/Font$Builder;->setSlant(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v0

    invoke-virtual {v8}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getTtcIndex()I

    move-result v9

    invoke-virtual {v0, v9}, Landroid/graphics/fonts/Font$Builder;->setTtcIndex(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v0

    invoke-virtual {v8}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getVariationSettings()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/graphics/fonts/Font$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/fonts/Font$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    move-result-object v8

    if-nez v1, :cond_1

    new-instance v0, Landroid/graphics/fonts/FontFamily$Builder;

    invoke-direct {v0, v8}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    :goto_2
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move-object v1, v0

    goto :goto_0

    :cond_0
    move v0, v4

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v8}, Landroid/graphics/fonts/FontFamily$Builder;->addFont(Landroid/graphics/fonts/Font;)Landroid/graphics/fonts/FontFamily$Builder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_2

    :cond_2
    if-nez v1, :cond_3

    move-object v0, v2

    :goto_3
    return-object v0

    :cond_3
    :try_start_2
    new-instance v6, Landroid/graphics/fonts/FontStyle;

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_4

    const/16 v0, 0x2bc

    move v5, v0

    :goto_4
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_5

    move v0, v3

    :goto_5
    invoke-direct {v6, v5, v0}, Landroid/graphics/fonts/FontStyle;-><init>(II)V

    new-instance v0, Landroid/graphics/Typeface$CustomFallbackBuilder;

    invoke-virtual {v1}, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V

    invoke-virtual {v0, v6}, Landroid/graphics/Typeface$CustomFallbackBuilder;->setStyle(Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Typeface$CustomFallbackBuilder;->build()Landroid/graphics/Typeface;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto :goto_3

    :cond_4
    const/16 v0, 0x190

    move v5, v0

    goto :goto_4

    :cond_5
    move v0, v4

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v0, v2

    goto :goto_3
.end method

.method public createFromFontInfo(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroid/graphics/Typeface;
    .locals 12

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    :try_start_0
    array-length v5, p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x0

    const/4 v0, 0x0

    move v3, v0

    move-object v0, v1

    :goto_0
    const/4 v1, 0x1

    if-ge v3, v5, :cond_5

    aget-object v6, p3, v3

    :try_start_1
    invoke-virtual {v6}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getUri()Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [B

    const/4 v9, 0x0

    const/16 v10, 0x14

    aput-byte v10, v8, v9

    const-string v9, "f32281"

    const-wide v10, 0x41df9749bec00000L    # 2.120034043E9

    invoke-static {v8, v9, v10, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8, p2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    if-nez v7, :cond_1

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_1
    :try_start_2
    new-instance v8, Landroid/graphics/fonts/Font$Builder;

    invoke-direct {v8, v7}, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {v6}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getWeight()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/fonts/Font$Builder;->setWeight(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v8

    invoke-virtual {v6}, Landroidx/core/provider/FontsContractCompat$FontInfo;->isItalic()Z

    move-result v9

    if-eqz v9, :cond_2

    :goto_2
    invoke-virtual {v8, v1}, Landroid/graphics/fonts/Font$Builder;->setSlant(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v1

    invoke-virtual {v6}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getTtcIndex()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/graphics/fonts/Font$Builder;->setTtcIndex(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    move-result-object v6

    if-nez v0, :cond_3

    new-instance v1, Landroid/graphics/fonts/FontFamily$Builder;

    invoke-direct {v1, v6}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v1

    :goto_3
    if-eqz v7, :cond_0

    :try_start_3
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    :try_start_4
    invoke-virtual {v0, v6}, Landroid/graphics/fonts/FontFamily$Builder;->addFont(Landroid/graphics/fonts/Font;)Landroid/graphics/fonts/FontFamily$Builder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v1

    if-eqz v7, :cond_4

    :try_start_5
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_4
    :goto_4
    :try_start_6
    throw v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception v0

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_5
    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_5

    :cond_6
    :try_start_7
    new-instance v4, Landroid/graphics/fonts/FontStyle;

    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_7

    const/16 v1, 0x2bc

    move v3, v1

    :goto_6
    and-int/lit8 v1, p4, 0x2

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    :goto_7
    invoke-direct {v4, v3, v1}, Landroid/graphics/fonts/FontStyle;-><init>(II)V

    new-instance v1, Landroid/graphics/Typeface$CustomFallbackBuilder;

    invoke-virtual {v0}, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V

    invoke-virtual {v1, v4}, Landroid/graphics/Typeface$CustomFallbackBuilder;->setStyle(Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Typeface$CustomFallbackBuilder;->build()Landroid/graphics/Typeface;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    move-result-object v0

    goto :goto_5

    :cond_7
    const/16 v1, 0x190

    move v3, v1

    goto :goto_6

    :cond_8
    move v1, v2

    goto :goto_7

    :catchall_1
    move-exception v6

    goto :goto_4
.end method

.method protected createFromInputStream(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Typeface;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/RuntimeException;

    const/16 v1, 0x2c

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "5e4de5"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x71t
        0xat
        0x14t
        0xat
        0xat
        0x41t
        0x15t
        0x10t
        0x47t
        0x1t
        0x45t
        0x41t
        0x5dt
        0xct
        0x47t
        0x44t
        0x3t
        0x40t
        0x5bt
        0x6t
        0x40t
        0xdt
        0xat
        0x5bt
        0x15t
        0xct
        0x5at
        0x44t
        0x24t
        0x65t
        0x7ct
        0x45t
        0x6t
        0x5dt
        0x45t
        0x5at
        0x47t
        0x45t
        0x58t
        0x5t
        0x11t
        0x50t
        0x47t
        0x4bt
    .end array-data
.end method

.method public createFromResourcesFontFile(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    .locals 3

    :try_start_0
    new-instance v0, Landroid/graphics/fonts/Font$Builder;

    invoke-direct {v0, p2, p3}, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/content/res/Resources;I)V

    invoke-virtual {v0}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    move-result-object v0

    new-instance v1, Landroid/graphics/fonts/FontFamily$Builder;

    invoke-direct {v1, v0}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    invoke-virtual {v1}, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;

    move-result-object v1

    new-instance v2, Landroid/graphics/Typeface$CustomFallbackBuilder;

    invoke-direct {v2, v1}, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V

    invoke-virtual {v0}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/graphics/Typeface$CustomFallbackBuilder;->setStyle(Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Typeface$CustomFallbackBuilder;->build()Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected findBestInfo([Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroidx/core/provider/FontsContractCompat$FontInfo;
    .locals 4

    new-instance v0, Ljava/lang/RuntimeException;

    const/16 v1, 0x2c

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "9419c6"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x7dt
        0x5bt
        0x11t
        0x57t
        0xct
        0x42t
        0x19t
        0x41t
        0x42t
        0x5ct
        0x43t
        0x42t
        0x51t
        0x5dt
        0x42t
        0x19t
        0x5t
        0x43t
        0x57t
        0x57t
        0x45t
        0x50t
        0xct
        0x58t
        0x19t
        0x5dt
        0x5ft
        0x19t
        0x22t
        0x66t
        0x70t
        0x14t
        0x3t
        0x0t
        0x43t
        0x59t
        0x4bt
        0x14t
        0x5dt
        0x58t
        0x17t
        0x53t
        0x4bt
        0x1at
    .end array-data
.end method
