.class public Landroidx/core/content/FileProvider;
.super Landroid/content/ContentProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/content/FileProvider$PathStrategy;,
        Landroidx/core/content/FileProvider$SimplePathStrategy;
    }
.end annotation


# static fields
.field private static final ATTR_NAME:Ljava/lang/String;

.field private static final ATTR_PATH:Ljava/lang/String;

.field private static final COLUMNS:[Ljava/lang/String;

.field private static final DEVICE_ROOT:Ljava/io/File;

.field private static final DISPLAYNAME_FIELD:Ljava/lang/String;

.field private static final META_DATA_FILE_PROVIDER_PATHS:Ljava/lang/String;

.field private static final TAG_CACHE_PATH:Ljava/lang/String;

.field private static final TAG_EXTERNAL:Ljava/lang/String;

.field private static final TAG_EXTERNAL_CACHE:Ljava/lang/String;

.field private static final TAG_EXTERNAL_FILES:Ljava/lang/String;

.field private static final TAG_EXTERNAL_MEDIA:Ljava/lang/String;

.field private static final TAG_FILES_PATH:Ljava/lang/String;

.field private static final TAG_ROOT_PATH:Ljava/lang/String;

.field private static sCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroidx/core/content/FileProvider$PathStrategy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mStrategy:Landroidx/core/content/FileProvider$PathStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v7, 0xa

    const/4 v2, 0x4

    const/16 v6, 0x13

    const/4 v5, 0x0

    const/4 v4, 0x1

    new-array v0, v2, [B

    fill-array-data v0, :array_0

    const-string v1, "55b179"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/content/FileProvider;->ATTR_NAME:Ljava/lang/String;

    new-array v0, v2, [B

    fill-array-data v0, :array_1

    const-string v1, "b0855e"

    const-wide v2, 0x41d99f2c1bc00000L    # 1.719447663E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/content/FileProvider;->ATTR_PATH:Ljava/lang/String;

    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "14a220"

    const/16 v2, -0x274b

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/content/FileProvider;->DISPLAYNAME_FIELD:Ljava/lang/String;

    const/16 v0, 0x23

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v1, "af3022"

    const-wide/32 v2, -0x1053bfd5

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/content/FileProvider;->META_DATA_FILE_PROVIDER_PATHS:Ljava/lang/String;

    new-array v0, v7, [B

    fill-array-data v0, :array_4

    const-string v1, "205f45"

    const-wide v2, -0x3e3db0fb85800000L    # -6.14336757E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/content/FileProvider;->TAG_CACHE_PATH:Ljava/lang/String;

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    const-string v1, "52ecfb"

    invoke-static {v0, v1, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/content/FileProvider;->TAG_EXTERNAL:Ljava/lang/String;

    new-array v0, v6, [B

    fill-array-data v0, :array_6

    const-string v1, "1e98f2"

    const-wide/32 v2, -0x7871b14a

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/content/FileProvider;->TAG_EXTERNAL_CACHE:Ljava/lang/String;

    new-array v0, v6, [B

    fill-array-data v0, :array_7

    const-string v1, "d867e6"

    const-wide v2, 0x41d62f950f800000L    # 1.488868414E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/content/FileProvider;->TAG_EXTERNAL_FILES:Ljava/lang/String;

    new-array v0, v6, [B

    fill-array-data v0, :array_8

    const-string v1, "f76a40"

    const-wide v2, -0x3e2f1ee6ed800000L    # -1.132749898E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/content/FileProvider;->TAG_EXTERNAL_MEDIA:Ljava/lang/String;

    new-array v0, v7, [B

    fill-array-data v0, :array_9

    const-string v1, "ce0117"

    const/16 v2, 0x2c3d

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/content/FileProvider;->TAG_FILES_PATH:Ljava/lang/String;

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    const-string v1, "296225"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/content/FileProvider;->TAG_ROOT_PATH:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/16 v1, 0xd

    new-array v1, v1, [B

    fill-array-data v1, :array_b

    const-string v2, "070486"

    invoke-static {v1, v2, v5, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_c

    const-string v2, "1a65c2"

    invoke-static {v1, v2, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Landroidx/core/content/FileProvider;->COLUMNS:[Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    new-array v1, v4, [B

    const/16 v2, 0x1f

    aput-byte v2, v1, v5

    const-string v2, "0fbccb"

    const-wide/32 v4, 0x4b04176e

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/core/content/FileProvider;->DEVICE_ROOT:Ljava/io/File;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/core/content/FileProvider;->sCache:Ljava/util/HashMap;

    return-void

    :array_0
    .array-data 1
        0x5bt
        0x54t
        0xft
        0x54t
    .end array-data

    :array_1
    .array-data 1
        0x12t
        0x51t
        0x4ct
        0x5dt
    .end array-data

    :array_2
    .array-data 1
        0x55t
        0x5dt
        0x12t
        0x42t
        0x5et
        0x51t
        0x48t
        0x7at
        0x0t
        0x5ft
        0x57t
    .end array-data

    :array_3
    .array-data 1
        0x0t
        0x8t
        0x57t
        0x42t
        0x5dt
        0x5bt
        0x5t
        0x48t
        0x40t
        0x45t
        0x42t
        0x42t
        0xet
        0x14t
        0x47t
        0x1et
        0x74t
        0x7bt
        0x2dt
        0x23t
        0x6ct
        0x60t
        0x60t
        0x7dt
        0x37t
        0x2ft
        0x77t
        0x75t
        0x60t
        0x6dt
        0x31t
        0x27t
        0x67t
        0x78t
        0x61t
    .end array-data

    :array_4
    .array-data 1
        0x51t
        0x51t
        0x56t
        0xet
        0x51t
        0x18t
        0x42t
        0x51t
        0x41t
        0xet
    .end array-data

    nop

    :array_5
    .array-data 1
        0x50t
        0x4at
        0x11t
        0x6t
        0x14t
        0xct
        0x54t
        0x5et
        0x48t
        0x13t
        0x7t
        0x16t
        0x5dt
    .end array-data

    nop

    :array_6
    .array-data 1
        0x54t
        0x1dt
        0x4dt
        0x5dt
        0x14t
        0x5ct
        0x50t
        0x9t
        0x14t
        0x5bt
        0x7t
        0x51t
        0x59t
        0x0t
        0x14t
        0x48t
        0x7t
        0x46t
        0x59t
    .end array-data

    :array_7
    .array-data 1
        0x1t
        0x40t
        0x42t
        0x52t
        0x17t
        0x58t
        0x5t
        0x54t
        0x1bt
        0x51t
        0xct
        0x5at
        0x1t
        0x4bt
        0x1bt
        0x47t
        0x4t
        0x42t
        0xct
    .end array-data

    :array_8
    .array-data 1
        0x3t
        0x4ft
        0x42t
        0x4t
        0x46t
        0x5et
        0x7t
        0x5bt
        0x1bt
        0xct
        0x51t
        0x54t
        0xft
        0x56t
        0x1bt
        0x11t
        0x55t
        0x44t
        0xet
    .end array-data

    :array_9
    .array-data 1
        0x5t
        0xct
        0x5ct
        0x54t
        0x42t
        0x1at
        0x13t
        0x4t
        0x44t
        0x59t
    .end array-data

    nop

    :array_a
    .array-data 1
        0x40t
        0x56t
        0x59t
        0x46t
        0x1ft
        0x45t
        0x53t
        0x4dt
        0x5et
    .end array-data

    nop

    :array_b
    .array-data 1
        0x6ft
        0x53t
        0x59t
        0x47t
        0x48t
        0x5at
        0x51t
        0x4et
        0x6ft
        0x5at
        0x59t
        0x5bt
        0x55t
    .end array-data

    nop

    :array_c
    .array-data 1
        0x6et
        0x12t
        0x5ft
        0x4ft
        0x6t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private static varargs buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
    .locals 5

    array-length v3, p1

    const/4 v0, 0x0

    move-object v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, p1, v2

    if-eqz v4, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method private static copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 2

    const/4 v1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private static copyOf([Ljava/lang/String;I)[Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    new-array v0, p1, [Ljava/lang/String;

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private static getPathStrategy(Landroid/content/Context;Ljava/lang/String;)Landroidx/core/content/FileProvider$PathStrategy;
    .locals 6

    sget-object v1, Landroidx/core/content/FileProvider;->sCache:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroidx/core/content/FileProvider;->sCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/content/FileProvider$PathStrategy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    invoke-static {p0, p1}, Landroidx/core/content/FileProvider;->parsePathStrategy(Landroid/content/Context;Ljava/lang/String;)Landroidx/core/content/FileProvider$PathStrategy;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :try_start_2
    sget-object v2, Landroidx/core/content/FileProvider;->sCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v1

    return-object v0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const/16 v3, 0x3d

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "1302ed"

    const v5, -0x314c3125

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    :try_start_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const/16 v3, 0x3d

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "dc177a"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    nop

    :array_0
    .array-data 1
        0x77t
        0x52t
        0x59t
        0x5et
        0x0t
        0x0t
        0x11t
        0x47t
        0x5ft
        0x12t
        0x15t
        0x5t
        0x43t
        0x40t
        0x55t
        0x12t
        0x4t
        0xat
        0x55t
        0x41t
        0x5ft
        0x5bt
        0x1t
        0x4at
        0x42t
        0x46t
        0x40t
        0x42t
        0xat
        0x16t
        0x45t
        0x1dt
        0x76t
        0x7bt
        0x29t
        0x21t
        0x6et
        0x63t
        0x62t
        0x7dt
        0x33t
        0x2dt
        0x75t
        0x76t
        0x62t
        0x6dt
        0x35t
        0x25t
        0x65t
        0x7bt
        0x63t
        0x12t
        0x8t
        0x1t
        0x45t
        0x52t
        0x1dt
        0x56t
        0x4t
        0x10t
        0x50t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x22t
        0x2t
        0x58t
        0x5bt
        0x52t
        0x5t
        0x44t
        0x17t
        0x5et
        0x17t
        0x47t
        0x0t
        0x16t
        0x10t
        0x54t
        0x17t
        0x56t
        0xft
        0x0t
        0x11t
        0x5et
        0x5et
        0x53t
        0x4ft
        0x17t
        0x16t
        0x41t
        0x47t
        0x58t
        0x13t
        0x10t
        0x4dt
        0x77t
        0x7et
        0x7bt
        0x24t
        0x3bt
        0x33t
        0x63t
        0x78t
        0x61t
        0x28t
        0x20t
        0x26t
        0x63t
        0x68t
        0x67t
        0x20t
        0x30t
        0x2bt
        0x62t
        0x17t
        0x5at
        0x4t
        0x10t
        0x2t
        0x1ct
        0x53t
        0x56t
        0x15t
        0x5t
    .end array-data
.end method

.method public static getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;
    .locals 1

    invoke-static {p0, p1}, Landroidx/core/content/FileProvider;->getPathStrategy(Landroid/content/Context;Ljava/lang/String;)Landroidx/core/content/FileProvider$PathStrategy;

    move-result-object v0

    invoke-interface {v0, p2}, Landroidx/core/content/FileProvider$PathStrategy;->getUriForFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    invoke-static {p0, p1, p2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    sget-object v1, Landroidx/core/content/FileProvider;->DISPLAYNAME_FIELD:Ljava/lang/String;

    invoke-virtual {v0, v1, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static modeToMode(Ljava/lang/String;)I
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-array v0, v5, [B

    const/16 v1, 0x42

    aput-byte v1, v0, v4

    const-string v1, "065b29"

    invoke-static {v0, v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x10000000

    :goto_0
    return v0

    :cond_0
    new-array v0, v5, [B

    const/16 v1, 0x46

    aput-byte v1, v0, v4

    const-string v1, "1fef0b"

    const-wide v2, 0x41cc604a92800000L    # 9.52145189E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-array v0, v6, [B

    fill-array-data v0, :array_0

    const-string v1, "63d78d"

    const/16 v2, -0x7758

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/high16 v0, 0x2c000000

    goto :goto_0

    :cond_2
    new-array v0, v6, [B

    fill-array-data v0, :array_1

    const-string v1, "b35406"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/high16 v0, 0x2a000000

    goto :goto_0

    :cond_3
    new-array v0, v6, [B

    fill-array-data v0, :array_2

    const-string v1, "c2ada6"

    const v2, 0x4d4ca886

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/high16 v0, 0x38000000

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v1, "b72ef0"

    invoke-static {v0, v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/high16 v0, 0x3c000000    # 0.0078125f

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0xe

    new-array v1, v1, [B

    fill-array-data v1, :array_4

    const-string v2, "239065"

    const/16 v3, -0x10ce

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :array_0
    .array-data 1
        0x41t
        0x47t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x15t
        0x52t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x11t
        0x45t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x10t
        0x40t
        0x46t
    .end array-data

    :array_4
    .array-data 1
        0x7bt
        0x5dt
        0x4ft
        0x51t
        0x5at
        0x5ct
        0x56t
        0x13t
        0x54t
        0x5ft
        0x52t
        0x50t
        0x8t
        0x13t
    .end array-data
.end method

.method private static parsePathStrategy(Landroid/content/Context;Ljava/lang/String;)Landroidx/core/content/FileProvider$PathStrategy;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v1, 0x0

    new-instance v2, Landroidx/core/content/FileProvider$SimplePathStrategy;

    invoke-direct {v2, p1}, Landroidx/core/content/FileProvider$SimplePathStrategy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v3, 0x80

    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    sget-object v4, Landroidx/core/content/FileProvider;->META_DATA_FILE_PROVIDER_PATHS:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/ProviderInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    if-eqz v3, :cond_7

    :cond_0
    :goto_0
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    if-eq v0, v9, :cond_9

    const/4 v4, 0x2

    if-ne v0, v4, :cond_0

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Landroidx/core/content/FileProvider;->ATTR_NAME:Ljava/lang/String;

    invoke-interface {v3, v1, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroidx/core/content/FileProvider;->ATTR_PATH:Ljava/lang/String;

    invoke-interface {v3, v1, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Landroidx/core/content/FileProvider;->TAG_ROOT_PATH:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v0, Landroidx/core/content/FileProvider;->DEVICE_ROOT:Ljava/io/File;

    :goto_1
    if-eqz v0, :cond_0

    new-array v6, v9, [Ljava/lang/String;

    aput-object v5, v6, v8

    invoke-static {v0, v6}, Landroidx/core/content/FileProvider;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Landroidx/core/content/FileProvider$SimplePathStrategy;->addRoot(Ljava/lang/String;Ljava/io/File;)V

    goto :goto_0

    :cond_1
    sget-object v6, Landroidx/core/content/FileProvider;->TAG_FILES_PATH:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    goto :goto_1

    :cond_2
    sget-object v6, Landroidx/core/content/FileProvider;->TAG_CACHE_PATH:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    goto :goto_1

    :cond_3
    sget-object v6, Landroidx/core/content/FileProvider;->TAG_EXTERNAL:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    goto :goto_1

    :cond_4
    sget-object v6, Landroidx/core/content/FileProvider;->TAG_EXTERNAL_FILES:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getExternalFilesDirs(Landroid/content/Context;Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    array-length v6, v0

    if-lez v6, :cond_a

    aget-object v0, v0, v8

    goto :goto_1

    :cond_5
    sget-object v6, Landroidx/core/content/FileProvider;->TAG_EXTERNAL_CACHE:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {p0}, Landroidx/core/content/ContextCompat;->getExternalCacheDirs(Landroid/content/Context;)[Ljava/io/File;

    move-result-object v0

    array-length v6, v0

    if-lez v6, :cond_a

    aget-object v0, v0, v8

    goto :goto_1

    :cond_6
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_a

    sget-object v6, Landroidx/core/content/FileProvider;->TAG_EXTERNAL_MEDIA:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Landroid/content/Context;->getExternalMediaDirs()[Ljava/io/File;

    move-result-object v0

    array-length v6, v0

    if-lez v6, :cond_a

    aget-object v0, v0, v8

    goto :goto_1

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x35

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "711101"

    const/16 v3, 0x4592

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x34

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "64d726"

    const-wide v4, 0x41ac571674000000L    # 2.37734714E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    return-object v2

    :cond_a
    move-object v0, v1

    goto/16 :goto_1

    :array_0
    .array-data 1
        0x7at
        0x58t
        0x42t
        0x42t
        0x59t
        0x5ft
        0x50t
        0x11t
        0x50t
        0x5ft
        0x54t
        0x43t
        0x58t
        0x58t
        0x55t
        0x1ft
        0x43t
        0x44t
        0x47t
        0x41t
        0x5et
        0x43t
        0x44t
        0x1ft
        0x71t
        0x78t
        0x7dt
        0x74t
        0x6ft
        0x61t
        0x65t
        0x7et
        0x67t
        0x78t
        0x74t
        0x74t
        0x65t
        0x6et
        0x61t
        0x70t
        0x64t
        0x79t
        0x64t
        0x11t
        0x5ct
        0x54t
        0x44t
        0x50t
        0x1at
        0x55t
        0x50t
        0x45t
        0x51t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x75t
        0x5bt
        0x11t
        0x5bt
        0x56t
        0x58t
        0x11t
        0x40t
        0x44t
        0x51t
        0x5bt
        0x58t
        0x52t
        0x14t
        0x9t
        0x52t
        0x46t
        0x57t
        0x1bt
        0x50t
        0x5t
        0x43t
        0x53t
        0x16t
        0x50t
        0x5bt
        0x16t
        0x17t
        0x42t
        0x44t
        0x59t
        0x42t
        0xdt
        0x53t
        0x57t
        0x44t
        0x16t
        0x43t
        0xdt
        0x43t
        0x5at
        0x16t
        0x57t
        0x41t
        0x10t
        0x5ft
        0x5dt
        0x44t
        0x5ft
        0x40t
        0x1dt
        0x17t
    .end array-data
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 6

    const/4 v3, 0x0

    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->exported:Z

    if-nez v0, :cond_1

    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    if-eqz v0, :cond_0

    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/16 v2, 0x58

    aput-byte v2, v1, v3

    const-string v2, "c4bfeb"

    const-wide/32 v4, 0x1248fad3

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-static {p1, v0}, Landroidx/core/content/FileProvider;->getPathStrategy(Landroid/content/Context;Ljava/lang/String;)Landroidx/core/content/FileProvider$PathStrategy;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/content/FileProvider;->mStrategy:Landroidx/core/content/FileProvider$PathStrategy;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const/16 v1, 0x23

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "882dc9"

    const/16 v3, 0x4d1f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const/16 v1, 0x1d

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "533ef4"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x68t
        0x4at
        0x5dt
        0x12t
        0xat
        0x5dt
        0x5dt
        0x4at
        0x12t
        0x9t
        0x16t
        0x4at
        0x4ct
        0x18t
        0x55t
        0x16t
        0x2t
        0x57t
        0x4ct
        0x18t
        0x47t
        0x16t
        0xat
        0x19t
        0x48t
        0x5dt
        0x40t
        0x9t
        0xat
        0x4at
        0x4bt
        0x51t
        0x5dt
        0xat
        0x10t
    .end array-data

    :array_1
    .array-data 1
        0x65t
        0x41t
        0x5ct
        0x13t
        0xft
        0x50t
        0x50t
        0x41t
        0x13t
        0x8t
        0x13t
        0x47t
        0x41t
        0x13t
        0x5dt
        0xat
        0x12t
        0x14t
        0x57t
        0x56t
        0x13t
        0x0t
        0x1et
        0x44t
        0x5at
        0x41t
        0x47t
        0x0t
        0x2t
    .end array-data
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Landroidx/core/content/FileProvider;->mStrategy:Landroidx/core/content/FileProvider$PathStrategy;

    invoke-interface {v0, p1}, Landroidx/core/content/FileProvider$PathStrategy;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Landroidx/core/content/FileProvider;->mStrategy:Landroidx/core/content/FileProvider$PathStrategy;

    invoke-interface {v0, p1}, Landroidx/core/content/FileProvider$PathStrategy;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x18

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "84c204"

    const/16 v2, -0x2da6

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x59t
        0x44t
        0x13t
        0x5et
        0x59t
        0x57t
        0x59t
        0x40t
        0xat
        0x5dt
        0x5et
        0x1bt
        0x57t
        0x57t
        0x17t
        0x57t
        0x44t
        0x19t
        0x4bt
        0x40t
        0x11t
        0x57t
        0x51t
        0x59t
    .end array-data
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x13

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "f3fddc"

    const-wide v4, -0x3e238786d9c00000L    # -1.910629529E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x28t
        0x5ct
        0x46t
        0x1t
        0x1ct
        0x17t
        0x3t
        0x41t
        0x8t
        0x5t
        0x8t
        0x43t
        0xft
        0x5dt
        0x15t
        0x1t
        0x16t
        0x17t
        0x15t
    .end array-data
.end method

.method public onCreate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/core/content/FileProvider;->mStrategy:Landroidx/core/content/FileProvider$PathStrategy;

    invoke-interface {v0, p1}, Landroidx/core/content/FileProvider$PathStrategy;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    invoke-static {p2}, Landroidx/core/content/FileProvider;->modeToMode(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12

    iget-object v0, p0, Landroidx/core/content/FileProvider;->mStrategy:Landroidx/core/content/FileProvider$PathStrategy;

    invoke-interface {v0, p1}, Landroidx/core/content/FileProvider$PathStrategy;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v4

    sget-object v0, Landroidx/core/content/FileProvider;->DISPLAYNAME_FIELD:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez p2, :cond_0

    sget-object p2, Landroidx/core/content/FileProvider;->COLUMNS:[Ljava/lang/String;

    :cond_0
    array-length v0, p2

    new-array v5, v0, [Ljava/lang/String;

    array-length v0, p2

    new-array v6, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    array-length v7, p2

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v7, :cond_3

    aget-object v0, p2, v3

    const/16 v8, 0xd

    new-array v8, v8, [B

    fill-array-data v8, :array_0

    const-string v9, "76e90d"

    const v10, 0x4e4bb64b    # 8.544304E8f

    invoke-static {v8, v9, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v8, "5984c8"

    const-wide v10, 0x41d3f65071800000L    # 1.339638214E9

    invoke-static {v0, v8, v10, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    if-nez v1, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    aput-object v0, v6, v2

    add-int/lit8 v0, v2, 0x1

    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    const/4 v8, 0x5

    new-array v8, v8, [B

    fill-array-data v8, :array_2

    const-string v9, "9d45b5"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v8, "d2b290"

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static {v0, v8, v9, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v2

    add-int/lit8 v0, v2, 0x1

    goto :goto_2

    :cond_3
    invoke-static {v5, v2}, Landroidx/core/content/FileProvider;->copyOf([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v2}, Landroidx/core/content/FileProvider;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Landroid/database/MatrixCursor;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    invoke-virtual {v2, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v2

    :cond_4
    move v0, v2

    goto :goto_2

    nop

    :array_0
    .array-data 1
        0x68t
        0x52t
        0xct
        0x4at
        0x40t
        0x8t
        0x56t
        0x4ft
        0x3at
        0x57t
        0x51t
        0x9t
        0x52t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x6at
        0x5dt
        0x51t
        0x47t
        0x13t
        0x54t
        0x54t
        0x40t
        0x67t
        0x5at
        0x2t
        0x55t
        0x50t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x66t
        0x17t
        0x5dt
        0x4ft
        0x7t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x3bt
        0x41t
        0xbt
        0x48t
        0x5ct
    .end array-data
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x13

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "bf14a4"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x2ct
        0x9t
        0x11t
        0x51t
        0x19t
        0x40t
        0x7t
        0x14t
        0x5ft
        0x55t
        0xdt
        0x14t
        0x17t
        0x16t
        0x55t
        0x55t
        0x15t
        0x51t
        0x11t
    .end array-data
.end method
