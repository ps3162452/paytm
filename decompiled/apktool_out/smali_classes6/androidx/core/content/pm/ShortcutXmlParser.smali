.class public Landroidx/core/content/pm/ShortcutXmlParser;
.super Ljava/lang/Object;


# static fields
.field private static final ATTR_SHORTCUT_ID:Ljava/lang/String;

.field private static final GET_INSTANCE_LOCK:Ljava/lang/Object;

.field private static final META_DATA_APP_SHORTCUTS:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_SHORTCUT:Ljava/lang/String;

.field private static volatile sShortcutIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "a540a1"

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/content/pm/ShortcutXmlParser;->ATTR_SHORTCUT_ID:Ljava/lang/String;

    const/16 v0, 0x15

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "ef9acb"

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/content/pm/ShortcutXmlParser;->META_DATA_APP_SHORTCUTS:Ljava/lang/String;

    const/16 v0, 0x11

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "140abd"

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/content/pm/ShortcutXmlParser;->TAG:Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v1, "d9d864"

    const v2, -0x318320f3

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/content/pm/ShortcutXmlParser;->TAG_SHORTCUT:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/core/content/pm/ShortcutXmlParser;->GET_INSTANCE_LOCK:Ljava/lang/Object;

    return-void

    nop

    :array_0
    .array-data 1
        0x12t
        0x5dt
        0x5bt
        0x42t
        0x15t
        0x52t
        0x14t
        0x41t
        0x7dt
        0x54t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x4t
        0x8t
        0x5dt
        0x13t
        0xct
        0xbt
        0x1t
        0x48t
        0x58t
        0x11t
        0x13t
        0x4ct
        0x16t
        0xet
        0x56t
        0x13t
        0x17t
        0x1t
        0x10t
        0x12t
        0x4at
    .end array-data

    nop

    :array_2
    .array-data 1
        0x62t
        0x5ct
        0x5ft
        0x13t
        0x16t
        0x7t
        0x44t
        0x40t
        0x68t
        0xct
        0xet
        0x34t
        0x50t
        0x46t
        0x43t
        0x4t
        0x10t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x17t
        0x51t
        0xbt
        0x4at
        0x42t
        0x57t
        0x11t
        0x4dt
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/16 v0, 0x2a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "cb6ec0"

    const-wide/32 v2, -0x2f49720d

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :array_0
    .array-data 1
        0xbt
        0x16t
        0x42t
        0x15t
        0x59t
        0x1ft
        0x4ct
        0x11t
        0x55t
        0xdt
        0x6t
        0x5dt
        0x2t
        0x11t
        0x18t
        0x4t
        0xdt
        0x54t
        0x11t
        0xdt
        0x5ft
        0x1t
        0x4dt
        0x53t
        0xct
        0xft
        0x19t
        0x4t
        0x13t
        0x5bt
        0x4ct
        0x10t
        0x53t
        0x16t
        0x4ct
        0x51t
        0xdt
        0x6t
        0x44t
        0xat
        0xat
        0x54t
    .end array-data
.end method

