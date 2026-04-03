.class Landroidx/core/provider/FontProvider;
.super Ljava/lang/Object;


# static fields
.field private static final sByteArrayComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/core/provider/FontProvider$1;

    invoke-direct {v0}, Landroidx/core/provider/FontProvider$1;-><init>()V

    sput-object v0, Landroidx/core/provider/FontProvider;->sByteArrayComparator:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertToByteArrayList([Landroid/content/pm/Signature;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/pm/Signature;",
            ")",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-object v2, p0, v0

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static equalsByteArrayList(Ljava/util/List;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;",
            "Ljava/util/List",
            "<[B>;)Z"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    move v2, v3

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private static getCertificates(Landroidx/core/provider/FontRequest;Landroid/content/res/Resources;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/provider/FontRequest;",
            "Landroid/content/res/Resources;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<[B>;>;"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/core/provider/FontRequest;->getCertificates()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/core/provider/FontRequest;->getCertificates()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroidx/core/provider/FontRequest;->getCertificatesArrayResId()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/core/content/res/FontResourcesParserCompat;->readCerts(Landroid/content/res/Resources;I)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method static getFontFamilyResult(Landroid/content/Context;Landroidx/core/provider/FontRequest;Landroid/os/CancellationSignal;)Landroidx/core/provider/FontsContractCompat$FontFamilyResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroidx/core/provider/FontProvider;->getProvider(Landroid/content/pm/PackageManager;Landroidx/core/provider/FontRequest;Landroid/content/res/Resources;)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->create(I[Landroidx/core/provider/FontsContractCompat$FontInfo;)Landroidx/core/provider/FontsContractCompat$FontFamilyResult;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-static {p0, p1, v0, p2}, Landroidx/core/provider/FontProvider;->query(Landroid/content/Context;Landroidx/core/provider/FontRequest;Ljava/lang/String;Landroid/os/CancellationSignal;)[Landroidx/core/provider/FontsContractCompat$FontInfo;

    move-result-object v0

    invoke-static {v1, v0}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->create(I[Landroidx/core/provider/FontsContractCompat$FontInfo;)Landroidx/core/provider/FontsContractCompat$FontFamilyResult;

    move-result-object v0

    goto :goto_0
.end method

.method static getProvider(Landroid/content/pm/PackageManager;Landroidx/core/provider/FontRequest;Landroid/content/res/Resources;)Landroid/content/pm/ProviderInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroidx/core/provider/FontRequest;->getProviderAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v3, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroidx/core/provider/FontRequest;->getProviderPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v1, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const/16 v3, 0x40

    invoke-virtual {p0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v1}, Landroidx/core/provider/FontProvider;->convertToByteArrayList([Landroid/content/pm/Signature;)Ljava/util/List;

    move-result-object v3

    sget-object v1, Landroidx/core/provider/FontProvider;->sByteArrayComparator:Ljava/util/Comparator;

    invoke-static {v3, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {p1, p2}, Landroidx/core/provider/FontProvider;->getCertificates(Landroidx/core/provider/FontRequest;Landroid/content/res/Resources;)Ljava/util/List;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v0, Landroidx/core/provider/FontProvider;->sByteArrayComparator:Ljava/util/Comparator;

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {v3, v5}, Landroidx/core/provider/FontProvider;->equalsByteArrayList(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v2

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x17

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "84f112"

    invoke-static {v3, v4, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x16

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "3e4648"

    const-wide/32 v4, 0x16c0e591

    invoke-static {v0, v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/core/provider/FontRequest;->getProviderPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x20

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v3, "c401d9"

    const-wide v4, 0x41d2747418400000L    # 1.238487137E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    :array_0
    .array-data 1
        0x7et
        0x5bt
        0x13t
        0x5ft
        0x55t
        0x12t
        0x5bt
        0x5bt
        0x8t
        0x45t
        0x54t
        0x5ct
        0x4ct
        0x14t
        0x16t
        0x43t
        0x5et
        0x44t
        0x51t
        0x50t
        0x3t
        0x43t
        0x11t
    .end array-data

    :array_1
    .array-data 1
        0x1ft
        0x45t
        0x56t
        0x43t
        0x40t
        0x18t
        0x43t
        0x4t
        0x57t
        0x5dt
        0x55t
        0x5ft
        0x56t
        0x45t
        0x43t
        0x57t
        0x47t
        0x18t
        0x5dt
        0xat
        0x40t
        0x16t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x2dt
        0x5bt
        0x10t
        0x41t
        0x5t
        0x5at
        0x8t
        0x55t
        0x57t
        0x54t
        0x44t
        0x5ft
        0xct
        0x41t
        0x5et
        0x55t
        0x44t
        0x5ft
        0xct
        0x46t
        0x10t
        0x50t
        0x11t
        0x4dt
        0xbt
        0x5bt
        0x42t
        0x58t
        0x10t
        0x40t
        0x59t
        0x14t
    .end array-data
.end method

.method static query(Landroid/content/Context;Landroidx/core/provider/FontRequest;Ljava/lang/String;Landroid/os/CancellationSignal;)[Landroidx/core/provider/FontsContractCompat$FontInfo;
    .locals 18

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const/4 v3, 0x7

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "ad9bca"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const/4 v4, 0x7

    new-array v4, v4, [B

    fill-array-data v4, :array_1

    const-string v5, "1ebac0"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const/4 v4, 0x4

    new-array v4, v4, [B

    fill-array-data v4, :array_2

    const-string v5, "53857f"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v11

    const/4 v9, 0x0

    const/4 v2, 0x7

    :try_start_0
    new-array v4, v2, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [B

    fill-array-data v5, :array_3

    const-string v6, "90495c"

    const/16 v7, 0x750c

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const/4 v5, 0x7

    new-array v5, v5, [B

    fill-array-data v5, :array_4

    const-string v6, "4434ad"

    const v7, 0x4e9de4ac

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x2

    const/16 v5, 0xe

    new-array v5, v5, [B

    fill-array-data v5, :array_5

    const-string v6, "ebe717"

    const-wide v12, -0x3e294319be800000L    # -1.525913862E9

    invoke-static {v5, v6, v12, v13}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x3

    const/16 v5, 0x17

    new-array v5, v5, [B

    fill-array-data v5, :array_6

    const-string v6, "f99052"

    const-wide v12, -0x3e25860965000000L    # -1.776802412E9

    invoke-static {v5, v6, v12, v13}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x4

    const/16 v5, 0xb

    new-array v5, v5, [B

    fill-array-data v5, :array_7

    const-string v6, "f07091"

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-static {v5, v6, v7, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x5

    const/16 v5, 0xb

    new-array v5, v5, [B

    fill-array-data v5, :array_8

    const-string v6, "6f70e2"

    const/16 v7, 0xd41

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x6

    const/16 v5, 0xb

    new-array v5, v5, [B

    fill-array-data v5, :array_9

    const-string v6, "7b7f08"

    const v7, -0x320f4f07    # -5.0476624E8f

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    :try_start_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-le v2, v5, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/16 v5, 0x9

    new-array v5, v5, [B

    fill-array-data v5, :array_a

    const-string v6, "0f6f42"

    const/16 v7, -0x13ca

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Landroidx/core/provider/FontRequest;->getQuery()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    move-object/from16 v8, p3

    invoke-virtual/range {v2 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    :goto_0
    if-eqz v4, :cond_7

    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_7

    const/16 v2, 0xb

    new-array v2, v2, [B

    fill-array-data v2, :array_b

    const-string v5, "6e5bda"

    const/16 v6, 0x6e67

    invoke-static {v2, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x3

    new-array v5, v5, [B

    fill-array-data v5, :array_c

    const-string v6, "ad4c5e"

    const-wide v8, 0x41bc36d81d000000L    # 4.73356317E8

    invoke-static {v5, v6, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const/4 v5, 0x7

    new-array v5, v5, [B

    fill-array-data v5, :array_d

    const-string v6, "872c9f"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const/16 v5, 0xe

    new-array v5, v5, [B

    fill-array-data v5, :array_e

    const-string v6, "83678f"

    const-wide/32 v8, 0x33632849

    invoke-static {v5, v6, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    const/16 v5, 0xb

    new-array v5, v5, [B

    fill-array-data v5, :array_f

    const-string v6, "d7eb5d"

    const/16 v7, 0xd44

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    const/16 v5, 0xb

    new-array v5, v5, [B

    fill-array-data v5, :array_10

    const-string v6, "0bb481"

    const-wide v8, -0x3e28ff8754400000L    # -1.543627439E9

    invoke-static {v5, v6, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, -0x1

    if-eq v10, v5, :cond_2

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move v6, v5

    :goto_2
    const/4 v5, -0x1

    if-eq v14, v5, :cond_3

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    :goto_3
    const/4 v7, -0x1

    if-ne v13, v7, :cond_4

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v3, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    move-object v9, v7

    :goto_4
    const/4 v7, -0x1

    if-eq v15, v7, :cond_5

    invoke-interface {v4, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    move v8, v7

    :goto_5
    const/4 v7, -0x1

    move/from16 v0, v16

    if-eq v0, v7, :cond_6

    move/from16 v0, v16

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v7, v0, :cond_6

    const/4 v7, 0x1

    :goto_6
    invoke-static {v9, v5, v8, v7, v6}, Landroidx/core/provider/FontsContractCompat$FontInfo;->create(Landroid/net/Uri;IIZI)Landroidx/core/provider/FontsContractCompat$FontInfo;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    move-object v3, v4

    :goto_7
    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v2

    :cond_1
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/16 v5, 0x9

    new-array v5, v5, [B

    fill-array-data v5, :array_11

    const-string v6, "0996e0"

    const v7, -0x311d08ad

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Landroidx/core/provider/FontRequest;->getQuery()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v4

    goto/16 :goto_0

    :cond_2
    const/4 v5, 0x0

    move v6, v5

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    goto :goto_3

    :cond_4
    :try_start_4
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v11, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v7

    move-object v9, v7

    goto :goto_4

    :cond_5
    const/16 v7, 0x190

    move v8, v7

    goto :goto_5

    :cond_6
    const/4 v7, 0x0

    goto :goto_6

    :cond_7
    move-object v2, v10

    :cond_8
    if-eqz v4, :cond_9

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_9
    const/4 v3, 0x0

    new-array v3, v3, [Landroidx/core/provider/FontsContractCompat$FontInfo;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroidx/core/provider/FontsContractCompat$FontInfo;

    return-object v2

    :catchall_1
    move-exception v2

    move-object v3, v9

    goto :goto_7

    nop

    :array_0
    .array-data 1
        0x2t
        0xbt
        0x57t
        0x16t
        0x6t
        0xft
        0x15t
    .end array-data

    :array_1
    .array-data 1
        0x52t
        0xat
        0xct
        0x15t
        0x6t
        0x5et
        0x45t
    .end array-data

    :array_2
    .array-data 1
        0x53t
        0x5at
        0x54t
        0x50t
    .end array-data

    :array_3
    .array-data 1
        0x66t
        0x59t
        0x50t
    .end array-data

    :array_4
    .array-data 1
        0x52t
        0x5dt
        0x5ft
        0x51t
        0x3et
        0xdt
        0x50t
    .end array-data

    :array_5
    .array-data 1
        0x3t
        0xdt
        0xbt
        0x43t
        0x6et
        0x43t
        0x11t
        0x1t
        0x3at
        0x5et
        0x5ft
        0x53t
        0x0t
        0x1at
    .end array-data

    nop

    :array_6
    .array-data 1
        0x0t
        0x56t
        0x57t
        0x44t
        0x6at
        0x44t
        0x7t
        0x4bt
        0x50t
        0x51t
        0x41t
        0x5bt
        0x9t
        0x57t
        0x66t
        0x43t
        0x50t
        0x46t
        0x12t
        0x50t
        0x57t
        0x57t
        0x46t
    .end array-data

    :array_7
    .array-data 1
        0x0t
        0x5ft
        0x59t
        0x44t
        0x66t
        0x46t
        0x3t
        0x59t
        0x50t
        0x58t
        0x4dt
    .end array-data

    :array_8
    .array-data 1
        0x50t
        0x9t
        0x59t
        0x44t
        0x3at
        0x5bt
        0x42t
        0x7t
        0x5bt
        0x59t
        0x6t
    .end array-data

    :array_9
    .array-data 1
        0x45t
        0x7t
        0x44t
        0x13t
        0x5ct
        0x4ct
        0x68t
        0x1t
        0x58t
        0x2t
        0x55t
    .end array-data

    :array_a
    .array-data 1
        0x41t
        0x13t
        0x53t
        0x14t
        0x4dt
        0x12t
        0xdt
        0x46t
        0x9t
    .end array-data

    nop

    :array_b
    .array-data 1
        0x44t
        0x0t
        0x46t
        0x17t
        0x8t
        0x15t
        0x69t
        0x6t
        0x5at
        0x6t
        0x1t
    .end array-data

    :array_c
    .array-data 1
        0x3et
        0xdt
        0x50t
    .end array-data

    :array_d
    .array-data 1
        0x5et
        0x5et
        0x5et
        0x6t
        0x66t
        0xft
        0x5ct
    .end array-data

    :array_e
    .array-data 1
        0x5et
        0x5ct
        0x58t
        0x43t
        0x67t
        0x12t
        0x4ct
        0x50t
        0x69t
        0x5et
        0x56t
        0x2t
        0x5dt
        0x4bt
    .end array-data

    nop

    :array_f
    .array-data 1
        0x2t
        0x58t
        0xbt
        0x16t
        0x6at
        0x13t
        0x1t
        0x5et
        0x2t
        0xat
        0x41t
    .end array-data

    :array_10
    .array-data 1
        0x56t
        0xdt
        0xct
        0x40t
        0x67t
        0x58t
        0x44t
        0x3t
        0xet
        0x5dt
        0x5bt
    .end array-data

    :array_11
    .array-data 1
        0x41t
        0x4ct
        0x5ct
        0x44t
        0x1ct
        0x10t
        0xdt
        0x19t
        0x6t
    .end array-data
.end method