.method public static getShortcutIds(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroidx/core/content/pm/ShortcutXmlParser;->sShortcutIds:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    sget-object v1, Landroidx/core/content/pm/ShortcutXmlParser;->GET_INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroidx/core/content/pm/ShortcutXmlParser;->sShortcutIds:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroidx/core/content/pm/ShortcutXmlParser;->sShortcutIds:Ljava/util/ArrayList;

    sget-object v0, Landroidx/core/content/pm/ShortcutXmlParser;->sShortcutIds:Ljava/util/ArrayList;

    invoke-static {p0}, Landroidx/core/content/pm/ShortcutXmlParser;->parseShortcutIds(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Landroidx/core/content/pm/ShortcutXmlParser;->sShortcutIds:Ljava/util/ArrayList;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static getXmlResourceParser(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Landroid/content/res/XmlResourceParser;
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Landroidx/core/content/pm/ShortcutXmlParser;->META_DATA_APP_SHORTCUTS:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x3b

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "0bd474"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :array_0
    .array-data 1
        0x76t
        0x3t
        0xdt
        0x58t
        0x52t
        0x50t
        0x10t
        0x16t
        0xbt
        0x14t
        0x58t
        0x44t
        0x55t
        0xct
        0x44t
        0x55t
        0x59t
        0x50t
        0x42t
        0xdt
        0xdt
        0x50t
        0x19t
        0x55t
        0x40t
        0x12t
        0x4at
        0x47t
        0x5ft
        0x5bt
        0x42t
        0x16t
        0x7t
        0x41t
        0x43t
        0x47t
        0x10t
        0xft
        0x1t
        0x40t
        0x56t
        0x19t
        0x54t
        0x3t
        0x10t
        0x55t
        0x17t
        0x46t
        0x55t
        0x11t
        0xbt
        0x41t
        0x45t
        0x57t
        0x55t
        0x42t
        0xbt
        0x52t
        0x17t
    .end array-data
.end method

.method public static parseShortcutIds(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v5, 0x2

    const/4 v4, 0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    if-eq v1, v4, :cond_2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-lez v2, :cond_2

    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    if-ne v1, v5, :cond_0

    if-ne v2, v5, :cond_0

    sget-object v1, Landroidx/core/content/pm/ShortcutXmlParser;->TAG_SHORTCUT:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/core/content/pm/ShortcutXmlParser;->ATTR_SHORTCUT_ID:Ljava/lang/String;

    invoke-static {p0, v1}, Landroidx/core/content/pm/ShortcutXmlParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static parseShortcutIds(Landroid/content/Context;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v0, Landroid/content/Intent;

    const/16 v2, 0x1a

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "7adbbf"

    invoke-static {v2, v3, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x20

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "173980"

    const-wide v4, 0x41a161a68a000000L    # 1.45806149E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_2

    sget-object v4, Landroidx/core/content/pm/ShortcutXmlParser;->META_DATA_APP_SHORTCUTS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p0, v0}, Landroidx/core/content/pm/ShortcutXmlParser;->getXmlResourceParser(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :try_start_1
    invoke-static {v3}, Landroidx/core/content/pm/ShortcutXmlParser;->parseShortcutIds(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_2

    :try_start_2
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v2, Landroidx/core/content/pm/ShortcutXmlParser;->TAG:Ljava/lang/String;

    const/16 v3, 0x22

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v4, "14607c"

    const/16 v5, -0x52c8

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v3, :cond_4

    :try_start_3
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_4
    :goto_2
    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catchall_1
    move-exception v2

    goto :goto_2

    nop

    :array_0
    .array-data 1
        0x56t
        0xft
        0x0t
        0x10t
        0xdt
        0xft
        0x53t
        0x4ft
        0xdt
        0xct
        0x16t
        0x3t
        0x59t
        0x15t
        0x4at
        0x3t
        0x1t
        0x12t
        0x5et
        0xet
        0xat
        0x4ct
        0x2ft
        0x27t
        0x7et
        0x2ft
    .end array-data

    nop

    :array_1
    .array-data 1
        0x50t
        0x59t
        0x57t
        0x4bt
        0x57t
        0x59t
        0x55t
        0x19t
        0x5at
        0x57t
        0x4ct
        0x55t
        0x5ft
        0x43t
        0x1dt
        0x5at
        0x59t
        0x44t
        0x54t
        0x50t
        0x5ct
        0x4bt
        0x41t
        0x1et
        0x7dt
        0x76t
        0x66t
        0x77t
        0x7bt
        0x78t
        0x74t
        0x65t
    .end array-data

    :array_2
    .array-data 1
        0x77t
        0x55t
        0x5ft
        0x5ct
        0x52t
        0x7t
        0x11t
        0x40t
        0x59t
        0x10t
        0x47t
        0x2t
        0x43t
        0x47t
        0x53t
        0x10t
        0x43t
        0xbt
        0x54t
        0x14t
        0x6et
        0x5dt
        0x5bt
        0x43t
        0x43t
        0x51t
        0x45t
        0x5ft
        0x42t
        0x11t
        0x52t
        0x51t
        0xct
        0x10t
    .end array-data
.end method
